$Revision: 35 $
#include "nss/function_dialog.nss"
#include "nss/sys_twitter.nss"

//=============================================================================//
.//■コンフィグ■
//=============================================================================//
chapter main
{
	//★前提変数
	$SYSTEM_menu_config_enable=true;

	//★超速からの変遷用
	$SYSTEM_keydown_esc=false;
	$SYSTEM_buttondown_close=false;

	#SYSTEM_interrupt_play_speed=3;
	//$SYSTEM_backlog_lock=true;

	//★前提変数
	if($Title_Config){
		//★：タイトルのゲームスピード保管
		#play_speed_plus2 = #SYSTEM_play_speed;
		//タイトルにおいてのコンフィグのゲームスピード
		#SYSTEM_play_speed=3;
	}else{
		#play_speed_plus=#SYSTEM_play_speed;
	}

	SetFont("ＭＳ ゴシック",21,#00000,#FFFFFF,500,NONE);

	//■準備「スクリーン」//※タイトルとかメニューから？それとも？
	//if(!$PLACE_title&&!$SYSTEM_menu_enable&&!$SYSTEM_menu_lock){
	if(IsInterrupt()){
		LoadImage("IMG_video",VIDEO);
	}else{
		LoadImage("IMG_video",SCREEN);
	}
	CreateTexture("video_config01",10000,center,middle,"IMG_video");

	//■定義「コンフィグ用変数初期化」
	InitCfgVar();

	//■定義「共通素材読み込み」
	LoadComImg();//ConfigReady();

	//■定義「ベース画像設置」
	SetBaseImg();
	
	//金閣寺アニメーション
	//WaitKey();
	
	$fadetime=0;//コンフィグSCRN背景用

	//■開始「コンフィグ画面」
	$SYSTEM_menu_config_enable=true;
	$SYSTEM_keydown_esc=false;
	$SYSTEM_r_button_down=false;$SYSTEM_XBOX360_button_b_down=false;
	while($SYSTEM_menu_config_enable)
	{
		//★初期化やページ移動用
		$ConfigBreakFlag=false;

		//■定義「各ページ画像読み込み設置」//▼定義
		SetPageImg($cfgPage);//ConfigSet();
		$fadetime=300;

		//▼描画
		ConfigFade();

		//▼選択肢
		ConfigSelect();
		
		//金閣寺アニメーション
		if($SYSTEM_menu_config_enable){PlayKkkj();}

		if($ConfigBreakFlag){$SYSTEM_menu_config_enable=true;}

	}
	CfgFadeExitChk();

	if($TypeBeginNow){
		//Fade("<@box360>", 0, #LOCAL_window_fade, null, true);
	}

	ConfigCharacterVoice();
	//SavingStart();

	//★終了動作「描画」
	CreateTexture("システム背景C",11100,0,0,SCREEN);

	Delete("Config/*/*/*/*");
	Delete("Config/*/*/*");
	Delete("Config/*/*");
	Delete("Config/*");
	Delete("Config*");
	Delete("Cfi*");

	if($Title_Config){
		Fade("video_config01", 0, 0, null, true);
	}
	Fade("システム背景C",300,0,null,true);

	//▲描画「ボタン説明」
	//DialogButtonOFF("Button_CONFIG");
	//Move("finfin", 300, @0, @-720, null, true);
	//$SYSTEM_backlog_lock=false;
	$SYSTEM_menu_config_enable=false;
	if($PLACE_select){
		//$SYSTEM_backlog_lock=true;
	}

	if($Title_Config){
		#SYSTEM_play_speed=#play_speed_plus2;
	}else{
		#SYSTEM_play_speed=#play_speed_plus;
	}

	$SYSTEM_r_button_down=false;
	$SYSTEM_XBOX360_button_b_down=false;
	#SYSTEM_interrupt_play_speed=3;
	$SYSTEM_menu_config_enable=false;

	$SYSTEM_mousewheel_up=false;
	$SYSTEM_mousewheel_down=false;

	//テキストスピード調整用
	if($pre_text_speed!=#SYSTEM_text_speed){
		#SYSTEM_text_speed+=10;
	}
	//$txt="|"+#SYSTEM_text_speed+"|";CreateText("tt",10020,0,440,auto,auto,$txt);Draw();WaitKey();

}

chapter main2
{
	//ConfigVoiceArray();
}

.//■定義「コンフィグ用変数初期化」
function InitCfgVar()
{
	//ボイス設定ページ初期化
	$ConfigVoiceOn=false;

	//現在のページ
	$cfgPage=1;
	//前回のページ
	$prePage=0;
	//ロード済みか否か
	$cfgLoad0=false;
	$cfgLoad1=false;
	$cfgLoad2=false;
	$cfgLoad3=false;
	
	//説明の透明ボタン用の幅、高さ、Ｙ座標
	$cfgBtnW=25;$cfgBtnH=236;$cfgBtnY=95;
	//選択中アイコンのＹ座標
	$cfgSelIcoY=63;
	
	//テスト音声用初期化変数
	$cfgvoicetest=1;
	//初期化やページ移動用//trueでループwhile継続
	$ConfigBreakFlag=false;
	//チェックボックスのFADE秒数
	$ConfigFadeTime=100;
	//選択オーバー音
	//$ConfigSound_over="sound/se/se乗物_車_ドア開閉01";
	//選択クリック音
	//$ConfigSound_click="sound/se/se人体_衝撃_瓦礫ぶつかる01";
	//フォーマット関連
	$go=false;
	
	//音声用配列定義
	VoiceResetSet();//ConfigVoiceArray();
	//キャラ別音声ボタンの座標値
	SetChrBtnXY();

	//▼スクロールバー初期変数
	$ConfigMathY=350;//67;
	$ConfigMathY2=506;//207;
	$ConfigMathY3=492;//183;?
	$ConfigMathY4=522;//213;?
	$ConfigCursor=350;//67;
	$ConfigCursor2=505;//206;
	$CVer=1;//18;//7;//スクロールバー初期位置ずれ調整用
	//スクロールスピード
	$ConfigScrollSpeed=3;

	//解説テキストの座標値
	$cfgTxtX=232;$cfgTxtY=23;
	//解説テキストのフェードタイム
	$ConfigTxtFadeTime=0;

	//テキストプレビュー中フラグ
	$TextPreview=false;

	//テキストスピード調整用
	$text_speed_max=990;
	$pre_text_speed=#SYSTEM_text_speed;

}

.//■定義「共通素材読み込み」
function LoadComImg()
{
	LoadImage("Cfi_オンオフ切off","cg/sys/config/オンオフ切off.png");
	LoadImage("Cfi_オンオフ切on","cg/sys/config/オンオフ切on.png");
	LoadImage("Cfi_オンオフ切over","cg/sys/config/オンオフ切over.png");
	LoadImage("Cfi_オンオフ切hit","cg/sys/config/オンオフ切hit.png");//切ヒット領域用
	LoadImage("Cfi_オンオフ入off","cg/sys/config/オンオフ入off.png");
	LoadImage("Cfi_オンオフ入on","cg/sys/config/オンオフ入on.png");
	LoadImage("Cfi_オンオフ入over","cg/sys/config/オンオフ入over.png");
	LoadImage("Cfi_オンオフ入hit","cg/sys/config/オンオフ入hit.png");//入ヒット領域用
	LoadImage("Cfi_再生ボタンoff","cg/sys/config/再生ボタンoff.png");
	LoadImage("Cfi_再生ボタンon","cg/sys/config/再生ボタンon.png");
	LoadImage("Cfi_再生ボタンover","cg/sys/config/再生ボタンover.png");
	LoadImage("Cfi_待機ボタンoff","cg/sys/config/待機ボタンoff.png");
	LoadImage("Cfi_待機ボタンon","cg/sys/config/待機ボタンon.png");
	LoadImage("Cfi_待機ボタンover","cg/sys/config/待機ボタンover.png");
	LoadImage("Cfi_中断ボタンoff","cg/sys/config/中断ボタンoff.png");
	LoadImage("Cfi_中断ボタンon","cg/sys/config/中断ボタンon.png");
	LoadImage("Cfi_中断ボタンover","cg/sys/config/中断ボタンover.png");
	LoadImage("Cfi_停止ボタンoff","cg/sys/config/停止ボタンoff.png");
	LoadImage("Cfi_停止ボタンon","cg/sys/config/停止ボタンon.png");
	LoadImage("Cfi_停止ボタンover","cg/sys/config/停止ボタンover.png");
	
	LoadImage("ConfigImageLine","cg/sys/config/スライダポインタ裏側アタリ判定.png");//9x170?
	LoadImage("ConfigImagePen00","cg/sys/config/スライダポインタアタリ判定.png");//9x18
	LoadImage("ConfigImagePen01","cg/sys/config/スライダポインタoff.png");//9x18
	LoadImage("ConfigImagePen02","cg/sys/config/スライダポインタover.png");//9x18
	
	LoadImage("Cfi_選択中アイコン","cg/sys/config/選択中アイコン.png");
	CreateTexture("Config8s_Select", 10010, -100,63, "cg/sys/config/選択中アイコン.png");
	SetAlias("Config8s_Select","Config8s_Select");
}
.//■定義「ベース画像設置」
function SetBaseImg();
{
..	//▼定義「背景」
	//CreateTexture("mihon1", 10010, Center, Middle, "cg/sys/config/コンフィグ見本1.jpg");
	//Fade("mihon1",0,300,null,true);

	//金閣寺アニメーション読み込み
	$i=1;
	while($i<4)
	{
		if($i==1){
			CreateTexture("Config9f_ConfigGround0", 10001, Center, Middle, "cg/sys/config/背景.jpg");
			Fade("Config9f_ConfigGround0",0,0,null,true);
			CreateTexture("Config9f_ConfigGround1", 10000, Center, 1085, "cg/sys/config/山.png");
		}else{
			Fade("Config9f_kkg1_01",0,1000,null,true);
			if($i==3){
				//金閣寺、山、移動
				Move("Config9f_kkg1_01", 300, @0, 76, Dxl3, 100);
				Move("Config9f_ConfigGround1", 300, @0, 345, Dxl3, true);
				Wait(16);
			//}else if($i==3){
				//背景フェードイン
				Fade("Config9f_ConfigGround0",150,1000,null,true);
			}
		}
		$k=1;
		while($k<13)
		{
			$j=($i-1)*12+$k;
			$file_path="cg/sys/config/kkj/金閣寺回転 "+$i+String("_%05d.png",$j);
			$nut_name="Config9f_kkg"+$i+String("_%02d",$j);
			CreateTexture($nut_name, 10003, 524, 652, $file_path);
			$k++;
		}
		Fade("Config9f_kkg*",0,0,null,false);
		$i++;
	}
	
	Fade("Config9f_kkg1_01",0,1000,null,false);
	Move("Config9f_kkg*", 0, @0, 76, null, true);


}
//金閣寺アニメーション再生
function PlayKkkj()
{
	$sub=$cfgPage-$prePage;
	//正回転//逆回転
	if($sub==1||$sub==-2){$reverse=false;}
	else{$reverse=true;}
	//$txt="|"+$cfgPage+"|"+$prePage+"|"+$sub+"|"+$reverse+"|";CreateText("tt",11000,0,0,auto,auto,$txt);
	
	if($reverse){$page0=$cfgPage;}
	else{$page0=$prePage;}
	
	$j=1;
	while($j<12){
		if($reverse){$i=14-$j;}
		else{$i=$j;}
	
		$num0=($page0-1)*12+$i;
		if($reverse){$num1=$num0-1;}
		else{$num1=$num0+1;}
		
		if($j==1&&$reverse){
			if($prePage==1){$nut_pre="Config9f_kkg1_01";}
			else if($prePage==2){$nut_pre="Config9f_kkg2_13";}
			else if($prePage==3){$nut_pre="Config9f_kkg3_25";}
		}else{$nut_pre="Config9f_kkg"+$page0+String("_%02d",$num0);}
		
		$nut_new="Config9f_kkg"+$page0+String("_%02d",$num1);
		Fade($nut_new,0,1000,null,false);
		Fade($nut_pre,0,0,null,false);
		Wait(16);
		$j++;
		//$txt="|"+$nut_pre+"|"+$nut_new+"|";CreateText("tt",11000,0,0,auto,auto,$txt);
	}
	
	if($cfgPage==1){$nut_new="Config9f_kkg1_01";}
	else if($cfgPage==2){$nut_new="Config9f_kkg2_13";}
	else if($cfgPage==3){$nut_new="Config9f_kkg3_25";}
	
	if($reverse){$i=2;}
	else{$i=12;}
	$num0=($page0-1)*12+$i;
	$nut_pre="Config9f_kkg"+$page0+String("_%02d",$num0);
	
	Fade($nut_new,0,1000,null,false);
	Fade($nut_pre,0,0,null,true);
	Wait(16);
	//$txt="|"+$nut_pre+"|"+$nut_new+"|";CreateText("tt",11000,0,0,auto,auto,$txt);WaitKey();
}

.//■定義「各ページ画像読み込み設置」
function SetPageImg($_pagenum);
{
	CreateTexture("コンフィグSCRN背景", 20000, 0, 0, SCREEN);

	if(!$cfgLoad0){
		SetPageImg0();
		$cfgLoad0=true;
	}
	if($_pagenum==1){
		if($cfgLoad1){return;}
		SetPageImg1();
		$cfgLoad1=true;
	}else if($_pagenum==2){
		if($cfgLoad2){return;}
		SetPageImg2();
		$cfgLoad2=true;
	}else if($_pagenum==3){
		if($cfgLoad3){return;}
		SetPageImg3();
		$cfgLoad3=true;
	}
}
..	//▼定義「共通ボタン設定」
function SetPageImg0();
{
..	//▼定義「戻る」
	$ConfigExitX=929;
	$ConfigExitY=482;
	CreateChoice("Config0a_EXIT",0,0,0,0,0,0);
	CreateTexture("Config0a_EXIT/MouseUsual/hit", 10010, $ConfigExitX, $ConfigExitY, "cg/sys/config/戻るボタンoff.png");
	CreateTexture("Config0a_EXIT/MouseOver/icon", 10010, $ConfigExitX, $ConfigExitY, "cg/sys/config/戻るボタンover.png");
	CreateTexture("Config0a_EXIT/MouseClick/icon",10010, $ConfigExitX, $ConfigExitY, "cg/sys/config/戻るボタンon.png");

..	//▼定義「次ページ」
	$ConfigNextX=94;
	$ConfigNextY=224;
	CreateChoice("Config0a_NEXT",0,0,0,0,0,0);
	CreateTexture("Config0a_NEXT/MouseUsual/hit", 10010, $ConfigNextX, $ConfigNextY, "cg/sys/config/次ページボタンoff.png");
	CreateTexture("Config0a_NEXT/MouseOver/icon", 10010, $ConfigNextX, $ConfigNextY, "cg/sys/config/次ページボタンover.png");
	CreateTexture("Config0a_NEXT/MouseClick/icon",10010, $ConfigNextX, $ConfigNextY, "cg/sys/config/次ページボタンon.png");

..	//▼定義「カテゴリ（基本/文字/音声）」
	//基本
	$ConfigPgb1X=112;
	$ConfigPgb1Y=506;
	CreateChoice("Config0b_PAGE1",0,0,0,0,0,0);
	CreateTexture("Config0b_PAGE1/MouseUsual/hit", 10010, $ConfigPgb1X, $ConfigPgb1Y, "cg/sys/config/カテゴリ基本off.png");
	CreateTexture("Config0b_PAGE1/MouseOver/icon", 10010, $ConfigPgb1X, $ConfigPgb1Y, "cg/sys/config/カテゴリ基本on.png");
	CreateTexture("Config0b_PAGE1/MouseClick/icon",10010, $ConfigPgb1X, $ConfigPgb1Y, "cg/sys/config/カテゴリ基本on.png");
	CreateTexture("Config0b_PAGE1icon",10010, $ConfigPgb1X, $ConfigPgb1Y, "cg/sys/config/カテゴリ基本on.png");
	//文字
	$ConfigPgb2X=66;
	$ConfigPgb2Y=$ConfigPgb1Y;
	CreateChoice("Config0b_PAGE2",0,0,0,0,0,0);
	CreateTexture("Config0b_PAGE2/MouseUsual/hit", 10010, $ConfigPgb2X, $ConfigPgb2Y, "cg/sys/config/カテゴリ文字off.png");
	CreateTexture("Config0b_PAGE2/MouseOver/icon", 10010, $ConfigPgb2X, $ConfigPgb2Y, "cg/sys/config/カテゴリ文字on.png");
	CreateTexture("Config0b_PAGE2/MouseClick/icon",10010, $ConfigPgb2X, $ConfigPgb2Y, "cg/sys/config/カテゴリ文字on.png");
	CreateTexture("Config0b_PAGE2icon",10010, $ConfigPgb2X, $ConfigPgb2Y, "cg/sys/config/カテゴリ文字on.png");
	//音声
	$ConfigPgb3X=21;
	$ConfigPgb3Y=$ConfigPgb1Y;
	CreateChoice("Config0b_PAGE3",0,0,0,0,0,0);
	CreateTexture("Config0b_PAGE3/MouseUsual/hit", 10010, $ConfigPgb3X, $ConfigPgb3Y, "cg/sys/config/カテゴリ音声off.png");
	CreateTexture("Config0b_PAGE3/MouseOver/icon", 10010, $ConfigPgb3X, $ConfigPgb3Y, "cg/sys/config/カテゴリ音声on.png");
	CreateTexture("Config0b_PAGE3/MouseClick/icon",10010, $ConfigPgb3X, $ConfigPgb3Y, "cg/sys/config/カテゴリ音声on.png");
	CreateTexture("Config0b_PAGE3icon",10010, $ConfigPgb3X, $ConfigPgb3Y, "cg/sys/config/カテゴリ音声on.png");
}

..	//(1/3)▼定義「基本/画面設定」
function SetPageImg1();
{
	//基本/画面設定のベース
	if(#ClearTrue){$fname="cg/sys/config/ベース_基本.png";}
	else{	$fname="cg/sys/config/ベース_基本_トゥルー前.png";}
	CreateTexture("Config1f_Ground", 10005, 149, 18, $fname);
	
..	//▼定義「初期化」ボタン
	SetType1SSel("Config1a_Default", 701, 348, 698, "初期化ボタン");
..	//▼定義「確認メッセージ」
	SetOnOffBtn("Config1a_Confirm",661, 348,372, 658);
..	//▼定義「動画の中断とスキップの可否」
	SetOnOffBtn("Config1a_MStop",619, 348,372, 616);
..	//▼定義「Twitterの設定を開く」
	SetType1SSel("Config1a_OpenT", 578, 348, 575, "設定ボタン");
..	//▼定義「起動時に事刻表を開く」
	if(#ClearTrue){SetOnOffBtn("Config1a_OpenJ",536, 348,372, 533);}

..	//▼定義「ディスプレイ表示切替」
	SetOnOffBtn("Config1a_FScrn",462, 348,372, 459);
..	//▼定義「アスペクト比自動設定」
	SetOnOffBtn("Config1a_AAuto",421, 348,372, 418);
..	//▼定義「アスペクト比Ｄ依存/固定」
	
	//固定
	SetType2Btn("Config1a_FAspectON", 379, 479, "固定ボタン");
	//依存
	SetType2Btn("Config1a_FAspectOFF", 379, 348, "依存ボタン");
	$nx=376;
	//説明
	SetSBtn("Config1a_FAspect",$nx);
	//選択中
	SetSelBtn("Config1a_FAspectON",$nx);
	SetSelBtn("Config1a_FAspectOFF",$nx);
	SetSelBtn("Config1a_FAspectS",$nx);

	//ハードウェア補間
	SetType2Btn("Config1a_ARatioHW", 346, 396, "ハードウェア補間");
	//ニアレストネイバー法
	SetType2Btn("Config1a_ARatioNN", 313, 366, "ニアレストネイバー法");
	//バイリニア法
	SetType2Btn("Config1a_ARatioBR", 280, 426, "バイリニア法");
	//選択中
	SetSelBtn("Config1a_ARatioHW",$nx);
	SetSelBtn("Config1a_ARatioNN",$nx);
	SetSelBtn("Config1a_ARatioBR",$nx);

..	//▼定義「バージョン情報」
	SetFont("@ＭＳ ゴシック", 14, #000000, #000000, 700, NONE);
	$str1="◇スクリプトバージョン<PRE>"+#SCRIPT_VERSION+"</PRE>";
	$str2="◇システムバージョン<PRE>"+#SYSTEM_version+"</PRE>";
	CreateText("Config1f_TEXT_SCRIPT", 10010,240,100,400,200,$str1);//40,100,200,200
	CreateText("Config1f_TEXT_SYSTEM", 10010,220,100,400,200,$str2);//20,100,200,200
	Request("Config1f_TEXT_*",NoLog);
	Request("Config1f_TEXT_*",PushText);
	SetVertex("Config1f_TEXT_*",0,0);
	Rotate("Config1f_TEXT_*",0,@0,@0,90,null,false);

..	//▼定義「ユーザー登録」
	SetType1Btn("Config1a_You", 163, 98, "ユーザー登録");
	SetSelPrcs("Config1a_You");
..	//▼定義「QRコード」
	$ConfigQRcX=162;
	$ConfigQRcY=425;
	CreateChoice("Config1a_QRc",0,0,0,0,0,0);
	CreateColor("Config1a_QRc/MouseUsual/hit", 10010, $ConfigQRcX, $ConfigQRcY, 54,54, #ffffff);
	Request("Config1a_QRc/MouseUsual/hit", Erase);
	//解説テキストプロセス
	SetSelPrcs("Config1a_QRc");

..	//▼定義「HP」
	$ConfigComX=163;
	$ConfigComY=285;
	CreateChoice("Config1a_Com",0,0,0,0,0,0);
	CreateColor("Config1a_Com/MouseUsual/hit", 10010, $ConfigComX, $ConfigComY, 30,135, #ffffff);
	Request("Config1a_Com/MouseUsual/hit", Erase);
	//解説テキストプロセス
	SetSelPrcs("Config1a_Com");

..	//解説テキスト(1/3)
	CreateTexture("Config1t_01_01", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/01_01_01.png");
	CreateTexture("Config1t_02_01", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/01_02_01.png");
	CreateTexture("Config1t_03_01", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/01_03_01.png");
	CreateTexture("Config1t_04_01", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/01_04_01.png");
	CreateTexture("Config1t_05_01", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/01_05_01.png");
	CreateTexture("Config1t_06_01", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/01_06_01.png");
	CreateTexture("Config1t_07_01", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/01_07_01.png");
	CreateTexture("Config1t_07_02", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/01_07_02.png");
	CreateTexture("Config1t_08_00", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/01_08_00.png");
	CreateTexture("Config1t_08_01", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/01_08_01.png");
	CreateTexture("Config1t_08_02", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/01_08_02.png");
	CreateTexture("Config1t_08_03", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/01_08_03.png");
	CreateTexture("Config1t_08_04", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/01_08_04.png");
	CreateTexture("Config1t_09_01", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/01_09_01.png");
	CreateTexture("Config1t_10_01", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/01_10_01.png");
	SetAlias("Config1t_01_01","Config1t_01_01");
	SetAlias("Config1t_02_01","Config1t_02_01");
	SetAlias("Config1t_03_01","Config1t_03_01");
	SetAlias("Config1t_04_01","Config1t_04_01");
	SetAlias("Config1t_05_01","Config1t_05_01");
	SetAlias("Config1t_06_01","Config1t_06_01");
	SetAlias("Config1t_07_01","Config1t_07_01");
	SetAlias("Config1t_07_02","Config1t_07_02");
	SetAlias("Config1t_08_00","Config1t_08_00");
	SetAlias("Config1t_08_01","Config1t_08_01");
	SetAlias("Config1t_08_02","Config1t_08_02");
	SetAlias("Config1t_08_03","Config1t_08_03");
	SetAlias("Config1t_08_04","Config1t_08_04");
	SetAlias("Config1t_09_01","Config1t_09_01");
	SetAlias("Config1t_10_01","Config1t_10_01");

}
..	//(2/3)▼定義「文字設定」
function SetPageImg2();
{
	//文字設定のベース
	//CreateTexture("Config2f_Ground", 10005, 149, 18, "cg/sys/config/ベース_文字.png");//●既読箇所の２項目封印版
	CreateTexture("Config2f_Ground", 10005, 149, 18, "cg2/sys/config/ベース_文字1.png");//●既読箇所の１項目解放版
	//CreateTexture("Config2f_Ground", 10005, 149, 18, "cg/sys/config/ベース_文字2.png");//●既読箇所の２項目解放版
	//表示中
	CreateTexture("Config2f_View", 10025, 151, -120, "cg/sys/config/表示中.png");//表示中ボタン
	SetAlias("Config2f_View","Config2f_View");
	
..	//▼定義「事刻毎に自動文字送りを解除」
	SetOnOffBtn("Config2a_CSkip",701, 348,372, 698);
..	//▼定義「未読時でもスキップ」
	SetOnOffBtn("Config2a_ASkip",660, 348,372, 657);
	//●既読箇所の１項目解放版
..	//▼定義「既読箇所の文字色を変更」
	SetOnOffBtn("Config2a_RdCChg",619, 348,372, 616);
/*
..	//▼定義「既読箇所を自動的にスキップ」
	SetOnOffBtn("Config2a_RdASkip",578, 348,372, 575);
	//SetOnOffBtn("Config2a_RdASkip",661, 348,372, 658);
*/
//移動x82
..	//▼定義「クリック時に音声を停止」
	//SetOnOffBtn("Config2a_KVoice",536, 348,372, 533);//●既読箇所の２項目解放版
	SetOnOffBtn("Config2a_KVoice",578, 348,372, 575);//●既読箇所の１項目解放版
	//SetOnOffBtn("Config2a_KVoice",619, 348,372, 614);//●既読箇所の２項目封印版

	//SetPageScrlBar2();

..	//▼定義「自動文字送り時の音声待機」
	//$nx=412;//●既読箇所の２項目解放版
	$nx=453;//●既読箇所の１項目解放版
	//$nx=494;//●既読箇所の２項目封印版
	$ny=348;
	CreateChoice("Config2a_SVoice",0,0,0,0,0,0);
	CreateTexture("Config2a_SVoice/taiki", 10010, $nx, $ny, "cg/sys/config/待機ボタンoff.png");
	CreateTexture("Config2a_SVoice/chudan", 10010, $nx, $ny, "cg/sys/config/中断ボタンoff.png");
	CreateTexture("Config2a_SVoice/MouseUsual/hit", 10010, $nx, $ny, "cg/sys/config/待機ボタンoff.png");
	Request("Config2a_SVoice/MouseUsual/hit",Erase);
	CreateTexture("Config2a_SVoice/MouseOver/iconT", 10010, $nx, $ny, "cg/sys/config/待機ボタンover.png");
	CreateTexture("Config2a_SVoice/MouseClick/iconT",10010, $nx, $ny, "cg/sys/config/待機ボタンon.png");
	CreateTexture("Config2a_SVoice/MouseOver/iconC", 10010, $nx, $ny, "cg/sys/config/中断ボタンover.png");
	CreateTexture("Config2a_SVoice/MouseClick/iconC",10010, $nx, $ny, "cg/sys/config/中断ボタンon.png");
	//$nx=409;//●既読箇所の２項目解放版
	$nx=450;//●既読箇所の１項目解放版
	//$nx=491;//●既読箇所の２項目封印版
	//説明
	SetSBtn("Config2a_SVoice",$nx);
	//選択中
	SetSelBtn("Config2a_SVoice",$nx);
	SetSelBtn("Config2a_SVoiceS",$nx);

..	//▼定義「クリックで自動文字送りの解除」
	//SetOnOffBtn("Config2a_CABrk",371, 348,372, 368);//●既読箇所の２項目解放版
	SetOnOffBtn("Config2a_CABrk",412, 348,372, 409);//●既読箇所の１項目封印版
	//SetOnOffBtn("Config2a_CABrk",453, 348,372, 450);//●既読箇所の２項目封印版

..	//▼定義「文字設定のプレビュー」
	//$nx=329;//●既読箇所の２項目解放版
	$nx=371;//●既読箇所の１項目解放版
	//$nx=411;//●既読箇所の２項目封印版
	$ny=348;
	CreateChoice("Config2a_TxtPrvw",0,0,0,0,0,0);
	//CreateTexture("Config2a_TxtPrvw/play", 10010, $nx, $ny, "cg/sys/config/再生ボタンoff.png");
	//CreateTexture("Config2a_TxtPrvw/stop", 10010, $nx, $ny, "cg/sys/config/停止ボタンoff.png");
	CreateTexture("Config2a_TxtPrvw/MouseUsual/hit", 10010, $nx, $ny, "cg/sys/config/再生ボタンoff.png");
	//Request("Config2a_TxtPrvw/MouseUsual/hit",Erase);
	CreateTexture("Config2a_TxtPrvw/MouseOver/iconP", 10010, $nx, $ny, "cg/sys/config/再生ボタンover.png");
	//CreateTexture("Config2a_TxtPrvw/MouseClick/iconP",10010, $nx, $ny, "cg/sys/config/再生ボタンon.png");
	//CreateTexture("Config2a_TxtPrvw/MouseOver/iconS", 10010, $nx, $ny, "cg/sys/config/停止ボタンover.png");
	CreateTexture("Config2a_TxtPrvw/MouseClick/iconS",10010, $nx, $ny, "cg/sys/config/停止ボタンon.png");
	//$nx=326;//●既読箇所の２項目解放版
	$nx=369;//●既読箇所の１項目解放版
	//$nx=409;//●既読箇所の２項目封印版
	//説明
	SetSBtn("Config2a_TxtPrvw",$nx);
	//選択中
	SetSelBtn("Config2a_TxtPrvw",$nx);
	SetSelBtn("Config2a_TxtPrvwS",$nx);

..	//解説テキスト(2/3)
	CreateTexture("Config2t_01_01", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/02_01_01.png");
	CreateTexture("Config2t_02_01", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/02_02_01.png");
	CreateTexture("Config2t_03_01", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/02_03_01.png");
	CreateTexture("Config2t_04_01", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/02_04_01.png");
	CreateTexture("Config2t_05_01", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/02_05_01.png");
	CreateTexture("Config2t_06_01", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/02_06_01.png");
	//CreateTexture("Config2t_07_01", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/02_07_01.png");//未使用
	CreateTexture("Config2t_08_01", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/02_08_01.png");
	CreateTexture("Config2t_09_01", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/02_09_01.png");
	CreateTexture("Config2t_10_01", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/02_10_01.png");
	CreateTexture("Config2t_11_01", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/02_11_01.png");
	SetAlias("Config2t_01_01","Config2t_01_01");
	SetAlias("Config2t_02_01","Config2t_02_01");
	SetAlias("Config2t_03_01","Config2t_03_01");
	SetAlias("Config2t_04_01","Config2t_04_01");
	SetAlias("Config2t_05_01","Config2t_05_01");
	SetAlias("Config2t_06_01","Config2t_06_01");
	//SetAlias("Config2t_07_01","Config2t_07_01");
	SetAlias("Config2t_08_01","Config2t_08_01");
	SetAlias("Config2t_09_01","Config2t_09_01");
	SetAlias("Config2t_10_01","Config2t_10_01");
	SetAlias("Config2t_11_01","Config2t_11_01");

}
function SetPageScrlBar2()
{

..	//▼定義「文字の表示速度」
		//$ConfigMSpeedX=498;//754;//●既読箇所の２項目解放版
		$ConfigMSpeedX=539;//754;//●既読箇所の１項目封印版
		//$ConfigMSpeedX=580;//754;//●既読箇所の２項目封印版
		$ConfigMSpeedY=$ConfigMathY;//固定
		$ConfigMSpeedX2=$ConfigMSpeedX;//754;
		$ConfigMSpeedY2=$ConfigMathY2;//固定
		$ConfigMSpeedBaseY=$ConfigMathY;//固定
		$ConfigMSpeedBaseY2=$ConfigMathY2;//固定
		
		$pos=$text_speed_max*(#SYSTEM_text_speed/$text_speed_max)+$CVer;
		//$pos=1000*(#SYSTEM_text_speed/1000)+$CVer;

		CreateScrollbar("Config2a_MSpeed",10050,$ConfigMSpeedX,$ConfigMSpeedY,$ConfigMSpeedX2,$ConfigMSpeedY2,$pos,VERTICAL,"ConfigImagePen00");
		Request("Config2a_MSpeed", Erase);
		SetScrollSpeed("Config2a_MSpeed", $ConfigScrollSpeed);
			//▼アイコンアニメーションの当たり判定
			CreateChoice("Config2a_MSpeed_Pro01",0,0,0,0,0,0);
			SetAlias("Config2a_MSpeed_Pro01", "Config2a_MSpeed_Pro01");
			CreateTexture("@Config2a_MSpeed_Pro01/MouseUsual/hit",0,$ConfigMSpeedX,$ConfigMSpeedY,"ConfigImageLine");
			CreateProcess("@Config2a_MSpeed_Pro01/MouseOver/button", 10010, 0, 0, "ConfigMSpeedProcessOPEN");
			CreateProcess("@Config2a_MSpeed_Pro01/MouseLeave/button", 10010, 0, 0, "ConfigMSpeedProcessSTOP");
			Request("@Config2a_MSpeed_Pro01/MouseUsual/hit", Erase);
			//▼カーソル定義
			$ConfigMSpeedX3=$ConfigMSpeedX;
			$ConfigMSpeedY3=($pos/1000)*($ConfigCursor2-$ConfigCursor)+($ConfigCursor);
			$PreConfigMSpeedY=$ConfigMSpeedY3;
			CreateTexture("Config2f_MSpeed01", 10010, $ConfigMSpeedX3, $ConfigMSpeedY3, "ConfigImagePen01");
			SetAlias("Config2f_MSpeed01", "Config2f_MSpeed01");
			CreateTexture("Config2a_MSpeed02", 10010, $ConfigMSpeedX3, $ConfigMSpeedY3, "ConfigImagePen02");
			SetAlias("Config2a_MSpeed02", "Config2a_MSpeed02");
		//▽幅
		$ConfigMSpeedH=ImageHorizon("Config2a_MSpeed");
		$ConfigMSpeedV=ImageVertical("Config2a_MSpeed");
	//$nx=493;//●既読箇所の２項目解放版
	$nx=534;//●既読箇所の１項目解放版
	//$nx=575;//●既読箇所の２項目封印版
	//説明
	SetSBtn("Config2a_MSpeed",$nx);
	//選択中
	SetSelIcon("Config2a_MSpeed_Pro01",$nx);//SetSelBtn("Config2a_MSpeed_Pro01",$nx);
	SetSelBtn("Config2a_MSpeedS",$nx);

..	//▼定義「自動文字送り時の待ち時間」
		//$ConfigASpeedX=456;//●既読箇所の２項目解放版
		$ConfigASpeedX=497;//●既読箇所の１項目封印版
		//$ConfigASpeedX=538;//●既読箇所の２項目封印版
		$ConfigASpeedY=$ConfigMathY;//固定
		$ConfigASpeedX2=$ConfigASpeedX;
		$ConfigASpeedY2=$ConfigMathY2;//固定
		$ConfigASpeedBaseY=$ConfigMathY;//固定
		$ConfigASpeedBaseY2=$ConfigMathY2;//固定
		$pos=1000*(#SYSTEM_auto_wait_per_character/200)+$CVer;

		CreateScrollbar("Config2a_ASpeed",10050,$ConfigASpeedX,$ConfigASpeedY,$ConfigASpeedX2,$ConfigASpeedY2,$pos,VERTICAL,"ConfigImagePen00");
		Request("Config2a_ASpeed", Erase);
		SetScrollSpeed("Config2a_ASpeed", $ConfigScrollSpeed);
			//▼アイコンアニメーションの当たり判定
			CreateChoice("Config2a_ASpeed_Pro01",0,0,0,0,0,0);
			SetAlias("Config2a_ASpeed_Pro01", "Config2a_ASpeed_Pro01");
			CreateTexture("@Config2a_ASpeed_Pro01/MouseUsual/hit",0,$ConfigASpeedX,$ConfigASpeedY,"ConfigImageLine");
			CreateProcess("@Config2a_ASpeed_Pro01/MouseOver/button", 10010, 0, 0, "ConfigASpeedProcessOPEN");
			CreateProcess("@Config2a_ASpeed_Pro01/MouseLeave/button", 10010, 0, 0, "ConfigASpeedProcessSTOP");
			Request("@Config2a_ASpeed_Pro01/MouseUsual/hit", Erase);
			//▼カーソル定義
			$ConfigASpeedX3=$ConfigASpeedX;
			$ConfigASpeedY3=($pos/1000)*($ConfigCursor2-$ConfigCursor)+($ConfigCursor);
			$PreConfigASpeedY=$ConfigASpeedY3;
			CreateTexture("Config2f_ASpeed01", 10010, $ConfigASpeedX3, $ConfigASpeedY3, "ConfigImagePen01");
			SetAlias("Config2f_ASpeed01", "Config2f_ASpeed01");
			CreateTexture("Config2a_ASpeed02", 10010, $ConfigASpeedX3, $ConfigASpeedY3, "ConfigImagePen02");
			SetAlias("Config2a_ASpeed02", "Config2a_ASpeed02");
		//▽幅
		$ConfigASpeedH=ImageHorizon("Config2a_ASpeed");
		$ConfigASpeedV=ImageVertical("Config2a_ASpeed");
	//$nx=451;//●既読箇所の２項目解放版
	$nx=492;//●既読箇所の１項目封印版
	//$nx=533;//●既読箇所の２項目封印版
	//説明
	SetSBtn("Config2a_ASpeed",$nx);
	//選択中
	SetSelIcon("Config2a_ASpeed_Pro01",$nx);
	SetSelBtn("Config2a_ASpeedS",$nx);

	Fade("Config2a_MSpeed*/*/*",0,0,null,false);
	Fade("Config2a_MSpeed*/*",0,0,null,false);
	Fade("Config2a_MSpeed*",0,0,null,false);
	Fade("Config2a_ASpeed*/*/*",0,0,null,false);
	Fade("Config2a_ASpeed*/*",0,0,null,false);
	Fade("Config2a_ASpeed*",0,0,null,false);

}
function SetPageScrlBar3()
{
..	//▼定義「音楽の音量」
		$ConfigBVolumeX=663;
		$ConfigBVolumeY=$ConfigMathY;//固定
		$ConfigBVolumeX2=$ConfigBVolumeX;
		$ConfigBVolumeY2=$ConfigMathY2;//固定
		$ConfigBVolumeBaseY=$ConfigMathY;//固定
		$ConfigBVolumeBaseY2=$ConfigMathY2;//固定
		$pos=1000*(1-(#SYSTEM_sound_volume_bgm/1000))+$CVer;

		CreateScrollbar("Config3a_BVolume",10050,$ConfigBVolumeX,$ConfigBVolumeY,$ConfigBVolumeX2,$ConfigBVolumeY2,$pos,VERTICAL,"ConfigImagePen00");
		Request("Config3a_BVolume", Erase);
		SetScrollSpeed("Config3a_BVolume", $ConfigScrollSpeed);
			//▼アイコンアニメーションの当たり判定
			CreateChoice("Config3a_BVolume_Pro01",0,0,0,0,0,0);
			SetAlias("Config3a_BVolume_Pro01", "Config3a_BVolume_Pro01");
			CreateTexture("@Config3a_BVolume_Pro01/MouseUsual/hit",0,$ConfigBVolumeX,$ConfigBVolumeY,"ConfigImageLine");
			CreateProcess("@Config3a_BVolume_Pro01/MouseOver/button", 10010, 0, 0, "ConfigBVolumeProcessOPEN");
			CreateProcess("@Config3a_BVolume_Pro01/MouseLeave/button", 10010, 0, 0, "ConfigBVolumeProcessSTOP");
			Request("@Config3a_BVolume_Pro01/MouseUsual/hit", Erase);
			//▼カーソル定義
			$ConfigBVolumeX3=$ConfigBVolumeX;
			$ConfigBVolumeY3=($pos/1000)*($ConfigCursor2-$ConfigCursor)+($ConfigCursor);
			$PreConfigBVolumeY=$ConfigBVolumeY3;
			CreateTexture("Config3f_BVolume01", 10010, $ConfigBVolumeX3, $ConfigBVolumeY3, "ConfigImagePen01");
			SetAlias("Config3f_BVolume01", "Config3f_BVolume01");
			CreateTexture("Config3a_BVolume02", 10010, $ConfigBVolumeX3, $ConfigBVolumeY3, "ConfigImagePen02");
			SetAlias("Config3a_BVolume02", "Config3a_BVolume02");
		//▽幅
		$ConfigBVolumeH=ImageHorizon("Config3a_BVolume");
		$ConfigBVolumeV=ImageVertical("Config3a_BVolume");
	$nx=658;
	//説明
	SetSBtn("Config3a_BVolume",$nx);
	//選択中
	SetSelIcon("Config3a_BVolume_Pro01",$nx);//SetSelBtn("Config3a_BVolume_Pro01",$nx);
	SetSelBtn("Config3a_BVolumeS",$nx);

..	//▼定義「効果音の音量」
		$ConfigSVolumeX=581;
		$ConfigSVolumeY=$ConfigMathY;//固定
		$ConfigSVolumeX2=$ConfigSVolumeX;
		$ConfigSVolumeY2=$ConfigMathY2;//固定
		$ConfigSVolumeBaseY=$ConfigMathY;//固定
		$ConfigSVolumeBaseY2=$ConfigMathY2;//固定
		//$ConfigSVolumeBar=$ConfigSVolumeY-6;
		$pos=1000*(1-(#SYSTEM_sound_volume_se/1000))+$CVer;

		CreateScrollbar("Config3a_SVolume",10050,$ConfigSVolumeX,$ConfigSVolumeY,$ConfigSVolumeX2,$ConfigSVolumeY2,$pos,VERTICAL,"ConfigImagePen00");
		Request("Config3a_SVolume", Erase);
		SetScrollSpeed("Config3a_SVolume", $ConfigScrollSpeed);
			//▼アイコンアニメーションの当たり判定
			CreateChoice("Config3a_SVolume_Pro01",0,0,0,0,0,0);
			SetAlias("Config3a_SVolume_Pro01", "Config3a_SVolume_Pro01");
			CreateTexture("@Config3a_SVolume_Pro01/MouseUsual/hit",0,$ConfigSVolumeX,$ConfigSVolumeY,"ConfigImageLine");
			CreateProcess("@Config3a_SVolume_Pro01/MouseOver/button", 10010, 0, 0, "ConfigSVolumeProcessOPEN");
			CreateProcess("@Config3a_SVolume_Pro01/MouseLeave/button", 10010, 0, 0, "ConfigSVolumeProcessSTOP");
			Request("@Config3a_SVolume_Pro01/MouseUsual/hit", Erase);
			//▼カーソル定義
			$ConfigSVolumeX3=$ConfigSVolumeX;
			$ConfigSVolumeY3=($pos/1000)*($ConfigCursor2-$ConfigCursor)+($ConfigCursor);
			$PreConfigSVolumeY=$ConfigSVolumeY3;
			CreateTexture("Config3f_SVolume01", 10010, $ConfigSVolumeX3, $ConfigSVolumeY3, "ConfigImagePen01");
			SetAlias("Config3f_SVolume01", "Config3f_SVolume01");
			CreateTexture("Config3a_SVolume02", 10010, $ConfigSVolumeX3, $ConfigSVolumeY3, "ConfigImagePen02");
			SetAlias("Config3a_SVolume02", "Config3a_SVolume02");
		//▽幅
		$ConfigSVolumeH=ImageHorizon("Config3a_SVolume");
		$ConfigSVolumeV=ImageVertical("Config3a_SVolume");
	$nx=575;
	//説明
	SetSBtn("Config3a_SVolume",$nx);
	//選択中
	SetSelIcon("Config3a_SVolume_Pro01",$nx);//SetSelBtn("Config3a_SVolume_Pro01",$nx);
	SetSelBtn("Config3a_SVolumeS",$nx);

..	//▼定義「音声の音量」
		$ConfigVVolumeX=457;
		$ConfigVVolumeY=$ConfigMathY;//固定
		$ConfigVVolumeX2=$ConfigVVolumeX;
		$ConfigVVolumeY2=$ConfigMathY2;//固定
		$ConfigVVolumeBaseY=$ConfigMathY;//固定
		$ConfigVVolumeBaseY2=$ConfigMathY2;//固定
		//$ConfigVVolumeBar=$ConfigVVolumeY-6;
		$pos=1000*(1-(#SYSTEM_sound_volume_voice/1000))+$CVer;

		CreateScrollbar("Config3a_VVolume",10050,$ConfigVVolumeX,$ConfigVVolumeY,$ConfigVVolumeX2,$ConfigVVolumeY2,$pos,VERTICAL,"ConfigImagePen00");
		Request("Config3a_VVolume", Erase);
		SetScrollSpeed("Config3a_VVolume", $ConfigScrollSpeed);
			//▼アイコンアニメーションの当たり判定
			CreateChoice("Config3a_VVolume_Pro01",0,0,0,0,0,0);
			SetAlias("Config3a_VVolume_Pro01", "Config3a_VVolume_Pro01");
			CreateTexture("@Config3a_VVolume_Pro01/MouseUsual/hit",0,$ConfigVVolumeX,$ConfigVVolumeY,"ConfigImageLine");
			CreateProcess("@Config3a_VVolume_Pro01/MouseOver/button", 10010, 0, 0, "ConfigVVolumeProcessOPEN");
			CreateProcess("@Config3a_VVolume_Pro01/MouseLeave/button", 10010, 0, 0, "ConfigVVolumeProcessSTOP");
			//CreateTexture("@Config3a_VVolume_Pro01/MouseOver/bar", 10010, $ConfigBarX, $ConfigBarY, "ConfigImageBar");
			//CreateSound("@Config3a_VVolume_Pro01/MouseOver/sound", SE, $ConfigSound_over);
			//CreateSound("@Config3a_VVolume_Pro01_sound", SE, $ConfigSound_click);
			//Request("@Config3a_VVolume_Pro01/MouseOver/bar", MulRender);
			Request("@Config3a_VVolume_Pro01/MouseUsual/hit", Erase);
			//▼カーソル定義
			$ConfigVVolumeX3=$ConfigVVolumeX;
			$ConfigVVolumeY3=($pos/1000)*($ConfigCursor2-$ConfigCursor)+($ConfigCursor);
			$PreConfigVVolumeY=$ConfigVVolumeY3;
			CreateTexture("Config3f_VVolume01", 10010, $ConfigVVolumeX3, $ConfigVVolumeY3, "ConfigImagePen01");
			SetAlias("Config3f_VVolume01", "Config3f_VVolume01");
			CreateTexture("Config3a_VVolume02", 10010, $ConfigVVolumeX3, $ConfigVVolumeY3, "ConfigImagePen02");
			SetAlias("Config3a_VVolume02", "Config3a_VVolume02");
		//▽幅
		$ConfigVVolumeH=ImageHorizon("Config3a_VVolume");
		$ConfigVVolumeV=ImageVertical("Config3a_VVolume");
	$nx=451;
	//説明
	SetSBtn("Config3a_VVolume",$nx);
	//選択中
	SetSelIcon("Config3a_VVolume_Pro01",$nx);//SetSelBtn("Config3a_VVolume_Pro01",$nx);
	SetSelBtn("Config3a_VVolumeS",$nx);

	Fade("Config3a_BVolume*/*/*",0,0,null,false);
	Fade("Config3a_BVolume*/*",0,0,null,false);
	Fade("Config3a_BVolume*",0,0,null,false);
	Fade("Config3a_SVolume*/*/*",0,0,null,false);
	Fade("Config3a_SVolume*/*",0,0,null,false);
	Fade("Config3a_SVolume*",0,0,null,false);
	Fade("Config3a_VVolume*/*/*",0,0,null,false);
	Fade("Config3a_VVolume*/*",0,0,null,false);
	Fade("Config3a_VVolume*",0,0,null,false);

}
..	//(3/3)▼定義「音声設定」
function SetPageImg3();
{
	//音声設定のベース
	CreateTexture("Config3f_Ground", 10005, 149, 18, "cg/sys/config/ベース_音声.png");
	
..	//▼定義「音楽再生設定」
	SetOnOffBtn("Config3a_BPlay",701, 348,372, 698);

..	//▼定義「効果音再生設定」
	SetOnOffBtn("Config3a_SPlay",619, 348,372, 616);

..	//▼定義「効果音の試聴」
	SetType1SSel("Config3a_STest", 536, 348, 533, "再生ボタン");
	
..	//▼定義「音声再生設定」
	SetOnOffBtn("Config3a_VPlay",495, 348,372, 493);
	
..	//▼定義「音声の試聴」
	SetType1SSel("Config3a_VTest", 413, 348, 409, "再生ボタン");
..	//▼定義「音声同期」
	SetOnOffBtn("Config3a_VSync",371, 348,372, 368);
..	//▼定義「キャラ別音声再生設定」
	SetAllChrBtn();

	SetPageScrlBar3();

..	//解説テキスト(3/3)
	CreateTexture("Config3t_01_01", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/03_01_01.png");
	CreateTexture("Config3t_02_01", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/03_02_01.png");
	CreateTexture("Config3t_03_01", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/03_03_01.png");
	CreateTexture("Config3t_04_01", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/03_04_01.png");
	CreateTexture("Config3t_04_02", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/03_04_02.png");
	CreateTexture("Config3t_05_01", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/03_05_01.png");
	CreateTexture("Config3t_06_01", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/03_06_01.png");
	CreateTexture("Config3t_07_01", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/03_07_01.png");
	CreateTexture("Config3t_08_01", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/03_08_01.png");
	CreateTexture("Config3t_09_01", 10015, $cfgTxtX, $cfgTxtY, "cg/sys/config/txt/03_09_01.png");
	SetAlias("Config3t_01_01","Config3t_01_01");
	SetAlias("Config3t_02_01","Config3t_02_01");
	SetAlias("Config3t_03_01","Config3t_03_01");
	SetAlias("Config3t_04_01","Config3t_04_01");
	SetAlias("Config3t_04_02","Config3t_04_02");
	SetAlias("Config3t_05_01","Config3t_05_01");
	SetAlias("Config3t_06_01","Config3t_06_01");
	SetAlias("Config3t_07_01","Config3t_07_01");
	SetAlias("Config3t_08_01","Config3t_08_01");
	SetAlias("Config3t_09_01","Config3t_09_01");

}
//リドロー時にチェックが必要なもの
function CfgFadeExitChk()
{
	//文字設定のプレビュー停止チェック
	ChkTextPreview();
	//音声の試聴をフェード停止
	SetVolume("Config3a_VCTest", $ConfigFadeTime, 0, null);
	//効果音の試聴をフェード停止
	SetVolume("Config3a_SETest", $ConfigFadeTime, 0, null);
}

.//■描画「コンフィグ描画」
function ConfigFade()
{
	//リドロー時にチェックが必要なもの
	CfgFadeExitChk();
	
	//●描画「全消し」
	Fade("Config*/*/*", 0, 0, null, false);
	Fade("Config*/*", 0, 0, null, false);
	Fade("Config*", 0, 0, null, true);

	//最下背景、戻る、次ページ
	Fade("Config0a_*/MouseUsual/hit", 0, 1000, null, false);
	Fade("Config9f_ConfigGround*", 0, 1000, null, false);
	Fade("Config8*", 0, 1000, null, false);

	Delete("Config2a_MSpeed*");
	Delete("Config2a_ASpeed*");
	Delete("Config2f_MSpeed*");
	Delete("Config2f_ASpeed*");

	Delete("Config3a_BVolume*");
	Delete("Config3a_SVolume*");
	Delete("Config3a_VVolume*");
	Delete("Config3f_BVolume*");
	Delete("Config3f_SVolume*");
	Delete("Config3f_VVolume*");

	//ページ毎の描画
	//カテゴリ
	if($cfgPage==1){
		//金閣寺
		Fade("Config9f_kkg1_01",0,1000,null,false);
		//基本
		Fade("Config1f_*", 0, 1000, null, false);
		Fade("Config1a_*/MouseUsual/hit", 0, 1000, null, false);
		
		Fade("Config0b_PAGE1icon", 0, 1000, null, false);
		Fade("Config0b_PAGE2/MouseUsual/hit", 0, 1000, null, false);
		Fade("Config0b_PAGE3/MouseUsual/hit", 0, 1000, null, false);
		
		Chg_Confirm();
		Chg_MStop();
		Chg_OpenJ();
		Chg_FScrn();
		Chg_AAuto(0);
		SetFocusPage1();
	}else if($cfgPage==2){
		//金閣寺
		Fade("Config9f_kkg2_13",0,1000,null,false);
		//文字
		Fade("Config2f_*", 0, 1000, null, false);
		Fade("Config2a_*/MouseUsual/hit", 0, 1000, null, false);
		
		Fade("Config0b_PAGE1/MouseUsual/hit", 0, 1000, null, false);
		Fade("Config0b_PAGE2icon", 0, 1000, null, false);
		Fade("Config0b_PAGE3/MouseUsual/hit", 0, 1000, null, false);
		
		Chg_CSkip();
		Chg_ASkip();
		Chg_RdCChg();
		/*
		//●既読箇所の１項目解放版
		Chg_RdASkip();
		*/
		Chg_KVoice();
		SetPageScrlBar2();
		Fade("Config2f_MSpeed01", 0, 1000, null, false);
		Fade("Config2f_ASpeed01", 0, 1000, null, false);
		Chg_SVoice();
		Chg_CABrk();
		Fade("Config2a_TxtPrvw/play", 0, 1000, null, false);
		SetFocusPage2();
	}else if($cfgPage==3){
		//金閣寺
		Fade("Config9f_kkg3_25",0,1000,null,false);
		//音声
		Fade("Config3f_*", 0, 1000, null, false);
		Fade("Config3a_*/MouseUsual/hit", 0, 1000, null, false);
		
		Fade("Config0b_PAGE1/MouseUsual/hit", 0, 1000, null, false);
		Fade("Config0b_PAGE2/MouseUsual/hit", 0, 1000, null, false);
		Fade("Config0b_PAGE3icon", 0, 1000, null, false);
		
		Chg_BPlay();
		SetPageScrlBar3();
		Fade("Config3f_BVolume01", 0, 1000, null, false);
		Chg_SPlay();
		Fade("Config3f_SVolume01", 0, 1000, null, false);
		Chg_VPlay();
		Fade("Config3f_VVolume01", 0, 1000, null, false);
		Chg_VSync();
		Chg_ChrBtn();
		SetFocusPage3();
	}
	
	if($go){
		Fade("コンフィグSCRN背景", 0, 0, null, false);//コンフィグウィンドウ/背景

		//■終了共通演出
		DialogEnd();
	}
	$go=false;
	//★徒歩：「sys_close関係」タイトルから呼び出された場合
	$OnDialog=false;

	//フェード用SCREEN画像
	Fade("コンフィグSCRN背景", $fadetime, 0, null, true);

//					$txt1="";//"|"+#SYSTEM_sound_volume_bgm_default+"|"+#SYSTEM_sound_volume_se_default+"|"+#SYSTEM_sound_volume_voice_default+"|<BR>";
//					$txt2=$txt1+"|"+#SYSTEM_text_speed+"|"+#SYSTEM_auto_wait_per_character+"|<BR>";
//					CreateText("tt",20000,0,0,auto,auto,$txt2);

}


.//◆選択「コンフィグ選択」
function ConfigSelect()
{
	$SYSTEM_keydown_c=false;
	$CFG_WHILE=true;//$SYSTEM_menu_config_enable)
	while($CFG_WHILE)
	{
		if($cfgPage==1){
..			//(1/3)
			select{
..				//★コンフィグ脱出
				if($SYSTEM_keydown_c||$SYSTEM_r_button_down||$SYSTEM_XBOX360_button_b_down){$SYSTEM_menu_config_enable=false;break;}

..				//★キーダウン系
				if($SYSTEM_keydown_f){
					if(!#SYSTEM_window_full_lock){
						#SYSTEM_window_full=!#SYSTEM_window_full;
						#SYSTEM_window_full_lock=false;
						Wait(300);
						$SYSTEM_keydown_f=false;
						Chg_FScrn();
					}
				}else if(($SYSTEM_keydown_esc||$SYSTEM_buttondown_close)&&!$Title_Config){
					ConfigCharacterVoice();
					call_chapter nss/sys_close.nss;
				}else if($SYSTEM_keydown_t){
					ConfigCharacterVoice();
					call_chapter nss/sys_reset.nss;
				}else if($SYSTEM_keydown_r){
					//ConfigCharacterVoice();
					//call_chapter nss/sys_backselect.nss;
				}
			
..				//★出口
				case Config0a_EXIT{$SYSTEM_menu_config_enable=false;}
..				//★次ページ
				case Config0a_NEXT{CfgNextPage();}
				//文字
				case Config0b_PAGE2{CfgMovePage(2);}
				//音声
				case Config0b_PAGE3{CfgMovePage(3);}

..				//★初期化
				case Config1a_Default{ConfigDefaultInit();}
				case Config1a_DefaultS{}
..				//★確認メッセージ
				case Config1a_ConfirmON{
					#no_ask=false;
					Chg_Confirm();
				}
				case Config1a_ConfirmOFF{
					#no_ask=true;
					Chg_Confirm();
				}
				case Config1a_ConfirmS{}
..				//動画の中断とスキップの可否
				case Config1a_MStopON{
					#LOCAL_break_play_movie=true;
					Chg_MStop();
				}
				case Config1a_MStopOFF{
					#LOCAL_break_play_movie=false;
					Chg_MStop();
				}
				case Config1a_MStopS{}
..				//起動時に時刻表を開く
				if(#ClearTrue){
					case Config1a_OpenJON{
						#JIKOKU_open_boot=true;
						Chg_OpenJ();
					}
					case Config1a_OpenJOFF{
						#JIKOKU_open_boot=false;
						Chg_OpenJ();
					}
					case Config1a_OpenJS{}
				}
..				//Twitterの設定を開く
				case Config1a_OpenT{CfgOpenTwitterSetting();}
				case Config1a_OpenTS{}
..				//全画面表示切替
				case Config1a_FScrnON{
					#SYSTEM_window_full=true;
					Wait(300);
					Chg_FScrn();
				}
				case Config1a_FScrnOFF{
					#SYSTEM_window_full=false;
					Wait(300);
					Chg_FScrn();
				}
				case Config1a_FScrnS{}
..				//アスペクト比自動設定
				case Config1a_AAutoON{
					#LOCAL_aspect_in=true;
					#LOCAL_aspect_auto=true;
					if(EnableDirect3DHAL()){
						#SYSTEM_video_aspect_fixed=1;
						#old_video_aspect_fixed=1;
					}else{
						#SYSTEM_video_aspect_fixed=3;
						#old_video_aspect_fixed=3;
					}
					Chg_AAuto($ConfigFadeTime);
					SetFocusPage1();
				}
				case Config1a_AAutoOFF{
					#LOCAL_aspect_in=true;
					#LOCAL_aspect_auto=false;
					Chg_AAuto($ConfigFadeTime);
					SetFocusPage1();
				}
				case Config1a_AAutoS{}
				if(!#LOCAL_aspect_auto){
..					//アスペクト比Ｄ依存/固定
					case Config1a_FAspectON{//固定
						if(#old_video_aspect_fixed==1){
							#SYSTEM_video_aspect_fixed=1;
						}else if(#old_video_aspect_fixed==2){
							#SYSTEM_video_aspect_fixed=2;
						}else if(#old_video_aspect_fixed==3){
							#SYSTEM_video_aspect_fixed=3;
						}else{
							if(!#old_video_aspect_fixed&&EnableDirect3DHAL()){
								#SYSTEM_video_aspect_fixed=1;
								#old_video_aspect_fixed=1;
							}else{
								#SYSTEM_video_aspect_fixed=2;
								#old_video_aspect_fixed=2;
							}
						}
						Chg_AAuto($ConfigFadeTime);
					}
					case Config1a_FAspectOFF{//ディスプレイ依存
						#SYSTEM_video_aspect_fixed=0;
						if(#SYSTEM_window_full){Wait(1000);}
						Chg_AAuto($ConfigFadeTime);
					}
					case Config1a_FAspectS{}
					//ハードウェア補間
					case Config1a_ARatioHW{
						if(EnableDirect3DHAL()){
							#SYSTEM_video_aspect_fixed=1;
							#old_video_aspect_fixed=1;
							Chg_AAuto($ConfigFadeTime);
						}else{
							Message("ご注意","現在のマシン環境では、「ハードウェア補完」はご利用になれません。",OK,EXCLAMATION);
						}
					}
					//ニアレストネイバー法
					case Config1a_ARatioNN{
						#SYSTEM_video_aspect_fixed=2;
						#old_video_aspect_fixed=2;
						Chg_AAuto($ConfigFadeTime);
					}
					//バイリニア法
					case Config1a_ARatioBR{
						#SYSTEM_video_aspect_fixed=3;
						#old_video_aspect_fixed=3;
						Chg_AAuto($ConfigFadeTime);
					}
				}
..				//ユーザー登録
				case Config1a_You{
					#SYSTEM_window_full=false;
					System("OPEN:https://www.nitroplus.co.jp/userentry/2001/", "", "");
				}
..				//QRコード
				case Config1a_QRc{
					#SYSTEM_window_full=false;
					System("OPEN:http://www.nitroplus.co.jp/", "", "");
				}
..				//HP
				case Config1a_Com{
					#SYSTEM_window_full=false;
					System("OPEN:http://www.nitroplus.co.jp/", "", "");
				}
			}
		}else if($cfgPage==2){
..			//(2/3)
			if($TextPreview){
				//テキストプレビュー
				DoTextPreview();
				$TextPreview=false;
			}else{
			select{
..				//★コンフィグ脱出
				if($SYSTEM_keydown_c||$SYSTEM_r_button_down||$SYSTEM_XBOX360_button_b_down){$SYSTEM_menu_config_enable=false;break;}

..				//★キーダウン系
				if($SYSTEM_keydown_f){
					if(!#SYSTEM_window_full_lock){
						#SYSTEM_window_full=!#SYSTEM_window_full;
						#SYSTEM_window_full_lock=false;
						Wait(300);
						$SYSTEM_keydown_f=false;
					}
				}else if(($SYSTEM_keydown_esc||$SYSTEM_buttondown_close)&&!$Title_Config){
					ConfigCharacterVoice();
					call_chapter nss/sys_close.nss;
				}else if($SYSTEM_keydown_t){
					ConfigCharacterVoice();
					call_chapter nss/sys_reset.nss;
				}else if($SYSTEM_keydown_r){
					//ConfigCharacterVoice();
					//call_chapter nss/sys_backselect.nss;
				}
			
..				//★全体スクロール跡地
				CursorPosition($ConX,$ConY);
				
..				//★バー系判定用
				#SYSTEM_text_speed=ScrollbarValue("Config2a_MSpeed")*$text_speed_max;
				//#SYSTEM_text_speed=ScrollbarValue("Config2a_MSpeed")*1000;
				#SYSTEM_auto_wait_per_character=ScrollbarValue("Config2a_ASpeed")*200;
				
				
..				//★出口
				case Config0a_EXIT{$SYSTEM_menu_config_enable=false;}
..				//★次ページ
				case Config0a_NEXT{CfgNextPage();}
				//基本
				case Config0b_PAGE1{CfgMovePage(1);}
				//音声
				case Config0b_PAGE3{CfgMovePage(3);}
				
..				//1.事刻毎に自動文字送りを解除
				case Config2a_CSkipON{//解除する
					#JIKOKU_auto_text_cancel=false;
					Chg_CSkip();
				}
				case Config2a_CSkipOFF{//解除しない
					#JIKOKU_auto_text_cancel=true;
					Chg_CSkip();
				}
				case Config2a_CSkipS{}
..				//2.未読時でもスキップ
				case Config2a_ASkipON{
					#SYSTEM_skip_absolute=true;
					Chg_ASkip();
				}
				case Config2a_ASkipOFF{
					#SYSTEM_skip_absolute=false;
					Chg_ASkip();
				}
				case Config2a_ASkipS{}
..				//3.既読箇所の文字色を変更
				case Config2a_RdCChgON{
					#SYSTEM_read_text_color_change=true;
					Chg_RdCChg();
				}
				case Config2a_RdCChgOFF{
					#SYSTEM_read_text_color_change=false;
					Chg_RdCChg();
				}
				case Config2a_RdCChgS{}
				/*
				//●既読箇所の１項目解放版
..				//4.既読箇所を自動的にスキップ
				case Config2a_RdASkipON{
					#SYSTEM_read_text_skip=true;
					Chg_RdASkip();
				}
				case Config2a_RdASkipOFF{
					#SYSTEM_read_text_skip=false;
					Chg_RdASkip();
				}
				case Config2a_RdASkipS{}
				*/
..				//5.クリック時に音声を停止
				case Config2a_KVoiceON{
					#SYSTEM_click_break_voice=true;
					Chg_KVoice();
				}
				case Config2a_KVoiceOFF{
					#SYSTEM_click_break_voice=false;
					Chg_KVoice();
				}
				case Config2a_KVoiceS{}
..				//6.▼定義「文字の表示速度」
				case Config2a_MSpeed{
					#SYSTEM_text_speed=ScrollbarValue("Config2a_MSpeed")*$text_speed_max;
					//#SYSTEM_text_speed=ScrollbarValue("Config2a_MSpeed")*1000;
					//SetVolume("@Config2a_MSpeed_Pro01/MouseOver/sound", 0, 0, NULL);
					//Request("Config2a_MSpeed_Pro01_sound", Stop);
					//Request("Config2a_MSpeed_Pro01_sound", Play);
					Fade("@Config2a_MSpeed02", 0, 1000, null, false);
					Fade("@Config2f_MSpeed01", 0, 0, null, false);
					//$txt="|"+#SYSTEM_text_speed+"|";CreateText("tt",10020,0,0,auto,auto,$txt);
				}case Config2a_MSpeed_Pro01{}
				Position("Config2a_MSpeed",$ConfigMSpeedX,$ConfigMSpeedY);
				if($PreConfigMSpeedY!=$ConfigMSpeedY){
					//Move("@Config2a_MSpeed_Pro02/MouseUsual/hit", 0, $ConfigMSpeedX, $ConfigMSpeedY, null, false);
					Move("Config2f_MSpeed01", 0, $ConfigMSpeedX, $ConfigMSpeedY, null, false);
					Move("Config2a_MSpeed02", 0, $ConfigMSpeedX, $ConfigMSpeedY, null, false);
				}
				$PreConfigMSpeedY=$ConfigMSpeedY;
				case Config2a_MSpeedS{}
				
..				//8.▼定義「自動文字送り時の待ち時間」
				case Config2a_ASpeed{
					#SYSTEM_auto_wait_per_character=ScrollbarValue("Config2a_ASpeed")*200;
					//SetVolume("@Config2a_ASpeed_Pro01/MouseOver/sound", 0, 0, NULL);
					//Request("Config2a_ASpeed_Pro01_sound", Stop);
					//Request("Config2a_ASpeed_Pro01_sound", Play);
					Fade("@Config2a_ASpeed02", 0, 1000, null, false);
					Fade("@Config2f_ASpeed01", 0, 0, null, false);
				}case Config2a_ASpeed_Pro01{}
				Position("Config2a_ASpeed",$ConfigASpeedX,$ConfigASpeedY);
				if($PreConfigASpeedY!=$ConfigASpeedY){
					//Move("@Config2a_ASpeed_Pro02/MouseUsual/hit", 0, $ConfigASpeedX, $ConfigASpeedY, null, false);
					Move("Config2f_ASpeed01", 0, $ConfigASpeedX, $ConfigASpeedY, null, false);
					Move("Config2a_ASpeed02", 0, $ConfigASpeedX, $ConfigASpeedY, null, false);
				}
				$PreConfigASpeedY=$ConfigASpeedY;
				case Config2a_ASpeedS{}
				
..				//9.▼定義「自動文字送り時の音声待機」
				case Config2a_SVoice{
					#SYSTEM_auto_text_break_voice=!#SYSTEM_auto_text_break_voice;
					Chg_SVoice();
				}
				case Config2a_SVoiceS{}
..				//10.▼定義「クリックで自動文字送りの解除」
				case Config2a_CABrkON{
					#SYSTEM_auto_ignore_key_cancel=false;
					Chg_CABrk();
				}
				case Config2a_CABrkOFF{
					#SYSTEM_auto_ignore_key_cancel=true;
					Chg_CABrk();
				}
				case Config2a_CABrkS{}
..				//11.文字設定のプレビュー
				case Config2a_TxtPrvw{
					$TextPreview=true;//DoTextPreview();
				}
				case Config2a_TxtPrvwS{}
				//Drawの直前のcaseでpng描画不振を若干回避
				case Config2a_Blank{}
//				Wait(16);//スクロールバーを回すため
				Draw();
			}
			}//if
		}else if($cfgPage==3){
..			//(3/3)
			select{
..				//★コンフィグ脱出
				if($SYSTEM_keydown_c||$SYSTEM_r_button_down||$SYSTEM_XBOX360_button_b_down){$SYSTEM_menu_config_enable=false;break;}
	
..				//★キーダウン系
				if($SYSTEM_keydown_f){
					if(!#SYSTEM_window_full_lock){
						#SYSTEM_window_full=!#SYSTEM_window_full;
						#SYSTEM_window_full_lock=false;
						Wait(300);
						$SYSTEM_keydown_f=false;
					}
				}else if(($SYSTEM_keydown_esc||$SYSTEM_buttondown_close)&&!$Title_Config){
					ConfigCharacterVoice();
					call_chapter nss/sys_close.nss;
				}else if($SYSTEM_keydown_t){
					ConfigCharacterVoice();
					call_chapter nss/sys_reset.nss;
				}else if($SYSTEM_keydown_r){
					//ConfigCharacterVoice();
					//call_chapter nss/sys_backselect.nss;
				}
			
..				//★全体スクロール跡地
				CursorPosition($ConX,$ConY);
				
..				//★バー系判定用
				#SYSTEM_sound_volume_bgm=(1-ScrollbarValue("Config3a_BVolume"))*1000;
				#SYSTEM_sound_volume_se=(1-ScrollbarValue("Config3a_SVolume"))*1000;
				#SYSTEM_sound_volume_voice=(1-ScrollbarValue("Config3a_VVolume"))*1000;
				
..				//★出口
				case Config0a_EXIT{$SYSTEM_menu_config_enable=false;}
..				//★次ページ
				case Config0a_NEXT{CfgNextPage();}
				//基本
				case Config0b_PAGE1{CfgMovePage(1);}
				//文字
				case Config0b_PAGE2{CfgMovePage(2);}
				
..				//音楽再生設定
				case Config3a_BPlayON{
					#SYSTEM_sound_bgm=true;
					Chg_BPlay();
				}
				case Config3a_BPlayOFF{
					#SYSTEM_sound_bgm=false;
					Chg_BPlay();
				}
				case Config3a_BPlayS{}
..				//音楽の音量
				case Config3a_BVolume{
					#SYSTEM_sound_volume_bgm=(1-ScrollbarValue("Config3a_BVolume"))*1000;
					SetVolume("@Config3a_BVolume_Pro01/MouseOver/sound", 0, 0, NULL);
					Request("Config3a_BVolume_Pro01_sound", Stop);
					Request("Config3a_BVolume_Pro01_sound", Play);
					Fade("@Config3a_BVolume02", 0, 1000, null, false);
					Fade("@Config3f_BVolume01", 0, 0, null, false);
				}case Config3a_BVolume_Pro01{}
				Position("Config3a_BVolume",$ConfigBVolumeX,$ConfigBVolumeY);
				if($PreConfigBVolumeY!=$ConfigBVolumeY){
					Move("@Config3a_BVolume_Pro02/MouseUsual/hit", 0, $ConfigBVolumeX, $ConfigBVolumeY, null, false);
					Move("Config3f_BVolume01", 0, $ConfigBVolumeX, $ConfigBVolumeY, null, false);
					Move("Config3a_BVolume02", 0, $ConfigBVolumeX, $ConfigBVolumeY, null, false);
				}
				$PreConfigBVolumeY=$ConfigBVolumeY;
				case Config3a_BVolumeS{
					//$txt1="|"+#SYSTEM_sound_volume_bgm_default+"|"+#SYSTEM_sound_volume_se_default+"|"+#SYSTEM_sound_volume_voice_default+"|<BR>";
					//$txt2=$txt1+"|"+#SYSTEM_sound_volume_bgm+"|"+#SYSTEM_sound_volume_se+"|"+#SYSTEM_sound_volume_voice+"|<BR>";
					//CreateText("tt",20000,0,0,auto,auto,$txt2);
				}
				
..				//効果音再生設定
				case Config3a_SPlayON{
					#SYSTEM_sound_se=true;
					Chg_SPlay();
				}
				case Config3a_SPlayOFF{
					#SYSTEM_sound_se=false;
					Chg_SPlay();
				}
				case Config3a_SPlayS{}
..				//効果音の音量
				case Config3a_SVolume{
					#SYSTEM_sound_volume_se=(1-ScrollbarValue("Config3a_SVolume"))*1000;
					SetVolume("@Config3a_SVolume_Pro01/MouseOver/sound", 0, 0, NULL);
					Request("Config3a_SVolume_Pro01_sound", Stop);
					Request("Config3a_SVolume_Pro01_sound", Play);
					Fade("@Config3a_SVolume02", 0, 1000, null, false);
					Fade("@Config3f_SVolume01", 0, 0, null, false);
				}case Config3a_SVolume_Pro01{}
				Position("Config3a_SVolume",$ConfigSVolumeX,$ConfigSVolumeY);
				if($PreConfigSVolumeY!=$ConfigSVolumeY){
					//Move("@Config3a_SVolume_Pro02/MouseUsual/hit", 0, $ConfigSVolumeX, $ConfigSVolumeY, null, false);
					Move("Config3f_SVolume01", 0, $ConfigSVolumeX, $ConfigSVolumeY, null, false);
					Move("Config3a_SVolume02", 0, $ConfigSVolumeX, $ConfigSVolumeY, null, false);
				}
				$PreConfigSVolumeY=$ConfigSVolumeY;
				case Config3a_SVolumeS{}
				
..				//効果音の試聴
				case Config3a_STest{Cfg_SETest();}
				case Config3a_STestS{}
				
..				//音声再生設定
				case Config3a_VPlayON{
					#SYSTEM_sound_voice=true;
					Chg_VPlay();
				}
				case Config3a_VPlayOFF{
					#SYSTEM_sound_voice=false;
					Chg_VPlay();
				}
				case Config3a_VPlayS{}
..				//音声の音量
				case Config3a_VVolume{
					#SYSTEM_sound_volume_voice=(1-ScrollbarValue("Config3a_VVolume"))*1000;
					SetVolume("@Config3a_VVolume_Pro01/MouseOver/sound", 0, 0, NULL);
					Request("Config3a_VVolume_Pro01_sound", Stop);
					Request("Config3a_VVolume_Pro01_sound", Play);
					Fade("@Config3a_VVolume02", 0, 1000, null, false);
					Fade("@Config3f_VVolume01", 0, 0, null, false);
				}case Config3a_VVolume_Pro01{}
				Position("Config3a_VVolume",$ConfigVVolumeX,$ConfigVVolumeY);
				if($PreConfigVVolumeY!=$ConfigVVolumeY){
					//Move("@Config3a_VVolume_Pro02/MouseUsual/hit", 0, $ConfigVVolumeX, $ConfigVVolumeY, null, false);
					Move("Config3f_VVolume01", 0, $ConfigVVolumeX, $ConfigVVolumeY, null, false);
					Move("Config3a_VVolume02", 0, $ConfigVVolumeX, $ConfigVVolumeY, null, false);
				}
				$PreConfigVVolumeY=$ConfigVVolumeY;
				case Config3a_VVolumeS{}
..				//音声の試聴
				case Config3a_VTest{Cfg_VCTest();}
				case Config3a_VTestS{}
..				//音声同期
				case Config3a_VSyncON{
					#SYSTEM_sync_voice_and_text=true;
					Chg_VSync();
				}
				case Config3a_VSyncOFF{
					#SYSTEM_sync_voice_and_text=false;
					Chg_VSync();
				}
				case Config3a_VSyncS{}
..				//キャラ別音声再生設定
				case Config3a_CV01_chara{$ConfigCV_While=1;ConfigVoiceFade();}
				case Config3a_CV02_chara{$ConfigCV_While=2;ConfigVoiceFade();}
				case Config3a_CV03_chara{$ConfigCV_While=3;ConfigVoiceFade();}
				case Config3a_CV04_chara{$ConfigCV_While=4;ConfigVoiceFade();}
				case Config3a_CV05_chara{$ConfigCV_While=5;ConfigVoiceFade();}
				case Config3a_CV06_chara{$ConfigCV_While=6;ConfigVoiceFade();}
				case Config3a_CV07_chara{$ConfigCV_While=7;ConfigVoiceFade();}
				case Config3a_CV08_chara{$ConfigCV_While=8;ConfigVoiceFade();}
				case Config3a_CV09_chara{$ConfigCV_While=9;ConfigVoiceFade();}
				case Config3a_CV10_chara{$ConfigCV_While=10;ConfigVoiceFade();}
				case Config3a_CV11_chara{$ConfigCV_While=11;ConfigVoiceFade();}
				case Config3a_CV12_chara{$ConfigCV_While=12;ConfigVoiceFade();}
				case Config3a_CV13_chara{$ConfigCV_While=13;ConfigVoiceFade();}
				case Config3a_CV14_chara{$ConfigCV_While=14;ConfigVoiceFade();}
				case Config3a_CV15_chara{$ConfigCV_While=15;ConfigVoiceFade();}
				case Config3a_CV16_chara{$ConfigCV_While=16;ConfigVoiceFade();}
				case Config3a_CV17_chara{$ConfigCV_While=17;ConfigVoiceFade();}
				case Config3a_CV18_chara{$ConfigCV_While=18;ConfigVoiceFade();}
				case Config3a_CV19_chara{$ConfigCV_While=19;ConfigVoiceFade();}
				case Config3a_CV20_chara{$ConfigCV_While=20;ConfigVoiceFade();}
				case Config3a_CV21_chara{$ConfigCV_While=21;ConfigVoiceFade();}
				case Config3a_CV22_chara{$ConfigCV_While=22;ConfigVoiceFade();}
				case Config3a_CV23_chara{$ConfigCV_While=23;ConfigVoiceFade();}
				case Config3a_CV24_chara{$ConfigCV_While=24;ConfigVoiceFade();}
				case Config3a_CV25_chara{$ConfigCV_While=25;ConfigVoiceFade();}
				//Drawの直前のcaseでpng描画不振を若干回避
				case Config3a_Blank{}
//				Wait(16);//スクロールバーを回すため
				Draw();
			}
		}else{
			break;
		}
		if(!$SYSTEM_menu_config_enable){$CFG_WHILE=false;}
		if($ConfigBreakFlag){$CFG_WHILE=false;}
	}

}
.//☆変更時描画用

..//基本(1/3)
..		//確認メッセージ
function Chg_Confirm()
{
	if(#no_ask){//たずねない
		Fade("Config1a_ConfirmON02",$ConfigFadeTime,1000,null,false);
		Fade("Config1a_ConfirmOFF02",$ConfigFadeTime,0,null,false);
	}else{
		Fade("Config1a_ConfirmON02",$ConfigFadeTime,0,null,false);
		Fade("Config1a_ConfirmOFF02",$ConfigFadeTime,1000,null,false);
	}
	Fade("Config1a_ConfirmON01",$ConfigFadeTime,1000,null,false);
	Fade("Config1a_ConfirmOFF01",$ConfigFadeTime,1000,null,false);
}
..		//動画の中断とスキップの可否
function Chg_MStop()
{
	if(#LOCAL_break_play_movie){
		Fade("Config1a_MStopON02", 0, 0, null, false);
		Fade("Config1a_MStopOFF02", 0, 1000, null, false);
	}else{
		Fade("Config1a_MStopON02", 0, 1000, null, false);
		Fade("Config1a_MStopOFF02", 0, 0, null, false);
	}
	Fade("Config1a_MStopON01", 0, 1000, null, false);
	Fade("Config1a_MStopOFF01", 0, 1000, null, false);
}
..		//起動時に時刻表を開く
function Chg_OpenJ()
{
	if(#JIKOKU_open_boot){
		Fade("Config1a_OpenJON02", 0, 0, null, false);
		Fade("Config1a_OpenJOFF02", 0, 1000, null, false);
	}else{
		Fade("Config1a_OpenJON02", 0, 1000, null, false);
		Fade("Config1a_OpenJOFF02", 0, 0, null, false);
	}
	Fade("Config1a_OpenJON01", 0, 1000, null, false);
	Fade("Config1a_OpenJOFF01", 0, 1000, null, false);
}
..		//全画面表示切替
function Chg_FScrn()
{
	if(#SYSTEM_window_full){
		Fade("Config1a_FScrnON02", 0, 0, null, false);
		Fade("Config1a_FScrnOFF02", 0, 1000, null, false);
	}else{
		Fade("Config1a_FScrnON02", 0, 1000, null, false);
		Fade("Config1a_FScrnOFF02", 0, 0, null, false);
	}
	Fade("Config1a_FScrnON01", 0, 1000, null, false);
	Fade("Config1a_FScrnOFF01", 0, 1000, null, false);
}
..		//アスペクト比自動設定
function Chg_AAuto($_tm)
{
//$txt=":"+#SYSTEM_video_aspect_fixed+":"+#LOCAL_aspect_auto+":"+#old_video_aspect_fixed;
//CreateText("tt",10020,0,0,auto,auto,$txt);
	if(#LOCAL_aspect_auto){
		//自動設定
		Fade("Config1a_AAutoON02", $_tm, 0, null, false);
		Fade("Config1a_AAutoOFF02", $_tm, 1000, null, false);
		
		Fade("Config1a_FAspectON02",$_tm,1000,null,false);
		Fade("Config1a_FAspectOFF02",$_tm,0,null,false);
		
		Fade("Config1a_ARatioHW02",$_tm,1000,null,false);//$ConfigFadeTime
		Fade("Config1a_ARatioNN02",$_tm,0,null,false);
		Fade("Config1a_ARatioBR02",$_tm,0,null,false);
		
		Fade("Config1a_FAspectON03",$_tm,1000,null,false);
		Fade("Config1a_FAspectOFF03",$_tm,1000,null,false);
		Fade("Config1a_ARatioHW03",$_tm,1000,null,false);
		Fade("Config1a_ARatioNN03",$_tm,1000,null,false);
		Fade("Config1a_ARatioBR03",$_tm,1000,null,false);
	}else{
		//上級設定
		Fade("Config1a_AAutoON02", $_tm, 1000, null, false);
		Fade("Config1a_AAutoOFF02", $_tm, 0, null, false);
		
		if(#SYSTEM_video_aspect_fixed==0){//ディスプレイ依存
			Fade("Config1a_FAspectON02",$_tm,1000,null,false);//固定
			Fade("Config1a_FAspectOFF02",$_tm,0,null,false);//Ｄ依存
		}else{
			Fade("Config1a_FAspectON02",$_tm,0,null,false);
			Fade("Config1a_FAspectOFF02",$_tm,1000,null,false);
		}
		
		Fade("Config1a_ARatioHW02",$_tm,1000,null,false);
		Fade("Config1a_ARatioNN02",$_tm,1000,null,false);
		Fade("Config1a_ARatioBR02",$_tm,1000,null,false);
		
		if(#SYSTEM_video_aspect_fixed==0){
			//ディスプレイ依存
		}else if(#old_video_aspect_fixed==1){
			#SYSTEM_video_aspect_fixed=1;
			Fade("Config1a_ARatioHW02",$_tm,0,null,false);
		}else if(#old_video_aspect_fixed==2){
			#SYSTEM_video_aspect_fixed=2;
			Fade("Config1a_ARatioNN02",$_tm,0,null,false);
		}else if(#old_video_aspect_fixed==3){
			#SYSTEM_video_aspect_fixed=3;
			Fade("Config1a_ARatioBR02",$_tm,0,null,false);
		}else{
			if(!#old_video_aspect_fixed&&EnableDirect3DHAL()){
				#SYSTEM_video_aspect_fixed=1;
				#old_video_aspect_fixed=1;
				Fade("Config1a_ARatioHW02",$_tm,1000,null,false);
			}else{
				#SYSTEM_video_aspect_fixed=2;
				#old_video_aspect_fixed=2;
				Fade("Config1a_ARatioNN02",$_tm,1000,null,false);
			}
		}
		
		Fade("Config1a_FAspectON03",$_tm,0,null,false);
		Fade("Config1a_FAspectOFF03",$_tm,0,null,false);
		Fade("Config1a_ARatioHW03",$_tm,0,null,false);
		Fade("Config1a_ARatioNN03",$_tm,0,null,false);
		Fade("Config1a_ARatioBR03",$_tm,0,null,false);
	}
	Fade("Config1a_AAutoON01", $_tm, 1000, null, false);
	Fade("Config1a_AAutoOFF01", $_tm, 1000, null, false);
	Fade("Config1a_FAspectON01", $_tm, 1000, null, false);
	Fade("Config1a_FAspectOFF01", $_tm, 1000, null, false);
	Fade("Config1a_ARatioHW01",$_tm,1000,null,false);
	Fade("Config1a_ARatioNN01",$_tm,1000,null,false);
	Fade("Config1a_ARatioBR01",$_tm,1000,null,false);
}

..//文字(2/3)
..		//事刻毎に自動文字送りを解除
function Chg_CSkip()
{
	if(#JIKOKU_auto_text_cancel){//解除しない
		Fade("Config2a_CSkipON02", 0, 1000, null, false);
		Fade("Config2a_CSkipOFF02", 0, 0, null, false);
	}else{//解除する
		Fade("Config2a_CSkipON02", 0, 0, null, false);
		Fade("Config2a_CSkipOFF02", 0, 1000, null, false);
	}
	Fade("Config2a_CSkipON01", 0, 1000, null, false);
	Fade("Config2a_CSkipOFF01", 0, 1000, null, false);
}
..		//未読時でもスキップ
function Chg_ASkip()
{
	if(#SYSTEM_skip_absolute){
		Fade("Config2a_ASkipON02", 0, 0, null, false);
		Fade("Config2a_ASkipOFF02", 0, 1000, null, false);
	}else{
		Fade("Config2a_ASkipON02", 0, 1000, null, false);
		Fade("Config2a_ASkipOFF02", 0, 0, null, false);
	}
	Fade("Config2a_ASkipON01", 0, 1000, null, false);
	Fade("Config2a_ASkipOFF01", 0, 1000, null, false);
}
..		//既読箇所の文字色を変更
function Chg_RdCChg()
{
	if(#SYSTEM_read_text_color_change){
		Fade("Config2a_RdCChgON02", 0, 0, null, false);
		Fade("Config2a_RdCChgOFF02", 0, 1000, null, false);
	}else{
		Fade("Config2a_RdCChgON02", 0, 1000, null, false);
		Fade("Config2a_RdCChgOFF02", 0, 0, null, false);
	}
	Fade("Config2a_RdCChgON01", 0, 1000, null, false);
	Fade("Config2a_RdCChgOFF01", 0, 1000, null, false);
}
..		//既読箇所を自動的にスキップ
function Chg_RdASkip()
{
	if(#SYSTEM_read_text_skip){
		Fade("Config2a_RdASkipON02", 0, 0, null, false);
		Fade("Config2a_RdASkipOFF02", 0, 1000, null, false);
	}else{
		Fade("Config2a_RdASkipON02", 0, 1000, null, false);
		Fade("Config2a_RdASkipOFF02", 0, 0, null, false);
	}
	Fade("Config2a_RdASkipON01", 0, 1000, null, false);
	Fade("Config2a_RdASkipOFF01", 0, 1000, null, false);
}
..		//クリック時に音声を停止
function Chg_KVoice()
{
	if(#SYSTEM_click_break_voice){//停止する
		Fade("Config2a_KVoiceON02", 0, 0, null, false);
		Fade("Config2a_KVoiceOFF02", 0, 1000, null, false);
	}else{
		Fade("Config2a_KVoiceON02", 0, 1000, null, false);
		Fade("Config2a_KVoiceOFF02", 0, 0, null, false);
	}
	Fade("Config2a_KVoiceON01", 0, 1000, null, false);
	Fade("Config2a_KVoiceOFF01", 0, 1000, null, false);
}
..		//自動文字送り時の音声待機
function Chg_SVoice()
{
	if(#SYSTEM_auto_text_break_voice){//停止する
		Fade("Config2a_SVoice/chudan", 0, 1000, null, false);
		Request("Config2a_SVoice/MouseOver/iconT",Erase);
		Request("Config2a_SVoice/MouseClick/iconT",Erase);
		Request("Config2a_SVoice/MouseOver/iconC",Enter);
		Request("Config2a_SVoice/MouseClick/iconC",Enter);
	}else{
		Fade("Config2a_SVoice/chudan", 0, 0, null, false);
		Request("Config2a_SVoice/MouseOver/iconT",Enter);
		Request("Config2a_SVoice/MouseClick/iconT",Enter);
		Request("Config2a_SVoice/MouseOver/iconC",Erase);
		Request("Config2a_SVoice/MouseClick/iconC",Erase);
	}
	Fade("Config2a_SVoice/taiki", 0, 1000, null, false);
}
..		//クリックで自動文字送りの解除
function Chg_CABrk()
{
	if(#SYSTEM_auto_ignore_key_cancel){
		Fade("Config2a_CABrkON02", 0, 1000, null, false);
		Fade("Config2a_CABrkOFF02", 0, 0, null, false);
	}else{
		Fade("Config2a_CABrkON02", 0, 0, null, false);
		Fade("Config2a_CABrkOFF02", 0, 1000, null, false);
	}
	Fade("Config2a_CABrkON01", 0, 1000, null, false);
	Fade("Config2a_CABrkOFF01", 0, 1000, null, false);
}
..		//文字設定のプレビュー
function DoTextPreview()
{
	SetFont("ＭＳゴシック", 20, #000000, #FFFFFF, 500, AROUND);

	CreateText("Config2a_ptxt",10026,220,14,auto,auto,"ビビッたら負けだ、人生は一度だ。ブッちぎれ！答えは後だ！");
	Request("Config2a_ptxt",NoLog);
	Request("Config2a_ptxt", Enter);
	
	//Request("Config2a_TxtPrvw/MouseOver/iconP",Erase);
	//Request("Config2a_TxtPrvw/MouseOver/iconS",Enter);
	Move("Config2f_View", 0, @0, 20, null, true);
	
	WaitText("Config2a_ptxt", null);
	
	//WaitKey();
	CreateChoice("Config2a_TxtPrvwPlay0",0,0,0,0,0,0);
	CreateColor("Config2a_TxtPrvwPlay0/MouseUsual/hit", 10010, 0, 0, 1024,600, #FFFFFF);
	Request("Config2a_TxtPrvwPlay0/MouseUsual/hit",Erase);
	Request("Config2a_TxtPrvwPlay0",UnClickable);
	CreateChoice("Config2a_TxtPrvwPlay",0,0,0,0,0,0);
	CreateTexture("Config2a_TxtPrvwPlay/MouseUsual/hit", 10010, 411, 348, "cg/sys/config/再生ボタンoff.png");
	Request("Config2a_TxtPrvwPlay/MouseUsual/hit",Erase);
	
	SetNextFocus("Config2a_TxtPrvwPlay/MouseUsual/hit","Config2a_TxtPrvwPlay/MouseUsual/hit",LEFT);
	SetNextFocus("Config2a_TxtPrvwPlay/MouseUsual/hit","Config2a_TxtPrvwPlay/MouseUsual/hit",RIGHT);
	SetNextFocus("Config2a_TxtPrvwPlay/MouseUsual/hit","Config2a_TxtPrvwPlay/MouseUsual/hit",DOWN);
	SetNextFocus("Config2a_TxtPrvwPlay/MouseUsual/hit","Config2a_TxtPrvwPlay/MouseUsual/hit",UP);

	select{
..				//★コンフィグ脱出$SYSTEM_menu_config_enable=false;
				if($SYSTEM_keydown_c||$SYSTEM_r_button_down||$SYSTEM_XBOX360_button_b_down){break;}

..				//★キーダウン系
				if($SYSTEM_keydown_f){
					if(!#SYSTEM_window_full_lock){
						#SYSTEM_window_full=!#SYSTEM_window_full;
						#SYSTEM_window_full_lock=false;
						Wait(300);
						$SYSTEM_keydown_f=false;
					}
				}else if(($SYSTEM_keydown_esc||$SYSTEM_buttondown_close)&&!$Title_Config){
					ConfigCharacterVoice();
					call_chapter nss/sys_close.nss;
				}else if($SYSTEM_keydown_t){
					ConfigCharacterVoice();
					call_chapter nss/sys_reset.nss;
				}else if($SYSTEM_keydown_r){
					//ConfigCharacterVoice();
					//call_chapter nss/sys_backselect.nss;
				}
				case Config2a_TxtPrvwPlay0{break;}
				case Config2a_TxtPrvwPlay{break;}
	
	}
	$SYSTEM_r_button_down=false;
	Delete("Config2a_TxtPrvwPlay*");

	Delete("Config2a_ptxt");
	//Request("Config2a_TxtPrvw/MouseOver/iconP",Enter);
	//Request("Config2a_TxtPrvw/MouseOver/iconS",Erase);
	Move("Config2f_View", 0, @0, -120, null, true);
return;
	if($TXT_PREVIEW){
		StopTextPreview();
		Fade("Config2a_TxtPrvw/stop", 0, 0, null, false);
		Request("Config2a_TxtPrvw/MouseOver/iconP",Enter);
		Request("Config2a_TxtPrvw/MouseClick/iconP",Enter);
		Request("Config2a_TxtPrvw/MouseOver/iconS",Erase);
		Request("Config2a_TxtPrvw/MouseClick/iconS",Erase);
	}else{
		ShowTextPreview();
		Fade("Config2a_TxtPrvw/stop", 0, 1000, null, false);
		Request("Config2a_TxtPrvw/MouseOver/iconP",Erase);
		Request("Config2a_TxtPrvw/MouseClick/iconP",Erase);
		Request("Config2a_TxtPrvw/MouseOver/iconS",Enter);
		Request("Config2a_TxtPrvw/MouseClick/iconS",Enter);
	}
}
function ShowTextPreview()
{
	CreateProcess("Config2f_TextViewPrcs", 10020, 0, 0, "ShowTextPreviewPrcs");
	Request("Config2f_TextViewPrcs", Start);
	Move("Config2f_View", 0, @0, 20, null, true);
	$TXT_PREVIEW=true;
}
//文字設定のプレビュー停止チェック
function ChkTextPreview()
{
	if($TXT_PREVIEW){
		StopTextPreview();
	}
}
function StopTextPreview()
{
	$TXT_PREVIEW_SHOW=false;
	Request("Config2f_TextViewPrcs/Config2a_ptxt", PushText);Wait(8);
	Request("Config2f_TextViewPrcs", Stop);
	Delete("Config2f_TextViewPrcs");
	$TXT_PREVIEW=false;
	Move("Config2f_View", 0, @0, -120, null, true);
}
//文字設定のプレビューのプロセス
function ShowTextPreviewPrcs()
{
	SetFont("ＭＳゴシック", 20, #000000, #FFFFFF, 500, AROUND);
	begin:
	
	$TXT_PREVIEW_SHOW=true;
	//while($TXT_PREVIEW_SHOW)
	//{
		if($TXT_PREVIEW_SHOW){
			CreateText("Config2a_ptxt",10020,220,14,auto,auto,"ビビッたら負けだ、人生は一度だ。ブッちぎれ！答えは後だ！");
			Request("Config2a_ptxt",NoLog);
			//Request("Config2a_ptxt", Erase);
			Request("Config2a_ptxt", Enter);
			WaitText("Config2a_ptxt", null);
		}else{break;
		}
		Wait(1000);
		if($TXT_PREVIEW_SHOW){
			//Request("Config2a_ptxt", Erase);
			//Delete("Config2a_ptxt");
			//Draw();
		}else{break;
		}
		Wait(500);
	//}
}
..//音声(3/3)
..		//音楽再生設定
function Chg_BPlay()
{
	if(#SYSTEM_sound_bgm){
		Fade("Config3a_BPlayON02", 0, 0, null, false);
		Fade("Config3a_BPlayOFF02", 0, 1000, null, false);
	}else{
		Fade("Config3a_BPlayON02", 0, 1000, null, false);
		Fade("Config3a_BPlayOFF02", 0, 0, null, false);
	}
	Fade("Config3a_BPlayON01", 0, 1000, null, false);
	Fade("Config3a_BPlayOFF01", 0, 1000, null, false);
}
..		//効果音再生設定
function Chg_SPlay()
{
	if(#SYSTEM_sound_se){
		Fade("Config3a_SPlayON02", 0, 0, null, false);
		Fade("Config3a_SPlayOFF02", 0, 1000, null, false);
	}else{
		Fade("Config3a_SPlayON02", 0, 1000, null, false);
		Fade("Config3a_SPlayOFF02", 0, 0, null, false);
	}
	Fade("Config3a_SPlayON01", 0, 1000, null, false);
	Fade("Config3a_SPlayOFF01", 0, 1000, null, false);
}
..		//★効果音の試聴
function Cfg_SETest()
{
	$se_file="sound/se/se擬音_恵那閃く";
	Delete("Config3a_SETest");
	CreateSound("Config3a_SETest", SE, $se_file);
	Request("Config3a_SETest", Play);
	Request("Config3a_SETest", Disused);

	$DynamicRange=#SYSTEM_sound_volume_se/2;
	if(#SYSTEM_sound_volume_se==1){
		$DynamicRange=1;
	}
	SetVolume("Config3a_SETest", 0, $DynamicRange, null);	

//$txt=":"+#SYSTEM_sound_volume_se+":"+$DynamicRange;
//CreateText("tt",10020,0,0,auto,auto, $txt);
}
..		//音声再生設定
function Chg_VPlay()
{
	if(#SYSTEM_sound_voice){
		Fade("Config3a_VPlayON02", 0, 0, null, false);
		Fade("Config3a_VPlayOFF02", 0, 1000, null, false);
	}else{
		Fade("Config3a_VPlayON02", 0, 1000, null, false);
		Fade("Config3a_VPlayOFF02", 0, 0, null, false);
	}
	Fade("Config3a_VPlayON01", 0, 1000, null, false);
	Fade("Config3a_VPlayOFF01", 0, 1000, null, false);
}
..		//★音声の試聴
function Cfg_VCTest()
{
	$vc_file="voice/18/000300630fje";
	Delete("Config3a_VCTest");
	CreateSound("Config3a_VCTest", VOICE, $vc_file);
	Request("Config3a_VCTest", Play);
	Request("Config3a_VCTest", Disused);
}
..		//音声同期
function Chg_VSync()
{
	if(#SYSTEM_sync_voice_and_text){
		Fade("Config3a_VSyncON02", 0, 0, null, false);
		Fade("Config3a_VSyncOFF02", 0, 1000, null, false);
	}else{
		Fade("Config3a_VSyncON02", 0, 1000, null, false);
		Fade("Config3a_VSyncOFF02", 0, 0, null, false);
	}
	Fade("Config3a_VSyncON01", 0, 1000, null, false);
	Fade("Config3a_VSyncOFF01", 0, 1000, null, false);
}
..		//キャラ別音声再生設定
function Chg_ChrBtn()
{
	Fade("Config3a_CV*", 0, 1000, null, false);
	Fade("Config3a_CV*/*/*", 0, 0, null, false);

	$ConfigCV_While=0;
	//while($ConfigCV_Max>$ConfigCV_While){
	//	if(!VariableValue(#,"ConfigCV_"+#ConfigCV_Name[$ConfigCV_While]+"[1]")){
	while(#VoiceSetCount>$ConfigCV_While){
		$num=$ConfigCV_While+1;
		$nutpre=String("Config3a_CV%02d_chara",$num);
		$cnut=$nutpre+"02";
		if(VariableValue(#,"ConfigCV_"+#VoiceName[$ConfigCV_While]+"[1]")){//true:鳴らさない
			Fade($cnut, 0, 1000, null, false);
		}else{
			Fade($cnut, 0, 0, null, false);
		}
		$ConfigCV_While++;
	}

}
.//変数変更＆動作
..//ページの移動（指定ページ）
function CfgMovePage($_pg)
{
	$prePage=$cfgPage;
	$cfgPage=$_pg;
	$CFG_WHILE=false;
}
function CfgNextPage()
{
	$prePage=$cfgPage;
	$cfgPage=$cfgPage+1;
	if($cfgPage>3){$cfgPage=1;}
	$CFG_WHILE=false;
}

.//描画配置まとめ
function SetOnOffBtn($_nut_hd, $_x, $_ony,$offy, $_selx)
{
	//入
	$nut_name1=$_nut_hd+"ON";
	CreateChoice($nut_name1,0,0,0,0,0,0);
	$nut_name1n=$nut_name1+"01";
	CreateTexture($nut_name1n, 10010, $_x, $_ony, "Cfi_オンオフ入on");
	$nut_name1n=$nut_name1+"02";
	CreateTexture($nut_name1n,10010, $_x, $_ony, "Cfi_オンオフ入hit");
	$nut_name1n=$nut_name1+"/MouseUsual/hit";
	CreateTexture($nut_name1n, 10010, $_x, $_ony, "Cfi_オンオフ入on");
	Request($nut_name1n,Erase);
	$nut_name1n=$nut_name1+"/MouseOver/icon";
	CreateTexture($nut_name1n, 10010, $_x, $_ony, "Cfi_オンオフ入over");
	$nut_name1n=$nut_name1+"/MouseClick/icon";
	CreateTexture($nut_name1n,10010, $_x, $_ony, "Cfi_オンオフ入on");
	//切
	$nut_name2=$_nut_hd+"OFF";
	CreateChoice($nut_name2,0,0,0,0,0,0);
	$nut_name2n=$nut_name2+"01";
	CreateTexture($nut_name2n, 10010, $_x, $offy, "Cfi_オンオフ切on");
	$nut_name2n=$nut_name2+"02";
	CreateTexture($nut_name2n,10010, $_x, $offy, "Cfi_オンオフ切off");
	$nut_name2n=$nut_name2+"/MouseUsual/hit";
	$hitx=$_x+1;
	CreateTexture($nut_name2n, 10010, $hitx, $offy, "Cfi_オンオフ切hit");
	Request($nut_name2n,Erase);
	$nut_name2n=$nut_name2+"/MouseOver/icon";
	CreateTexture($nut_name2n, 10010, $_x, $offy, "Cfi_オンオフ切over");
	$nut_name2n=$nut_name2+"/MouseClick/icon";
	CreateTexture($nut_name2n,10010, $_x, $offy, "Cfi_オンオフ切on");
	//説明
	SetSBtn($_nut_hd,$_x);
	$nut_name3=$_nut_hd+"S";
	//選択中
	SetSelBtn($nut_name1,$_selx);
	SetSelBtn($nut_name2,$_selx);
	SetSelBtn($nut_name3,$_selx);
}
//説明
function SetSBtn($___nut_hd,$___x)
{
	$nut_name3=$___nut_hd+"S";
	CreateChoice($nut_name3,0,0,0,0,0,0);
	$nut_name3n=$nut_name3+"/MouseUsual/hit";
	CreateColor($nut_name3n, 10010, $___x, $cfgBtnY, $cfgBtnW,$cfgBtnH, #FFFFFF);
	Request($nut_name3n,Erase);
	Request($nut_name3,UnClickable);
}
//選択中と解説テキストプロセス
function SetSelBtn($_nut_name,$__selx)
{
	SetSelIcon($_nut_name,$__selx);
	SetSelPrcs($_nut_name);
}
function SetSelIcon($__nut_name,$___selx)
{
	$nut_namen=$__nut_name+"/MouseClick/sel";
	CreateTexture($nut_namen, 10010, $___selx, $cfgSelIcoY, "Cfi_選択中アイコン");
	$nut_namen=$__nut_name+"/MouseOver/sel";
	CreateTexture($nut_namen, 10010, $___selx, $cfgSelIcoY, "Cfi_選択中アイコン");
}
function SetSelPrcs($__nut_name)
{
	$nut_namen=$__nut_name+"/MouseOver/prcs";
	$prcs_name=$__nut_name+"_Over";
	CreateProcess($nut_namen, 10010, 0, 0, $prcs_name);
	$nut_namen=$__nut_name+"/MouseLeave/prcs";
	$prcs_name=$__nut_name+"_Leave";
	CreateProcess($nut_namen, 10010, 0, 0, $prcs_name);
}

//再生、設定、中断などのボタン配置
function SetType1SSel($__nut_hd, $__x,$__y, $___selx, $_fname_hd)
{
	$nx=329;
	SetType1Btn($__nut_hd, $__x, $__y, $_fname_hd);
	//説明
	SetSBtn($__nut_hd,$__x);
	//選択中
	SetSelBtn($__nut_hd,$___selx);
	$snut=$__nut_hd+"S";
	SetSelBtn($snut,$___selx);
}
function SetType1Btn($_nut_hd, $_x, $_y, $fname_hd)
{
	CreateChoice($_nut_hd,0,0,0,0,0,0););
	
	$nut_name=$_nut_hd+"/MouseUsual/hit";
	$fnpath="cg/sys/config/"+$fname_hd+"off.png";
	CreateTexture($nut_name, 10010, $_x, $_y, $fnpath);
	
	$nut_name=$_nut_hd+"/MouseOver/icon";
	$fnpath="cg/sys/config/"+$fname_hd+"over.png";
	CreateTexture($nut_name, 10010, $_x, $_y, $fnpath);
	
	$nut_name=$_nut_hd+"/MouseClick/icon";
	$fnpath="cg/sys/config/"+$fname_hd+"on.png";
	CreateTexture($nut_name,10010, $_x, $_y, $fnpath);
}
function SetType2Btn($_nut_hd, $_x, $_y, $fname_hd)
{
	CreateChoice($_nut_hd,0,0,0,0,0,0);
	
	$nut_name=$_nut_hd+"01";
	$fnpath="cg/sys/config/"+$fname_hd+"on.png";
	CreateTexture($nut_name, 10010, $_x, $_y, $fnpath);
	$nut_name=$_nut_hd+"02";
	$fnpath="cg/sys/config/"+$fname_hd+"off.png";
	CreateTexture($nut_name, 10010, $_x, $_y, $fnpath);
	$nut_name=$_nut_hd+"03";
	$fnpath="cg/sys/config/"+$fname_hd+"no.png";
	CreateTexture($nut_name, 10010, $_x, $_y, $fnpath);

	$nut_name=$_nut_hd+"/MouseUsual/hit";
	$fnpath="cg/sys/config/"+$fname_hd+"on.png";
	CreateTexture($nut_name, 10010, $_x, $_y, $fnpath);
	Request($nut_name,Erase);
	
	$nut_name=$_nut_hd+"/MouseOver/icon";
	$fnpath="cg/sys/config/"+$fname_hd+"over.png";
	CreateTexture($nut_name, 10010, $_x, $_y, $fnpath);
	
	$nut_name=$_nut_hd+"/MouseClick/icon";
	$fnpath="cg/sys/config/"+$fname_hd+"over.png";
	CreateTexture($nut_name,10010, $_x, $_y, $fnpath);
}
//キャラ別音声ボタンの配置用(1~25)
function SetChrBtn($num)
{
	$nth=$num+1;
	//$cname=#ConfigCV_Name[$nth];
	$cname=#VoiceName[$num];

	$fnpath1="cg/sys/config/chico/chico_"+$cname+"on.png";
	$fnpath2="cg/sys/config/chico/chico_"+$cname+"off.png";

	$cnut_name=String("Config3a_CV%02d_chara",$nth);
	CreateChoice($cnut_name,0,0,0,0,0,0);

	$_x=$ConfigCV_X[$nth];
	$_y=$ConfigCV_Y[$nth];

	$nut_name=$cnut_name+"01";
	CreateTexture($nut_name, 10010, $_x, $_y, $fnpath1);
	$nut_name=$cnut_name+"02";
	CreateTexture($nut_name, 10010, $_x, $_y, $fnpath2);

	$nut_name=$cnut_name+"/MouseUsual/hit";
	CreateTexture($nut_name, 10010, $_x, $_y, "Config3a_CVHitImg");
	Request($nut_name,Erase);
	
	$nut_name=$cnut_name+"/MouseOver/icon";
	CreateTexture($nut_name, 10010, $_x, $_y, "Config3a_CVOverImg");
	
	$nut_name=$cnut_name+"/MouseClick/icon";
	CreateTexture($nut_name,10010, $_x, $_y, "Config3a_CVOverImg");
	
	//解説テキストプロセス
	SetSelPrcs($cnut_name);
}
function SetAllChrBtn()
{
	//hit用画像
	LoadImage("Config3a_CVHitImg", "cg/sys/config/chico/chico_沙紅羅off.png");
	//over用画像
	LoadImage("Config3a_CVOverImg", "cg/sys/config/chico/キャラアイコンover.png");
		
	$i=0;
	while($i<#VoiceSetCount)
	{
		SetChrBtn($i);
		$i++;
	}
}
//キャラ別音声ボタンの座標値
function SetChrBtnXY()
{
	Array($ConfigCV_X,0,270,216, 243,189, 270,216, 297,243,189, 270,216,162, 297,243,189, 270,216,162, 297,243,189, 270,216, 297,243);
	Array($ConfigCV_Y,0, 65, 65, 113,113, 161,161, 209,209,209, 257,257,257, 305,305,305, 353,353,353, 401,401,401, 449,449, 498,498);
}

//=============================================================================//
.//★マクロ「初期化」
function ConfigDefaultInit()
{
	//#no_ask=false;

	//★徒歩：タイトルから呼び出された場合「$OnDialog」をtrueに！
	//「sys_close関係」二重にダイアログが出るのを防止する為です
	if($PLACE_title){
		$OnDialog=true;
	}

	//★尋ねない
	if(!#no_ask){
		$go=false;

		//■定義「メッセージウインドウ作成」
		CreateName("MSGWND");
	
		//□基礎構築
		DialogBase("text_初期設定");
	
		//★選択肢開始
		$SYSTEM_r_button_down=false;
		select{
			if($SYSTEM_r_button_down){break;}
	
			case MSGWND/MSG_no{}
			case MSGWND/MSG_yes{
				//所定の動作
				$go=true;
			}
	
			//★キーダウン系
			if($SYSTEM_keydown_f){
				DialogFull();
			}else if($SYSTEM_keydown_esc||$SYSTEM_buttondown_close){
				DialogClose();
			}else if($SYSTEM_keydown_t&&!$SYSTEM_menu_lock&&!$SYSTEM_title_lock){
				DialogTitle();
			}else if($SYSTEM_keydown_j&&!$SYSTEM_menu_lock&&!$SYSTEM_backselect_lock){
				DialogBack();
			}
		}
		$SYSTEM_r_button_down=false;
		$SYSTEM_menu_config_enable=true;

		if(!$go){
			//■終了共通演出
			DialogEnd();

			//★徒歩：「sys_close関係」タイトルから呼び出された場合
			$OnDialog=false;
			//MoveCursor($ConfigDefaultX_M,$ConfigDefaultY_M);
			return;
		}
	}

	//★初期化内容
	ConfigFormat();

	$cfgmaketab1=false;
	$cfgmaketab2=false;
	$cfgmaketab3=false;

	$SYSTEM_menu_config_enable=false;
	$ConfigBreakFlag=true;

	//SavingStart();
	WaitAction("Config*/*/sound", null);
}

.//★マクロ「コンフィグフォーマット」
function ConfigFormat()
{
	//ＡＤＶのゲームスピード
	#SYSTEM_play_speed=3;
	#play_speed_plus=#SYSTEM_play_speed;
	if($Title_Config){
		//タイトルにおいてのコンフィグのゲームスピード
		#play_speed_plus2 = #SYSTEM_play_speed;
		#SYSTEM_play_speed=3;
	}
	#SYSTEM_text_speed=200;//テキスト表示速度
	#SYSTEM_break_play_movie=false;//ムービーをキャンセルできるようにする
	#LOCAL_break_play_movie=false;//ムービーをキャンセルできるようにするローカル
	#keep_auto_and_skip=false;//選択肢後もスキップとオートモードを継続する
	#no_ask=false;//確認ダイアログは出す？
	#SYSTEM_skip_absolute=false;//未読でもスキップする
	#SYSTEM_click_break_voice=false;//クリックで飛ばしたら音声もストップする
	#SYSTEM_sound_bgm=true;//ＢＧＭを再生する
	#SYSTEM_sound_se=true;//ＳＥを再生する
	#SYSTEM_sound_voice=true;//音声を再生する
	#SYSTEM_auto_wait_per_character=100;//自動文字送りスピード
	#SYSTEM_auto_text_break_voice=false;//オートモード時にテキストが飛ばされたら音声も飛ばす
	#SYSTEM_auto_ignore_key_cancel=false;//オートモード時にクリックを押すとテキストが飛ぶだけ
	#SYSTEM_sound_volume_bgm=#SYSTEM_sound_volume_bgm_default;//ＢＧＭのボリューム
	#SYSTEM_sound_volume_se=#SYSTEM_sound_volume_se_default;//ＳＥのボリューム
	#SYSTEM_sound_volume_voice=#SYSTEM_sound_volume_voice_default;//音声のボリューム
	#SYSTEM_movie_audio_volume=500;//DirectXムービーのボリューム
	#donot_ask_overwrite_savedata=false;//今はもう使用されていないようだ
	#donot_ask_load_savedata=false;//今はもう使用されていないようだ
	#LOCAL_window_fade=602;//ボックス透明度
	#SYSTEM_sync_voice_and_text=true;//音声同期
	#LOCAL_aspect_auto=true;//アスペクト比自動設定する

	#PreSaveFlag=false;

	//連想配列
	VoiceResetSet();

	//▽アザナエル（制限解除）
	//$DebugMode=true;
	//ConfigVoiceArray()
	//$DebugMode=false;
	
	#JIKOKU_auto_text_cancel=false;//事刻毎に自動文字送りを解除(trueで解除しない)
	
	#SYSTEM_read_text_color_change=true;//既読箇所の文字色を変更(trueで変更する)
	#SYSTEM_read_text_incolor=#FFFF75;//変更文字色（内部）
	#SYSTEM_read_text_outcolor=#000001;//変更文字色（外部）
	#SYSTEM_read_text_skip=false;//既読箇所を自動的にスキップ(trueでスキップする)
	
	#JIKOKU_open_boot=false;//起動時に事刻表を開く(trueで開く)



	$ConfigCV_While=0;
	while(#VoiceSetCount>$ConfigCV_While){
		VariableValue(#,"ConfigCV_"+#VoiceName[$ConfigCV_While]+"[1]",false);
		$ConfigCV_While++;
	}
	ConfigCharacterVoice();
	#SYSTEM_voice_enable_another=true;

	//デフォルトをオート判別に変更
	//#SYSTEM_video_aspect_fixed=0;
	if(EnableDirect3DHAL()){
		#SYSTEM_video_aspect_fixed=1;
		#old_video_aspect_fixed=1;
	}else{
		#SYSTEM_video_aspect_fixed=3;
		#old_video_aspect_fixed=3;
	}


	$SYSTEM_text_waitkey=true;
}

/*
> ★事刻毎に自動文字送りを解除
#JIKOKU_auto_text_cancel
false→文字送りを解除する（デフォルト？）
true→文字送りをする

> ★既読箇所の文字色を変更
#SYSTEM_read_text_color_change
false→変更しない（デフォルト？）
true→変更する

変更文字色（内部）→#SYSTEM_read_text_incolor
→#SYSTEM_read_text_outcolor
→１６進数指定（#ffffffなど？）

> ★既読箇所を自動的にスキップ
#SYSTEM_read_text_skip
false→スキップしない（デフォルト？）
true→スキップする

> ★起動時に事刻表を開く
#JIKOKU_open_boot
false→開かない（デフォルト？）
true→開く
*/

.//★マクロ「キャラボイス変数確認」
//VoiceResetと同等品
function ConfigCharacterVoice()
{
	#SYSTEM_voice_enable_list="";

	$ConfigCV_While=0;
	while(#VoiceSetCount>$ConfigCV_While){
		if(VariableValue(#,"ConfigCV_"+#VoiceName[$ConfigCV_While]+"[1]")==false){
			#SYSTEM_voice_enable_list=#SYSTEM_voice_enable_list+VariableValue(#,"ConfigCV_"+#VoiceName[$ConfigCV_While]+"[0]");
		}
		$ConfigCV_While++;
	}

	if(!#ConfigCV_その他男声[1]&&!#ConfigCV_その他女声[1]){
		#SYSTEM_voice_enable_another=true;
	}
}

..//●表示「ＣＶ」
function ConfigVoiceFade()
{
	//	$flg=VariableValue(#,"ConfigCV_"+#ConfigCV_Name[$ConfigCV_While][0]);
	//	$flg0=VariableValue(#,"ConfigCV_"+#ConfigCV_Name[$ConfigCV_While][0]);
	//	$flg1=VariableValue(#,"ConfigCV_"+#ConfigCV_Name[$ConfigCV_While][1]);
	//	$txt=":"+#ConfigCV_Name[$ConfigCV_While]+":"+$flg0+":"+$flg1;
	//	CreateText("rr",10020,0,0,auto,auto,$txt);

	//if(VariableValue(#,"voice_on_"+#ConfigCV_Name[$ConfigCV_While])){
		$nutpre=String("Config3a_CV%02d_chara",$ConfigCV_While);
		$cnut=$nutpre+"02";
	
	$num=$ConfigCV_While-1;

	//	$flg=#VoiceName[$num];
	//	$flg0=VariableValue(#,"ConfigCV_"+#VoiceName[$num]+"[0]");
	//	$flg1=VariableValue(#,"ConfigCV_"+#VoiceName[$num]+"[1]");
	//	$txt=":"+$ConfigCV_While+":"+$flg+"("+$flg0+":"+$flg1+")"+$nutpre;
	//	CreateText("rr",10020,0,0,auto,auto,$txt);

		//if(!VariableValue(#,"ConfigCV_"+#ConfigCV_Name[$ConfigCV_While]+"[1]")){
		//	VariableValue(#,"ConfigCV_"+#ConfigCV_Name[$ConfigCV_While]+"[1]",true);
		//if(!VariableValue(#,"ConfigCV_"+#VoiceName[$num]+"[1]")){
		if(VariableValue(#,"ConfigCV_"+#VoiceName[$num]+"[1]")){
			VariableValue(#,"ConfigCV_"+#VoiceName[$num]+"[1]",false);//鳴らさない
			Fade($cnut, 0, 0, null, false);
		}else{
			//VariableValue(#,"ConfigCV_"+#ConfigCV_Name[$ConfigCV_While]+"[1]",false);
			VariableValue(#,"ConfigCV_"+#VoiceName[$num]+"[1]",true);//鳴らす
			Fade($cnut, 0, 1000, null, false);
		}

		if(!#ConfigCV_その他男声[1]&&!#ConfigCV_その他女声[1]){
			#SYSTEM_voice_enable_another=true;
		}

		ConfigCharacterVoice();
	//}
}

..//●連想定義「ＣＶ名札表示切替所以」
/*
function ConfigVoiceArray()
{
	//★連想定義
	//※並べる順番が２通り合った場合（定義のために使用します）
	//#一章クリア=true;
	if(#一章クリア){
		Array(#ConfigCV_Name,NO,沙紅羅,小碓千秋,富士見恵那,ノーコ,似鳥戴斗,綿抜フウリ,ミヅハ,歌門星,河原屋双六,富士見鈴,ユージロー,富士見平次,ミリＰ,ブー,みそ,村崎勇,ジャブル,ＡＤ,そに子,織田貫太,ロクロー,バリー・ヘリントン,若原レイジ,その他男声,その他女声);
		AssocArray(#ConfigCV_Name,NO,沙紅羅,小碓千秋,富士見恵那,ノーコ,似鳥戴斗,綿抜フウリ,ミヅハ,歌門星,河原屋双六,富士見鈴,ユージロー,富士見平次,ミリＰ,ブー,みそ,村崎勇,ジャブル,ＡＤ,そに子,織田貫太,ロクロー,バリー・ヘリントン,若原レイジ,その他男声,その他女声);
	}else{
		Array(#ConfigCV_Name,NO,沙紅羅,小碓千秋,富士見恵那,ノーコ,似鳥戴斗,綿抜フウリ,ミヅハ,歌門星,河原屋双六,富士見鈴,ユージロー,富士見平次,ミリＰ,ブー,みそ,村崎勇,ジャブル,ＡＤ,そに子,織田貫太,ロクロー,バリー・ヘリントン,若原レイジ,その他男声,その他女声);
		AssocArray(#ConfigCV_Name,NO,沙紅羅,小碓千秋,富士見恵那,ノーコ,似鳥戴斗,綿抜フウリ,ミヅハ,歌門星,河原屋双六,富士見鈴,ユージロー,富士見平次,ミリＰ,ブー,みそ,村崎勇,ジャブル,ＡＤ,そに子,織田貫太,ロクロー,バリー・ヘリントン,若原レイジ,その他男声,その他女声);
	}
	$ConfigCV_Max=Count(#ConfigCV_Name);

	if($DebugMode){
		$ConfigCV_While=1;
		while($ConfigCV_Max>$ConfigCV_While){
			VariableValue(#,"voice_on_"+#ConfigCV_Name[$ConfigCV_While],true);
			$ConfigCV_While++;
		}
	}

	#voice_on_NO=false;
}
*/
..//●連想定義「ＣＶ音声初期定義」
function VoiceResetSet()
{
	Array(#VoiceName,沙紅羅,小碓千秋,富士見恵那,ノーコ,似鳥戴斗,綿抜フウリ,ミヅハ,歌門星,河原屋双六,富士見鈴,ユージロー,富士見平次,ミリＰ,ブー,みそ,村崎勇,ジャブル,ＡＤ,そに子,織田貫太,ロクロー,バリー・ヘリントン,若原レイジ,その他男声,その他女声);
	AssocArray(#VoiceName,沙紅羅,小碓千秋,富士見恵那,ノーコ,似鳥戴斗,綿抜フウリ,ミヅハ,歌門星,河原屋双六,富士見鈴,ユージロー,富士見平次,ミリＰ,ブー,みそ,村崎勇,ジャブル,ＡＤ,そに子,織田貫太,ロクロー,バリー・ヘリントン,若原レイジ,その他男声,その他女声);
	#VoiceSetCount=Count(#VoiceName);

	//元：
	//０：リストに追加するclass名
	//１：（明記されていないが）鳴らすか鳴らさないか
	Array(#ConfigCV_沙紅羅,"沙紅羅");
	Array(#ConfigCV_小碓千秋,"小碓千秋");
	Array(#ConfigCV_富士見恵那,"富士見恵那");
	Array(#ConfigCV_ノーコ,"ノーコ");
	Array(#ConfigCV_似鳥戴斗,"似鳥戴斗");
	Array(#ConfigCV_綿抜フウリ,"綿抜フウリ");
	Array(#ConfigCV_ミヅハ,"ミヅハ");
	Array(#ConfigCV_歌門星,"歌門星");
	Array(#ConfigCV_河原屋双六,"河原屋双六");
	Array(#ConfigCV_富士見鈴,"富士見鈴");
	Array(#ConfigCV_ユージロー,"ユージロー");
	Array(#ConfigCV_富士見平次,"富士見平次");
	Array(#ConfigCV_ミリＰ,"ミリＰ");
	Array(#ConfigCV_ブー,"ブー");
	Array(#ConfigCV_みそ,"みそ");
	Array(#ConfigCV_村崎勇,"村崎勇");
	Array(#ConfigCV_ジャブル,"ジャブル");
	Array(#ConfigCV_ＡＤ,"ＡＤ");
	Array(#ConfigCV_そに子,"そに子");
	Array(#ConfigCV_織田貫太,"織田貫太");
	Array(#ConfigCV_ロクロー,"ロクロー");
	Array(#ConfigCV_バリー・ヘリントン,"バリー・ヘリントン");
	Array(#ConfigCV_若原レイジ,"若原レイジ");
	Array(#ConfigCV_その他男声,"その他男声");
	Array(#ConfigCV_その他女声,"その他女声");
}
.//■フォーカス
function SetFocusPage1()
{
	SetNextFocus("Config0a_EXIT/MouseUsual/hit","Config0b_PAGE2/MouseUsual/hit",LEFT);
	SetNextFocus("Config0b_PAGE2/MouseUsual/hit","Config0b_PAGE3/MouseUsual/hit",LEFT);
	SetNextFocus("Config0b_PAGE3/MouseUsual/hit","Config0a_EXIT/MouseUsual/hit",LEFT);
	
	SetNextFocus("Config0a_EXIT/MouseUsual/hit","Config0b_PAGE3/MouseUsual/hit",RIGHT);
	SetNextFocus("Config0b_PAGE2/MouseUsual/hit","Config0a_EXIT/MouseUsual/hit",RIGHT);
	SetNextFocus("Config0b_PAGE3/MouseUsual/hit","Config0b_PAGE2/MouseUsual/hit",RIGHT);
	
	SetNextFocus("Config0a_EXIT/MouseUsual/hit","Config1a_Default/MouseUsual/hit",UP);
	SetNextFocus("Config0b_PAGE2/MouseUsual/hit","Config0a_NEXT/MouseUsual/hit",UP);
	SetNextFocus("Config0b_PAGE3/MouseUsual/hit","Config0a_NEXT/MouseUsual/hit",UP);
	
	SetNextFocus("Config0a_EXIT/MouseUsual/hit","Config1a_Default/MouseUsual/hit",DOWN);
	SetNextFocus("Config0b_PAGE2/MouseUsual/hit","Config0a_NEXT/MouseUsual/hit",DOWN);
	SetNextFocus("Config0b_PAGE3/MouseUsual/hit","Config0a_NEXT/MouseUsual/hit",DOWN);

	//LEFT//
	SetNextFocus("Config1a_Default/MouseUsual/hit","Config1a_ConfirmON/MouseUsual/hit",LEFT);
	SetNextFocus("Config1a_ConfirmON/MouseUsual/hit","Config1a_MStopON/MouseUsual/hit",LEFT);
	SetNextFocus("Config1a_ConfirmOFF/MouseUsual/hit","Config1a_MStopOFF/MouseUsual/hit",LEFT);
	SetNextFocus("Config1a_MStopON/MouseUsual/hit","Config1a_OpenT/MouseUsual/hit",LEFT);
	SetNextFocus("Config1a_MStopOFF/MouseUsual/hit","Config1a_OpenT/MouseUsual/hit",LEFT);
	if(#ClearTrue){
		SetNextFocus("Config1a_OpenT/MouseUsual/hit","Config1a_OpenJON/MouseUsual/hit",LEFT);
		SetNextFocus("Config1a_OpenJON/MouseUsual/hit","Config1a_FScrnON/MouseUsual/hit",LEFT);
		SetNextFocus("Config1a_OpenJOFF/MouseUsual/hit","Config1a_FScrnOFF/MouseUsual/hit",LEFT);
	}else{
		SetNextFocus("Config1a_OpenT/MouseUsual/hit","Config1a_FScrnON/MouseUsual/hit",LEFT);
	}
	SetNextFocus("Config1a_FScrnON/MouseUsual/hit","Config1a_AAutoON/MouseUsual/hit",LEFT);
	SetNextFocus("Config1a_FScrnOFF/MouseUsual/hit","Config1a_AAutoOFF/MouseUsual/hit",LEFT);
	if(!#LOCAL_aspect_auto){
		SetNextFocus("Config1a_AAutoON/MouseUsual/hit","Config1a_FAspectOFF/MouseUsual/hit",LEFT);
		SetNextFocus("Config1a_AAutoOFF/MouseUsual/hit","Config1a_FAspectOFF/MouseUsual/hit",LEFT);
		SetNextFocus("Config1a_FAspectOFF/MouseUsual/hit","Config1a_ARatioHW/MouseUsual/hit",LEFT);
		SetNextFocus("Config1a_FAspectON/MouseUsual/hit","Config1a_ARatioHW/MouseUsual/hit",LEFT);
		SetNextFocus("Config1a_ARatioHW/MouseUsual/hit","Config1a_ARatioNN/MouseUsual/hit",LEFT);
		SetNextFocus("Config1a_ARatioNN/MouseUsual/hit","Config1a_ARatioBR/MouseUsual/hit",LEFT);
		SetNextFocus("Config1a_ARatioBR/MouseUsual/hit","Config1a_QRc/MouseUsual/hit",LEFT);
	}else{
		SetNextFocus("Config1a_AAutoON/MouseUsual/hit","Config1a_Com/MouseUsual/hit",LEFT);
		SetNextFocus("Config1a_AAutoOFF/MouseUsual/hit","Config1a_QRc/MouseUsual/hit",LEFT);
	}

	SetNextFocus("Config1a_QRc/MouseUsual/hit","Config0a_NEXT/MouseUsual/hit",LEFT);

	SetNextFocus("Config1a_Com/MouseUsual/hit","Config0a_NEXT/MouseUsual/hit",LEFT);
	SetNextFocus("Config0a_NEXT/MouseUsual/hit","Config1a_Default/MouseUsual/hit",LEFT);

	SetNextFocus("Config1a_You/MouseUsual/hit","Config0a_NEXT/MouseUsual/hit",LEFT);

	//RIGHT//
	SetNextFocus("Config1a_Default/MouseUsual/hit","Config0a_NEXT/MouseUsual/hit",RIGHT);
	SetNextFocus("Config1a_ConfirmON/MouseUsual/hit","Config1a_Default/MouseUsual/hit",RIGHT);
	SetNextFocus("Config1a_ConfirmOFF/MouseUsual/hit","Config1a_Default/MouseUsual/hit",RIGHT);
	SetNextFocus("Config1a_MStopON/MouseUsual/hit","Config1a_ConfirmON/MouseUsual/hit",RIGHT);
	SetNextFocus("Config1a_MStopOFF/MouseUsual/hit","Config1a_ConfirmOFF/MouseUsual/hit",RIGHT);
	SetNextFocus("Config1a_OpenT/MouseUsual/hit","Config1a_MStopOFF/MouseUsual/hit",RIGHT);
	if(#ClearTrue){
		SetNextFocus("Config1a_OpenJON/MouseUsual/hit","Config1a_OpenT/MouseUsual/hit",RIGHT);
		SetNextFocus("Config1a_OpenJOFF/MouseUsual/hit","Config1a_OpenT/MouseUsual/hit",RIGHT);
		SetNextFocus("Config1a_FScrnON/MouseUsual/hit","Config1a_OpenJON/MouseUsual/hit",RIGHT);
		SetNextFocus("Config1a_FScrnOFF/MouseUsual/hit","Config1a_OpenJOFF/MouseUsual/hit",RIGHT);
	}else{
		SetNextFocus("Config1a_FScrnON/MouseUsual/hit","Config1a_OpenT/MouseUsual/hit",RIGHT);
		SetNextFocus("Config1a_FScrnOFF/MouseUsual/hit","Config1a_OpenT/MouseUsual/hit",RIGHT);
	}
	SetNextFocus("Config1a_AAutoON/MouseUsual/hit","Config1a_FScrnON/MouseUsual/hit",RIGHT);
	SetNextFocus("Config1a_AAutoOFF/MouseUsual/hit","Config1a_FScrnOFF/MouseUsual/hit",RIGHT);
	
	if(!#LOCAL_aspect_auto){
		SetNextFocus("Config1a_FAspectON/MouseUsual/hit","Config1a_AAutoOFF/MouseUsual/hit",RIGHT);
		SetNextFocus("Config1a_FAspectOFF/MouseUsual/hit","Config1a_AAutoON/MouseUsual/hit",RIGHT);
		SetNextFocus("Config1a_ARatioHW/MouseUsual/hit","Config1a_FAspectON/MouseUsual/hit",RIGHT);
		SetNextFocus("Config1a_ARatioNN/MouseUsual/hit","Config1a_ARatioHW/MouseUsual/hit",RIGHT);
		SetNextFocus("Config1a_ARatioBR/MouseUsual/hit","Config1a_ARatioNN/MouseUsual/hit",RIGHT);
		SetNextFocus("Config1a_QRc/MouseUsual/hit","Config1a_ARatioBR/MouseUsual/hit",RIGHT);
		SetNextFocus("Config1a_Com/MouseUsual/hit","Config1a_ARatioBR/MouseUsual/hit",RIGHT);
		SetNextFocus("Config1a_You/MouseUsual/hit","Config1a_ARatioBR/MouseUsual/hit",RIGHT);
	}else{
		SetNextFocus("Config1a_QRc/MouseUsual/hit","Config1a_AAutoOFF/MouseUsual/hit",RIGHT);
		SetNextFocus("Config1a_Com/MouseUsual/hit","Config1a_AAutoON/MouseUsual/hit",RIGHT);
		SetNextFocus("Config1a_You/MouseUsual/hit","Config1a_AAutoON/MouseUsual/hit",RIGHT);
	}
	SetNextFocus("Config0a_NEXT/MouseUsual/hit","Config1a_You/MouseUsual/hit",RIGHT);

	//DOWN//
	SetNextFocus("Config1a_Default/MouseUsual/hit","Config0a_EXIT/MouseUsual/hit",DOWN);
	SetNextFocus("Config1a_ConfirmON/MouseUsual/hit","Config1a_ConfirmOFF/MouseUsual/hit",DOWN);
	SetNextFocus("Config1a_ConfirmOFF/MouseUsual/hit","Config1a_ConfirmON/MouseUsual/hit",DOWN);
	SetNextFocus("Config1a_MStopON/MouseUsual/hit","Config1a_MStopOFF/MouseUsual/hit",DOWN);
	SetNextFocus("Config1a_MStopOFF/MouseUsual/hit","Config1a_MStopON/MouseUsual/hit",DOWN);
	SetNextFocus("Config1a_OpenT/MouseUsual/hit","Config1a_OpenT/MouseUsual/hit",DOWN);
	if(#ClearTrue){
		SetNextFocus("Config1a_OpenJON/MouseUsual/hit","Config1a_OpenJOFF/MouseUsual/hit",DOWN);
		SetNextFocus("Config1a_OpenJOFF/MouseUsual/hit","Config1a_OpenJON/MouseUsual/hit",DOWN);
	}
	SetNextFocus("Config1a_FScrnON/MouseUsual/hit","Config1a_FScrnOFF/MouseUsual/hit",DOWN);
	SetNextFocus("Config1a_FScrnOFF/MouseUsual/hit","Config1a_FScrnON/MouseUsual/hit",DOWN);
	
	SetNextFocus("Config1a_AAutoON/MouseUsual/hit","Config1a_AAutoOFF/MouseUsual/hit",DOWN);
	SetNextFocus("Config1a_AAutoOFF/MouseUsual/hit","Config1a_AAutoON/MouseUsual/hit",DOWN);
	
	if(!#LOCAL_aspect_auto){
		SetNextFocus("Config1a_FAspectON/MouseUsual/hit","Config1a_FAspectOFF/MouseUsual/hit",DOWN);
		SetNextFocus("Config1a_FAspectOFF/MouseUsual/hit","Config1a_FAspectON/MouseUsual/hit",DOWN);
		SetNextFocus("Config1a_ARatioHW/MouseUsual/hit","Config1a_ARatioHW/MouseUsual/hit",DOWN);
		SetNextFocus("Config1a_ARatioNN/MouseUsual/hit","Config1a_ARatioNN/MouseUsual/hit",DOWN);
		SetNextFocus("Config1a_ARatioBR/MouseUsual/hit","Config1a_ARatioBR/MouseUsual/hit",DOWN);
	}
	SetNextFocus("Config1a_QRc/MouseUsual/hit","Config1a_You/MouseUsual/hit",DOWN);
	SetNextFocus("Config1a_Com/MouseUsual/hit","Config1a_QRc/MouseUsual/hit",DOWN);
	SetNextFocus("Config1a_You/MouseUsual/hit","Config1a_Com/MouseUsual/hit",DOWN);
	
	SetNextFocus("Config0a_NEXT/MouseUsual/hit","Config0b_PAGE2/MouseUsual/hit",DOWN);
	SetNextFocus("Config0b_PAGE2/MouseUsual/hit","Config0a_NEXT/MouseUsual/hit",DOWN);
	SetNextFocus("Config0b_PAGE3/MouseUsual/hit","Config0a_NEXT/MouseUsual/hit",DOWN);

	//UP
	SetNextFocus("Config1a_Default/MouseUsual/hit","Config1a_Default/MouseUsual/hit",UP);
	SetNextFocus("Config1a_ConfirmON/MouseUsual/hit","Config1a_ConfirmOFF/MouseUsual/hit",UP);
	SetNextFocus("Config1a_ConfirmOFF/MouseUsual/hit","Config1a_ConfirmON/MouseUsual/hit",UP);
	SetNextFocus("Config1a_MStopON/MouseUsual/hit","Config1a_MStopOFF/MouseUsual/hit",UP);
	SetNextFocus("Config1a_MStopOFF/MouseUsual/hit","Config1a_MStopON/MouseUsual/hit",UP);
	SetNextFocus("Config1a_OpenT/MouseUsual/hit","Config1a_OpenT/MouseUsual/hit",UP);
	if(#ClearTrue){
		SetNextFocus("Config1a_OpenJON/MouseUsual/hit","Config1a_OpenJOFF/MouseUsual/hit",UP);
		SetNextFocus("Config1a_OpenJOFF/MouseUsual/hit","Config1a_OpenJON/MouseUsual/hit",UP);
	}
	SetNextFocus("Config1a_FScrnON/MouseUsual/hit","Config1a_FScrnOFF/MouseUsual/hit",UP);
	SetNextFocus("Config1a_FScrnOFF/MouseUsual/hit","Config1a_FScrnON/MouseUsual/hit",UP);
	
	SetNextFocus("Config1a_AAutoON/MouseUsual/hit","Config1a_AAutoOFF/MouseUsual/hit",UP);
	SetNextFocus("Config1a_AAutoOFF/MouseUsual/hit","Config1a_AAutoON/MouseUsual/hit",UP);
	
	if(!#LOCAL_aspect_auto){
		SetNextFocus("Config1a_FAspectON/MouseUsual/hit","Config1a_FAspectOFF/MouseUsual/hit",UP);
		SetNextFocus("Config1a_FAspectOFF/MouseUsual/hit","Config1a_FAspectON/MouseUsual/hit",UP);
		SetNextFocus("Config1a_ARatioHW/MouseUsual/hit","Config1a_ARatioHW/MouseUsual/hit",UP);
		SetNextFocus("Config1a_ARatioNN/MouseUsual/hit","Config1a_ARatioNN/MouseUsual/hit",UP);
		SetNextFocus("Config1a_ARatioBR/MouseUsual/hit","Config1a_ARatioBR/MouseUsual/hit",UP);
	}
	SetNextFocus("Config1a_QRc/MouseUsual/hit","Config1a_Com/MouseUsual/hit",UP);
	SetNextFocus("Config1a_Com/MouseUsual/hit","Config1a_You/MouseUsual/hit",UP);
	SetNextFocus("Config1a_You/MouseUsual/hit","Config1a_QRc/MouseUsual/hit",UP);
	
	SetNextFocus("Config0a_NEXT/MouseUsual/hit","Config1a_You/MouseUsual/hit",UP);
	SetNextFocus("Config0b_PAGE2/MouseUsual/hit","Config0a_NEXT/MouseUsual/hit",UP);
	SetNextFocus("Config0b_PAGE3/MouseUsual/hit","Config0a_NEXT/MouseUsual/hit",UP);

}
function SetFocusPage2()
{
	SetNextFocus("Config0a_EXIT/MouseUsual/hit","Config0b_PAGE1/MouseUsual/hit",LEFT);
	SetNextFocus("Config0b_PAGE1/MouseUsual/hit","Config0b_PAGE3/MouseUsual/hit",LEFT);
	SetNextFocus("Config0b_PAGE3/MouseUsual/hit","Config0a_EXIT/MouseUsual/hit",LEFT);
	
	SetNextFocus("Config0a_EXIT/MouseUsual/hit","Config0b_PAGE3/MouseUsual/hit",RIGHT);
	SetNextFocus("Config0b_PAGE1/MouseUsual/hit","Config0a_EXIT/MouseUsual/hit",RIGHT);
	SetNextFocus("Config0b_PAGE3/MouseUsual/hit","Config0b_PAGE1/MouseUsual/hit",RIGHT);
	
	SetNextFocus("Config0a_EXIT/MouseUsual/hit","Config2a_CSkipOFF/MouseUsual/hit",UP);
	SetNextFocus("Config0b_PAGE1/MouseUsual/hit","Config0a_NEXT/MouseUsual/hit",UP);
	SetNextFocus("Config0b_PAGE3/MouseUsual/hit","Config0a_NEXT/MouseUsual/hit",UP);
	
	SetNextFocus("Config0a_EXIT/MouseUsual/hit","Config2a_CSkipON/MouseUsual/hit",DOWN);
	SetNextFocus("Config0b_PAGE1/MouseUsual/hit","Config0a_NEXT/MouseUsual/hit",DOWN);
	SetNextFocus("Config0b_PAGE3/MouseUsual/hit","Config0a_NEXT/MouseUsual/hit",DOWN);

	//LEFT//
	SetNextFocus("Config2a_CSkipON/MouseUsual/hit","Config2a_ASkipON/MouseUsual/hit",LEFT);
	SetNextFocus("Config2a_CSkipOFF/MouseUsual/hit","Config2a_ASkipOFF/MouseUsual/hit",LEFT);
	/**/
	//●既読箇所の２項目解放版
	SetNextFocus("Config2a_ASkipON/MouseUsual/hit","Config2a_RdCChgON/MouseUsual/hit",LEFT);
	SetNextFocus("Config2a_ASkipOFF/MouseUsual/hit","Config2a_RdCChgOFF/MouseUsual/hit",LEFT);
	
	//●既読箇所の１項目封印版
	SetNextFocus("Config2a_RdCChgON/MouseUsual/hit","Config2a_KVoiceON/MouseUsual/hit",LEFT);
	SetNextFocus("Config2a_RdCChgOFF/MouseUsual/hit","Config2a_KVoiceOFF/MouseUsual/hit",LEFT);
	//SetNextFocus("Config2a_RdCChgON/MouseUsual/hit","Config2a_RdASkipON/MouseUsual/hit",LEFT);
	//SetNextFocus("Config2a_RdCChgOFF/MouseUsual/hit","Config2a_RdASkipOFF/MouseUsual/hit",LEFT);
	//SetNextFocus("Config2a_RdASkipON/MouseUsual/hit","Config2a_KVoiceON/MouseUsual/hit",LEFT);
	//SetNextFocus("Config2a_RdASkipOFF/MouseUsual/hit","Config2a_KVoiceOFF/MouseUsual/hit",LEFT);
	
	SetNextFocus("Config2a_KVoiceON/MouseUsual/hit","Config2a_MSpeed",LEFT);
	SetNextFocus("Config2a_KVoiceOFF/MouseUsual/hit","Config2a_MSpeed",LEFT);
	/*
	//●既読箇所の２項目封印版
	SetNextFocus("Config2a_ASkipON/MouseUsual/hit","Config2a_KVoiceON/MouseUsual/hit",LEFT);
	SetNextFocus("Config2a_ASkipOFF/MouseUsual/hit","Config2a_KVoiceOFF/MouseUsual/hit",LEFT);
	SetNextFocus("Config2a_KVoiceON/MouseUsual/hit","Config2a_MSpeed",LEFT);
	SetNextFocus("Config2a_KVoiceOFF/MouseUsual/hit","Config2a_MSpeed",LEFT);
	*/
	SetNextFocus("Config2a_MSpeed","Config2a_ASpeed",LEFT);
	SetNextFocus("Config2a_ASpeed","Config2a_SVoice/MouseUsual/hit",LEFT);
	SetNextFocus("Config2a_SVoice/MouseUsual/hit","Config2a_CABrkON/MouseUsual/hit",LEFT);
	SetNextFocus("Config2a_CABrkON/MouseUsual/hit","Config2a_TxtPrvw/MouseUsual/hit",LEFT);
	SetNextFocus("Config2a_CABrkOFF/MouseUsual/hit","Config2a_TxtPrvw/MouseUsual/hit",LEFT);
	SetNextFocus("Config2a_TxtPrvw/MouseUsual/hit","Config0a_NEXT/MouseUsual/hit",LEFT);
	SetNextFocus("Config0a_NEXT/MouseUsual/hit","Config2a_CSkipON/MouseUsual/hit",LEFT);

	//RIGHT//
	SetNextFocus("Config2a_CSkipON/MouseUsual/hit","Config0a_NEXT/MouseUsual/hit",RIGHT);
	SetNextFocus("Config2a_CSkipOFF/MouseUsual/hit","Config0a_NEXT/MouseUsual/hit",RIGHT);
	SetNextFocus("Config2a_ASkipON/MouseUsual/hit","Config2a_CSkipON/MouseUsual/hit",RIGHT);
	SetNextFocus("Config2a_ASkipOFF/MouseUsual/hit","Config2a_CSkipOFF/MouseUsual/hit",RIGHT);
	/**/
	//●既読箇所の２項目解放版
	SetNextFocus("Config2a_RdCChgON/MouseUsual/hit","Config2a_ASkipON/MouseUsual/hit",RIGHT);
	SetNextFocus("Config2a_RdCChgOFF/MouseUsual/hit","Config2a_ASkipOFF/MouseUsual/hit",RIGHT);
	//●既読箇所の１項目封印版
	//SetNextFocus("Config2a_RdASkipON/MouseUsual/hit","Config2a_RdCChgON/MouseUsual/hit",RIGHT);
	//SetNextFocus("Config2a_RdASkipOFF/MouseUsual/hit","Config2a_RdCChgOFF/MouseUsual/hit",RIGHT);
	//SetNextFocus("Config2a_KVoiceON/MouseUsual/hit","Config2a_RdASkipON/MouseUsual/hit",RIGHT);
	//SetNextFocus("Config2a_KVoiceOFF/MouseUsual/hit","Config2a_RdASkipOFF/MouseUsual/hit",RIGHT);
	SetNextFocus("Config2a_KVoiceON/MouseUsual/hit","Config2a_RdCChgON/MouseUsual/hit",RIGHT);
	SetNextFocus("Config2a_KVoiceOFF/MouseUsual/hit","Config2a_RdCChgOFF/MouseUsual/hit",RIGHT);
	/*
	//●既読箇所の２項目封印版
	SetNextFocus("Config2a_ASkipON/MouseUsual/hit","Config2a_CSkipON/MouseUsual/hit",RIGHT);
	SetNextFocus("Config2a_ASkipOFF/MouseUsual/hit","Config2a_CSkipOFF/MouseUsual/hit",RIGHT);
	SetNextFocus("Config2a_KVoiceON/MouseUsual/hit","Config2a_ASkipON/MouseUsual/hit",RIGHT);
	SetNextFocus("Config2a_KVoiceOFF/MouseUsual/hit","Config2a_ASkipOFF/MouseUsual/hit",RIGHT);
	*/
	SetNextFocus("Config2a_MSpeed","Config2a_KVoiceOFF/MouseUsual/hit",RIGHT);
	SetNextFocus("Config2a_ASpeed","Config2a_MSpeed",RIGHT);
	SetNextFocus("Config2a_SVoice/MouseUsual/hit","Config2a_ASpeed",RIGHT);
	SetNextFocus("Config2a_CABrkON/MouseUsual/hit","Config2a_SVoice/MouseUsual/hit",RIGHT);
	SetNextFocus("Config2a_CABrkOFF/MouseUsual/hit","Config2a_SVoice/MouseUsual/hit",RIGHT);
	SetNextFocus("Config2a_TxtPrvw/MouseUsual/hit","Config2a_CABrkOFF/MouseUsual/hit",RIGHT);
	SetNextFocus("Config0a_NEXT/MouseUsual/hit","Config2a_TxtPrvw/MouseUsual/hit",RIGHT);

	//DOWN//
	SetNextFocus("Config2a_CSkipON/MouseUsual/hit","Config2a_CSkipOFF/MouseUsual/hit",DOWN);
	SetNextFocus("Config2a_CSkipOFF/MouseUsual/hit","Config0a_EXIT/MouseUsual/hit",DOWN);
	SetNextFocus("Config2a_ASkipON/MouseUsual/hit","Config2a_ASkipOFF/MouseUsual/hit",DOWN);
	SetNextFocus("Config2a_ASkipOFF/MouseUsual/hit","Config2a_ASkipON/MouseUsual/hit",DOWN);
	SetNextFocus("Config2a_KVoiceON/MouseUsual/hit","Config2a_KVoiceOFF/MouseUsual/hit",DOWN);
	SetNextFocus("Config2a_KVoiceOFF/MouseUsual/hit","Config2a_KVoiceON/MouseUsual/hit",DOWN);
	SetNextFocus("Config2a_CABrkON/MouseUsual/hit","Config2a_CABrkOFF/MouseUsual/hit",DOWN);
	SetNextFocus("Config2a_CABrkOFF/MouseUsual/hit","Config2a_CABrkON/MouseUsual/hit",DOWN);
	SetNextFocus("Config0a_NEXT/MouseUsual/hit","Config0b_PAGE1/MouseUsual/hit",DOWN);

	//UP//
	SetNextFocus("Config2a_CSkipON/MouseUsual/hit","Config0a_EXIT/MouseUsual/hit",UP);
	SetNextFocus("Config2a_CSkipOFF/MouseUsual/hit","Config2a_CSkipON/MouseUsual/hit",UP);
	SetNextFocus("Config2a_ASkipON/MouseUsual/hit","Config2a_ASkipOFF/MouseUsual/hit",UP);
	SetNextFocus("Config2a_ASkipOFF/MouseUsual/hit","Config2a_ASkipON/MouseUsual/hit",UP);
	SetNextFocus("Config2a_KVoiceON/MouseUsual/hit","Config2a_KVoiceOFF/MouseUsual/hit",UP);
	SetNextFocus("Config2a_KVoiceOFF/MouseUsual/hit","Config2a_KVoiceON/MouseUsual/hit",UP);
	SetNextFocus("Config2a_CABrkON/MouseUsual/hit","Config2a_CABrkOFF/MouseUsual/hit",UP);
	SetNextFocus("Config2a_CABrkOFF/MouseUsual/hit","Config2a_CABrkON/MouseUsual/hit",UP);
	SetNextFocus("Config0a_NEXT/MouseUsual/hit","Config0b_PAGE3/MouseUsual/hit",UP);

	//●既読箇所の２項目解放版
	SetNextFocus("Config2a_RdCChgON/MouseUsual/hit","Config2a_RdCChgOFF/MouseUsual/hit",DOWN);
	SetNextFocus("Config2a_RdCChgOFF/MouseUsual/hit","Config2a_RdCChgON/MouseUsual/hit",DOWN);
	SetNextFocus("Config2a_RdCChgON/MouseUsual/hit","Config2a_RdCChgOFF/MouseUsual/hit",UP);
	SetNextFocus("Config2a_RdCChgOFF/MouseUsual/hit","Config2a_RdCChgON/MouseUsual/hit",UP);
	//●既読箇所の１項目封印版
	/*
	SetNextFocus("Config2a_RdASkipON/MouseUsual/hit","Config2a_RdASkipOFF/MouseUsual/hit",DOWN);
	SetNextFocus("Config2a_RdASkipOFF/MouseUsual/hit","Config2a_RdASkipON/MouseUsual/hit",DOWN);
	SetNextFocus("Config2a_RdASkipON/MouseUsual/hit","Config2a_RdASkipOFF/MouseUsual/hit",UP);
	SetNextFocus("Config2a_RdASkipOFF/MouseUsual/hit","Config2a_RdASkipON/MouseUsual/hit",UP);
	*/

}
function SetFocusPage3()
{
	SetNextFocus("Config0a_EXIT/MouseUsual/hit","Config3a_CV24_chara/MouseUsual/hit",LEFT);
	SetNextFocus("Config0b_PAGE1/MouseUsual/hit","Config0b_PAGE2/MouseUsual/hit",LEFT);
	SetNextFocus("Config0b_PAGE2/MouseUsual/hit","Config0a_EXIT/MouseUsual/hit",LEFT);
	
	SetNextFocus("Config0a_EXIT/MouseUsual/hit","Config0b_PAGE2/MouseUsual/hit",RIGHT);
	SetNextFocus("Config0b_PAGE1/MouseUsual/hit","Config3a_CV25_chara/MouseUsual/hit",RIGHT);
	SetNextFocus("Config0b_PAGE2/MouseUsual/hit","Config0b_PAGE1/MouseUsual/hit",RIGHT);
	
	SetNextFocus("Config0a_EXIT/MouseUsual/hit","Config3a_BPlayOFF/MouseUsual/hit",UP);
	SetNextFocus("Config0b_PAGE1/MouseUsual/hit","Config0a_NEXT/MouseUsual/hit",UP);
	SetNextFocus("Config0b_PAGE2/MouseUsual/hit","Config0a_NEXT/MouseUsual/hit",UP);
	
	SetNextFocus("Config0a_EXIT/MouseUsual/hit","Config3a_BPlayON/MouseUsual/hit",DOWN);
	SetNextFocus("Config0b_PAGE1/MouseUsual/hit","Config0a_NEXT/MouseUsual/hit",DOWN);
	SetNextFocus("Config0b_PAGE2/MouseUsual/hit","Config0a_NEXT/MouseUsual/hit",DOWN);

	SetNextFocus("Config0a_NEXT/MouseUsual/hit","Config3a_BPlayON/MouseUsual/hit",LEFT);
	SetNextFocus("Config0a_NEXT/MouseUsual/hit","Config3a_CV12_chara/MouseUsual/hit",RIGHT);
	SetNextFocus("Config0a_NEXT/MouseUsual/hit","Config0b_PAGE2/MouseUsual/hit",UP);
	SetNextFocus("Config0a_NEXT/MouseUsual/hit","Config0b_PAGE1/MouseUsual/hit",DOWN);

	//LEFT//
	SetNextFocus("Config3a_BPlayON/MouseUsual/hit","Config3a_BVolume",LEFT);
	SetNextFocus("Config3a_BPlayOFF/MouseUsual/hit","Config3a_BVolume",LEFT);
	SetNextFocus("Config3a_BVolume","Config3a_SPlayON/MouseUsual/hit",LEFT);
	SetNextFocus("Config3a_SPlayON/MouseUsual/hit","Config3a_SVolume",LEFT);
	SetNextFocus("Config3a_SPlayOFF/MouseUsual/hit","Config3a_SVolume",LEFT);
	SetNextFocus("Config3a_SVolume","Config3a_STest/MouseUsual/hit",LEFT);
	SetNextFocus("Config3a_STest/MouseUsual/hit","Config3a_VPlayON/MouseUsual/hit",LEFT);
	SetNextFocus("Config3a_VPlayON/MouseUsual/hit","Config3a_VVolume",LEFT);
	SetNextFocus("Config3a_VPlayOFF/MouseUsual/hit","Config3a_VVolume",LEFT);
	SetNextFocus("Config3a_VVolume","Config3a_VTest/MouseUsual/hit",LEFT);
	SetNextFocus("Config3a_VTest/MouseUsual/hit","Config3a_VSyncON/MouseUsual/hit",LEFT);
	SetNextFocus("Config3a_VSyncON/MouseUsual/hit","Config3a_CV13_chara/MouseUsual/hit",LEFT);
	SetNextFocus("Config3a_VSyncOFF/MouseUsual/hit","Config3a_CV16_chara/MouseUsual/hit",LEFT);
	
	SetNextFocus("Config3a_CV01_chara/MouseUsual/hit","Config3a_CV02_chara/MouseUsual/hit",LEFT);
	SetNextFocus("Config3a_CV02_chara/MouseUsual/hit","Config3a_CV01_chara/MouseUsual/hit",LEFT);

	SetNextFocus("Config3a_CV03_chara/MouseUsual/hit","Config3a_CV04_chara/MouseUsual/hit",LEFT);
	SetNextFocus("Config3a_CV04_chara/MouseUsual/hit","Config3a_CV03_chara/MouseUsual/hit",LEFT);

	SetNextFocus("Config3a_CV05_chara/MouseUsual/hit","Config3a_CV06_chara/MouseUsual/hit",LEFT);
	SetNextFocus("Config3a_CV06_chara/MouseUsual/hit","Config3a_CV05_chara/MouseUsual/hit",LEFT);

	SetNextFocus("Config3a_CV07_chara/MouseUsual/hit","Config3a_CV08_chara/MouseUsual/hit",LEFT);
	SetNextFocus("Config3a_CV08_chara/MouseUsual/hit","Config3a_CV09_chara/MouseUsual/hit",LEFT);
	SetNextFocus("Config3a_CV09_chara/MouseUsual/hit","Config3a_CV07_chara/MouseUsual/hit",LEFT);

	SetNextFocus("Config3a_CV10_chara/MouseUsual/hit","Config3a_CV11_chara/MouseUsual/hit",LEFT);
	SetNextFocus("Config3a_CV11_chara/MouseUsual/hit","Config3a_CV12_chara/MouseUsual/hit",LEFT);
	SetNextFocus("Config3a_CV12_chara/MouseUsual/hit","Config0a_NEXT/MouseUsual/hit",LEFT);

	SetNextFocus("Config3a_CV13_chara/MouseUsual/hit","Config3a_CV14_chara/MouseUsual/hit",LEFT);
	SetNextFocus("Config3a_CV14_chara/MouseUsual/hit","Config3a_CV15_chara/MouseUsual/hit",LEFT);
	SetNextFocus("Config3a_CV15_chara/MouseUsual/hit","Config0a_NEXT/MouseUsual/hit",LEFT);

	SetNextFocus("Config3a_CV16_chara/MouseUsual/hit","Config3a_CV17_chara/MouseUsual/hit",LEFT);
	SetNextFocus("Config3a_CV17_chara/MouseUsual/hit","Config3a_CV18_chara/MouseUsual/hit",LEFT);
	SetNextFocus("Config3a_CV18_chara/MouseUsual/hit","Config3a_CV16_chara/MouseUsual/hit",LEFT);

	SetNextFocus("Config3a_CV19_chara/MouseUsual/hit","Config3a_CV20_chara/MouseUsual/hit",LEFT);
	SetNextFocus("Config3a_CV20_chara/MouseUsual/hit","Config3a_CV21_chara/MouseUsual/hit",LEFT);
	SetNextFocus("Config3a_CV21_chara/MouseUsual/hit","Config3a_CV19_chara/MouseUsual/hit",LEFT);

	SetNextFocus("Config3a_CV22_chara/MouseUsual/hit","Config3a_CV23_chara/MouseUsual/hit",LEFT);
	SetNextFocus("Config3a_CV23_chara/MouseUsual/hit","Config3a_CV22_chara/MouseUsual/hit",LEFT);

	SetNextFocus("Config3a_CV24_chara/MouseUsual/hit","Config3a_CV25_chara/MouseUsual/hit",LEFT);
	SetNextFocus("Config3a_CV25_chara/MouseUsual/hit","Config0b_PAGE1/MouseUsual/hit",LEFT);

	//RIGHT//
	SetNextFocus("Config3a_BPlayON/MouseUsual/hit","Config0a_NEXT/MouseUsual/hit",RIGHT);
	SetNextFocus("Config3a_BPlayOFF/MouseUsual/hit","Config0a_NEXT/MouseUsual/hit",RIGHT);
	SetNextFocus("Config3a_BVolume","Config3a_BPlayOFF/MouseUsual/hit",RIGHT);
	SetNextFocus("Config3a_SPlayON/MouseUsual/hit","Config3a_BVolume",RIGHT);
	SetNextFocus("Config3a_SPlayOFF/MouseUsual/hit","Config3a_BVolume",RIGHT);
	SetNextFocus("Config3a_SVolume","Config3a_SPlayOFF/MouseUsual/hit",RIGHT);
	SetNextFocus("Config3a_STest/MouseUsual/hit","Config3a_SVolume",RIGHT);
	SetNextFocus("Config3a_VPlayON/MouseUsual/hit","Config3a_STest/MouseUsual/hit",RIGHT);
	SetNextFocus("Config3a_VPlayOFF/MouseUsual/hit","Config3a_STest/MouseUsual/hit",RIGHT);
	SetNextFocus("Config3a_VVolume","Config3a_VPlayOFF/MouseUsual/hit",RIGHT);
	SetNextFocus("Config3a_VTest/MouseUsual/hit","Config3a_VVolume",RIGHT);
	SetNextFocus("Config3a_VSyncON/MouseUsual/hit","Config3a_VTest/MouseUsual/hit",RIGHT);
	SetNextFocus("Config3a_VSyncOFF/MouseUsual/hit","Config3a_VTest/MouseUsual/hit",RIGHT);

	SetNextFocus("Config3a_CV01_chara/MouseUsual/hit","Config3a_CV02_chara/MouseUsual/hit",RIGHT);
	SetNextFocus("Config3a_CV02_chara/MouseUsual/hit","Config3a_CV01_chara/MouseUsual/hit",RIGHT);

	SetNextFocus("Config3a_CV03_chara/MouseUsual/hit","Config3a_CV04_chara/MouseUsual/hit",RIGHT);
	SetNextFocus("Config3a_CV04_chara/MouseUsual/hit","Config3a_CV03_chara/MouseUsual/hit",RIGHT);

	SetNextFocus("Config3a_CV05_chara/MouseUsual/hit","Config3a_CV06_chara/MouseUsual/hit",RIGHT);
	SetNextFocus("Config3a_CV06_chara/MouseUsual/hit","Config3a_CV05_chara/MouseUsual/hit",RIGHT);

	SetNextFocus("Config3a_CV07_chara/MouseUsual/hit","Config3a_CV09_chara/MouseUsual/hit",RIGHT);
	SetNextFocus("Config3a_CV08_chara/MouseUsual/hit","Config3a_CV07_chara/MouseUsual/hit",RIGHT);
	SetNextFocus("Config3a_CV09_chara/MouseUsual/hit","Config3a_CV08_chara/MouseUsual/hit",RIGHT);

	SetNextFocus("Config3a_CV10_chara/MouseUsual/hit","Config3a_VSyncON/MouseUsual/hit",RIGHT);
	SetNextFocus("Config3a_CV11_chara/MouseUsual/hit","Config3a_CV10_chara/MouseUsual/hit",RIGHT);
	SetNextFocus("Config3a_CV12_chara/MouseUsual/hit","Config3a_CV11_chara/MouseUsual/hit",RIGHT);

	SetNextFocus("Config3a_CV13_chara/MouseUsual/hit","Config3a_VSyncON/MouseUsual/hit",RIGHT);
	SetNextFocus("Config3a_CV14_chara/MouseUsual/hit","Config3a_CV13_chara/MouseUsual/hit",RIGHT);
	SetNextFocus("Config3a_CV15_chara/MouseUsual/hit","Config3a_CV14_chara/MouseUsual/hit",RIGHT);

	SetNextFocus("Config3a_CV16_chara/MouseUsual/hit","Config3a_CV18_chara/MouseUsual/hit",RIGHT);
	SetNextFocus("Config3a_CV17_chara/MouseUsual/hit","Config3a_CV16_chara/MouseUsual/hit",RIGHT);
	SetNextFocus("Config3a_CV18_chara/MouseUsual/hit","Config3a_CV17_chara/MouseUsual/hit",RIGHT);

	SetNextFocus("Config3a_CV19_chara/MouseUsual/hit","Config3a_CV21_chara/MouseUsual/hit",RIGHT);
	SetNextFocus("Config3a_CV20_chara/MouseUsual/hit","Config3a_CV19_chara/MouseUsual/hit",RIGHT);
	SetNextFocus("Config3a_CV21_chara/MouseUsual/hit","Config3a_CV20_chara/MouseUsual/hit",RIGHT);

	SetNextFocus("Config3a_CV22_chara/MouseUsual/hit","Config3a_CV23_chara/MouseUsual/hit",RIGHT);
	SetNextFocus("Config3a_CV23_chara/MouseUsual/hit","Config3a_CV22_chara/MouseUsual/hit",RIGHT);

	SetNextFocus("Config3a_CV24_chara/MouseUsual/hit","Config0a_EXIT/MouseUsual/hit",RIGHT);
	SetNextFocus("Config3a_CV25_chara/MouseUsual/hit","Config3a_CV24_chara/MouseUsual/hit",RIGHT);

	//DOWN//
	SetNextFocus("Config3a_BPlayON/MouseUsual/hit","Config3a_BPlayOFF/MouseUsual/hit",DOWN);
	SetNextFocus("Config3a_BPlayOFF/MouseUsual/hit","Config0a_EXIT/MouseUsual/hit",DOWN);
	SetNextFocus("Config3a_SPlayON/MouseUsual/hit","Config3a_SPlayOFF/MouseUsual/hit",DOWN);
	SetNextFocus("Config3a_SPlayOFF/MouseUsual/hit","Config3a_SPlayON/MouseUsual/hit",DOWN);
	SetNextFocus("Config3a_VPlayON/MouseUsual/hit","Config3a_VPlayOFF/MouseUsual/hit",DOWN);
	SetNextFocus("Config3a_VPlayOFF/MouseUsual/hit","Config3a_VPlayON/MouseUsual/hit",DOWN);
	SetNextFocus("Config3a_VSyncON/MouseUsual/hit","Config3a_VSyncOFF/MouseUsual/hit",DOWN);
	SetNextFocus("Config3a_VSyncOFF/MouseUsual/hit","Config3a_VSyncON/MouseUsual/hit",DOWN);

	SetNextFocus("Config3a_CV01_chara/MouseUsual/hit","Config3a_CV03_chara/MouseUsual/hit",DOWN);
	SetNextFocus("Config3a_CV02_chara/MouseUsual/hit","Config3a_CV04_chara/MouseUsual/hit",DOWN);

	SetNextFocus("Config3a_CV03_chara/MouseUsual/hit","Config3a_CV05_chara/MouseUsual/hit",DOWN);
	SetNextFocus("Config3a_CV04_chara/MouseUsual/hit","Config3a_CV06_chara/MouseUsual/hit",DOWN);

	SetNextFocus("Config3a_CV05_chara/MouseUsual/hit","Config3a_CV07_chara/MouseUsual/hit",DOWN);
	SetNextFocus("Config3a_CV06_chara/MouseUsual/hit","Config3a_CV09_chara/MouseUsual/hit",DOWN);

	SetNextFocus("Config3a_CV07_chara/MouseUsual/hit","Config3a_CV10_chara/MouseUsual/hit",DOWN);
	SetNextFocus("Config3a_CV08_chara/MouseUsual/hit","Config3a_CV11_chara/MouseUsual/hit",DOWN);
	SetNextFocus("Config3a_CV09_chara/MouseUsual/hit","Config3a_CV12_chara/MouseUsual/hit",DOWN);

	SetNextFocus("Config3a_CV10_chara/MouseUsual/hit","Config3a_CV13_chara/MouseUsual/hit",DOWN);
	SetNextFocus("Config3a_CV11_chara/MouseUsual/hit","Config3a_CV14_chara/MouseUsual/hit",DOWN);
	SetNextFocus("Config3a_CV12_chara/MouseUsual/hit","Config3a_CV15_chara/MouseUsual/hit",DOWN);

	SetNextFocus("Config3a_CV13_chara/MouseUsual/hit","Config3a_CV16_chara/MouseUsual/hit",DOWN);
	SetNextFocus("Config3a_CV14_chara/MouseUsual/hit","Config3a_CV17_chara/MouseUsual/hit",DOWN);
	SetNextFocus("Config3a_CV15_chara/MouseUsual/hit","Config3a_CV18_chara/MouseUsual/hit",DOWN);

	SetNextFocus("Config3a_CV16_chara/MouseUsual/hit","Config3a_CV19_chara/MouseUsual/hit",DOWN);
	SetNextFocus("Config3a_CV17_chara/MouseUsual/hit","Config3a_CV20_chara/MouseUsual/hit",DOWN);
	SetNextFocus("Config3a_CV18_chara/MouseUsual/hit","Config3a_CV21_chara/MouseUsual/hit",DOWN);

	SetNextFocus("Config3a_CV19_chara/MouseUsual/hit","Config3a_CV22_chara/MouseUsual/hit",DOWN);
	SetNextFocus("Config3a_CV20_chara/MouseUsual/hit","Config3a_CV23_chara/MouseUsual/hit",DOWN);
	SetNextFocus("Config3a_CV21_chara/MouseUsual/hit","Config3a_CV23_chara/MouseUsual/hit",DOWN);

	SetNextFocus("Config3a_CV22_chara/MouseUsual/hit","Config3a_CV24_chara/MouseUsual/hit",DOWN);
	SetNextFocus("Config3a_CV23_chara/MouseUsual/hit","Config3a_CV25_chara/MouseUsual/hit",DOWN);

	SetNextFocus("Config3a_CV24_chara/MouseUsual/hit","Config3a_CV01_chara/MouseUsual/hit",DOWN);
	SetNextFocus("Config3a_CV25_chara/MouseUsual/hit","Config3a_CV02_chara/MouseUsual/hit",DOWN);

	//UP//
	SetNextFocus("Config3a_BPlayON/MouseUsual/hit","Config0a_EXIT/MouseUsual/hit",UP);
	SetNextFocus("Config3a_BPlayOFF/MouseUsual/hit","Config3a_BPlayON/MouseUsual/hit",UP);
	SetNextFocus("Config3a_SPlayON/MouseUsual/hit","Config3a_SPlayOFF/MouseUsual/hit",UP);
	SetNextFocus("Config3a_SPlayOFF/MouseUsual/hit","Config3a_SPlayON/MouseUsual/hit",UP);
	SetNextFocus("Config3a_VPlayON/MouseUsual/hit","Config3a_VPlayOFF/MouseUsual/hit",UP);
	SetNextFocus("Config3a_VPlayOFF/MouseUsual/hit","Config3a_VPlayON/MouseUsual/hit",UP);
	SetNextFocus("Config3a_VSyncON/MouseUsual/hit","Config3a_VSyncOFF/MouseUsual/hit",UP);
	SetNextFocus("Config3a_VSyncOFF/MouseUsual/hit","Config3a_VSyncON/MouseUsual/hit",UP);

	SetNextFocus("Config3a_CV01_chara/MouseUsual/hit","Config3a_CV24_chara/MouseUsual/hit",UP);
	SetNextFocus("Config3a_CV02_chara/MouseUsual/hit","Config3a_CV25_chara/MouseUsual/hit",UP);

	SetNextFocus("Config3a_CV03_chara/MouseUsual/hit","Config3a_CV01_chara/MouseUsual/hit",UP);
	SetNextFocus("Config3a_CV04_chara/MouseUsual/hit","Config3a_CV02_chara/MouseUsual/hit",UP);

	SetNextFocus("Config3a_CV05_chara/MouseUsual/hit","Config3a_CV03_chara/MouseUsual/hit",UP);
	SetNextFocus("Config3a_CV06_chara/MouseUsual/hit","Config3a_CV04_chara/MouseUsual/hit",UP);

	SetNextFocus("Config3a_CV07_chara/MouseUsual/hit","Config3a_CV05_chara/MouseUsual/hit",UP);
	SetNextFocus("Config3a_CV08_chara/MouseUsual/hit","Config3a_CV06_chara/MouseUsual/hit",UP);
	SetNextFocus("Config3a_CV09_chara/MouseUsual/hit","Config3a_CV06_chara/MouseUsual/hit",UP);

	SetNextFocus("Config3a_CV10_chara/MouseUsual/hit","Config3a_CV07_chara/MouseUsual/hit",UP);
	SetNextFocus("Config3a_CV11_chara/MouseUsual/hit","Config3a_CV08_chara/MouseUsual/hit",UP);
	SetNextFocus("Config3a_CV12_chara/MouseUsual/hit","Config3a_CV09_chara/MouseUsual/hit",UP);

	SetNextFocus("Config3a_CV13_chara/MouseUsual/hit","Config3a_CV10_chara/MouseUsual/hit",UP);
	SetNextFocus("Config3a_CV14_chara/MouseUsual/hit","Config3a_CV11_chara/MouseUsual/hit",UP);
	SetNextFocus("Config3a_CV15_chara/MouseUsual/hit","Config3a_CV12_chara/MouseUsual/hit",UP);

	SetNextFocus("Config3a_CV16_chara/MouseUsual/hit","Config3a_CV13_chara/MouseUsual/hit",UP);
	SetNextFocus("Config3a_CV17_chara/MouseUsual/hit","Config3a_CV14_chara/MouseUsual/hit",UP);
	SetNextFocus("Config3a_CV18_chara/MouseUsual/hit","Config3a_CV15_chara/MouseUsual/hit",UP);

	SetNextFocus("Config3a_CV19_chara/MouseUsual/hit","Config3a_CV16_chara/MouseUsual/hit",UP);
	SetNextFocus("Config3a_CV20_chara/MouseUsual/hit","Config3a_CV17_chara/MouseUsual/hit",UP);
	SetNextFocus("Config3a_CV21_chara/MouseUsual/hit","Config3a_CV18_chara/MouseUsual/hit",UP);

	SetNextFocus("Config3a_CV22_chara/MouseUsual/hit","Config3a_CV19_chara/MouseUsual/hit",UP);
	SetNextFocus("Config3a_CV23_chara/MouseUsual/hit","Config3a_CV20_chara/MouseUsual/hit",UP);

	SetNextFocus("Config3a_CV24_chara/MouseUsual/hit","Config3a_CV22_chara/MouseUsual/hit",UP);
	SetNextFocus("Config3a_CV25_chara/MouseUsual/hit","Config3a_CV23_chara/MouseUsual/hit",UP);

}

.//■プロセス
..//スクロールバー用
//■プロセスマクロ「メッセージスピード」
function ConfigMSpeedProcessOPEN()
{
		Fade("@Config2a_MSpeed02", 0, 1000, null, false);
		Fade("@Config2f_MSpeed01", 0, 0, null, true);
	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config2t_06_01", $ConfigTxtFadeTime, 1000, null, false);
}
function ConfigMSpeedProcessSTOP()
{
	Fade("@Config2f_MSpeed01", 0, 1000, null, false);
	Fade("@Config2a_MSpeed02", 0, 0, null, false);
//	SetVolume("@Config2a_MSpeed_Pro01/MouseOver/sound", 0, 1000, NULL);
	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}

//■プロセスマクロ「自動文字送りスピード」
function ConfigASpeedProcessOPEN()
{
		Fade("@Config2a_ASpeed02", 0, 1000, null, false);
		Fade("@Config2f_ASpeed01", 0, 0, null, true);
	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config2t_08_01", $ConfigTxtFadeTime, 1000, null, false);
}
function ConfigASpeedProcessSTOP()
{
	Fade("@Config2f_ASpeed01", 0, 1000, null, false);
	Fade("@Config2a_ASpeed02", 0, 0, null, false);
//	SetVolume("@Config2a_ASpeed_Pro01/MouseOver/sound", 0, 1000, NULL);
	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
}

//■プロセスマクロ「ＢＧＭボリューム」
function ConfigBVolumeProcessOPEN()
{
		Fade("@Config3a_BVolume02", 0, 1000, null, false);
		Fade("@Config3f_BVolume01", 0, 0, null, true);
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_02_01", $ConfigTxtFadeTime, 1000, null, false);
}
function ConfigBVolumeProcessSTOP()
{
	Fade("@Config3f_BVolume01", 0, 1000, null, false);
	Fade("@Config3a_BVolume02", 0, 0, null, false);
//	SetVolume("@Config3a_BVolume_Pro01/MouseOver/sound", 0, 1000, NULL);
	Fade("@Config3t_02_01", $ConfigTxtFadeTime, 0, null, false);
}

//■プロセスマクロ「ＳＥボリューム」
function ConfigSVolumeProcessOPEN()
{
		Fade("@Config3a_SVolume02", 0, 1000, null, false);
		Fade("@Config3f_SVolume01", 0, 0, null, true);
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_04_02", $ConfigTxtFadeTime, 1000, null, false);
}
function ConfigSVolumeProcessSTOP()
{
	Fade("@Config3f_SVolume01", 0, 1000, null, false);
	Fade("@Config3a_SVolume02", 0, 0, null, false);
//	SetVolume("@Config3a_SVolume_Pro01/MouseOver/sound", 0, 1000, NULL);
	Fade("@Config3t_04_02", $ConfigTxtFadeTime, 0, null, false);
}

//■プロセスマクロ「音声ボリューム」
function ConfigVVolumeProcessOPEN()
{
		Fade("@Config3a_VVolume02", 0, 1000, null, false);
		Fade("@Config3f_VVolume01", 0, 0, null, true);
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_06_01", $ConfigTxtFadeTime, 1000, null, false);
}
function ConfigVVolumeProcessSTOP()
{
	Fade("@Config3f_VVolume01", 0, 1000, null, false);
	Fade("@Config3a_VVolume02", 0, 0, null, false);
//	SetVolume("@Config3a_VVolume_Pro01/MouseOver/sound", 0, 1000, NULL);
	Fade("@Config3t_06_01", $ConfigTxtFadeTime, 0, null, false);
}
..//解説テキスト用
..			//(1/3)文字
..					//1.初期化
function Config1a_Default_Over()
{
	Fade("@Config1t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config1t_01_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config1a_DefaultS_Over()
{
	Fade("@Config1t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config1t_01_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config1a_Default_Leave()
{
	Fade("@Config1t_01_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config1a_DefaultS_Leave()
{
	Fade("@Config1t_01_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
..					//2.確認メッセージ
function Config1a_ConfirmON_Over()
{
	Fade("@Config1t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config1t_02_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config1a_ConfirmOFF_Over()
{
	Fade("@Config1t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config1t_02_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config1a_ConfirmS_Over()
{
	Fade("@Config1t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config1t_02_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config1a_ConfirmON_Leave()
{
	Fade("@Config1t_02_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config1a_ConfirmOFF_Leave()
{
	Fade("@Config1t_02_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config1a_ConfirmS_Leave()
{
	Fade("@Config1t_02_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}

..					//3.動画の中断とスキップの可否
function Config1a_MStopON_Over()
{
	Fade("@Config1t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config1t_03_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config1a_MStopOFF_Over()
{
	Fade("@Config1t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config1t_03_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config1a_MStopS_Over()
{
	Fade("@Config1t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config1t_03_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config1a_MStopON_Leave()
{
	Fade("@Config1t_03_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config1a_MStopOFF_Leave()
{
	Fade("@Config1t_03_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config1a_MStopS_Leave()
{
	Fade("@Config1t_03_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
..					//4.Twitterの設定を開く
function Config1a_OpenT_Over()
{
	Fade("@Config1t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config1t_04_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config1a_OpenTS_Over()
{
	Fade("@Config1t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config1t_04_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config1a_OpenT_Leave()
{
	Fade("@Config1t_04_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config1a_OpenTS_Leave()
{
	Fade("@Config1t_04_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
..					//5.起動時に事刻表を開く
function Config1a_OpenJON_Over()
{
	Fade("@Config1t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config1t_05_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config1a_OpenJOFF_Over()
{
	Fade("@Config1t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config1t_05_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config1a_OpenJS_Over()
{
	Fade("@Config1t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config1t_05_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config1a_OpenJON_Leave()
{
	Fade("@Config1t_05_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config1a_OpenJOFF_Leave()
{
	Fade("@Config1t_05_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config1a_OpenJS_Leave()
{
	Fade("@Config1t_05_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
..					//6.ディスプレイ表示切替
function Config1a_FScrnON_Over()
{
	Fade("@Config1t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config1t_06_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config1a_FScrnOFF_Over()
{
	Fade("@Config1t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config1t_06_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config1a_FScrnS_Over()
{
	Fade("@Config1t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config1t_06_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config1a_FScrnON_Leave()
{
	Fade("@Config1t_06_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config1a_FScrnOFF_Leave()
{
	Fade("@Config1t_06_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config1a_FScrnS_Leave()
{
	Fade("@Config1t_06_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}

..					//7.1.アスペクト比自動設定
function Config1a_AAutoON_Over()
{
	Fade("@Config1t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config1t_07_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config1a_AAutoOFF_Over()
{
	Fade("@Config1t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config1t_07_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config1a_AAutoS_Over()
{
	Fade("@Config1t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config1t_07_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config1a_AAutoON_Leave()
{
	Fade("@Config1t_07_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config1a_AAutoOFF_Leave()
{
	Fade("@Config1t_07_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config1a_AAutoS_Leave()
{
	Fade("@Config1t_07_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
..					//7.2.アスペクト比Ｄ依存/固定
/*
function Config1a_AManS_Over()
{
	Fade("@Config1t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config1t_07_02", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config1a_AManS_Leave()
{
	Fade("@Config1t_07_02", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
*/


..					//8.0.依存
function Config1a_FAspectOFF_Over()
{
	Fade("@Config1t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config1t_08_00", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config1a_FAspectOFF_Leave()
{
	Fade("@Config1t_08_00", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
..					//8.1.固定
function Config1a_FAspectON_Over()
{
	Fade("@Config1t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config1t_08_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config1a_FAspectON_Leave()
{
	Fade("@Config1t_08_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config1a_FAspectS_Over()
{
	Fade("@Config1t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config1t_08_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config1a_FAspectS_Leave()
{
	Fade("@Config1t_08_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
..					//8.2.ハードウェア補間
function Config1a_ARatioHW_Over()
{
	Fade("@Config1t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config1t_08_02", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config1a_ARatioHW_Leave()
{
	Fade("@Config1t_08_02", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
..					//8.3.ニアレストネイバー法
function Config1a_ARatioNN_Over()
{
	Fade("@Config1t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config1t_08_03", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config1a_ARatioNN_Leave()
{
	Fade("@Config1t_08_03", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
..					//8.4.バイリニア法
function Config1a_ARatioBR_Over()
{
	Fade("@Config1t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config1t_08_04", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config1a_ARatioBR_Leave()
{
	Fade("@Config1t_08_04", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
..					//9.ユーザー登録
function Config1a_You_Over()
{
	Fade("@Config1t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config1t_09_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config1a_You_Leave()
{
	Fade("@Config1t_09_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
..					//10.HP
function Config1a_Com_Over()
{
	Fade("@Config1t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config1t_10_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config1a_Com_Leave()
{
	Fade("@Config1t_10_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
..					//10.QRコード
function Config1a_QRc_Over()
{
	Fade("@Config1t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config1t_10_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config1a_QRc_Leave()
{
	Fade("@Config1t_10_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
..			//(2/3)文字
..					//1.事刻毎に自動文字送りを解除
function Config2a_CSkipON_Over()
{
	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config2t_01_01", $ConfigTxtFadeTime, 1000, null, true);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config2a_CSkipOFF_Over()
{
	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config2t_01_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config2a_CSkipS_Over()
{
	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config2t_01_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config2a_CSkipON_Leave()
{
	Fade("@Config2t_01_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config2a_CSkipOFF_Leave()
{
	Fade("@Config2t_01_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config2a_CSkipS_Leave()
{
	Fade("@Config2t_01_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
..					//2.未読時でもスキップ
function Config2a_ASkipON_Over()
{
	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config2t_02_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config2a_ASkipOFF_Over()
{
	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config2t_02_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config2a_ASkipS_Over()
{
	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config2t_02_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config2a_ASkipON_Leave()
{
	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config2a_ASkipOFF_Leave()
{
	Fade("@Config2t_02_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config2a_ASkipS_Leave()
{
	Fade("@Config2t_02_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
..					//3.既読箇所の文字色を変更
function Config2a_RdCChgON_Over()
{
	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config2t_03_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config2a_RdCChgOFF_Over()
{
	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config2t_03_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config2a_RdCChgS_Over()
{
	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config2t_03_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config2a_RdCChgON_Leave()
{
	Fade("@Config2t_03_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config2a_RdCChgOFF_Leave()
{
	Fade("@Config2t_03_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config2a_RdCChgS_Leave()
{
	Fade("@Config2t_03_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
..					//4.既読箇所を自動的にスキップ
function Config2a_RdASkipON_Over()
{
	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config2t_04_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config2a_RdASkipOFF_Over()
{
	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config2t_04_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config2a_RdASkipS_Over()
{
	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config2t_04_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config2a_RdASkipON_Leave()
{
	Fade("@Config2t_04_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config2a_RdASkipOFF_Leave()
{
	Fade("@Config2t_04_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config2a_RdASkipS_Leave()
{
	Fade("@Config2t_04_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
..					//5.クリック時に音声を停止
function Config2a_KVoiceON_Over()
{
	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config2t_05_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config2a_KVoiceOFF_Over()
{
	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config2t_05_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config2a_KVoiceS_Over()
{
	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config2t_05_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config2a_KVoiceON_Leave()
{
	Fade("@Config2t_05_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config2a_KVoiceOFF_Leave()
{
	Fade("@Config2t_05_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config2a_KVoiceS_Leave()
{
	Fade("@Config2t_05_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
..					//6.文字の表示速度
//function Config2a_MSpeed_Pro01_Over()
//{
//	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
//	Fade("@Config2t_06_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
//}
function Config2a_MSpeedS_Over()
{
	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config2t_06_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
//function Config2a_MSpeed_Pro01_Leave()
//{
//	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
//}
function Config2a_MSpeedS_Leave()
{
	Fade("@Config2t_06_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
..					//8.自動文字送り時の待ち時間
//function Config2a_ASpeed_Pro01_Over()
//{
//	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
//	Fade("@Config2t_08_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
//}
function Config2a_ASpeedS_Over()
{
	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config2t_08_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
//function Config2a_ASpeed_Pro01_Leave()
//{
//	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
//}
function Config2a_ASpeedS_Leave()
{
	Fade("@Config2t_08_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
..					//9.自動文字送り時の音声待機
function Config2a_SVoice_Over()
{
	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config2t_09_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config2a_SVoiceS_Over()
{
	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config2t_09_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config2a_SVoice_Leave()
{
	Fade("@Config2t_09_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config2a_SVoiceS_Leave()
{
	Fade("@Config2t_09_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
..					//10.クリックで自動文字送りの解除
function Config2a_CABrkON_Over()
{
	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config2t_10_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config2a_CABrkOFF_Over()
{
	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config2t_10_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config2a_CABrkS_Over()
{
	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config2t_10_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config2a_CABrkON_Leave()
{
	Fade("@Config2t_10_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config2a_CABrkOFF_Leave()
{
	Fade("@Config2t_10_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config2a_CABrkS_Leave()
{
	Fade("@Config2t_10_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
..					//11.文字設定のプレビュー
function Config2a_TxtPrvw_Over()
{
	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config2t_11_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config2a_TxtPrvwS_Over()
{
	Fade("@Config2t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config2t_11_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config2a_TxtPrvw_Leave()
{
	Fade("@Config2t_11_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config2a_TxtPrvwS_Leave()
{
	Fade("@Config2t_11_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
..			//(3/3)文字
..					//1.音楽再生設定
function Config3a_BPlayON_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_01_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_BPlayOFF_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_01_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_BPlayS_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_01_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_BPlayON_Leave()
{
	Fade("@Config3t_01_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_BPlayOFF_Leave()
{
	Fade("@Config3t_01_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_BPlayS_Leave()
{
	Fade("@Config3t_01_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
..					//2.音楽の音量
function Config3a_BVolumeS_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_02_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_BVolumeS_Leave()
{
	Fade("@Config3t_02_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
..					//3.効果音再生設定
function Config3a_SPlayON_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_03_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_SPlayOFF_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_03_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_SPlayS_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_03_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_SPlayON_Leave()
{
	Fade("@Config3t_03_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_SPlayOFF_Leave()
{
	Fade("@Config3t_03_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_SPlayS_Leave()
{
	Fade("@Config3t_03_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
..					//4.1.効果音の音量
function Config3a_SVolumeS_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_04_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_SVolumeS_Leave()
{
	Fade("@Config3t_04_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
..					//4.2.効果音の試聴
function Config3a_STest_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_04_02", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_STest_Leave()
{
	Fade("@Config3t_04_02", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_STestS_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_04_02", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_STestS_Leave()
{
	Fade("@Config3t_04_02", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
..					//5.音声再生設定
function Config3a_VPlayON_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_05_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_VPlayOFF_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_05_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_VPlayS_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_05_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_VPlayON_Leave()
{
	Fade("@Config3t_05_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_VPlayOFF_Leave()
{
	Fade("@Config3t_05_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_VPlayS_Leave()
{
	Fade("@Config3t_05_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
..					//6.音声の音量
function Config3a_VVolumeS_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_06_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_VVolumeS_Leave()
{
	Fade("@Config3t_06_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
..					//7.音声の試聴
function Config3a_VTest_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_07_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_VTest_Leave()
{
	Fade("@Config3t_07_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_VTestS_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_07_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_VTestS_Leave()
{
	Fade("@Config3t_07_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
..					//8.音声同期
function Config3a_VSyncON_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_08_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_VSyncOFF_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_08_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_VSyncS_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_08_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_VSyncON_Leave()
{
	Fade("@Config3t_08_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_VSyncOFF_Leave()
{
	Fade("@Config3t_08_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_VSyncS_Leave()
{
	Fade("@Config3t_08_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
..					//9.キャラ別音声再生設定
function Config3a_CV01_chara_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_CV01_chara_Leave()
{
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_CV02_chara_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_CV02_chara_Leave()
{
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_CV03_chara_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_CV03_chara_Leave()
{
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_CV04_chara_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_CV04_chara_Leave()
{
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_CV05_chara_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_CV05_chara_Leave()
{
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_CV06_chara_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_CV06_chara_Leave()
{
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_CV07_chara_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_CV07_chara_Leave()
{
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_CV08_chara_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_CV08_chara_Leave()
{
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_CV09_chara_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_CV09_chara_Leave()
{
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_CV10_chara_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_CV10_chara_Leave()
{
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_CV11_chara_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_CV11_chara_Leave()
{
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_CV12_chara_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_CV12_chara_Leave()
{
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_CV13_chara_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_CV13_chara_Leave()
{
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_CV14_chara_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_CV14_chara_Leave()
{
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_CV15_chara_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_CV15_chara_Leave()
{
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_CV16_chara_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_CV16_chara_Leave()
{
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_CV17_chara_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_CV17_chara_Leave()
{
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_CV18_chara_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_CV18_chara_Leave()
{
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_CV19_chara_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_CV19_chara_Leave()
{
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_CV20_chara_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_CV20_chara_Leave()
{
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_CV21_chara_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_CV21_chara_Leave()
{
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_CV22_chara_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_CV22_chara_Leave()
{
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_CV23_chara_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_CV23_chara_Leave()
{
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_CV24_chara_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_CV24_chara_Leave()
{
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
function Config3a_CV25_chara_Over()
{
	Fade("@Config3t*", $ConfigTxtFadeTime, 0, null, false);
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 1000, null, false);
	//Move("@Config8s_Select", 0, 698,@0, null, false);
}
function Config3a_CV25_chara_Leave()
{
	Fade("@Config3t_09_01", $ConfigTxtFadeTime, 0, null, false);
	//Move("@Config8s_Select", 0, -100,@0, null, false);
}
