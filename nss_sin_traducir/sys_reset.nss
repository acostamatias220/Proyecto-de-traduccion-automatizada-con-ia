#include "nss/function_dialog.nss"

//=============================================================================//
//■リセット確認■
//=============================================================================//
chapter main
{
	Wait(16);

	//★ロックの場合
	if($SYSTEM_title_lock){
		return;
	}

	//★タイトルからの場合
	if($Title_Config||$Title_Load){
		return;
	}

	//★前提変数
	$SYSTEM_menu_reset_enable=true;

	//★超速からの変遷用
	$SYSTEM_keydown_esc=false;
	$SYSTEM_buttondown_close=false;

	//■定義「ビデオ設置」
	/*
	if(!$SYSTEM_menu_config_enable&&!$SYSTEM_menu_save_enable&&!$SYSTEM_menu_load_enable&&!$SYSTEM_menu_enable&&!$SYSTEM_backlog_enable&&!$LOCAL_hmode_enable){
		if(!$InDialog){
			CreateTexture("video", 1010000, center, middle, "VIDEO");
		}
	}
	*/
	if(IsInterrupt()){
		CreateTexture("video",1010000,center,middle,"VIDEO");
	}

	//★尋ねない
	if(#no_ask){
		CreateColor("BLACK",1112000,center,middle,1024,600,BLACK);
		Fade("BLACK",0,0,null,true);
		Fade("BLACK",300,1000,null,true);

		//▽セーブ
		SaveAXNL();

		ClearScore(LOCAL);
		$Logo=true;
		$SYSTEM_low_thread_priority=false;
		$SYSTEM_save_lock=false;
		$SYSTEM_load_lock=false;
		$SYSTEM_text_auto=false;
		
		// 裏ラテ欄解除
		#_IS_URA_RATE=false;
		Reset();
	}

	//■定義「メッセージウインドウ作成」
	CreateName("MSGWND");

	//□基礎構築
	DialogBase("text_タイトル画面");

	//★選択肢開始
	$SYSTEM_keydown_t=false;
	$SYSTEM_r_button_down=false;
	select{
		if($SYSTEM_keydown_t||$SYSTEM_r_button_down){break;}

		case MSGWND/MSG_no{}
		case MSGWND/MSG_yes{
			//所定の動作
			CreateColor("BLACK",1112000,center,middle,1024,600,BLACK);
			Fade("BLACK",0,0,null,true);
			Fade("BLACK",300,1000,null,true);

			//▽セーブ
			SaveAXNL();

			ClearScore(LOCAL);
			$Logo=true;
			$SYSTEM_low_thread_priority=false;
			$SYSTEM_save_lock=false;
			$SYSTEM_load_lock=false;
			$SYSTEM_text_auto=false;
			
			// 裏ラテ欄解除
			#_IS_URA_RATE=false;
			Reset();
		}

		//★キーダウン系
		if($SYSTEM_keydown_f){
			DialogFull();
		}else if($SYSTEM_keydown_esc||$SYSTEM_buttondown_close){
			DialogClose();
		}
	}

	//■終了共通演出
	DialogEnd();

	$SYSTEM_r_button_down=false;
	$SYSTEM_keydown_t=false;
	$SYSTEM_menu_reset_enable=false;

	$SYSTEM_mousewheel_up=false;
	$SYSTEM_mousewheel_down=false;
}
