$Revision: 137 $
#include "nss/function_stand.nss"
#include "nss/function_process.nss"

#include "nss/function_axl.nss"

#include "nss/function_lc_akk.nss"
#include "nss/function_lc_chiyo.nss"
#include "nss/function_lc_inc.nss"
#include "nss/function_lc_oga.nss"
#include "nss/function_lc_shima.nss"
#include "nss/function_lc_toho.nss"
#include "nss/function_lc_wam.nss"

//■マクロをさらにマクロにてまとめて定義
//=============================================================================//
.//まとめ定義
//=============================================================================//

//―――――――――――――――
..SystemInit
//―――――――――――――――
function SystemInit()
{
	$SYSTEM_text_interval = 48;
	$SYSTEM_spt_name=$構成名+$スクリプトバージョン;

	//▽絶対的音声同期解除
	$SYSTEM_ignore_voice_sync_text=false;
	$SYSTEM_ignore_text_speed=false;

	//■一度読み込んだら再度読み込んでしまわないように。
	//▽BGM全部
	if(!$BGM_Init){
		if($Logo){
			//CreateTexture("タイトル警告", 100, 0, 0, "cg/sys/title/ローディング.png");
			//Fade("背景１", 0, 0, null, true);
			//Fade("背景１", 300, 1000, null, true);
		}
		InitBGM();
		$BGM_Init=true;
	}
	//▽TEXTBOX系とその他システム画像系
	if(!$BOX_Init){
		LoadBox();
		SystemSet();
		$BOX_Init=true;
	}

	//Fade("タイトル警告", 300, 0, null, true);
	//Delete("タイトル警告");
}


//■スクリプト冒頭定義関連
//=============================================================================//
.//基礎定義
//=============================================================================//

//―――――――――――――――
..SystemSet
//―――――――――――――――
function SystemSet()
{
	//◆超速対応だお
	SystemConquest();

	//◆予め読みたい画像があれば・・・

}

//―――――――――――――――
..SystemConquest
//―――――――――――――――
function SystemConquest()
{
	//◆超速対応
	Conquest("nss/function.nss",null,true);
	Conquest("nss/sys_config.nss",null,true);
	Conquest("nss/function_stand.nss",null,true);
	Conquest("nss/function_process.nss",null,true);

	Conquest("nss/function_dialog.nss",null,true);
	Conquest("nss/sys_twitter.nss",null,true);

	Conquest("nss/function.nss",null,true);
	Conquest("nss/function_move.nss",null,true);
	Conquest("nss/function_select.nss",null,true);
	Conquest("nss/function_cockpit.nss",null,true);
	Conquest("nss/function_quick.nss",null,true);

	Conquest("nss/function_axl.nss",null,true);
	Conquest("nss/function_lc_akk.nss",null,true);
	Conquest("nss/function_lc_chiyo.nss",null,true);
	Conquest("nss/function_lc_inc.nss",null,true);
	Conquest("nss/function_lc_oga.nss",null,true);
	Conquest("nss/function_lc_shima.nss",null,true);
	Conquest("nss/function_lc_toho.nss",null,true);
	Conquest("nss/function_lc_wam.nss",null,true);
}

//―――――――――――――――
..LoadBox
//―――――――――――――――
function LoadBox()
{
	//☆通常ウィンドウ画像
	CreateTexture("boxH", 19000, 0, InBottom, "cg/sys/adv/THTextWindow.png");
	SetAlias("boxH", "boxH");
	Fade("boxH",0,0,null,false);
	Request("boxH", Lock);
	Request("boxH", Hideable);
	Move("boxH", 0, @0, @4, null, true);

	//☆全画面ウィンドウ画像
	//CreateTexture("boxM", 20000, Center, Middle, "cg/sys/adv/fullwindow.png");
	CreateColor("boxM", 19000, 0, 0, 1024, 576, "BLACK");
	SetAlias("boxM", "boxM");
	Fade("boxM",0,0,null,false);
	Request("boxM", Lock);
	Request("boxM", Hideable);

	//☆通常ウィンドウ用
	CreateWindow("box0", 20001, 0, 0, 1024, 576, false);
	SetAlias("box0", "box0");
	Request("box0", Lock);

	//☆時計表示用
	ClockSet();

	//☆カゴメ吊るし用
	CreateName("RateWindow");
	SetAlias("RateWindow", "RateWindow");
	Request("RateWindow", Lock);

}


//■スクリプト冒頭：本文呼び出し前後定義
//メインゲーム内【CallScene前】
//―――――――――――――――
..GameMainSet
//―――――――――――――――
function GameMainSet()
{
	//デバッグ変数を初期化
	//$DEBUG_cgbglist="";

	if(!$PLACE_reco){
		//☆時刻毎にスキップとオートモードを解除
		if(!#JIKOKU_auto_text_cancel&&(AXNL_GetScriptTimeZone($GameName)==AXNL_GetScriptTime($GameName))){
			$SYSTEM_skip=false;
			#SYSTEM_skip_express=false;
			$SYSTEM_text_auto=false;
	
			//Message("デバッグ用ウィンドウ","デバッグ用です１",YESNOCANCE,EXCLAMATION);
		}else if(#auto_log){
			#auto_log=false;
			$SYSTEM_text_auto_lock=false;
			$SYSTEM_text_auto=true;
	
			//Message("デバッグ用ウィンドウ","デバッグ用です２",YESNOCANCE,EXCLAMATION);
		}
	
		//☆既読フラグ判定
		if(!#RuteDebug&&Strstr($GameName,"z")!=1){
			if(!AXNL_IsFree($GameName)){
				//▼ゲームサークルをブレイクする際に
				#auto_log=$SYSTEM_text_auto;
	
				SetVolume("@SE*", 2000, 0, NULL);
				SetVolume("@x*", 2000, 0, NULL);
				PrintFadeNut("上背景", 2000, true);
	
				ClockDelete(0,true);
				TextBoxDelete(0);
	
				$GameName = "";
				$GameCircle=false;
			
				$GameTV=true;
			
				$SYSTEM_low_thread_priority=false;
				$SYSTEM_save_lock=false;
				$SYSTEM_load_lock=false;
				$SYSTEM_text_auto=false;
	
				//事刻表に辿り着いていない場合
				#START_FLAG=true;
				//始めて行きどまった
				#RATE_FLAG=true;
	
				Escape(2);
			}
		}
		// ルートスクリプト侵入フラグ
	//	VariableValue(#,String("%s_%s_in",Substr($GameName,0,Strstr($GameName,".nss")-1),#RouteName),TRUE);
		AXNL_ReachingTimeZone(Substr($GameName,0,Strstr($GameName,".nss")-1));
	
		//★★★ルートネーム判別マクロ★★★
		myNowRoute();
	}

	//２行音声同期番号初期化
	$AddTextCount=1;
}

//メインゲーム内【CallScene後】
function GameMainSet2()
{
	//▽ＣＧデバッグ用セーブデータ作成
	//Save(5000);

	//☆超速全読み設定解除
	Conquest($ConGameName,$GameName2,true);//Main
	//Conquest($ConGameName,$GameName,true);//本文Scene

	//▽ＣＧデバッグ用：セーブフォルダの5000フォルダに「シーン名」のファイル名で吐き出し
	//$DEBUG_savepath=String("%s/5000/%s.txt",#SYSTEM_save_path,$GameName);
	//WriteFile($DEBUG_savepath,$DEBUG_cgbglist,false);
	//$DEBUG_cgbglist="";

	if(!$PLACE_reco){
		if(#RouteName=="トゥルー"){$_route=1;}
		else if(#RouteName=="a"){$_route=2;}
		else if(#RouteName=="aa"){$_route=3;}
		else if(#RouteName=="ab"){$_route=4;}
		else if(#RouteName=="aba"){$_route=5;}
		else if(#RouteName=="abb"){$_route=6;}
		else if(#RouteName=="b"){$_route=7;}
		else if(#RouteName=="ba"){$_route=8;}
		else if(#RouteName=="baa"){$_route=9;}
		else if(#RouteName=="bab"){$_route=10;}
		else if(#RouteName=="bb"){$_route=11;}
		else if(#RouteName=="c"){$_route=12;}
		else if(#RouteName=="d"){$_route=13;}
		else if(#RouteName=="e"){$_route=14;}
		$_num=String("1%06d%02d",AXNL_GetTimezoneScriptSerialNumber($GameName,#CharaName),$_route);
		DeleteSaveFile($_num);
						
		//ルートスクリプト通過フラグ
		VariableValue(#,String("%s_%s",Substr($GameName,0,Strstr($GameName,".nss")-1),#RouteName),TRUE);
	}
}

//アザナエル用
function Kagome_IsChaeck($KagomeChaeck)
{
	if($CharaName==""){
		//ラテ欄から直接来ているということは読めるということ

	}else if(VariableValue(#,$KagomeChaeck+"_PreClear")){
		//一度通ったということは読めるということ

	}else{
		if(!#RuteDebug){
			//初めてキャラルートから引き続いて到達した場合
			if(AXNL_IsFree($GameName)){
				VariableValue(#,$KagomeChaeck+"_Active",true);
			}
	
			//▼ゲームサークルをブレイクする際に
			#auto_log=$SYSTEM_text_auto;

			SetVolume("@SE*", 2000, 0, NULL);
			SetVolume("@x*", 2000, 0, NULL);
			PrintFadeNut("上背景", 2000, true);
		
			ClockDelete(0,true);
			TextBoxDelete(0);
		
			$GameName = "";
			$GameCircle=false;
		
			$GameTV=true;
		
			$SYSTEM_low_thread_priority=false;
			$SYSTEM_save_lock=false;
			$SYSTEM_load_lock=false;
			$SYSTEM_text_auto=false;
			Escape(2);
		}
	}
}

//アザナエル用
function Ending_IsChaeck($EndingChaeck)
{
	if($CharaName==""){
		//ラテ欄から直接来ているということは読めるということ

	}else if(VariableValue(#,"Clear_"+$EndingChaeck)){
		//一度クリアしたということは読めるということ

	}else{
		if(!#RuteDebug){
			//初めてキャラルートから引き続いて到達した場合
			if(AXNL_IsFree($GameName)){
				VariableValue(#,"Ending_"+$EndingChaeck,true);
			}
	
			//▼ゲームサークルをブレイクする際に
			#auto_log=$SYSTEM_text_auto;

			SetVolume("@SE*", 2000, 0, NULL);
			SetVolume("@x*", 2000, 0, NULL);
			PrintFadeNut("上背景", 2000, true);
		
			ClockDelete(0,true);
			TextBoxDelete(0);
		
			$GameName = "";
			$GameCircle=false;
		
			$GameTV=true;
		
			$SYSTEM_low_thread_priority=false;
			$SYSTEM_save_lock=false;
			$SYSTEM_load_lock=false;
			$SYSTEM_text_auto=false;
			Escape(2);
		}
	}
}

//アザナエル用
function Quake_IsChaeck()
{
	if(#RuteDebug){
		//▼ムービーＯＮ
		MoviePlay("dx/op.ngs", true);
		#ClearQuake=true;
	}else{
		if(#ClearQuake){
			//▼ムービーＯＮ
			if(#LOCAL_break_play_movie){
				MoviePlay("dx/op.ngs", true);
			}else{
				MoviePlay("dx/op.ngs", false);
			}
		}else{
			if(#1850千秋_フウリ_トゥルー&&#1850沙紅羅_トゥルー&&#1850恵那_トゥルー&&#1840似鳥_ノーコ_h_トゥルー){
				//▼ムービーＯＮ
				MoviePlay("dx/op.ngs", false);

				//#1900沙紅羅_トゥルー_in=true;
				AXNL_ReachingTimeZone("1900沙紅羅",true);
				//#1900千秋_トゥルー_in=true;
				AXNL_ReachingTimeZone("1900千秋",true);
				//#1900恵那_トゥルー_in=true;
				AXNL_ReachingTimeZone("1900恵那",true);
				//#1900似鳥_トゥルー_in=true;
				AXNL_ReachingTimeZone("1900似鳥",true);
				//#1900ノーコ_トゥルー_in=true;
				AXNL_ReachingTimeZone("1900ノーコ",true);
				//#1900フウリ_トゥルー_in=true;
				AXNL_ReachingTimeZone("1900フウリ",true);

				#ClearQuake=true;
			}
		
			//▼ゲームサークルをブレイクする際に
			#auto_log=$SYSTEM_text_auto;

			SetVolume("@SE*", 2000, 0, NULL);
			SetVolume("@x*", 2000, 0, NULL);
			PrintFadeNut("上背景", 2000, true);
		
			ClockDelete(0,true);
			TextBoxDelete(0);
		
			$GameName = "";
			$GameCircle=false;
		
			$GameTV=true;
		
			$SYSTEM_low_thread_priority=false;
			$SYSTEM_save_lock=false;
			$SYSTEM_load_lock=false;
			$SYSTEM_text_auto=false;

			//事刻表に辿り着いていない場合
			#START_FLAG=true;
			//始めて行きどまった
			#RATE_FLAG=true;

			Escape(2);
		}
	}
}


function GameBreak()
{
	//▼ゲームサークルをブレイクする際に
	SetVolume("@SE*", 2000, 0, NULL);
	SetVolume("@x*", 2000, 0, NULL);
	PrintFadeNut("上背景", 2000, true);

	ClockDelete(0,true);
	TextBoxDelete(0);

	$GameName = "";
	$GameCircle=false;
	$GameTV=true;

	$SYSTEM_low_thread_priority=false;
	$SYSTEM_save_lock=false;
	$SYSTEM_load_lock=false;
	$SYSTEM_text_auto=false;
}

//■終了用スクリプトの最後に記載
//―――――――――――――――
..EndScript
//―――――――――――――――
function EndScript()
{
	if($GameClose){
		SetVolume("@SE*", 1000, 0, NULL);
		SetVolume("@x*", 1000, 0, NULL);
		PrintFadeNut("上背景", 1000, true);

		//●総プレイ時間：合計
		#ALL_PLAY_TIME=#ALL_PLAY_TIME+(Time()-#BEGIN_TIME);

		Exit();
	}else if($GameTV){
		SetVolume("@SE*", 1000, 0, NULL);
		SetVolume("@x*", 1000, 0, NULL);
		PrintFadeNut("上背景", 1000, true);

		$GameName = "";
		$GameCircle=false;
		$GameTV=true;
	}else if(!$エキストラタイトル){
		SetVolume("@SE*", 1000, 0, NULL);
		SetVolume("@x*", 1000, 0, NULL);
		PrintFadeNut("上背景", 1000, true);
	}else{
		$GameName = "";
	}
}

//■エキストラ回想用：本編冒頭に仕込む
//―――――――――――――――
..ReConquest
//―――――――――――――――
function ReConquest()
{
	Conquest($ConGameName,$PreGameName,true);
}

//■超速発動初期化
//【Scene先頭】
//―――――――――――――――
..SkipOut
//―――――――――――――――
function SkipOut()
{
	if(#SYSTEM_skip_absolute){$AllRead = Conquest($ConGameName,$GameName,true);}
	Conquest($ConGameName,$GameName2,true);

	SetVolume("@*", 0, 0, NULL);
	ClearFadeAll(0,true);

	//▽作品によりけり（ボックス等消去）
	Fade("@boxH", 0, 0, null, true);
	Fade("@boxM",0,0,null,true);


	#SYSTEM_skip_express_minimum_time+=0;

	Wait(64);
}

//【Box内】
//―――――――――――――――
..BoxOut
//―――――――――――――――
function BoxOut()
{
	#SYSTEM_skip_express_minimum_time=0;

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		if(#SYSTEM_skip_absolute){$AllRead = Conquest($ConGameName,$GameName,true);}

		SetVolume("@*", 0, 0, NULL);
		ClearFadeAll(0,true);

		//▽作品によりけり（ボックス等消去）
		Fade("@boxH", 0, 0, null, true);
		Fade("@boxM",0,0,null,true);


		#SYSTEM_skip_express_minimum_time+=0;
		Escape(3);
	}
}


//□デバッグ用：CGリスト吐出し用
//―――――――――――――――
..DEBUG_cgbgcorrect
//―――――――――――――――
function DEBUG_cgbgcorrect($filename)
{
	if(Strstr($filename,"bg")&&!Strstr($DEBUG_cgbglist,$filename)){
		//ファイル名に'bg'という文字列があり、なおかつ初見の場合はリストに追加
		$DEBUG_cgbglist=$DEBUG_cgbglist+$filename;
	}else if(Strstr($filename,"ev")&&!Strstr($DEBUG_cgbglist,$filename)){
		//ファイル名に'ev'という文字列があり、なおかつ初見の場合はリストに追加
		$DEBUG_cgbglist=$DEBUG_cgbglist+$filename;
	}
}


//■プレイ時間マクロ
//=============================================================================//
.//総プレイ時間
//=============================================================================//
function GetTime()
{
	//●総プレイ時間：合計
	#ALL_PLAY_TIME=#ALL_PLAY_TIME+(Time()-#BEGIN_TIME);
	//●総プレイ時間：計測開始
	#BEGIN_TIME=Time();
}


//■スクリプトにおいてテキストを定義するマクロコマンド
//=============================================================================//
.//テキスト定義
//=============================================================================//

//テキストアイコンを途中で変えたい場合はお使いください
//―――――――――――――――
..TextIconSet()
//―――――――――――――――
function TextIconSet()
{
	//改行
	$SYSTEM_text_icon_line="cg/sys/icon/line/文字送りアイコン%04d.png#5";
	//改ページ
	$SYSTEM_text_icon_page="cg/sys/icon/page/文字送りアイコン%04d.png#5";
	//自動文字送り
	$SYSTEM_text_icon_auto="cg/sys/icon/auto/AUTOアイコン%02d.png#5";
}
function TextIconSet2()
{
	//改行
	$SYSTEM_text_icon_line="cg/sys/icon/line2/文字送りアイコン%04d.png#12";
	//改ページ
	$SYSTEM_text_icon_page="cg/sys/icon/page2/文字送りアイコン%04d.png#12";
	//自動文字送り
	$SYSTEM_text_icon_auto="cg/sys/icon/auto2/文字送りアイコン%04d.png#12";
}

//通常ウィンドウ用
//―――――――――――――――
..SetText
//―――――――――――――――
function SetText()
{
	TakeRateBack();

	SetFont("ＭＳゴシック", 28, #FFFFFF, #222222, 500, AROUND);
	SetVertex($SYSTEM_present_text, 0, 0);

	$LoadTextWsize = 756;
	LoadText($構文名,$SYSTEM_present_preprocess,$SYSTEM_present_text,$LoadTextWsize,150,0,40);
	//LoadText($構文名,$SYSTEM_present_preprocess,$SYSTEM_present_text,676,150,0,40);

	$WindXSize=1024;
	$TextStartXPos=($WindXSize-$LoadTextWsize)/2+30;
	Move($SYSTEM_present_text, 0, $TextStartXPos, 450, null, false);
	//Move($SYSTEM_present_text, 0, 174, 450, null, true);

	Request($SYSTEM_present_text, Erase);
	Request($SYSTEM_present_text, Lock);
	Request($SYSTEM_present_text, Hideable);
}

//全画面ウィンドウ用
//―――――――――――――――
..SetTextC
//―――――――――――――――
function SetTextC()
{
	SetFont("ＭＳゴシック", 28, #FFFFFF, #222222, 500, AROUND);
	SetVertex($SYSTEM_present_text, 0, 0);

	$LoadTextWsize = 756;
	LoadText($構文名,$SYSTEM_present_preprocess,$SYSTEM_present_text,$LoadTextWsize,150,0,40);

	$TextH=ImageHorizon($SYSTEM_present_text);
	$TextV=ImageVertical($SYSTEM_present_text);

	$WindXSize=1024;
	$WindYSize=512;
	$TextH2=($WindXSize-$TextH)/2;
	$TextV2=($WindYSize-$TextV)/2;
	Move($SYSTEM_present_text, 0, $TextH2, $TextV2, null, false);

	Request($SYSTEM_present_text, Erase);
	Request($SYSTEM_present_text, Lock);
	Request($SYSTEM_present_text, Hideable);
}


//■ボックスを描画するのとテキストをタイピングする動作をまとめて実行するマクロ
//=============================================================================//
.//タイピングマクロ
//=============================================================================//

//―――――――――――――――
..TypeBegin（通常ボックス：タイピング）
//―――――――――――――――
function TypeBegin()
{
	if($AddVoiceON){
		Delete("AddVoice*");
		$AddVoiceON=false;
	}

	$SYSTEM_position_x_text_icon=910;
	$SYSTEM_position_y_text_icon=536;

	$BoxFadeTime=150;

	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	Fade("@boxH",$BoxFadeTime,1000,null,false);

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	Request($textnumber, Enter);
	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	BoxOut();
}

//―――――――――――――――
..TypeBeginA（通常ボックス：タイピング：オート進行用）
//―――――――――――――――
function TypeBeginA($TypeBeginWaitA)
{
	if($AddVoiceON){
		Delete("AddVoice*");
		$AddVoiceON=false;
	}

	$SYSTEM_position_x_text_icon=910;
	$SYSTEM_position_y_text_icon=536;

	$BoxFadeTime=150;

	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	Fade("@boxH",$BoxFadeTime,1000,null,false);

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	Request($textnumber, Enter);
	WaitText($textnumber, null);
	WaitPlay($textnumber, null);

	Wait($TypeBeginWaitA);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	BoxOut();
}

//―――――――――――――――
..TypeBeginT（ボックス無し：タイピング）
//―――――――――――――――
function TypeBeginT()
{
	$SYSTEM_position_x_text_icon=910;
	$SYSTEM_position_y_text_icon=536;

	$BoxFadeTime=150;

	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	Request($textnumber, Enter);
	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	BoxOut();
}

//―――――――――――――――
..TypeBeginF（ボックス無し：フェード）
//―――――――――――――――
function TypeBeginF($TextFadeTime)
{
	$SYSTEM_position_x_text_icon=910;
	$SYSTEM_position_y_text_icon=536;

	$BoxFadeTime=150;

	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	$SYSTEM_text_waitkey=false;
	$SYSTEM_text_icon_disable=true;
	Fade($textnumber, 0, 0, null, true);
	Request($textnumber, Enter);
	Request($textnumber, PushText);
	Fade($textnumber, $TextFadeTime, 1000, null, true);
	$SYSTEM_text_icon_disable=false;
	$SYSTEM_text_waitkey=true;
	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	BoxOut();
}

//―――――――――――――――
..TypeBeginT2（中央ボックス：タイピング）
//―――――――――――――――
function TypeBeginT2()
{
	$SYSTEM_position_x_text_icon=910;
	$SYSTEM_position_y_text_icon=536;

	$BoxFadeTime=150;

	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	Fade("@boxM",$BoxFadeTime,600,null,false);

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	Request($textnumber, Enter);
	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	BoxOut();
}

//―――――――――――――――
..TypeBeginF2（中央ボックス：フェード）
//―――――――――――――――
function TypeBeginF2($TextFadeTime)
{
	$SYSTEM_position_x_text_icon=910;
	$SYSTEM_position_y_text_icon=536;

	$BoxFadeTime=150;

	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	$SYSTEM_text_waitkey=false;
	$SYSTEM_text_icon_disable=true;
	Fade($textnumber, 0, 0, null, true);
	Request($textnumber, Enter);
	Request($textnumber, PushText);
	Fade("@boxM",$BoxFadeTime,600,null,false);
	Fade($textnumber, $TextFadeTime, 1000, null, true);
	$SYSTEM_text_icon_disable=false;
	$SYSTEM_text_waitkey=true;
	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	BoxOut();
}

//―――――――――――――――
..TextBoxDelete_yobi
//―――――――――――――――
function TextBoxDelete_yobi($BoxDeleteTime)
{
	Fade("@boxM*",$BoxDeleteTime,0,null,true);
	Fade("@boxH*",$BoxDeleteTime,0,null,true);
}










//=============================================================================//
.//テキスト二行同時表示
//=============================================================================//
//---------------------------------------------------------------//
..AddText
//---------------------------------------------------------------//
function AddText($AddTextLine,$AddTextText,$AddTextClass,$AddTextVoice,$AddTextPlay,$AddVoicePlay,$AddVoiceVolume)
{
	Delete("LogText*");
	Delete("AddText*");
	Delete("AddVoice*");
	$AddVoiceON=false;

	if($AddVoicePlay){
		$AddTextNus="AddVoice"+$AddTextClass+$AddTextLine;
		CreateVOICEEX($AddTextNus,$AddTextVoice,$AddTextClass);
		Request($AddTextNus, Lock);
		SetVolumeEX($AddTextNus, 0, $AddVoiceVolume, null);
	}else{
		$AddTextNus="ParVoice"+$AddTextClass+$AddTextLine;
		CreateVOICEEX($AddTextNus,$AddTextVoice,$AddTextClass);
		SetVolumeEX($AddTextNus, 0, $AddVoiceVolume, null);
	}

	//音声同期
	$LOCAL_text_interval=DurationTime($AddTextNus)/Strlen($AddTextText);
//	$AddTextText=String("<Interval time=%d>%s</Interval>",$LOCAL_text_interval,$AddTextText);
	Delete("ParVoice*");

	if(VariableValue(#,Substr($GameName,0,Strstr($GameName,".nss")-1)+"_Add"+$AddTextCount)){
		SetFont("ＭＳゴシック", 28, FFFF75, 000001, 500, AROUND);
	}else{
		SetFont("ＭＳゴシック", 28, FFFFFF, 222222, 500, AROUND);
	}
	$LoadTextWsize = 756;
	$WindXSize=1024;
	$TextStartXPos=($WindXSize-$LoadTextWsize)/2+30;
	$TextStartYPos=($AddTextLine-1)*40+450;

	if($AddTextPlay){
		$AddTextNut="AddText"+$AddTextClass+$AddTextLine;
	}else{
		$AddTextNut="LogText"+$AddTextClass+$AddTextLine;
	}

	CreateText($AddTextNut, 20001, $TextStartXPos, $TextStartYPos, Auto, Auto, $AddTextText);
	SetAlias($AddTextNut,$AddTextNut);
	Request($AddTextNut, NoLog);
	Request($AddTextNut, Erase);
	Request($AddTextNut, Hideable);
	Request($AddTextNut, Lock);

	if(!$AddTextPlay){
		Fade("LogText*", 0, 0, null, true);
		Request("LogText*", Enter);
		Request("LogText*", PushText);
	}

	if(!$AddTextVoice){
		SetBacklog($AddTextText, "NULL", "NULL");
	}else{
		$AddTextVoice="voice/"+$AddTextVoice;
		SetBacklog($AddTextText, $AddTextVoice, $AddTextClass);
	}
}



//―――――――――――――――
..TypeBeginD（複数行ボックス：タイピング）
//―――――――――――――――
function TypeBeginD()
{
	$SYSTEM_position_x_text_icon=910;
	$SYSTEM_position_y_text_icon=536;

	//音声同期
	$SYSTEM_ignore_voice_sync_text=true;
	$SYSTEM_ignore_text_speed=true;

	VariableValue(#,Substr($GameName,0,Strstr($GameName,".nss")-1)+"_Add"+$AddTextCount,true);
	$AddTextCount++;
	if(#SYSTEM_sync_voice_and_text){
		$SYSTEM_text_interval=$LOCAL_text_interval;
	}

	$BoxFadeTime=150;

	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;
	Request($textnumber, NoLog);

	Fade("@boxH",$BoxFadeTime,1000,null,false);

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	//ボイス再生
	Request("AddVoice*", Play);
	SetLoop("AddVoice*", false);
	Request("AddVoice*", Disused);

	//複数行エンター
	Request("AddText*", Enter);

	Request($textnumber, Enter);
	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	//複数行消去
	Request("LogText*", UnLock);
	Request("AddText*", UnLock);
	Request("AddVoice*", UnLock);

	Fade("LogText*", 0, 0, null, true);
	Delete("LogText*");
	Fade("AddText*", 0, 0, null, true);
	Delete("AddText*");
	if(#SYSTEM_click_break_voice){
		Delete("AddVoice*");
	}
	$AddVoiceON=true;
	$AddTextTextIn=false;

	//音声同期制限解除
	$SYSTEM_ignore_voice_sync_text=false;
	$SYSTEM_ignore_text_speed=false;
	$SYSTEM_text_interval=48;

	BoxOut();
}


//---------------------------------------------------------------//
..TypeAddText
//---------------------------------------------------------------//
function TypeAddText()
{
	Request($SYSTEM_present_text, NoLog);
	Request("AddText*", Enter);

	Request("AddVoice*", Play);
	SetLoop("AddVoice*", false);
	Request("AddVoice*", Disused);
}

//---------------------------------------------------------------//
..WaitAddText
//---------------------------------------------------------------//
function WaitAddText()
{
	Fade("LogText*", 0, 1000, null, false);
	Fade($SYSTEM_present_text, 0, 0, null, false);

	if(!#SYSTEM_auto_text_break_voice&&$SYSTEM_text_auto){
		WaitPlay("AddVoice*", null);
	}
}

//---------------------------------------------------------------//
..WaitAddText2
//---------------------------------------------------------------//
function WaitAddText2()
{
	if(!#SYSTEM_auto_text_break_voice&&$SYSTEM_text_auto){
		WaitPlay("AddVoice*", null);
	}
}

//---------------------------------------------------------------//
..DeleteAddText
//---------------------------------------------------------------//
function DeleteAddText()
{
	Request("LogText*", UnLock);
	Request("AddText*", UnLock);
	Request("AddVoice*", UnLock);

	Fade("LogText*", 0, 0, null, true);
	Delete("LogText*");
	Fade("AddText*", 0, 0, null, true);
	Delete("AddText*");
	if(#SYSTEM_click_break_voice){
		Delete("AddVoice*");
	}
	$AddVoiceON=true;
}




//■CreateTextureの変形
//=============================================================================//
.//CreateTexture系
//=============================================================================//

//▼ノーマル
//透明度0からスタートする「CreateTexture」です
..CreateTextureEX
function CreateTextureEX($CreatePicEX_Nat, 描画優先度, $CreateTexEX_X, $CreateTexEX_Y, $イメージデータ)
{
	//▽ＣＧデバッグ用
	DEBUG_cgbgcorrect($イメージデータ);

	CreateTexture($CreatePicEX_Nat, 描画優先度, 1030, 0, $イメージデータ);
	Fade($CreatePicEX_Nat, 0, 0, null, true);

//ｘ取得
	$CT_EXX = ImageHorizon($CreatePicEX_Nat);
//ｙ取得
	$CT_EXY = ImageVertical($CreatePicEX_Nat);
//ｘ取得÷２
	$CT_EXX2 = $CT_EXX-1024;
//ｙ取得÷２
	$CT_EXY2 = $CT_EXY-576;
//ｘ取得÷４
	$CT_EXX2 = $CT_EXX2/2;
//ｙ取得÷４
	$CT_EXY2 = $CT_EXY2/2;
//Center取得
	$CT_EX_Center = -($CT_EXX2);
//Middle取得
	$CT_EX_Middle = -($CT_EXY2);
//Center取得
	$CT_EX_Center2 = 1024-$CT_EXX;
//Right取得
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middle取得
	$CT_EX_Middle2 = 576-$CT_EXY;
//Right取得
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottom取得
	$CT_EX_InBottom0 = $CT_EXY-576;
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	SetAlias($CreatePicEX_Nat, $CreatePicEX_Nat);

	if($CreateTexEX_X=="Center"){
//横幅＝1024
		if($CT_EXX == 1024){
			Move($CreatePicEX_Nat, 0, 0, @0, null, true);
//横幅＜1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEX_Nat, 0, $CT_EX_Center2, @0, null, true);
//横幅＞1024
		}else{
			Move($CreatePicEX_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEX_X=="center"){
		if($CT_EXX == 1024){
			Move($CreatePicEX_Nat, 0, 0, @0, null, true);
		}else if($CT_EXX < 1024){
			Move($CreatePicEX_Nat, 0, $CT_EX_Center2, @0, null, true);
		}else{
			Move($CreatePicEX_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEX_X=="InLeft"){
			Move($CreatePicEX_Nat, 0, 0, @0, null, true);
	}else if($CreateTexEX_X=="InRight"){
//横幅＝1024
		if($CT_EXX == 1024){
			Move($CreatePicEX_Nat, 0, 0, @0, null, true);
//横幅＜1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEX_Nat, 0, $CT_EX_Center3, @0, null, true);
//横幅＞1024
		}else{
			Move($CreatePicEX_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
//		$CreateTexEX_X = $CreateTexEX_X-1030;
		Move($CreatePicEX_Nat, 0, 0, @0, null, true);
		Move($CreatePicEX_Nat, 0, $CreateTexEX_X, @0, null, true);
	}


//縦幅関連
	if($CreateTexEX_Y=="Middle"){
		if($CT_EXY == 576){
			Move($CreatePicEX_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 576){
			Move($CreatePicEX_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEX_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEX_Y=="middle"){
		if($CT_EXY == 576){
			Move($CreatePicEX_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 576){
			Move($CreatePicEX_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEX_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEX_Y=="InBottom"){
		if($CT_EXY != 576){Move($CreatePicEX_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEX_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEX_Y=="inBottom"){
		if($CT_EXY != 576){Move($CreatePicEX_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEX_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEX_Y=="inbottom"){
		if($CT_EXY != 576){Move($CreatePicEX_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEX_Nat, 0, @0, 0, null, true);}
	}else{
		Move($CreatePicEX_Nat, 0, @0, 0, null, true);
		Move($CreatePicEX_Nat, 0, @0, $CreateTexEX_Y, null, true);
	}

}

//エイリアス指定がついただけの「CreateTexture」です
..CreateTextureSP
function CreateTextureSP("ナット名", 描画優先度, Ｘ座標, Ｙ座標, $イメージデータ)
{
	//▽ＣＧデバッグ用
	DEBUG_cgbgcorrect($イメージデータ);

	CreateTexture("ナット名", 描画優先度, Ｘ座標, Ｙ座標, $イメージデータ);
	SetAlias("ナット名", "ナット名");

}

//▼加算
//透明度0からスタートする「CreateTexture」です（加算合成付き）
..CreateTextureEXadd
function CreateTextureEXadd($CreatePicEXadd_Nat, 描画優先度, $CreateTexEXadd_X, $CreateTexEXadd_Y, $イメージデータ)
{
	//▽ＣＧデバッグ用
	DEBUG_cgbgcorrect($イメージデータ);

	CreateTexture($CreatePicEXadd_Nat, 描画優先度, 1030, 0, $イメージデータ);

//ｘ取得
	$CT_EXX = ImageHorizon($CreatePicEXadd_Nat);
//ｙ取得
	$CT_EXY = ImageVertical($CreatePicEXadd_Nat);
//ｘ取得÷２
	$CT_EXX2 = $CT_EXX-1024;
//ｙ取得÷２
	$CT_EXY2 = $CT_EXY-576;
//ｘ取得÷４
	$CT_EXX2 = $CT_EXX2/2;
//ｙ取得÷４
	$CT_EXY2 = $CT_EXY2/2;
//Center取得
	$CT_EX_Center = -($CT_EXX2);
//Middle取得
	$CT_EX_Middle = -($CT_EXY2);
//Center取得
	$CT_EX_Center2 = 1024-$CT_EXX;
//Right取得
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middle取得
	$CT_EX_Middle2 = 576-$CT_EXY;
//Right取得
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottom取得
	$CT_EX_InBottom0 = $CT_EXY-576;
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	Request($CreatePicEXadd_Nat, AddRender);
	SetAlias($CreatePicEXadd_Nat, $CreatePicEXadd_Nat);
	Fade($CreatePicEXadd_Nat, 0, 0, null, true);

	if($CreateTexEXadd_X=="Center"){
//横幅＝1024
		if($CT_EXX == 1024){
			Move($CreatePicEXadd_Nat, 0, 0, @0, null, true);
//横幅＜1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center2, @0, null, true);
//横幅＞1024
		}else{
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEXadd_X=="center"){
		if($CT_EXX == 1024){
			Move($CreatePicEXadd_Nat, 0, 0, @0, null, true);
		}else if($CT_EXX < 1024){
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center2, @0, null, true);
		}else{
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEXadd_X=="InLeft"){
			Move($CreatePicEXadd_Nat, 0, 0, @0, null, true);
	}else if($CreateTexEXadd_X=="InRight"){
//横幅＝1024
		if($CT_EXX == 1024){
			Move($CreatePicEXadd_Nat, 0, 0, @0, null, true);
//横幅＜1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center3, @0, null, true);
//横幅＞1024
		}else{
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
		Move($CreatePicEXadd_Nat, 0, 0, @0, null, true);
		Move($CreatePicEXadd_Nat, 0, $CreateTexEXadd_X, @0, null, true);
	}


//縦幅関連
	if($CreateTexEXadd_Y=="Middle"){
		if($CT_EXY == 576){
			Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 576){
			Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXadd_Y=="middle"){
		if($CT_EXY == 576){
			Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 576){
			Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXadd_Y=="InBottom"){
		if($CT_EXY != 576){Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXadd_Y=="inBottom"){
		if($CT_EXY != 576){Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXadd_Y=="inbottom"){
		if($CT_EXY != 576){Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);}
	}else{
		Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);
		Move($CreatePicEXadd_Nat, 0, @0, $CreateTexEXadd_Y, null, true);
	}
}

//エイリアス指定がついただけの「CreateTexture」です（加算合成付き）
..CreateTextureSPadd
function CreateTextureSPadd("ナット名", 描画優先度, Ｘ座標, Ｙ座標, $イメージデータ)
{
	//▽ＣＧデバッグ用
	DEBUG_cgbgcorrect($イメージデータ);

	CreateTexture("ナット名", 描画優先度, Ｘ座標, Ｙ座標, $イメージデータ);
	Request("ナット名", AddRender);
	SetAlias("ナット名", "ナット名");
}
//▼減算
//透明度0からスタートする「CreateTexture」です（加算合成付き）
..CreateTextureEXsub
function CreateTextureEXsub($CreatePicEXsub_Nat, 描画優先度, $CreateTexEXsub_X, $CreateTexEXsub_Y, $イメージデータ)
{
	//▽ＣＧデバッグ用
	DEBUG_cgbgcorrect($イメージデータ);

	CreateTexture($CreatePicEXsub_Nat, 描画優先度, 1030, 0, $イメージデータ);

//ｘ取得
	$CT_EXX = ImageHorizon($CreatePicEXsub_Nat);
//ｙ取得
	$CT_EXY = ImageVertical($CreatePicEXsub_Nat);
//ｘ取得÷２
	$CT_EXX2 = $CT_EXX-1024;
//ｙ取得÷２
	$CT_EXY2 = $CT_EXY-576;
//ｘ取得÷４
	$CT_EXX2 = $CT_EXX2/2;
//ｙ取得÷４
	$CT_EXY2 = $CT_EXY2/2;
//Center取得
	$CT_EX_Center = -($CT_EXX2);
//Middle取得
	$CT_EX_Middle = -($CT_EXY2);
//Center取得
	$CT_EX_Center2 = 1024-$CT_EXX;
//Right取得
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middle取得
	$CT_EX_Middle2 = 576-$CT_EXY;
//Right取得
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottom取得
	$CT_EX_InBottom0 = $CT_EXY-576;
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	Request($CreatePicEXsub_Nat, SubRender);
	SetAlias($CreatePicEXsub_Nat, $CreatePicEXsub_Nat);
	Fade($CreatePicEXsub_Nat, 0, 0, null, true);

	if($CreateTexEXsub_X=="Center"){
//横幅＝1024
		if($CT_EXX == 1024){
			Move($CreatePicEXsub_Nat, 0, 0, @0, null, true);
//横幅＜1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center2, @0, null, true);
//横幅＞1024
		}else{
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEXsub_X=="center"){
		if($CT_EXX == 1024){
			Move($CreatePicEXsub_Nat, 0, 0, @0, null, true);
		}else if($CT_EXX < 1024){
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center2, @0, null, true);
		}else{
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEXsub_X=="InLeft"){
			Move($CreatePicEXsub_Nat, 0, 0, @0, null, true);
	}else if($CreateTexEXsub_X=="InRight"){
//横幅＝1024
		if($CT_EXX == 1024){
			Move($CreatePicEXsub_Nat, 0, 0, @0, null, true);
//横幅＜1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center3, @0, null, true);
//横幅＞1024
		}else{
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
		Move($CreatePicEXsub_Nat, 0, 0, @0, null, true);
		Move($CreatePicEXsub_Nat, 0, $CreateTexEXsub_X, @0, null, true);
	}


//縦幅関連
	if($CreateTexEXsub_Y=="Middle"){
		if($CT_EXY == 576){
			Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 576){
			Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXsub_Y=="middle"){
		if($CT_EXY == 576){
			Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 576){
			Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXsub_Y=="InBottom"){
		if($CT_EXY != 576){Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXsub_Y=="inBottom"){
		if($CT_EXY != 576){Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXsub_Y=="inbottom"){
		if($CT_EXY != 576){Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);}
	}else{
		Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);
		Move($CreatePicEXsub_Nat, 0, @0, $CreateTexEXsub_Y, null, true);
	}
}

//エイリアス指定がついただけの「CreateTexture」です（減算合成付き）
..CreateTextureSPsub
function CreateTextureSPsub("ナット名", 描画優先度, Ｘ座標, Ｙ座標, $イメージデータ)
{
	//▽ＣＧデバッグ用
	DEBUG_cgbgcorrect($イメージデータ);

	CreateTexture("ナット名", 描画優先度, Ｘ座標, Ｙ座標, $イメージデータ);
	Request("ナット名", SubRender);
	SetAlias("ナット名", "ナット名");
}

//▼オーバーレイ
//透明度0からスタートする「CreateTexture」です（加算合成付き）
..CreateTextureEXover
function CreateTextureEXover($CreatePicEXover_Nat, 描画優先度, $CreateTexEXover_X, $CreateTexEXover_Y, $イメージデータ)
{
	//▽ＣＧデバッグ用
	DEBUG_cgbgcorrect($イメージデータ);

	CreateTexture($CreatePicEXover_Nat, 描画優先度, 1030, 0, $イメージデータ);

//ｘ取得
	$CT_EXX = ImageHorizon($CreatePicEXover_Nat);
//ｙ取得
	$CT_EXY = ImageVertical($CreatePicEXover_Nat);
//ｘ取得÷２
	$CT_EXX2 = $CT_EXX-1024;
//ｙ取得÷２
	$CT_EXY2 = $CT_EXY-576;
//ｘ取得÷４
	$CT_EXX2 = $CT_EXX2/2;
//ｙ取得÷４
	$CT_EXY2 = $CT_EXY2/2;
//Center取得
	$CT_EX_Center = -($CT_EXX2);
//Middle取得
	$CT_EX_Middle = -($CT_EXY2);
//Center取得
	$CT_EX_Center2 = 1024-$CT_EXX;
//Right取得
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middle取得
	$CT_EX_Middle2 = 576-$CT_EXY;
//Right取得
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottom取得
	$CT_EX_InBottom0 = $CT_EXY-576;
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	Request($CreatePicEXover_Nat, OverlayRender);
	SetAlias($CreatePicEXover_Nat, $CreatePicEXover_Nat);
	Fade($CreatePicEXover_Nat, 0, 0, null, true);

	if($CreateTexEXover_X=="Center"){
//横幅＝1024
		if($CT_EXX == 1024){
			Move($CreatePicEXover_Nat, 0, 0, @0, null, true);
//横幅＜1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center2, @0, null, true);
//横幅＞1024
		}else{
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEXover_X=="center"){
		if($CT_EXX == 1024){
			Move($CreatePicEXover_Nat, 0, 0, @0, null, true);
		}else if($CT_EXX < 1024){
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center2, @0, null, true);
		}else{
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEXover_X=="InLeft"){
			Move($CreatePicEXover_Nat, 0, 0, @0, null, true);
	}else if($CreateTexEXover_X=="InRight"){
//横幅＝1024
		if($CT_EXX == 1024){
			Move($CreatePicEXover_Nat, 0, 0, @0, null, true);
//横幅＜1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center3, @0, null, true);
//横幅＞1024
		}else{
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
		Move($CreatePicEXover_Nat, 0, 0, @0, null, true);
		Move($CreatePicEXover_Nat, 0, $CreateTexEXover_X, @0, null, true);
	}


//縦幅関連
	if($CreateTexEXover_Y=="Middle"){
		if($CT_EXY == 576){
			Move($CreatePicEXover_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 576){
			Move($CreatePicEXover_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXover_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXover_Y=="middle"){
		if($CT_EXY == 576){
			Move($CreatePicEXover_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 576){
			Move($CreatePicEXover_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXover_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXover_Y=="InBottom"){
		if($CT_EXY != 576){Move($CreatePicEXover_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXover_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXover_Y=="inBottom"){
		if($CT_EXY != 576){Move($CreatePicEXover_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXover_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXover_Y=="inbottom"){
		if($CT_EXY != 576){Move($CreatePicEXover_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXover_Nat, 0, @0, 0, null, true);}
	}else{
		Move($CreatePicEXover_Nat, 0, @0, 0, null, true);
		Move($CreatePicEXover_Nat, 0, @0, $CreateTexEXover_Y, null, true);
	}
}


//エイリアス指定がついただけの「CreateTexture」です（オーバーレイ合成付き）
..CreateTextureSPover
function CreateTextureSPover("ナット名", 描画優先度, Ｘ座標, Ｙ座標, $イメージデータ)
{
	//▽ＣＧデバッグ用
	DEBUG_cgbgcorrect($イメージデータ);

	CreateTexture("ナット名", 描画優先度, Ｘ座標, Ｙ座標, $イメージデータ);
	Request("ナット名", OverlayRender);
	SetAlias("ナット名", "ナット名");
}

//▼乗算
//透明度0からスタートする「CreateTexture」です（加算合成付き）
..CreateTextureEXmul
function CreateTextureEXmul($CreatePicEXmul_Nat, 描画優先度, $CreateTexEXmul_X, $CreateTexEXmul_Y, $イメージデータ)
{
	//▽ＣＧデバッグ用
	DEBUG_cgbgcorrect($イメージデータ);

	CreateTexture($CreatePicEXmul_Nat, 描画優先度, 1030, 0, $イメージデータ);

//ｘ取得
	$CT_EXX = ImageHorizon($CreatePicEXmul_Nat);
//ｙ取得
	$CT_EXY = ImageVertical($CreatePicEXmul_Nat);
//ｘ取得÷２
	$CT_EXX2 = $CT_EXX-1024;
//ｙ取得÷２
	$CT_EXY2 = $CT_EXY-576;
//ｘ取得÷４
	$CT_EXX2 = $CT_EXX2/2;
//ｙ取得÷４
	$CT_EXY2 = $CT_EXY2/2;
//Center取得
	$CT_EX_Center = -($CT_EXX2);
//Middle取得
	$CT_EX_Middle = -($CT_EXY2);
//Center取得
	$CT_EX_Center2 = 1024-$CT_EXX;
//Right取得
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middle取得
	$CT_EX_Middle2 = 576-$CT_EXY;
//Right取得
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottom取得
	$CT_EX_InBottom0 = $CT_EXY-576;
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	Request($CreatePicEXmul_Nat, MulRender);
	SetAlias($CreatePicEXmul_Nat, $CreatePicEXmul_Nat);
	Fade($CreatePicEXmul_Nat, 0, 0, null, true);

	if($CreateTexEXmul_X=="Center"){
//横幅＝1024
		if($CT_EXX == 1024){
			Move($CreatePicEXmul_Nat, 0, 0, @0, null, true);
//横幅＜1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center2, @0, null, true);
//横幅＞1024
		}else{
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEXmul_X=="center"){
		if($CT_EXX == 1024){
			Move($CreatePicEXmul_Nat, 0, 0, @0, null, true);
		}else if($CT_EXX < 1024){
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center2, @0, null, true);
		}else{
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEXmul_X=="InLeft"){
			Move($CreatePicEXmul_Nat, 0, 0, @0, null, true);
	}else if($CreateTexEXmul_X=="InRight"){
//横幅＝1024
		if($CT_EXX == 1024){
			Move($CreatePicEXmul_Nat, 0, 0, @0, null, true);
//横幅＜1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center3, @0, null, true);
//横幅＞1024
		}else{
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
		Move($CreatePicEXmul_Nat, 0, 0, @0, null, true);
		Move($CreatePicEXmul_Nat, 0, $CreateTexEXmul_X, @0, null, true);
	}


//縦幅関連
	if($CreateTexEXmul_Y=="Middle"){
		if($CT_EXY == 576){
			Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 576){
			Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXmul_Y=="middle"){
		if($CT_EXY == 576){
			Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 576){
			Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXmul_Y=="InBottom"){
		if($CT_EXY != 576){Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXmul_Y=="inBottom"){
		if($CT_EXY != 576){Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXmul_Y=="inbottom"){
		if($CT_EXY != 576){Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);}
	}else{
		Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);
		Move($CreatePicEXmul_Nat, 0, @0, $CreateTexEXmul_Y, null, true);
	}
}


//エイリアス指定がついただけの「CreateTexture」です（乗算合成付き）
..CreateTextureSPmul
function CreateTextureSPmul("ナット名", 描画優先度, Ｘ座標, Ｙ座標, $イメージデータ)
{
	//▽ＣＧデバッグ用
	DEBUG_cgbgcorrect($イメージデータ);

	CreateTexture("ナット名", 描画優先度, Ｘ座標, Ｙ座標, $イメージデータ);
	Request("ナット名", MulRender);
	SetAlias("ナット名", "ナット名");
}


//=============================================================================//
.//背景・イベント・ＥＦ専用
//=============================================================================//

//▼ノーマル
//透明度0からスタートする「CreateTexture」です
..OnBG
function OnBG(描画優先度,$bgimagedata,$パッチ判定)
{
	if($BgNameN==""||$BgNameN=="OnBG10"){$BgNameN="OnBG01";}
	else if($BgNameN=="OnBG01"){$BgNameN="OnBG02";}
	else if($BgNameN=="OnBG02"){$BgNameN="OnBG03";}
	else if($BgNameN=="OnBG03"){$BgNameN="OnBG04";}
	else if($BgNameN=="OnBG04"){$BgNameN="OnBG05";}
	else if($BgNameN=="OnBG05"){$BgNameN="OnBG06";}
	else if($BgNameN=="OnBG06"){$BgNameN="OnBG07";}
	else if($BgNameN=="OnBG07"){$BgNameN="OnBG08";}
	else if($BgNameN=="OnBG08"){$BgNameN="OnBG09";}
	else if($BgNameN=="OnBG09"){$BgNameN="OnBG10";}

	if($BgNameN01==""){$BgNameN01=$BgNameN;}
	else if($BgNameN02==""){$BgNameN02=$BgNameN;}
	else if($BgNameN03==""){$BgNameN03=$BgNameN;}
	else if($BgNameN04==""){$BgNameN04=$BgNameN;}
	else if($BgNameN05==""){$BgNameN05=$BgNameN;}
	else if($BgNameN06==""){$BgNameN06=$BgNameN;}
	else if($BgNameN07==""){$BgNameN07=$BgNameN;}
	else if($BgNameN08==""){$BgNameN08=$BgNameN;}
	else if($BgNameN09==""){$BgNameN09=$BgNameN;}
	else if($BgNameN10==""){$BgNameN10=$BgNameN;}

	$bgナット = $BgNameN;

	if($パッチ判定=="normal"){
		$bgimagedata = "cg/bg/" + $bgimagedata + ".jpg";
	}else if($パッチ判定=="path"){
		$bgimagedata = "cg2/bg/" + $bgimagedata + ".jpg";
//Path通過したら、初期化【09/01/29】
		$パッチ判定=="";
	}else if(!$パッチ判定){
		$bgimagedata = "cg/bg/" + $bgimagedata + ".jpg";
	}else{
		$bgimagedata = "cg/bg/" + $bgimagedata + ".jpg";
	}

	//▽ＣＧデバッグ用
	DEBUG_cgbgcorrect($bgimagedata);

	CreateTexture($bgナット, 描画優先度, Center, Middle, $bgimagedata);
	SetAlias($bgナット, $bgナット);
	Fade($bgナット, 0, 0, null, true);
}

...//FadeBG
function FadeBG($描画時間,$待ち)
{
	if($BgNameN01!=""){$ナット名=$BgNameN01;$BgNameN01="";}
	else if($BgNameN02!=""){$ナット名=$BgNameN02;$BgNameN02="";}
	else if($BgNameN03!=""){$ナット名=$BgNameN03;$BgNameN03="";}
	else if($BgNameN04!=""){$ナット名=$BgNameN04;$BgNameN04="";}
	else if($BgNameN05!=""){$ナット名=$BgNameN05;$BgNameN05="";}
	else if($BgNameN06!=""){$ナット名=$BgNameN06;$BgNameN06="";}
	else if($BgNameN07!=""){$ナット名=$BgNameN07;$BgNameN07="";}
	else if($BgNameN08!=""){$ナット名=$BgNameN08;$BgNameN08="";}
	else if($BgNameN09!=""){$ナット名=$BgNameN09;$BgNameN09="";}
	else if($BgNameN10!=""){$ナット名=$BgNameN10;$BgNameN10="";}

	$BGP = 1;

	SetFont("ＭＳ 明朝", 18, FFFFFF, 000000, MEDIUM, RIGHTDOWN);


//描画マクロ
	PreFadeBG();

	$FaceBG2=$FaceBG;
	$FaceBG=$nutBG;
	$BGCP = 1;

	//指定用
	$nutBG=$setBGnut;
	$nutBG2=$astBGnut;

	//アザナエル用：カゴメアソビカラー
	if(#AnotherL){
		KagomeColorAuto(19000,300,true);
	}
}

...//PreFadeBG
function PreFadeBG()
{
	$BGnut = $ナット名;

//ナット名取得　$picnut
		$picBGnut = $FaceBG;
//前ナット名取得　$Prepicnut
		$PrepicBGnut = $FaceBG2;
//前定義が発生してるか確認用
		$BGQ = $BGCP;

//一度定義済み+定義フラグが発生している場合
	if($BGP==1 && $BGQ==0){$FaceBG="名無し";}

//前ナット名正規定義
	$setBGnut = "@"+$BGnut;
//ナット名正規定義
	$astBGnut = $nutBG;
//前ナット名正規定義
	$PreastBGnut ="@"+$PrepicBGnut;

	if($BGP!=0 && $BGQ==0 && $setBGnut!=$astBGnut && $astBGnut!=$PreastBGnut){Fade($astBGnut, 0, 0, null, false);}

	Fade($PreastBGnut, 0, 0, null, false);

	if($BGQ!=0 && $setBGnut!=$PreastBGnut && $astBGnut!=$PreastBGnut){Delete($PreastBGnut);}

	if($BGP==1 && $BGQ==0){
		Fade($setBGnut, $描画時間, 1000, null, false);
	}else if($BGP==1 && $setBGnut!=$astBGnut){
		Fade($astBGnut, $描画時間, 0, Axl3, false);
		Fade($setBGnut, $描画時間, 1000, Dxl2, false);
		Request($astBGnut, Disused);
	}else if($BGP==0){
		Fade($astBGnut, $描画時間, 0, null, false);
		Request($astBGnut, Disused);
	}

	if($待ち==true)
	{
		WaitAction($setBGnut, null);

		if($StP==0){
			WaitAction($astBGnut, null);
		}

	}
	else if($待ち != false)
	{
		Wait($待ち);
	}
	else
	{
	}

}


//■CreateColorの変形
//=============================================================================//
.//CreateColor系
//=============================================================================//

//▼ノーマル
//透明度0からスタートする「CreateColor」です
..CreateColorEX
function CreateColorEX("ナット名", 描画優先度, イメージデータ)
{

	CreateColor("ナット名", 描画優先度, 1024, 0, 1024, 576, イメージデータ);
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
	Move("ナット名", 0, @-1024, @0, null, true);

}

//エイリアス指定がついただけの「CreateColor」です
..CreateColorSP
function CreateColorSP("ナット名", 描画優先度, イメージデータ)
{
	CreateColor("ナット名", 描画優先度, 0, 0, 1024, 576, イメージデータ);
	SetAlias("ナット名", "ナット名");
}

//▼加算
//透明度0からスタートする「CreateColor」です（加算合成付き）
..CreateColorEXadd
function CreateColorEXadd("ナット名", 描画優先度, イメージデータ)
{
	CreateColor("ナット名", 描画優先度, 1024, 0, 1024, 576, イメージデータ);
	Request("ナット名", AddRender);
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
	Move("ナット名", 0, @-1024, @0, null, true);
}

//エイリアス指定がついただけの「CreateColor」です（加算合成付き）
..CreateColorSPadd
function CreateColorSPadd("ナット名", 描画優先度, イメージデータ)
{
	CreateColor("ナット名", 描画優先度, 0, 0, 1024, 576, イメージデータ);
	Request("ナット名", AddRender);
	SetAlias("ナット名", "ナット名");
}

//▼減算
//透明度0からスタートする「CreateColor」です（減算合成付き）
..CreateColorEXsub
function CreateColorEXsub("ナット名", 描画優先度, イメージデータ)
{
	CreateColor("ナット名", 描画優先度, 1024, 0, 1024, 576, イメージデータ);
	Request("ナット名", SubRender);
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
	Move("ナット名", 0, @-1024, @0, null, true);
}

//エイリアス指定がついただけの「CreateColor」です（減算合成付き）
..CreateColorSPsub
function CreateColorSPsub("ナット名", 描画優先度, イメージデータ)
{
	CreateColor("ナット名", 描画優先度, 0, 0, 1024, 576, イメージデータ);
	Request("ナット名", SubRender);
	SetAlias("ナット名", "ナット名");
}


//▼オーバーレイ
//透明度0からスタートする「CreateColor」です（オーバーレイ合成付き）
..CreateColorEXover
function CreateColorEXover("ナット名", 描画優先度, イメージデータ)
{
	CreateColor("ナット名", 描画優先度, 1024, 0, 1024, 576, イメージデータ);
	Request("ナット名", OverlayRender);
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
	Move("ナット名", 0, @-1024, @0, null, true);
}

//エイリアス指定がついただけの「CreateColor」です（オーバーレイ合成付き）
..CreateColorSPover
function CreateColorSPover("ナット名", 描画優先度, イメージデータ)
{
	CreateColor("ナット名", 描画優先度, 0, 0, 1024, 576, イメージデータ);
	Request("ナット名", OverlayRender);
	SetAlias("ナット名", "ナット名");
}

//▼乗算
//透明度0からスタートする「CreateColor」です（乗算合成付き）
..CreateColorEXmul
function CreateColorEXmul("ナット名", 描画優先度, イメージデータ)
{
	CreateColor("ナット名", 描画優先度, 1024, 0, 1024, 576, イメージデータ);
	Request("ナット名", MulRender);
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
	Move("ナット名", 0, @-1024, @0, null, true);
}

//エイリアス指定がついただけの「CreateColor」です（乗算合成付き）
..CreateColorSPmul
function CreateColorSPmul("ナット名", 描画優先度, イメージデータ)
{
	CreateColor("ナット名", 描画優先度, 0, 0, 1024, 576, イメージデータ);
	Request("ナット名", MulRender);
	SetAlias("ナット名", "ナット名");
}



//■CreateMovieの変形
//=============================================================================//
.//CreateMovie系
//=============================================================================//

//▼ノーマル
//透明度0からスタートする「CreateMovie」です
..CreateMovieEX
function CreateMovieEX("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ")
{
	CreateMovie("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ");
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
}

//エイリアス指定がついただけの「CreateMovie」です
..CreateMovieSP
function CreateMovieSP("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ")
{
	CreateMovie("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ");
	SetAlias("ナット名", "ナット名");
}

//▼加算
//透明度0からスタートする「CreateMovie」です（加算合成付き）
..CreateMovieEXadd
function CreateMovieEXadd("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ")
{
	CreateMovie("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ");
	Request("ナット名", AddRender);
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
}

//エイリアス指定がついただけの「CreateMovie」です（加算合成付き）
..CreateMovieSPadd
function CreateMovieSPadd("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ")
{
	CreateMovie("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ");
	Request("ナット名", AddRender);
	SetAlias("ナット名", "ナット名");
}

//▼減算
//透明度0からスタートする「CreateMovie」です（減算合成付き）
..CreateMovieEXsub
function CreateMovieEXsub("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ")
{
	CreateMovie("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ");
	Request("ナット名", SubRender);
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
}

//エイリアス指定がついただけの「CreateMovie」です（減算合成付き）
..CreateMovieSPsub
function CreateMovieSPsub("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ")
{
	CreateMovie("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ");
	Request("ナット名", SubRender);
	SetAlias("ナット名", "ナット名");
}

//▼オーバーレイ
//透明度0からスタートする「CreateMovie」です（オーバーレイ合成付き）
..CreateMovieEXover
function CreateMovieEXover("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ")
{
	CreateMovie("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ");
	Request("ナット名", OverlayRender);
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
}

//エイリアス指定がついただけの「CreateMovie」です（オーバーレイ合成付き）
..CreateMovieSPover
function CreateMovieSPover("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ")
{
	CreateMovie("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ");
	Request("ナット名", OverlayRender);
	SetAlias("ナット名", "ナット名");
}

//▼乗算
//透明度0からスタートする「CreateMovie」です（乗算合成付き）
..CreateMovieEXmul
function CreateMovieEXmul("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ")
{
	CreateMovie("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ");
	Request("ナット名", MulRender);
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
}

//エイリアス指定がついただけの「CreateMovie」です（乗算合成付き）
..CreateMovieSPmul
function CreateMovieSPmul("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ")
{
	CreateMovie("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ");
	Request("ナット名", MulRender);
	SetAlias("ナット名", "ナット名");
}


function CreateStencilT($ナット名１,$ナット名２,画像優先度,Ｘ位置,Ｙ位置,$画像１,$画像２)
{
	$子ナット名=$ナット名１+"/"+$ナット名２;

	CreateStencil($ナット名１,画像優先度,Ｘ位置,Ｙ位置,128,$画像１,false);
	CreateTexture($子ナット名,画像優先度,Ｘ位置,Ｙ位置,$画像２);

	SetAlias($ナット名１, $ナット名１);
	SetAlias($子ナット名, $ナット名２);

	Fade($ナット名１, 0, 0, null, false);
	Fade($ナット名２, 0, 0, null, true);
}

function CreateStencilC($ナット名１,$ナット名２,画像優先度,Ｘ位置,Ｙ位置,$画像１,$画像２)
{
	$子ナット名=$ナット名１+"/"+$ナット名２;

	CreateStencil($ナット名１,画像優先度,Ｘ位置,Ｙ位置,128,$画像１,false);
	CreateColor($子ナット名, 画像優先度, 0, 0, 1024, 576, $画像２);

	SetAlias($ナット名１, $ナット名１);
	SetAlias($子ナット名, $ナット名２);

	Fade($ナット名１, 0, 0, null, false);
	Fade($ナット名２, 0, 0, null, true);
}




//■CreateWindowの変形
//=============================================================================//
.//CreateWindow系
//=============================================================================//
//エイリアス指定の付いた定義命令
..CreateWindowEX
function CreateWindowEX($WindowNut, XPos, YPos, XSet, YSet, 同期)
{
	CreateWindow($WindowNut, 0, XPos, YPos, XSet, YSet, 同期);
	SetAlias($WindowNut,$WindowNut);
}

//■CreateProcessの変形
//=============================================================================//
.//CreateProcess系
//=============================================================================//
//エイリアス指定の付いた定義命令
..CreateProcessEX
function CreateProcessEX($ProcessNameNut, $ProcessNut)
{
	CreateProcess($ProcessNameNut, 0, 0, 0, $ProcessNut);
	SetAlias($ProcessNameNut,$ProcessNameNut);
}

//■描画マクロ
//=============================================================================//
.//場面転換用
//=============================================================================//
//画面上にこのナット以外全てを残さない
//使用する際は絶対に「Pre」の外で使用してください
..PrintBG
function PrintBG("ナット名",描画優先度)
{
	CreateEffect("ナット名", 描画優先度, 0, 0, 1024, 576, "Plain");
	SetAlias("ナット名","ナット名");
	Request("ナット名",Passive);
	Request("ナット名", Lock);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();

	Request("ナット名", UnLock);
}

..PrintBG2
function PrintBG2("ナット名")
{
	CreateTexture("ナット名", 30000, 0, 0, "SCREEN");
	SetAlias("ナット名", "ナット名");
	Request("ナット名", Lock);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();

	Request("ナット名", UnLock);
}

//※新規追加項目
//音関連は消さない用のPrintBG
..PrintGO
function PrintGO("ナット名",描画優先度)
{
	CreateEffect("ナット名", 描画優先度, 0, 0, 1024, 576, "Plain");
	SetAlias("ナット名","ナット名");
	Request("ナット名",Passive);
	Request("ナット名", Lock);

	ByeDefault();
	ByeBye();

	Request("ナット名", UnLock);
}

..CreatePlainSP
function CreatePlainSP("ナット名",優先度){

	CreateEffect("ナット名", 優先度, 0, 0, 1024, 576, "Plain");
	SetAlias("ナット名","ナット名");
	Request("ナット名",Passive);

}

..CreatePlainSPadd
function CreatePlainSPadd("ナット名",優先度){

	CreateEffect("ナット名", 優先度, 0, 0, 1024, 576, "Plain");
	SetAlias("ナット名","ナット名");
	Request("ナット名",Passive);
	Request("ナット名", AddRender);

}

..CreatePlainSPsub
function CreatePlainSPsub("ナット名",優先度){

	CreateEffect("ナット名", 優先度, 0, 0, 1024, 576, "Plain");
	SetAlias("ナット名","ナット名");
	Request("ナット名",Passive);
	Request("ナット名", SubRender);

}

..CreatePlainSPover
function CreatePlainSPover("ナット名",優先度){

	CreateEffect("ナット名", 優先度, 0, 0, 1024, 576, "Plain");
	SetAlias("ナット名","ナット名");
	Request("ナット名",Passive);
	Request("ナット名", OverlayRender);

}

..CreatePlainSPmul
function CreatePlainSPmul("ナット名",優先度){

	CreateEffect("ナット名", 優先度, 0, 0, 1024, 576, "Plain");
	SetAlias("ナット名","ナット名");
	Request("ナット名",Passive);
	Request("ナット名", MulRender);

}

..CreatePlainEX
function CreatePlainEX("ナット名",優先度){

	CreateEffect("ナット名", 優先度, 0, 0, 1024, 576, "Plain");
	Request("ナット名",Passive);
	Fade("ナット名", 0, 0, null, true);
	SetAlias("ナット名","ナット名");

}

..CreatePlainEXadd
function CreatePlainEXadd("ナット名",優先度){

	CreateEffect("ナット名", 優先度, 0, 0, 1024, 576, "Plain");
	Request("ナット名",Passive);
	Fade("ナット名", 0, 0, null, true);
	SetAlias("ナット名","ナット名");
	Request("ナット名", AddRender);

}

..CreatePlainEXsub
function CreatePlainEXsub("ナット名",優先度){

	CreateEffect("ナット名", 優先度, 0, 0, 1024, 576, "Plain");
	Request("ナット名",Passive);
	Fade("ナット名", 0, 0, null, true);
	SetAlias("ナット名","ナット名");
	Request("ナット名", SubRender);

}

..CreatePlainEXover
function CreatePlainEXover("ナット名",優先度){

	CreateEffect("ナット名", 優先度, 0, 0, 1024, 576, "Plain");
	Request("ナット名",Passive);
	Fade("ナット名", 0, 0, null, true);
	SetAlias("ナット名","ナット名");
	Request("ナット名", OverlayRender);

}

..CreatePlainEXmul
function CreatePlainEXmul("ナット名",優先度){

	CreateEffect("ナット名", 優先度, 0, 0, 1024, 576, "Plain");
	Request("ナット名",Passive);
	Fade("ナット名", 0, 0, null, true);
	SetAlias("ナット名","ナット名");
	Request("ナット名", MulRender);

}

//=============================================================================//
.//抹消系
//=============================================================================//
..FadeDelete
function FadeDelete("ナット名", 所要時間, テンポ, 待ち)
{
	Fade("ナット名", 所要時間, 0, テンポ, 待ち);
	Request("ナット名", UnLock);
	Request("ナット名", Disused);

	TakeRatePicAuto();//★徒歩：アザナエルスクリーン
}

..DrawDelete
function DrawDelete("ナット名", 所要時間, 境界, テンポ, "$画像", 待ち)
{
	$Transition = "cg/data/" + "$画像" + ".png";

	DrawTransition("ナット名", 所要時間, 1000, 0, 境界, テンポ, "$Transition", 待ち);
	Request("ナット名", UnLock);
	Request("ナット名", Disused);

	TakeRatePicAuto();//★徒歩：アザナエルスクリーン
}

..PlayDelete
function PlayDelete($プレイナット名, $PlayDeleteTime, $PlayWait)
{
	if($PlayDeleteCount==0){
		$PlayDeleteCount=1;
	}else if($PlayDeleteCount==1){
		$PlayDeleteCount=2;
	}else if($PlayDeleteCount==2){
		$PlayDeleteCount=3;
	}else if($PlayDeleteCount==3){
		$PlayDeleteCount=1;
	}

	$PlayDeleteName="PlayDeleteProcess"+$PlayDeleteCount;

	if($PlayWait==false){
		Fade($プレイナット名, $PlayDeleteTime, 0, null, false);

		CreateProcess("プレイ消去１", 150, 0, 0, $PlayDeleteName);
		SetAlias("プレイ消去１", "プレイ消去１");
		Request("プレイ消去１", Start);
		Request("プレイ消去１", Disused);
	}else{
		Fade($プレイナット名, $PlayDeleteTime, 0, null, true);

		Request($プレイナット名, Stop);
		Delete($プレイナット名);
	}
}

function PlayDeleteProcess1()
{
	Wait($PlayDeleteTime);
	Request($プレイナット名, Stop);
	Delete($プレイナット名);
}

function PlayDeleteProcess2()
{
	Wait($PlayDeleteTime);
	Request($プレイナット名, Stop);
	Delete($プレイナット名);
}

function PlayDeleteProcess3()
{
	Wait($PlayDeleteTime);
	Request($プレイナット名, Stop);
	Delete($プレイナット名);
}



//■移動などの場面転換に関するマクロ
//=============================================================================//
.//暗転処理系
//=============================================================================//

..//暗転処理系ベース

//使用する際は絶対に「Pre」の外で使用してください
..ClearFadeAll
function ClearFadeAll(所要時間,待ち)
{
	CreateColor("クリア黒", 20000, 0, 0, 1024, 576, "BLACK");
	SetAlias("クリア黒", "クリア黒");
	Fade("クリア黒", 0, 0, null, true);

	Fade("クリア黒", 所要時間, 1000, null, 待ち);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();
}

..PrintFadeAll
function PrintFadeAll("ナット名",所要時間,待ち)
{
	CreateColor("ナット名", 20000, 0, 0, 1024, 576, "BLACK");
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
	Request("ナット名", Lock);

	Fade("ナット名", 所要時間, 1000, null, 待ち);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();
	Request("ナット名", UnLock);
}


//使用する際は絶対に「Pre」の外で使用してください
..ClearFadeNut
function ClearFadeNut(所要時間,待ち)
{
	CreateColor("クリア黒", 20000, 0, 0, 1024, 576, "BLACK");
	SetAlias("クリア黒", "クリア黒");
	Fade("クリア黒", 0, 0, null, true);

	Fade("クリア黒", 所要時間, 1000, null, 待ち);

	ByeDefault();
	ByeBye();

	Delete("クリア黒");
}

..PrintFadeNut
function PrintFadeNut("ナット名",所要時間,待ち)
{
	CreateColor("ナット名", 20000, 0, 0, 1024, 576, "BLACK");
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);

	Fade("ナット名", 所要時間, 1000, null, 待ち);

	ByeDefault();
	ByeBye();
}

//使用する際は絶対に「Pre」の外で使用してください
..ClearDrawAll
function ClearDrawAll(所要時間, 境界, $画像, 待ち)
{
	CreateColor("クリア黒", 20000, 0, 0, 1024, 576, "BLACK");
	SetAlias("クリア黒", "クリア黒");
	Fade("クリア黒", 0, 0, null, true);

	$Transition = "cg/data/" + $画像 + ".png";
	Fade("クリア黒", 0, 1000, null, false);
	DrawTransition("クリア黒", 所要時間, 0, 1000, 境界, null, $Transition, 待ち);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();
}

..PrintDrawAll
function PrintDrawAll("ナット名", 所要時間, 境界, $画像, 待ち)
{
	CreateColor("ナット名", 20000, 0, 0, 1024, 576, "BLACK");
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
	Request("ナット名", Lock);

	$Transition = "cg/data/" + $画像 + ".png";
	Fade("ナット名", 0, 1000, null, false);
	DrawTransition("ナット名", 所要時間, 0, 1000, 境界, null, $Transition, 待ち);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();
	Request("ナット名", UnLock);
}


//使用する際は絶対に「Pre」の外で使用してください
..ClearDrawNut
function ClearDrawNut(所要時間, 境界, $画像, 待ち)
{
	CreateColor("クリア黒", 20000, 0, 0, 1024, 576, "BLACK");
	SetAlias("クリア黒", "クリア黒");
	Fade("クリア黒", 0, 0, null, true);

	$Transition = "cg/data/" + $画像 + ".png";
	Fade("クリア黒", 0, 1000, null, false);
	DrawTransition("クリア黒", 所要時間, 0, 1000, 境界, null, $Transition, 待ち);

	ByeDefault();
	ByeBye();

	Delete("クリア黒");
}

..PrintDrawNut
function PrintDrawNut("ナット名", 所要時間, 境界, $画像, 待ち)
{
	CreateColor("ナット名", 20000, 0, 0, 1024, 576, "BLACK");
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);

	$Transition = "cg/data/" + $画像 + ".png";
	Fade("ナット名", 0, 1000, null, false);
	DrawTransition("ナット名", 所要時間, 0, 1000, 境界, null, $Transition, 待ち);

	ByeDefault();
	ByeBye();
}

..//暗転処理系応用

//使用する際は絶対に「Pre」の外で使用してください
//ＳＥも一つで対応
..ClearWaitAll
function ClearWaitAll($FadeSoundTime,待ち時間)
{
	CreateColor("絵Clear_BlackWait", 24000, 0, 0, 1024, 576, "BLACK");
	SetAlias("絵Clear_BlackWait", "絵Clear_BlackWait");
	Fade("絵Clear_BlackWait", 0, 0, null, true);

	Request("絵Clear_BlackWait", Lock);


	$SoundTimeCFA=$FadeSoundTime+500;

	SetVolume("@SE*", $SoundTimeCFA, 0, null);
	SetVolume("SE*", $SoundTimeCFA, 0, null);
	SetVolume("@OnSE*", $SoundTimeCFA, 0, null);
	SetVolume("OnSE*", $SoundTimeCFA, 0, null);
	SetVolume("@xbgm*", $SoundTimeCFA, 0, null);
	Fade("絵Clear_BlackWait", $FadeSoundTime, 1000, null, true);

	Wait(待ち時間);
	WaitPlay("@SE*",null);
	WaitPlay("@OnSE*",null);
	WaitPlay("SE*",null);
	WaitPlay("OnSE*",null);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();

	Request("絵Clear_BlackWait", UnLock);
	Delete("絵Clear_BlackWait");
}



..MoveEX
function MoveEX("ナット名", 所要時間, $Ｘ座標, $Ｙ座標, テンポ, 待ち)
{
	$Ｘ座標プレ = - $Ｘ座標;
	$Ｙ座標プレ = - $Ｙ座標;

	$Ｘ座標マイナス = "@" + $Ｘ座標プレ;
	$Ｙ座標マイナス = "@" + $Ｙ座標プレ;

	$Ｘ座標プラス = "@" + $Ｘ座標;
	$Ｙ座標プラス = "@" + $Ｙ座標;

	Move("ナット名", 0, $Ｘ座標マイナス, $Ｙ座標マイナス, null, true);
	Move("ナット名", 所要時間, $Ｘ座標プラス, $Ｙ座標プラス, テンポ, 待ち);
}





//■変数初期化マクロコマンド
//=============================================================================//
.//初期化
//=============================================================================//
..ByeBye
function ByeBye()
{
//■立ち絵全消去
	ByeAllSt();

//■背景用「OnBG」
	$BgNameN01="";
	$BgNameN02="";
	$BgNameN03="";
	$BgNameN04="";
	$BgNameN05="";
	$BgNameN06="";
	$BgNameN07="";
	$BgNameN08="";
	$BgNameN09="";
	$BgNameN10="";
}

..ByeDefault
function ByeDefault()
{
	Delete("@絵*");
	Delete("絵*");
	Delete("@OnBG*");
	Delete("OnBG*");
	Delete("@背景*");

	//アザナエル
	Delete("@OnKG*");
	Delete("@RateWindow/*");
	Delete("@gameview");
}



//■エンディング関係のマクロコマンド
//=============================================================================//
.//エンディング関係
//=============================================================================//
//=============================================================================//
..//★ＥＤ連想
//=============================================================================//
function ArrayEND()
{
	Array($EndName,"共通","真実");
	AssocArray($EndName,"共通","真実");

	Array($EndName["共通"],"Roll01","@EndBGM01","BLACK",6200,60000,-576,1,"V","@EndBGM02",false);
//	Array($EndName["真実"],"Roll01","@xsonged","BLACK",-3000,60000,-576,1,"V",false,false);
	Array($EndName["真実"],"Movie01",false,"WHITE",-3000,60000,-576,1,"V",false,false);


//	Array($EndName,"英雄編","復讐編","魔王編","悪鬼編","茶々編","解放編");
//	AssocArray($EndName,"英雄編","復讐編","魔王編","悪鬼編","茶々編","解放編");
//	Array($EndName["英雄編"],"Roll01","@xsonged","BLACK",-3000,60000,-576,1,"V",false,false);
//	Array($EndName["復讐編"],"Roll01","@xsonged","BLACK",-13000,60000,1024,3,"H",false,true);
//	Array($EndName["魔王編"],"Roll01","@xsonged","BLACK",-5000,60000,1024,3,"H",false,true);
//	Array($EndName["悪鬼編"],"Roll01","@xsonged","BLACK",6000,60000,1124,3,"H",false,true);
//	Array($EndName["茶々編"],"Roll01","@xsonged","BLACK",10000,60000,1024,3,"H",false,true);
//	Array($EndName["解放編"],"Roll01","@xsonged","BLACK",-13000,60000,1024,3,"H",false,true);



//■０：プロセス名
//■１：唄名
//■２：出だしの背景
//■３：再生秒数調整
//■４：ＢＧＭ２週目へのカウント
//■５：ロール位置調整（主にケツ調整）
//■６：スタッフロールの数
//■７：スタッフロールの形式「F」「H」「V」
//■８：２曲あるかないか、有る場合は曲名を無い場合は「false」
//■９：後ろで画像を切り替えるか

//■０－：フェード画像差分
//■１－：待機秒数、表示秒数（前画像消去分子・ウェイト・次画像表示秒数・ウェイト）

//■６－：ロール画像差分（ENDRoll00・ENDRoll01・・・）
//■７－：ロール画像のピクセル間隔調整

	//Array($EndName["共通"][0],"logo.png");//■９がfalseで意味が無い
	//Array($EndName["共通"][1],0,960,10,10);//■９がfalseで意味が無い
	Array($EndName["共通"][6],"クレジット_ショート");
	Array($EndName["共通"][7],0);

	//Array($EndName["真実"][0],"logo.png");//■９がfalseで意味が無い
	//Array($EndName["真実"][1],0,960,10,10);//■９がfalseで意味が無い
	Array($EndName["真実"][6],"クレジット_トゥルー");
	Array($EndName["真実"][7],0);

/*
	Array($EndName["復讐編"][0],"logo.png");
	Array($EndName["復讐編"][1],0,960,10,10);
	Array($EndName["復讐編"][6],"香奈枝ルート","staff01","staff02");
	Array($EndName["復讐編"][7],0,0,0);

	Array($EndName["茶々編"][0],"logo.png");
	Array($EndName["茶々編"][1],0,960,10,10);
	Array($EndName["茶々編"][6],"茶々丸ルート","staff01","staff02");
	Array($EndName["茶々編"][7],0,0,0);

	Array($EndName["魔王編"][0],"logo.png");
	Array($EndName["魔王編"][1],0,960,10,10);
	Array($EndName["魔王編"][6],"村正ルート２","staff01","staff02");
	Array($EndName["魔王編"][7],0,0,0);

	Array($EndName["解放編"][0],"logo.png");
	Array($EndName["解放編"][1],0,960,10,10);
	Array($EndName["解放編"][6],"村正ルート２","staff01","staff02");
	Array($EndName["解放編"][7],0,0,0);

	Array($EndName["悪鬼編"][0],"ev169_署長との出会い.jpg","ev132_笑う統.jpg","ev133_兜割に挑む光_c.jpg","ev008_赤子を抱える女.jpg","ev128_病床の光_b01.jpg","ev138_首領の最期_d.jpg","ev139_統を殺害_a.jpg","ev101_プロローグ_a.jpg","ev103_香奈枝演奏_a.jpg","ev268_ヤクザと対峙する一条.jpg","ev106_雄飛と見下ろす村正_d.jpg","ev112_一条をお姫様だっこする村正.jpg","ev113_サーキット貴賓席_a.jpg","ev914_九〇式竜騎兵魔剣インメルマンターン.jpg","ev213_景明と村正の結縁_b.jpg","ev221_月明かりを浴びて立つ光_b.jpg","ev230_泣きじゃくる村正.jpg","ev239_茶々丸の最期_d.jpg","ev251_村正VS銀星号決戦第二局.jpg","ev255_野太刀を構える村正_a.jpg","ev256_銀星号の最期_b.jpg","ev263_村正を刺し貫く雪車町.jpg","ev266_景明、悪鬼の笑い.jpg","logo.png");
	Array($EndName["悪鬼編"][1],5,35,5,34,5,5,5,34,5,5,5,34,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,16,3,3);
	Array($EndName["悪鬼編"][6],"村正ルート","staff01","staff02");
	Array($EndName["悪鬼編"][7],0,200,50);
*/


//デバッグ用
	$RollDebug=false;
	if($RollDebug){
		$RollDebugAll=0;
		$RollDebugWhile=1;
		while(Count($EndName["悪鬼編"][1])>$RollDebugWhile){
			$RollDebugAll=$RollDebugAll+$EndName["悪鬼編"][1][$RollDebugWhile];
			$RollDebugWhile=$RollDebugWhile+2;
		}
		CreateText("デバッグロール", 2000000, 50, 50, 700, 500, $RollDebugAll);
		WaitKey();
		Delete("デバッグロール");
	}


	$LayerCount0=100000;//下地
	$LayerCount1=100010;//ロール
	$LayerCount2=100009;//フェード用の絵
	if($EndName[$ENDNumber]=="悪鬼編"){
		$LayerCount2=100011;//フェード用の絵
	}
	$LayerCount9=200000;
}

//=============================================================================//
..//★ＥＤ定義
//=============================================================================//
function TheEND($ENDNumber)
{
	QuickStop();

	//▼連想配列
	ArrayEND();

	$EndBunbo=1000;
	$ENDBGM=$EndName[$ENDNumber][1];
	$ENDBack=$EndName[$ENDNumber][2];
	$TimeAdjust=$EndName[$ENDNumber][3];
	$LoopAdjust=$EndName[$ENDNumber][4];
	$LengthAdjust=$EndName[$ENDNumber][5];
	$ENDImage="end";
	$BGM名2=$EndName[$ENDNumber][8];

	//////////////////
	SetVolume("@SE*", 2000, 0, NULL);
	SetVolume("@x*", 2000, 0, NULL);
	if($ENDBGM!=false){
		SoundPlay($ENDBGM,0,1000,true);
	}
	//////////////////

	//★背景差し替え
	if($ENDBack!="EXTRA"){
		if($ENDBack=="BLACK"||$ENDBack=="WHITE"){
			CreateColor("ENDBack", $LayerCount0, 0, 0, 1024, 576, $ENDBack);
		}else{
			CreateTexture("ENDBack", $LayerCount0, 0, 0, $ENDBack);
		}
		SetAlias("ENDBack", "ENDBack");
		Fade("ENDBack", 0, 0, null, true);
		Request("ENDBack", Lock);
		Fade("ENDBack", 1000, 1000, null, true);
	
		//★ロック設置
		LockVideo(true);
		Delete("@*");
		Fade("@*", 0, 0, null, false);
		Fade("@*/*", 0, 0, null, false);
		Fade("@*/*/*", 0, 0, null, false);
		Fade("*/*", 0, 0, null, false);
		Fade("*/*", 0, 0, null, false);
		Fade("*/*/*", 0, 0, null, false);
		Fade("ENDBack", 0, 1000, null, true);
		//★ロック設置
		LockVideo(false);

		Request("ENDBack", UnLock);
	}

	if($EndName[$ENDNumber]=="悪鬼編"){
		CreateTextureSP("ENDWindow", $LayerCount9, 25, 120, "cg/sys/ed/エンドロール用イベントボカシ額縁.png");
		CreateTextureSP("ENDWindow2", $LayerCount2, 0, 0, "cg/sys/ed/エンドロール用イベントボカシ額縁2.png");
	}

	//★ＥＤ定義
	$RollNut=String("ClearRoll%02d",$ENDNumber);
	EndRollTexture();
	if(VariableValue(#,$RollNut)){
		SetRoll($EndProcess,$ENDBGM,false);
	}else{
		SetRoll($EndProcess,$ENDBGM,true);
		VariableValue(#,$RollNut,true);
	}

	//■右バー再開
	if($ENDNumber==0||$ENDNumber==1||$ENDNumber==2||$ENDNumber==4){
		Wait(5000);
		QuickStart();
	}
}

...//■テクスチャ系定義
function EndRollTexture()
{
	$EndRoll=$EndName[$ENDNumber][0];

	if($EndRoll=="Roll01"){
		$EndProcess="ProcessRoll01";
		TextureRoll01();
	}else if($EndRoll=="Roll00"){
		$EndProcess="ProcessRoll00";
		TextureRoll00();
	}else if($EndRoll=="Roll00H"){
		$EndProcess="ProcessRoll00H";
		TextureRoll00H();
	}else if($EndRoll=="Movie01"){
		$EndProcess="ProcessRoll01";
	}
}

//=============================================================================//
..//★ロール開始
//=============================================================================//
function SetRoll($処理単位名,$BGM名,$待機)
{
	if(!$PreSetRoll){
		#play_speed_plus=#SYSTEM_play_speed;
		#SYSTEM_play_speed=3;
	
		$SYSTEM_text_auto=false;
		$SYSTEM_skip=false;
		#SYSTEM_skip_express=false;
	
		$SYSTEM_menu_lock=true;
	}


	if($EndRoll!="Movie01"){
		CreateProcess("エンドロールプロセス", 2000, 0, 0, $処理単位名);
		SetAlias("エンドロールプロセス", "エンドロールプロセス");
		CreateProcess("エンドロール歌プロセス", 150, 0, 0, "EndSong");
		SetAlias("エンドロール歌プロセス", "エンドロール歌プロセス");
	
		CreateColor("色", $LayerCount9, 0, 0, 1024, 576, BLACK);
		SetAlias("色", "色");
		Fade("色", 0, 0, null, true);
	
		$EndingSkip=false;
		Request("エンドロールプロセス", Start);
		Wait(5000);
		if($待機){WaitAction("エンドロールプロセス", null);}
	
		$SYSTEM_keydown_enter=false;
		$SYSTEM_l_button_down=false;
		select{
			if($SYSTEM_l_button_down||$SYSTEM_keydown_enter){
				break;
			}
		}
		$SYSTEM_l_button_down=false;
		$SYSTEM_keydown_enter=false;
	
		$EndingSkip=true;

		Request($BGM名, EntrustSuspend);
		SetVolume($BGM名, 6000, 0, NULL);

		if($EndName[$ENDNumber][8]!=false){
			Request($BGM名2, EntrustSuspend);
			SetVolume($BGM名2, 6000, 0, NULL);
		}
	}else{
		//ムービー
		CreateColor("色", $LayerCount9, 0, 0, 1024, 576, BLACK);
		SetAlias("色", "色");
		Fade("色", 0, 0, null, true);

		CreateMovie("ENDMovie",$LayerCount1,0,0,false,false,"dx/mv_axl_ED.ngs",500);
		SetAlias("ENDMovie", "ENDMovie");

		if(#LOCAL_break_play_movie&&!$待機){
			//Message("デバッグ用ウィンドウ１","デバッグ用です",YESNOCANCE,EXCLAMATION);
			CreateProcess("エンドロールプロセスムービー", 150, 0, 0, "EndMovie");
			SetAlias("エンドロールプロセスムービー", "エンドロールプロセスムービー");
			Request("エンドロールプロセスムービー", Start);
		}
		WaitPlay("ENDMovie", null);

		Request("エンドロールプロセスムービー", Stop);
		WaitAction("エンドロールプロセスムービー", null);
		Delete("エンドロールプロセスムービー");

		$SYSTEM_l_button_down=false;
		$SYSTEM_keydown_enter=false;
	}

	Wait(2000);
	Fade("@色", 2000, 1000, null, true);

	Request("エンドロールプロセス", Stop);

	Fade("@エンドロール*",0,0,null,true);
	Delete("@エンドロール*");
	Delete("@END*");
	Fade("@色", 0, 0, null, true);

	Delete("@色");

	Wait(2000);

	if($EndName[$ENDNumber]!="悪鬼編"){
		//$SYSTEM_menu_lock = false;
	}

	#SYSTEM_play_speed = #play_speed_plus;
	$SYSTEM_text_waitkey = true;

	$ClearL=true;
	#ClearG=true;

	$PLACE_end=false;
	$PreSetRoll=false;
}

function EndMovie()
{
	$SYSTEM_keydown_enter=false;
	$SYSTEM_l_button_down=false;

	while(1){
		if($SYSTEM_l_button_down||$SYSTEM_keydown_enter){
				Fade("@色", 2000, 1000, null, true);
				Delete("@ENDMovie");
		}
		Wait(100);
	}
}

//=============================================================================//
..//●ロール方式プロセス
//=============================================================================//

//――――――――――――――――――――――――――――――――――――
...//古典的フェードスクリプト
function TextureRoll01()
{
	if($EndName[$ENDNumber][9]){
		$ENDWhile=0;
		while(Count($EndName[$ENDNumber][0])>$ENDWhile){
			$nut=String("ENDTexture%02d",$ENDWhile);
			$img=$EndName[$ENDNumber][0][$ENDWhile];
	
			if($img=="WHITE"||$img=="BLACK"){
				CreateColor($nut, $LayerCount2, 0, 0, 1024, 576, $img);
			}else{
				$img="cg/sys/ed/thum/"+$img;

				if($EndName[$ENDNumber]=="悪鬼編"){
					if(Strstr($img, "logo")){
						CreateTexture($nut, $LayerCount9, 0, 0, $img);
					}else{
						CreateTexture($nut, $LayerCount2, 25, 120, $img);
					}
				}else{
					CreateTexture($nut, $LayerCount2, 0, 0, $img);
				}
			}
			SetAlias($nut, $nut);
			Fade($nut, 0, 0, null, true);
			$ENDWhile++;
		}
	}

	if($EndName[$ENDNumber][7]!="F"){
		if($EndName[$ENDNumber][7]=="V"){
			$EndStartPoint=576;
		}else if($EndName[$ENDNumber][7]=="H"){
			$EndStartPoint=0;
		}

		$ENDWhile=0;
		while($EndName[$ENDNumber][6]>$ENDWhile){
			$nut=String("ENDRoll%02d",$ENDWhile);
			$img="cg/sys/ed/"+$EndName[$ENDNumber][6][$ENDWhile]+".png";

			if($EndName[$ENDNumber][7]=="V"){
				CreateTexture($nut, $LayerCount1, Center, 0, $img);
				SetAlias($nut, $nut);

				$EndStartPoint=$EndStartPoint+$EndName[$ENDNumber][7][$ENDWhile];
				$RollV=$EndStartPoint;
				Move($nut, 0, 0, $RollV, null, true);
				$EndStartPoint+=ImageVertical($nut);
				$EndStart=$EndStartPoint;
			}else if($EndName[$ENDNumber][7]=="H"){
				CreateTexture($nut, $LayerCount1, 0, Middle, $img);
				SetAlias($nut, $nut);

				$EndStartPoint+=ImageHorizon($nut);
				$EndStartPoint=$EndStartPoint+$EndName[$ENDNumber][7][$ENDWhile];
				$RollH = -$EndStartPoint;
				Move($nut, 0, $RollH, 0, null, true);
				$EndStart=$EndStartPoint;
			}

			$ENDWhile++;
		}
	}
}

function ProcessRoll01()
{
	if($EndName[$ENDNumber][7]=="V"){
		$EndMoveA=$EndStart;
		$EndMoveX=0;
		$EndMoveY=-($EndMoveA+$LengthAdjust);
	}else if($EndName[$ENDNumber][7]=="H"){
		$EndMoveA=$EndStart;
		$EndMoveX=$EndMoveA+$LengthAdjust;
		$EndMoveY=0;
	}

	SetLoop($BGM名, false);
	Request($BGM名, CompulsorySuspend);

	$時間=RemainTime($BGM名);
	$時間=$時間+$TimeAdjust;
	if($時間<$LoopAdjust){
		$EndExtension=true;
		$秒数=DurationTime($BGM名);
		$時間+=$秒数;
		Request("@エンドロール歌プロセス", Start);
	}

	if($EndName[$ENDNumber][8]!=false){
		$時間+=DurationTime($BGM名2);
		Request("@エンドロール歌プロセス", Start);
	}

//	WaitKey();

	if($EndName[$ENDNumber][7]!="F"){
		Move("@ENDRoll*",$時間,@$EndMoveX,@$EndMoveY,null,false);
	}

//	WaitKey();

	$nut="何か";

	if($EndName[$ENDNumber][9]){
		$EndOneTime=$時間/$EndBunbo;
		$ENDWhile2=0;
		$ENDWhile=0;
		while(Count($EndName[$ENDNumber][0])>$ENDWhile){
			$Time=$EndName[$ENDNumber][1][$ENDWhile2]*$EndOneTime;
			Fade($nut, $Time, 0, null, false);

			$ENDWhile2++;
			$Time=$EndName[$ENDNumber][1][$ENDWhile2]*$EndOneTime;
			Wait($Time);
	
			$ENDWhile2++;
			$Time=$EndName[$ENDNumber][1][$ENDWhile2]*$EndOneTime;
			$nut=String("@ENDTexture%02d",$ENDWhile);
			Fade($nut, $Time, 1000, null, false);

			$ENDWhile2++;
			$Time=$EndName[$ENDNumber][1][$ENDWhile2]*$EndOneTime;
			Wait($Time);

			$ENDWhile2++;
			$ENDWhile++;
		}
	}

	WaitAction("@ENDRoll*", null);
}

//――――――――――――――――――――――――――――――――――――
...//古典的ロールスクリプト
function TextureRoll00()
{
	CreateTexture("ENDRoll", $LayerCount1, 0, 600, $ENDImage);
	SetAlias("ENDRoll", "ENDRoll");
}
function ProcessRoll00()
{
	$EndMoveA=ImageVertical("@ENDRoll");
	$EndMoveA+=$LengthAdjust;
	$EndMoveB=-($EndMoveA);

	SetLoop($BGM名, false);
	Request($BGM名, CompulsorySuspend);

	$時間=RemainTime($BGM名);
	$時間+=$TimeAdjust;
	if($時間<$LoopAdjust){
		$EndExtension=true;
		$秒数=DurationTime($BGM名);
		$時間+=$秒数;
		Request("@エンドロール歌プロセス", Start);
	}
	Move("@ENDRoll",$時間,@0,@$EndMoveB,null,true);
}

//――――――――――――――――――――――――――――――――――――
...//古典的ロールスクリプト：横
function TextureRoll01H()
{
	CreateTexture("ENDRoll", $LayerCount1, 0, 0, $ENDImage);
	SetAlias("ENDRoll", "ENDRoll");

	$RollH=ImageHorizon("ENDRoll");
	$RollH=-$RollH;
	Move("ENDRoll", 0, $RollH, 0, null, true);
}
function ProcessRoll01H()
{
	$EndMoveA=ImageHorizon("@ENDRoll");
	$EndMoveA+=$LengthAdjust;

	SetLoop($BGM名, false);
	Request($BGM名, CompulsorySuspend);

	$時間=RemainTime($BGM名);
	$時間+=$TimeAdjust;
	if($時間<$LoopAdjust){
		$EndExtension=true;
		$秒数=DurationTime($BGM名);
		$時間+=$秒数;
		Request("@エンドロール歌プロセス", Start);
	}
	Move("@ENDRoll",$時間,@$EndMoveA,@0,null,true);
}

//――――――――――――――――――――――――――――――――――――
//エンドスクリプト用の音継続プロセス
//――――――――――――――――――――――――――――――――――――
function EndSong()
{
	if($EndExtension){
		$EndTime=RemainTime($BGM名);
		Wait($EndTime);
	
		SetVolume($BGM名, 1000, 0, NULL);
		WaitAction($BGM名, null);
	
		SetFrequency($BGM名, 0, 1000, NULL);
		SetVolume($BGM名, 0, 500, null);
		SetLoop($BGM名, false);
		Request($BGM名, Play);
	}

	if($EndName[$ENDNumber][8]!=false){
		WaitPlay($BGM名, null);
	
		if(!$EndingSkip){
			Request($BGM名2, CompulsorySuspend);
	
			SetFrequency($BGM名2, 0, 1000, NULL);
			SetVolume($BGM名2, 0, 500, null);
			SetLoop($BGM名2, false);
			Request($BGM名2, Play);
	
			WaitPlay($BGM名2, null);
		}
	}
}
//――――――――――――――――――――――――――――――――――――

//=============================================================================//
..//★ロール準備（最後にロックする場合）
//=============================================================================//
function PreSetRoll($ENDNumber)
{
	//■右バー停止
	QuickStop();

	//▼連想配列
	ArrayEND();
	$ENDBGM=$EndName[$ENDNumber][1];
	SetVolume("@m*", 2000, 0, NULL);
	SoundPlay($ENDBGM,0,1000,true);

	$PLACE_end=true;

	#play_speed_plus = #SYSTEM_play_speed;
	#SYSTEM_play_speed = 3;

	$SYSTEM_text_auto = false;
	$SYSTEM_skip=false;
	#SYSTEM_skip_express=false;

	$SYSTEM_menu_lock = true;

	Request($ENDBGM, CompulsorySuspend);

	$SYSTEM_text_interval = 128;
	$SYSTEM_text_waitkey = false;

	$PreSetRoll=true;
}


function PreSetRoll02A()
{
	//■右バー停止
	QuickStop();

	//▼連想配列
	ArrayEND();

	$PLACE_end=true;

	#play_speed_plus = #SYSTEM_play_speed;
	#SYSTEM_play_speed = 3;

	$SYSTEM_text_auto = false;
	$SYSTEM_skip=false;
	#SYSTEM_skip_express=false;

	$SYSTEM_menu_lock = true;

	$SYSTEM_text_interval = 128;
	$SYSTEM_text_waitkey = false;

	$PreSetRoll=true;
}
function PreSetRoll02B($ENDNumber)
{
	$ENDBGM=$EndName[$ENDNumber][1];
	SetVolume("@m*", 2000, 0, NULL);
	SoundPlay($ENDBGM,0,1000,true);
	Request($ENDBGM, CompulsorySuspend);
}

//=============================================================================//
..//★ロール準備（途中からクリックロックする場合）
//=============================================================================//
function PreTextRoll($ENDNumber)
{
	//■右バー停止
	QuickStop();

	//▼連想配列
	ArrayEND();
	$ENDBGM=$EndName[$ENDNumber][1];
	SetVolume("@m*", 5000, 0, NULL);
	SoundPlay($ENDBGM,0,1000,true);

	$PLACE_end=true;

	#SYSTEM_skip_express=false;
	$SYSTEM_text_auto=false;
	$SYSTEM_skip=false;

	$SYSTEM_text_auto_lock=true;

	Request($ENDBGM, CompulsorySuspend);
	$SYSTEM_text_auto_lock = true;

	$SYSTEM_text_interval = 128;
	$SYSTEM_text_waitkey = false;
}

function PlayVOICE_ED($VoiceClassNut,$音楽データ,$VoiceWaitPlus1,$VoiceWaitPlus2)
{
//<voice name="デネブ" class="デネブ" src="voice/st20/0600220de" mode="off">

	$クラス名=$VoiceClassNut;

	$VoiceGet=false;
	$VoiceWhile=0;
	while(#VoiceSetCount>$VoiceWhile){
		if(#VoiceName[$VoiceWhile]==$クラス名){
			//$VoiceGet=true;
		}
		if(VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceWhile]+"[0]")==$クラス名){
			$VoiceGet=true;
		}
		$VoiceWhile++;
	}

	if(($VoiceGet&&VariableValue(#,"voice_on_"+$クラス名))||(!$VoiceGet&&#SYSTEM_voice_enable_another)){}

	if(($VoiceGet&&VariableValue(#,"ConfigCV_"+$クラス名+"[1]")==false)||(!$VoiceGet&&#SYSTEM_voice_enable_another)){
		$場所指定 = "voice/" + $音楽データ;

		CreateSound($VoiceClassNut, VOICE, $場所指定);
		SetAlias($VoiceClassNut, $VoiceClassNut);

		SetLoop($VoiceClassNut, false);
		SetVolume($VoiceClassNut, 0, 1000, null);
		Request($VoiceClassNut, Play);
		Request($VoiceClassNut, Disused);

		$VoiceWaitPlus=$VoiceWaitPlus1;
	}else{
		$VoiceWaitPlus=$VoiceWaitPlus2;
	}
}
function StopVOICEED()
{
	$待ち時間=RemainTime($VoiceClassNut);
	$待ち時間+=$VoiceWaitPlus;
	Wait($待ち時間);
	Delete($VoiceClassNut);
}

/*
	PlayVOICE_ED("デネブ","voice/st20/0600220de",1000,3000);
//――――――――――――――――――――――――――――――――――――――
<PRE @box00>
[text0010028]
//【デネブ】
<voice name="デネブ" class="デネブ" src="voice/st20/0600220de" mode="off">
「見られちゃった――」
{StopVOICEED();}
</PRE>
	SetText();
	TypeBegin();//―――――――――――――――――――――――――――――
=
*/



//■音関係のマクロコマンド
//=============================================================================//
.//音関係
//=============================================================================//

// 定義
function CreateBGM($ＢＧＭナット,$音楽データ)
{
	BGMbase();
}
function CreateBGMEX($ＢＧＭナット,$音楽データ,開始ミリ秒,終了ミリ秒)
{
	BGMbase();
	SetLoopPoint($ＢＧＭナット,開始ミリ秒,終了ミリ秒);
}
function BGMbase()
{
	$場所指定 = "sound/bgm/" + $音楽データ;
	CreateSound($ＢＧＭナット, BGM, $場所指定);
	SetVolume($ＢＧＭナット, 0, 0, NULL);
	SetAlias($ＢＧＭナット, $ＢＧＭナット);
}




function CreateBGM_ef($ＢＧＭナット１,$音楽データ)
{
	BGMbase_ef();
}
function CreateBGMEX_ef($ＢＧＭナット１,$音楽データ,開始ミリ秒,終了ミリ秒)
{
	BGMbase_ef();
	SetLoopPoint($ＢＧＭナット１,開始ミリ秒,終了ミリ秒);
	SetLoopPoint($ＢＧＭナット２,開始ミリ秒,終了ミリ秒);
}
function BGMbase_ef()
{
	$場所指定 = "sound/bgm/" + $音楽データ;
	CreateSound($ＢＧＭナット１, BGM, $場所指定);
	SetVolume($ＢＧＭナット１, 0, 0, NULL);
	SetAlias($ＢＧＭナット１, $ＢＧＭナット１);
	Request($ＢＧＭナット１, Lock);

	$ＢＧＭナット２=$ＢＧＭナット１+"_ef";
	CreateSound($ＢＧＭナット２, BGM, $場所指定);
	SetVolume($ＢＧＭナット２, 0, 0, NULL);
	SetAlias($ＢＧＭナット２, $ＢＧＭナット２);
	Request($ＢＧＭナット２, Lock);

	//SoundEffect("ナット名","Chorus",ドライ0～ウェット100,うねり0~100,フィードバック-99~99,ディレイタイム0~20);
	//SoundEffect($ＢＧＭナット２,"Chorus",50,50,-90,10);
	//SoundEffect($ＢＧＭナット２,"Chorus",50,50,-90,10);

	//SoundEffect("ナット名","Echo",ドライ0～ウェット100,フィードバック0~100,左チャンネルディレイ（1~2000ミリ秒）,右チャンネルディレイ（1~2000ミリ秒）);
	//SoundEffect($ＢＧＭナット２,"Echo",60,70,230,230);
	SoundEffect($ＢＧＭナット２,"Echo",60,70,170,170);
}


function CreateBGMPX("ナット名",$音楽データ)
{
	$場所指定 = $音楽データ;
	CreateSound("ナット名", BGM, $場所指定);
	SetVolume("ナット名", 0, 0, NULL);
	SetAlias("ナット名", "ナット名");
}

function CreateBGMSE("ナット名",$音楽データ)
{
	$場所指定 = "sound/bgm/" + $音楽データ;
	CreateSound("ナット名", SE, $場所指定);
	SetVolume("ナット名", 0, 0, NULL);
	SetAlias("ナット名", "ナット名");
}






..OnSE
function OnSE($音楽データ,$ＳＥ音量)
{
	if($SeName==""||$SeName=="OnSE10"){$SeName="OnSE01";}
	else if($SeName=="OnSE01"){$SeName="OnSE02";}
	else if($SeName=="OnSE02"){$SeName="OnSE03";}
	else if($SeName=="OnSE03"){$SeName="OnSE04";}
	else if($SeName=="OnSE04"){$SeName="OnSE05";}
	else if($SeName=="OnSE05"){$SeName="OnSE06";}
	else if($SeName=="OnSE06"){$SeName="OnSE07";}
	else if($SeName=="OnSE07"){$SeName="OnSE08";}
	else if($SeName=="OnSE08"){$SeName="OnSE09";}
	else if($SeName=="OnSE09"){$SeName="OnSE10";}

	if($SeName01==""){$SeName01=$SeName;}
	else if($SeName02==""){$SeName02=$SeName;}
	else if($SeName03==""){$SeName03=$SeName;}
	else if($SeName04==""){$SeName04=$SeName;}
	else if($SeName05==""){$SeName05=$SeName;}
	else if($SeName06==""){$SeName06=$SeName;}
	else if($SeName07==""){$SeName07=$SeName;}
	else if($SeName08==""){$SeName08=$SeName;}
	else if($SeName09==""){$SeName09=$SeName;}
	else if($SeName10==""){$SeName10=$SeName;}

	$ナット名 = $SeName;

	$場所指定 = "sound/se/" + $音楽データ;

	CreateSound($ナット名, SE, $場所指定);
	SetVolume($ナット名, 0, 0, NULL);
	SetAlias($ナット名, $ナット名);

	Request($ナット名, "Play");

	SetFrequency($ナット名, 0, 1000, NULL);
	SetPan($ナット名, 0, 0, NULL);
	SetLoop($ナット名, false);

	SetVolumeEX($ナット名, 0, $ＳＥ音量, null);
	Request($ナット名, Disused);

}

..CreateSE
function CreateSE("ナット名",$音楽データ)
{
	$場所指定 = "sound/se/" + $音楽データ;

	CreateSound("ナット名", SE, $場所指定);
	SetVolume("ナット名", 0, 0, NULL);
	SetAlias("ナット名", "ナット名");
}

..CreateSEEX
function CreateSEEX("ナット名",$音楽データ)
{
	$場所指定 = "sound/se/" + "$音楽データ";

	if($音楽データ=="se戦闘_攻撃_エネルギー鬩ぎ合い01_L"){
		$開始ミリ秒=5833;
		$終了ミリ秒=17267;
	}else if($音楽データ=="se戦闘_攻撃_鎧_剣戟05_L"){
		$開始ミリ秒=4618;
		$終了ミリ秒=22538;
	}else if($音楽データ=="se特殊_陰義_レールガン穿_準備"){
		$開始ミリ秒=1536;
		$終了ミリ秒=9301;
	}else if($音楽データ=="se戦闘_荒覇吐_攻撃02_L"){
		$開始ミリ秒=5325;
		$終了ミリ秒=8294;
	}else if($音楽データ=="se乗物_飛行船_離陸開始_L"){
		$開始ミリ秒=15871;
		$終了ミリ秒=18810;
	}else if($音楽データ=="se戦闘_攻撃_魔法攻撃_弾く01"){
		$開始ミリ秒=7146;
		$終了ミリ秒=23621;
	}

	CreateSound("ナット名", SE, "$場所指定");
	SetVolume("ナット名", 0, 0, NULL);
	SetAlias("ナット名", "ナット名");
	SetLoopPoint("ナット名",$開始ミリ秒,$終了ミリ秒);
}

..CreateVOICE
function CreateVOICE($ナット名,$音楽データ)
{
	$クラス名=$ナット名;

	$VoiceGetN=0;
	$VoiceGet=false;
	$VoiceWhile=0;
	while(#VoiceSetCount>$VoiceWhile){
		if(VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceWhile]+"[0]")==$クラス名){
			$VoiceGetN=$VoiceWhile;
			$VoiceGet=true;
		}
		$VoiceWhile++;
	}

	if(($VoiceGet&&VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceGetN]+"[1]")==false)||(!$VoiceGet&&#SYSTEM_voice_enable_another)){
		$場所指定 = "voice/" + $音楽データ;

		CreateSound($ナット名, VOICE, $場所指定);
		SetVolume($ナット名, 0, 0, NULL);
		SetAlias($ナット名, $ナット名);
	}
}

..CreateVOICEEX
function CreateVOICEEX($ナット名,$音楽データ,$クラス名)
{
	$VoiceGetN=0;
	$VoiceGet=false;
	$VoiceWhile=0;
	while(#VoiceSetCount>$VoiceWhile){
		if(VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceWhile]+"[0]")==$クラス名){
			$VoiceGetN=$VoiceWhile;
			$VoiceGet=true;
		}
		$VoiceWhile++;
	}


	if(($VoiceGet&&VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceGetN]+"[1]")==false)||(!$VoiceGet&&#SYSTEM_voice_enable_another)){
		$場所指定 = "voice/" + $音楽データ;

		CreateSound($ナット名, VOICE, $場所指定);
		SetVolume($ナット名, 0, 0, NULL);
		SetAlias($ナット名, $ナット名);
	}
}


// 再生
..SoundPlay
function SoundPlay($SoundPlayName,秒数,$ボリウム,ループ設定)
{
	if(PassageTime($SoundPlayName)<1){
		SetVolume($SoundPlayName, 0, 1, null);
	}

	//エフェクト仕様
	$bgmmoji=Strstr($SoundPlayName, "x");
	if($bgmmoji==1||$bgmmoji==2){
		$SoundPlayName2=$SoundPlayName+"_ef";
		Request($SoundPlayName2, Stop);
		SetLoop($SoundPlayName2, ループ設定);
		SetVolume($SoundPlayName2, 0, 1, null);
		Request($SoundPlayName2, Play);
	}

	Request($SoundPlayName, Play);

	SetFrequency($SoundPlayName, 0, 1000, null);
//	SetPan($SoundPlayName, 0, 0, NULL);
	SetLoop($SoundPlayName, ループ設定);

	SetVolumeEX($SoundPlayName, 秒数, $ボリウム, null);

	Request($SoundPlayName, Disused);
}



..MusicStart
function MusicStart($MusicStartName,秒数,$ボリウム,再生方向,再生スピード,テンポ,ループ設定)
{
	//エフェクト仕様
	$bgmmoji=Strstr($MusicStartName, "x");
	if($bgmmoji==1||$bgmmoji==2){
		$MusicStartName2=$MusicStartName+"_ef";
		Request($MusicStartName2, Stop);
		SetLoop($MusicStartName2, ループ設定);
		SetVolume($MusicStartName2, 0, 1, null);
		Request($MusicStartName2, Play);
	}

	Request($MusicStartName, Play);

	SetFrequency($MusicStartName, 0, 再生スピード, NULL);
	SetPan($MusicStartName, 0, 再生方向, NULL);
	SetLoop($MusicStartName, ループ設定);

	SetVolumeEX($MusicStartName, 秒数, $ボリウム, テンポ);

	Request($MusicStartName, Disused);
}

..SetVolumeEX
function SetVolumeEX("ナット", 秒数, $ボリウム, テンポ)
{
	$DynamicRange=$ボリウム/2;
	if($ボリウム==1){
		$DynamicRange=1;
	}
	SetVolume("ナット", 秒数, $DynamicRange, テンポ);
}

function SoundLoopEnd($ナット名)
{
	SetLoop($ナット名, false);
	SetLoopPoint($ナット名,0,999999);
}

..SetVolumeEF
function SetVolumeEF($SetVolumeName,$ボリウム)
{
	$DynamicRange=$ボリウム/2;
	if($ボリウム==1){
		$DynamicRange=1;
	}

	$SetVolumeName2=$SetVolumeName+"_ef";
	SetVolume($SetVolumeName, 0, 0, null);
	SetVolume($SetVolumeName2, 0, $DynamicRange, null);
	Request($SetVolumeName2, Pause);
}




//■BGMを纏めて定義
//=============================================================================//
.//BGM定義
//=============================================================================//

function InitBGM()
{

//定義
	CreateBGM("EndBGM01","xbgm14");
	Request("EndBGM01", Lock);
	CreateBGM("EndBGM02","xbgm01");
	Request("EndBGM02", Lock);


	CreateBGMEX_ef("xbgm01","xbgm01",5538,42461);
	CreateBGM_ef("xbgm01_noint","xbgm01_noint");
	CreateBGMEX_ef("xbgm02","xbgm02",105000,190000);
	CreateBGMEX_ef("xbgm03","xbgm03",57000,111000);//ループ時になんか間がある11/17
	CreateBGMEX_ef("xbgm04","xbgm04",0,120000);
	CreateBGMEX_ef("xbgm05","xbgm05",0,115973);
	CreateBGMEX_ef("xbgm06","xbgm06",46451,170322);

	CreateBGMEX_ef("xbgm07","xbgm07",15000,111666);
	CreateBGMEX_ef("xbgm07_noint","xbgm07_noint",8333,105000);

	CreateBGMEX_ef("xbgm08","xbgm08",9642,56785);
	CreateBGMEX_ef("xbgm08_noint","xbgm08_noint",0,38571);
	CreateBGM_ef("xbgm08_onlyint","xbgm08_onlyint");

	CreateBGMEX_ef("xbgm09","xbgm09",62400,122400);
	CreateBGMEX_ef("xbgm09_noint","xbgm09_noint",38400,98400);

	CreateBGMEX_ef("xbgm10","xbgm10",0,45882);
	CreateBGMEX_ef("xbgm11","xbgm11",2285,93714);
	CreateBGMEX_ef("xbgm12","xbgm12",4800,81600);
	CreateBGMEX_ef("xbgm13","xbgm13",10000,78000);

	CreateBGMEX_ef("xbgm14","xbgm14",42666,85333);
	CreateBGMEX_ef("xbgm14_vo","xbgm14_vo",42666,85333);
	CreateBGMEX_ef("xbgm14_inst","xbgm14_inst",42666,85333);
	CreateBGMEX_ef("xbgm14_onlyvo","xbgm14_onlyvo",0,34666);
	CreateBGM_ef("xbgm14_pia","xbgm14_pia");

	CreateBGMEX_ef("xbgm15","xbgm15",0,134000);

	CreateBGMEX_ef("xbgm16","xbgm16",7316,94589);
	CreateBGMEX_ef("xbgm16_noint","xbgm16_noint",44,87316);

	CreateBGMEX_ef("xbgm17","xbgm17",80547,159452);
	CreateBGMEX_ef("xbgm18","xbgm18",0,108981);

	CreateBGMEX_ef("xbgm19","xbgm19", 12307,73846);

	CreateBGMEX_ef("xbgm20","xbgm20", 5581,89302);
	CreateBGMEX_ef("xbgm20_noeff","xbgm20_noeff", 5581,89302);

	CreateBGMEX_ef("xbgm21","xbgm21", 0, 46432);

	CreateBGMEX_ef("xbgm22","xbgm22", 0, 65684);
	CreateBGMEX_ef("xbgm22_onint","xbgm22_onint", 15157, 80842);

	CreateBGMEX_ef("xbgm23","xbgm23", 77538, 140307);
	CreateBGMEX_ef("xbgm24","xbgm24", 2000, 64000);
	CreateBGMEX_ef("xbgm25","xbgm25", 0, 79452);
	CreateBGMEX_ef("xbgm26","xbgm26", 0, 52602);
	CreateBGMEX_ef("xbgm27","xbgm27", 16695, 66782);
	CreateBGMEX_ef("xbgm28","xbgm28", 0, 87500);
	CreateBGMEX_ef("xbgm29","xbgm29", 0, 86400);
	CreateBGMEX_ef("xbgm30","xbgm30", 12834, 112941);
	CreateBGMEX_ef("xbgm31","xbgm31", 51000, 111000);
	CreateBGMEX_ef("xbgm32","xbgm32", 5263, 97894);
	CreateBGMEX_ef("xbgm33","xbgm33", 62222, 133333);

	CreateBGMEX_ef("xbgm91","xbgm91",14003,45999););

	CreateBGM_ef("xsongop","xsongop");
	CreateBGM_ef("xsongop_short","xsongop_short");

	CreateBGM_ef("xsonged","xsonged");
	CreateBGM_ef("xsonged_short","xsonged_short");

	CreateBGM_ef("xsong01","xsong01");//QUBE挿入曲(バックギャモン店内曲)
	CreateBGM_ef("xsong01_noeff","xsong01_noeff");//音質クリア版
	CreateBGM_ef("xsong01_noeff_short","xsong01_noeff_short");//ショート版

	CreateBGM_ef("xsong02","xsong02");//第一宇宙速度楽曲年末
	CreateBGM_ef("xsong02_short","xsong02_short");//ショート音源
	CreateBGM_ef("xsong02_oke","xsong02_oke");//オケ版
	CreateBGM_ef("xsong02_live","xsong02_live");//ライブ版
	CreateBGM_ef("xsong02_inst","xsong02_inst");//インスト版

	CreateBGM_ef("xsong03","xsong03");//第一宇宙速度楽曲年始
	CreateBGM_ef("xsong03_short","xsong03_short");//ショート音源
//	CreateBGM_ef("xsong03_oke","xsong03_oke");//オケ版
	CreateBGM_ef("xsong03_inst","xsong03_inst");//インスト版
}




function VoiceOn(){

	#一章クリア=true;
	#voice_on_湊斗景明=true;
	#voice_on_村正=true;
	#voice_on_新田雄飛=true;
	#voice_on_来栖野小夏=true;
	#voice_on_稲城忠保=true;
	#voice_on_鈴川令法=true;
	#voice_on_大鳥香奈枝=true;
	#voice_on_永倉さよ=true;
	#voice_on_綾弥一条=true;
	#voice_on_雪車町一蔵=true;
	#voice_on_真改=true;
	#voice_on_長坂右京=true;
	#voice_on_小太郎=true;
	#voice_on_弥源太=true;
	#voice_on_ふき=true;
	#voice_on_ふな=true;
	#voice_on_足利護氏=true;
	#voice_on_大鳥獅子吼=true;
	#voice_on_遊佐童心=true;
	#voice_on_今川雷蝶=true;
	#voice_on_足利茶々丸=true;
	#voice_on_署長=true;
	#voice_on_キャノン=true;
	#voice_on_ガーゲット=true;
	#voice_on_舞殿宮=true;
	#voice_on_皇路操=true;
	#voice_on_皇路卓=true;
	#voice_on_二世村正=true;
	#voice_on_柳生常闇斎=true;
	#voice_on_芳養=true;
	#voice_on_研究所長=true;
	#voice_on_義清=true;
	#voice_on_青江=true;
	#voice_on_皆斗本家=true;
	#voice_on_湊斗統=true;
	#voice_on_山賊の首領=true;
	#voice_on_首領の弟=true;
	#voice_on_正宗=true;
	#voice_on_岡部桜子=true;
	#voice_on_足利邦氏=true;
	#voice_on_ウィロー=true;
	#voice_on_黒瀬童子=true;
	#voice_on_コブデン=true;
	#voice_on_ウォルフ=true;
	#voice_on_永倉翁=true;
	#voice_on_大鳥花枝=true;
	#voice_on_始祖村正=true;
	#voice_on_飽間=true;
	#voice_on_浦夢=true;
	#voice_on_サシュアント=true;
	#voice_on_オーリガ=true;
	#voice_on_孤児の光=true;
	#voice_on_銀星号=true;
	#voice_on_その他男声=true;
	#voice_on_その他女声=true;

}





//■ラテ欄遷移画面定義
//=============================================================================//
.//ラテ欄遷移画面定義
//=============================================================================//
//画像を取得します（使用後は必ず消去してください）
function TakeRateImg()
{
	Fade("@Oclock*", 0, 0, null, true);
	Fade("@Oclock*/*", 0, 0, null, true);
	Fade("@text*", 0, 0, null, true);

	QuickStop();

	WriteImage(String("%s/%s.img",#SYSTEM_save_path,Substr($GameName,0,Strstr($GameName,".nss")-1)));
	WaitKey();
}

//「FadeDelete」「DrawDelete」等の箇所で自動的に画像を取得します
function TakeRatePicAuto()
{
	if($RateTakenModeAuto){
		Fade("@Oclock*", 0, 0, null, true);
		Fade("@Oclock*/*", 0, 0, null, true);
		Fade("@text*", 0, 0, null, true);

		QuickStop();

		WriteImage(String("%s/%s.img",#SYSTEM_save_path,$FolderName));

		SetVolume("@*", 100, 0, NULL);
		Delete("*");
		Delete("@*");

		Escape(4);
	}
}

//任意の場所で自動的に画像を取得します
function TakeRatePic()
{
	if($RateTakenMode){
		Fade("@Oclock*", 0, 0, null, true);
		Fade("@Oclock*/*", 0, 0, null, true);
		Fade("@text*", 0, 0, null, true);

		QuickStop();

		WriteImage(String("%s/%s.img",#SYSTEM_save_path,$FolderName));

		SetVolume("@*", 100, 0, NULL);
		Delete("*");
		Delete("@*");

		Escape(3);
	}
}

//RateTakenModeで遷移中、何も無くテキストまでたどり着いた場合
function TakeRateBack()
{
	if($RateTakenMode){
		SetVolume("@*", 100, 0, NULL);
		Delete("*");
		Delete("@*");
		Escape(4);
	}
}

//表示用
function FadeRateImg($FolderNameIn)
{
	$FadeRateStr=Strstr($FolderNameIn,".nss");

	if($FadeRateStr){
		$FadeRateText=Substr($FolderNameIn,0,$FadeRateStr-1);
	}else{
		$FadeRateText=$FolderNameIn
	}

	$RateCountmg=String("%s/%s.img","cg/sys/rate/thum",$FadeRateText);
	CreateTexture("@RateWindow/thum",30000,0,0,$RateCountmg);
}







//開始スクリプト先頭で次の行き先を強制変更
function GameRate()
{
	#SYSTEM_save_thumbnail_width=1024;
	#SYSTEM_save_thumbnail_height=576;

	if($KagomeTex==329){
		$SYSTEM_text_auto=false;
		$SYSTEM_skip=false;
		WaitKey();
	}else{
		$SYSTEM_text_auto_lock=false;
		$SYSTEM_skip_lock=false;
		$SYSTEM_text_auto=false;
		#SYSTEM_skip_absolute = true;
		$SYSTEM_skip=true;
	}

	$KagomeTex++;
	TakeRateFolder();

	$GameName=$FolderName+".nss";
}



function TakeRateFolder()
{
	if($KagomeTex==1){$FolderName="1800ノーコ";}
	else if($KagomeTex==2){$FolderName="1800フウリ";}
	else if($KagomeTex==3){$FolderName="1800恵那";}
	else if($KagomeTex==4){$FolderName="1800沙紅羅";}
	else if($KagomeTex==5){$FolderName="1800似鳥";}
	else if($KagomeTex==6){$FolderName="1800千秋";}
	else if($KagomeTex==7){$FolderName="1810ノーコ_フウリ";}
	else if($KagomeTex==8){$FolderName="1810沙紅羅";}
	else if($KagomeTex==9){$FolderName="1810似鳥";}
	else if($KagomeTex==10){$FolderName="1820ノーコ";}
	else if($KagomeTex==11){$FolderName="1820フウリ";}
	else if($KagomeTex==12){$FolderName="1820恵那";}
	else if($KagomeTex==13){$FolderName="1820千秋";}
	else if($KagomeTex==14){$FolderName="1830フウリ";}
	else if($KagomeTex==15){$FolderName="1830恵那";}
	else if($KagomeTex==16){$FolderName="1830似鳥_ノーコ";}
	else if($KagomeTex==17){$FolderName="1830千秋";}
	else if($KagomeTex==18){$FolderName="1840沙紅羅";}
	else if($KagomeTex==19){$FolderName="1840似鳥_ノーコ_h";}
	else if($KagomeTex==20){$FolderName="1850恵那";}
	else if($KagomeTex==21){$FolderName="1850沙紅羅";}
	else if($KagomeTex==22){$FolderName="1850千秋_フウリ";}
	else if($KagomeTex==23){$FolderName="1900ノーコ";}
	else if($KagomeTex==24){$FolderName="1900フウリ";}
	else if($KagomeTex==25){$FolderName="1900恵那";}
	else if($KagomeTex==26){$FolderName="1900沙紅羅";}
	else if($KagomeTex==27){$FolderName="1900似鳥";}
	else if($KagomeTex==28){$FolderName="1900千秋";}
	else if($KagomeTex==29){$FolderName="1910ノーコ_フウリ";}
	else if($KagomeTex==30){$FolderName="1910恵那";}
	else if($KagomeTex==31){$FolderName="1910沙紅羅_千秋";}
	else if($KagomeTex==32){$FolderName="1920恵那";}
	else if($KagomeTex==33){$FolderName="1920沙紅羅_千秋";}
	else if($KagomeTex==34){$FolderName="1920似鳥_ノーコ_フウリ";}
	else if($KagomeTex==35){$FolderName="1930ノーコ";}
	else if($KagomeTex==36){$FolderName="1930フウリ";}
	else if($KagomeTex==37){$FolderName="1930恵那";}
	else if($KagomeTex==38){$FolderName="1930沙紅羅";}
	else if($KagomeTex==39){$FolderName="1930似鳥";}
	else if($KagomeTex==40){$FolderName="1930千秋";}
	else if($KagomeTex==41){$FolderName="1940ノーコ";}
	else if($KagomeTex==42){$FolderName="1940恵那";}
	else if($KagomeTex==43){$FolderName="1940似鳥";}
	else if($KagomeTex==44){$FolderName="1940千秋";}
	else if($KagomeTex==45){$FolderName="1942沙紅羅_ノーコ";}
	else if($KagomeTex==46){$FolderName="1943ノーコ";}
	else if($KagomeTex==47){$FolderName="1943沙紅羅";}
	else if($KagomeTex==48){$FolderName="1948沙紅羅_ノーコ";}
	else if($KagomeTex==49){$FolderName="1949ノーコ";}
	else if($KagomeTex==50){$FolderName="1949沙紅羅";}
	else if($KagomeTex==51){$FolderName="1950ノーコ";}
	else if($KagomeTex==52){$FolderName="1950フウリ";}
	else if($KagomeTex==53){$FolderName="1950恵那";}
	else if($KagomeTex==54){$FolderName="1950沙紅羅_似鳥";}
	else if($KagomeTex==55){$FolderName="2000ノーコ";}
	else if($KagomeTex==56){$FolderName="2000沙紅羅";}
	else if($KagomeTex==57){$FolderName="2000似鳥";}
	else if($KagomeTex==58){$FolderName="2000千秋_恵那";}
	else if($KagomeTex==59){$FolderName="2007千秋_恵那_ノーコ";}
	else if($KagomeTex==60){$FolderName="2008ノーコ";}
	else if($KagomeTex==61){$FolderName="2008千秋_恵那";}
	else if($KagomeTex==62){$FolderName="2010ノーコ";}
	else if($KagomeTex==63){$FolderName="2010沙紅羅_フウリ";}
	else if($KagomeTex==64){$FolderName="2010似鳥";}
	else if($KagomeTex==65){$FolderName="2010千秋_恵那";}
	else if($KagomeTex==66){$FolderName="2020カゴメ1";}
	else if($KagomeTex==67){$FolderName="2020ノーコ";}
	else if($KagomeTex==68){$FolderName="2020沙紅羅_フウリ";}
	else if($KagomeTex==69){$FolderName="2020似鳥";}
	else if($KagomeTex==70){$FolderName="2020千秋_恵那";}
	else if($KagomeTex==71){$FolderName="2030ノーコ";}
	else if($KagomeTex==72){$FolderName="2030沙紅羅_フウリ";}
	else if($KagomeTex==73){$FolderName="2030似鳥";}
	else if($KagomeTex==74){$FolderName="2030千秋_恵那";}
	else if($KagomeTex==75){$FolderName="2040恵那";}
	else if($KagomeTex==76){$FolderName="2040沙紅羅_フウリ";}
	else if($KagomeTex==77){$FolderName="2040似鳥";}
	else if($KagomeTex==78){$FolderName="2040千秋_ノーコ";}
	else if($KagomeTex==79){$FolderName="2045沙紅羅_フウリ";}
	else if($KagomeTex==80){$FolderName="2047沙紅羅_フウリ";}
	else if($KagomeTex==81){$FolderName="2050カゴメ2";}
	else if($KagomeTex==82){$FolderName="2050ノーコ";}
	else if($KagomeTex==83){$FolderName="2050恵那";}
	else if($KagomeTex==84){$FolderName="2050沙紅羅_似鳥_フウリ";}
	else if($KagomeTex==85){$FolderName="2100ノーコ";}
	else if($KagomeTex==86){$FolderName="2100恵那";}
	else if($KagomeTex==87){$FolderName="2100沙紅羅_フウリ";}
	else if($KagomeTex==88){$FolderName="2100似鳥";}
	else if($KagomeTex==89){$FolderName="2110ノーコ";}
	else if($KagomeTex==90){$FolderName="2110沙紅羅_フウリ";}
	else if($KagomeTex==91){$FolderName="2110似鳥";}
	else if($KagomeTex==92){$FolderName="2111沙紅羅_フウリ";}
	else if($KagomeTex==93){$FolderName="2115沙紅羅_フウリ";}
	else if($KagomeTex==94){$FolderName="2120沙紅羅_恵那_似鳥_ノーコ_フウリ";}
	else if($KagomeTex==95){$FolderName="2130フウリ";}
	else if($KagomeTex==96){$FolderName="2130恵那";}
	else if($KagomeTex==97){$FolderName="2130沙紅羅_似鳥_ノーコ";}
	else if($KagomeTex==98){$FolderName="2131フウリ";}
	else if($KagomeTex==99){$FolderName="2131恵那";}
	else if($KagomeTex==100){$FolderName="2134恵那";}
	else if($KagomeTex==101){$FolderName="2139フウリ";}
	else if($KagomeTex==102){$FolderName="2140ノーコ_フウリ";}
	else if($KagomeTex==103){$FolderName="2140恵那";}
	else if($KagomeTex==104){$FolderName="2140沙紅羅_似鳥";}
	else if($KagomeTex==105){$FolderName="2143恵那";}
	else if($KagomeTex==106){$FolderName="2144恵那";}
	else if($KagomeTex==107){$FolderName="2150フウリ";}
	else if($KagomeTex==108){$FolderName="2150恵那";}
	else if($KagomeTex==109){$FolderName="2150沙紅羅_似鳥_ノーコ";}
	else if($KagomeTex==110){$FolderName="2200ノーコ";}
	else if($KagomeTex==111){$FolderName="2200恵那";}
	else if($KagomeTex==112){$FolderName="2200沙紅羅_似鳥";}
	else if($KagomeTex==113){$FolderName="2206ノーコ";}
	else if($KagomeTex==114){$FolderName="2210ノーコ";}
	else if($KagomeTex==115){$FolderName="2210フウリ";}
	else if($KagomeTex==116){$FolderName="2210恵那";}
	else if($KagomeTex==117){$FolderName="2210沙紅羅_似鳥";}
	else if($KagomeTex==118){$FolderName="2220恵那_フウリ";}
	else if($KagomeTex==119){$FolderName="2220沙紅羅_似鳥_ノーコ";}
	else if($KagomeTex==120){$FolderName="2230カゴメ3";}
	else if($KagomeTex==121){$FolderName="2230フウリ";}
	else if($KagomeTex==122){$FolderName="2230恵那";}
	else if($KagomeTex==123){$FolderName="2230沙紅羅_似鳥_ノーコ";}
	else if($KagomeTex==124){$FolderName="2233沙紅羅_似鳥_ノーコ_フウリ";}
	else if($KagomeTex==125){$FolderName="2235フウリ";}
	else if($KagomeTex==126){$FolderName="2235沙紅羅_似鳥_ノーコ";}
	else if($KagomeTex==127){$FolderName="2240フウリ";}
	else if($KagomeTex==128){$FolderName="2240沙紅羅_恵那_似鳥_ノーコ";}
	else if($KagomeTex==129){$FolderName="2250カゴメ4";}
	else if($KagomeTex==130){$FolderName="2250フウリ";}
	else if($KagomeTex==131){$FolderName="2250沙紅羅_恵那_似鳥_ノーコ";}
	else if($KagomeTex==132){$FolderName="2300フウリ_h";}
	else if($KagomeTex==133){$FolderName="2300沙紅羅_恵那_似鳥_ノーコ";}
	else if($KagomeTex==134){$FolderName="2301恵那";}
	else if($KagomeTex==135){$FolderName="2301沙紅羅";}
	else if($KagomeTex==136){$FolderName="2301似鳥_ノーコ";}
	else if($KagomeTex==137){$FolderName="2304沙紅羅";}
	else if($KagomeTex==138){$FolderName="2310ノーコ";}
	else if($KagomeTex==139){$FolderName="2310恵那";}
	else if($KagomeTex==140){$FolderName="2310沙紅羅";}
	else if($KagomeTex==141){$FolderName="2310似鳥";}
	else if($KagomeTex==142){$FolderName="2311ノーコ";}
	else if($KagomeTex==143){$FolderName="2320カゴメ5";}
	else if($KagomeTex==144){$FolderName="2320ノーコ";}
	else if($KagomeTex==145){$FolderName="2320フウリ_h";}
	else if($KagomeTex==146){$FolderName="2320恵那";}
	else if($KagomeTex==147){$FolderName="2320沙紅羅_千秋";}
	else if($KagomeTex==148){$FolderName="2320似鳥";}
	else if($KagomeTex==149){$FolderName="2330ノーコ";}
	else if($KagomeTex==150){$FolderName="2330フウリ";}
	else if($KagomeTex==151){$FolderName="2330沙紅羅_千秋_恵那";}
	else if($KagomeTex==152){$FolderName="2330似鳥";}
	else if($KagomeTex==153){$FolderName="2331沙紅羅";}
	else if($KagomeTex==154){$FolderName="2331千秋_恵那";}
	else if($KagomeTex==155){$FolderName="2338ノーコ";}
	else if($KagomeTex==156){$FolderName="2340ノーコ_フウリ";}
	else if($KagomeTex==157){$FolderName="2340沙紅羅";}
	else if($KagomeTex==158){$FolderName="2340似鳥";}
	else if($KagomeTex==159){$FolderName="2340千秋_恵那";}
	else if($KagomeTex==160){$FolderName="2345似鳥";}
	else if($KagomeTex==161){$FolderName="2348ノーコ_フウリ";}
	else if($KagomeTex==162){$FolderName="2349ノーコ_フウリ";}
	else if($KagomeTex==163){$FolderName="2350沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ";}
	else if($KagomeTex==164){$FolderName="2400沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ";}
	else if($KagomeTex==165){$FolderName="a2020似鳥_ノーコ";}
	else if($KagomeTex==166){$FolderName="a2030似鳥_ノーコ";}
	else if($KagomeTex==167){$FolderName="a2040沙紅羅_フウリ";}
	else if($KagomeTex==168){$FolderName="a2040似鳥_ノーコ";}
	else if($KagomeTex==169){$FolderName="a2040千秋";}
	else if($KagomeTex==170){$FolderName="a2047沙紅羅_フウリ";}
	else if($KagomeTex==171){$FolderName="a2050カゴメ";}
	else if($KagomeTex==172){$FolderName="aa2050沙紅羅_フウリ";}
	else if($KagomeTex==173){$FolderName="aa2050千秋_恵那";}
	else if($KagomeTex==174){$FolderName="aa2100恵那";}
	else if($KagomeTex==175){$FolderName="aa2100沙紅羅";}
	else if($KagomeTex==176){$FolderName="aa2100千秋_フウリ";}
	else if($KagomeTex==177){$FolderName="aa2110フウリ";}
	else if($KagomeTex==178){$FolderName="aa2110恵那";}
	else if($KagomeTex==179){$FolderName="aa2110沙紅羅";}
	else if($KagomeTex==180){$FolderName="aa2110千秋";}
	else if($KagomeTex==181){$FolderName="aa2120フウリ";}
	else if($KagomeTex==182){$FolderName="aa2120沙紅羅";}
	else if($KagomeTex==183){$FolderName="aa2120千秋_恵那";}
	else if($KagomeTex==184){$FolderName="aa2345フウリ";}
	else if($KagomeTex==185){$FolderName="aa2350千秋_恵那";}
	else if($KagomeTex==186){$FolderName="aa2355沙紅羅";}
	else if($KagomeTex==187){$FolderName="ab2050似鳥_ノーコ";}
	else if($KagomeTex==188){$FolderName="ab2051ノーコ";}
	else if($KagomeTex==189){$FolderName="ab2051似鳥";}
	else if($KagomeTex==190){$FolderName="ab2100ノーコ";}
	else if($KagomeTex==191){$FolderName="ab2100沙紅羅_似鳥_フウリ";}
	else if($KagomeTex==192){$FolderName="ab2100千秋_恵那";}
	else if($KagomeTex==193){$FolderName="ab2107沙紅羅_似鳥_ノーコ_フウリ";}
	else if($KagomeTex==194){$FolderName="ab2108ノーコ";}
	else if($KagomeTex==195){$FolderName="ab2108沙紅羅_似鳥_フウリ";}
	else if($KagomeTex==196){$FolderName="ab2110ノーコ";}
	else if($KagomeTex==197){$FolderName="ab2110似鳥";}
	else if($KagomeTex==198){$FolderName="ab2110千秋_恵那";}
	else if($KagomeTex==199){$FolderName="ab2131千秋_恵那_フウリ";}
	else if($KagomeTex==200){$FolderName="ab2133フウリ";}
	else if($KagomeTex==201){$FolderName="ab2133千秋_恵那";}
	else if($KagomeTex==202){$FolderName="ab2140沙紅羅_似鳥";}
	else if($KagomeTex==203){$FolderName="ab2140千秋_恵那";}
	else if($KagomeTex==204){$FolderName="ab2150沙紅羅_似鳥_ノーコ";}
	else if($KagomeTex==205){$FolderName="ab2150千秋_恵那";}
	else if($KagomeTex==206){$FolderName="ab2200恵那";}
	else if($KagomeTex==207){$FolderName="ab2200沙紅羅";}
	else if($KagomeTex==208){$FolderName="ab2200千秋";}
	else if($KagomeTex==209){$FolderName="ab2210フウリ";}
	else if($KagomeTex==210){$FolderName="ab2210沙紅羅_h";}
	else if($KagomeTex==211){$FolderName="ab2210千秋";}
	else if($KagomeTex==212){$FolderName="ab2220千秋_恵那";}
	else if($KagomeTex==213){$FolderName="ab2230カゴメ";}
	else if($KagomeTex==214){$FolderName="aba2400恵那";}
	else if($KagomeTex==215){$FolderName="aba2401千秋_フウリ";}
	else if($KagomeTex==216){$FolderName="aba2402フウリ";}
	else if($KagomeTex==217){$FolderName="aba2403似鳥_ノーコ";}
	else if($KagomeTex==218){$FolderName="aba2404沙紅羅";}
	else if($KagomeTex==219){$FolderName="abb2400沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ";}
	else if($KagomeTex==220){$FolderName="b2050千秋";}
	else if($KagomeTex==221){$FolderName="b2110沙紅羅_千秋_フウリ";}
	else if($KagomeTex==222){$FolderName="b2115沙紅羅_千秋_フウリ";}
	else if($KagomeTex==223){$FolderName="b2120千秋";}
	else if($KagomeTex==224){$FolderName="b2130恵那";}
	else if($KagomeTex==225){$FolderName="b2134恵那";}
	else if($KagomeTex==226){$FolderName="b2140千秋_恵那";}
	else if($KagomeTex==227){$FolderName="b2144千秋_恵那";}
	else if($KagomeTex==228){$FolderName="b2150千秋_恵那";}
	else if($KagomeTex==229){$FolderName="b2200千秋_恵那";}
	else if($KagomeTex==230){$FolderName="b2206ノーコ";}
	else if($KagomeTex==231){$FolderName="b2208千秋_恵那_ノーコ";}
	else if($KagomeTex==232){$FolderName="b2209ノーコ";}
	else if($KagomeTex==233){$FolderName="b2209千秋_恵那";}
	else if($KagomeTex==234){$FolderName="b2210沙紅羅_似鳥_ノーコ";}
	else if($KagomeTex==235){$FolderName="b2210千秋_恵那";}
	else if($KagomeTex==236){$FolderName="b2213沙紅羅";}
	else if($KagomeTex==237){$FolderName="b2213似鳥_ノーコ";}
	else if($KagomeTex==238){$FolderName="b2220カゴメ";}
	else if($KagomeTex==239){$FolderName="ba2220沙紅羅_似鳥_ノーコ";}
	else if($KagomeTex==240){$FolderName="ba2220千秋_恵那";}
	else if($KagomeTex==241){$FolderName="ba2221千秋_恵那";}
	else if($KagomeTex==242){$FolderName="ba2230ノーコ";}
	else if($KagomeTex==243){$FolderName="ba2230沙紅羅_似鳥";}
	else if($KagomeTex==244){$FolderName="ba2230千秋_恵那";}
	else if($KagomeTex==245){$FolderName="ba2235沙紅羅";}
	else if($KagomeTex==246){$FolderName="ba2235似鳥";}
	else if($KagomeTex==247){$FolderName="ba2235千秋_恵那_ノーコ";}
	else if($KagomeTex==248){$FolderName="ba2236ノーコ";}
	else if($KagomeTex==249){$FolderName="ba2236千秋_恵那";}
	else if($KagomeTex==250){$FolderName="ba2239似鳥_ノーコ";}
	else if($KagomeTex==251){$FolderName="ba2240沙紅羅";}
	else if($KagomeTex==252){$FolderName="ba2240似鳥_ノーコ";}
	else if($KagomeTex==253){$FolderName="ba2240千秋_恵那";}
	else if($KagomeTex==254){$FolderName="ba2248沙紅羅_似鳥_ノーコ";}
	else if($KagomeTex==255){$FolderName="ba2250沙紅羅_千秋_恵那_似鳥_ノーコ";}
	else if($KagomeTex==256){$FolderName="ba2300カゴメ";}
	else if($KagomeTex==257){$FolderName="baa2300沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ";}
	else if($KagomeTex==258){$FolderName="baa2330似鳥_ノーコ_h";}
	else if($KagomeTex==259){$FolderName="baa2351千秋_恵那";}
	else if($KagomeTex==260){$FolderName="baa2352千秋_恵那";}
	else if($KagomeTex==261){$FolderName="baa2353千秋_恵那";}
	else if($KagomeTex==262){$FolderName="baa2354千秋_恵那";}
	else if($KagomeTex==263){$FolderName="baa2355沙紅羅";}
	else if($KagomeTex==264){$FolderName="baa2356似鳥_ノーコ";}
	else if($KagomeTex==265){$FolderName="baa2357似鳥_ノーコ";}
	else if($KagomeTex==266){$FolderName="baa2358似鳥_ノーコ";}
	else if($KagomeTex==267){$FolderName="baa2359フウリ";}
	else if($KagomeTex==268){$FolderName="bab2300沙紅羅_千秋_恵那_似鳥_ノーコ";}
	else if($KagomeTex==269){$FolderName="bab2330千秋_恵那";}
	else if($KagomeTex==270){$FolderName="bab2340千秋_恵那_h";}
	else if($KagomeTex==271){$FolderName="bab2350千秋_恵那";}
	else if($KagomeTex==272){$FolderName="bab2352千秋_恵那";}
	else if($KagomeTex==273){$FolderName="bab2354千秋_恵那";}
	else if($KagomeTex==274){$FolderName="bab2358似鳥_ノーコ";}
	else if($KagomeTex==275){$FolderName="bab2359沙紅羅_フウリ";}
	else if($KagomeTex==276){$FolderName="bb2220沙紅羅_似鳥";}
	else if($KagomeTex==277){$FolderName="bb2221千秋_恵那_h";}
	else if($KagomeTex==278){$FolderName="bb2235沙紅羅_似鳥";}
	else if($KagomeTex==279){$FolderName="bb2400千秋_恵那";}
	else if($KagomeTex==280){$FolderName="bb2401沙紅羅_似鳥";}
	else if($KagomeTex==281){$FolderName="c2230沙紅羅_似鳥";}
	else if($KagomeTex==282){$FolderName="c2233沙紅羅_似鳥_フウリ";}
	else if($KagomeTex==283){$FolderName="c2235沙紅羅_似鳥";}
	else if($KagomeTex==284){$FolderName="c2240沙紅羅_恵那_似鳥";}
	else if($KagomeTex==285){$FolderName="c2250フウリ";}
	else if($KagomeTex==286){$FolderName="c2250沙紅羅_恵那_似鳥";}
	else if($KagomeTex==287){$FolderName="c2300フウリ";}
	else if($KagomeTex==288){$FolderName="c2300恵那";}
	else if($KagomeTex==289){$FolderName="c2300沙紅羅_似鳥";}
	else if($KagomeTex==290){$FolderName="c2310沙紅羅_フウリ";}
	else if($KagomeTex==291){$FolderName="c2310似鳥";}
	else if($KagomeTex==292){$FolderName="c2340恵那";}
	else if($KagomeTex==293){$FolderName="c2341沙紅羅_フウリ";}
	else if($KagomeTex==294){$FolderName="c2350沙紅羅_似鳥";}
	else if($KagomeTex==295){$FolderName="c2351フウリ";}
	else if($KagomeTex==296){$FolderName="c2357恵那";}
	else if($KagomeTex==297){$FolderName="c2400沙紅羅";}
	else if($KagomeTex==298){$FolderName="c2401沙紅羅_フウリ";}
	else if($KagomeTex==299){$FolderName="c2402沙紅羅";}
	else if($KagomeTex==300){$FolderName="c2403沙紅羅_似鳥_フウリ";}
	else if($KagomeTex==301){$FolderName="c2404沙紅羅";}
	else if($KagomeTex==302){$FolderName="c2405フウリ";}
	else if($KagomeTex==303){$FolderName="c2406似鳥";}
	else if($KagomeTex==304){$FolderName="d2304沙紅羅";}
	else if($KagomeTex==305){$FolderName="d2310沙紅羅";}
	else if($KagomeTex==306){$FolderName="d2311ノーコ";}
	else if($KagomeTex==307){$FolderName="d2341ノーコ";}
	else if($KagomeTex==308){$FolderName="d2345似鳥_ノーコ";}
	else if($KagomeTex==309){$FolderName="d2400沙紅羅";}
	else if($KagomeTex==310){$FolderName="d2401似鳥_ノーコ";}
	else if($KagomeTex==311){$FolderName="d2402沙紅羅_似鳥_ノーコ";}
	else if($KagomeTex==312){$FolderName="d2403似鳥_ノーコ";}
	else if($KagomeTex==313){$FolderName="d2404沙紅羅";}
	else if($KagomeTex==314){$FolderName="e2320沙紅羅";}
	else if($KagomeTex==315){$FolderName="e2330沙紅羅";}
	else if($KagomeTex==316){$FolderName="e2338ノーコ";}
	else if($KagomeTex==317){$FolderName="e2349ノーコ";}
	else if($KagomeTex==318){$FolderName="e2355沙紅羅";}
	else if($KagomeTex==319){$FolderName="e2400似鳥_ノーコ";}
	else if($KagomeTex==320){$FolderName="e2404沙紅羅";}
	else if($KagomeTex==321){$FolderName="y1730フウリ";}
	else if($KagomeTex==322){$FolderName="y1730沙紅羅";}
	else if($KagomeTex==323){$FolderName="y1730似鳥";}
	else if($KagomeTex==324){$FolderName="y1750ノーコ";}
	else if($KagomeTex==325){$FolderName="y1750ミヅハ";}
	else if($KagomeTex==326){$FolderName="y1750恵那";}
	else if($KagomeTex==327){$FolderName="y1751千秋_恵那";}
	else if($KagomeTex==328){$FolderName="y1752恵那";}
	else if($KagomeTex==329){$FolderName="y1752千秋";}
}


function myNowRoute(){
	$myRoute=#RouteName;
	if(#RouteName=="a"||#RouteName=="ab"||#RouteName=="aa"||#RouteName=="aba"||#RouteName=="abb"){
		if(AXNL_GetScriptTimeZone($GameName)>=2020){
			$myRoute="a";
		}
		if(AXNL_GetScriptTimeZone($GameName)>=2050){
			if(#RouteName=="aa"){
				$myRoute="aa";
			}else{
				$myRoute="ab";
				if(AXNL_GetScriptTimeZone($GameName)>=2230){
					$myRoute=#RouteName;
				}
			}
		}
	}else if(#RouteName=="b"||#RouteName=="ba"||#RouteName=="baa"||#RouteName=="bab"||#RouteName=="bb"){
		if(AXNL_GetScriptTimeZone($GameName)>=2050){
			$myRoute="b";
		}
		if(AXNL_GetScriptTimeZone($GameName)>=2220){
			if(#RouteName=="bb"){
				$myRoute="bb";
			}else{
				$myRoute="ba";
				if(AXNL_GetScriptTimeZone($GameName)>=2300){
					$myRoute=m_Route;
				}
			}
		}
	}else if((#RouteName=="c"&&AXNL_GetScriptTimeZone($GameName)>=2230)||(#RouteName=="d"&&AXNL_GetScriptTimeZone($GameName)>=2250)||(#RouteName=="e"&&AXNL_GetScriptTimeZone($GameName)>=2320)){
		$myRoute=#RouteName;
	}else{
		$myRoute="トゥルー";
	}


}
