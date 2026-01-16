#include "nss/function_dialog.nss"

//=============================================================================//
//■終了確認■
//=============================================================================//
chapter main
{
	if($GameClose){
		//●総プレイ時間：合計
		#ALL_PLAY_TIME=#ALL_PLAY_TIME+(Time()-#BEGIN_TIME);
		
		// 裏ラテ欄解除
		#_IS_URA_RATE=false;
		Exit();
	}

	//★タイトルから遷移する「Load」「Config」のダイアログ前には「$OnDialog」を入れてください
	//二重にダイアログが出るのを防止する為です
	if(!$OnDialog){
		Wait(16);
		SystemClose();
	}
}


chapter main2
{
	Wait(16);
	SystemClose();
}


function SystemClose()
{
	//★前提変数
	$SYSTEM_menu_close_enable=true;

	//■定義「ビデオ設置」
	/*
	if((!$Title_Exit&&$PLACE_title)||(!$Title_Exit&&!$SL_Exit&&!$SYSTEM_menu_config_enable&&!$SYSTEM_menu_save_enable&&!$SYSTEM_menu_load_enable&&!$SYSTEM_menu_enable&&!$SYSTEM_backlog_enable&&!$SYSTEM_config_enable&&!$LOCAL_hmode_enable)){
		if(!$InDialog){
			CreateTexture("video",1010000,center,middle,"VIDEO");
		}
	}
	*/
	if(IsInterrupt()){
		CreateTexture("video",1010000,center,middle,"VIDEO");
	}

	//★尋ねない
	if(#no_ask){
		CreateColor("BLACK",1111999,center,middle,32,32,BLACK);
		Zoom("BLACK",0,100000,100000,null,false);
		Fade("BLACK", 0, 0, null, true);
		Fade("BLACK", 300, 1000, null, true);

		//▽セーブ
		SaveAXNL();

		//●総プレイ時間：合計
		#ALL_PLAY_TIME=#ALL_PLAY_TIME+(Time()-#BEGIN_TIME);

		// 裏ラテ欄解除
		#_IS_URA_RATE=false;

		Exit();
	}

	//★終了「タイトルからの終了処理」
	if($Title_Exit&&!$SL_Exit){
		CreateColor("BLACK",1112000,center,middle,32,32,BLACK);
		Zoom("BLACK",0,100000,100000,null,false);
		Fade("BLACK", 0, 0, null, true);
		Fade("BLACK", 500, 1000, null, true);

		if($GameName=="0000キャラクター選択.nss"||$PLACE_reco||Substr($GameName,0,1)=="z"){$GameCircle=false;}

		if($GameCircle){
			//☆うさおさん：コントゲーム名前取得コマンド予定地
			//#EndGameName="z0000ＡＤ.nss";
			_setEndGameName();

			ClearScore(LOCAL);
			$GameClose=true;
			$Logo=true;
			$SYSTEM_low_thread_priority=false;
			$SYSTEM_save_lock=false;
			$SYSTEM_load_lock=false;
			$SYSTEM_text_auto=false;
			
			// 裏ラテ欄解除
			#_IS_URA_RATE=false;
			Reset();
		}else{
			//●総プレイ時間：合計
			#ALL_PLAY_TIME=#ALL_PLAY_TIME+(Time()-#BEGIN_TIME);

			// 裏ラテ欄解除
			#_IS_URA_RATE=false;
			Exit();
		}
	}

	//■定義「メッセージウインドウ作成」
	if(!$PLACE_title&&!$SL_Exit&&!$SYSTEM_menu_config_enable&&!$SYSTEM_backlog_enable&&!$SYSTEM_menu_save_enable&&!$SYSTEM_menu_load_enable&&!$tps_close){
		CreateName("MSGWND");
	}else{
		CreateName("MSGWND");
	}

	//□基礎構築
	DialogBase("text_終了");

	//★選択肢開始
	$SYSTEM_r_button_down=false;
	$SYSTEM_buttondown_close=false;
	$SYSTEM_keydown_esc=false;
	select{
		if($SYSTEM_keydown_esc||$SYSTEM_buttondown_close||$SYSTEM_r_button_down){break;}

		case MSGWND/MSG_no{}
		case MSGWND/MSG_yes{
			CreateColor("BLACK",1111999,center,middle,32,32,BLACK);
			Zoom("BLACK",0,100000,100000,null,false);
			Fade("BLACK", 0, 0, null, true);
			Fade("BLACK", 300, 1000, null, true);

			if($GameCircle&&!$PLACE_reco&&$GameName!="0000キャラクター選択.nss"&&Substr($GameName,0,1)!="z"){
				//▽セーブ
				SaveAXNL();

				//☆うさおさん：コントゲーム名前取得コマンド予定地
				_setEndGameName();

				ClearScore(LOCAL);
				$GameClose=true;
				$Logo=true;
				$SYSTEM_low_thread_priority=false;
				$SYSTEM_save_lock=false;
				$SYSTEM_load_lock=false;
				$SYSTEM_text_auto=false;
				
				// 裏ラテ欄解除
				#_IS_URA_RATE=false;

				Reset();
			}else{
				//●総プレイ時間：合計
				#ALL_PLAY_TIME=#ALL_PLAY_TIME+(Time()-#BEGIN_TIME);

				// 裏ラテ欄解除
				#_IS_URA_RATE=false;
				Exit();
			}
		}

		//★キーダウン系
		if($SYSTEM_keydown_f){
			DialogFull();
		}

		if(!$SYSTEM_menu_close_enable){break;}
	}

	//■終了共通演出
	DialogEnd();

	$SYSTEM_r_button_down=false;
	$SYSTEM_buttondown_close=false;
	$SYSTEM_keydown_esc=false;
	$SYSTEM_menu_close_enable=false;

	$SYSTEM_mousewheel_up=false;
	$SYSTEM_mousewheel_down=false;
}




//■マクロ「寸劇セレクト」
function _setEndGameName()
{
	$c=Random(6);
	$time=AXNL_GetScriptTimeZone($GameName);

	#EndGameName="z0000ＡＤ";
	if(#RouteName=="トゥルー"){
		//■■■トゥルー■■■
		if($GameName=="2400沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss"){$time=2400;}
		if($c==0){
			if($time==1800){#EndGameName="z1800ユージロー";}
			else if($time==1810){#EndGameName="z1800ユージロー";}
			else if($time==1820){#EndGameName="z1820ユージロー";}
			else if($time==1830){#EndGameName="z1830ユージロー";}
			else if($time==1840){#EndGameName="z1830ユージロー";}
			else if($time==1850){#EndGameName="z1850ユージロー_双六";}
			else if($time==1900){#EndGameName="z1900ユージロー";}
			else if($time==1910){#EndGameName="z1900ユージロー";}
			else if($time==1920){#EndGameName="z1920ユージロー";}
			else if($time==1930){#EndGameName="z1930ユージロー";}
			else if($time==1940){#EndGameName="z1940ユージロー";}
			else if($time==1950){#EndGameName="z1950ユージロー";}
			else if($time==2000){#EndGameName="z2000ユージロー_みそブー";}
			else if($time==2010){#EndGameName="z2010ユージロー_みそブー";}
			else if($time==2020){#EndGameName="z2020ユージロー_みそブー";}
			else if($time==2030){#EndGameName="z2030ユージロー_みそブー";}
			else if($time==2040){#EndGameName="z2040ユージロー_みそブー";}
			else if($time==2050){#EndGameName="z2050ユージロー_ミヅハ_ＡＤ";}
			else if($time==2100){#EndGameName="z2100ユージロー_ミヅハ";}
			else if($time==2110){#EndGameName="z2110ユージロー_ミヅハ";}
			else if($time==2120){#EndGameName="z2120ユージロー";}
			else if($time==2130){#EndGameName="z2130ユージロー_ミヅハ";}
			else if($time==2140){#EndGameName="z2140ユージロー_ミヅハ";}
			else if($time==2150){#EndGameName="z2150ユージロー";}
			else if($time==2200){#EndGameName="z2200ユージロー";}
			else if($time==2210){#EndGameName="z2210ユージロー";}
			else if($time==2220){#EndGameName="z2220ユージロー_鈴";}
			else if($time==2230){#EndGameName="z2230ユージロー_鈴";}
			else if($time==2240){#EndGameName="z2240ユージロー";}
			else if($time==2250){#EndGameName="z2250ユージロー";}
			else if($time==2300){#EndGameName="z2300ユージロー";}
			else if($time==2310){#EndGameName="z2310ユージロー";}
			else if($time==2320){#EndGameName="z2320ユージロー";}
			else if($time==2330){#EndGameName="z2330ユージロー";}
			else if($time==2340){#EndGameName="z2340ユージロー";}
			else if($time==2350){#EndGameName="z2350ユージロー";}
			else if($time==2400){#EndGameName="z2400ユージロー";}
		}else if($c==1){
			if($time==1800){#EndGameName="z1800みそブー";}
			else if($time==1810){#EndGameName="z1810みそブー_双六";}
			else if($time==1820){#EndGameName="z1820みそブー_双六";}
			else if($time==1830){#EndGameName="z1830みそブー_ミヅハ";}
			else if($time==1840){#EndGameName="z1840みそブー_ミヅハ";}
			else if($time==1850){#EndGameName="z1850みそブー_ミヅハ";}
			else if($time==1900){#EndGameName="z1900みそブー_ミヅハ";}
			else if($time==1910){#EndGameName="z1910みそブー_ミヅハ";}
			else if($time==1920){#EndGameName="z1920みそブー_ＡＤ";}
			else if($time==1930){#EndGameName="z1930みそブー_ＡＤ";}
			else if($time==1940){#EndGameName="z1940みそブー";}
			else if($time==1950){#EndGameName="z1950みそブー_ミヅハ";}
			else if($time==2000){#EndGameName="z2000ユージロー_みそブー";}
			else if($time==2010){#EndGameName="z2010ユージロー_みそブー";}
			else if($time==2020){#EndGameName="z2020ユージロー_みそブー";}
			else if($time==2030){#EndGameName="z2030ユージロー_みそブー";}
			else if($time==2040){#EndGameName="z2040ユージロー_みそブー";}
			else if($time==2050){#EndGameName="z2050みそブー_鈴";}
			else if($time==2100){#EndGameName="z2100みそブー_鈴_双六";}
			else if($time==2110){#EndGameName="z2110みそブー";}
			else if($time==2120){#EndGameName="z2120みそブー";}
			else if($time==2130){#EndGameName="z2130みそブー_ＡＤ";}
			else if($time==2140){#EndGameName="z2140みそブー";}
			else if($time==2150){#EndGameName="z2150みそブー";}
			else if($time==2200){#EndGameName="z2200みそブー_ミヅハ";}
			else if($time==2210){#EndGameName="z2210みそブー_ミヅハ";}
			else if($time==2220){#EndGameName="z2220みそブー_ミヅハ";}
			else if($time==2230){#EndGameName="z2220みそブー_ミヅハ";}
			else if($time==2240){#EndGameName="z2240みそブー_ミヅハ";}
			else if($time==2250){#EndGameName="z2250みそブー_ミヅハ";}
			else if($time==2300){#EndGameName="z2300みそブー";}
			else if($time==2310){#EndGameName="z2310みそブー";}
			else if($time==2320){#EndGameName="z2320みそブー";}
			else if($time==2330){#EndGameName="z2330みそブー";}
			else if($time==2340){#EndGameName="z2340みそブー";}
			else if($time==2350){#EndGameName="z2350みそブー";}
			else if($time==2400){#EndGameName="z2400みそブー";}
		}else if($c==2){
			if($time==1800){#EndGameName="z1800ミヅハ";}
			else if($time==1810){#EndGameName="z1810ミヅハ";}
			else if($time==1820){#EndGameName="z1820ミヅハ";}
			else if($time==1830){#EndGameName="z1830みそブー_ミヅハ";}
			else if($time==1840){#EndGameName="z1840みそブー_ミヅハ";}
			else if($time==1850){#EndGameName="z1850みそブー_ミヅハ";}
			else if($time==1900){#EndGameName="z1900みそブー_ミヅハ";}
			else if($time==1910){#EndGameName="z1910みそブー_ミヅハ";}
			else if($time==1920){#EndGameName="z1920ミヅハ";}
			else if($time==1930){#EndGameName="z1930ミヅハ";}
			else if($time==1940){#EndGameName="z1940ミヅハ";}
			else if($time==1950){#EndGameName="z1950みそブー_ミヅハ";}
			else if($time==2000){#EndGameName="z2000ミヅハ";}
			else if($time==2010){#EndGameName="z2010ミヅハ";}
			else if($time==2020){#EndGameName="z2020ミヅハ";}
			else if($time==2030){#EndGameName="z2030ミヅハ";}
			else if($time==2040){#EndGameName="z2040ミヅハ";}
			else if($time==2050){#EndGameName="z2050ユージロー_ミヅハ_ＡＤ";}
			else if($time==2100){#EndGameName="z2100ユージロー_ミヅハ";}
			else if($time==2110){#EndGameName="z2110ユージロー_ミヅハ";}
			else if($time==2120){#EndGameName="z2120ミヅハ";}
			else if($time==2130){#EndGameName="z2130ユージロー_ミヅハ";}
			else if($time==2140){#EndGameName="z2140ユージロー_ミヅハ";}
			else if($time==2150){#EndGameName="z2150ミヅハ";}
			else if($time==2200){#EndGameName="z2200みそブー_ミヅハ";}
			else if($time==2210){#EndGameName="z2210みそブー_ミヅハ";}
			else if($time==2220){#EndGameName="z2220みそブー_ミヅハ";}
			else if($time==2230){#EndGameName="z2220みそブー_ミヅハ";}
			else if($time==2240){#EndGameName="z2240みそブー_ミヅハ";}
			else if($time==2250){#EndGameName="z2250みそブー_ミヅハ";}
			else if($time==2300){#EndGameName="z2300ミヅハ";}
			else if($time==2310){#EndGameName="z2300ミヅハ";}
			else if($time==2320){#EndGameName="z2320ミヅハ";}
			else if($time==2330){#EndGameName="z2330ミヅハ";}
			else if($time==2340){#EndGameName="z2340ミヅハ";}
			else if($time==2350){#EndGameName="z2350ミヅハ";}
			else if($time==2400){#EndGameName="z2400ミヅハ";}
		}else if($c==3){
			if($time==1800){#EndGameName="z1800鈴";}
			else if($time==1810){#EndGameName="z1800鈴";}
			else if($time==1820){#EndGameName="z1820鈴";}
			else if($time==1830){#EndGameName="z1830鈴";}
			else if($time==1840){#EndGameName="z1830鈴";}
			else if($time==1850){#EndGameName="z1850鈴";}
			else if($time==1900){#EndGameName="z1900鈴";}
			else if($time==1910){#EndGameName="z1910鈴";}
			else if($time==1920){#EndGameName="z1910鈴";}
			else if($time==1930){#EndGameName="z1930鈴";}
			else if($time==1940){#EndGameName="z1940鈴";}
			else if($time==1950){#EndGameName="z1950鈴";}
			else if($time==2000){#EndGameName="z2000鈴";}
			else if($time==2010){#EndGameName="z2010鈴";}
			else if($time==2020){#EndGameName="z2010鈴";}
			else if($time==2030){#EndGameName="z2030鈴";}
			else if($time==2040){#EndGameName="z2030鈴";}
			else if($time==2050){#EndGameName="z2050みそブー_鈴";}
			else if($time==2100){#EndGameName="z2100みそブー_鈴_双六";}
			else if($time==2110){#EndGameName="z2110鈴";}
			else if($time==2120){#EndGameName="z2110鈴";}
			else if($time==2130){#EndGameName="z2130鈴";}
			else if($time==2140){#EndGameName="z2140鈴";}
			else if($time==2150){#EndGameName="z2150鈴";}
			else if($time==2200){#EndGameName="z2200鈴";}
			else if($time==2210){#EndGameName="z2210鈴";}
			else if($time==2220){#EndGameName="z2220ユージロー_鈴";}
			else if($time==2230){#EndGameName="z2230ユージロー_鈴";}
			else if($time==2240){#EndGameName="z2240鈴";}
			else if($time==2250){#EndGameName="z2240鈴";}
			else if($time==2300){#EndGameName="z2300鈴_ＡＤ";}
			else if($time==2310){#EndGameName="z2310鈴_ＡＤ";}
			else if($time==2320){#EndGameName="z2320鈴";}
			else if($time==2330){#EndGameName="z2320鈴";}
			else if($time==2340){#EndGameName="z2340鈴";}
			else if($time==2350){#EndGameName="z2350鈴";}
			else if($time==2400){#EndGameName="z2400鈴";}
		}else if($c==4){
			if($time==1800){#EndGameName="z1800双六";}
			else if($time==1810){#EndGameName="z1810みそブー_双六";}
			else if($time==1820){#EndGameName="z1820みそブー_双六";}
			else if($time==1830){#EndGameName="z1830双六";}
			else if($time==1840){#EndGameName="z1840双六";}
			else if($time==1850){#EndGameName="z1850ユージロー_双六";}
			else if($time==1900){#EndGameName="z1900双六";}
			else if($time==1910){#EndGameName="z1900双六";}
			else if($time==1920){#EndGameName="z1920双六";}
			else if($time==1930){#EndGameName="z1930双六";}
			else if($time==1940){#EndGameName="z1940双六_ＡＤ";}
			else if($time==1950){#EndGameName="z1950双六";}
			else if($time==2000){#EndGameName="z2000双六";}
			else if($time==2010){#EndGameName="z2010双六";}
			else if($time==2020){#EndGameName="z2020双六";}
			else if($time==2030){#EndGameName="z2030双六";}
			else if($time==2040){#EndGameName="z2040双六";}
			else if($time==2050){#EndGameName="z2050双六";}
			else if($time==2100){#EndGameName="z2100みそブー_鈴_双六";}
			else if($time==2110){#EndGameName="z2110双六";}
			else if($time==2120){#EndGameName="z2120双六";}
			else if($time==2130){#EndGameName="z2130双六";}
			else if($time==2140){#EndGameName="z2140双六";}
			else if($time==2150){#EndGameName="z2150双六";}
			else if($time==2200){#EndGameName="z2200双六";}
			else if($time==2210){#EndGameName="z2210双六";}
			else if($time==2220){#EndGameName="z2220双六";}
			else if($time==2230){#EndGameName="z2230双六";}
			else if($time==2240){#EndGameName="z2240双六";}
			else if($time==2250){#EndGameName="z2250双六";}
			else if($time==2300){#EndGameName="z2300双六";}
			else if($time==2310){#EndGameName="z2310双六";}
			else if($time==2320){#EndGameName="z2320双六";}
			else if($time==2330){#EndGameName="z2330双六";}
			else if($time==2340){#EndGameName="z2340双六";}
			else if($time==2350){#EndGameName="z2350双六";}
			else if($time==2400){#EndGameName="z2400双六";}
		}else if($c==5){
			if($time==1800){#EndGameName="z1800ＡＤ";}
			else if($time==1810){#EndGameName="z1810ＡＤ";}
			else if($time==1820){#EndGameName="z1820ＡＤ";}
			else if($time==1830){#EndGameName="z1830ＡＤ";}
			else if($time==1840){#EndGameName="z1840ＡＤ";}
			else if($time==1850){#EndGameName="z1850ＡＤ";}
			else if($time==1900){#EndGameName="z1900ＡＤ";}
			else if($time==1910){#EndGameName="z1910ＡＤ";}
			else if($time==1920){#EndGameName="z1920みそブー_ＡＤ";}
			else if($time==1930){#EndGameName="z1930みそブー_ＡＤ";}
			else if($time==1940){#EndGameName="z1940双六_ＡＤ";}
			else if($time==1950){#EndGameName="z1950ＡＤ";}
			else if($time==2000){#EndGameName="z2000ＡＤ";}
			else if($time==2010){#EndGameName="z2010ＡＤ";}
			else if($time==2020){#EndGameName="z2020ＡＤ";}
			else if($time==2030){#EndGameName="z2030ＡＤ";}
			else if($time==2040){#EndGameName="z2040ＡＤ";}
			else if($time==2050){#EndGameName="z2050ユージロー_ミヅハ_ＡＤ";}
			else if($time==2100){#EndGameName="z2100ＡＤ";}
			else if($time==2110){#EndGameName="z2110ＡＤ";}
			else if($time==2120){#EndGameName="z2120ＡＤ";}
			else if($time==2130){#EndGameName="z2130みそブー_ＡＤ";}
			else if($time==2140){#EndGameName="z2140ＡＤ";}
			else if($time==2150){#EndGameName="z2150ＡＤ";}
			else if($time==2200){#EndGameName="z2200ＡＤ";}
			else if($time==2210){#EndGameName="z2210ＡＤ";}
			else if($time==2220){#EndGameName="z2220ＡＤ";}
			else if($time==2230){#EndGameName="z2230ＡＤ";}
			else if($time==2240){#EndGameName="z2240ＡＤ";}
			else if($time==2250){#EndGameName="z2250ＡＤ";}
			else if($time==2300){#EndGameName="z2300鈴_ＡＤ";}
			else if($time==2310){#EndGameName="z2310鈴_ＡＤ";}
			else if($time==2320){#EndGameName="z2320ＡＤ";}
			else if($time==2330){#EndGameName="z2320ＡＤ";}
			else if($time==2340){#EndGameName="z2340ＡＤ";}
			else if($time==2350){#EndGameName="z2350ＡＤ";}
			else if($time==2400){#EndGameName="z2400ＡＤ";}
		}
	}else if(#RouteName=="aa"){
		//■■■aa■■■
		if($GameName=="aa2345フウリ.nss"){$time=2400;}
		if($GameName=="aa2350千秋_恵那.nss"){$time=2400;}
		if($GameName=="aa2355沙紅羅.nss"){$time=2400;}
		if($time==2400&&$c==4){$c=0;}
		if($c==0){
			if($time==1800){#EndGameName="z1800ユージロー";}
			else if($time==1810){#EndGameName="z1800ユージロー";}
			else if($time==1820){#EndGameName="z1820ユージロー";}
			else if($time==1830){#EndGameName="z1830ユージロー";}
			else if($time==1840){#EndGameName="z1830ユージロー";}
			else if($time==1850){#EndGameName="z1850ユージロー_双六";}
			else if($time==1900){#EndGameName="z1900ユージロー";}
			else if($time==1910){#EndGameName="z1900ユージロー";}
			else if($time==1920){#EndGameName="z1920ユージロー";}
			else if($time==1930){#EndGameName="z1930ユージロー";}
			else if($time==1940){#EndGameName="z1940ユージロー";}
			else if($time==1950){#EndGameName="z1950ユージロー";}
			else if($time==2000){#EndGameName="z2000ユージロー_みそブー";}
			else if($time==2010){#EndGameName="z2010ユージロー_みそブー";}
			else if($time==2020){#EndGameName="z2020ユージロー_みそブー";}
			else if($time==2030){#EndGameName="za2030ユージロー_みそブー";}
			else if($time==2040){#EndGameName="za2040ユージロー_みそブー";}
			else if($time==2050){#EndGameName="zaa2050ユージロー";}
			else if($time==2100){#EndGameName="zaa2100ユージロー";}
			else if($time==2110){#EndGameName="zaa2110ユージロー";}
			else if($time==2120){#EndGameName="zaa2120ユージロー";}
			else if($time==2400){#EndGameName="zaa2400ユージロー";}
		}else if($c==1){
			if($time==1800){#EndGameName="z1800みそブー";}
			else if($time==1810){#EndGameName="z1810みそブー_双六";}
			else if($time==1820){#EndGameName="z1820みそブー_双六";}
			else if($time==1830){#EndGameName="z1830みそブー_ミヅハ";}
			else if($time==1840){#EndGameName="z1840みそブー_ミヅハ";}
			else if($time==1850){#EndGameName="z1850みそブー_ミヅハ";}
			else if($time==1900){#EndGameName="z1900みそブー_ミヅハ";}
			else if($time==1910){#EndGameName="z1910みそブー_ミヅハ";}
			else if($time==1920){#EndGameName="z1920みそブー_ＡＤ";}
			else if($time==1930){#EndGameName="z1930みそブー_ＡＤ";}
			else if($time==1940){#EndGameName="z1940みそブー";}
			else if($time==1950){#EndGameName="z1950みそブー_ミヅハ";}
			else if($time==2000){#EndGameName="z2000ユージロー_みそブー";}
			else if($time==2010){#EndGameName="z2010ユージロー_みそブー";}
			else if($time==2020){#EndGameName="z2020ユージロー_みそブー";}
			else if($time==2030){#EndGameName="za2030ユージロー_みそブー";}
			else if($time==2040){#EndGameName="za2040ユージロー_みそブー";}
			else if($time==2050){#EndGameName="zaa2050みそブー";}
			else if($time==2100){#EndGameName="zaa2100みそブー";}
			else if($time==2110){#EndGameName="zaa2110みそブー";}
			else if($time==2120){#EndGameName="zaa2120みそブー";}
			else if($time==2400){#EndGameName="zaa2400みそブー";}
		}else if($c==2){
			if($time==1800){#EndGameName="z1800ミヅハ";}
			else if($time==1810){#EndGameName="z1810ミヅハ";}
			else if($time==1820){#EndGameName="z1820ミヅハ";}
			else if($time==1830){#EndGameName="z1830みそブー_ミヅハ";}
			else if($time==1840){#EndGameName="z1840みそブー_ミヅハ";}
			else if($time==1850){#EndGameName="z1850みそブー_ミヅハ";}
			else if($time==1900){#EndGameName="z1900みそブー_ミヅハ";}
			else if($time==1910){#EndGameName="z1910みそブー_ミヅハ";}
			else if($time==1920){#EndGameName="z1920ミヅハ";}
			else if($time==1930){#EndGameName="z1930ミヅハ";}
			else if($time==1940){#EndGameName="z1940ミヅハ";}
			else if($time==1950){#EndGameName="z1950みそブー_ミヅハ";}
			else if($time==2000){#EndGameName="z2000ミヅハ";}
			else if($time==2010){#EndGameName="z2010ミヅハ";}
			else if($time==2020){#EndGameName="z2020ミヅハ";}
			else if($time==2030){#EndGameName="za2030ミヅハ";}
			else if($time==2040){#EndGameName="za2040ミヅハ";}
			else if($time==2050){#EndGameName="zaa2050ミヅハ";}
			else if($time==2100){#EndGameName="zaa2100ミヅハ";}
			else if($time==2110){#EndGameName="zaa2110ミヅハ";}
			else if($time==2120){#EndGameName="zaa2120ミヅハ_双六";}
			else if($time==2400){#EndGameName="zaa2400ミヅハ";}
		}else if($c==3){
			if($time==1800){#EndGameName="z1800鈴";}
			else if($time==1810){#EndGameName="z1800鈴";}
			else if($time==1820){#EndGameName="z1820鈴";}
			else if($time==1830){#EndGameName="z1830鈴";}
			else if($time==1840){#EndGameName="z1830鈴";}
			else if($time==1850){#EndGameName="z1850鈴";}
			else if($time==1900){#EndGameName="z1900鈴";}
			else if($time==1910){#EndGameName="z1910鈴";}
			else if($time==1920){#EndGameName="z1910鈴";}
			else if($time==1930){#EndGameName="z1930鈴";}
			else if($time==1940){#EndGameName="z1940鈴";}
			else if($time==1950){#EndGameName="z1950鈴";}
			else if($time==2000){#EndGameName="z2000鈴";}
			else if($time==2010){#EndGameName="z2010鈴";}
			else if($time==2020){#EndGameName="z2010鈴";}
			else if($time==2030){#EndGameName="z2030鈴";}
			else if($time==2040){#EndGameName="z2030鈴";}
			else if($time==2050){#EndGameName="zaa2050鈴";}
			else if($time==2100){#EndGameName="zaa2100鈴";}
			else if($time==2110){#EndGameName="zaa2110鈴";}
			else if($time==2120){#EndGameName="zaa2120鈴_ＡＤ";}
			else if($time==2400){#EndGameName="z2400鈴";}
		}else if($c==4){
			if($time==1800){#EndGameName="z1800双六";}
			else if($time==1810){#EndGameName="z1810みそブー_双六";}
			else if($time==1820){#EndGameName="z1820みそブー_双六";}
			else if($time==1830){#EndGameName="z1830双六";}
			else if($time==1840){#EndGameName="z1840双六";}
			else if($time==1850){#EndGameName="z1850ユージロー_双六";}
			else if($time==1900){#EndGameName="z1900双六";}
			else if($time==1910){#EndGameName="z1900双六";}
			else if($time==1920){#EndGameName="z1920双六";}
			else if($time==1930){#EndGameName="z1930双六";}
			else if($time==1940){#EndGameName="z1940双六_ＡＤ";}
			else if($time==1950){#EndGameName="z1950双六";}
			else if($time==2000){#EndGameName="z2000双六";}
			else if($time==2010){#EndGameName="z2010双六";}
			else if($time==2020){#EndGameName="z2020双六";}
			else if($time==2030){#EndGameName="za2030双六";}
			else if($time==2040){#EndGameName="za2040双六";}
			else if($time==2050){#EndGameName="zaa2050双六";}
			else if($time==2100){#EndGameName="zaa2100双六";}
			else if($time==2110){#EndGameName="zaa2110双六";}
			else if($time==2120){#EndGameName="zaa2120ミヅハ_双六";}
		}else if($c==5){
			if($time==1800){#EndGameName="z1800ＡＤ";}
			else if($time==1810){#EndGameName="z1810ＡＤ";}
			else if($time==1820){#EndGameName="z1820ＡＤ";}
			else if($time==1830){#EndGameName="z1830ＡＤ";}
			else if($time==1840){#EndGameName="z1840ＡＤ";}
			else if($time==1850){#EndGameName="z1850ＡＤ";}
			else if($time==1900){#EndGameName="z1900ＡＤ";}
			else if($time==1910){#EndGameName="z1910ＡＤ";}
			else if($time==1920){#EndGameName="z1920みそブー_ＡＤ";}
			else if($time==1930){#EndGameName="z1930みそブー_ＡＤ";}
			else if($time==1940){#EndGameName="z1940双六_ＡＤ";}
			else if($time==1950){#EndGameName="z1950ＡＤ";}
			else if($time==2000){#EndGameName="z2000ＡＤ";}
			else if($time==2010){#EndGameName="z2010ＡＤ";}
			else if($time==2020){#EndGameName="z2020ＡＤ";}
			else if($time==2030){#EndGameName="z2030ＡＤ";}
			else if($time==2040){#EndGameName="za2040ＡＤ";}
			else if($time==2050){#EndGameName="zaa2050ＡＤ";}
			else if($time==2100){#EndGameName="zaa2100ＡＤ";}
			else if($time==2110){#EndGameName="zaa2110ＡＤ";}
			else if($time==2120){#EndGameName="zaa2120鈴_ＡＤ";}
			else if($time==2400){#EndGameName="z2400ＡＤ";}
		}
	}else if(#RouteName=="a"||#RouteName=="ab"||#RouteName=="aba"){
		//■■■aba■■■
		if($GameName=="aba2400恵那.nss"){$time=2400;}
		if($GameName=="aba2401千秋_フウリ.nss"){$time=2400;}
		if($GameName=="aba2402フウリ.nss"){$time=2400;}
		if($GameName=="aba2403似鳥_ノーコ.nss"){$time=2400;}
		if($GameName=="aba2404沙紅羅.nss"){$time=2400;}
		if($c==0){
			if($time==1800){#EndGameName="z1800ユージロー";}
			else if($time==1810){#EndGameName="z1800ユージロー";}
			else if($time==1820){#EndGameName="z1820ユージロー";}
			else if($time==1830){#EndGameName="z1830ユージロー";}
			else if($time==1840){#EndGameName="z1830ユージロー";}
			else if($time==1850){#EndGameName="z1850ユージロー_双六";}
			else if($time==1900){#EndGameName="z1900ユージロー";}
			else if($time==1910){#EndGameName="z1900ユージロー";}
			else if($time==1920){#EndGameName="z1920ユージロー";}
			else if($time==1930){#EndGameName="z1930ユージロー";}
			else if($time==1940){#EndGameName="z1940ユージロー";}
			else if($time==1950){#EndGameName="z1950ユージロー";}
			else if($time==2000){#EndGameName="z2000ユージロー_みそブー";}
			else if($time==2010){#EndGameName="z2010ユージロー_みそブー";}
			else if($time==2020){#EndGameName="z2020ユージロー_みそブー";}
			else if($time==2030){#EndGameName="za2030ユージロー_みそブー";}
			else if($time==2040){#EndGameName="za2040ユージロー_みそブー";}
			else if($time==2050){#EndGameName="zaa2050ユージロー";}
			else if($time==2100){#EndGameName="zab2100ユージロー";}
			else if($time==2110){#EndGameName="zab2110ユージロー_ミヅハ";}
			else if($time==2120){#EndGameName="z2120ユージロー";}
			else if($time==2130){#EndGameName="zab2130ユージロー";}
			else if($time==2140){#EndGameName="zab2130ユージロー";}
			else if($time==2150){#EndGameName="z2150ユージロー";}
			else if($time==2200){#EndGameName="zab2200ユージロー";}
			else if($time==2210){#EndGameName="zab2210ユージロー";}
			else if($time==2220){#EndGameName="zab2220ユージロー";}
			else if($time==2400){#EndGameName="zaba2400ユージロー";}
		}else if($c==1){
			if($time==1800){#EndGameName="z1800みそブー";}
			else if($time==1810){#EndGameName="z1810みそブー_双六";}
			else if($time==1820){#EndGameName="z1820みそブー_双六";}
			else if($time==1830){#EndGameName="z1830みそブー_ミヅハ";}
			else if($time==1840){#EndGameName="z1840みそブー_ミヅハ";}
			else if($time==1850){#EndGameName="z1850みそブー_ミヅハ";}
			else if($time==1900){#EndGameName="z1900みそブー_ミヅハ";}
			else if($time==1910){#EndGameName="z1910みそブー_ミヅハ";}
			else if($time==1920){#EndGameName="z1920みそブー_ＡＤ";}
			else if($time==1930){#EndGameName="z1930みそブー_ＡＤ";}
			else if($time==1940){#EndGameName="z1940みそブー";}
			else if($time==1950){#EndGameName="z1950みそブー_ミヅハ";}
			else if($time==2000){#EndGameName="z2000ユージロー_みそブー";}
			else if($time==2010){#EndGameName="z2010ユージロー_みそブー";}
			else if($time==2020){#EndGameName="z2020ユージロー_みそブー";}
			else if($time==2030){#EndGameName="za2030ユージロー_みそブー";}
			else if($time==2040){#EndGameName="za2040ユージロー_みそブー";}
			else if($time==2050){#EndGameName="zaa2050みそブー";}
			else if($time==2100){#EndGameName="zab2100みそブー";}
			else if($time==2110){#EndGameName="zab2110みそブー";}
			else if($time==2120){#EndGameName="zab2120みそブー";}
			else if($time==2130){#EndGameName="z2130みそブー_ＡＤ";}
			else if($time==2140){#EndGameName="z2140みそブー";}
			else if($time==2150){#EndGameName="zab2150みそブー";}
			else if($time==2200){#EndGameName="zab2200みそブー";}
			else if($time==2210){#EndGameName="zab2210みそブー";}
			else if($time==2220){#EndGameName="zab2220みそブー";}
			else if($time==2400){#EndGameName="zab2400みそブー_ミヅハ";}
		}else if($c==2){
			if($time==1800){#EndGameName="z1800ミヅハ";}
			else if($time==1810){#EndGameName="z1810ミヅハ";}
			else if($time==1820){#EndGameName="z1820ミヅハ";}
			else if($time==1830){#EndGameName="z1830みそブー_ミヅハ";}
			else if($time==1840){#EndGameName="z1840みそブー_ミヅハ";}
			else if($time==1850){#EndGameName="z1850みそブー_ミヅハ";}
			else if($time==1900){#EndGameName="z1900みそブー_ミヅハ";}
			else if($time==1910){#EndGameName="z1910みそブー_ミヅハ";}
			else if($time==1920){#EndGameName="z1920ミヅハ";}
			else if($time==1930){#EndGameName="z1930ミヅハ";}
			else if($time==1940){#EndGameName="z1940ミヅハ";}
			else if($time==1950){#EndGameName="z1950みそブー_ミヅハ";}
			else if($time==2000){#EndGameName="z2000ミヅハ";}
			else if($time==2010){#EndGameName="z2010ミヅハ";}
			else if($time==2020){#EndGameName="z2020ミヅハ";}
			else if($time==2030){#EndGameName="za2030ミヅハ";}
			else if($time==2040){#EndGameName="za2040ミヅハ";}
			else if($time==2050){#EndGameName="zaa2050ミヅハ";}
			else if($time==2100){#EndGameName="zab2100ミヅハ_ＡＤ";}
			else if($time==2110){#EndGameName="zab2110ユージロー_ミヅハ";}
			else if($time==2120){#EndGameName="z2120ミヅハ";}
			else if($time==2130){#EndGameName="zab2130ミヅハ";}
			else if($time==2140){#EndGameName="zab2140ミヅハ";}
			else if($time==2150){#EndGameName="zab2150ミヅハ";}
			else if($time==2200){#EndGameName="zab2200ミヅハ";}
			else if($time==2210){#EndGameName="zab2210ミヅハ";}
			else if($time==2220){#EndGameName="zab2210ミヅハ";}
			else if($time==2400){#EndGameName="zaba2400ミヅハ";}
		}else if($c==3){
			if($time==1800){#EndGameName="z1800鈴";}
			else if($time==1810){#EndGameName="z1800鈴";}
			else if($time==1820){#EndGameName="z1820鈴";}
			else if($time==1830){#EndGameName="z1830鈴";}
			else if($time==1840){#EndGameName="z1830鈴";}
			else if($time==1850){#EndGameName="z1850鈴";}
			else if($time==1900){#EndGameName="z1900鈴";}
			else if($time==1910){#EndGameName="z1910鈴";}
			else if($time==1920){#EndGameName="z1910鈴";}
			else if($time==1930){#EndGameName="z1930鈴";}
			else if($time==1940){#EndGameName="z1940鈴";}
			else if($time==1950){#EndGameName="z1950鈴";}
			else if($time==2000){#EndGameName="z2000鈴";}
			else if($time==2010){#EndGameName="z2010鈴";}
			else if($time==2020){#EndGameName="z2010鈴";}
			else if($time==2030){#EndGameName="z2030鈴";}
			else if($time==2040){#EndGameName="z2030鈴";}
			else if($time==2050){#EndGameName="zaa2050鈴";}
			else if($time==2100){#EndGameName="zab2100鈴";}
			else if($time==2110){#EndGameName="zab2110鈴";}
			else if($time==2120){#EndGameName="zab2120鈴";}
			else if($time==2130){#EndGameName="zab2120鈴";}
			else if($time==2140){#EndGameName="z2140鈴";}
			else if($time==2150){#EndGameName="z2150鈴";}
			else if($time==2200){#EndGameName="z2200鈴";}
			else if($time==2210){#EndGameName="zab2210鈴";}
			else if($time==2220){#EndGameName="zab2220鈴";}
			else if($time==2400){#EndGameName="zaba2400鈴";}
		}else if($c==4){
			if($time==1800){#EndGameName="z1800双六";}
			else if($time==1810){#EndGameName="z1810みそブー_双六";}
			else if($time==1820){#EndGameName="z1820みそブー_双六";}
			else if($time==1830){#EndGameName="z1830双六";}
			else if($time==1840){#EndGameName="z1840双六";}
			else if($time==1850){#EndGameName="z1850ユージロー_双六";}
			else if($time==1900){#EndGameName="z1900双六";}
			else if($time==1910){#EndGameName="z1900双六";}
			else if($time==1920){#EndGameName="z1920双六";}
			else if($time==1930){#EndGameName="z1930双六";}
			else if($time==1940){#EndGameName="z1940双六_ＡＤ";}
			else if($time==1950){#EndGameName="z1950双六";}
			else if($time==2000){#EndGameName="z2000双六";}
			else if($time==2010){#EndGameName="z2010双六";}
			else if($time==2020){#EndGameName="z2020双六";}
			else if($time==2030){#EndGameName="za2030双六";}
			else if($time==2040){#EndGameName="za2040双六";}
			else if($time==2050){#EndGameName="zab2050双六";}
			else if($time==2100){#EndGameName="zab2100双六";}
			else if($time==2110){#EndGameName="zab2100双六";}
			else if($time==2120){#EndGameName="z2120双六";}
			else if($time==2130){#EndGameName="z2130双六";}
			else if($time==2140){#EndGameName="z2140双六";}
			else if($time==2150){#EndGameName="zab2150双六";}
			else if($time==2200){#EndGameName="zab2200双六";}
			else if($time==2210){#EndGameName="zab2210双六";}
			else if($time==2220){#EndGameName="zab2210双六";}
			else if($time==2400){#EndGameName="zaba2400双六";}
		}else if($c==5){
			if($time==1800){#EndGameName="z1800ＡＤ";}
			else if($time==1810){#EndGameName="z1810ＡＤ";}
			else if($time==1820){#EndGameName="z1820ＡＤ";}
			else if($time==1830){#EndGameName="z1830ＡＤ";}
			else if($time==1840){#EndGameName="z1840ＡＤ";}
			else if($time==1850){#EndGameName="z1850ＡＤ";}
			else if($time==1900){#EndGameName="z1900ＡＤ";}
			else if($time==1910){#EndGameName="z1910ＡＤ";}
			else if($time==1920){#EndGameName="z1920みそブー_ＡＤ";}
			else if($time==1930){#EndGameName="z1930みそブー_ＡＤ";}
			else if($time==1940){#EndGameName="z1940双六_ＡＤ";}
			else if($time==1950){#EndGameName="z1950ＡＤ";}
			else if($time==2000){#EndGameName="z2000ＡＤ";}
			else if($time==2010){#EndGameName="z2010ＡＤ";}
			else if($time==2020){#EndGameName="z2020ＡＤ";}
			else if($time==2030){#EndGameName="z2030ＡＤ";}
			else if($time==2040){#EndGameName="za2040ＡＤ";}
			else if($time==2050){#EndGameName="zaa2050ＡＤ";}
			else if($time==2100){#EndGameName="zab2100ミヅハ_ＡＤ";}
			else if($time==2110){#EndGameName="z2110ＡＤ";}
			else if($time==2120){#EndGameName="z2120ＡＤ";}
			else if($time==2130){#EndGameName="z2130みそブー_ＡＤ";}
			else if($time==2140){#EndGameName="z2140ＡＤ";}
			else if($time==2150){#EndGameName="z2150ＡＤ";}
			else if($time==2200){#EndGameName="zab2200ＡＤ";}
			else if($time==2210){#EndGameName="zab2210ＡＤ";}
			else if($time==2220){#EndGameName="zab2210ＡＤ";}
			else if($time==2400){#EndGameName="zaba2400ＡＤ";}
		}
	}else if(#RouteName=="abb"){
		//■■■abb■■■
		if($GameName=="abb2400沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss"){$time=2400;}
		if($time==2400&&$c==0){$c=1;}
		if($c==0){
			if($time==1800){#EndGameName="z1800ユージロー";}
			else if($time==1810){#EndGameName="z1800ユージロー";}
			else if($time==1820){#EndGameName="z1820ユージロー";}
			else if($time==1830){#EndGameName="z1830ユージロー";}
			else if($time==1840){#EndGameName="z1830ユージロー";}
			else if($time==1850){#EndGameName="z1850ユージロー_双六";}
			else if($time==1900){#EndGameName="z1900ユージロー";}
			else if($time==1910){#EndGameName="z1900ユージロー";}
			else if($time==1920){#EndGameName="z1920ユージロー";}
			else if($time==1930){#EndGameName="z1930ユージロー";}
			else if($time==1940){#EndGameName="z1940ユージロー";}
			else if($time==1950){#EndGameName="z1950ユージロー";}
			else if($time==2000){#EndGameName="z2000ユージロー_みそブー";}
			else if($time==2010){#EndGameName="z2010ユージロー_みそブー";}
			else if($time==2020){#EndGameName="z2020ユージロー_みそブー";}
			else if($time==2030){#EndGameName="za2030ユージロー_みそブー";}
			else if($time==2040){#EndGameName="za2040ユージロー_みそブー";}
			else if($time==2050){#EndGameName="zaa2050ユージロー";}
			else if($time==2100){#EndGameName="zab2100ユージロー";}
			else if($time==2110){#EndGameName="zab2110ユージロー_ミヅハ";}
			else if($time==2120){#EndGameName="z2120ユージロー";}
			else if($time==2130){#EndGameName="zab2130ユージロー";}
			else if($time==2140){#EndGameName="zab2130ユージロー";}
			else if($time==2150){#EndGameName="z2150ユージロー";}
			else if($time==2200){#EndGameName="zab2200ユージロー";}
			else if($time==2210){#EndGameName="zab2210ユージロー";}
			else if($time==2220){#EndGameName="zab2220ユージロー";}
		}else if($c==1){
			if($time==1800){#EndGameName="z1800みそブー";}
			else if($time==1810){#EndGameName="z1810みそブー_双六";}
			else if($time==1820){#EndGameName="z1820みそブー_双六";}
			else if($time==1830){#EndGameName="z1830みそブー_ミヅハ";}
			else if($time==1840){#EndGameName="z1840みそブー_ミヅハ";}
			else if($time==1850){#EndGameName="z1850みそブー_ミヅハ";}
			else if($time==1900){#EndGameName="z1900みそブー_ミヅハ";}
			else if($time==1910){#EndGameName="z1910みそブー_ミヅハ";}
			else if($time==1920){#EndGameName="z1920みそブー_ＡＤ";}
			else if($time==1930){#EndGameName="z1930みそブー_ＡＤ";}
			else if($time==1940){#EndGameName="z1940みそブー";}
			else if($time==1950){#EndGameName="z1950みそブー_ミヅハ";}
			else if($time==2000){#EndGameName="z2000ユージロー_みそブー";}
			else if($time==2010){#EndGameName="z2010ユージロー_みそブー";}
			else if($time==2020){#EndGameName="z2020ユージロー_みそブー";}
			else if($time==2030){#EndGameName="za2030ユージロー_みそブー";}
			else if($time==2040){#EndGameName="za2040ユージロー_みそブー";}
			else if($time==2050){#EndGameName="zaa2050みそブー";}
			else if($time==2100){#EndGameName="zab2100みそブー";}
			else if($time==2110){#EndGameName="zab2110みそブー";}
			else if($time==2120){#EndGameName="zab2120みそブー";}
			else if($time==2130){#EndGameName="z2130みそブー_ＡＤ";}
			else if($time==2140){#EndGameName="z2140みそブー";}
			else if($time==2150){#EndGameName="zab2150みそブー";}
			else if($time==2200){#EndGameName="zab2200みそブー";}
			else if($time==2210){#EndGameName="zab2210みそブー";}
			else if($time==2220){#EndGameName="zab2220みそブー";}
			else if($time==2400){#EndGameName="zabb2400みそブー";}
		}else if($c==2){
			if($time==1800){#EndGameName="z1800ミヅハ";}
			else if($time==1810){#EndGameName="z1810ミヅハ";}
			else if($time==1820){#EndGameName="z1820ミヅハ";}
			else if($time==1830){#EndGameName="z1830みそブー_ミヅハ";}
			else if($time==1840){#EndGameName="z1840みそブー_ミヅハ";}
			else if($time==1850){#EndGameName="z1850みそブー_ミヅハ";}
			else if($time==1900){#EndGameName="z1900みそブー_ミヅハ";}
			else if($time==1910){#EndGameName="z1910みそブー_ミヅハ";}
			else if($time==1920){#EndGameName="z1920ミヅハ";}
			else if($time==1930){#EndGameName="z1930ミヅハ";}
			else if($time==1940){#EndGameName="z1940ミヅハ";}
			else if($time==1950){#EndGameName="z1950みそブー_ミヅハ";}
			else if($time==2000){#EndGameName="z2000ミヅハ";}
			else if($time==2010){#EndGameName="z2010ミヅハ";}
			else if($time==2020){#EndGameName="z2020ミヅハ";}
			else if($time==2030){#EndGameName="za2030ミヅハ";}
			else if($time==2040){#EndGameName="za2040ミヅハ";}
			else if($time==2050){#EndGameName="zaa2050ミヅハ";}
			else if($time==2100){#EndGameName="zab2100ミヅハ_ＡＤ";}
			else if($time==2110){#EndGameName="zab2110ユージロー_ミヅハ";}
			else if($time==2120){#EndGameName="z2120ミヅハ";}
			else if($time==2130){#EndGameName="zab2130ミヅハ";}
			else if($time==2140){#EndGameName="zab2140ミヅハ";}
			else if($time==2150){#EndGameName="zab2150ミヅハ";}
			else if($time==2200){#EndGameName="zab2200ミヅハ";}
			else if($time==2210){#EndGameName="zab2210ミヅハ";}
			else if($time==2220){#EndGameName="zab2210ミヅハ";}
			else if($time==2400){#EndGameName="zabb2400ミヅハ";}
		}else if($c==3){
			if($time==1800){#EndGameName="z1800鈴";}
			else if($time==1810){#EndGameName="z1800鈴";}
			else if($time==1820){#EndGameName="z1820鈴";}
			else if($time==1830){#EndGameName="z1830鈴";}
			else if($time==1840){#EndGameName="z1830鈴";}
			else if($time==1850){#EndGameName="z1850鈴";}
			else if($time==1900){#EndGameName="z1900鈴";}
			else if($time==1910){#EndGameName="z1910鈴";}
			else if($time==1920){#EndGameName="z1910鈴";}
			else if($time==1930){#EndGameName="z1930鈴";}
			else if($time==1940){#EndGameName="z1940鈴";}
			else if($time==1950){#EndGameName="z1950鈴";}
			else if($time==2000){#EndGameName="z2000鈴";}
			else if($time==2010){#EndGameName="z2010鈴";}
			else if($time==2020){#EndGameName="z2010鈴";}
			else if($time==2030){#EndGameName="z2030鈴";}
			else if($time==2040){#EndGameName="z2030鈴";}
			else if($time==2050){#EndGameName="zaa2050鈴";}
			else if($time==2100){#EndGameName="zab2100鈴";}
			else if($time==2110){#EndGameName="zab2110鈴";}
			else if($time==2120){#EndGameName="zab2120鈴";}
			else if($time==2130){#EndGameName="zab2120鈴";}
			else if($time==2140){#EndGameName="z2140鈴";}
			else if($time==2150){#EndGameName="z2150鈴";}
			else if($time==2200){#EndGameName="z2200鈴";}
			else if($time==2210){#EndGameName="zab2210鈴";}
			else if($time==2220){#EndGameName="zab2220鈴";}
			else if($time==2400){#EndGameName="zabb2400鈴";}
		}else if($c==4){
			if($time==1800){#EndGameName="z1800双六";}
			else if($time==1810){#EndGameName="z1810みそブー_双六";}
			else if($time==1820){#EndGameName="z1820みそブー_双六";}
			else if($time==1830){#EndGameName="z1830双六";}
			else if($time==1840){#EndGameName="z1840双六";}
			else if($time==1850){#EndGameName="z1850ユージロー_双六";}
			else if($time==1900){#EndGameName="z1900双六";}
			else if($time==1910){#EndGameName="z1900双六";}
			else if($time==1920){#EndGameName="z1920双六";}
			else if($time==1930){#EndGameName="z1930双六";}
			else if($time==1940){#EndGameName="z1940双六_ＡＤ";}
			else if($time==1950){#EndGameName="z1950双六";}
			else if($time==2000){#EndGameName="z2000双六";}
			else if($time==2010){#EndGameName="z2010双六";}
			else if($time==2020){#EndGameName="z2020双六";}
			else if($time==2030){#EndGameName="za2030双六";}
			else if($time==2040){#EndGameName="za2040双六";}
			else if($time==2050){#EndGameName="zab2050双六";}
			else if($time==2100){#EndGameName="zab2100双六";}
			else if($time==2110){#EndGameName="zab2100双六";}
			else if($time==2120){#EndGameName="z2120双六";}
			else if($time==2130){#EndGameName="z2130双六";}
			else if($time==2140){#EndGameName="z2140双六";}
			else if($time==2150){#EndGameName="zab2150双六";}
			else if($time==2200){#EndGameName="zab2200双六";}
			else if($time==2210){#EndGameName="zab2210双六";}
			else if($time==2220){#EndGameName="zab2210双六";}
			else if($time==2400){#EndGameName="zabb2400双六";}
		}else if($c==5){
			if($time==1800){#EndGameName="z1800ＡＤ";}
			else if($time==1810){#EndGameName="z1810ＡＤ";}
			else if($time==1820){#EndGameName="z1820ＡＤ";}
			else if($time==1830){#EndGameName="z1830ＡＤ";}
			else if($time==1840){#EndGameName="z1840ＡＤ";}
			else if($time==1850){#EndGameName="z1850ＡＤ";}
			else if($time==1900){#EndGameName="z1900ＡＤ";}
			else if($time==1910){#EndGameName="z1910ＡＤ";}
			else if($time==1920){#EndGameName="z1920みそブー_ＡＤ";}
			else if($time==1930){#EndGameName="z1930みそブー_ＡＤ";}
			else if($time==1940){#EndGameName="z1940双六_ＡＤ";}
			else if($time==1950){#EndGameName="z1950ＡＤ";}
			else if($time==2000){#EndGameName="z2000ＡＤ";}
			else if($time==2010){#EndGameName="z2010ＡＤ";}
			else if($time==2020){#EndGameName="z2020ＡＤ";}
			else if($time==2030){#EndGameName="z2030ＡＤ";}
			else if($time==2040){#EndGameName="za2040ＡＤ";}
			else if($time==2050){#EndGameName="zaa2050ＡＤ";}
			else if($time==2100){#EndGameName="zab2100ミヅハ_ＡＤ";}
			else if($time==2110){#EndGameName="z2110ＡＤ";}
			else if($time==2120){#EndGameName="z2120ＡＤ";}
			else if($time==2130){#EndGameName="z2130みそブー_ＡＤ";}
			else if($time==2140){#EndGameName="z2140ＡＤ";}
			else if($time==2150){#EndGameName="z2150ＡＤ";}
			else if($time==2200){#EndGameName="zab2200ＡＤ";}
			else if($time==2210){#EndGameName="zab2210ＡＤ";}
			else if($time==2220){#EndGameName="zab2210ＡＤ";}
			else if($time==2400){#EndGameName="zabb2400ＡＤ";}
		}
	}else if(#RouteName=="b"||#RouteName=="ba"||#RouteName=="baa"){
		//■■■baa■■■
		if($GameName=="baa2330似鳥_ノーコ_h.nss"){$time=2400;}
		if($GameName=="baa2351千秋_恵那.nss"){$time=2400;}
		if($GameName=="baa2352千秋_恵那.nss"){$time=2400;}
		if($GameName=="baa2353千秋_恵那.nss"){$time=2400;}
		if($GameName=="baa2354千秋_恵那.nss"){$time=2400;}
		if($GameName=="baa2355沙紅羅.nss"){$time=2400;}
		if($GameName=="baa2356似鳥_ノーコ.nss"){$time=2400;}
		if($GameName=="baa2357似鳥_ノーコ.nss"){$time=2400;}
		if($GameName=="baa2358似鳥_ノーコ.nss"){$time=2400;}
		if($GameName=="baa2359フウリ.nss"){$time=2400;}
		if($c==0){
			if($time==1800){#EndGameName="z1800ユージロー";}
			else if($time==1810){#EndGameName="z1800ユージロー";}
			else if($time==1820){#EndGameName="z1820ユージロー";}
			else if($time==1830){#EndGameName="z1830ユージロー";}
			else if($time==1840){#EndGameName="z1830ユージロー";}
			else if($time==1850){#EndGameName="z1850ユージロー_双六";}
			else if($time==1900){#EndGameName="z1900ユージロー";}
			else if($time==1910){#EndGameName="z1900ユージロー";}
			else if($time==1920){#EndGameName="z1920ユージロー";}
			else if($time==1930){#EndGameName="z1930ユージロー";}
			else if($time==1940){#EndGameName="z1940ユージロー";}
			else if($time==1950){#EndGameName="z1950ユージロー";}
			else if($time==2000){#EndGameName="z2000ユージロー_みそブー";}
			else if($time==2010){#EndGameName="z2010ユージロー_みそブー";}
			else if($time==2020){#EndGameName="z2020ユージロー_みそブー";}
			else if($time==2030){#EndGameName="z2030ユージロー_みそブー";}
			else if($time==2040){#EndGameName="z2040ユージロー_みそブー";}
			else if($time==2050){#EndGameName="z2050ユージロー_ミヅハ_ＡＤ";}
			else if($time==2100){#EndGameName="z2100ユージロー_ミヅハ";}
			else if($time==2110){#EndGameName="z2110ユージロー_ミヅハ";}
			else if($time==2120){#EndGameName="zb2120ユージロー_ミヅハ";}
			else if($time==2130){#EndGameName="zb2130ユージロー";}
			else if($time==2140){#EndGameName="zb2140ユージロー_ミヅハ";}
			else if($time==2150){#EndGameName="zb2150ユージロー_ミヅハ";}
			else if($time==2200){#EndGameName="zb2200ユージロー";}
			else if($time==2210){#EndGameName="zb2200ユージロー";}
			else if($time==2220){#EndGameName="zba2220ユージロー_みそブー";}
			else if($time==2230){#EndGameName="zba2230ユージロー";}
			else if($time==2240){#EndGameName="zba2230ユージロー";}
			else if($time==2250){#EndGameName="zba2250ユージロー";}
			else if($time==2300){#EndGameName="zbaa2300ユージロー";}
			else if($time==2400){#EndGameName="zbaa2400ユージロー";}
		}else if($c==1){
			if($time==1800){#EndGameName="z1800みそブー";}
			else if($time==1810){#EndGameName="z1810みそブー_双六";}
			else if($time==1820){#EndGameName="z1820みそブー_双六";}
			else if($time==1830){#EndGameName="z1830みそブー_ミヅハ";}
			else if($time==1840){#EndGameName="z1840みそブー_ミヅハ";}
			else if($time==1850){#EndGameName="z1850みそブー_ミヅハ";}
			else if($time==1900){#EndGameName="z1900みそブー_ミヅハ";}
			else if($time==1910){#EndGameName="z1910みそブー_ミヅハ";}
			else if($time==1920){#EndGameName="z1920みそブー_ＡＤ";}
			else if($time==1930){#EndGameName="z1930みそブー_ＡＤ";}
			else if($time==1940){#EndGameName="z1940みそブー";}
			else if($time==1950){#EndGameName="z1950みそブー_ミヅハ";}
			else if($time==2000){#EndGameName="z2000ユージロー_みそブー";}
			else if($time==2010){#EndGameName="z2010ユージロー_みそブー";}
			else if($time==2020){#EndGameName="z2020ユージロー_みそブー";}
			else if($time==2030){#EndGameName="z2030ユージロー_みそブー";}
			else if($time==2040){#EndGameName="z2040ユージロー_みそブー";}
			else if($time==2050){#EndGameName="z2050みそブー_鈴";}
			else if($time==2100){#EndGameName="z2100みそブー_鈴_双六";}
			else if($time==2110){#EndGameName="z2110みそブー";}
			else if($time==2120){#EndGameName="z2120みそブー";}
			else if($time==2130){#EndGameName="z2130みそブー_ＡＤ";}
			else if($time==2140){#EndGameName="z2140みそブー";}
			else if($time==2150){#EndGameName="z2150みそブー";}
			else if($time==2200){#EndGameName="zb2200みそブー_ミヅハ";}
			else if($time==2210){#EndGameName="zb2210みそブー_ミヅハ";}
			else if($time==2220){#EndGameName="zba2220ユージロー_みそブー";}
			else if($time==2230){#EndGameName="zba2230みそブー";}
			else if($time==2240){#EndGameName="zba2240みそブー";}
			else if($time==2250){#EndGameName="zba2250みそブー_ミヅハ";}
			else if($time==2300){#EndGameName="zbaa2300みそブー";}
			else if($time==2400){#EndGameName="zbaa2400みそブー";}
		}else if($c==2){
			if($time==1800){#EndGameName="z1800ミヅハ";}
			else if($time==1810){#EndGameName="z1810ミヅハ";}
			else if($time==1820){#EndGameName="z1820ミヅハ";}
			else if($time==1830){#EndGameName="z1830みそブー_ミヅハ";}
			else if($time==1840){#EndGameName="z1840みそブー_ミヅハ";}
			else if($time==1850){#EndGameName="z1850みそブー_ミヅハ";}
			else if($time==1900){#EndGameName="z1900みそブー_ミヅハ";}
			else if($time==1910){#EndGameName="z1910みそブー_ミヅハ";}
			else if($time==1920){#EndGameName="z1920ミヅハ";}
			else if($time==1930){#EndGameName="z1930ミヅハ";}
			else if($time==1940){#EndGameName="z1940ミヅハ";}
			else if($time==1950){#EndGameName="z1950みそブー_ミヅハ";}
			else if($time==2000){#EndGameName="z2000ミヅハ";}
			else if($time==2010){#EndGameName="z2010ミヅハ";}
			else if($time==2020){#EndGameName="z2020ミヅハ";}
			else if($time==2030){#EndGameName="z2030ミヅハ";}
			else if($time==2040){#EndGameName="z2040ミヅハ";}
			else if($time==2050){#EndGameName="z2050ユージロー_ミヅハ_ＡＤ";}
			else if($time==2100){#EndGameName="z2100ユージロー_ミヅハ";}
			else if($time==2110){#EndGameName="z2110ユージロー_ミヅハ";}
			else if($time==2120){#EndGameName="zb2120ユージロー_ミヅハ";}
			else if($time==2130){#EndGameName="zb2130ミヅハ";}
			else if($time==2140){#EndGameName="zb2140ユージロー_ミヅハ";}
			else if($time==2150){#EndGameName="zb2150ユージロー_ミヅハ";}
			else if($time==2200){#EndGameName="zb2200みそブー_ミヅハ";}
			else if($time==2210){#EndGameName="zb2210みそブー_ミヅハ";}
			else if($time==2220){#EndGameName="zba2220ミヅハ";}
			else if($time==2230){#EndGameName="zba2230ミヅハ";}
			else if($time==2240){#EndGameName="zba2240ミヅハ";}
			else if($time==2250){#EndGameName="zba2250みそブー_ミヅハ";}
			else if($time==2300){#EndGameName="zbaa2300ミヅハ";}
			else if($time==2400){#EndGameName="zbaa2400ミヅハ";}
		}else if($c==3){
			if($time==1800){#EndGameName="z1800鈴";}
			else if($time==1810){#EndGameName="z1800鈴";}
			else if($time==1820){#EndGameName="z1820鈴";}
			else if($time==1830){#EndGameName="z1830鈴";}
			else if($time==1840){#EndGameName="z1830鈴";}
			else if($time==1850){#EndGameName="z1850鈴";}
			else if($time==1900){#EndGameName="z1900鈴";}
			else if($time==1910){#EndGameName="z1910鈴";}
			else if($time==1920){#EndGameName="z1910鈴";}
			else if($time==1930){#EndGameName="z1930鈴";}
			else if($time==1940){#EndGameName="z1940鈴";}
			else if($time==1950){#EndGameName="z1950鈴";}
			else if($time==2000){#EndGameName="z2000鈴";}
			else if($time==2010){#EndGameName="z2010鈴";}
			else if($time==2020){#EndGameName="z2010鈴";}
			else if($time==2030){#EndGameName="z2030鈴";}
			else if($time==2040){#EndGameName="z2030鈴";}
			else if($time==2050){#EndGameName="z2050みそブー_鈴";}
			else if($time==2100){#EndGameName="z2100みそブー_鈴_双六";}
			else if($time==2110){#EndGameName="z2110鈴";}
			else if($time==2120){#EndGameName="z2110鈴";}
			else if($time==2130){#EndGameName="zb2130鈴";}
			else if($time==2140){#EndGameName="zb2140鈴";}
			else if($time==2150){#EndGameName="zb2140鈴";}
			else if($time==2200){#EndGameName="zb2200鈴";}
			else if($time==2210){#EndGameName="zb2200鈴";}
			else if($time==2220){#EndGameName="zba2220鈴";}
			else if($time==2230){#EndGameName="zba2230鈴_ＡＤ";}
			else if($time==2240){#EndGameName="zba2240鈴";}
			else if($time==2250){#EndGameName="zba2250鈴";}
			else if($time==2300){#EndGameName="zbaa2300鈴";}
			else if($time==2400){#EndGameName="zbaa2400鈴";}
		}else if($c==4){
			if($time==1800){#EndGameName="z1800双六";}
			else if($time==1810){#EndGameName="z1810みそブー_双六";}
			else if($time==1820){#EndGameName="z1820みそブー_双六";}
			else if($time==1830){#EndGameName="z1830双六";}
			else if($time==1840){#EndGameName="z1840双六";}
			else if($time==1850){#EndGameName="z1850ユージロー_双六";}
			else if($time==1900){#EndGameName="z1900双六";}
			else if($time==1910){#EndGameName="z1900双六";}
			else if($time==1920){#EndGameName="z1920双六";}
			else if($time==1930){#EndGameName="z1930双六";}
			else if($time==1940){#EndGameName="z1940双六_ＡＤ";}
			else if($time==1950){#EndGameName="z1950双六";}
			else if($time==2000){#EndGameName="z2000双六";}
			else if($time==2010){#EndGameName="z2010双六";}
			else if($time==2020){#EndGameName="z2020双六";}
			else if($time==2030){#EndGameName="z2030双六";}
			else if($time==2040){#EndGameName="z2040双六";}
			else if($time==2050){#EndGameName="zb2050双六";}
			else if($time==2100){#EndGameName="z2100みそブー_鈴_双六";}
			else if($time==2110){#EndGameName="z2110双六";}
			else if($time==2120){#EndGameName="z2120双六";}
			else if($time==2130){#EndGameName="z2130双六";}
			else if($time==2140){#EndGameName="z2140双六";}
			else if($time==2150){#EndGameName="z2150双六";}
			else if($time==2200){#EndGameName="zb2200双六";}
			else if($time==2210){#EndGameName="zb2200双六";}
			else if($time==2220){#EndGameName="zba2220双六";}
			else if($time==2230){#EndGameName="zba2230双六";}
			else if($time==2240){#EndGameName="zba2240双六";}
			else if($time==2250){#EndGameName="zba2250双六";}
			else if($time==2300){#EndGameName="zbaa2300双六";}
			else if($time==2400){#EndGameName="zbaa2400双六";}
		}else if($c==5){
			if($time==1800){#EndGameName="z1800ＡＤ";}
			else if($time==1810){#EndGameName="z1810ＡＤ";}
			else if($time==1820){#EndGameName="z1820ＡＤ";}
			else if($time==1830){#EndGameName="z1830ＡＤ";}
			else if($time==1840){#EndGameName="z1840ＡＤ";}
			else if($time==1850){#EndGameName="z1850ＡＤ";}
			else if($time==1900){#EndGameName="z1900ＡＤ";}
			else if($time==1910){#EndGameName="z1910ＡＤ";}
			else if($time==1920){#EndGameName="z1920みそブー_ＡＤ";}
			else if($time==1930){#EndGameName="z1930みそブー_ＡＤ";}
			else if($time==1940){#EndGameName="z1940双六_ＡＤ";}
			else if($time==1950){#EndGameName="z1950ＡＤ";}
			else if($time==2000){#EndGameName="z2000ＡＤ";}
			else if($time==2010){#EndGameName="z2010ＡＤ";}
			else if($time==2020){#EndGameName="z2020ＡＤ";}
			else if($time==2030){#EndGameName="z2030ＡＤ";}
			else if($time==2040){#EndGameName="z2040ＡＤ";}
			else if($time==2050){#EndGameName="z2050ユージロー_ミヅハ_ＡＤ";}
			else if($time==2100){#EndGameName="z2100ＡＤ";}
			else if($time==2110){#EndGameName="z2110ＡＤ";}
			else if($time==2120){#EndGameName="z2120ＡＤ";}
			else if($time==2130){#EndGameName="z2130みそブー_ＡＤ";}
			else if($time==2140){#EndGameName="z2140ＡＤ";}
			else if($time==2150){#EndGameName="z2150ＡＤ";}
			else if($time==2200){#EndGameName="z2200ＡＤ";}
			else if($time==2210){#EndGameName="zb2210ＡＤ";}
			else if($time==2220){#EndGameName="zba2220ＡＤ";}
			else if($time==2230){#EndGameName="zba2230鈴_ＡＤ";}
			else if($time==2240){#EndGameName="zba2240ＡＤ";}
			else if($time==2250){#EndGameName="zba2240ＡＤ";}
			else if($time==2300){#EndGameName="zbaa2300ＡＤ";}
			else if($time==2400){#EndGameName="zbaa2400ＡＤ";}
		}
	}else if(#RouteName=="bab"){
		//■■■bab■■■
		if($GameName=="bab2330千秋_恵那.nss"){$time=2400;}
		if($GameName=="bab2340千秋_恵那_h.nss"){$time=2400;}
		if($GameName=="bab2350千秋_恵那.nss"){$time=2400;}
		if($GameName=="baa2351千秋_恵那.nss"){$time=2400;}
		if($GameName=="bab2352千秋_恵那.nss"){$time=2400;}
		if($GameName=="baa2353千秋_恵那.nss"){$time=2400;}
		if($GameName=="bab2354千秋_恵那.nss"){$time=2400;}
		if($GameName=="baa2357似鳥_ノーコ.nss"){$time=2400;}
		if($GameName=="bab2358似鳥_ノーコ.nss"){$time=2400;}
		if($GameName=="bab2359沙紅羅_フウリ.nss"){$time=2400;}
		if($c==0){
			if($time==1800){#EndGameName="z1800ユージロー";}
			else if($time==1810){#EndGameName="z1800ユージロー";}
			else if($time==1820){#EndGameName="z1820ユージロー";}
			else if($time==1830){#EndGameName="z1830ユージロー";}
			else if($time==1840){#EndGameName="z1830ユージロー";}
			else if($time==1850){#EndGameName="z1850ユージロー_双六";}
			else if($time==1900){#EndGameName="z1900ユージロー";}
			else if($time==1910){#EndGameName="z1900ユージロー";}
			else if($time==1920){#EndGameName="z1920ユージロー";}
			else if($time==1930){#EndGameName="z1930ユージロー";}
			else if($time==1940){#EndGameName="z1940ユージロー";}
			else if($time==1950){#EndGameName="z1950ユージロー";}
			else if($time==2000){#EndGameName="z2000ユージロー_みそブー";}
			else if($time==2010){#EndGameName="z2010ユージロー_みそブー";}
			else if($time==2020){#EndGameName="z2020ユージロー_みそブー";}
			else if($time==2030){#EndGameName="z2030ユージロー_みそブー";}
			else if($time==2040){#EndGameName="z2040ユージロー_みそブー";}
			else if($time==2050){#EndGameName="z2050ユージロー_ミヅハ_ＡＤ";}
			else if($time==2100){#EndGameName="z2100ユージロー_ミヅハ";}
			else if($time==2110){#EndGameName="z2110ユージロー_ミヅハ";}
			else if($time==2120){#EndGameName="zb2120ユージロー_ミヅハ";}
			else if($time==2130){#EndGameName="zb2130ユージロー";}
			else if($time==2140){#EndGameName="zb2140ユージロー_ミヅハ";}
			else if($time==2150){#EndGameName="zb2150ユージロー_ミヅハ";}
			else if($time==2200){#EndGameName="zb2200ユージロー";}
			else if($time==2210){#EndGameName="zb2200ユージロー";}
			else if($time==2220){#EndGameName="zba2220ユージロー_みそブー";}
			else if($time==2230){#EndGameName="zba2230ユージロー";}
			else if($time==2240){#EndGameName="zba2230ユージロー";}
			else if($time==2250){#EndGameName="zba2250ユージロー";}
			else if($time==2300){#EndGameName="zbab2300ユージロー";}
			else if($time==2310){#EndGameName="zbab2300ユージロー";}
			else if($time==2400){#EndGameName="zbab2400ユージロー";}
		}else if($c==1){
			if($time==1800){#EndGameName="z1800みそブー";}
			else if($time==1810){#EndGameName="z1810みそブー_双六";}
			else if($time==1820){#EndGameName="z1820みそブー_双六";}
			else if($time==1830){#EndGameName="z1830みそブー_ミヅハ";}
			else if($time==1840){#EndGameName="z1840みそブー_ミヅハ";}
			else if($time==1850){#EndGameName="z1850みそブー_ミヅハ";}
			else if($time==1900){#EndGameName="z1900みそブー_ミヅハ";}
			else if($time==1910){#EndGameName="z1910みそブー_ミヅハ";}
			else if($time==1920){#EndGameName="z1920みそブー_ＡＤ";}
			else if($time==1930){#EndGameName="z1930みそブー_ＡＤ";}
			else if($time==1940){#EndGameName="z1940みそブー";}
			else if($time==1950){#EndGameName="z1950みそブー_ミヅハ";}
			else if($time==2000){#EndGameName="z2000ユージロー_みそブー";}
			else if($time==2010){#EndGameName="z2010ユージロー_みそブー";}
			else if($time==2020){#EndGameName="z2020ユージロー_みそブー";}
			else if($time==2030){#EndGameName="z2030ユージロー_みそブー";}
			else if($time==2040){#EndGameName="z2040ユージロー_みそブー";}
			else if($time==2050){#EndGameName="z2050みそブー_鈴";}
			else if($time==2100){#EndGameName="z2100みそブー_鈴_双六";}
			else if($time==2110){#EndGameName="z2110みそブー";}
			else if($time==2120){#EndGameName="z2120みそブー";}
			else if($time==2130){#EndGameName="z2130みそブー_ＡＤ";}
			else if($time==2140){#EndGameName="z2140みそブー";}
			else if($time==2150){#EndGameName="z2150みそブー";}
			else if($time==2200){#EndGameName="zb2200みそブー_ミヅハ";}
			else if($time==2210){#EndGameName="zb2210みそブー_ミヅハ";}
			else if($time==2220){#EndGameName="zba2220ユージロー_みそブー";}
			else if($time==2230){#EndGameName="zba2230みそブー";}
			else if($time==2240){#EndGameName="zba2240みそブー";}
			else if($time==2250){#EndGameName="zba2250みそブー_ミヅハ";}
			else if($time==2300){#EndGameName="zbab2300みそブー";}
			else if($time==2310){#EndGameName="zbab2300みそブー";}
			else if($time==2400){#EndGameName="zbab2400みそブー";}
		}else if($c==2){
			if($time==1800){#EndGameName="zbab2400ミヅハ";}
			else if($time==1810){#EndGameName="z1810ミヅハ";}
			else if($time==1820){#EndGameName="z1820ミヅハ";}
			else if($time==1830){#EndGameName="z1830みそブー_ミヅハ";}
			else if($time==1840){#EndGameName="z1840みそブー_ミヅハ";}
			else if($time==1850){#EndGameName="z1850みそブー_ミヅハ";}
			else if($time==1900){#EndGameName="z1900みそブー_ミヅハ";}
			else if($time==1910){#EndGameName="z1910みそブー_ミヅハ";}
			else if($time==1920){#EndGameName="z1920ミヅハ";}
			else if($time==1930){#EndGameName="z1930ミヅハ";}
			else if($time==1940){#EndGameName="z1940ミヅハ";}
			else if($time==1950){#EndGameName="z1950みそブー_ミヅハ";}
			else if($time==2000){#EndGameName="z2000ミヅハ";}
			else if($time==2010){#EndGameName="z2010ミヅハ";}
			else if($time==2020){#EndGameName="z2020ミヅハ";}
			else if($time==2030){#EndGameName="z2030ミヅハ";}
			else if($time==2040){#EndGameName="z2040ミヅハ";}
			else if($time==2050){#EndGameName="z2050ユージロー_ミヅハ_ＡＤ";}
			else if($time==2100){#EndGameName="z2100ユージロー_ミヅハ";}
			else if($time==2110){#EndGameName="z2110ユージロー_ミヅハ";}
			else if($time==2120){#EndGameName="zb2120ユージロー_ミヅハ";}
			else if($time==2130){#EndGameName="zb2130ミヅハ";}
			else if($time==2140){#EndGameName="zb2140ユージロー_ミヅハ";}
			else if($time==2150){#EndGameName="zb2150ユージロー_ミヅハ";}
			else if($time==2200){#EndGameName="zb2200みそブー_ミヅハ";}
			else if($time==2210){#EndGameName="zb2210みそブー_ミヅハ";}
			else if($time==2220){#EndGameName="zba2220ミヅハ";}
			else if($time==2230){#EndGameName="zba2230ミヅハ";}
			else if($time==2240){#EndGameName="zba2240ミヅハ";}
			else if($time==2250){#EndGameName="zba2250みそブー_ミヅハ";}
			else if($time==2300){#EndGameName="zbab2300ミヅハ";}
			else if($time==2310){#EndGameName="zbab2300ミヅハ";}
			else if($time==2400){#EndGameName="zbab2400ミヅハ";}
		}else if($c==3){
			if($time==1800){#EndGameName="z1800鈴";}
			else if($time==1810){#EndGameName="z1800鈴";}
			else if($time==1820){#EndGameName="z1820鈴";}
			else if($time==1830){#EndGameName="z1830鈴";}
			else if($time==1840){#EndGameName="z1830鈴";}
			else if($time==1850){#EndGameName="z1850鈴";}
			else if($time==1900){#EndGameName="z1900鈴";}
			else if($time==1910){#EndGameName="z1910鈴";}
			else if($time==1920){#EndGameName="z1910鈴";}
			else if($time==1930){#EndGameName="z1930鈴";}
			else if($time==1940){#EndGameName="z1940鈴";}
			else if($time==1950){#EndGameName="z1950鈴";}
			else if($time==2000){#EndGameName="z2000鈴";}
			else if($time==2010){#EndGameName="z2010鈴";}
			else if($time==2020){#EndGameName="z2010鈴";}
			else if($time==2030){#EndGameName="z2030鈴";}
			else if($time==2040){#EndGameName="z2030鈴";}
			else if($time==2050){#EndGameName="z2050みそブー_鈴";}
			else if($time==2100){#EndGameName="z2100みそブー_鈴_双六";}
			else if($time==2110){#EndGameName="z2110鈴";}
			else if($time==2120){#EndGameName="z2110鈴";}
			else if($time==2130){#EndGameName="zb2130鈴";}
			else if($time==2140){#EndGameName="zb2140鈴";}
			else if($time==2150){#EndGameName="zb2140鈴";}
			else if($time==2200){#EndGameName="zb2200鈴";}
			else if($time==2210){#EndGameName="zb2200鈴";}
			else if($time==2220){#EndGameName="zba2220鈴";}
			else if($time==2230){#EndGameName="zba2230鈴_ＡＤ";}
			else if($time==2240){#EndGameName="zba2240鈴";}
			else if($time==2250){#EndGameName="zba2250鈴";}
			else if($time==2300){#EndGameName="zbaa2300鈴";}
			else if($time==2310){#EndGameName="zbaa2300鈴";}
			else if($time==2400){#EndGameName="zbab2400鈴";}
		}else if($c==4){
			if($time==1800){#EndGameName="z1800双六";}
			else if($time==1810){#EndGameName="z1810みそブー_双六";}
			else if($time==1820){#EndGameName="z1820みそブー_双六";}
			else if($time==1830){#EndGameName="z1830双六";}
			else if($time==1840){#EndGameName="z1840双六";}
			else if($time==1850){#EndGameName="z1850ユージロー_双六";}
			else if($time==1900){#EndGameName="z1900双六";}
			else if($time==1910){#EndGameName="z1900双六";}
			else if($time==1920){#EndGameName="z1920双六";}
			else if($time==1930){#EndGameName="z1930双六";}
			else if($time==1940){#EndGameName="z1940双六_ＡＤ";}
			else if($time==1950){#EndGameName="z1950双六";}
			else if($time==2000){#EndGameName="z2000双六";}
			else if($time==2010){#EndGameName="z2010双六";}
			else if($time==2020){#EndGameName="z2020双六";}
			else if($time==2030){#EndGameName="z2030双六";}
			else if($time==2040){#EndGameName="z2040双六";}
			else if($time==2050){#EndGameName="zb2050双六";}
			else if($time==2100){#EndGameName="z2100みそブー_鈴_双六";}
			else if($time==2110){#EndGameName="z2110双六";}
			else if($time==2120){#EndGameName="z2120双六";}
			else if($time==2130){#EndGameName="z2130双六";}
			else if($time==2140){#EndGameName="z2140双六";}
			else if($time==2150){#EndGameName="z2150双六";}
			else if($time==2200){#EndGameName="zb2200双六";}
			else if($time==2210){#EndGameName="zb2200双六";}
			else if($time==2220){#EndGameName="zba2220双六";}
			else if($time==2230){#EndGameName="zba2230双六";}
			else if($time==2240){#EndGameName="zba2240双六";}
			else if($time==2250){#EndGameName="zba2250双六";}
			else if($time==2300){#EndGameName="zbab2300双六";}
			else if($time==2310){#EndGameName="zbab2300双六";}
			else if($time==2400){#EndGameName="zbab2400双六";}
		}else if($c==5){
			if($time==1800){#EndGameName="z1800ＡＤ";}
			else if($time==1810){#EndGameName="z1810ＡＤ";}
			else if($time==1820){#EndGameName="z1820ＡＤ";}
			else if($time==1830){#EndGameName="z1830ＡＤ";}
			else if($time==1840){#EndGameName="z1840ＡＤ";}
			else if($time==1850){#EndGameName="z1850ＡＤ";}
			else if($time==1900){#EndGameName="z1900ＡＤ";}
			else if($time==1910){#EndGameName="z1910ＡＤ";}
			else if($time==1920){#EndGameName="z1920みそブー_ＡＤ";}
			else if($time==1930){#EndGameName="z1930みそブー_ＡＤ";}
			else if($time==1940){#EndGameName="z1940双六_ＡＤ";}
			else if($time==1950){#EndGameName="z1950ＡＤ";}
			else if($time==2000){#EndGameName="z2000ＡＤ";}
			else if($time==2010){#EndGameName="z2010ＡＤ";}
			else if($time==2020){#EndGameName="z2020ＡＤ";}
			else if($time==2030){#EndGameName="z2030ＡＤ";}
			else if($time==2040){#EndGameName="z2040ＡＤ";}
			else if($time==2050){#EndGameName="z2050ユージロー_ミヅハ_ＡＤ";}
			else if($time==2100){#EndGameName="z2100ＡＤ";}
			else if($time==2110){#EndGameName="z2110ＡＤ";}
			else if($time==2120){#EndGameName="z2120ＡＤ";}
			else if($time==2130){#EndGameName="z2130みそブー_ＡＤ";}
			else if($time==2140){#EndGameName="z2140ＡＤ";}
			else if($time==2150){#EndGameName="z2150ＡＤ";}
			else if($time==2200){#EndGameName="z2200ＡＤ";}
			else if($time==2210){#EndGameName="zb2210ＡＤ";}
			else if($time==2220){#EndGameName="zba2220ＡＤ";}
			else if($time==2230){#EndGameName="zba2230鈴_ＡＤ";}
			else if($time==2240){#EndGameName="zba2240ＡＤ";}
			else if($time==2250){#EndGameName="zba2240ＡＤ";}
			else if($time==2300){#EndGameName="zbaa2300ＡＤ";}
			else if($time==2310){#EndGameName="zbaa2300ＡＤ";}
			else if($time==2400){#EndGameName="zbaa2400ＡＤ";}
		}
	}else if(#RouteName=="bb"){
		//■■■bb■■■
		if($GameName=="bb2400千秋_恵那.nss"){$time=2400;}
		if($GameName=="bb2401沙紅羅_似鳥.nss"){$time=2400;}
		if($c==0){
			if($time==1800){#EndGameName="z1800ユージロー";}
			else if($time==1810){#EndGameName="z1800ユージロー";}
			else if($time==1820){#EndGameName="z1820ユージロー";}
			else if($time==1830){#EndGameName="z1830ユージロー";}
			else if($time==1840){#EndGameName="z1830ユージロー";}
			else if($time==1850){#EndGameName="z1850ユージロー_双六";}
			else if($time==1900){#EndGameName="z1900ユージロー";}
			else if($time==1910){#EndGameName="z1900ユージロー";}
			else if($time==1920){#EndGameName="z1920ユージロー";}
			else if($time==1930){#EndGameName="z1930ユージロー";}
			else if($time==1940){#EndGameName="z1940ユージロー";}
			else if($time==1950){#EndGameName="z1950ユージロー";}
			else if($time==2000){#EndGameName="z2000ユージロー_みそブー";}
			else if($time==2010){#EndGameName="z2010ユージロー_みそブー";}
			else if($time==2020){#EndGameName="z2020ユージロー_みそブー";}
			else if($time==2030){#EndGameName="z2030ユージロー_みそブー";}
			else if($time==2040){#EndGameName="z2040ユージロー_みそブー";}
			else if($time==2050){#EndGameName="z2050ユージロー_ミヅハ_ＡＤ";}
			else if($time==2100){#EndGameName="z2100ユージロー_ミヅハ";}
			else if($time==2110){#EndGameName="z2110ユージロー_ミヅハ";}
			else if($time==2120){#EndGameName="zb2120ユージロー_ミヅハ";}
			else if($time==2130){#EndGameName="zb2130ユージロー";}
			else if($time==2140){#EndGameName="zb2140ユージロー_ミヅハ";}
			else if($time==2150){#EndGameName="zb2150ユージロー_ミヅハ";}
			else if($time==2200){#EndGameName="zb2200ユージロー";}
			else if($time==2210){#EndGameName="zb2200ユージロー";}
			else if($time==2220){#EndGameName="zba2220ユージロー_みそブー";}
			else if($time==2230){#EndGameName="zbb2230ユージロー_みそブー";}
			else if($time==2400){#EndGameName="zbb2400ユージロー";}
		}else if($c==1){
			if($time==1800){#EndGameName="z1800みそブー";}
			else if($time==1810){#EndGameName="z1810みそブー_双六";}
			else if($time==1820){#EndGameName="z1820みそブー_双六";}
			else if($time==1830){#EndGameName="z1830みそブー_ミヅハ";}
			else if($time==1840){#EndGameName="z1840みそブー_ミヅハ";}
			else if($time==1850){#EndGameName="z1850みそブー_ミヅハ";}
			else if($time==1900){#EndGameName="z1900みそブー_ミヅハ";}
			else if($time==1910){#EndGameName="z1910みそブー_ミヅハ";}
			else if($time==1920){#EndGameName="z1920みそブー_ＡＤ";}
			else if($time==1930){#EndGameName="z1930みそブー_ＡＤ";}
			else if($time==1940){#EndGameName="z1940みそブー";}
			else if($time==1950){#EndGameName="z1950みそブー_ミヅハ";}
			else if($time==2000){#EndGameName="z2000ユージロー_みそブー";}
			else if($time==2010){#EndGameName="z2010ユージロー_みそブー";}
			else if($time==2020){#EndGameName="z2020ユージロー_みそブー";}
			else if($time==2030){#EndGameName="z2030ユージロー_みそブー";}
			else if($time==2040){#EndGameName="z2040ユージロー_みそブー";}
			else if($time==2050){#EndGameName="z2050みそブー_鈴";}
			else if($time==2100){#EndGameName="z2100みそブー_鈴_双六";}
			else if($time==2110){#EndGameName="z2110みそブー";}
			else if($time==2120){#EndGameName="z2120みそブー";}
			else if($time==2130){#EndGameName="z2130みそブー_ＡＤ";}
			else if($time==2140){#EndGameName="z2140みそブー";}
			else if($time==2150){#EndGameName="z2150みそブー";}
			else if($time==2200){#EndGameName="zb2200みそブー_ミヅハ";}
			else if($time==2210){#EndGameName="zb2210みそブー_ミヅハ";}
			else if($time==2220){#EndGameName="zba2220ユージロー_みそブー";}
			else if($time==2230){#EndGameName="zbb2230ユージロー_みそブー";}
			else if($time==2400){#EndGameName="zbb2400みそブー";}
		}else if($c==2){
			if($time==1800){#EndGameName="zbab2400ミヅハ";}
			else if($time==1810){#EndGameName="z1810ミヅハ";}
			else if($time==1820){#EndGameName="z1820ミヅハ";}
			else if($time==1830){#EndGameName="z1830みそブー_ミヅハ";}
			else if($time==1840){#EndGameName="z1840みそブー_ミヅハ";}
			else if($time==1850){#EndGameName="z1850みそブー_ミヅハ";}
			else if($time==1900){#EndGameName="z1900みそブー_ミヅハ";}
			else if($time==1910){#EndGameName="z1910みそブー_ミヅハ";}
			else if($time==1920){#EndGameName="z1920ミヅハ";}
			else if($time==1930){#EndGameName="z1930ミヅハ";}
			else if($time==1940){#EndGameName="z1940ミヅハ";}
			else if($time==1950){#EndGameName="z1950みそブー_ミヅハ";}
			else if($time==2000){#EndGameName="z2000ミヅハ";}
			else if($time==2010){#EndGameName="z2010ミヅハ";}
			else if($time==2020){#EndGameName="z2020ミヅハ";}
			else if($time==2030){#EndGameName="z2030ミヅハ";}
			else if($time==2040){#EndGameName="z2040ミヅハ";}
			else if($time==2050){#EndGameName="z2050ユージロー_ミヅハ_ＡＤ";}
			else if($time==2100){#EndGameName="z2100ユージロー_ミヅハ";}
			else if($time==2110){#EndGameName="z2110ユージロー_ミヅハ";}
			else if($time==2120){#EndGameName="zb2120ユージロー_ミヅハ";}
			else if($time==2130){#EndGameName="zb2130ミヅハ";}
			else if($time==2140){#EndGameName="zb2140ユージロー_ミヅハ";}
			else if($time==2150){#EndGameName="zb2150ユージロー_ミヅハ";}
			else if($time==2200){#EndGameName="zb2200みそブー_ミヅハ";}
			else if($time==2210){#EndGameName="zb2210みそブー_ミヅハ";}
			else if($time==2220){#EndGameName="zba2220ミヅハ";}
			else if($time==2230){#EndGameName="zba2230ミヅハ";}
			else if($time==2400){#EndGameName="zbaa2400ミヅハ";}
		}else if($c==3){
			if($time==1800){#EndGameName="z1800鈴";}
			else if($time==1810){#EndGameName="z1800鈴";}
			else if($time==1820){#EndGameName="z1820鈴";}
			else if($time==1830){#EndGameName="z1830鈴";}
			else if($time==1840){#EndGameName="z1830鈴";}
			else if($time==1850){#EndGameName="z1850鈴";}
			else if($time==1900){#EndGameName="z1900鈴";}
			else if($time==1910){#EndGameName="z1910鈴";}
			else if($time==1920){#EndGameName="z1910鈴";}
			else if($time==1930){#EndGameName="z1930鈴";}
			else if($time==1940){#EndGameName="z1940鈴";}
			else if($time==1950){#EndGameName="z1950鈴";}
			else if($time==2000){#EndGameName="z2000鈴";}
			else if($time==2010){#EndGameName="z2010鈴";}
			else if($time==2020){#EndGameName="z2010鈴";}
			else if($time==2030){#EndGameName="z2030鈴";}
			else if($time==2040){#EndGameName="z2030鈴";}
			else if($time==2050){#EndGameName="z2050みそブー_鈴";}
			else if($time==2100){#EndGameName="z2100みそブー_鈴_双六";}
			else if($time==2110){#EndGameName="z2110鈴";}
			else if($time==2120){#EndGameName="z2110鈴";}
			else if($time==2130){#EndGameName="zb2130鈴";}
			else if($time==2140){#EndGameName="zb2140鈴";}
			else if($time==2150){#EndGameName="zb2140鈴";}
			else if($time==2200){#EndGameName="zb2200鈴";}
			else if($time==2210){#EndGameName="zb2200鈴";}
			else if($time==2220){#EndGameName="zba2220鈴";}
			else if($time==2230){#EndGameName="zba2230鈴_ＡＤ";}
			else if($time==2400){#EndGameName="zbb2400鈴";}
		}else if($c==4){
			if($time==1800){#EndGameName="z1800双六";}
			else if($time==1810){#EndGameName="z1810みそブー_双六";}
			else if($time==1820){#EndGameName="z1820みそブー_双六";}
			else if($time==1830){#EndGameName="z1830双六";}
			else if($time==1840){#EndGameName="z1840双六";}
			else if($time==1850){#EndGameName="z1850ユージロー_双六";}
			else if($time==1900){#EndGameName="z1900双六";}
			else if($time==1910){#EndGameName="z1900双六";}
			else if($time==1920){#EndGameName="z1920双六";}
			else if($time==1930){#EndGameName="z1930双六";}
			else if($time==1940){#EndGameName="z1940双六_ＡＤ";}
			else if($time==1950){#EndGameName="z1950双六";}
			else if($time==2000){#EndGameName="z2000双六";}
			else if($time==2010){#EndGameName="z2010双六";}
			else if($time==2020){#EndGameName="z2020双六";}
			else if($time==2030){#EndGameName="z2030双六";}
			else if($time==2040){#EndGameName="z2040双六";}
			else if($time==2050){#EndGameName="zb2050双六";}
			else if($time==2100){#EndGameName="z2100みそブー_鈴_双六";}
			else if($time==2110){#EndGameName="z2110双六";}
			else if($time==2120){#EndGameName="z2120双六";}
			else if($time==2130){#EndGameName="z2130双六";}
			else if($time==2140){#EndGameName="z2140双六";}
			else if($time==2150){#EndGameName="z2150双六";}
			else if($time==2200){#EndGameName="zb2200双六";}
			else if($time==2210){#EndGameName="zb2200双六";}
			else if($time==2220){#EndGameName="zba2220双六";}
			else if($time==2230){#EndGameName="zbb2230双六";}
			else if($time==2400){#EndGameName="zbb2400双六";}
		}else if($c==5){
			if($time==1800){#EndGameName="z1800ＡＤ";}
			else if($time==1810){#EndGameName="z1810ＡＤ";}
			else if($time==1820){#EndGameName="z1820ＡＤ";}
			else if($time==1830){#EndGameName="z1830ＡＤ";}
			else if($time==1840){#EndGameName="z1840ＡＤ";}
			else if($time==1850){#EndGameName="z1850ＡＤ";}
			else if($time==1900){#EndGameName="z1900ＡＤ";}
			else if($time==1910){#EndGameName="z1910ＡＤ";}
			else if($time==1920){#EndGameName="z1920みそブー_ＡＤ";}
			else if($time==1930){#EndGameName="z1930みそブー_ＡＤ";}
			else if($time==1940){#EndGameName="z1940双六_ＡＤ";}
			else if($time==1950){#EndGameName="z1950ＡＤ";}
			else if($time==2000){#EndGameName="z2000ＡＤ";}
			else if($time==2010){#EndGameName="z2010ＡＤ";}
			else if($time==2020){#EndGameName="z2020ＡＤ";}
			else if($time==2030){#EndGameName="z2030ＡＤ";}
			else if($time==2040){#EndGameName="z2040ＡＤ";}
			else if($time==2050){#EndGameName="z2050ユージロー_ミヅハ_ＡＤ";}
			else if($time==2100){#EndGameName="z2100ＡＤ";}
			else if($time==2110){#EndGameName="z2110ＡＤ";}
			else if($time==2120){#EndGameName="z2120ＡＤ";}
			else if($time==2130){#EndGameName="z2130みそブー_ＡＤ";}
			else if($time==2140){#EndGameName="z2140ＡＤ";}
			else if($time==2150){#EndGameName="z2150ＡＤ";}
			else if($time==2200){#EndGameName="z2200ＡＤ";}
			else if($time==2210){#EndGameName="zb2210ＡＤ";}
			else if($time==2220){#EndGameName="zbb2220ＡＤ";}
			else if($time==2230){#EndGameName="zba2230鈴_ＡＤ";}
			else if($time==2400){#EndGameName="zbb2400ＡＤ";}
		}
	}else if(#RouteName=="c"){
		//■■■c■■■
		if($GameName=="c2340恵那.nss"){$time=2400;}
		if($GameName=="c2341沙紅羅_フウリ.nss"){$time=2400;}
		if($GameName=="c2350沙紅羅_似鳥.nss"){$time=2400;}
		if($GameName=="c2351フウリ.nss"){$time=2400;}
		if($GameName=="c2357恵那.nss"){$time=2400;}
		if($GameName=="c2400沙紅羅.nss"){$time=2400;}
		if($GameName=="c2401沙紅羅_フウリ.nss"){$time=2400;}
		if($GameName=="c2402沙紅羅.nss"){$time=2400;}
		if($GameName=="c2403沙紅羅_似鳥_フウリ.nss"){$time=2400;}
		if($GameName=="c2404沙紅羅.nss"){$time=2400;}
		if($GameName=="c2405フウリ.nss"){$time=2400;}
		if($GameName=="c2406似鳥.nss"){$time=2400;}
		if($c==0){
			if($time==1800){#EndGameName="z1800ユージロー";}
			else if($time==1810){#EndGameName="z1800ユージロー";}
			else if($time==1820){#EndGameName="z1820ユージロー";}
			else if($time==1830){#EndGameName="z1830ユージロー";}
			else if($time==1840){#EndGameName="z1830ユージロー";}
			else if($time==1850){#EndGameName="z1850ユージロー_双六";}
			else if($time==1900){#EndGameName="z1900ユージロー";}
			else if($time==1910){#EndGameName="z1900ユージロー";}
			else if($time==1920){#EndGameName="z1920ユージロー";}
			else if($time==1930){#EndGameName="z1930ユージロー";}
			else if($time==1940){#EndGameName="z1940ユージロー";}
			else if($time==1950){#EndGameName="z1950ユージロー";}
			else if($time==2000){#EndGameName="z2000ユージロー_みそブー";}
			else if($time==2010){#EndGameName="z2010ユージロー_みそブー";}
			else if($time==2020){#EndGameName="z2020ユージロー_みそブー";}
			else if($time==2030){#EndGameName="z2030ユージロー_みそブー";}
			else if($time==2040){#EndGameName="z2040ユージロー_みそブー";}
			else if($time==2050){#EndGameName="z2050ユージロー_ミヅハ_ＡＤ";}
			else if($time==2100){#EndGameName="z2100ユージロー_ミヅハ";}
			else if($time==2110){#EndGameName="z2110ユージロー_ミヅハ";}
			else if($time==2120){#EndGameName="z2120ユージロー";}
			else if($time==2130){#EndGameName="z2130ユージロー_ミヅハ";}
			else if($time==2140){#EndGameName="z2140ユージロー_ミヅハ";}
			else if($time==2150){#EndGameName="z2150ユージロー";}
			else if($time==2200){#EndGameName="z2200ユージロー";}
			else if($time==2210){#EndGameName="z2210ユージロー";}
			else if($time==2220){#EndGameName="z2220ユージロー_鈴";}
			else if($time==2230){#EndGameName="z2230ユージロー_鈴";}
			else if($time==2240){#EndGameName="z2240ユージロー";}
			else if($time==2250){#EndGameName="zc2250ユージロー";}
			else if($time==2300){#EndGameName="zc2300ユージロー";}
			else if($time==2310){#EndGameName="zc2300ユージロー";}
			else if($time==2400){#EndGameName="zc2400ユージロー";}
		}else if($c==1){
			if($time==1800){#EndGameName="z1800みそブー";}
			else if($time==1810){#EndGameName="z1810みそブー_双六";}
			else if($time==1820){#EndGameName="z1820みそブー_双六";}
			else if($time==1830){#EndGameName="z1830みそブー_ミヅハ";}
			else if($time==1840){#EndGameName="z1840みそブー_ミヅハ";}
			else if($time==1850){#EndGameName="z1850みそブー_ミヅハ";}
			else if($time==1900){#EndGameName="z1900みそブー_ミヅハ";}
			else if($time==1910){#EndGameName="z1910みそブー_ミヅハ";}
			else if($time==1920){#EndGameName="z1920みそブー_ＡＤ";}
			else if($time==1930){#EndGameName="z1930みそブー_ＡＤ";}
			else if($time==1940){#EndGameName="z1940みそブー";}
			else if($time==1950){#EndGameName="z1950みそブー_ミヅハ";}
			else if($time==2000){#EndGameName="z2000ユージロー_みそブー";}
			else if($time==2010){#EndGameName="z2010ユージロー_みそブー";}
			else if($time==2020){#EndGameName="z2020ユージロー_みそブー";}
			else if($time==2030){#EndGameName="z2030ユージロー_みそブー";}
			else if($time==2040){#EndGameName="z2040ユージロー_みそブー";}
			else if($time==2050){#EndGameName="z2050みそブー_鈴";}
			else if($time==2100){#EndGameName="z2100みそブー_鈴_双六";}
			else if($time==2110){#EndGameName="z2110みそブー";}
			else if($time==2120){#EndGameName="z2120みそブー";}
			else if($time==2130){#EndGameName="z2130みそブー_ＡＤ";}
			else if($time==2140){#EndGameName="z2140みそブー";}
			else if($time==2150){#EndGameName="z2150みそブー";}
			else if($time==2200){#EndGameName="z2200みそブー_ミヅハ";}
			else if($time==2210){#EndGameName="z2210みそブー_ミヅハ";}
			else if($time==2220){#EndGameName="z2220みそブー_ミヅハ";}
			else if($time==2230){#EndGameName="z2220みそブー_ミヅハ";}
			else if($time==2240){#EndGameName="z2240みそブー_ミヅハ";}
			else if($time==2250){#EndGameName="z2250みそブー_ミヅハ";}
			else if($time==2300){#EndGameName="zc2300みそブー";}
			else if($time==2310){#EndGameName="zc2300みそブー";}
			else if($time==2400){#EndGameName="zc2400みそブー";}
		}else if($c==2){
			if($time==1800){#EndGameName="z1800ミヅハ";}
			else if($time==1810){#EndGameName="z1810ミヅハ";}
			else if($time==1820){#EndGameName="z1820ミヅハ";}
			else if($time==1830){#EndGameName="z1830みそブー_ミヅハ";}
			else if($time==1840){#EndGameName="z1840みそブー_ミヅハ";}
			else if($time==1850){#EndGameName="z1850みそブー_ミヅハ";}
			else if($time==1900){#EndGameName="z1900みそブー_ミヅハ";}
			else if($time==1910){#EndGameName="z1910みそブー_ミヅハ";}
			else if($time==1920){#EndGameName="z1920ミヅハ";}
			else if($time==1930){#EndGameName="z1930ミヅハ";}
			else if($time==1940){#EndGameName="z1940ミヅハ";}
			else if($time==1950){#EndGameName="z1950みそブー_ミヅハ";}
			else if($time==2000){#EndGameName="z2000ミヅハ";}
			else if($time==2010){#EndGameName="z2010ミヅハ";}
			else if($time==2020){#EndGameName="z2020ミヅハ";}
			else if($time==2030){#EndGameName="z2030ミヅハ";}
			else if($time==2040){#EndGameName="z2040ミヅハ";}
			else if($time==2050){#EndGameName="z2050ユージロー_ミヅハ_ＡＤ";}
			else if($time==2100){#EndGameName="z2100ユージロー_ミヅハ";}
			else if($time==2110){#EndGameName="z2110ユージロー_ミヅハ";}
			else if($time==2120){#EndGameName="z2120ミヅハ";}
			else if($time==2130){#EndGameName="z2130ユージロー_ミヅハ";}
			else if($time==2140){#EndGameName="z2140ユージロー_ミヅハ";}
			else if($time==2150){#EndGameName="z2150ミヅハ";}
			else if($time==2200){#EndGameName="z2200みそブー_ミヅハ";}
			else if($time==2210){#EndGameName="z2210みそブー_ミヅハ";}
			else if($time==2220){#EndGameName="z2220みそブー_ミヅハ";}
			else if($time==2230){#EndGameName="z2220みそブー_ミヅハ";}
			else if($time==2240){#EndGameName="z2240みそブー_ミヅハ";}
			else if($time==2250){#EndGameName="z2250みそブー_ミヅハ";}
			else if($time==2300){#EndGameName="zc2300ミヅハ";}
			else if($time==2310){#EndGameName="zc2300ミヅハ";}
			else if($time==2400){#EndGameName="zc2400ミヅハ";}
		}else if($c==3){
			if($time==1800){#EndGameName="z1800鈴";}
			else if($time==1810){#EndGameName="z1800鈴";}
			else if($time==1820){#EndGameName="z1820鈴";}
			else if($time==1830){#EndGameName="z1830鈴";}
			else if($time==1840){#EndGameName="z1830鈴";}
			else if($time==1850){#EndGameName="z1850鈴";}
			else if($time==1900){#EndGameName="z1900鈴";}
			else if($time==1910){#EndGameName="z1910鈴";}
			else if($time==1920){#EndGameName="z1910鈴";}
			else if($time==1930){#EndGameName="z1930鈴";}
			else if($time==1940){#EndGameName="z1940鈴";}
			else if($time==1950){#EndGameName="z1950鈴";}
			else if($time==2000){#EndGameName="z2000鈴";}
			else if($time==2010){#EndGameName="z2010鈴";}
			else if($time==2020){#EndGameName="z2010鈴";}
			else if($time==2030){#EndGameName="z2030鈴";}
			else if($time==2040){#EndGameName="z2030鈴";}
			else if($time==2050){#EndGameName="z2050みそブー_鈴";}
			else if($time==2100){#EndGameName="z2100みそブー_鈴_双六";}
			else if($time==2110){#EndGameName="z2110鈴";}
			else if($time==2120){#EndGameName="z2110鈴";}
			else if($time==2130){#EndGameName="z2130鈴";}
			else if($time==2140){#EndGameName="z2140鈴";}
			else if($time==2150){#EndGameName="z2150鈴";}
			else if($time==2200){#EndGameName="z2200鈴";}
			else if($time==2210){#EndGameName="z2210鈴";}
			else if($time==2220){#EndGameName="z2220ユージロー_鈴";}
			else if($time==2230){#EndGameName="z2230ユージロー_鈴";}
			else if($time==2240){#EndGameName="z2240鈴";}
			else if($time==2250){#EndGameName="zc2250鈴";}
			else if($time==2300){#EndGameName="zc2300鈴";}
			else if($time==2310){#EndGameName="zc2310鈴";}
			else if($time==2400){#EndGameName="zc2400鈴";}
		}else if($c==4){
			if($time==1800){#EndGameName="z1800双六";}
			else if($time==1810){#EndGameName="z1810みそブー_双六";}
			else if($time==1820){#EndGameName="z1820みそブー_双六";}
			else if($time==1830){#EndGameName="z1830双六";}
			else if($time==1840){#EndGameName="z1840双六";}
			else if($time==1850){#EndGameName="z1850ユージロー_双六";}
			else if($time==1900){#EndGameName="z1900双六";}
			else if($time==1910){#EndGameName="z1900双六";}
			else if($time==1920){#EndGameName="z1920双六";}
			else if($time==1930){#EndGameName="z1930双六";}
			else if($time==1940){#EndGameName="z1940双六_ＡＤ";}
			else if($time==1950){#EndGameName="z1950双六";}
			else if($time==2000){#EndGameName="z2000双六";}
			else if($time==2010){#EndGameName="z2010双六";}
			else if($time==2020){#EndGameName="z2020双六";}
			else if($time==2030){#EndGameName="z2030双六";}
			else if($time==2040){#EndGameName="z2040双六";}
			else if($time==2050){#EndGameName="z2050双六";}
			else if($time==2100){#EndGameName="z2100みそブー_鈴_双六";}
			else if($time==2110){#EndGameName="z2110双六";}
			else if($time==2120){#EndGameName="z2120双六";}
			else if($time==2130){#EndGameName="z2130双六";}
			else if($time==2140){#EndGameName="z2140双六";}
			else if($time==2150){#EndGameName="z2150双六";}
			else if($time==2200){#EndGameName="z2200双六";}
			else if($time==2210){#EndGameName="z2210双六";}
			else if($time==2220){#EndGameName="z2220双六";}
			else if($time==2230){#EndGameName="zc2230双六";}
			else if($time==2240){#EndGameName="zc2240双六";}
			else if($time==2250){#EndGameName="zc2240双六";}
			else if($time==2300){#EndGameName="zc2300双六";}
			else if($time==2310){#EndGameName="zc2300双六";}
			else if($time==2400){#EndGameName="zc2400双六";}
		}else if($c==5){
			if($time==1800){#EndGameName="z1800ＡＤ";}
			else if($time==1810){#EndGameName="z1810ＡＤ";}
			else if($time==1820){#EndGameName="z1820ＡＤ";}
			else if($time==1830){#EndGameName="z1830ＡＤ";}
			else if($time==1840){#EndGameName="z1840ＡＤ";}
			else if($time==1850){#EndGameName="z1850ＡＤ";}
			else if($time==1900){#EndGameName="z1900ＡＤ";}
			else if($time==1910){#EndGameName="z1910ＡＤ";}
			else if($time==1920){#EndGameName="z1920みそブー_ＡＤ";}
			else if($time==1930){#EndGameName="z1930みそブー_ＡＤ";}
			else if($time==1940){#EndGameName="z1940双六_ＡＤ";}
			else if($time==1950){#EndGameName="z1950ＡＤ";}
			else if($time==2000){#EndGameName="z2000ＡＤ";}
			else if($time==2010){#EndGameName="z2010ＡＤ";}
			else if($time==2020){#EndGameName="z2020ＡＤ";}
			else if($time==2030){#EndGameName="z2030ＡＤ";}
			else if($time==2040){#EndGameName="z2040ＡＤ";}
			else if($time==2050){#EndGameName="z2050ユージロー_ミヅハ_ＡＤ";}
			else if($time==2100){#EndGameName="z2100ＡＤ";}
			else if($time==2110){#EndGameName="z2110ＡＤ";}
			else if($time==2120){#EndGameName="z2120ＡＤ";}
			else if($time==2130){#EndGameName="z2130みそブー_ＡＤ";}
			else if($time==2140){#EndGameName="z2140ＡＤ";}
			else if($time==2150){#EndGameName="z2150ＡＤ";}
			else if($time==2200){#EndGameName="z2200ＡＤ";}
			else if($time==2210){#EndGameName="z2210ＡＤ";}
			else if($time==2220){#EndGameName="z2220ＡＤ";}
			else if($time==2230){#EndGameName="zc2230ＡＤ";}
			else if($time==2240){#EndGameName="zc2240ＡＤ";}
			else if($time==2250){#EndGameName="zc2240ＡＤ";}
			else if($time==2300){#EndGameName="zc2300ＡＤ";}
			else if($time==2310){#EndGameName="zc2300ＡＤ";}
			else if($time==2400){#EndGameName="zc2400ＡＤ";}
		}
	}else if(#RouteName=="d"){
		//■■■d■■■
		if($GameName=="c2340恵那.nss"){$time=2400;}
		if($GameName=="d2341ノーコ.nss"){$time=2400;}
		if($GameName=="2340似鳥.nss"){$time=2400;}
		if($GameName=="d2345似鳥_ノーコ.nss"){$time=2400;}
		if($GameName=="c2357恵那.nss"){$time=2400;}
		if($GameName=="d2400沙紅羅.nss"){$time=2400;}
		if($GameName=="d2401似鳥_ノーコ.nss"){$time=2400;}
		if($GameName=="d2402沙紅羅_似鳥_ノーコ.nss"){$time=2400;}
		if($GameName=="d2403似鳥_ノーコ.nss"){$time=2400;}
		if($GameName=="c2404沙紅羅.nss"){$time=2400;}
		if($GameName=="d2404沙紅羅.nss"){$time=2400;}
		if($c==0){
			if($time==1800){#EndGameName="z1800ユージロー";}
			else if($time==1810){#EndGameName="z1800ユージロー";}
			else if($time==1820){#EndGameName="z1820ユージロー";}
			else if($time==1830){#EndGameName="z1830ユージロー";}
			else if($time==1840){#EndGameName="z1830ユージロー";}
			else if($time==1850){#EndGameName="z1850ユージロー_双六";}
			else if($time==1900){#EndGameName="z1900ユージロー";}
			else if($time==1910){#EndGameName="z1900ユージロー";}
			else if($time==1920){#EndGameName="z1920ユージロー";}
			else if($time==1930){#EndGameName="z1930ユージロー";}
			else if($time==1940){#EndGameName="z1940ユージロー";}
			else if($time==1950){#EndGameName="z1950ユージロー";}
			else if($time==2000){#EndGameName="z2000ユージロー_みそブー";}
			else if($time==2010){#EndGameName="z2010ユージロー_みそブー";}
			else if($time==2020){#EndGameName="z2020ユージロー_みそブー";}
			else if($time==2030){#EndGameName="z2030ユージロー_みそブー";}
			else if($time==2040){#EndGameName="z2040ユージロー_みそブー";}
			else if($time==2050){#EndGameName="z2050ユージロー_ミヅハ_ＡＤ";}
			else if($time==2100){#EndGameName="z2100ユージロー_ミヅハ";}
			else if($time==2110){#EndGameName="z2110ユージロー_ミヅハ";}
			else if($time==2120){#EndGameName="z2120ユージロー";}
			else if($time==2130){#EndGameName="z2130ユージロー_ミヅハ";}
			else if($time==2140){#EndGameName="z2140ユージロー_ミヅハ";}
			else if($time==2150){#EndGameName="z2150ユージロー";}
			else if($time==2200){#EndGameName="z2200ユージロー";}
			else if($time==2210){#EndGameName="z2210ユージロー";}
			else if($time==2220){#EndGameName="z2220ユージロー_鈴";}
			else if($time==2230){#EndGameName="z2230ユージロー_鈴";}
			else if($time==2240){#EndGameName="z2240ユージロー";}
			else if($time==2250){#EndGameName="z2250ユージロー";}
			else if($time==2300){#EndGameName="z2300ユージロー";}
			else if($time==2310){#EndGameName="z2310ユージロー";}
			else if($time==2400){#EndGameName="zc2400ユージロー";}
		}else if($c==1){
			if($time==1800){#EndGameName="z1800みそブー";}
			else if($time==1810){#EndGameName="z1810みそブー_双六";}
			else if($time==1820){#EndGameName="z1820みそブー_双六";}
			else if($time==1830){#EndGameName="z1830みそブー_ミヅハ";}
			else if($time==1840){#EndGameName="z1840みそブー_ミヅハ";}
			else if($time==1850){#EndGameName="z1850みそブー_ミヅハ";}
			else if($time==1900){#EndGameName="z1900みそブー_ミヅハ";}
			else if($time==1910){#EndGameName="z1910みそブー_ミヅハ";}
			else if($time==1920){#EndGameName="z1920みそブー_ＡＤ";}
			else if($time==1930){#EndGameName="z1930みそブー_ＡＤ";}
			else if($time==1940){#EndGameName="z1940みそブー";}
			else if($time==1950){#EndGameName="z1950みそブー_ミヅハ";}
			else if($time==2000){#EndGameName="z2000ユージロー_みそブー";}
			else if($time==2010){#EndGameName="z2010ユージロー_みそブー";}
			else if($time==2020){#EndGameName="z2020ユージロー_みそブー";}
			else if($time==2030){#EndGameName="z2030ユージロー_みそブー";}
			else if($time==2040){#EndGameName="z2040ユージロー_みそブー";}
			else if($time==2050){#EndGameName="z2050みそブー_鈴";}
			else if($time==2100){#EndGameName="z2100みそブー_鈴_双六";}
			else if($time==2110){#EndGameName="z2110みそブー";}
			else if($time==2120){#EndGameName="z2120みそブー";}
			else if($time==2130){#EndGameName="z2130みそブー_ＡＤ";}
			else if($time==2140){#EndGameName="z2140みそブー";}
			else if($time==2150){#EndGameName="z2150みそブー";}
			else if($time==2200){#EndGameName="z2200みそブー_ミヅハ";}
			else if($time==2210){#EndGameName="z2210みそブー_ミヅハ";}
			else if($time==2220){#EndGameName="z2220みそブー_ミヅハ";}
			else if($time==2230){#EndGameName="z2220みそブー_ミヅハ";}
			else if($time==2240){#EndGameName="z2240みそブー_ミヅハ";}
			else if($time==2250){#EndGameName="z2250みそブー_ミヅハ";}
			else if($time==2300){#EndGameName="z2300みそブー";}
			else if($time==2310){#EndGameName="z2310みそブー";}
			else if($time==2400){#EndGameName="zc2400みそブー";}
		}else if($c==2){
			if($time==1800){#EndGameName="z1800ミヅハ";}
			else if($time==1810){#EndGameName="z1810ミヅハ";}
			else if($time==1820){#EndGameName="z1820ミヅハ";}
			else if($time==1830){#EndGameName="z1830みそブー_ミヅハ";}
			else if($time==1840){#EndGameName="z1840みそブー_ミヅハ";}
			else if($time==1850){#EndGameName="z1850みそブー_ミヅハ";}
			else if($time==1900){#EndGameName="z1900みそブー_ミヅハ";}
			else if($time==1910){#EndGameName="z1910みそブー_ミヅハ";}
			else if($time==1920){#EndGameName="z1920ミヅハ";}
			else if($time==1930){#EndGameName="z1930ミヅハ";}
			else if($time==1940){#EndGameName="z1940ミヅハ";}
			else if($time==1950){#EndGameName="z1950みそブー_ミヅハ";}
			else if($time==2000){#EndGameName="z2000ミヅハ";}
			else if($time==2010){#EndGameName="z2010ミヅハ";}
			else if($time==2020){#EndGameName="z2020ミヅハ";}
			else if($time==2030){#EndGameName="z2030ミヅハ";}
			else if($time==2040){#EndGameName="z2040ミヅハ";}
			else if($time==2050){#EndGameName="z2050ユージロー_ミヅハ_ＡＤ";}
			else if($time==2100){#EndGameName="z2100ユージロー_ミヅハ";}
			else if($time==2110){#EndGameName="z2110ユージロー_ミヅハ";}
			else if($time==2120){#EndGameName="z2120ミヅハ";}
			else if($time==2130){#EndGameName="z2130ユージロー_ミヅハ";}
			else if($time==2140){#EndGameName="z2140ユージロー_ミヅハ";}
			else if($time==2150){#EndGameName="z2150ミヅハ";}
			else if($time==2200){#EndGameName="z2200みそブー_ミヅハ";}
			else if($time==2210){#EndGameName="z2210みそブー_ミヅハ";}
			else if($time==2220){#EndGameName="z2220みそブー_ミヅハ";}
			else if($time==2230){#EndGameName="z2220みそブー_ミヅハ";}
			else if($time==2240){#EndGameName="z2240みそブー_ミヅハ";}
			else if($time==2250){#EndGameName="z2250みそブー_ミヅハ";}
			else if($time==2300){#EndGameName="z2300ミヅハ";}
			else if($time==2310){#EndGameName="z2300ミヅハ";}
			else if($time==2400){#EndGameName="zd2400鈴";}
		}else if($c==3){
			if($time==1800){#EndGameName="z1800鈴";}
			else if($time==1810){#EndGameName="z1800鈴";}
			else if($time==1820){#EndGameName="z1820鈴";}
			else if($time==1830){#EndGameName="z1830鈴";}
			else if($time==1840){#EndGameName="z1830鈴";}
			else if($time==1850){#EndGameName="z1850鈴";}
			else if($time==1900){#EndGameName="z1900鈴";}
			else if($time==1910){#EndGameName="z1910鈴";}
			else if($time==1920){#EndGameName="z1910鈴";}
			else if($time==1930){#EndGameName="z1930鈴";}
			else if($time==1940){#EndGameName="z1940鈴";}
			else if($time==1950){#EndGameName="z1950鈴";}
			else if($time==2000){#EndGameName="z2000鈴";}
			else if($time==2010){#EndGameName="z2010鈴";}
			else if($time==2020){#EndGameName="z2010鈴";}
			else if($time==2030){#EndGameName="z2030鈴";}
			else if($time==2040){#EndGameName="z2030鈴";}
			else if($time==2050){#EndGameName="z2050みそブー_鈴";}
			else if($time==2100){#EndGameName="z2100みそブー_鈴_双六";}
			else if($time==2110){#EndGameName="z2110鈴";}
			else if($time==2120){#EndGameName="z2110鈴";}
			else if($time==2130){#EndGameName="z2130鈴";}
			else if($time==2140){#EndGameName="z2140鈴";}
			else if($time==2150){#EndGameName="z2150鈴";}
			else if($time==2200){#EndGameName="z2200鈴";}
			else if($time==2210){#EndGameName="z2210鈴";}
			else if($time==2220){#EndGameName="z2220ユージロー_鈴";}
			else if($time==2230){#EndGameName="z2230ユージロー_鈴";}
			else if($time==2240){#EndGameName="z2240鈴";}
			else if($time==2250){#EndGameName="z2240鈴";}
			else if($time==2300){#EndGameName="z2300鈴_ＡＤ";}
			else if($time==2310){#EndGameName="z2310鈴_ＡＤ";}
			else if($time==2400){#EndGameName="zd2400鈴";}
		}else if($c==4){
			if($time==1800){#EndGameName="z1800双六";}
			else if($time==1810){#EndGameName="z1810みそブー_双六";}
			else if($time==1820){#EndGameName="z1820みそブー_双六";}
			else if($time==1830){#EndGameName="z1830双六";}
			else if($time==1840){#EndGameName="z1840双六";}
			else if($time==1850){#EndGameName="z1850ユージロー_双六";}
			else if($time==1900){#EndGameName="z1900双六";}
			else if($time==1910){#EndGameName="z1900双六";}
			else if($time==1920){#EndGameName="z1920双六";}
			else if($time==1930){#EndGameName="z1930双六";}
			else if($time==1940){#EndGameName="z1940双六_ＡＤ";}
			else if($time==1950){#EndGameName="z1950双六";}
			else if($time==2000){#EndGameName="z2000双六";}
			else if($time==2010){#EndGameName="z2010双六";}
			else if($time==2020){#EndGameName="z2020双六";}
			else if($time==2030){#EndGameName="z2030双六";}
			else if($time==2040){#EndGameName="z2040双六";}
			else if($time==2050){#EndGameName="z2050双六";}
			else if($time==2100){#EndGameName="z2100みそブー_鈴_双六";}
			else if($time==2110){#EndGameName="z2110双六";}
			else if($time==2120){#EndGameName="z2120双六";}
			else if($time==2130){#EndGameName="z2130双六";}
			else if($time==2140){#EndGameName="z2140双六";}
			else if($time==2150){#EndGameName="z2150双六";}
			else if($time==2200){#EndGameName="z2200双六";}
			else if($time==2210){#EndGameName="z2210双六";}
			else if($time==2220){#EndGameName="z2220双六";}
			else if($time==2230){#EndGameName="z2230双六";}
			else if($time==2240){#EndGameName="z2240双六";}
			else if($time==2250){#EndGameName="zd2250双六";}
			else if($time==2300){#EndGameName="zc2300双六";}
			else if($time==2310){#EndGameName="zc2300双六";}
			else if($time==2400){#EndGameName="zc2400双六";}
		}else if($c==5){
			if($time==1800){#EndGameName="z1800ＡＤ";}
			else if($time==1810){#EndGameName="z1810ＡＤ";}
			else if($time==1820){#EndGameName="z1820ＡＤ";}
			else if($time==1830){#EndGameName="z1830ＡＤ";}
			else if($time==1840){#EndGameName="z1840ＡＤ";}
			else if($time==1850){#EndGameName="z1850ＡＤ";}
			else if($time==1900){#EndGameName="z1900ＡＤ";}
			else if($time==1910){#EndGameName="z1910ＡＤ";}
			else if($time==1920){#EndGameName="z1920みそブー_ＡＤ";}
			else if($time==1930){#EndGameName="z1930みそブー_ＡＤ";}
			else if($time==1940){#EndGameName="z1940双六_ＡＤ";}
			else if($time==1950){#EndGameName="z1950ＡＤ";}
			else if($time==2000){#EndGameName="z2000ＡＤ";}
			else if($time==2010){#EndGameName="z2010ＡＤ";}
			else if($time==2020){#EndGameName="z2020ＡＤ";}
			else if($time==2030){#EndGameName="z2030ＡＤ";}
			else if($time==2040){#EndGameName="z2040ＡＤ";}
			else if($time==2050){#EndGameName="z2050ユージロー_ミヅハ_ＡＤ";}
			else if($time==2100){#EndGameName="z2100ＡＤ";}
			else if($time==2110){#EndGameName="z2110ＡＤ";}
			else if($time==2120){#EndGameName="z2120ＡＤ";}
			else if($time==2130){#EndGameName="z2130みそブー_ＡＤ";}
			else if($time==2140){#EndGameName="z2140ＡＤ";}
			else if($time==2150){#EndGameName="z2150ＡＤ";}
			else if($time==2200){#EndGameName="z2200ＡＤ";}
			else if($time==2210){#EndGameName="z2210ＡＤ";}
			else if($time==2220){#EndGameName="z2220ＡＤ";}
			else if($time==2230){#EndGameName="z2230ＡＤ";}
			else if($time==2240){#EndGameName="z2240ＡＤ";}
			else if($time==2250){#EndGameName="z2250ＡＤ";}
			else if($time==2300){#EndGameName="z2300鈴_ＡＤ";}
			else if($time==2310){#EndGameName="z2310鈴_ＡＤ";}
			else if($time==2400){#EndGameName="zc2400ＡＤ";}
		}
	}else if(#RouteName=="e"){
		//■■■e■■■
		if($GameName=="2348ノーコ_フウリ.nss"){$time=2400;}
		if($GameName=="e2349ノーコ.nss"){$time=2400;}
		if($GameName=="2340似鳥.nss"){$time=2400;}
		if($GameName=="d2345似鳥_ノーコ.nss"){$time=2400;}
		if($GameName=="e2355沙紅羅.nss"){$time=2400;}
		if($GameName=="e2400似鳥_ノーコ.nss"){$time=2400;}
		if($GameName=="e2404沙紅羅.nss"){$time=2400;}
		if($c==0){
			if($time==1800){#EndGameName="z1800ユージロー";}
			else if($time==1810){#EndGameName="z1800ユージロー";}
			else if($time==1820){#EndGameName="z1820ユージロー";}
			else if($time==1830){#EndGameName="z1830ユージロー";}
			else if($time==1840){#EndGameName="z1830ユージロー";}
			else if($time==1850){#EndGameName="z1850ユージロー_双六";}
			else if($time==1900){#EndGameName="z1900ユージロー";}
			else if($time==1910){#EndGameName="z1900ユージロー";}
			else if($time==1920){#EndGameName="z1920ユージロー";}
			else if($time==1930){#EndGameName="z1930ユージロー";}
			else if($time==1940){#EndGameName="z1940ユージロー";}
			else if($time==1950){#EndGameName="z1950ユージロー";}
			else if($time==2000){#EndGameName="z2000ユージロー_みそブー";}
			else if($time==2010){#EndGameName="z2010ユージロー_みそブー";}
			else if($time==2020){#EndGameName="z2020ユージロー_みそブー";}
			else if($time==2030){#EndGameName="z2030ユージロー_みそブー";}
			else if($time==2040){#EndGameName="z2040ユージロー_みそブー";}
			else if($time==2050){#EndGameName="z2050ユージロー_ミヅハ_ＡＤ";}
			else if($time==2100){#EndGameName="z2100ユージロー_ミヅハ";}
			else if($time==2110){#EndGameName="z2110ユージロー_ミヅハ";}
			else if($time==2120){#EndGameName="z2120ユージロー";}
			else if($time==2130){#EndGameName="z2130ユージロー_ミヅハ";}
			else if($time==2140){#EndGameName="z2140ユージロー_ミヅハ";}
			else if($time==2150){#EndGameName="z2150ユージロー";}
			else if($time==2200){#EndGameName="z2200ユージロー";}
			else if($time==2210){#EndGameName="z2210ユージロー";}
			else if($time==2220){#EndGameName="z2220ユージロー_鈴";}
			else if($time==2230){#EndGameName="z2230ユージロー_鈴";}
			else if($time==2240){#EndGameName="z2240ユージロー";}
			else if($time==2250){#EndGameName="z2250ユージロー";}
			else if($time==2300){#EndGameName="z2300ユージロー";}
			else if($time==2310){#EndGameName="z2310ユージロー";}
			else if($time==2320){#EndGameName="ze2320ユージロー";}
			else if($time==2330){#EndGameName="ze2330ユージロー";}
			else if($time==2400){#EndGameName="ze2400ユージロー";}
		}else if($c==1){
			if($time==1800){#EndGameName="z1800みそブー";}
			else if($time==1810){#EndGameName="z1810みそブー_双六";}
			else if($time==1820){#EndGameName="z1820みそブー_双六";}
			else if($time==1830){#EndGameName="z1830みそブー_ミヅハ";}
			else if($time==1840){#EndGameName="z1840みそブー_ミヅハ";}
			else if($time==1850){#EndGameName="z1850みそブー_ミヅハ";}
			else if($time==1900){#EndGameName="z1900みそブー_ミヅハ";}
			else if($time==1910){#EndGameName="z1910みそブー_ミヅハ";}
			else if($time==1920){#EndGameName="z1920みそブー_ＡＤ";}
			else if($time==1930){#EndGameName="z1930みそブー_ＡＤ";}
			else if($time==1940){#EndGameName="z1940みそブー";}
			else if($time==1950){#EndGameName="z1950みそブー_ミヅハ";}
			else if($time==2000){#EndGameName="z2000ユージロー_みそブー";}
			else if($time==2010){#EndGameName="z2010ユージロー_みそブー";}
			else if($time==2020){#EndGameName="z2020ユージロー_みそブー";}
			else if($time==2030){#EndGameName="z2030ユージロー_みそブー";}
			else if($time==2040){#EndGameName="z2040ユージロー_みそブー";}
			else if($time==2050){#EndGameName="z2050みそブー_鈴";}
			else if($time==2100){#EndGameName="z2100みそブー_鈴_双六";}
			else if($time==2110){#EndGameName="z2110みそブー";}
			else if($time==2120){#EndGameName="z2120みそブー";}
			else if($time==2130){#EndGameName="z2130みそブー_ＡＤ";}
			else if($time==2140){#EndGameName="z2140みそブー";}
			else if($time==2150){#EndGameName="z2150みそブー";}
			else if($time==2200){#EndGameName="z2200みそブー_ミヅハ";}
			else if($time==2210){#EndGameName="z2210みそブー_ミヅハ";}
			else if($time==2220){#EndGameName="z2220みそブー_ミヅハ";}
			else if($time==2230){#EndGameName="z2220みそブー_ミヅハ";}
			else if($time==2240){#EndGameName="z2240みそブー_ミヅハ";}
			else if($time==2250){#EndGameName="z2250みそブー_ミヅハ";}
			else if($time==2300){#EndGameName="z2300みそブー";}
			else if($time==2310){#EndGameName="z2310みそブー";}
			else if($time==2320){#EndGameName="z2320みそブー";}
			else if($time==2330){#EndGameName="z2330みそブー";}
			else if($time==2400){#EndGameName="ze2400みそブー";}
		}else if($c==2){
			if($time==1800){#EndGameName="z1800ミヅハ";}
			else if($time==1810){#EndGameName="z1810ミヅハ";}
			else if($time==1820){#EndGameName="z1820ミヅハ";}
			else if($time==1830){#EndGameName="z1830みそブー_ミヅハ";}
			else if($time==1840){#EndGameName="z1840みそブー_ミヅハ";}
			else if($time==1850){#EndGameName="z1850みそブー_ミヅハ";}
			else if($time==1900){#EndGameName="z1900みそブー_ミヅハ";}
			else if($time==1910){#EndGameName="z1910みそブー_ミヅハ";}
			else if($time==1920){#EndGameName="z1920ミヅハ";}
			else if($time==1930){#EndGameName="z1930ミヅハ";}
			else if($time==1940){#EndGameName="z1940ミヅハ";}
			else if($time==1950){#EndGameName="z1950みそブー_ミヅハ";}
			else if($time==2000){#EndGameName="z2000ミヅハ";}
			else if($time==2010){#EndGameName="z2010ミヅハ";}
			else if($time==2020){#EndGameName="z2020ミヅハ";}
			else if($time==2030){#EndGameName="z2030ミヅハ";}
			else if($time==2040){#EndGameName="z2040ミヅハ";}
			else if($time==2050){#EndGameName="z2050ユージロー_ミヅハ_ＡＤ";}
			else if($time==2100){#EndGameName="z2100ユージロー_ミヅハ";}
			else if($time==2110){#EndGameName="z2110ユージロー_ミヅハ";}
			else if($time==2120){#EndGameName="z2120ミヅハ";}
			else if($time==2130){#EndGameName="z2130ユージロー_ミヅハ";}
			else if($time==2140){#EndGameName="z2140ユージロー_ミヅハ";}
			else if($time==2150){#EndGameName="z2150ミヅハ";}
			else if($time==2200){#EndGameName="z2200みそブー_ミヅハ";}
			else if($time==2210){#EndGameName="z2210みそブー_ミヅハ";}
			else if($time==2220){#EndGameName="z2220みそブー_ミヅハ";}
			else if($time==2230){#EndGameName="z2220みそブー_ミヅハ";}
			else if($time==2240){#EndGameName="z2240みそブー_ミヅハ";}
			else if($time==2250){#EndGameName="z2250みそブー_ミヅハ";}
			else if($time==2300){#EndGameName="z2300ミヅハ";}
			else if($time==2310){#EndGameName="z2300ミヅハ";}
			else if($time==2320){#EndGameName="z2320ミヅハ";}
			else if($time==2330){#EndGameName="z2330ミヅハ";}
			else if($time==2400){#EndGameName="ze2400ミヅハ";}
		}else if($c==3){
			if($time==1800){#EndGameName="z1800鈴";}
			else if($time==1810){#EndGameName="z1800鈴";}
			else if($time==1820){#EndGameName="z1820鈴";}
			else if($time==1830){#EndGameName="z1830鈴";}
			else if($time==1840){#EndGameName="z1830鈴";}
			else if($time==1850){#EndGameName="z1850鈴";}
			else if($time==1900){#EndGameName="z1900鈴";}
			else if($time==1910){#EndGameName="z1910鈴";}
			else if($time==1920){#EndGameName="z1910鈴";}
			else if($time==1930){#EndGameName="z1930鈴";}
			else if($time==1940){#EndGameName="z1940鈴";}
			else if($time==1950){#EndGameName="z1950鈴";}
			else if($time==2000){#EndGameName="z2000鈴";}
			else if($time==2010){#EndGameName="z2010鈴";}
			else if($time==2020){#EndGameName="z2010鈴";}
			else if($time==2030){#EndGameName="z2030鈴";}
			else if($time==2040){#EndGameName="z2030鈴";}
			else if($time==2050){#EndGameName="z2050みそブー_鈴";}
			else if($time==2100){#EndGameName="z2100みそブー_鈴_双六";}
			else if($time==2110){#EndGameName="z2110鈴";}
			else if($time==2120){#EndGameName="z2110鈴";}
			else if($time==2130){#EndGameName="z2130鈴";}
			else if($time==2140){#EndGameName="z2140鈴";}
			else if($time==2150){#EndGameName="z2150鈴";}
			else if($time==2200){#EndGameName="z2200鈴";}
			else if($time==2210){#EndGameName="z2210鈴";}
			else if($time==2220){#EndGameName="z2220ユージロー_鈴";}
			else if($time==2230){#EndGameName="z2230ユージロー_鈴";}
			else if($time==2240){#EndGameName="z2240鈴";}
			else if($time==2250){#EndGameName="z2240鈴";}
			else if($time==2300){#EndGameName="z2300鈴_ＡＤ";}
			else if($time==2310){#EndGameName="z2310鈴_ＡＤ";}
			else if($time==2320){#EndGameName="z2320鈴";}
			else if($time==2330){#EndGameName="z2320鈴";}
			else if($time==2400){#EndGameName="ze2400鈴";}
		}else if($c==4){
			if($time==1800){#EndGameName="z1800双六";}
			else if($time==1810){#EndGameName="z1810みそブー_双六";}
			else if($time==1820){#EndGameName="z1820みそブー_双六";}
			else if($time==1830){#EndGameName="z1830双六";}
			else if($time==1840){#EndGameName="z1840双六";}
			else if($time==1850){#EndGameName="z1850ユージロー_双六";}
			else if($time==1900){#EndGameName="z1900双六";}
			else if($time==1910){#EndGameName="z1900双六";}
			else if($time==1920){#EndGameName="z1920双六";}
			else if($time==1930){#EndGameName="z1930双六";}
			else if($time==1940){#EndGameName="z1940双六_ＡＤ";}
			else if($time==1950){#EndGameName="z1950双六";}
			else if($time==2000){#EndGameName="z2000双六";}
			else if($time==2010){#EndGameName="z2010双六";}
			else if($time==2020){#EndGameName="z2020双六";}
			else if($time==2030){#EndGameName="z2030双六";}
			else if($time==2040){#EndGameName="z2040双六";}
			else if($time==2050){#EndGameName="z2050双六";}
			else if($time==2100){#EndGameName="z2100みそブー_鈴_双六";}
			else if($time==2110){#EndGameName="z2110双六";}
			else if($time==2120){#EndGameName="z2120双六";}
			else if($time==2130){#EndGameName="z2130双六";}
			else if($time==2140){#EndGameName="z2140双六";}
			else if($time==2150){#EndGameName="z2150双六";}
			else if($time==2200){#EndGameName="z2200双六";}
			else if($time==2210){#EndGameName="z2210双六";}
			else if($time==2220){#EndGameName="z2220双六";}
			else if($time==2230){#EndGameName="z2230双六";}
			else if($time==2240){#EndGameName="z2240双六";}
			else if($time==2250){#EndGameName="z2250双六";}
			else if($time==2300){#EndGameName="z2300双六";}
			else if($time==2310){#EndGameName="z2310双六";}
			else if($time==2320){#EndGameName="ze2320双六";}
			else if($time==2330){#EndGameName="ze2330双六";}
			else if($time==2400){#EndGameName="zc2400双六";}
		}else if($c==5){
			if($time==1800){#EndGameName="z1800ＡＤ";}
			else if($time==1810){#EndGameName="z1810ＡＤ";}
			else if($time==1820){#EndGameName="z1820ＡＤ";}
			else if($time==1830){#EndGameName="z1830ＡＤ";}
			else if($time==1840){#EndGameName="z1840ＡＤ";}
			else if($time==1850){#EndGameName="z1850ＡＤ";}
			else if($time==1900){#EndGameName="z1900ＡＤ";}
			else if($time==1910){#EndGameName="z1910ＡＤ";}
			else if($time==1920){#EndGameName="z1920みそブー_ＡＤ";}
			else if($time==1930){#EndGameName="z1930みそブー_ＡＤ";}
			else if($time==1940){#EndGameName="z1940双六_ＡＤ";}
			else if($time==1950){#EndGameName="z1950ＡＤ";}
			else if($time==2000){#EndGameName="z2000ＡＤ";}
			else if($time==2010){#EndGameName="z2010ＡＤ";}
			else if($time==2020){#EndGameName="z2020ＡＤ";}
			else if($time==2030){#EndGameName="z2030ＡＤ";}
			else if($time==2040){#EndGameName="z2040ＡＤ";}
			else if($time==2050){#EndGameName="z2050ユージロー_ミヅハ_ＡＤ";}
			else if($time==2100){#EndGameName="z2100ＡＤ";}
			else if($time==2110){#EndGameName="z2110ＡＤ";}
			else if($time==2120){#EndGameName="z2120ＡＤ";}
			else if($time==2130){#EndGameName="z2130みそブー_ＡＤ";}
			else if($time==2140){#EndGameName="z2140ＡＤ";}
			else if($time==2150){#EndGameName="z2150ＡＤ";}
			else if($time==2200){#EndGameName="z2200ＡＤ";}
			else if($time==2210){#EndGameName="z2210ＡＤ";}
			else if($time==2220){#EndGameName="z2220ＡＤ";}
			else if($time==2230){#EndGameName="z2230ＡＤ";}
			else if($time==2240){#EndGameName="z2240ＡＤ";}
			else if($time==2250){#EndGameName="z2250ＡＤ";}
			else if($time==2300){#EndGameName="z2300鈴_ＡＤ";}
			else if($time==2310){#EndGameName="z2310鈴_ＡＤ";}
			else if($time==2320){#EndGameName="z2320ＡＤ";}
			else if($time==2330){#EndGameName="z2320ＡＤ";}
			else if($time==2400){#EndGameName="z2400ＡＤ";}
		}
	}

	//☆終了コント遷移：プロローグファイル用
	if(Strstr($GameName,"y")==1){
		if($c==0){#EndGameName="z0000ユージロー";}
		else if($c==1){#EndGameName="z0000みそブー";}
		else if($c==2){#EndGameName="z0000ミヅハ";}
		else if($c==3){#EndGameName="z0000鈴";}
		else if($c==4){#EndGameName="z0000双六";}
		else if($c==5){#EndGameName="z0000ＡＤ";}
	}

	//☆終了コント遷移：元旦仕様
	DateTime($Year,$Month,$Day,$Hour,$Minute,$Second);
	if($Month==1&&$Day==1&&VariableValue(#,"Fortune_Year"+$Year)==false){
		#EndGameName="zz2400ミヅハ";
	}

	VariableValue(#,String("%s_in",#EndGameName),true);
	#EndGameName=#EndGameName+".nss";
//	Message("hoge",String("%d:%s",$time,#EndGameName));
}
