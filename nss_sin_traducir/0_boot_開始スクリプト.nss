$Revision: 35 $

#include "nss/function.nss"
#include "nss/function_move.nss"
#include "nss/function_select.nss"
#include "nss/function_quick.nss"

//"nss/function_stand.nss"【function.nss内でinclude】
//"nss/function_process.nss"【function.nss内でinclude】

//============================================================================//
..//■ゲームモード判別■
//============================================================================//
chapter main
{
	if($GameStart != 1)
	{
		$GameName = 0;
		$GameContiune = 1;
		Reset();
	}

	if(!#TitleConquest){
		//◆超速対応だお
		//SystemConquest();
		//Save(0);
		//#TitleConquest=true;
	}

	//▼はじまりかおわりか
	if($GameClose){
		//▽おわり
		SelectEndMode();
	}else{
		//▽はじまり
		SelectStoryMode();
	}
}
//=============================================================================//


//============================================================================//
..//■ゲーム開始■
//============================================================================//
function SelectStoryMode()
{
	//★：ゲームスピード
	#SYSTEM_play_speed = #play_speed_plus;

	//★：システム変数系の初期化
	$PLACE_title = false;

	//●時間管理「プレイ時間」
	#START_TIME = Time();
	$PLAY_TIME = 0;

	//アザナエル
	if($GameName=="0000キャラクター選択.nss"){
		$SYSTEM_menu_lock=true;
	}else{
		ClockCharaSet();
		$SYSTEM_menu_lock=false;
	}

	$SYSTEM_skip_lock=false;
	$SYSTEM_text_erase_lock=false;
	$SYSTEM_backlog_lock=false;
	$SYSTEM_twitter_lock=false;

	//アザナエル
	$SYSTEM_super_lock=true;
	$LOCAL_extra_lock=true;
	$SYSTEM_load_lock=true;
	$SYSTEM_save_lock=true;
	$NowOclock=0;

	if(#ClearTrue){$SYSTEM_title_lock=false;}
	else{$SYSTEM_title_lock=true;}

	if(#START_FLAG&&Substr($GameName,0,1)!="z"){$SYSTEM_backselect_lock=false;}
	else{$SYSTEM_backselect_lock=true;}

	$SYSTEM_skip=false;
	#SYSTEM_skip_express=false;
	$SYSTEM_text_auto=false;
	$SYSTEM_text_auto_lock=true;

	$SYSTEM_text_erase=false;
	$SYSTEM_text_waitkey=true;

	//ConfigCharacterVoice();

	//◆ショートカットメニュー
	QuickSet();
	if($GameName=="0000キャラクター選択.nss"){QuickStop();}

	//◆立ち絵定義
	StArray();

	$GameCircle=true;
	while($GameCircle){
		if($RateTakenModeAuto||$RateTakenMode){GameRate();}

		$ConGameName = "nss/" + $GameName;
		$AllRead = Conquest($ConGameName,$GameName,null);

		$GameName2 = $GameName + "_MAIN";
		$hoge="nss/" + $GameName + "->" + $GameName2;
//		Conquest($ConGameName,$GameName2,true);
		call_scene $hoge;
	}

	//★超速からの変遷用
	$SYSTEM_keydown_esc=false;
	$SYSTEM_buttondown_close=false;

	//★ギャラリー確認用
	$CgArray=false;

	//◆ショートカットメニュー停止
	QuickStop();

	//◆時計やボックス削除
	ClockDelete(150,true);
	TextBoxDelete(150);

	//◆キャラプレート削除
	Request("@OclockBase/*", UnLock);
	Delete("@OclockBase/*");
}
















function SelectEndMode()
{
	ClockCharaSet();

	$SYSTEM_skip=false;
	#SYSTEM_skip_express=false;
	$SYSTEM_text_auto=false;
	$SYSTEM_text_auto_lock=true;

	#SYSTEM_window_full_lock=false;
	$SYSTEM_title_lock=true;
	$SYSTEM_backselect_lock=true;
	$SYSTEM_text_auto_lock=true;
	$SYSTEM_load_lock=true;
	$SYSTEM_save_lock=true;
	$SYSTEM_skip_lock=false;
	$SYSTEM_text_erase_lock=false;
	$SYSTEM_backlog_lock=true;
//	$SYSTEM_twitter_lock=true;

	$SYSTEM_menu_lock=false;

	$SYSTEM_text_erase=false;
	$SYSTEM_text_waitkey=true;

	$SYSTEM_backlog_lock_a=true;
	$SYSTEM_super_lock=true;
	$LOCAL_extra_lock=true;
	$NowOclock=0;

	//タイトルに戻る（手動）
	//右クリック（手動）
	//設定（手動）

	//エンドモードオリジン
	$GameName=#EndGameName;

	if($GameName!="zz2400ミヅハ.nss"){
		CreateTexture("EndGameTex01", 20001, 0, 0, "cg/sys/adv/終了コント演出.png");
		SetAlias("EndGameTex01", "EndGameTex01");
		Fade("EndGameTex01", 0, 0, null, true);
		CreateTexture("EndGameTex02", 20000, 17, 19, "cg/sys/adv/終了コント見出し.png");
		SetAlias("EndGameTex02", "EndGameTex02");
		Fade("EndGameTex02", 0, 0, null, true);
		Request("EndGameTex02", Lock);
	
		Fade("EndGameTex01", 500, 1000, null, true);
		Fade("EndGameTex02", 0, 1000, null, true);
		Fade("@boxH",0,1000,null,true);
	}

	//◆立ち絵定義
	StArray();

	$PLACE_end=true;
	$GameCircle=1;
	while($GameCircle==1)
	{
		$ConGameName = "nss/" + $GameName;
		$AllRead = Conquest($ConGameName,$GameName,null);

		$GameName2 = $GameName + "_MAIN";
		$hoge="nss/" + $GameName + "->" + $GameName2;
		Conquest($ConGameName,$GameName2,true);
		call_scene $hoge;
	}
}



