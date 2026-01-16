#include "nss/function.nss"
#include "nss/sys_config.nss"
#include "nss/function_select.nss"

//=============================================================================//
//◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆
.//★遊戯円環★バージョン1.00
//◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆
//=============================================================================//
chapter main
{
	//★タイトルの状態
	$SYSTEM_menu_lock = true;

	//■初期設定
	#GameNumber=0;
	#SYSTEM_product_code="KAFUKU_HA_AXANAEL";
	#SCRIPT_VERSION="1.10";
//	#SYSTEM_loading_image="cg/sys/save/nowloading.jpg";
//	#SYSTEM_loading_image_x=0;
//	#SYSTEM_loading_image_y=0;
//	#SYSTEM_skip_express_image="cg/sys/skip/skip-%03d.jpg#5";
//	#SYSTEM_skip_express_image="cg/sys/skip/超速%04d.png#22";
	#SYSTEM_interrupt_play_speed=3;
//	#SYSTEM_express_skip_animation_fps=100;
	#SYSTEM_voice_person_class="";

	//アザナエル：裏ラテ欄解除
	#_IS_URA_RATE=false;

	//■アップデート画面
	if(!#Updata110){
		CreateColor("タイトル描画", 1, 0, 0, 1024, 576, "BLACK");

		Message("アップデートファイル Ver.1.10","以下の項目が実装されました。\n\n・事刻表時「途中から読む」機能を追加\n・環境設定に「既読箇所の文字色を変更」機能を追加\n・一部演出の調整\n\n詳細は弊社WEBサイトにてご確認ください。\nhttp://www.nitroplus.co.jp/support/",OK,INFORMATION);
		#Updata110=true;

		Fade("タイトル描画", 100, 0, null, true);
		Delete("タイトル描画");
	}

	//★ローディング画面
	CreateTexture("Roading", 10000000, 0, 0, "cg/sys/adv/ローディング背景.png");
	SetAlias("Roading", "Roading");
	Request("Roading", Lock);
	Fade("Roading", 0, 0, null, true);

	if($Logo){
		//▽なうろーでぃんぐ
		Fade("@Roading", 200, 1000, null, true);
	}else{
		#GameDebug=true;//■配列読み出し
		#auto_log=false;//■オートログ解除

		//■フルスクリーンチェック
		if(#SYSTEM_window_full){
			#SYSTEM_window_full=true;
		}
	}

	//▼ショートカット設定
	//メニュー
	SetShortcut("M", "nss/sys_menu.nss");
	//セーブメニュー
	//SetShortcut("S", "nss/sys_save.nss");
	//ロードメニュー
	//SetShortcut("L", "nss/sys_load.nss");
	//リセット確認
	SetShortcut("T", "nss/sys_reset.nss");
	//バックセレクト
	//SetShortcut("R", "nss/sys_backselect.nss");
	//コンフィグ
	SetShortcut("C", "nss/sys_config.nss");
	//バックログ
	SetShortcut("B", "nss/sys_backlog.nss");
	//自動文字送り
	SetShortcut("A", "nss/sys_auto.nss");
	//全画面表示
	SetShortcut("F", "nss/sys_screen.nss");
	//超速
	//SetShortcut("N", "nss/sys_skip.nss");
	//クイックセーブ
	//SetShortcut("Q", "nss/sys_quicksave.nss");
	//クイックロード
	//SetShortcut("P", "nss/sys_quickload.nss");
	//Twitter
	SetShortcut("E", "nss/sys_twitter.nss");
	//事刻表
	SetShortcut("J", "nss/sys_backselect.nss");
	//デバッグ
	//SetShortcut("D", "nss/sys_edit.nss");


	//■：最初のお約束
	if(!#N2Start){
		//●設定リセット
		ConfigFormat();
		if(Message("フルスクリーンにしますか？","「Ｆ」キーで切り換えが可能です",YESNO,QUESTION)==2){
			#SYSTEM_window_full=!#SYSTEM_window_full;
		}else{
		}
		#N2Start=true;
	}

	//●円環開始●●●●●●●●●●●●●●●●●●●
	while(1)
	{
		$スクリプトバージョン = "  Version $Revision: 60 $";

		//■シーンの頭に必ず記述
		$構成名 = ModuleFileName();
		SystemInit();

		//★ロック設置
		LockVideo(false);

		//▽なうろーでぃんぐ
		if($Logo&&!$ClearNow_トゥルー&&!$エキストラタイトル){
			Fade("@Roading", 200, 1000, null, true);
			$ClearNow_トゥルー=false;
		}

		//★：ゲームがスタートしたことを明示する変数
		$GameStart = 1;

		//★：ゲームスピード
		#play_speed_plus = #SYSTEM_play_speed;

		//▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼
		//▼デバッグ用
		//#SYSTEM_skip_absolute = true;
		//#SYSTEM_skip_express = true;
		//$Logo=true;
		//#ClearTrue=false;
		//#ClearAll=true;
		//#START_FLAG=false;
		//#KagomeDebug=true;
		//#CharaDebug=true;
		//#RuteDebug=true;
		//#TitleCaution=false;

		//DebugSound();
		//DebugGallery();
		//▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲

		//□フラグ回収までタイトル非表示
		if((!#ClearTrue||#JIKOKU_open_boot)&&$GameContiune!=1&&!$GameClose){
			//★：結果
			TitleLogo2();
		}

		//■投げ込んだ場合＆終了演出時
		if($GameContiune==1||$GameClose){
			//★：結果
			$GameContiune = 0;
			Delete("*");

			//ろーでぃんぐ解除
			Fade("@Roading", 200, 0, null, true);

			//―――――――――――――――――――――――――
			//投げ込んだ場合（デバッグ時のみ通過可能）
			if(!$GameClose){
				if(#DebugRateIn){
					$SYSTEM_text_waitkey=true;
					FadeRateImg($GameName);
					SetFont("ＭＳ 明朝", 30, FFFFFF, 000000, MEDIUM, AROUND);
					CreateText("テキスト１", 2000000, 50, 50, 700, 500, "事刻表での画面");
					WaitKey();
					Delete("テキスト１");
				}

				//●総プレイ時間：計測開始
				#BEGIN_TIME=Time();

				//アザナエル：ルートデバッグモード
				#RuteDebug=true;
				//アザナエル：投げ込んだ場合はとりあえず「トゥルールート」にする
				#RouteName="トゥルー";
				//アザナエル：デバッグモードがＯＮであった際キャラルートは保存されたものに固定
				#CharaDebug=true;
				if(#CharaDebug){
					if(!#CharaName){
						#CharaName="沙紅羅";
						$CharaName=#CharaName;
					}else{
						$CharaName=#CharaName;
					}
				}

				#GameDebug=true;
			}
			//―――――――――――――――――――――――――
			call_chapter nss/0_boot_開始スクリプト.nss;

			//☆タイトルクリア変数制御
			TitleClear();

			//■シーンの頭に必ず記述
			$構成名 = ModuleFileName();
			SystemInit();

			//★ロック設置
			LockVideo(false);

			//▽なうろーでぃんぐ
			if($Logo&&!$ClearNow_トゥルー&&!$エキストラタイトル){
				Fade("@Roading", 200, 1000, null, true);
				$ClearNow_トゥルー=false;
			}

			//★：ゲームがスタートしたことを明示する変数
			$GameStart = 1;

			//★：ゲームスピード
			#play_speed_plus = #SYSTEM_play_speed;
		}

		//★：システム変数系のクリア
		$GameName=false;
		$TitleSelect=false;

		$PLACE_badend=false;
		$PLACE_title=true;

		#SYSTEM_play_speed=3;
		$SYSTEM_skip=false;
		#SYSTEM_skip_express=false;
		$SYSTEM_text_auto=false;
		$SYSTEM_menu_lock=true;
		#SYSTEM_skip_express_minimum_time=0;
		$SYSTEM_text_waitkey=true;

		if(#ClearTrue&&!$GameTV){
			$TitleBGM="@xbgm01";
			$TitleOverSE="sound/se/se銃_構える";
			$TitleClickSE="se擬音_ゴング01";//seメカ_バイク_エンジン停止
			$TitleClickSE2="se擬音_ホラ貝";//スタート選択後
			$TitleClickSE3="se擬音_警笛";//エキストラ選択後
			//$TitleClickSE4="se戦闘_攻撃_剣戟弾く01";
			//$TitleClickSE4="se戦闘_動作_武装準備01";
			#auto_log=false;//オートログ解除

			Save(0);
			DeleteSaveFile(9999);

			//■カラー定義
			TitleColor();
			//■フルスクプロセス
			TitleScreen();
			//■：コングラ判定
			TitleCongratulations();
			//■：ロゴとエキストラBGM判定
			TitleLogo();
			//■：タイトル定義
			TitleSet();
			//■：タイトル動作
			TitleFade();
			//■：タイトルセレクト
			TitleSelect();
		}else{
			$TitleSelect=1;
		}

		//★：結果
		if($TitleSelect==1&&!$GameTV){
			//▽ゲームスタート
			Request("タイトルイメージ１", UnLock);
			Request("タイトルイメージ２", UnLock);
			Request("タイトルイメージ３", UnLock);
			Delete("*");
			Request("決定サウンド", Disused);
			Request("決定サウンド", UnLock);
			//Wait(1000);
		}else if($TitleSelect==2){
			//▽エキストラへ
			//$tekitou=MilliTime();
			//Message("デバッグ用ウィンドウ",String("%d",MilliTime()-$tekitou));

			CreateSound("エキストラ加速", SE, "sound/se/seメカ_バイク_エンジン加速");
			SetAlias("エキストラ加速", "エキストラ加速");
			SetVolume("エキストラ加速", 0, 500, NULL);
			Request("エキストラ加速", Disused);
			Request("エキストラ加速", Play);

			//繋ぎ用背景
			CreateTexture("スクリーン", 2000, 0, 0, "SCREEN");
			SetAlias("スクリーン", "スクリーン");
			CreateTexture("スクリーン背景", 1000, 0, 0, "@タイトルイメージ");
			SetAlias("スクリーン背景", "スクリーン背景");
			CreateTexture("スクリーンロゴ", 1000, 243, 123, "@タイトルイメージ２");
			SetAlias("スクリーンロゴ", "スクリーンロゴ");

			Fade("スクリーン", 200, 0, null, true);
			Delete("スクリーン");

			//戻り用ウィンドウ
			Request("システムタイトル", UnLock);
			CreateWindow("システムタイトル", 10000, 0, 0, 1024, 576, false);
			SetAlias("システムタイトル", "システムタイトル");
			Request("システムタイトル", Lock);

			//SE
			//CreateSE("決定サウンズ",$TitleClickSE4);
			//Request("決定サウンズ", Lock);

			Request("タイトルイメージ", Lock);
			Request("タイトルイメージ２", Lock);
			Delete("タイトル*");

			CreateSound("エキストラ停止", SE, "sound/se/seメカ_バイク_急停止");
			SetAlias("エキストラ停止", "エキストラ停止");
			SetVolume("エキストラ停止", 0, 300, NULL);
			SetStream("エキストラ停止", 3000);
			Request("エキストラ停止", Play);
			Request("エキストラ停止", Disused);
			SetVolume("@エキストラ加速", 1000, 0, NULL);

			call_chapter nss/extra_menu.nss;

			Request("決定サウンズ", UnLock);
			Request("決定サウンズ", Disused);
		}


		//★：ラテ欄へ
		if($TitleSelect == 1){
			SetVolume("決定サウンド", 1000, 0, NULL);

			if(!#START_FLAG){
			//☆：最初のプロローグファイルが終了していない場合
				//■フルスクプロセス
				TitleScreen();

				//ろーでぃんぐ解除
				Fade("@Roading", 200, 0, null, true);

				if(!#CHARA_FLAG&&!$Logo2_in){
					//タイトル画面からの遷移の場合もう一度ロゴを見せる
					$Logo2_in=false;
					CreateTexture("タイトルニトロプラス", 100, 0, 0, "cg/sys/title/Nitroplus-logo.jpg");
					Fade("タイトルニトロプラス", 0, 0, null, true);
					SetAlias("タイトルニトロプラス", "タイトルニトロプラス");
					Request("タイトルニトロプラス", Lock);
					Fade("タイトルニトロプラス", 1000, 1000, null, true);
					WaitKey(3000);
				}
				//トゥルールート開始
				#RouteName="トゥルー";

				if(!#CHARA_FLAG){
					//キャラ選択画面へ
					$GameName="0000キャラクター選択.nss";
					call_chapter nss/0_boot_開始スクリプト.nss;
				}else{
					//事刻表に辿り着いていない場合
					if(ExistSave(10000)){
						Load(10000);
					}else{
						//キャラ選択画面へ
						$GameName="0000キャラクター選択.nss";
						call_chapter nss/0_boot_開始スクリプト.nss;
					}
				}
				//☆タイトルクリア変数制御
				TitleClear();
			}else{
			//☆ラテ欄
				$GameTV=true;
				//▽ゲーム画面遷移用
				SoundPlay("@xbgm33",0,450,true);
				call_chapter nss/sys_rate.nss;
				SetVolume("@xbgm33", 2000, 0, NULL);
				call_chapter nss/0_boot_開始スクリプト.nss;
				//☆タイトルクリア変数制御
				TitleClear();
			}
		}

	}
	//->end while
}
//->end chapter main
//=============================================================================//


//============================================================================//
..//■クリア後処理■
//============================================================================//
function TitleClear()
{
	if($GameClear){
		//☆エンド判定
		Array($KagomeFlagName,"flkagome1","flkagome2","flkagome3","flkagome4","flkagome5","flkagome1a","flkagome1b","flkagome2a","flkagome2b");
	
		$TempKagome=0;
		while(Count($KagomeFlagName)>$TempKagome){
			if(VariableValue(#,$KagomeFlagName[$TempKagome]+"_PreClear")){
				VariableValue(#,$KagomeFlagName[$TempKagome]+"_Clear",true);
			}
			$TempKagome++;
		}

		//■エキストラ読み出し
		if(!$CgArray){
			//call_chapter nss/extra_gallery.nss->main2;
			//call_chapter nss/extra_media.nss->main2;

			//Cg();
			//コングラ判定
			//$CgWrite=false;
			//CgWrite();
			//$CgArray=true;
		}

		ClearScore(LOCAL);
		ClearBacklog();
		DeleteSaveFile(9999);

		//★タイトルの状態
		$SYSTEM_menu_lock = true;

		//☆タイトル変更
		if(#FullMetalDeamonL){
			$FullMetalDeamon=true;
		}
		#FullMetalDeamonL=false;
	
		//★「ClearScore」で消されたスクリプト的なもの再定義
		$BOX_Init = true;
		$BGM_Init = true;
		$Logo = true;
		$GameStart = 1;

		VariableValue(#,"Clear_"+#RouteName,true);
		if(#Clear_トゥルー){#ClearTrue=true;#GameClear=true;}
		if(#Clear_aa){#ClearAA=true;#GameClear=true;}
		if(#Clear_aba){#ClearABA=true;#GameClear=true;}
		if(#Clear_abb){#ClearABB=true;#GameClear=true;}
		if(#Clear_baa){#ClearBAA=true;#GameClear=true;}
		if(#Clear_bab){#ClearBAB=true;#GameClear=true;}
		if(#Clear_bb){#ClearBB=true;#GameClear=true;}
		if(#Clear_c){#ClearC=true;#GameClear=true;}
		if(#Clear_d){#ClearD=true;#GameClear=true;}
		if(#Clear_e){#ClearE=true;#GameClear=true;}

		if(#RouteName!="トゥルー"){
			$GameTV=true;
		}else{
			$ClearNow_トゥルー=true;
		}

		$ClearL=true;

		#auto_log=false;//オートログ解除

		//未使用
		#bg0501600スーパーノヴァ_正面_ガラス補修車イン=true;
		#bg0501700スーパーノヴァ_正面_ガラス補修タイヤ痕=true;
		#bg0502400スーパーノヴァ_ライブ会場_ガラス補修車イン=true;
		//ｚファイル
		#bg0603511半田明神_境内_雪ノーマル新年=true;
		#bg0603500半田明神_境内_雪ノーマル新年=true;
		//何故か登録されない
		#bg0603611半田明神_境内_雪トゥルー新年=true;
		#bg0603800半田明神_境内_雪ノーマル新年新カンダー=true;
		//わけあり
		#bg0502100スーパーノヴァ_ライブ会場_ガラス割れ=true;
		#bg1602100小碓家_自室過去_通常=true;
		#imgタヌキの携帯ストラップ=true;
		#imgスマガＤＳ=true;
		#imgノーコリスカイメージb=true;
		#bg0604200半田明神_社務所_雪=true;
	}else{
		ClearScore(LOCAL);

		//★タイトルの状態
		$SYSTEM_menu_lock = true;

		$BOX_Init = true;
		$BGM_Init = true;
		$Logo = true;
		$GameStart = 1;
		$GameTV=true;
	}

	//●総プレイ時間：合計
	#ALL_PLAY_TIME=#ALL_PLAY_TIME+(Time()-#BEGIN_TIME);
	//●総プレイ時間：計測開始
	#BEGIN_TIME=Time();

	Save(0);
}
//============================================================================//




//============================================================================//
..//■タイトルカラー判定■
//============================================================================//
function TitleColor()
{
	CreateColor("タイトルカラー", 150, 0, 0, 1024, 576, "BLACK");
	SetAlias("タイトルカラー", "タイトルカラー");
	Fade("タイトルカラー", 0, 0, null, true);
	CreateColor("タイトルカラー２", 150, 0, 0, 1024, 576, "WHITE");
	SetAlias("タイトルカラー", "タイトルカラー");
	Fade("タイトルカラー２", 0, 0, null, true);
	//Request("タイトルカラー２", AddRender);
}
//============================================================================//




//============================================================================//
..//■タイトルフルスクプロセス■
//============================================================================//
function TitleScreen()
{
	CreateProcess("タイトルフルスクプロセス", 150, 0, 0, "TitleFull");
	SetAlias("タイトルフルスクプロセス", "タイトルフルスクプロセス");
	Request("タイトルフルスクプロセス", Start);
}
function TitleFull(){
	select{
		//★キーダウン系
		if($SYSTEM_keydown_f){
			if(!#SYSTEM_window_full_lock){
				#SYSTEM_window_full=!#SYSTEM_window_full;
				#SYSTEM_window_full_lock=false;
				Wait(300);
				$SYSTEM_keydown_f=false;
			}
		}
	}
}
//============================================================================//




//============================================================================//
..//■コングラチュレーション！判定■
//============================================================================//
function TitleCongratulations()
{
	if(#悪鬼編終了&&!#ClearAll&&$CompleteCount){
		//SoundPlay("@xbgm12",0,1000,true);

		CreateColor("おめでとう色", 150, 0, 0, 1024, 576, "White");
		Fade("おめでとう色", 0, 0, null, true);
		Request("おめでとう色", AddRender);

		CreateTexture("おめでとう", 100, 0, 0, "cg/ev/ev999_おめでとう.jpg");
		Fade("おめでとう", 0, 0, null, true);

		Fade("おめでとう色", 500, 1000, null, true);
		Fade("おめでとう",0,1000,null,true);
		Fade("おめでとう色", 1000, 0, null, true);

		WaitKey();

		#ev999_おめでとう=true;

		//$ClearL = false;
		#ClearAll = true;

		SetVolume("@xbgm*", 4000, 0, NULL);

		Fade("おめでとう",4000,0,null,true);
		Delete("おめでとう*");
	}
}
//============================================================================//



//============================================================================//
..//■ロゴ判定■
//============================================================================//
function TitleLogo()
{
	//■エキストラ読み出し
	if(#GameDebug){
		call_chapter nss/extra_gallery.nss->main2;
		call_chapter nss/extra_media.nss->main2;
		#GameDebug=false;
	}

//★：一度観たらゲーム中は出さないようにする判定
	if(!$Logo){
		TitleLogoBase();
		Fade("タイトルニトロプラス", 500, 0, null, true);
	}
}
//============================================================================//

//============================================================================//
..//■ロゴ判定２■
//============================================================================//
function TitleLogo2()
{
	//■エキストラ読み出し
	if(#GameDebug){
		call_chapter nss/extra_gallery.nss->main2;
		call_chapter nss/extra_media.nss->main2;
		#GameDebug=false;
	}

//★：一度観たらゲーム中は出さないようにする判定
	if(!$Logo){
		//■フルスクプロセス
		TitleScreen();

		TitleLogoBase();

		if(!#CHARA_FLAG){
			SetAlias("タイトルニトロプラス", "タイトルニトロプラス");
			Request("タイトルニトロプラス", Lock);
		}else if(#CHARA_FLAG||#ClearTrue){
			Fade("タイトルニトロプラス", 500, 0, null, true);
		}else{
			SetAlias("タイトルニトロプラス", "タイトルニトロプラス");
			Request("タイトルニトロプラス", Lock);
		}

		Request("タイトルフルスクプロセス", Stop);
		WaitAction("タイトルフルスクプロセス", null);
		Delete("タイトル*");

		$Logo2_in=true;

		if(#CHARA_FLAG){
			Wait(500);
			CreateTexture("起動画面", 100, 0, 0, "cg/sys/adv/ゲーム起動時画面.png");
			Fade("起動画面", 0, 0, null, true);
			Fade("起動画面", 1000, 1000, null, true);
			WaitKey(3000);
			Fade("起動画面", 500, 0, null, true);
			Delete("起動画面");
		}

		if(#JIKOKU_open_boot){$GameTV=true;}
	}

	$Logo=true;
}
//============================================================================//

function TitleLogoBase()
{
	//●総プレイ時間：計測開始
	#BEGIN_TIME=Time();

	CreateColor("タイトルカラー３", 100, 0, 0, 1024, 576, "WHITE");
	CreateTexture("タイトルメディア１", 100, 0, 0, "cg/sys/title/media_a.jpg");
	CreateTexture("タイトルメディア２", 100, 0, 0, "cg/sys/title/media_b.jpg");
	CreateTexture("タイトルニトロプラス", 100, 0, 0, "cg/sys/title/Nitroplus-logo.jpg");
	//CreateTexture("タイトル注意", 100, 0, 0, "cg/sys/title/注意事項.jpg");
	//CreateTexture("タイトル体験", 100, 0, 0, "cg/sys/title/諸注意.jpg");
	//CreateTexture("タイトル説明", 100, 0, 0, "cg/sys/title/クィックメニュー操作説明.jpg");

	Fade("タイトル*", 0, 0, null, true);

	Fade("タイトルカラー３",300,1000,null,true);
	Fade("タイトルメディア１", 500, 1000, null, true);
	WaitKey(3000);
	Fade("タイトルメディア２", 500, 1000, null, true);
	Fade("タイトルメディア１", 0, 0, null, true);
	WaitKey(3000);
	Fade("タイトルメディア２",500,0,null,true);

	if(!#TitleCaution){
		Wait(500);
		CreateTexture("タイトル警告", 100, 0, 0, "cg2/sys/title/セーブロードについての警告文.png");
		Fade("タイトル警告", 0, 0, null, true);
		Fade("タイトル警告", 500, 1000, null, true);
		Wait(5000);
		Fade("タイトル警告", 1000, 0, null, true);
		Wait(1000);
		#TitleCaution=true;
	}

	Fade("タイトルニトロプラス", 1000, 1000, null, true);
	Delete("タイトルカラー３");
	WaitKey(3000);

/*
	Wait(500);

	Fade("タイトル注意", 1000, 1000, null, false);
	WaitKey(1100);
	Fade("タイトル注意", 0, 1000, null, true);
	WaitKey(8000);
	Fade("タイトル注意", 500, 0, null, false);
	WaitKey(600);
	Fade("タイトル注意", 0, 0, null, true);
*/

/*
	Fade("タイトル体験", 1000, 1000, null, false);
	WaitKey(1100);
	Fade("タイトル体験", 0, 1000, null, true);
	WaitKey(8000);
	Fade("タイトル体験", 500, 0, null, false);
	WaitKey(600);
	Fade("タイトル体験", 0, 0, null, true);

	Fade("タイトル説明", 1000, 1000, null, false);
	WaitKey(1100);
	Fade("タイトル説明", 0, 1000, null, true);
	WaitKey();
	Fade("タイトル説明", 500, 0, null, false);
	WaitKey(600);
	Fade("タイトル説明", 0, 0, null, true);
*/
	Wait(100);
}



//=============================================================================//
..//■タイトル定義■
//=============================================================================//
function TitleSet()
{
...	//■デモプロセス
	//CreateProcess("タイトルプロセス", 150, 0, 0, "TitleProcess");
	//SetAlias("タイトルプロセス", "タイトルプロセス");

...	//■ロード
	//LoadImage("タイトルイメージ０", "cg/sys/title/hit.png");
	//SetAlias("タイトルイメージ０", "タイトルイメージ０");

...	//■フラグ解放
	LoadImage("タイトルイメージ", "cg/sys/title/背景.png");//重要
	SetAlias("タイトルイメージ", "タイトルイメージ");
	LoadImage("タイトルイメージ２", "cg/sys/title/ロゴ.png");//重要
	SetAlias("タイトルイメージ２", "タイトルイメージ２");

...	//■背景
	CreateTexture("タイトル背景", 100, 0, 0, "タイトルイメージ");
	SetAlias("タイトル背景", "タイトル背景");
	CreateTexture("タイトルロゴ", 100, 243, 123, "タイトルイメージ２");
	SetAlias("タイトルロゴ", "タイトルロゴ");
	CreateTexture("タイトル版権", 100, 389, 14, "cg/sys/title/ジャンル.png");
	SetAlias("タイトル版権", "タイトル版権");

	if(!$Logo){
	}

...	//■ウィンドウ定義
	CreateWindow("タイトル窓枠", 300, 0, 0, 1024, 576, false);
	SetAlias("タイトル窓枠", "タイトル窓枠");

...	//■各種定義
	Array($TitleNutName,"開始","特別","設定","出口","書記");
	AssocArray($TitleNutName,"開始","特別","設定","出口","書記");

	Array($TitleNutName[開始],918,341,true,始める,Start);
	Array($TitleNutName[特別],859,341,true,展示室,Extra);
	Array($TitleNutName[設定],801,341,true,環境設定,Config);
//	Array($TitleNutName[読込],702,341,true,電光記録,Load);
//	Array($TitleNutName[途中],822,341,true,しおりから,Quick);
	Array($TitleNutName[出口],740,341,true,終了,Exit);
	Array($TitleNutName[書記],12,466,false,ライナーノーツボタン,LinerNotes);

	if(#ClearTrue){
		$TitleNutName[書記][2]=true;
	}

	//★ロック設置
	LockVideo(true);

	$WhileCount=0;
	while(Count($TitleNutName)>$WhileCount){
		if($TitleNutName[$WhileCount][2]){
			$TitleX=$TitleNutName[$WhileCount][0];
			$TitleY=$TitleNutName[$WhileCount][1];
	
			$TitleNutBase="タイトル"+$TitleNutName[$WhileCount];
			CreateChoice($TitleNutBase);
			SetAlias($TitleNutBase, $TitleNutBase);
	
			if($TitleNutName[$WhileCount]=="書記"){
				//$TitleNutImage0="タイトルイメージ０";
				$TitleNutImage0="cg/sys/title/"+$TitleNutName[$WhileCount][3]+"on.png";
			}else{
				//$TitleNutImage0="タイトルイメージ０";
				$TitleNutImage0="cg/sys/title/"+$TitleNutName[$WhileCount][3]+"on.png";
			}
			//$TitleNutImage1=$TitleNutBase+"イメージ１";
			$TitleNutImage1="cg/sys/title/"+$TitleNutName[$WhileCount][3]+"off.png";
			//LoadImage($TitleNutImage1, $TitleNutFail);
			//$TitleNutImage2=$TitleNutBase+"イメージ２";
			$TitleNutImage2="cg/sys/title/"+$TitleNutName[$WhileCount][3]+"over.png";
			//LoadImage($TitleNutImage2, $TitleNutFail);
			//$TitleNutImage3=$TitleNutBase+"イメージ３";
			$TitleNutImage3="cg/sys/title/"+$TitleNutName[$WhileCount][3]+"on.png";
			//LoadImage($TitleNutImage3, $TitleNutFail);
		
			$TitleNutTemp1="タイトル窓枠/"+$TitleNutBase+"１";
			$TitleNutTemp1Alias="窓枠"+$TitleNutBase+"１";
			CreateTexture($TitleNutTemp1, 100, $TitleX, $TitleY, $TitleNutImage1);
			SetAlias($TitleNutTemp1, $TitleNutTemp1Alias);
			//$TitleNutTemp2="タイトル窓枠/"+$TitleNutBase+"２";
			//$TitleNutTemp2Alias="窓枠タイトル"+$TitleNutBase+"２";
			//CreateTexture($TitleNutTemp2, 100, $TitleX, $TitleY, $TitleNutImage2);
			//SetAlias($TitleNutTemp2, $TitleNutTemp2Alias);
			//$TitleNutTemp3="タイトル窓枠/"+$TitleNutBase+"３";
			//$TitleNutTemp3Alias="窓枠タイトル"+$TitleNutBase+"３";
			//CreateTexture($TitleNutTemp3, 100, $TitleX, $TitleY, $TitleNutImage3);
			//SetAlias($TitleNutTemp3, $TitleNutTemp3Alias);
	
			$TitleNutHitAlias=$TitleNutBase+"０";
			$TitleNutHit=$TitleNutBase+"/MouseUsual/hit";
			CreateTexture($TitleNutHit, 100, $TitleX, $TitleY, $TitleNutImage0);
			SetAlias($TitleNutHit, $TitleNutHitAlias);
			Request($TitleNutHit, "Erase");
			//$TitleNutUsualAlias=$TitleNutBase+"１":
			//$TitleNutUsual=$TitleNutBase+"/MouseUsual/nut";
			//CreateTexture($TitleNutUsual, 100, $TitleX, $TitleY, $TitleNutImage1);
			//SetAlias($TitleNutUsual, $TitleNutUsualAlias);
			$TitleNutOverAlias=$TitleNutBase+"２";
			$TitleNutOver=$TitleNutBase+"/MouseOver/nut";
			CreateTexture($TitleNutOver, 100, $TitleX, $TitleY, $TitleNutImage2);
			SetAlias($TitleNutOver, $TitleNutOverAlias);
			$TitleNutClickAlias=$TitleNutBase+"３";
			$TitleNutClick=$TitleNutBase+"/MouseClick/nut";
			CreateTexture($TitleNutClick, 100, $TitleX, $TitleY, $TitleNutImage3);
			SetAlias($TitleNutClick, $TitleNutClickAlias);
	
			$TitleSoundOver=$TitleNutBase+"/MouseOver/se";
			CreateSound($TitleSoundOver, SE, $TitleOverSE);
			SetVolume($TitleSoundOver, 0, 500, NULL);

			//$TitleProOverAlias=$TitleNutBase+"プロセス１";
			//$TitleNutPro="Title"+$TitleNutName[$WhileCount[4]+"Over";
			//$TitleProOver=$TitleNutBase+"/MouseOver/Pro";
			//CreateProcess($TitleProOver, 150, 0, 0, $TitleNutPro);
			//SetAlias($TitleProOver, $TitleProOverAlias);
			//$TitleProLeaveAlias=$TitleNutBase+"プロセス２";
			//$TitleNutPro="Title"+$TitleNutName[$WhileCount[4]+"Leave";
			//$TitleProLeave=$TitleNutBase+"/MouseLeave/Pro";
			//CreateProcess($TitleProLeave, 150, 0, 0, $TitleNutPro);
			//SetAlias($TitleProLeave, $TitleProLeaveAlias);
			//$TitleProClickAlias=$TitleNutBase+"プロセス３";
			//$TitleNutPro="Title"+$TitleNutName[$WhileCount[4]+"Click";
			//$TitleProClick=$TitleNutBase+"/MouseClick/Pro";
			//CreateProcess($TitleProClick, 150, 0, 0, $TitleNutPro);
			//SetAlias($TitleProClick, $TitleProClickAlias);

			if($TitleNutName[$WhileCount]=="途中"&&!ExistSave(9998)){
				Request($TitleNutBase,UnClickable);
				$nut=$TitleNutBase+"/*/*";
				Request($nut, Erase);
				Delete($TitleSoundOver);
			}
		}
		$WhileCount++;
	}

	if(!ExistSave(9998)){
		$TitleNutName[途中][2]=false;
	}


	Fade("タイトル*",0,0,null,false);
	Fade("タイトル*/*",0,0,null,false);
	Fade("タイトル*/*/*",0,0,null,true);

	//★ロック設置
	LockVideo(false);

	//ろーでぃんぐ解除
	Fade("@Roading", 200, 0, null, true);
}
//============================================================================//



//=============================================================================//
..//■タイトル動作■
//=============================================================================//
function TitleFade()
{
	$TitleFadeIcon=0;

...	//▽起動時
	if(!$Logo){
		$TitleFadeIcon=300;
		//準備
		//CreateSE("SE01","se特殊_雰囲気_鎧登場演02");

		//★ＢＧＭプレイ
		SoundPlay($TitleBGM,0,700,true);
		Wait(1000);

		Fade("タイトル背景", 300, 1000, null, true);
		Fade("タイトルロゴ", 500, 1000, null, true);

		Fade("タイトル版権", $TitleFadeIcon, 1000, null, false);

		Fade("@窓枠タイトル開始１",$TitleFadeIcon,1000,Dxl1,false);
		Fade("@窓枠タイトル設定１",$TitleFadeIcon,1000,null,false);
		Fade("@窓枠タイトル特別１",$TitleFadeIcon,1000,null,false);
		Fade("@窓枠タイトル出口１",$TitleFadeIcon,1000,null,false);
		Fade("@窓枠タイトル書記１",$TitleFadeIcon,1000,null,false);
		if(!ExistSave(9998)){
			//Fade("@窓枠タイトル途中１",$TitleFadeIcon,500,null,false);
		}
		WaitAction("@窓枠タイトル開始１", null);
		$Logo=true;

	}else if($はじめてたいとるにきた){
		$はじめてたいとるにきた=false;
		//何か演出入れたいね







	}else{
...	//▽２回目以降
		if($エキストラタイトル){
			if(#エキストラＢＧＭ != $TitleBGM){
				//★ＢＧＭプレイ
				SetVolume("@xbgm*", 1000, 0, NULL);
				SetVolume("@xsong*", 1000, 0, NULL);
				SoundPlay($TitleBGM,0,700,true);
			}

			//Fade("タイトルカラー２", 0, 1000, Axl1, true);
			Fade("タイトルロゴ", 0, 1000, null, true);
			Fade("タイトル背景", 0, 1000, null, true);
			$TitleFadeIcon=0;
			Fade("タイトル版権", $TitleFadeIcon, 1000, null, false);
			Fade("@窓枠タイトル開始１",$TitleFadeIcon,1000,Dxl1,false);
			Fade("@窓枠タイトル設定１",$TitleFadeIcon,1000,null,false);
			Fade("@窓枠タイトル特別１",$TitleFadeIcon,1000,null,false);
			Fade("@窓枠タイトル出口１",$TitleFadeIcon,1000,null,false);
			Fade("@窓枠タイトル書記１",$TitleFadeIcon,1000,null,false);

			Fade("システムタイトル/タイトル背景", 400, 0, null, false);

			Shake("@システムタイトル/エキストラ単車モノ", 200, 0, 40, 0, 0, 500, Dxl2, false);
			Move("@システムタイトル/エキストラ単車モノ", 500, -500, @0, Axl1, true);

			//エキストラからの継続音
			SetVolume("システムタイトル/発進サウンド", 1000, 0, NULL);

			Request("システムタイトル", UnLock);
			Delete("システムタイトル/タイトル背景");
			Delete("システムタイトル/エキストラ単車モノ");
			//Delete("システムタイトル");

			$エキストラタイトル=false;
		}else{
			//★ＢＧＭプレイ
			SoundPlay($TitleBGM,0,700,true);

			//Fade("タイトルカラー２", 0, 1000, Axl1, true);
			Fade("タイトルロゴ", 500, 1000, null, true);
			Fade("タイトル背景", 500, 1000, null, true);
		
			$TitleFadeIcon=300;
			Fade("タイトル版権", $TitleFadeIcon, 1000, null, false);
			Fade("@窓枠タイトル開始１",$TitleFadeIcon,1000,Dxl1,false);
			Fade("@窓枠タイトル設定１",$TitleFadeIcon,1000,null,false);
			Fade("@窓枠タイトル特別１",$TitleFadeIcon,1000,null,false);
			Fade("@窓枠タイトル出口１",$TitleFadeIcon,1000,null,false);
			Fade("@窓枠タイトル書記１",$TitleFadeIcon,1000,null,false);
			if(!ExistSave(9998)){
				//Fade("@窓枠タイトル途中１",$TitleFadeIcon,500,null,false);
			}
			WaitAction("@窓枠タイトル開始１", null);
		
			//Fade("タイトルカラー２",1000,0,null,true);
		}
	}

	//■プロセススタート
	//Request("タイトルプロセス", Start);

	//▲セットフォーカス
	TitleFocus();

	Request("タイトルフルスクプロセス", Stop);
	WaitAction("タイトルフルスクプロセス", null);
}
//============================================================================//




//=============================================================================//
..//■セットネクストフォーカス■
//=============================================================================//
function TitleFocus(){
	$TitleCount=Count($TitleNutName);

	$TitleWhile=0;
	while($TitleCount>$TitleWhile){
		if($TitleNutName[$TitleWhile][2]){
			TitleDocusGo();
		}
		$TitleWhile++;
	}
}

function TitleDocusGo()
{
	$TitleFocusBreak=true;
	$TitleStart=$TitleWhile+1;
	$TitleWhile2=0;
	while($TitleCount>$TitleWhile2&&$TitleFocusBreak){
		if($TitleStart>=$TitleCount){
			$TitleStart=0;
		}

		if($TitleNutName[$TitleStart][2]){
			$menunut="タイトル"+$TitleNutName[$TitleWhile]+"/MouseUsual/hit";
			$menunut2="タイトル"+$TitleNutName[$TitleStart]+"/MouseUsual/hit";
				SetNextFocus($menunut,$menunut2,DOWN);
				SetNextFocus($menunut,$menunut2,LEFT);
			$TitleFocusBreak=false;
		}

		$TitleStart++;
		$TitleWhile2++;
	}


	$TitleFocusBreak=true;
	$TitleStart=$TitleWhile-1;
	$TitleWhile2=0;
	while($TitleCount>$TitleWhile2&&$TitleFocusBreak){
		if($TitleStart<0){
			$TitleStart=$TitleCount-1;
		}

		if($TitleNutName[$TitleStart][2]){
			$menunut="タイトル"+$TitleNutName[$TitleWhile]+"/MouseUsual/hit";
			$menunut2="タイトル"+$TitleNutName[$TitleStart]+"/MouseUsual/hit";
				SetNextFocus($menunut,$menunut2,UP);
				SetNextFocus($menunut,$menunut2,RIGHT);
			$TitleFocusBreak=false;
		}

		$TitleStart--;
		$TitleWhile2++;
	}


}
//============================================================================//




//=============================================================================//
..//■ファンクションプロセス各種■
//=============================================================================//
//▲タイトルファンクション
function TitleProcess()
{
	while(1){
		Wait(35000);

		SetVolume($TitleBGM, 2000, 0, NULL);
		Fade("@タイトルカラー", 1300, 1000, null, true);

		MoviePlay("dx/mv_smg_PV.ngs", true);

		SoundPlay($TitleBGM,1000,1000,true);
		SetStream($TitleBGM, 2000);
		Fade("@タイトルカラー", 700, 0, null, true);
	}
}




//▲スタートファンクション
function TitleStartUsual()
{
}

function TitleStartOver()
{
	Request("@タイトル開始/MouseLeave/タイトル開始プロセス２", Stop);
	WaitAction("@タイトル開始/MouseLeave/タイトル開始プロセス２", null);

	Fade("@タイトルアイコンアニメ*", 0, 0, null, false);

	$TitleStartPro=1;
	while($TitleStartPro)
	{
		$TitleAnimeCountPre=$TitleAnimeTexture;
		$TitleAnimeCount+=1;
		$TitleAnimeTexture=String("@タイトルアイコンアニメ%02d",$TitleAnimeCount);

		Move($TitleAnimeTexture, 0, 674, 125, null, false);
		Fade($TitleAnimeTexture, 0, 1000, null, false);
		Fade($TitleAnimeCountPre, 0, 0, null, false);

		if($TitleAnimeCount>=23){$TitleAnimeCount=0;}
	}
}

function TitleStartLeave()
{
	Request("@タイトル開始１", Enter);

	$TitleStartPro=0;
	Request("@タイトル開始/MouseOver/タイトル開始プロセス１", Stop);
	WaitAction("@タイトル開始/MouseOver/タイトル開始プロセス１", null);
	Fade("@タイトルアイコンアニメ*", 0, 0, null, true);
}

function TitleStartClick()
{
	Request("@タイトル開始１", Erase);
}





//=============================================================================//
..//■セレクト■
//=============================================================================//
function TitleSelect()
{
	while(!$TitleSelect)
	{
		select
		{
			case タイトル書記{
				//CreateSE("決定サウンド",$TitleClickSE);
				//SoundPlay("決定サウンド",0,1000,false);

				Wait(100);

				#SYSTEM_window_full = false;
				System("OPEN:http://www.nitroplus.co.jp/secret/axanael_stuffpg/");
			}

			case タイトル開始{

				CreateSE("決定サウンド",$TitleClickSE2);
				Request("決定サウンド", Lock);
				SoundPlay("決定サウンド",0,850,false);

				SetVolume("@xbgm*", 3000, 0, NULL);
				Fade("タイトルカラー", 1000, 1000, null, true);

				if(#CharaDebug){
					CreateTexture("起動画面", 1000000, 0, 0, "cg/sys/adv/ゲーム起動時画面.png");
					Fade("起動画面", 0, 0, null, true);
					Fade("起動画面", 500, 1000, null, true);
					WaitKey(3000);
					Fade("起動画面", 500, 0, null, true);
					Delete("起動画面");
				}

				$TitleSelect = 1;
			}

			case タイトル特別{
				CreateSE("決定サウンド",$TitleClickSE3);
				SoundPlay("決定サウンド",0,650,false);

				$TitleSelect = 2;
			}

			case タイトル設定{
				CreateSE("決定サウンド",$TitleClickSE);
				SoundPlay("決定サウンド",0,850,false);

				$Title_Config = true;
				call_chapter nss/sys_config.nss;
				$Title_Config = false;
			}

			case タイトル出口{
				$Title_Exit = true;
				call_chapter nss/sys_close.nss;
				$Title_Exit = false;
			}


			//★キーダウン系
			if($SYSTEM_keydown_f){
				if(!#SYSTEM_window_full_lock){
					#SYSTEM_window_full=!#SYSTEM_window_full;
					#SYSTEM_window_full_lock=false;
					Wait(300);
					$SYSTEM_keydown_f=false;
				}
			}else if($SYSTEM_keydown_e){
				if(!$SYSTEM_twitter_lock){
					call_chapter nss/sys_twitter.nss;
				}
			}
		}
	}

}//============================================================================//




//============================================================================//
//サウンドデバッグ用
//============================================================================//
function DebugSound()
{
	$テストナット="@xsong03";

	SoundPlay($テストナット,0,1000,true);
	//SetStream($テストナット, 300000);

/*
	$Temp=DurationTime($テストナット);
	//RemainTime("サウンド１");
	CreateText("テキスト１", 200, 50, 50, 700, 500, $Temp);
	WaitKey();
*/

	CreateProcess("プロセス１", 150, 0, 0, "DebugSound2");
	WaitKey();
	Request("プロセス１", Start);
	WaitKey();

//	SoundPlay("@CH02",0,1000,true);
//	SoundPlay("@CH03",0,1000,true);
//	SoundPlay("@CH04",0,1000,true);
//	SoundPlay("@CH05",0,1000,true);
//	SoundPlay("@CH07",0,1000,true);
//	SoundPlay("@CH08",0,1000,true);
//	SoundPlay("@CH11",0,1000,true);
//	SoundPlay("@CH12",0,1000,true);
//	SoundPlay("@CH14",0,1000,true);
//	SoundPlay("@CH15",0,1000,true);
//	SoundPlay("@CH20",0,1000,true);
//	SoundPlay("@CH22",0,1000,true);
//	SoundPlay("@CH23",0,1000,true);
//	SoundPlay("@CH24",0,1000,true);
//	SoundPlay("@CH25",0,1000,true);
}

function DebugSound2()
{
	while(1){
		$テスト数値=PassageTime($テストナット);
		CreateText("テキスト１", 200, 50, 50, 700, 500, $テスト数値);
		Request("テキスト１", PushText);
		WaitAction("テキスト１", null);
	}
}


