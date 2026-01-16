$Revision: $

//=============================================================================//
//■ラテ欄■
//=============================================================================//
chapter main
{
	$SYSTEM_menu_lock=true;
	CreateColor("_blk",5000,0,0,1024,576,BLACK);
	CreateSystem("ラテ欄",1000);
	LockVideo(true);
	ClearBacklog();
	CreateTexture("np沙紅羅",1500,50,0,"cg/sys/rate/np沙紅羅.png");
	CreateTexture("np千秋",1500,175,0,"cg/sys/rate/np千秋.png");
	CreateTexture("np恵那",1500,300,0,"cg/sys/rate/np恵那.png");
	CreateTexture("npノーコ",1500,425,0,"cg/sys/rate/npノーコ.png");
	CreateTexture("np似鳥",1500,550,0,"cg/sys/rate/np似鳥.png");
	CreateTexture("npフウリ",1500,675,0,"cg/sys/rate/npフウリ.png");
	CreateTexture("開始確認ダイアログ",2650,50,0,"cg/sys/rate/確認画面枠.png");
	CreateWindow("開始確認Window",2400,50,0,741,287,false);
	CreateChoice("開始確認_最初から");
	CreateTexture("開始確認_最初から/MouseUsual/hit",0,160,30,"cg/sys/rate/場面をoff.png");
	CreateTexture("開始確認_最初から/MouseClick/img",2610,160,30,"cg/sys/rate/場面をon.png");
	CreateTexture("開始確認_最初から/MouseOver/img",2610,160,30,"cg/sys/rate/場面をover.png");
	CreateTexture("開始確認_最初から_img",2602,160,30,"cg/sys/rate/場面をoff.png");
	CreateSound("開始確認_最初から/MouseOver/se",SE,"sound/se/se銃_構える.ogg");
	SetVolume("開始確認_最初から/MouseOver/se", 0, 500, NULL);
	CreateChoice("開始確認_読まない");
	CreateTexture("開始確認_読まない/MouseUsual/hit",0,220,30,"cg/sys/rate/読まないoff.png");
	CreateTexture("開始確認_読まない/MouseClick/img",2610,220,30,"cg/sys/rate/読まないon.png");
	CreateTexture("開始確認_読まない/MouseOver/img",2610,220,30,"cg/sys/rate/読まないover.png");
	CreateTexture("開始確認_読まない_img",2602,220,30,"cg/sys/rate/読まないoff.png");
	CreateSound("開始確認_読まない/MouseOver/se",SE,"sound/se/se銃_構える.ogg");
	SetVolume("開始確認_読まない/MouseOver/se", 0, 500, NULL);
	CreateChoice("開始確認_途中から");
	CreateTexture("開始確認_途中から/MouseUsual/hit",0,100,30,"cg/sys/rate/途中からoff.png");
	CreateWindow("開始確認_途中から/MouseOver/開始確認Window",2600,50,0,741,287,false);
	CreateWindow("開始確認_途中から/MouseClick/開始確認Window",2600,50,0,741,287,false);
	CreateTexture("開始確認_途中から/MouseOver/img",2610,100,30,"cg/sys/rate/途中からover.png");
	CreateTexture("開始確認_途中から/MouseClick/img",2610,100,30,"cg/sys/rate/途中からon.png");
	CreateTexture("開始確認_途中から_img",2602,100,30,"cg/sys/rate/途中からoff.png");
	CreateSound("開始確認_途中から/MouseOver/se",SE,"sound/se/se銃_構える.ogg");
	SetVolume("開始確認_途中から/MouseOver/se", 0, 500, NULL);

	Fade("開始確認*",0,0,null,false);
	Fade("開始確認*/*/*",0,0,null,false);
	CreateTexture("カゴメシリンダ00",2450,262,127,"cg/sys/rate/カゴメポイント/シリンダ回転/シリンダ回転_00000.png");
	CreateTexture("カゴメシリンダ01",2450,262,127,"cg/sys/rate/カゴメポイント/シリンダ回転/シリンダ回転_00001.png");
	CreateTexture("カゴメシリンダ02",2450,262,127,"cg/sys/rate/カゴメポイント/シリンダ回転/シリンダ回転_00002.png");
	CreateTexture("カゴメシリンダ03",2450,262,127,"cg/sys/rate/カゴメポイント/シリンダ回転/シリンダ回転_00003.png");
	CreateTexture("カゴメシリンダ04",2450,262,127,"cg/sys/rate/カゴメポイント/シリンダ回転/シリンダ回転_00004.png");
	CreateTexture("カゴメシリンダ05",2450,262,127,"cg/sys/rate/カゴメポイント/シリンダ回転/シリンダ回転_00005.png");
	CreateTexture("カゴメシリンダ06",2450,262,127,"cg/sys/rate/カゴメポイント/シリンダ回転/シリンダ回転_00006.png");
	CreateTexture("カゴメシリンダ07",2450,262,127,"cg/sys/rate/カゴメポイント/シリンダ回転/シリンダ回転_00007.png");
	CreateTexture("カゴメシリンダ08",2450,262,127,"cg/sys/rate/カゴメポイント/シリンダ回転/シリンダ回転_00008.png");
	CreateTexture("カゴメシリンダ09",2450,262,127,"cg/sys/rate/カゴメポイント/シリンダ回転/シリンダ回転_00009.png");
	CreateTexture("カゴメシリンダ10",2450,262,127,"cg/sys/rate/カゴメポイント/シリンダ回転/シリンダ回転_00010.png");
	CreateTexture("カゴメシリンダ11",2450,262,127,"cg/sys/rate/カゴメポイント/シリンダ回転/シリンダ回転_00011.png");
	CreateTexture("カゴメシリンダ12",2450,262,127,"cg/sys/rate/カゴメポイント/シリンダ回転/シリンダ回転_00012.png");
	CreateTexture("カゴメシリンダ13",2450,262,127,"cg/sys/rate/カゴメポイント/シリンダ回転/シリンダ回転_00013.png");
	CreateTexture("カゴメシリンダ14",2450,262,127,"cg/sys/rate/カゴメポイント/シリンダ回転/シリンダ回転_00014.png");
	Fade("カゴメシリンダ*",0,0,null,false);
	if(#ClearTrue){
		CreateChoice("btn_タイトルに戻る");
		CreateTexture("btn_タイトルに戻る/MouseUsual/hit",0,841,454,"cg/sys/rate/btタイトルoff.png");
		CreateTexture("btn_タイトルに戻る/MouseClick/img",2010,841,454,"cg/sys/rate/btタイトルon.png");
		CreateTexture("btn_タイトルに戻る/MouseOver/img",2010,841,454,"cg/sys/rate/btタイトルover.png");
		CreateTexture("btn_タイトルに戻る_img",2000,841,454,"cg/sys/rate/btタイトルoff.png");
		CreateSound("btn_タイトルに戻る/MouseOver/se",SE,"sound/se/se銃_構える.ogg");
		SetVolume("btn_タイトルに戻る/MouseOver/se", 0, 500, NULL);
	}
	if(#RouteName=="トゥルー"||#RouteName=="aa"||#RouteName=="aba"||#RouteName=="abb"||#RouteName=="baa"||#RouteName=="bab"||#RouteName=="bb"||#RouteName=="c"||#RouteName=="d"||#RouteName=="e"){
		if(#RouteName!="トゥルー"||(#RouteName=="トゥルー"&&#flkagome1_Select&&#flkagome2_Select&&#flkagome3_Select&&#flkagome4_Select&&#flkagome5_Select)){
			if(VariableValue(#,String("Clear_%s",#RouteName))){
				CreateChoice("btn_裏事刻表");
				CreateTexture("btn_裏事刻表/MouseUsual/hit",0,881,454,"cg/sys/rate/bt裏off.png");
				CreateTexture("btn_裏事刻表/MouseClick/img",2010,881,454,"cg/sys/rate/bt裏on.png");
				CreateTexture("btn_裏事刻表/MouseOver/img",2010,881,454,"cg/sys/rate/bt裏over.png");
				CreateTexture("btn_裏事刻表_img",2000,881,454,"cg/sys/rate/bt裏off.png");
				CreateSound("btn_裏事刻表/MouseOver/se",SE,"sound/se/se銃_構える.ogg");
				SetVolume("btn_裏事刻表/MouseOver/se", 0, 500, NULL);
			}
		}
	}
	CreateChoice("btn_環境設定");
	CreateTexture("btn_環境設定/MouseUsual/hit",0,920,454,"cg/sys/rate/bt環境off.png");
	CreateTexture("btn_環境設定/MouseClick/img",2010,920,454,"cg/sys/rate/bt環境on.png");
	CreateTexture("btn_環境設定/MouseOver/img",2010,920,454,"cg/sys/rate/bt環境over.png");
	CreateTexture("btn_環境設定_img",2000,920,454,"cg/sys/rate/bt環境off.png");
	CreateSound("btn_環境設定/MouseOver/se",SE,"sound/se/se銃_構える.ogg");
	SetVolume("btn_環境設定/MouseOver/se", 0, 500, NULL);
	CreateChoice("btn_ゲーム終了");
	CreateTexture("btn_ゲーム終了/MouseUsual/hit",0,960,454,"cg/sys/rate/bt終了off.png");
	CreateTexture("btn_ゲーム終了/MouseClick/img",2010,960,454,"cg/sys/rate/bt終了on.png");
	CreateTexture("btn_ゲーム終了/MouseOver/img",2010,960,454,"cg/sys/rate/bt終了over.png");
	CreateTexture("btn_ゲーム終了_img",2000,960,454,"cg/sys/rate/bt終了off.png");
	CreateSound("btn_ゲーム終了/MouseOver/se",SE,"sound/se/se銃_構える.ogg");
	SetVolume("btn_ゲーム終了/MouseOver/se", 0, 500, NULL);
	if(AXNL_IsRateMapMode()){
		Move("ラテ欄/mp_閉じる/MouseUsual/*",0,59,297,null,false);
		Fade("ラテ欄/mp_閉じる/MouseUsual/*",0,1000,null,false);
		Fade("ラテ欄/map_地図ベース/MouseUsual/*",0,1000,null,false);
		Move("ラテ欄/mp_地図タブ/*/*",0,@0,576,Dxl2,true);
	}else{
		Move("ラテ欄/mp_閉じる/MouseUsual/*",0,2000,297,null,false);
	}
	CreateSound("ラテ欄/mp_地図タブ/MouseOver/se",SE,"sound/se/se銃_構える.ogg");
	SetVolume("ラテ欄/mp_地図タブ/MouseOver/se", 0, 500, NULL);
	CreateSound("ラテ欄/mp_閉じる/MouseOver/se",SE,"sound/se/se銃_構える.ogg");
	SetVolume("ラテ欄/mp_閉じる/MouseOver/se", 0, 500, NULL);
	Fade("btn_*/MouseClick/*",0,0,null,false);
	Fade("btn_*/MouseOver/*",0,0,null,false);
	if(#_IS_URA_RATE){
		CreateColor("@RateWindow/_kg_color",5000,0,0,1024,576,BLACK);
		_UraMake();
	}
	if(#RouteName=="トゥルー"||#RouteName=="aa"||#RouteName=="aba"||#RouteName=="abb"||#RouteName=="baa"||#RouteName=="bab"||#RouteName=="bb"||#RouteName=="c"||#RouteName=="d"||#RouteName=="e"){
		if(#RouteName!="トゥルー"||(#RouteName=="トゥルー"&&#flkagome1_Select&&#flkagome2_Select&&#flkagome3_Select&&#flkagome4_Select&&#flkagome5_Select)){
			if(VariableValue(#,String("Clear_%s",#RouteName))){
				$name=String("cg/sys/rate/結末見出し%s.png",#RouteName);
				CreateTexture("_routename",2100,803,1,$name);
			}
		}
	}
	CreateSound("_se_timezone_open",SE,"sound/se/se銃_シリンダー装填.ogg");
	SetVolume("_se_timezone_open", 0, 500, NULL);
//	CreateSound("_se_timezone_close",SE,"sound/se/se動物_タヌキ_腹鼓02.ogg");
//	SetVolume("_se_timezone_close", 0, 500, NULL);
	CreateSound("_se_urarate",SE,"sound/se/se動作_紙めくる.ogg");
	SetVolume("_se_urarate", 0, 500, NULL);
	LockVideo(false);
	Fade("@Roading",200,0,null,true);
	Fade("@RateWindow/_kg_color",500,0,null,true);
	Request("@RateWindow/_kg_color",Unlock);
	Delete("@RateWindow/_kg_color");
	if(!#_IS_RATE_TUTO_1&&#RATE_FLAG){
		AXNL_SetRateControllable(false);
		Fade("_blk",800,0,null,false);
		CreateTexture("_tuto",4000,122,156,"cg/sys/rate/チュートリアル01.png");
		Fade("_tuto",0,0,null,false);
		Fade("_tuto",300,1000,null,true);
		select{
			if($SYSTEM_l_button_down||$SYSTEM_keydown_enter){
				break;
			}
		}
		Fade("_tuto",200,0,null,true);
		#_IS_RATE_TUTO_1=true;
		AXNL_SetRateControllable(true);
	}else if(#Clear_トゥルー||#Clear_aa||#Clear_aba||#Clear_abb||#Clear_baa||#Clear_bab||#Clear_bb||#Clear_c||#Clear_d||#Clear_e){
		if(!#_IS_RATE_TUTO_2){
			AXNL_SetRateControllable(false);
			Fade("_blk",800,0,null,false);
			CreateTexture("_tuto",4000,122,156,"cg/sys/rate/チュートリアル02.png");
			Fade("_tuto",0,0,null,false);
			Fade("_tuto",300,1000,null,true);
			select{
				if($SYSTEM_l_button_down||$SYSTEM_keydown_enter){
					break;
				}
			}
			Fade("_tuto",200,0,null,true);
			#_IS_RATE_TUTO_2=true;
			AXNL_SetRateControllable(true);
		}else{
			Fade("_blk",800,0,null,true);
		}
	}else{
		Fade("_blk",800,0,null,true);
	}
	$_isRate=true;
	$_isUraRate=false;
	if(#_IS_URA_RATE){
		_UraSelect();
	}
	while($_isRate){
		select{
			if(0){//$SYSTEM_r_button_down){
				if(AXNL_IsRateMapMode()){
					AXNL_SetRateMapMode(false);
					Fade("ラテ欄/mp_閉じる/*/*",300,0,null,false);
					Fade("ラテ欄/map_地図ベース/MouseUsual/*",300,0,null,false);
					Fade("ラテ欄/map_地図ベース/MouseOver/*",300,0,null,false);
					Move("ラテ欄/mp_地図タブ/*/*",300,@0,531,Dxl2,true);
					Move("ラテ欄/mp_閉じる/MouseUsual/*",0,2000,297,null,false)
					Fade("ラテ欄/map_地図ベース/*/*",0,0,null,false);
					$SYSTEM_r_button_down=false;
					break;
				}
			}else if($SYSTEM_keydown_f){
				#SYSTEM_window_full=!#SYSTEM_window_full;
				$SYSTEM_keydown_f=false;
			}
			case "ラテ欄"{
				if(AXNL_IsSelectedTimezone()){
					// 通常時間帯
					AXNL_SetRateControllable(false);
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
					if(AXNL_GetSelectedTimezone_Chara()=="沙紅羅"){$_c=1;}
					else if(AXNL_GetSelectedTimezone_Chara()=="千秋"){$_c=2;}
					else if(AXNL_GetSelectedTimezone_Chara()=="恵那"){$_c=3;}
					else if(AXNL_GetSelectedTimezone_Chara()=="似鳥"){$_c=4;}
					else if(AXNL_GetSelectedTimezone_Chara()=="ノーコ"){$_c=5;}
					else if(AXNL_GetSelectedTimezone_Chara()=="フウリ"){$_c=6;}
					$_num=String("1%06d%02d",AXNL_GetTimezoneScriptSerialNumber(AXNL_GetSelectedTimezone_StartScript(AXNL_GetSelectedTimezone_Time(),AXNL_GetSelectedTimezone_Chara()),AXNL_GetSelectedTimezone_Chara()),$_route);
					$_isSaveExist=false;

					if(ExistSave($_num)){
						$_isSaveExist=true;
						$_img=String("%s/1%06d%02d/thum.npf",#SYSTEM_save_path,AXNL_GetTimezoneScriptSerialNumber(AXNL_GetSelectedTimezone_StartScript(AXNL_GetSelectedTimezone_Time(),AXNL_GetSelectedTimezone_Chara()),AXNL_GetSelectedTimezone_Chara()),$_route);
						CreateTexture("開始確認_途中から/MouseOver/開始確認Window/_rate_tex_over",2601,0,0,$_img);
						CreateTexture("開始確認_途中から/MouseClick/開始確認Window/_rate_tex_over",2601,0,0,$_img);
					}

					$_img=String("cg/sys/rate/thum/%s.img",AXNL_GetSelectedTimezone_StartScript(AXNL_GetSelectedTimezone_Time(),AXNL_GetSelectedTimezone_Chara()));
					if(AXNL_GetSelectedTimezone_StartScript(AXNL_GetSelectedTimezone_Time(),AXNL_GetSelectedTimezone_Chara())=="2400沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ"){
						$_img="cg2/sys/rate/thum/2400沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.img";
					}else if(AXNL_GetSelectedTimezone_StartScript(AXNL_GetSelectedTimezone_Time(),AXNL_GetSelectedTimezone_Chara())=="y1750恵那"){
						$_img="cg2/sys/rate/thum/y1750恵那.img";
					}else if(AXNL_GetSelectedTimezone_StartScript(AXNL_GetSelectedTimezone_Time(),AXNL_GetSelectedTimezone_Chara())=="2330沙紅羅_千秋_恵那"){
						$_img="cg2/sys/rate/thum/2330沙紅羅_千秋_恵那.img";
					}
					CreateTexture("開始確認Window/_view",2600,0,0,$_img);
					SetAlias("開始確認Window/_view","_view");
					Move("btn_Map/*/*",300,@0,@-45,Dxl2,false);
					Move("btn_Map*",300,@0,@-45,Dxl2,false);
					Fade("開始確認*",0,0,null,false);
					Fade("開始確認*/*",0,0,null,false);
					Fade("開始確認*/*/*",0,0,null,false);
					Fade("開始確認*/*/*/*",0,0,null,false);
					Request("_se_timezone_open",Play);
					if($_isSaveExist){
						Fade("開始確認*",300,1000,null,false);
						Fade("開始確認*/*",300,1000,null,false);
						Fade("開始確認*/MouseUsual/*",300,1000,null,true);
						Fade("開始確認*/MouseUsual/*/*",300,1000,null,true);
					}else{
						Fade("開始確認ダイアログ",300,1000,null,false);
						Fade("開始確認_最初から",300,1000,null,false);
						Fade("開始確認_最初から_img",300,1000,null,false);
						Fade("開始確認_最初から/MouseUsual/*",300,1000,null,false);
						Fade("開始確認_読まない",300,1000,null,false);
						Fade("開始確認_読まない/MouseUsual/*",300,1000,null,false);
						Fade("開始確認_読まない_img",300,1000,null,false);
						Fade("開始確認Window/_view",300,1000,null,false);
						Wait(300);
					}
					$_dialog=true;
					while($_dialog){
						select{
							if($SYSTEM_r_button_down){
//								Request("_se_timezone_close",Play);
								Fade("開始確認*",300,0,null,false);
								Fade("開始確認*/*",300,0,null,false);
								Fade("開始確認*/*/*",300,0,null,false);
								Fade("開始確認*/*/*/*",300,0,null,false);
								Fade("開始確認Window/_view",300,0,null,true);
								Delete("開始確認Window/_view");
								Delete("map*");
								$_dialog=false;
								break;
							}else if($SYSTEM_keydown_f){
								#SYSTEM_window_full=!#SYSTEM_window_full;
								$SYSTEM_keydown_f=false;
							}
							if($_isSaveExist){
								case "開始確認_途中から"{
									#CharaName=AXNL_GetSelectedTimezone_Chara();
									$CharaName=#CharaName;
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
									if(#CharaName=="沙紅羅"){$_c=1;}
									else if(#CharaName=="千秋"){$_c=2;}
									else if(#CharaName=="恵那"){$_c=3;}
									else if(#CharaName=="似鳥"){$_c=4;}
									else if(#CharaName=="ノーコ"){$_c=5;}
									else if(#CharaName=="フウリ"){$_c=6;}
									$_num=String("1%06d%02d",AXNL_GetTimezoneScriptSerialNumber(AXNL_GetSelectedTimezone_StartScript(AXNL_GetSelectedTimezone_Time(),AXNL_GetSelectedTimezone_Chara()),AXNL_GetSelectedTimezone_Chara()),$_route);
									if(ExistSave($_num)){
										//Fade("_blk",500,1000,null,true);
										SetVolume("@xbgm33", 800, 0, NULL);
										Fade("ラテ欄/tz*/MouseOver/_rate_tex_over_story",200,0,null,false);
										Fade("ラテ欄/スクロールバー",200,0,null,false);
										Fade("開始確認ダイアログ",200,0,null,false);
										Fade("開始確認_*",200,0,null,false);
										Fade("開始確認_*/*/*",200,0,null,false);
										Fade("開始確認_途中から/MouseClick/開始確認Window/_rate_tex_over",0,1000,null,false);
										Zoom("開始確認_途中から/MouseClick/開始確認Window",800,4000,4000,Axl1,true);
										$PLACE_title=false;
										Load($_num);
									}
								}
							}case "開始確認_最初から"{
								#CharaName=AXNL_GetSelectedTimezone_Chara();
								$CharaName=#CharaName;
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
								if(#CharaName=="沙紅羅"){$_c=1;}
								else if(#CharaName=="千秋"){$_c=2;}
								else if(#CharaName=="恵那"){$_c=3;}
								else if(#CharaName=="似鳥"){$_c=4;}
								else if(#CharaName=="ノーコ"){$_c=5;}
								else if(#CharaName=="フウリ"){$_c=6;}
								$_num=String("1%06d%02d",AXNL_GetTimezoneScriptSerialNumber(AXNL_GetSelectedTimezone_StartScript(AXNL_GetSelectedTimezone_Time(),AXNL_GetSelectedTimezone_Chara()),AXNL_GetSelectedTimezone_Chara()),$_route);
								if(ExistSave($_num)){
									DeleteSaveFile($_num);
								}
								$GameName=AXNL_GetSelectedTimezone_StartScript(AXNL_GetSelectedTimezone_Time(),AXNL_GetSelectedTimezone_Chara())+".nss";
								Fade("ラテ欄/tz*/MouseOver/_rate_tex_over_story",200,0,null,false);
								Fade("ラテ欄/スクロールバー",200,0,null,false);
								Fade("開始確認ダイアログ",200,0,null,false);
								Fade("開始確認_*",200,0,null,false);
								Fade("開始確認_*/*/*",200,0,null,true);
								Zoom("開始確認Window",800,4000,4000,Axl1,true);
								CreateTexture("@RateWindow/gameview",20000,0,0,$_img);
								SetAlias("@RateWindow/gameview","gameview");
								Fade("ラテ欄/スクロールバー",0,1000,null,false);
								$_dialog=false;
								$_isRate=false;
								$PLACE_title=false;
								break;
							}case "開始確認_読まない"{
//								Request("_se_timezone_close",Play);
								Fade("開始確認*",300,0,null,false);
								Fade("開始確認*/*",300,0,null,false);
								Fade("開始確認*/*/*",300,0,null,false);
								Fade("開始確認*/*/*/*",300,0,null,false);
								Fade("開始確認Window/_view",300,0,null,true);
								Delete("開始確認Window/_view");
								$_dialog=false;
							}
						}
					}
					AXNL_SetRateControllable(true);
				}else if(AXNL_IsSelectedActiveKagomeasobi()){
					// アクティブカゴメ
					$GameName=AXNL_GetKagomeasobiScript();
					//VariableValue(#,AXNL_GetActiveKagomeFlagName()+"_Active",false);
					Fade("_blk",500,1000,null,true);
					$_isRate=false;
					break;
				}else if(AXNL_IsSelectedKagomeasobi()){
					// 通過カゴメ
					AXNL_SetRateControllable(false);
					Request("_se_timezone_open",Play);
					if(AXNL_KagomePointAutoMove(600)){
						Wait(600);
					}
					_Cylinder();
					AXNL_SetRateControllable(true);
					Fade("カゴメシリンダ*",0,0,null,false);
				}else if(AXNL_IsSelectedMap()){
					// 地図ボタン
					if(AXNL_IsRateMapMode()){
						AXNL_SetRateMapMode(false);
						Fade("ラテ欄/mp_閉じる/*/*",300,0,null,false);
						Fade("ラテ欄/map_地図ベース/MouseUsual/*",300,0,null,false);
						Move("ラテ欄/mp_地図タブ/*/*",300,@0,531,Dxl2,true);
						Move("ラテ欄/mp_閉じる/MouseUsual/*",0,2000,297,null,false);
					}else{
						AXNL_SetRateMapMode(true);
						Move("ラテ欄/mp_閉じる/MouseUsual/*",0,59,297,null,false);
						Fade("ラテ欄/mp_閉じる/MouseUsual/*",300,1000,null,false);
						Fade("ラテ欄/map_地図ベース/MouseUsual/*",300,1000,null,false);
						Move("ラテ欄/mp_地図タブ/*/*",300,@0,576,Dxl2,true);
					}
				}
			}case "btn_Map"{
//				Move("btn_Map/*/*",300,@0,@-45,Dxl2,false);
//				Move("btn_Map*",300,@0,@-45,Dxl2,false);
				Move("btn_Map/*/*",150,@0,576,Dxl2,false);
				Move("btn_Map*",150,@0,576,Dxl2,false);
			}case "btn_タイトルに戻る"{
				call_chapter nss/sys_reset.nss
			}case "btn_裏事刻表"{
				CreateTexture("_rate_screen",5000,0,0,"SCREEN");
				LockVideo(true);
				_UraMake();
				LockVideo(false);
				Request("_se_urarate",Play);
				Fade("_rate_screen",300,0,null,true);
				Delete("_rate_screen");
				_UraSelect();
			}case "btn_環境設定"{
				AXNL_SetRateControllable(false);
				call_chapter nss/sys_config.nss
				AXNL_SetRateControllable(true);
			}case "btn_ゲーム終了"{
				KickShortcut("escape");
//				call_chapter nss/sys_close.nss;
			}
		}
	}
}
function _UraMake(){
	CreateTexture("ura_acs",3000,0,0,"cg/sys/rate/ura/裏事刻表装飾素材.png");
	$name=String("cg2/sys/rate/ura/裏事刻表%s.png",#RouteName);
	CreateTexture("ura_line",3000,50,0,$name);
	Fade("ura_*",0,1000,null,false);
	CreateSystem("裏ラテ欄",3100);
	if(#ClearTrue){
		CreateChoice("ura_タイトルに戻る");
		CreateTexture("ura_タイトルに戻る/MouseUsual/hit",0,841,454,"cg/sys/rate/btタイトルoff.png");
		CreateTexture("ura_タイトルに戻る/MouseClick/img",3010,841,454,"cg/sys/rate/btタイトルon.png");
		CreateTexture("ura_タイトルに戻る/MouseOver/img",3010,841,454,"cg/sys/rate/btタイトルover.png");
		CreateTexture("ura_タイトルに戻る_img",3000,841,454,"cg/sys/rate/btタイトルoff.png");
	}
	CreateChoice("ura_表事刻表");
	CreateTexture("ura_表事刻表/MouseUsual/hit",0,881,454,"cg/sys/rate/ura/bt裏off.png");
	CreateTexture("ura_表事刻表/MouseClick/img",3010,881,454,"cg/sys/rate/ura/bt裏on.png");
	CreateTexture("ura_表事刻表/MouseOver/img",3010,881,454,"cg/sys/rate/ura/bt裏over.png");
	CreateTexture("ura_表事刻表_img",3000,881,454,"cg/sys/rate/ura/bt裏off.png");
	CreateChoice("ura_環境設定");
	CreateTexture("ura_環境設定/MouseUsual/hit",0,920,454,"cg/sys/rate/bt環境off.png");
	CreateTexture("ura_環境設定/MouseClick/img",3010,920,454,"cg/sys/rate/bt環境on.png");
	CreateTexture("ura_環境設定/MouseOver/img",3010,920,454,"cg/sys/rate/bt環境over.png");
	CreateTexture("ura_環境設定_img",3000,920,454,"cg/sys/rate/bt環境off.png");
	CreateChoice("ura_ゲーム終了");
	CreateTexture("ura_ゲーム終了/MouseUsual/hit",0,960,454,"cg/sys/rate/bt終了off.png");
	CreateTexture("ura_ゲーム終了/MouseClick/img",3010,960,454,"cg/sys/rate/bt終了on.png");
	CreateTexture("ura_ゲーム終了/MouseOver/img",3010,960,454,"cg/sys/rate/bt終了over.png");
	CreateTexture("ura_ゲーム終了_img",3000,960,454,"cg/sys/rate/bt終了off.png");
	Fade("ura_*/*/*",0,0,null,false);
}
function _UraSelect(){
	$_isUraRate=true;
	#_IS_URA_RATE=true;
	while($_isUraRate){
		select{
			if($SYSTEM_r_button_down){
				Wait(16);
				CreateTexture("_rate_screen",5000,0,0,"SCREEN");
				Delete("裏ラテ欄");
				Delete("ura*");
				Request("_se_urarate",Play);
				Fade("_rate_screen",300,0,null,true);
				Delete("_rate_screen");
				$_isUraRate=false;
				#_IS_URA_RATE=false;
				break;
			}else if($SYSTEM_keydown_f){
				#SYSTEM_window_full=!#SYSTEM_window_full;
				$SYSTEM_keydown_f=false;
			}
			case "裏ラテ欄"{
				$GameName=AXNL_GetSelectedTimezone_StartScript(AXNL_GetSelectedTimezone_Time(),AXNL_GetSelectedTimezone_Chara())+".nss";
				CreateColor("@RateWindow/gameview",20000,0,0,1024,576,BLACK);
				SetAlias("@RateWindow/gameview","gameview");
				Fade("@gameview",0,0,null,false);
				Fade("@gameview",500,1000,null,true);
				$_isRate=false;
				$_isUraRate=false;
			}case "ura_タイトルに戻る"{
				if(!$PLACE_TITLE){
					call_chapter nss/sys_reset.nss
				}else{
					Fade("_blk",300,1000,null,true);
					$_isRate=false;
				}
				#_IS_URA_RATE=false;
			}case "ura_表事刻表"{
				CreateTexture("_rate_screen",5000,0,0,"SCREEN");
				Delete("裏ラテ欄");
				Delete("ura*");
				Request("_se_urarate",Play);
				Fade("_rate_screen",300,0,null,true);
				Delete("_rate_screen");
				$_isUraRate=false;
				#_IS_URA_RATE=false;
			}case "ura_環境設定"{
				call_chapter nss/sys_config.nss
			}case "ura_ゲーム終了"{
				KickShortcut("escape");
				#_IS_URA_RATE=false;
			}
		}
	}
}
function _Cylinder(){
	LockVideo(true);
	CreateChoice("cyl_運");
	CreateTexture("cyl_運/MouseUsual/hit",0,458,292,"cg/sys/rate/カゴメポイント/シリンダボタン_運off.png");
	CreateTexture("cyl_運/MouseClick/img",2460,458,292,"cg/sys/rate/カゴメポイント/シリンダボタン_運on.png");
	CreateTexture("cyl_運/MouseOver/img",2460,458,292,"cg/sys/rate/カゴメポイント/シリンダボタン_運over.png");
	CreateTexture("cyl_運/MouseOver/_rate_tex_over_txt",2460,255,417,"cg/sys/rate/カゴメポイント/text_運.png");
	CreateTexture("cyl_運_img",2450,458,292,"cg/sys/rate/カゴメポイント/シリンダボタン_運off.png");
	CreateSound("cyl_運/MouseOver/se",SE,"sound/se/se銃_構える.ogg");
	CreateChoice("cyl_空");
	CreateTexture("cyl_空/MouseUsual/hit",0,382,160,"cg/sys/rate/カゴメポイント/シリンダボタン_空off.png");
	CreateTexture("cyl_空/MouseClick/img",2460,382,160,"cg/sys/rate/カゴメポイント/シリンダボタン_空on.png");
	CreateTexture("cyl_空/MouseOver/img",2460,382,160,"cg/sys/rate/カゴメポイント/シリンダボタン_空over.png");
	CreateTexture("cyl_空/MouseOver/_rate_tex_over_txt",2460,255,417,"cg/sys/rate/カゴメポイント/text_成功.png");
	CreateTexture("cyl_空_img",2450,382,160,"cg/sys/rate/カゴメポイント/シリンダボタン_空off.png");
	CreateSound("cyl_空/MouseOver/se",SE,"sound/se/se銃_構える.ogg");
	CreateChoice("cyl_撃");
	CreateTexture("cyl_撃/MouseUsual/hit",0,458,204,"cg/sys/rate/カゴメポイント/シリンダボタン_撃off.png");
	CreateTexture("cyl_撃/MouseClick/img",2460,458,204,"cg/sys/rate/カゴメポイント/シリンダボタン_撃on.png");
	CreateTexture("cyl_撃/MouseOver/img",2460,458,204,"cg/sys/rate/カゴメポイント/シリンダボタン_撃over.png");
	CreateTexture("cyl_撃/MouseOver/_rate_tex_over_txt",2460,255,417,"cg/sys/rate/カゴメポイント/text_失敗.png");
	CreateTexture("cyl_撃_img",2450,458,204,"cg/sys/rate/カゴメポイント/シリンダボタン_撃off.png");
	CreateSound("cyl_撃/MouseOver/se",SE,"sound/se/se銃_構える.ogg");
	CreateChoice("cyl_読");
	CreateTexture("cyl_読/MouseUsual/hit",0,382,336,"cg/sys/rate/カゴメポイント/シリンダボタン_読off.png");
	CreateTexture("cyl_読/MouseClick/img",2460,382,336,"cg/sys/rate/カゴメポイント/シリンダボタン_読on.png");
	CreateTexture("cyl_読/MouseOver/img",2460,382,336,"cg/sys/rate/カゴメポイント/シリンダボタン_読over.png");
	CreateTexture("cyl_読/MouseOver/_rate_tex_over_txt",2460,255,417,"cg/sys/rate/カゴメポイント/text_読.png");
	CreateTexture("cyl_読_img",2450,382,336,"cg/sys/rate/カゴメポイント/シリンダボタン_読off.png");
	CreateSound("cyl_読/MouseOver/se",SE,"sound/se/se銃_構える.ogg");
	CreateChoice("cyl_戻");
	CreateTexture("cyl_戻/MouseUsual/hit",0,306,292,"cg/sys/rate/カゴメポイント/シリンダボタン_戻off.png");
	CreateTexture("cyl_戻/MouseClick/img",2460,306,292,"cg/sys/rate/カゴメポイント/シリンダボタン_戻on.png");
	CreateTexture("cyl_戻/MouseOver/img",2460,306,292,"cg/sys/rate/カゴメポイント/シリンダボタン_戻over.png");
	CreateTexture("cyl_戻/MouseOver/_rate_tex_over_txt",2460,255,417,"cg/sys/rate/カゴメポイント/text_戻る.png");
	CreateTexture("cyl_戻_img",2450,306,292,"cg/sys/rate/カゴメポイント/シリンダボタン_戻off.png");
	CreateSound("cyl_戻/MouseOver/se",SE,"sound/se/se銃_構える.ogg");
	Fade("cyl_*",0,0,null,false);
	Fade("cyl_*/*/*",0,0,null,false);
	LockVideo(false);
	_CylinderIn();
	Fade("cyl_*",300,1000,null,false);
	Fade("cyl_*/MouseUsual/*",300,1000,null,false);
	$_isCyl=true;
	$_isChange=0;
	while($_isCyl){
		select{
			if($SYSTEM_r_button_down){
				$_isCyl=false;break;
			}else if($SYSTEM_keydown_f){
				#SYSTEM_window_full=!#SYSTEM_window_full;
				$SYSTEM_keydown_f=false;
			}
			case "cyl_運"{
				$_isChange=1;
				$_isCyl=false;
			}case "cyl_空"{
				$_isChange=2;
				$_isCyl=false;
			}case "cyl_撃"{
				$_isChange=3;
				$_isCyl=false;
			}case "cyl_読"{
				if(AXNL_GetSelectedKagomeFlagName()=="flkagome1"){
					$GameName="2020カゴメ1.nss";
				}else if(AXNL_GetSelectedKagomeFlagName()=="flkagome2"){
					$GameName="2050カゴメ2.nss";
				}else if(AXNL_GetSelectedKagomeFlagName()=="flkagome3"){
					$GameName="2230カゴメ3.nss";
				}else if(AXNL_GetSelectedKagomeFlagName()=="flkagome4"){
					$GameName="2250カゴメ4.nss";
				}else if(AXNL_GetSelectedKagomeFlagName()=="flkagome5"){
					$GameName="2320カゴメ5.nss";
				}else if(AXNL_GetSelectedKagomeFlagName()=="flkagome1a"){
					$GameName="a2050カゴメ.nss";
				}else if(AXNL_GetSelectedKagomeFlagName()=="flkagome1b"){
					$GameName="ab2230カゴメ.nss";
				}else if(AXNL_GetSelectedKagomeFlagName()=="flkagome2a"){
					$GameName="b2220カゴメ.nss";
				}else if(AXNL_GetSelectedKagomeFlagName()=="flkagome2b"){
					$GameName="ba2300カゴメ.nss";
				}
				Request("_se_timezone_open",Play);
				$_isCyl=false;
				$_isRate=false;
				Fade("_blk",500,1000,null,true);
				return;
			}case "cyl_戻"{
				Request("_se_timezone_open",Play);
				$_isCyl=false;
			}
		}
	}
	if($_isChange){
		if($_isChange==1){
			// ランダム
			Request("_se_timezone_open",Play);
			$i=VariableValue(#,String("%s_Select",AXNL_GetSelectedKagomeFlagName()));
			if(!$i){
				Fade("cyl_*",200,0,null,false);
				Fade("cyl_*/*/*",200,0,null,true);
				_CylinderOut();
				return;
			}
			VariableValue(#,String("%s_Select",AXNL_GetSelectedKagomeFlagName()),false);
			VariableValue(#,String("%s_Active",AXNL_GetSelectedKagomeFlagName()),true);
			if(AXNL_GetSelectedKagomeFlagName()=="flkagome1"){
				#RouteName="トゥルー";
			}else if(AXNL_GetSelectedKagomeFlagName()=="flkagome2"){
				#RouteName="トゥルー";
			}else if(AXNL_GetSelectedKagomeFlagName()=="flkagome3"){
				#RouteName="トゥルー";
			}else if(AXNL_GetSelectedKagomeFlagName()=="flkagome4"){
				#RouteName="トゥルー";
			}else if(AXNL_GetSelectedKagomeFlagName()=="flkagome5"){
				#RouteName="トゥルー";
			}else if(AXNL_GetSelectedKagomeFlagName()=="flkagome1a"){
				#RouteName="a";
			}else if(AXNL_GetSelectedKagomeFlagName()=="flkagome1b"){
				#RouteName="ab";
			}else if(AXNL_GetSelectedKagomeFlagName()=="flkagome2a"){
				#RouteName="b";
			}else if(AXNL_GetSelectedKagomeFlagName()=="flkagome2b"){
				#RouteName="ba";
			}
		}else if($_isChange==2){
			// TRUE
			VariableValue(#,String("%s_Select",AXNL_GetSelectedKagomeFlagName()),true);
			$i=VariableValue(#,AXNL_GetSelectedKagomeFlagName())*!(VariableValue(#,String("%s_Active",AXNL_GetSelectedKagomeFlagName())));
			if($i){
				Fade("cyl_*",200,0,null,false);
				Fade("cyl_*/*/*",200,0,null,true);
				_CylinderOut();
				return;
			}
			VariableValue(#,String("%s_Active",AXNL_GetSelectedKagomeFlagName()),false);
			VariableValue(#,AXNL_GetSelectedKagomeFlagName(),true);
			if(AXNL_GetSelectedKagomeFlagName()=="flkagome1"){
				#RouteName="トゥルー";
				//#2020沙紅羅_フウリ_トゥルー_in=true;
				AXNL_ReachingTimeZone("2020沙紅羅_フウリ",true);
				//#2020千秋_恵那_トゥルー_in=true;
				AXNL_ReachingTimeZone("2020千秋_恵那",true);
				//#2020似鳥_トゥルー_in=true;
				AXNL_ReachingTimeZone("2020似鳥",true);
				//#2020ノーコ_トゥルー_in=true;
				AXNL_ReachingTimeZone("2020ノーコ",true);
			}else if(AXNL_GetSelectedKagomeFlagName()=="flkagome2"){
				#RouteName="b";
				//#2050沙紅羅_似鳥_フウリ_b_in=true;
				AXNL_ReachingTimeZone("2050沙紅羅_似鳥_フウリ",true);
				//#b2050千秋_b_in=true;
				AXNL_ReachingTimeZone("b2050千秋",true);
				//#2050恵那_b_in=true;
				AXNL_ReachingTimeZone("2050恵那",true);
				//#2050ノーコ_b_in=true;
				AXNL_ReachingTimeZone("2050ノーコ",true);
			}else if(AXNL_GetSelectedKagomeFlagName()=="flkagome3"){
				#RouteName="トゥルー";
				//#2230沙紅羅_似鳥_ノーコ_トゥルー_in=true;
				AXNL_ReachingTimeZone("2230沙紅羅_似鳥_ノーコ",true);
				//#2230恵那_トゥルー_in=true;
				AXNL_ReachingTimeZone("2230恵那",true);
				//#2230フウリ_トゥルー_in=true;
				AXNL_ReachingTimeZone("2230フウリ",true);
			}else if(AXNL_GetSelectedKagomeFlagName()=="flkagome4"){
				#RouteName="トゥルー";
				//#2250沙紅羅_恵那_似鳥_ノーコ_トゥルー_in=true;
				AXNL_ReachingTimeZone("2250沙紅羅_恵那_似鳥_ノーコ",true);
				//#2250フウリ_トゥルー_in=true;
				AXNL_ReachingTimeZone("2250フウリ",true);
			}else if(AXNL_GetSelectedKagomeFlagName()=="flkagome5"){
				#RouteName="トゥルー";
				//#2320沙紅羅_千秋_トゥルー_in=true;
				AXNL_ReachingTimeZone("2320沙紅羅_千秋",true);
				//#2320恵那_トゥルー_in=true;
				AXNL_ReachingTimeZone("2320恵那",true);
				//#2320似鳥_トゥルー_in=true;
				AXNL_ReachingTimeZone("2320似鳥",true);
				//#2320ノーコ_トゥルー_in=true;
				AXNL_ReachingTimeZone("2320ノーコ",true);
				//#2320フウリ_h_トゥルー_in=true;
				AXNL_ReachingTimeZone("2320フウリ_h",true);
			}else if(AXNL_GetSelectedKagomeFlagName()=="flkagome1a"){
				#RouteName="ab";
				//#aa2050沙紅羅_フウリ_ab_in=true;
				AXNL_ReachingTimeZone("aa2050沙紅羅_フウリ",true);
				//#aa2050千秋_恵那_ab_in=true;
				AXNL_ReachingTimeZone("aa2050千秋_恵那",true);
				//#ab2050似鳥_ノーコ_ab_in=true;
				AXNL_ReachingTimeZone("ab2050似鳥_ノーコ",true);
			}else if(AXNL_GetSelectedKagomeFlagName()=="flkagome1b"){
				//#RouteName="aba";
				//AXNL_ReachingTimeZone("aba2400恵那");
				#RouteName="aba";
				if(!#Clear_aba){
					#Ending_aba=true;
//					AXNL_ReachingTimeZone("abb2400沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ");
				}
			}else if(AXNL_GetSelectedKagomeFlagName()=="flkagome2a"){
				#RouteName="ba";
				//#ba2220沙紅羅_似鳥_ノーコ_ba_in=true;
				AXNL_ReachingTimeZone("ba2220沙紅羅_似鳥_ノーコ",true);
				//#ba2220千秋_恵那_ba_in=true;
				AXNL_ReachingTimeZone("ba2220千秋_恵那");
			}else if(AXNL_GetSelectedKagomeFlagName()=="flkagome2b",true){
				#RouteName="baa";
				//#baa2300沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ_baa_in=true;
				AXNL_ReachingTimeZone("baa2300沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ");
			}
			if(#RouteName=="トゥルー"){
				if(#flkagome1_Select&&!#flkagome1){
					#RouteName="a";
				}else if(#flkagome2_Select&&#flkagome2){
					#RouteName="b";
				}else if(#flkagome3_Select&&!#flkagome3){
					#RouteName="c";
				}else if(#flkagome4_Select&&!#flkagome4){
					#RouteName="d";
				}else if(#flkagome5_Select&&!#flkagome5){
					#RouteName="e";
				}
			}
			if(#RouteName=="a"||#RouteName=="ab"){
				if(#flkagome1a_Select&&!#flkagome1a){
					#RouteName="aa";
				}else if(#flkagome1a_Select){
					#RouteName="ab";
					if(#flkagome1b_Select){
						if(#flkagome1b){
							#RouteName="aba";
						}else if(#Ending_abb){
							#RouteName="abb";
						}
					}
				}
			}
			if(#RouteName=="b"||#RouteName=="ba"){
				if(#flkagome2a_Select&&#flkagome2a){
					#RouteName="ba";
					if(#flkagome2b_Select){
						if(#flkagome2b){
							#RouteName="baa";
						}else{
							#RouteName="bab";
						}
					}
				}else if(#flkagome2a_Select){
					#RouteName="bb";
				}
			}
		}else if($_isChange==3){
			// FALSE
			VariableValue(#,String("%s_Select",AXNL_GetSelectedKagomeFlagName()),true);
			$i=VariableValue(#,AXNL_GetSelectedKagomeFlagName());
			$j=VariableValue(#,String("%s_Active",AXNL_GetSelectedKagomeFlagName()));
			if(!$i&&!$j){
				Fade("cyl_*",200,0,null,false);
				Fade("cyl_*/*/*",200,0,null,true);
				_CylinderOut();
				return;
			}
			VariableValue(#,String("%s_Active",AXNL_GetSelectedKagomeFlagName()),false);
			VariableValue(#,AXNL_GetSelectedKagomeFlagName(),false);
			if(AXNL_GetSelectedKagomeFlagName()=="flkagome1"){
				#RouteName="a";
				//#2020沙紅羅_フウリ_a_in=true;
				AXNL_ReachingTimeZone("2020沙紅羅_フウリ",true);
				//#2020千秋_恵那_a_in=true;
				AXNL_ReachingTimeZone("2020千秋_恵那",true);
				//#a2020似鳥_ノーコ_a_in=true;
				AXNL_ReachingTimeZone("a2020似鳥_ノーコ",true);
			}else if(AXNL_GetSelectedKagomeFlagName()=="flkagome2"){
				#RouteName="トゥルー";
				//#2050沙紅羅_似鳥_フウリ_トゥルー_in=true;
				AXNL_ReachingTimeZone("2050沙紅羅_似鳥_フウリ",true);
				//#2050恵那_トゥルー_in=true;
				AXNL_ReachingTimeZone("2050恵那",true);
				//#2050ノーコ_トゥルー_in=true;
				AXNL_ReachingTimeZone("2050ノーコ",true);
			}else if(AXNL_GetSelectedKagomeFlagName()=="flkagome3"){
				#RouteName="c";
				//#c2230沙紅羅_似鳥_c_in=true;
				AXNL_ReachingTimeZone("c2230沙紅羅_似鳥",true);
				//#2230恵那_c_in=true;
				AXNL_ReachingTimeZone("2230恵那",true);
				//#2230フウリ_c_in=true;
				AXNL_ReachingTimeZone("2230フウリ",true);
			}else if(AXNL_GetSelectedKagomeFlagName()=="flkagome4"){
				#RouteName="d";
				//#2250沙紅羅_恵那_似鳥_ノーコ_d_in=true;
				AXNL_ReachingTimeZone("2250沙紅羅_恵那_似鳥_ノーコ",true);
			}else if(AXNL_GetSelectedKagomeFlagName()=="flkagome5"){
				#RouteName="e";
				//#e2320沙紅羅_e_in=true;
				AXNL_ReachingTimeZone("e2320沙紅羅",true);
				//#2320恵那_e_in=true;
				AXNL_ReachingTimeZone("2320恵那",true);
				//#2320似鳥_e_in=true;
				AXNL_ReachingTimeZone("2320似鳥",true);
				//#2320ノーコ_e_in=true;
				AXNL_ReachingTimeZone("2320ノーコ",true);
				//#2320フウリ_h_e_in=true;
				AXNL_ReachingTimeZone("2320フウリ_h",true);
			}else if(AXNL_GetSelectedKagomeFlagName()=="flkagome1a"){
				#RouteName="aa";
				//#aa2050沙紅羅_フウリ_aa_in=true;
				AXNL_ReachingTimeZone("aa2050沙紅羅_フウリ",true);
				//#aa2050千秋_恵那_aa_in=true;
				AXNL_ReachingTimeZone("aa2050千秋_恵那",true);
			}else if(AXNL_GetSelectedKagomeFlagName()=="flkagome1b"){
				#RouteName="abb";
				if(!#Clear_abb){
					#Ending_abb=true;
//					AXNL_ReachingTimeZone("abb2400沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ");
				}
			}else if(AXNL_GetSelectedKagomeFlagName()=="flkagome2a"){
				#RouteName="bb";
				//#bb2220沙紅羅_似鳥_bb_in=true;
				AXNL_ReachingTimeZone("bb2220沙紅羅_似鳥",true);
				//#ba2220千秋_恵那_bb_in=true;
				AXNL_ReachingTimeZone("ba2220千秋_恵那",true);
			}else if(AXNL_GetSelectedKagomeFlagName()=="flkagome2b"){
				#RouteName="bab";
				//#bab2300沙紅羅_千秋_恵那_似鳥_ノーコ_bab_in=true;
				AXNL_ReachingTimeZone("bab2300沙紅羅_千秋_恵那_似鳥_ノーコ");
			}
			if(#RouteName=="トゥルー"){
				if(#flkagome1_Select&&!#flkagome1){
					#RouteName="a";
				}else if(#flkagome2_Select&&#flkagome2){
					#RouteName="b";
				}else if(#flkagome3_Select&&!#flkagome3){
					#RouteName="c";
				}else if(#flkagome4_Select&&!#flkagome4){
					#RouteName="d";
				}else if(#flkagome5_Select&&!#flkagome5){
					#RouteName="e";
				}
			}
//			Message("a",String("%s_%d_%d_%d_%d",#RouteName,#flkagome1a_Select,#flkagome1a,#Ending_aba,#Ending_abb));
			if(#RouteName=="a"||#RouteName=="ab"){
				if(#flkagome1a_Select&&!#flkagome1a){
					#RouteName="aa";
				}else if(#flkagome1a_Select){
					#RouteName="ab";
					if(#flkagome1b_Select){
						if(#flkagome1b){
							#RouteName="aba";
						}else if(#Ending_abb){
							#RouteName="abb";
						}
					}
				}
			}
			if(#RouteName=="b"||#RouteName=="ba"){
				if(#flkagome2a_Select&&#flkagome2a){
					#RouteName="ba";
					if(#flkagome2b_Select){
						if(#flkagome2b){
							#RouteName="baa";
						}else{
							#RouteName="bab";
						}
					}
				}else if(#flkagome2a_Select){
					#RouteName="bb";
				}
			}
//			Message(#RouteName,#RouteName);
		}
		if($_isChange==1){
			CreateTexture("__screen",3000,0,0,"SCREEN");
			Fade("cyl_*",0,0,null,false);
			Fade("cyl_*/*/*",0,0,null,true);
			CreateColor("__color",3000,0,0,1024,576,BLACK);
			Fade("__color",0,0,null,false);
			Fade("__color",500,1000,null,true);
			Delete("__screen");
		}else if($_isChange==2){
//			Fade("cyl_*",0,0,null,false);
//			Fade("cyl_*/*/*",0,0,null,true);
//			Fade("カゴメシリンダ*",0,0,null,false);
			CreateTexture("__screen",3000,0,0,"SCREEN");
			Fade("cyl_*",0,0,null,false);
			Fade("cyl_*/*/*",0,0,null,true);
			CreateSound("__se",SE,"sound/se/se擬音_カゴメアソビ成功.ogg");
			SetVolume("__se", 0, 500, NULL);
			Request("__se",Play);
			CreateMovie("__bird_mov",3000,48,0,false,true,"dx/bird.ngs");
			CreateColor("__color",3000,0,0,1024,576,WHITE);
			Fade("__color",0,0,null,false);
			Wait(2000);
			Fade("__color",500,1000,null,true);
			Delete("__screen");
		}else if($_isChange==3){
			Fade("cyl_*",0,0,null,false);
			Fade("cyl_*/*/*",0,0,null,true);
			CreateSound("__se",SE,"sound/se/se擬音_カゴメアソビ失敗.ogg");
			SetVolume("__se", 0, 500, NULL);
			Request("__se",Play);
			Wait(500);
			Fade("カゴメシリンダ*",0,0,null,false);
			CreateTexture("__screen",3000,0,0,"SCREEN");
			CreateTexture("__fail",3000,50,0,"cg/sys/rate/result/カゴメアソビ失敗.png");
			CreateColor("__ef",3000,0,0,1024,576,WHITE);
			Fade("__ef",150,0,null,true);
			CreateColor("__color",3000,0,0,1024,576,BLACK);
			Fade("__color",0,0,null,false);
			Fade("__color",1000,1000,null,true);
			Delete("__screen");
		}
		AXNL_SetUpdateKagomeName(AXNL_GetSelectedKagomeFlagName());
		CreateSystem("ラテ欄",1000);
		Delete("_routename");
		if(#RouteName=="トゥルー"||#RouteName=="aa"||#RouteName=="aba"||#RouteName=="abb"||#RouteName=="baa"||#RouteName=="bab"||#RouteName=="bb"||#RouteName=="c"||#RouteName=="d"||#RouteName=="e"){
			if(#RouteName!="トゥルー"||(#RouteName=="トゥルー"&&#flkagome1_Select&&#flkagome2_Select&&#flkagome3_Select&&#flkagome4_Select&&#flkagome5_Select)){
				if(VariableValue(#,String("Clear_%s",#RouteName))){
					$name=String("cg/sys/rate/結末見出し%s.png",#RouteName);
					CreateTexture("_routename",2100,803,1,$name);
				}
			}
		}
		Delete("btn_裏事刻表*");
		if(#RouteName=="トゥルー"||#RouteName=="aa"||#RouteName=="aba"||#RouteName=="abb"||#RouteName=="baa"||#RouteName=="bab"||#RouteName=="bb"||#RouteName=="c"||#RouteName=="d"||#RouteName=="e"){
			if(#RouteName!="トゥルー"||(#RouteName=="トゥルー"&&#flkagome1_Select&&#flkagome2_Select&&#flkagome3_Select&&#flkagome4_Select&&#flkagome5_Select)){
				if(VariableValue(#,String("Clear_%s",#RouteName))){
					CreateChoice("btn_裏事刻表");
					CreateTexture("btn_裏事刻表/MouseUsual/hit",0,881,454,"cg/sys/rate/bt裏off.png");
					CreateTexture("btn_裏事刻表/MouseClick/img",2010,881,454,"cg/sys/rate/bt裏on.png");
					CreateTexture("btn_裏事刻表/MouseOver/img",2010,881,454,"cg/sys/rate/bt裏over.png");
					CreateTexture("btn_裏事刻表_img",2000,881,454,"cg/sys/rate/bt裏off.png");
					CreateSound("btn_裏事刻表/MouseOver/se",SE,"sound/se/se銃_構える.ogg");
					SetVolume("btn_裏事刻表/MouseOver/se", 0, 500, NULL);
					Fade("btn_裏事刻表/*/*",0,0,null,false);
				}
			}
		}
		if(AXNL_IsRateMapMode()){
			Move("ラテ欄/mp_閉じる/MouseUsual/*",0,59,297,null,false);
			Fade("ラテ欄/mp_閉じる/MouseUsual/*",0,1000,null,false);
			Fade("ラテ欄/map_地図ベース/MouseUsual/*",0,1000,null,false);
			Move("ラテ欄/mp_地図タブ/*/*",0,@0,576,Dxl2,true);
		}else{
			Move("ラテ欄/mp_閉じる/MouseUsual/*",0,2000,297,null,false);
		}
		if($_isChange==1){
			Wait(200);
			Fade("カゴメシリンダ*",0,0,null,false);
			Fade("__color",500,0,null,true);
			Delete("__*");
		}else if($_isChange==2){
			Wait(200);
			Fade("カゴメシリンダ*",0,0,null,false);
			Delete("__bird_mov");
			Fade("__color",500,0,null,true);
			Delete("__*");
		}else if($_isChange==3){
			Wait(200);
			Delete("__fail");
			Fade("__color",1000,0,null,true);
			Delete("__*");
		}else{
			Fade("__screen",300,0,null,true);
			Delete("__screen");
			Fade("cyl_*",200,0,null,false);
			Fade("cyl_*/*/*",200,0,null,true);
			_CylinderDelete();
		}
		return;
	}else{
		Fade("cyl_*",200,0,null,false);
		Fade("cyl_*/*/*",200,0,null,true);
	}
	_CylinderOut();
}
//
function _CylinderIn(){
	CreateSound("_se_cyl",SE,"sound/se/se銃_シリンダー回転.ogg");
	SetVolume("_se_cyl", 0, 500, NULL);
	Request("_se_cyl",Play);
	Request("_se_cyl",Disused);
	Move("カゴメシリンダ*",0,262,127,null,false);
	Fade("カゴメシリンダ*",0,0,null,false);
	Fade("カゴメシリンダ00",0,1000,null,true);
	Wait(10);
	Fade("カゴメシリンダ00",0,0,null,true);
	Fade("カゴメシリンダ01",0,1000,null,true);
	Wait(10);
	Fade("カゴメシリンダ01",0,0,null,true);
	Fade("カゴメシリンダ02",0,1000,null,true);
	Wait(10);
	Fade("カゴメシリンダ02",0,0,null,true);
	Fade("カゴメシリンダ03",0,1000,null,true);
	Wait(10);
	Fade("カゴメシリンダ03",0,0,null,true);
	Fade("カゴメシリンダ04",0,1000,null,true);
	Wait(10);
	Fade("カゴメシリンダ04",0,0,null,true);
	Fade("カゴメシリンダ05",0,1000,null,true);
	Wait(10);
	Fade("カゴメシリンダ05",0,0,null,true);
	Fade("カゴメシリンダ06",0,1000,null,true);
	Wait(10);
	Fade("カゴメシリンダ06",0,0,null,true);
	Fade("カゴメシリンダ07",0,1000,null,true);
	Wait(10);
	Fade("カゴメシリンダ07",0,0,null,true);
	Fade("カゴメシリンダ08",0,1000,null,true);
	Wait(10);
	Fade("カゴメシリンダ08",0,0,null,true);
	Fade("カゴメシリンダ09",0,1000,null,true);
	Wait(10);
	Fade("カゴメシリンダ09",0,0,null,true);
	Fade("カゴメシリンダ10",0,1000,null,true);
	Wait(10);
	Fade("カゴメシリンダ10",0,0,null,true);
	Fade("カゴメシリンダ11",0,1000,null,true);
	Wait(10);
	Fade("カゴメシリンダ11",0,0,null,true);
	Fade("カゴメシリンダ12",0,1000,null,true);
	Wait(10);
	Fade("カゴメシリンダ12",0,0,null,true);
	Fade("カゴメシリンダ13",0,1000,null,true);
	Wait(10);
	Fade("カゴメシリンダ13",0,0,null,true);
	Fade("カゴメシリンダ14",0,1000,null,true);
	Fade("kg_*/MouseClick/*",0,0,null,false);
}
//
function _CylinderOut(){
	CreateSound("_se_cyl",SE,"sound/se/se銃_シリンダー回転.ogg");
	SetVolume("_se_cyl", 0, 500, NULL);
	Request("_se_cyl",Play);
	Request("_se_cyl",Disused);
	Fade("カゴメシリンダ13",0,1000,null,false);
	Fade("カゴメシリンダ14",0,0,null,true);
	Wait(10);
	Fade("カゴメシリンダ12",0,1000,null,false);
	Fade("カゴメシリンダ13",0,0,null,true);
	Wait(10);
	Fade("カゴメシリンダ11",0,1000,null,false);
	Fade("カゴメシリンダ12",0,0,null,true);
	Wait(10);
	Fade("カゴメシリンダ10",0,1000,null,false);
	Fade("カゴメシリンダ11",0,0,null,true);
	Wait(10);
	Fade("カゴメシリンダ09",0,1000,null,false);
	Fade("カゴメシリンダ10",0,0,null,true);
	Wait(10);
	Fade("カゴメシリンダ08",0,1000,null,false);
	Fade("カゴメシリンダ09",0,0,null,true);
	Wait(10);
	Fade("カゴメシリンダ07",0,1000,null,false);
	Fade("カゴメシリンダ08",0,0,null,true);
	Wait(10);
	Fade("カゴメシリンダ06",0,1000,null,false);
	Fade("カゴメシリンダ07",0,0,null,true);
	Wait(10);
	Fade("カゴメシリンダ05",0,1000,null,false);
	Fade("カゴメシリンダ06",0,0,null,true);
	Wait(10);
	Fade("カゴメシリンダ04",0,1000,null,false);
	Fade("カゴメシリンダ05",0,0,null,true);
	Wait(10);
	Fade("カゴメシリンダ03",0,1000,null,false);
	Fade("カゴメシリンダ04",0,0,null,true);
	Wait(10);
	Fade("カゴメシリンダ02",0,1000,null,false);
	Fade("カゴメシリンダ03",0,0,null,true);
	Wait(10);
	Fade("カゴメシリンダ01",0,1000,null,false);
	Fade("カゴメシリンダ02",0,0,null,true);
	Wait(10);
	Fade("カゴメシリンダ00",0,1000,null,false);
	Fade("カゴメシリンダ01",0,0,null,true);
	Wait(10);
	Fade("カゴメシリンダ00",0,0,null,true);
	Wait(10);
}
//
function _CylinderDelete(){
	CreateSound("_se_cyl",SE,"sound/se/se銃_シリンダー回転.ogg");
	SetVolume("_se_cyl", 0, 500, NULL);
	Request("_se_cyl",Play);
	Request("_se_cyl",Disused);
	Fade("カゴメシリンダ*",50,0,null,false);
	Fade("カゴメシリンダ13",0,1000,null,false);
	Move("カゴメシリンダ14",0,1000,1000,null,true);
	Wait(10);
	Fade("カゴメシリンダ12",0,1000,null,false);
	Move("カゴメシリンダ13",0,1000,1000,null,true);
	Wait(10);
	Fade("カゴメシリンダ11",0,1000,null,false);
	Move("カゴメシリンダ12",0,1000,1000,null,true);
	Wait(10);
	Fade("カゴメシリンダ10",0,1000,null,false);
	Move("カゴメシリンダ11",0,1000,1000,null,true);
	Wait(10);
	Fade("カゴメシリンダ09",0,1000,null,false);
	Move("カゴメシリンダ10",0,1000,1000,null,true);
	Wait(10);
	Fade("カゴメシリンダ08",0,1000,null,false);
	Move("カゴメシリンダ09",0,1000,1000,null,true);
	Wait(10);
	Fade("カゴメシリンダ07",0,1000,null,false);
	Move("カゴメシリンダ08",0,1000,1000,null,true);
	Wait(10);
	Fade("カゴメシリンダ06",0,1000,null,false);
	Move("カゴメシリンダ07",0,1000,1000,null,true);
	Wait(10);
	Fade("カゴメシリンダ05",0,1000,null,false);
	Move("カゴメシリンダ06",0,1000,1000,null,true);
	Wait(10);
	Fade("カゴメシリンダ04",0,1000,null,false);
	Move("カゴメシリンダ05",0,1000,1000,null,true);
	Wait(10);
	Fade("カゴメシリンダ03",0,1000,null,false);
	Move("カゴメシリンダ04",0,1000,1000,null,true);
	Wait(10);
	Fade("カゴメシリンダ02",0,1000,null,false);
	Move("カゴメシリンダ03",0,1000,1000,null,true);
	Wait(10);
	Fade("カゴメシリンダ01",0,1000,null,false);
	Move("カゴメシリンダ02",0,1000,1000,null,true);
	Wait(10);
	Fade("カゴメシリンダ00",0,1000,null,false);
	Move("カゴメシリンダ01",0,1000,1000,null,true);
	Wait(10);
	Move("カゴメシリンダ00",0,1000,1000,null,true);
	Wait(10);
}
