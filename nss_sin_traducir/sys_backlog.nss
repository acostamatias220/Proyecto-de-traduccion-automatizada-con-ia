$Revision: 10 $

//=============================================================================//
//■バックログ■
//=============================================================================//

chapter main
{
	Wait(16);

	//★超速からの変遷用
	$SYSTEM_keydown_esc=false;
	$SYSTEM_buttondown_close=false;

	//■フラグ関係
	//バックログ関係システム変数
	//※一行あたりの文字数はシステムの都合上「System.ini」の「バックログ」セクションで設定してください。
	$SYSTEM_backlog_row_max=11;			//バックログ表示の最大行数
	$SYSTEM_backlog_voice_icon_x=153;	//バックログ表示の音声リピートアイコンＸ座標
	$SYSTEM_backlog_position_x=191;		//バックログ表示の文章開始位置Ｘ座標
	$SYSTEM_backlog_position_y=49;		//バックログ表示の文章開始位置Ｙ座標
	$SYSTEM_backlog_row_interval=44	;	//バックログ表示の行間サイズ
	$SYSTEM_backlog_character_width=24;	//バックログ表示の各文字幅
	#SYSTEM_backlog_voice_icon_shift_y=-7;	//バックログ表示の音声アイコンのY軸

	//▽終了スクリプトにてバックログを出さないようにする
	if($SYSTEM_backlog_lock_a){
		return;
	}

	//★ロック設置
	//LockVideo(true);

	//■ロードファイル
	//▽アザナエル
	LoadFile("cg/sys/backlog/背景.png", true);
	LoadFile("cg/data/blind_02_01a_0.png", true);
	LoadFile("cg/sys/backlog/背景２.png", true);
	LoadFile("cg/sys/backlog/飾り.png", true);

	//■準備「スクリーン」//※右クリックから来ていなければ
	if(!$SYSTEM_menu_enable){
		if(Platform()==100){
			CreateTexture("video",10000,center,middle,SCREEN);
			CreateTexture("bkf背景２",10100,center,middle,SCREEN);
		}else{
			CreateTexture("video",10000,center,middle,VIDEO);
			CreateTexture("bkf背景２",10100,center,middle,VIDEO);
		}
	}else if($SYSTEM_menu_enable){
		CreateTexture("video",10000,center,middle,SCREEN);
		CreateTexture("bkf背景２",10100,center,middle,SCREEN);
	}

	SetFont("ＭＳ ゴシック",24,#FFFFFF,#111111,500,AROUND);

	//▼定義「背景」
	CreateTexture("bkf背景",10010,0,0,"cg/sys/backlog/背景.png");
	SetAlias("bkf背景", "bkf背景");
	CreateTexture("bkf飾り",10010,0,150,"cg/sys/backlog/飾り.png");
	SetAlias("bkf飾り", "bkf飾り");
	CreateTexture("bkfバー",10010,871,41,"cg/sys/backlog/スクロールベース.png");
	SetAlias("bkfバー", "bkfバー");

	//▼定義「上ページ送り」
//	CreateChoice("bk上ページ");
//	CreateTexture("bk上ページ/MouseUsual/button",10050,509,31,"cg/sys/backlog/もどるスキップOFF.png");
//	CreateTexture("bk上ページ/MouseOver/button",10050,509,31,"cg/sys/backlog/もどるスキップOVER.png");
//	CreateTexture("bk上ページ/MouseClick/button",10050,509,31,"cg/sys/backlog/もどるスキップON.png");

	//▼定義「上ライン送り」
	CreateTexture("bkf上ライン",10050,917,224,"cg/sys/backlog/逆ボタンoff.png");
	CreateChoice("bk上ライン");
//	CreateChoice("bk上ライン",0,0,0,0,0,0);
	CreateTexture("bk上ライン/MouseUsual/hit",10050,923,230,"cg/sys/backlog/逆ボタンhit.png");
//	CreateTexture("bk上ライン/MouseUsual/button",10050,917,224,"cg/sys/backlog/逆ボタンoff.png");
	CreateTexture("bk上ライン/MouseOver/button",10050,917,224,"cg/sys/backlog/逆ボタンover.png");
	CreateTexture("bk上ライン/MouseClick/button",10050,917,224,"cg/sys/backlog/逆ボタンon.png");

	//▼定義「下ページ送り」
//	CreateChoice("bk下ページ");
//	CreateTexture("bk下ページ/MouseUsual/button",10050,509,523,"cg/sys/backlog/すすむスキップOFF.png");
//	CreateTexture("bk下ページ/MouseOver/button",10050,509,523,"cg/sys/backlog/すすむスキップOVER.png");
//	CreateTexture("bk下ページ/MouseClick/button",10050,509,523,"cg/sys/backlog/すすむスキップON.png");

	//▼定義「下ライン送り」
	CreateTexture("bkf下ライン",10050,917,281,"cg/sys/backlog/進ボタンoff.png");
	CreateChoice("bk下ライン");
//	CreateChoice("bk下ライン",0,0,0,0,0,0);
	CreateTexture("bk下ライン/MouseUsual/hit",10050,923,288,"cg/sys/backlog/進ボタンhit.png");
//	CreateTexture("bk下ライン/MouseUsual/button",10050,917,281,"cg/sys/backlog/進ボタンoff.png");
	CreateTexture("bk下ライン/MouseOver/button",10050,917,281,"cg/sys/backlog/進ボタンover.png");
	CreateTexture("bk下ライン/MouseClick/button",10050,917,281,"cg/sys/backlog/進ボタンon.png");

	//▼定義「出口」
	CreateTexture("bkf出口基本",10050,922,452,"cg/sys/backlog/戻るボタンoff.png");
	CreateChoice("bk出口");
//	CreateChoice("bk出口",0,0,0,0,0,0);
	SetAlias("bk出口", "bk出口");
	CreateTexture("@bk出口/MouseUsual/hit",0,922,452,"cg/sys/backlog/戻るボタンoff.png");
//	CreateTexture("@bk出口/MouseUsual/button",10050,922,452,"cg/sys/backlog/戻るボタンoff.png");
	CreateTexture("@bk出口/MouseOver/button",10050,922,452,"cg/sys/backlog/戻るボタンover.png");
	CreateTexture("@bk出口/MouseClick/button",10050,922,452,"cg/sys/backlog/戻るボタンon.png");

	//▼定義「バックログ」
	CreateScrollbar("bkスクロールバー",0,860,461,860,61,0,VERTICAL,"cg/sys/backlog/スクロールバーoff.png");
	SetAlias("bkスクロールバー", "bkスクロールバー");
	CreateBacklog("bkバックログ",10010);
	SetScrollbar("bkスクロールバー","bkバックログ");

	//▼定義「矢印」
	CreateChoice("bk矢印");
	SetAlias("bk矢印", "bk矢印");
	CreateTexture("@bk矢印/MouseUsual/hit",10050,860,461,"cg/sys/backlog/スクロールバーoff.png");
	CreateProcess("@bk矢印/MouseOver/button", 10050, 0, 0, "BackLogProcessOpen");
	CreateProcess("@bk矢印/MouseLeave/button", 10050, 0, 0, "BackLogProcessStop");

	CreateTexture("bkカーソル01",10050,860,461,"cg/sys/backlog/スクロールバーoff.png");
	SetAlias("bkカーソル01", "bkカーソル01");
	CreateTexture("bkカーソル02",10050,860,461,"cg/sys/backlog/スクロールバーover.png");
	SetAlias("bkカーソル02", "bkカーソル02");

	SetNextFocus("@bk出口/MouseUsual/hit","@bk出口/MouseUsual/hit",LEFT);
	SetNextFocus("@bk出口/MouseUsual/hit","@bk出口/MouseUsual/hit",RIGHT);

	//●準備
	Request("*/*/hit", Erase);
	Fade("bk*", 0, 0, null, false);
	Fade("bk*/*", 0, 0, null, false);
	Fade("bk*/*/*", 0, 0, null, false);
	Fade("bkf*", 0, 1000, null, false);
	Fade("bkカーソル01", 0, 1000, null, false);
	Fade("bk*/MouseUsual/button", 0, 1000, null, false);

//	$tekitou=MilliTime();

	//▽アザナエル
	CreateTexture("bkf上背景",10080,0,0,"cg/sys/backlog/背景.png");
	CreateTexture("bkf上背景２",11000,0,0,"cg/sys/backlog/背景２.png");
	CreateTexture("bkf飾り２",10110,0,150,"cg/sys/backlog/飾り.png");
	Fade("bkf飾り２", 0, 0, null, true);
	Fade("bkf上背景２", 0, 0, null, true);

	//★ロック解除
	//LockVideo(false);

//	Message("デバッグ用ウィンドウ",String("%d",MilliTime()-$tekitou));

	//●描画
	//Fade("bkf背景２", 300, 0, null, true);

	//▽アザナエル
	Fade("bkf飾り２", 100, 1000, Dxl1, false);
	DrawTransition("bkf背景２", 300, 1000, 0, 100, null, "cg/data/blind_02_01a_0.png", false);
	Wait(300);

	Fade("bkf上背景２", 0, 1000, null, true);
	Fade("bkf上背景", 0, 0, null, false);
	Fade("bkf飾り２", 0, 0, null, false);
	Fade("bkf上背景２", 100, 0, null, true);

	WaitAction("bkf背景２", null);

	//★選択肢
	$SYSTEM_backlog_enable=true;
	$PreBackLogPositionY=465;

	$SYSTEM_r_button_down=false;
	while(EnableBacklog()&&$SYSTEM_backlog_enable)
	{
		select
		{
			if(!EnableBacklog()||!$SYSTEM_backlog_enable)){break;}
			if($SYSTEM_keydown_b||$SYSTEM_r_button_down){$SYSTEM_backlog_enable=false;break;}

			case bk出口{$SYSTEM_backlog_enable=false;break;}
			case bk上ライン{Request("bkスクロールバー",Decrement);}
			case bk上ページ{Request("bkスクロールバー",Prev);}
			case bk下ライン{Request("bkスクロールバー",Increment);}
			case bk下ページ{Request("bkスクロールバー",Next);}

			//★カーソルアイコン
			case bkスクロールバー{}
			case bk矢印{}
			Position("bkスクロールバー",$BackLogPositionX,$BackLogPositionY);
			if($BackLogPositionY!=$PreBackLogPositionY){
				Move("@bk矢印/MouseUsual/hit", 0, @0, $BackLogPositionY, null, true);
				Move("bkカーソル01", 0, @0, $BackLogPositionY, null, true);
				Move("bkカーソル02", 0, @0, $BackLogPositionY, null, true);
			}
			$PreBackLogPositionY=$BackLogPositionY;

			if(!EnableBacklog()||!$SYSTEM_backlog_enable)){break;}

			//★キーダウン系
			if($SYSTEM_keydown_f){
				if(!#SYSTEM_window_full_lock){
					#SYSTEM_window_full=!#SYSTEM_window_full;
					#SYSTEM_window_full_lock=false;
					Wait(300);
					$SYSTEM_keydown_f=false;
				}
			}else if($SYSTEM_keydown_esc||$SYSTEM_buttondown_close){
				call_chapter nss/sys_close.nss;
			}else if($SYSTEM_keydown_t){
				call_chapter nss/sys_reset.nss;
			}else if($SYSTEM_keydown_j){
				call_chapter nss/sys_backselect.nss;
			}
		}

		if(!EnableBacklog()||!$SYSTEM_backlog_enable)){break;}
		Wait(16);
	}

	Wait(100);


	//●終了動作「描画」
	if(!$SYSTEM_menu_enable){
		//Fade("bkf背景２", 300, 1000, null, true);

		//▽アザナエル
		DrawTransition("bkf背景２", 300, 0, 1000, 100, null, "cg/data/blind_02_01a_0.png", false);
		WaitAction("bkf背景２", null);

		Delete("bk*/*/*");
		Delete("bk*");
	}else if($SYSTEM_menu_enable){
		//Fade("bkf背景２", 300, 1000, null, true);

		//▽アザナエル
		DrawTransition("bkf背景２", 300, 0, 1000, 100, null, "cg/data/blind_02_01a_0.png", false);
		WaitAction("bkf背景２", null);

		Delete("bk*/*/*");
		Delete("bk*");
	}

	$SYSTEM_r_button_down=false;
	$SYSTEM_keydown_b=false;
	$SYSTEM_backlog_enable=false;

	$SYSTEM_mousewheel_up=false;
	$SYSTEM_mousewheel_down=false;
}


//■プロセスマクロ
function BackLogProcessOpen()
{
	Fade("@bkカーソル02", 0, 1000, null, false);
	Fade("@bkカーソル01", 0, 0, null, true);
}
function BackLogProcessStop()
{
	Fade("@bkカーソル01", 0, 1000, null, false);
	Fade("@bkカーソル02", 0, 0, null, false);
//	SetVolume("@Config1a_BVolume_Pro01/MouseOver/sound", 0, 1000, NULL);
}
