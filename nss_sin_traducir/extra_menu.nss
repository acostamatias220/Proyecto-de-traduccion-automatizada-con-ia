#include "nss/function.nss"

//=============================================================================//
//■EXTRA [Menu]■
//=============================================================================//
chapter main
{
	//デバッグ用
	if(!$PLACE_title){
		$構成名 = ModuleFileName();
		SystemInit();

		$TitleBGM="@xbgm01";

		CreateWindow("システムタイトル", 10000, 0, 0, 1024, 576, false);
		SetAlias("システムタイトル", "システムタイトル");
		Request("システムタイトル", Lock);

		CreateTexture("スクリーン背景", 1000, 0, 0, "cg/sys/title/背景.png");
		SetAlias("スクリーン背景", "スクリーン背景");
		Request("スクリーン背景", Lock);
		CreateTexture("スクリーンロゴ", 1000, 243, 123, "cg/sys/title/ロゴ.png");
		SetAlias("スクリーンロゴ", "スクリーンロゴ");
		Request("スクリーンロゴ", Lock);
	}

	//エキストラ初期設定
	if(!$エキストラタイトル){
		$エキストラタイトル=true;

		//CGモード
		#CgPageIn=1;
		#CgPhaseIn=0;

		//サウンドモード周り
		if(!#サウンド初回){
			#エキストラＢＧＭ=$TitleBGM;
			#ExtraPlayNo=1;
			#ExtraMusicNo=1;
			#ExtraSongNo=1;
			#ExtraBgmCategory="Music";
			#サウンド初回=true;
		}

		SetVolume("@x*", 1000, 0, NULL);

		if(#ExtraBgmCategory!="NONE"){
			Request(#エキストラＢＧＭ, Play);
			SetLoop(#エキストラＢＧＭ, true);
			SetVolume(#エキストラＢＧＭ, 0, 350, NULL);
		}
	}


	//■：エキストラ戻り用ウィンドウ
	CreateWindow("システムエキストラ", 10000, 0, 0, 1024, 576, false);
	SetAlias("システムエキストラ", "システムエキストラ");
	Request("システムエキストラ", Lock);

	$extExit=false;
	while(!$extExit)
	{
		//■：エキストラ定義
		ExtraSet();
		//■：エキストラ動作
		ExtraFade();
		//■：エキストラセレクト
		TitleSelect();

		//ＣＧモード連想用
		WaitAction("@システム連想プロセス", null);

		//★：結果
		//繋ぎ用背景
		if($ExtraSelect!=6){
			CreateEffect("スクリーン", 2500, 0, 0, 1024, 576, "Plain");
			Request("スクリーン",Passive);
			SetAlias("スクリーン", "スクリーン");
			Delete("エキストラ*");
			Delete("@システムタイトル/エキストラ単車モノ*");
		}

		if($ExtraSelect==1){
			call_chapter nss/extra_gallery.nss;
		}else if($ExtraSelect==2){
			call_chapter nss/extra_achie.nss;
		}else if($ExtraSelect==3){
			call_chapter nss/extra_media.nss;
		}
	}

	Request("@決定サウンズ", Stop);
	SetVolume("@決定サウンズ", 0, 500, NULL);
	Request("@決定サウンズ", Play);

	//■動作「終了」
	CreateEffect("@システムタイトル/タイトル背景", 999, 0, 0, 1024, 576, "Plain");
	Request("@システムタイトル/タイトル背景",Passive);
	SetAlias("@システムタイトル/タイトル背景", "@システムタイトル/タイトル背景");

	CreateSound("@システムタイトル/発進サウンド", SE, "sound/se/seメカ_バイク_発進");
	SetVolume("@システムタイトル/発進サウンド", 0, 300, NULL);
	Request("@システムタイトル/発進サウンド", Play);
	Request("@システムタイトル/発進サウンド", Disused);

//	Shake("@システムタイトル/エキストラ単車モノ", 30000, 0, 3, 0, 3, 500, null, false);
//	CreateTexture("@システムタイトル/タイトル背景", 149, 0, 0, SCREEN);
}

chapter main2
{
	EndFormat();
}

//=============================================================================//
..//■タイトル定義■
//=============================================================================//
function ExtraSet()
{
	//★タイトルの状態
	$SYSTEM_menu_lock = true;

	$ExtraOverSE="sound/se/se動作_ライト点ける";//se戦闘_弓矢_刺さる01//se動作_はたく02//se戦闘_木刀_コツン//se銃_置く//se動作_ライト点ける//se動作_はたく01//sound/se/se動作_柏手
	$ExtraClickSE="sound/se/seメカ_車_クラクション_l";
	//se戦闘_動作_武装準備01
	//se戦闘_動作_刀構え02

	//■定義「背景」
	CreateTexture("エキストラ背景",999,0,0,"cg/sys/extra/main/背景.png");
	SetAlias("エキストラ背景", "エキストラ背景");
	CreateTexture("エキストラ単車カラー",1000,1524,47,"cg/sys/extra/main/沙紅羅ゲンツキ_カラー.png");
	SetAlias("エキストラ単車カラー", "エキストラ単車カラー");
	CreateTexture("@システムタイトル/エキストラ単車モノ",1000,337,47,"cg/sys/extra/main/沙紅羅ゲンツキ.png");

...	//■各種定義
	Array($ExtraNutName,"音楽","画像","実績","消去","占い","出口");
	AssocArray($ExtraNutName,"音楽","画像","実績","消去","占い","出口");

	Array($ExtraNutName[音楽],147,49,true,カテゴリ_音楽とか,Start);
	Array($ExtraNutName[画像],202,49,true,カテゴリ_画像,Load);
	Array($ExtraNutName[実績],257,49,true,カテゴリ_実績,Config);
	Array($ExtraNutName[消去],368,524,true,事刻表消去,Extra);
	Array($ExtraNutName[占い],130,477,true,占いボタン,Exit);
	Array($ExtraNutName[出口],926,456,true,戻るボタン,Exit);

	if(#ClearG){
		//$ExtraNutName[音楽][2]=true;
		//$ExtraNutName[画像][2]=true;
		//$ExtraNutName[実績][2]=true;
	}

	//★ロック設置
	LockVideo(true);

	$WhileCount=0;
	while(Count($ExtraNutName)>$WhileCount){
		$ExtraX=$ExtraNutName[$WhileCount][0];
		$ExtraY=$ExtraNutName[$WhileCount][1];

		$ExtraNutBase="エキストラ"+$ExtraNutName[$WhileCount];
		CreateChoice($ExtraNutBase);
		SetAlias($ExtraNutBase, $ExtraNutBase);

		$ExtraNutImage1="cg/sys/extra/main/"+$ExtraNutName[$WhileCount][3]+"off.png";
		$ExtraNutImage2="cg/sys/extra/main/"+$ExtraNutName[$WhileCount][3]+"over.png";
		$ExtraNutImage3="cg/sys/extra/main/"+$ExtraNutName[$WhileCount][3]+"on.png";
	
		$ExtraNutTemp1=$ExtraNutBase+"/img";
		CreateTexture($ExtraNutTemp1, 999, $ExtraX, $ExtraY, $ExtraNutImage1);

		if($ExtraNutName[$WhileCount][2]){
			$ExtraNutHit=$ExtraNutBase+"/MouseUsual/hit";
			CreateTexture($ExtraNutHit, 999, $ExtraX, $ExtraY, $ExtraNutImage1);
			Request($ExtraNutHit, Erase);
			//$ExtraNutUsual=$ExtraNutBase+"/MouseUsual/nut";
			//CreateTexture($ExtraNutUsual, 1000, $ExtraX, $ExtraY, $ExtraNutImage1);
			$ExtraNutOver=$ExtraNutBase+"/MouseOver/nut";
			CreateTexture($ExtraNutOver, 999, $ExtraX, $ExtraY, $ExtraNutImage2);
			$ExtraNutClick=$ExtraNutBase+"/MouseClick/nut";
			CreateTexture($ExtraNutClick, 999, $ExtraX, $ExtraY, $ExtraNutImage3);
	
			$ExtraSoundOver=$ExtraNutBase+"/MouseOver/se";
			CreateSound($ExtraSoundOver, SE, $ExtraOverSE);
			SetVolume($ExtraSoundOver, 0, 600, NULL);
		}else{
			Fade($ExtraNutTemp1,0,200,null,false);
		}
		$WhileCount++;
	}

	Fade("エキストラ*/*/*",0,0,null,true);
	Fade("@システムタイトル/エキストラ単車モノ",0,0,null,true);

	//★ロック設置
	LockVideo(false);

	Delete("スクリーン*");

	CreateSound("決定サウンド", SE, $ExtraClickSE);
	SetVolume("決定サウンド", 0, 400, NULL);
}


//=============================================================================//
..//■エキストラ動作■
//=============================================================================//
function ExtraFade()
{
	//■動作「ムービー」
	if($エキストラ実績||$エキストラ画像||$エキストラ音楽){

		Fade("@システムタイトル/エキストラ単車モノ", 0, 1000, null, false);
		Fade("エキストラ背景", 0, 1000, null, false);
		Fade("@システムエキストラ/背景", 500, 0, null, true);
		Delete("@システムエキストラ/背景");

	}else{
	//初エントランス
		Fade("エキストラ背景", 0, 1000, null, false);
/*
		Move("エキストラ単車カラー", 400, 337, @0, Dxl1, false);
		Wait(200);

		Rotate("@スクリーンロゴ", 500, @0, @0, -90, null, false);
		Move("@スクリーンロゴ", 500, @-900, @-100, Dxl2, false);
		Shake("エキストラ単車カラー", 300, 100, 100, 0, 0, 500, Dxl2, true);
*/
		SetVertex("エキストラ単車カラー", 250, 395);
		Rotate("エキストラ単車カラー", 0, @0, @0, 45, null, true);

		Move("エキストラ単車カラー", 400, 337, @0, Dxl2, false);
		Wait(150);
		Rotate("@スクリーンロゴ", 500, @0, @0, -90, null, false);
		Move("@スクリーンロゴ", 500, @-900, @-100, Dxl2, false);
		Rotate("エキストラ単車カラー", 300, @0, @0, 0, Dxl1, false);
		Shake("エキストラ単車カラー", 300, 100, 100, 0, 0, 500, Dxl2, true);

		Fade("エキストラ単車カラー", 300, 0, null, false);
		Fade("@システムタイトル/エキストラ単車モノ", 300, 1000, null, false);
		Fade("@スクリーン背景", 300, 0, null, true);

		SetVolume("@エキストラ停止", 500, 0, NULL);

		Request("@タイトルイメージ", UnLock);
		Request("@タイトルイメージ２", UnLock);
		Delete("@タイトル*");
		Delete("エキストラ単車カラー");

		//デバッグ用
		Request("スクリーン背景", UnLock);
		Request("スクリーンロゴ", UnLock);
		Delete("スクリーン*");
	}

	$エキストラ実績=false;
	$エキストラ画像=false;
	$エキストラ音楽=false;

	//▲セットフォーカス
	//一直線のフォーカス
	//ExtraFocus();
	//任意のフォーカス
	ExtraForcus2();
}


//=============================================================================//
..//■セットネクストフォーカス■
//=============================================================================//
function ExtraFocus(){
	$ExtraCount=Count($ExtraNutName);

	$ExtraWhile=0;
	while($ExtraCount>$ExtraWhile){
		if($ExtraNutName[$ExtraWhile][2]){
			ExtraDocusGo();
		}
		$ExtraWhile++;
	}
}

function ExtraDocusGo()
{
	$ExtraFocusBreak=true;
	$ExtraStart=$ExtraWhile+1;
	$ExtraWhile2=0;
	while($ExtraCount>$ExtraWhile2&&$ExtraFocusBreak){
		if($ExtraStart>=$ExtraCount){
			$ExtraStart=0;
		}

		if($ExtraNutName[$ExtraStart][2]){
			$menunut="エキストラ"+$ExtraNutName[$ExtraWhile]+"/MouseUsual/hit";
			$menunut2="エキストラ"+$ExtraNutName[$ExtraStart]+"/MouseUsual/hit";
				SetNextFocus($menunut,$menunut2,DOWN);
				SetNextFocus($menunut,$menunut2,LEFT);
			$ExtraFocusBreak=false;
		}

		$ExtraStart++;
		$ExtraWhile2++;
	}


	$ExtraFocusBreak=true;
	$ExtraStart=$ExtraWhile-1;
	$ExtraWhile2=0;
	while($ExtraCount>$ExtraWhile2&&$ExtraFocusBreak){
		if($ExtraStart<0){
			$ExtraStart=$ExtraCount-1;
		}

		if($ExtraNutName[$ExtraStart][2]){
			$menunut="エキストラ"+$ExtraNutName[$ExtraWhile]+"/MouseUsual/hit";
			$menunut2="エキストラ"+$ExtraNutName[$ExtraStart]+"/MouseUsual/hit";
				SetNextFocus($menunut,$menunut2,UP);
				SetNextFocus($menunut,$menunut2,RIGHT);
			$ExtraFocusBreak=false;
		}

		$ExtraStart--;
		$ExtraWhile2++;
	}

}

function ExtraForcus2()
{
	Array($ExtraForcus,"音楽","画像","実績","占い","消去","出口");
	AssocArray($ExtraForcus,"音楽","画像","実績","占い","消去","出口");

	Array($ExtraForcus[音楽],"占い","占い","実績","画像");
	Array($ExtraForcus[画像],"占い","占い","音楽","実績");
	Array($ExtraForcus[実績],"消去","消去","画像","音楽");
	Array($ExtraForcus[占い],"音楽","音楽","出口","消去");
	Array($ExtraForcus[消去],"実績","実績","占い","出口");
	Array($ExtraForcus[出口],"実績","実績","消去","占い");

	$ExtraWhile=0;
	while(Count($ExtraForcus)>$ExtraWhile){
		$basenut="エキストラ"+$ExtraForcus[$ExtraWhile]+"/MouseUsual/hit";
		$up="エキストラ"+$ExtraForcus[$ExtraWhile][0]+"/MouseUsual/hit";
		$down="エキストラ"+$ExtraForcus[$ExtraWhile][1]+"/MouseUsual/hit";
		$left="エキストラ"+$ExtraForcus[$ExtraWhile][2]+"/MouseUsual/hit";
		$right="エキストラ"+$ExtraForcus[$ExtraWhile][3]+"/MouseUsual/hit";

		SetNextFocus($basenut, $up, UP);
		SetNextFocus($basenut, $down, DOWN);
		SetNextFocus($basenut, $left, LEFT);
		SetNextFocus($basenut, $right, RIGHT);
		$ExtraWhile++;
	}
}
//============================================================================//


//=============================================================================//
..//■セレクト■
//=============================================================================//
function TitleSelect()
{
	$ExtraSelect=false;
	$SYSTEM_r_button_down=false;
	while(!$ExtraSelect){
		select
		{
			case エキストラ音楽{
				$ExtraSelect=3;
				Request("決定サウンド", Play);
				Request("決定サウンド", Disused);
			}case エキストラ画像{
				$ExtraSelect=1;
				Request("決定サウンド", Play);
				Request("決定サウンド", Disused);
			}case エキストラ実績{
				$ExtraSelect=2;
				Request("決定サウンド", Play);
				Request("決定サウンド", Disused);
			}case エキストラ出口{
				$extExit=true;
				$ExtraSelect=6;
				break;
			}case エキストラ占い{
				ExtraFortune();
			}case エキストラ消去{
				ExtraFormat();
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
	
			if($SYSTEM_r_button_down){
				$extExit=true;
				$ExtraSelect=6;
				break;
			}
		}
	}
}//============================================================================//


//=============================================================================//
..//■占い■
//=============================================================================//
function ExtraFortune()
{
	//アザナエル
	//#SYSTEM_sync_voice_and_text=false;
	$SYSTEM_text_waitkey=true;

	//◆立ち絵定義
	StArray();

	//★徒歩：ＳＥ
	CreateSE("SE01","se動物_タヌキ_腹鼓03");
	MusicStart("SE01",0,1200,0,1000,null,false);

	$GameName="zz2400ミヅハ.nss";
	$ConGameName = "nss/" + $GameName;
	$AllRead = Conquest($ConGameName,$GameName,null);

	$GameName2 = $GameName + "_MAIN";
	$hoge="nss/" + $GameName + "->" + $GameName2;
//	Conquest($ConGameName,$GameName2,true);
	call_scene $hoge;

	DeleteAllSt(200,false);

	FadeDelete("@絵占い", 200, null, false);
	FadeDelete("@絵背景", 200, null, true);
}


//=============================================================================//
..//■グローバルフォーマット■
//=============================================================================//
function ExtraFormat()
{
	CreateSound("クラクション１", SE, "sound/se/seメカ_車_クラクション_l");
	SetVolume("クラクション１", 0, 500, NULL);
	Request("クラクション１", Play);
	Request("クラクション１", Disused);

	CreateName("MSGWND");

	//▲画像ロード
	LoadImage("MSGWND/IMG_yes_hit","cg/sys/extra/main/はいoff.png");

	LoadImage("MSGWND/IMG_yes_on","cg/sys/extra/main/はいon.png");
	LoadImage("MSGWND/IMG_yes_over","cg/sys/extra/main/はいover.png");
	LoadImage("MSGWND/IMG_yes_off","cg/sys/extra/main/はいoff.png");

	LoadImage("MSGWND/IMG_no_on","cg/sys/extra/main/いいえon.png");
	LoadImage("MSGWND/IMG_no_over","cg/sys/extra/main/いいえover.png");
	LoadImage("MSGWND/IMG_no_off","cg/sys/extra/main/いいえoff.png");

	//■定義「選択肢」
	//box
	CreateTexture("MSGWND/MSG_win", 10000, 201, 209, "cg/sys/extra/main/消去確認.png");
	//YES
	CreateTexture("MSGWND/MSG_img_yes",1011000,379,290,"MSGWND/IMG_yes_off");
	CreateChoice("MSGWND/MSG_yes");
	CreateTexture("MSGWND/MSG_yes/MouseUsual/img",1012000,379,290,"MSGWND/IMG_yes_hit");
	//CreateTexture("MSGWND/MSG_yes/MouseUsual/img2",1012000,379,290,"MSGWND/IMG_yes_off");
	CreateTexture("MSGWND/MSG_yes/MouseOver/img",1011000,379,290,"MSGWND/IMG_yes_over");
	CreateTexture("MSGWND/MSG_yes/MouseClick/img",1011000,379,290,"MSGWND/IMG_yes_on");
	Request("MSGWND/MSG_yes/MouseUsual/img", Erase);
	//NO
	CreateTexture("MSGWND/MSG_img_no",1011000,527,290,"MSGWND/IMG_no_off");
	CreateChoice("MSGWND/MSG_no");
	CreateTexture("MSGWND/MSG_no/MouseUsual/img",1012000,527,290,"MSGWND/IMG_yes_hit");
	//CreateTexture("MSGWND/MSG_no/MouseUsual/img2",1012000,527,290,"MSGWND/IMG_no_off");
	CreateTexture("MSGWND/MSG_no/MouseOver/img",1011000,527,290,"MSGWND/IMG_no_over");
	CreateTexture("MSGWND/MSG_no/MouseClick/img",1011000,527,290,"MSGWND/IMG_no_on");
	Request("MSGWND/MSG_no/MouseUsual/img", Erase);

	//▲セットフォーカス
	SetNextFocus("MSGWND/MSG_yes/MouseUsual/img","MSGWND/MSG_no/MouseUsual/img",LEFT);
	SetNextFocus("MSGWND/MSG_yes/MouseUsual/img","MSGWND/MSG_no/MouseUsual/img",RIGHT);
	SetNextFocus("MSGWND/MSG_yes/MouseUsual/img","MSGWND/MSG_no/MouseUsual/img",DOWN);
	SetNextFocus("MSGWND/MSG_yes/MouseUsual/img","MSGWND/MSG_no/MouseUsual/img",UP);
	SetNextFocus("MSGWND/MSG_no/MouseUsual/img","MSGWND/MSG_yes/MouseUsual/img",LEFT);
	SetNextFocus("MSGWND/MSG_no/MouseUsual/img","MSGWND/MSG_yes/MouseUsual/img",RIGHT);
	SetNextFocus("MSGWND/MSG_no/MouseUsual/img","MSGWND/MSG_yes/MouseUsual/img",DOWN);
	SetNextFocus("MSGWND/MSG_no/MouseUsual/img","MSGWND/MSG_yes/MouseUsual/img",UP);

	//●最終準備
	Fade("MSGWND/MSG_*",0,0,null,false);
	Fade("MSGWND/MSG_*/*/*",0,0,null,true);

	//★描画開始
	Fade("MSGWND/MSG_win",300,1000,null,false);
	Fade("MSGWND/MSG_img_*",300,1000,null,false);
	Fade("MSGWND/MSG_*/MouseUsual/*",300,1000,null,true);

	CreateSound("サイレン１", SE, "sound/se/seメカ_車_パトカーサイレン_l");
	SetLoop("サイレン１", true);
	SetVolume("サイレン１", 0, 500, NULL);
	Request("サイレン１", Play);
	Request("サイレン１", Disused);

	WaitAction("MSGWND/MSG_*",null);

	$ExtraFormat=true;
	while($ExtraFormat){
		//★選択肢開始
		select{
			if($SYSTEM_r_button_down){$ExtraFormat=false;break;}

			case MSGWND/MSG_no{$ExtraFormat=false;}
			case MSGWND/MSG_yes{
				if($ExtraFormatOn){
					GlovalFormat();
				}
			}
	
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

		if($ExtraFormat){
			CreateSound("サイレン２", SE, "sound/se/seメカ_車_救急車サイレン_l");
			SetLoop("サイレン２", true);
			SetVolume("サイレン２", 0, 500, NULL);
			Request("サイレン２", Play);
			Request("サイレン２", Disused);

			CreateSound("クラクション２", SE, "sound/se/seメカ_車_クラクション_l");
			SetVolume("クラクション２", 0, 1000, NULL);
			Request("クラクション２", Play);
			Request("クラクション２", Disused);

			//CreateTexture("エキストラ警告", 10001, 0, 0, SCREEN);
			CreateTexture("MSGWND/MSG_win", 10000, 201, 209, "cg/sys/extra/main/消去確認2.png");
			//Fade("MSGWND/MSG_*/*/*",300,0,null,false);
			//Fade("エキストラ警告", 300, 0, null, true);
			Wait(200);

			$ExtraFormatOn=true;
		}
	}

	SetVolume("サイレン１", 500, 0, NULL);
	SetVolume("サイレン２", 500, 0, NULL);

	//スクリーン取得ミスバグ対策
	Wait(16);
	CreateTexture("エキストラ警告", 10001, 0, 0, SCREEN);


	Fade("MSGWND/MSG_*/*/*",0,0,null,false);
	Fade("MSGWND/MSG_*",0,0,null,true);
	Fade("エキストラ警告", 300, 0, null, true);

	Delete("エキストラ警告");
	Delete("MSGWND");
	$ExtraFormatOn=false;
}


function GlovalFormat()
{
	SetVolume("サイレン１", 500, 0, NULL);
	SetVolume("サイレン２", 500, 0, NULL);

	CreateTexture("エキストラ警告", 10001, 0, 0, SCREEN);
	Fade("MSGWND/MSG_*/*/*",0,0,null,false);
	Fade("MSGWND/MSG_*",0,0,null,true);
	CreateTexture("MSGWND/MSG_win", 10000, 201, 209, "cg/sys/extra/main/消去確認3.png");

	//▽▽▽▽▽▽▽▽▽▽▽▽
	//★ロック設置
	LockVideo(true);
	$DebugMode=false;
	EndFormat();
	//★ロック設置
	LockVideo(false);
	//△△△△△△△△△△△△

	CreateSound("サイレン３", SE, "sound/se/seメカ_バイク_エンジン停止");
	SetVolume("サイレン３", 0, 800, NULL);
	Request("サイレン３", Play);
	Request("サイレン３", Disused);
	Wait(500);

	Shake("@システムタイトル/エキストラ単車モノ", 300, 0, 5, 0, 0, 500, null, false);
	Fade("エキストラ警告", 0, 0, null, true);

	$ExtraFormat=false;

	$SYSTEM_keydown_enter=false;
	$SYSTEM_l_button_down=false;
	select{
		if($SYSTEM_l_button_down||$SYSTEM_keydown_enter){
			break;
		}
	}
	$SYSTEM_l_button_down=false;
	$SYSTEM_keydown_enter=false;
}


function EndFormat()
{
	//フォーマット地帯

	//キャラ選択画面
	#START_FLAG=false;
	#CHARA_FLAG=false;
	#ClearQuake=false;

	//カゴメ
	Array($KagomeFlagName,"flkagome1","flkagome2","flkagome3","flkagome4","flkagome5","flkagome1a","flkagome1b","flkagome2a","flkagome2b");
	$TempKagome=0;
	while(Count($KagomeFlagName)>$TempKagome){
		if(!$DebugMode){
			VariableValue(#,$KagomeFlagName[$TempKagome],false);
			VariableValue(#,$KagomeFlagName[$TempKagome]+"_Select",false);
			VariableValue(#,$KagomeFlagName[$TempKagome]+"_PreClear",false);
			VariableValue(#,$KagomeFlagName[$TempKagome]+"_Clear",false);
			VariableValue(#,$KagomeFlagName[$TempKagome]+"_Active",false);
		}else{
			VariableValue(#,$KagomeFlagName[$TempKagome],false);
			VariableValue(#,$KagomeFlagName[$TempKagome]+"_Select",true);
			VariableValue(#,$KagomeFlagName[$TempKagome]+"_PreClear",true);
			VariableValue(#,$KagomeFlagName[$TempKagome]+"_Clear",true);
			VariableValue(#,$KagomeFlagName[$TempKagome]+"_Active",false);
		}
		$TempKagome++;
	}

	//クリア
	Array($ClearFlagName,"トゥルー","a","aa","ab","aba","abb","b","ba","baa","bab","bb","c","d","e");
	$TempClear=0;
	while(Count($ClearFlagName)>$TempClear){
		if(!$DebugMode){
			VariableValue(#,"Clear_"+$ClearFlagName[$TempClear],false);
			VariableValue(#,"Ending_"+$ClearFlagName[$TempClear],false);
			VariableValue(#,"Ending_"+$ClearFlagName[$TempClear]+"_Active",false);
			#GameClear=false;
		}else{
			VariableValue(#,"Clear_"+$ClearFlagName[$TempClear],true);
			VariableValue(#,"Ending_"+$ClearFlagName[$TempClear],true);
			VariableValue(#,"Ending_"+$ClearFlagName[$TempClear]+"_Active",true);
			#GameClear=true;
		}
		$TempClear++;
	}

	//全ゲームネームルート
	Array($ScriptName,"1800ノーコ","1800フウリ","1800恵那","1800沙紅羅","1800似鳥","1800千秋","1810ノーコ_フウリ","1810沙紅羅","1810似鳥","1820ノーコ","1820フウリ","1820恵那","1820千秋","1830フウリ","1830恵那","1830似鳥_ノーコ","1830千秋","1840沙紅羅","1840似鳥_ノーコ_h","1850恵那","1850沙紅羅","1850千秋_フウリ","1900ノーコ","1900フウリ","1900恵那","1900沙紅羅","1900似鳥","1900千秋","1910ノーコ_フウリ","1910恵那","1910沙紅羅_千秋","1920恵那","1920沙紅羅_千秋","1920似鳥_ノーコ_フウリ","1930ノーコ","1930フウリ","1930恵那","1930沙紅羅","1930似鳥","1930千秋","1940ノーコ","1940恵那","1940似鳥","1940千秋","1942沙紅羅_ノーコ","1943ノーコ","1943沙紅羅","1948沙紅羅_ノーコ","1949ノーコ","1949沙紅羅","1950ノーコ","1950フウリ","1950恵那","1950沙紅羅_似鳥","2000ノーコ","2000沙紅羅","2000似鳥","2000千秋_恵那","2007千秋_恵那_ノーコ","2008ノーコ","2008千秋_恵那","2010ノーコ","2010沙紅羅_フウリ","2010似鳥","2010千秋_恵那","2020カゴメ1","2020ノーコ","2020沙紅羅_フウリ","2020似鳥","2020千秋_恵那","2030ノーコ","2030沙紅羅_フウリ","2030似鳥","2030千秋_恵那","2040恵那","2040沙紅羅_フウリ","2040似鳥","2040千秋_ノーコ","2045沙紅羅_フウリ","2047沙紅羅_フウリ","2050カゴメ2","2050ノーコ","2050恵那","2050沙紅羅_似鳥_フウリ","2100ノーコ","2100恵那","2100沙紅羅_フウリ","2100似鳥","2110ノーコ","2110沙紅羅_フウリ","2110似鳥","2111沙紅羅_フウリ","2115沙紅羅_フウリ","2120沙紅羅_恵那_似鳥_ノーコ_フウリ","2130フウリ","2130恵那","2130沙紅羅_似鳥_ノーコ","2131フウリ","2131恵那","2134恵那","2139フウリ","2140ノーコ_フウリ","2140恵那","2140沙紅羅_似鳥","2143恵那","2144恵那","2150フウリ","2150恵那","2150沙紅羅_似鳥_ノーコ","2200ノーコ","2200恵那","2200沙紅羅_似鳥","2206ノーコ","2210ノーコ","2210フウリ","2210恵那","2210沙紅羅_似鳥","2220恵那_フウリ","2220沙紅羅_似鳥_ノーコ","2230カゴメ3","2230フウリ","2230恵那","2230沙紅羅_似鳥_ノーコ","2233沙紅羅_似鳥_ノーコ_フウリ","2235フウリ","2235沙紅羅_似鳥_ノーコ","2240フウリ","2240沙紅羅_恵那_似鳥_ノーコ","2250カゴメ4","2250フウリ","2250沙紅羅_恵那_似鳥_ノーコ","2300フウリ_h","2300沙紅羅_恵那_似鳥_ノーコ","2301恵那","2301沙紅羅","2301似鳥_ノーコ","2304沙紅羅","2310ノーコ","2310恵那","2310沙紅羅","2310似鳥","2311ノーコ","2320カゴメ5","2320ノーコ","2320フウリ_h","2320恵那","2320沙紅羅_千秋","2320似鳥","2330ノーコ","2330フウリ","2330沙紅羅_千秋_恵那","2330似鳥","2331沙紅羅","2331千秋_恵那","2338ノーコ","2340ノーコ_フウリ","2340沙紅羅","2340似鳥","2340千秋_恵那","2345似鳥","2348ノーコ_フウリ","2349ノーコ_フウリ","2350沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ","2400沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ","a2020似鳥_ノーコ","a2030似鳥_ノーコ","a2040沙紅羅_フウリ","a2040似鳥_ノーコ","a2040千秋","a2047沙紅羅_フウリ","a2050カゴメ","aa2050沙紅羅_フウリ","aa2050千秋_恵那","aa2100恵那","aa2100沙紅羅","aa2100千秋_フウリ","aa2110フウリ","aa2110恵那","aa2110沙紅羅","aa2110千秋","aa2120フウリ","aa2120沙紅羅","aa2120千秋_恵那","aa2345フウリ","aa2350千秋_恵那","aa2355沙紅羅","ab2050似鳥_ノーコ","ab2051ノーコ","ab2051似鳥","ab2100ノーコ","ab2100沙紅羅_似鳥_フウリ","ab2100千秋_恵那","ab2107沙紅羅_似鳥_ノーコ_フウリ","ab2108ノーコ","ab2108沙紅羅_似鳥_フウリ","ab2110ノーコ","ab2110似鳥","ab2110千秋_恵那","ab2131千秋_恵那_フウリ","ab2133フウリ","ab2133千秋_恵那","ab2140沙紅羅_似鳥","ab2140千秋_恵那","ab2150沙紅羅_似鳥_ノーコ","ab2150千秋_恵那","ab2200恵那","ab2200沙紅羅","ab2200千秋","ab2210フウリ","ab2210沙紅羅_h","ab2210千秋","ab2220千秋_恵那","ab2230カゴメ","aba2400恵那","aba2401千秋_フウリ","aba2402フウリ","aba2403似鳥_ノーコ","aba2404沙紅羅","abb2400沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ","b2050千秋","b2110沙紅羅_千秋_フウリ","b2115沙紅羅_千秋_フウリ","b2120千秋","b2130恵那","b2134恵那","b2140千秋_恵那","b2144千秋_恵那","b2150千秋_恵那","b2200千秋_恵那","b2206ノーコ","b2208千秋_恵那_ノーコ","b2209ノーコ","b2209千秋_恵那","b2210沙紅羅_似鳥_ノーコ","b2210千秋_恵那","b2213沙紅羅","b2213似鳥_ノーコ","b2220カゴメ","ba2220沙紅羅_似鳥_ノーコ","ba2220千秋_恵那","ba2221千秋_恵那","ba2230ノーコ","ba2230沙紅羅_似鳥","ba2230千秋_恵那","ba2235沙紅羅","ba2235似鳥","ba2235千秋_恵那_ノーコ","ba2236ノーコ","ba2236千秋_恵那","ba2239似鳥_ノーコ","ba2240沙紅羅","ba2240似鳥_ノーコ","ba2240千秋_恵那","ba2248沙紅羅_似鳥_ノーコ","ba2250沙紅羅_千秋_恵那_似鳥_ノーコ","ba2300カゴメ","baa2300沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ","baa2330似鳥_ノーコ_h","baa2351千秋_恵那","baa2352千秋_恵那","baa2353千秋_恵那","baa2354千秋_恵那","baa2355沙紅羅","baa2356似鳥_ノーコ","baa2357似鳥_ノーコ","baa2358似鳥_ノーコ","baa2359フウリ","bab2300沙紅羅_千秋_恵那_似鳥_ノーコ","bab2330千秋_恵那","bab2340千秋_恵那_h","bab2350千秋_恵那","bab2352千秋_恵那","bab2354千秋_恵那","bab2358似鳥_ノーコ","bab2359沙紅羅_フウリ","bb2220沙紅羅_似鳥","bb2221千秋_恵那_h","bb2235沙紅羅_似鳥","bb2400千秋_恵那","bb2401沙紅羅_似鳥","c2230沙紅羅_似鳥","c2233沙紅羅_似鳥_フウリ","c2235沙紅羅_似鳥","c2240沙紅羅_恵那_似鳥","c2250フウリ","c2250沙紅羅_恵那_似鳥","c2300フウリ","c2300恵那","c2300沙紅羅_似鳥","c2310沙紅羅_フウリ","c2310似鳥","c2340恵那","c2341沙紅羅_フウリ","c2350沙紅羅_似鳥","c2351フウリ","c2357恵那","c2400沙紅羅","c2401沙紅羅_フウリ","c2402沙紅羅","c2403沙紅羅_似鳥_フウリ","c2404沙紅羅","c2405フウリ","c2406似鳥","d2304沙紅羅","d2310沙紅羅","d2311ノーコ","d2341ノーコ","d2345似鳥_ノーコ","d2400沙紅羅","d2401似鳥_ノーコ","d2402沙紅羅_似鳥_ノーコ","d2403似鳥_ノーコ","d2404沙紅羅","e2320沙紅羅","e2330沙紅羅","e2338ノーコ","e2349ノーコ","e2355沙紅羅","e2400似鳥_ノーコ","e2404沙紅羅","y1730フウリ","y1730沙紅羅","y1730似鳥","y1750ノーコ","y1750ミヅハ","y1750恵那","y1751千秋_恵那","y1752恵那","y1752千秋");

	$TempScript=0;
	while(Count($ScriptName)>$TempScript){
		if(!$DebugMode){
			$TempClear=0;
			while(Count($ClearFlagName)>$TempClear){
				VariableValue(#,$ScriptName[$TempScript]+"_"+$ClearFlagName[$TempClear],false);
				VariableValue(#,$ScriptName[$TempScript]+"_"+$ClearFlagName[$TempClear]+"_in",false);
				$TempClear++;
			}
			//AXNL_ReachingTimeZone($ScriptName[$TempScript]);
		}else{
			$TempClear=0;
			while(Count($ClearFlagName)>$TempClear){
				VariableValue(#,$ScriptName[$TempScript]+"_"+$ClearFlagName[$TempClear],true);
				VariableValue(#,$ScriptName[$TempScript]+"_"+$ClearFlagName[$TempClear]+"_in",false);
				$TempClear++;
			}
			AXNL_ReachingTimeZone($ScriptName[$TempScript]);
		}
		$TempScript++;
	}

}