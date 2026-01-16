
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 0000キャラクター選択.nss_MAIN
{
//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		//GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	//トゥルールート開始
	#RouteName="トゥルー";
	//もうあなたはえらんだんだからにどはえらべないよ
	#CHARA_FLAG=true;

	#1800ノーコ_トゥルー_in=true;
	#1800フウリ_トゥルー_in=true;
	#1800恵那_トゥルー_in=true;
	#1800沙紅羅_トゥルー_in=true;
	#1800似鳥_トゥルー_in=true;
	#1800千秋_トゥルー_in=true;

	//キャラクターボックス定義
	#BaseChara=#FirstChara;
	ClockCharaSet();

	$SYSTEM_menu_lock=false;
	QuickStart();
	Save(0);

}

scene 0000キャラクター選択.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	if(#CHARA_FLAG){
	//★もう選んだ
		Request("@タイトルフルスクプロセス", Stop);
		WaitAction("@タイトルフルスクプロセス", null);
		Delete("@タイトルフルスクプロセス");

		if(#FirstChara=="沙紅羅"){
			//◆沙紅羅
			$GameName = "y1730沙紅羅.nss";
			$CharaName = "沙紅羅";
			#CharaName = "沙紅羅";
		}else if(#FirstChara=="恵那"){
			//◆富士見恵那
			$GameName = "y1750恵那.nss";
			$CharaName = "恵那";
			#CharaName = "恵那";
		}else if(#FirstChara=="千秋"){
			//◆小碓千秋
			$GameName = "y1751千秋_恵那.nss";
			$CharaName = "千秋";
			#CharaName = "千秋";
		}else if(#FirstChara=="ノーコ"){
			//◆ノーコ
			$GameName = "y1750ノーコ.nss";
			$CharaName = "ノーコ";
			#CharaName = "ノーコ";
		}else if(#FirstChara=="似鳥"){
			//◆似鳥戴斗
			$GameName = "y1730似鳥.nss";
			$CharaName = "似鳥";
			#CharaName = "似鳥";
		}else if(#FirstChara=="似鳥"){
			//◆綿抜フウリ
			$GameName = "y1730フウリ.nss";
			$CharaName = "フウリ";
			#CharaName = "フウリ";
		}else if(#FirstChara=="ミヅハ"){
			//◆ミヅハ
			$GameName = "y1750ミヅハ.nss";
			$CharaName = "フウリ";
			#CharaName = "フウリ";
		}
	}else{
	//★まだ選んでいない

	//▽演出
	CreateSE("SE01","movie_plose");
	CreateMovie("タイトルムービー１", 1012001, 0, 0, false, false, "dx/plo.ngs");
	MusicStart("SE01",0,700,0,1000,null,false);
	WaitAction("タイトルムービー１", null);

	Fade("@タイトルニトロプラス", 0, 0, null, true);
	Request("@タイトルニトロプラス", UnLock);
	Delete("@タイトルニトロプラス");

	Request("@タイトルフルスクプロセス", Stop);
	WaitAction("@タイトルフルスクプロセス", null);
	Delete("@タイトルフルスクプロセス");

	//■選択肢１■■■■■■■■■■■■■■■■■■■■■■■■■■■■
		CreateName("MSGWND");
	
		//▲画像ロード
		LoadImage("MSGWND/IMG_yes_hit","cg/sys/chara/運に委ねるhit.png");
	
		LoadImage("MSGWND/IMG_yes_on","cg/sys/chara/運に委ねるon.png");
		LoadImage("MSGWND/IMG_yes_over","cg/sys/chara/運に委ねるover.png");
		LoadImage("MSGWND/IMG_yes_off","cg/sys/chara/運に委ねるoff.png");
	
		LoadImage("MSGWND/IMG_no_on","cg/sys/chara/己の意思でon.png");
		LoadImage("MSGWND/IMG_no_over","cg/sys/chara/己の意思でover.png");
		LoadImage("MSGWND/IMG_no_off","cg/sys/chara/己の意思でoff.png");
	
		//■定義「選択肢」
		//box
		CreateTexture("MSGWND/MSG_bak", 100, 0, 0, "cg/sys/chara/背景.png");
		CreateTexture("MSGWND/MSG_gra", 100, 0, 0, "cg/sys/chara/グラデ.png");
		CreateTexture("MSGWND/MSG_msg", 100, 432, 126, "cg/sys/chara/text_最後の選択.png");
		//YES
		//CreateTexture("MSGWND/MSG_img_yes",1012000,371,191,"MSGWND/IMG_yes_off");
		CreateChoice("MSGWND/MSG_yes");
		CreateTexture("MSGWND/MSG_yes/MouseUsual/img",1012000,371,191,"MSGWND/IMG_yes_hit");
		CreateTexture("MSGWND/MSG_yes/MouseUsual/img2",1012000,371,191,"MSGWND/IMG_yes_off");
		CreateTexture("MSGWND/MSG_yes/MouseOver/img",1011000,371,191,"MSGWND/IMG_yes_over");
		CreateTexture("MSGWND/MSG_yes/MouseClick/img",1011000,371,191,"MSGWND/IMG_yes_on");
		CreateSound("MSGWND/MSG_yes/MouseOver/se", SE, "sound/se/se銃_薬莢落とす");
		Request("MSGWND/MSG_yes/MouseUsual/img", Erase);
		//NO
		//CreateTexture("MSGWND/MSG_img_no",1012000,614,191,"MSGWND/IMG_no_off");
		CreateChoice("MSGWND/MSG_no");
		CreateTexture("MSGWND/MSG_no/MouseUsual/img",1012000,614,191,"MSGWND/IMG_yes_hit");
		CreateTexture("MSGWND/MSG_no/MouseUsual/img2",1012000,614,191,"MSGWND/IMG_no_off");
		CreateTexture("MSGWND/MSG_no/MouseOver/img",1011000,614,191,"MSGWND/IMG_no_over");
		CreateTexture("MSGWND/MSG_no/MouseClick/img",1011000,614,191,"MSGWND/IMG_no_on");
		CreateSound("MSGWND/MSG_no/MouseOver/se", SE, "sound/se/se銃_薬莢落とす");
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
		Fade("MSGWND/MSG_*/*/*",0,0,null,false);

		SoundPlay("@xbgm14",0,1000,true);

		//★描画開始
		Fade("MSGWND/MSG_gra",0,1000,null,false);
		Fade("MSGWND/MSG_bak",0,1000,null,true);
		Fade("MSGWND/MSG_img_*",0,1000,null,false);
		Fade("MSGWND/MSG_msg",0,1000,null,false);
		Fade("MSGWND/MSG_*/MouseUsual/*",0,1000,null,true);

		WaitAction("MSGWND/MSG_*",null);

		Fade("タイトルムービー１", 500, 0, null, true);
		Delete("タイトルムービー１");

		//★選択肢開始
		select{
			case MSGWND/MSG_no{$CharaSelectRandom=false;}
			case MSGWND/MSG_yes{$CharaSelectRandom=true;}
	
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

		CreateSound("サウンド１", SE, "sound/se/se銃_シリンダー装填");
		SetVolume("サウンド１", 0, 500, NULL);
		Request("サウンド１", Play);
		Request("サウンド１", Disused);

		Fade("MSGWND/MSG_*/*/*",500,0,null,false);
		Fade("MSGWND/MSG_gra", 500, 0, null, false);
		Fade("MSGWND/MSG_msg", 500, 0, null, true);

		if(!$CharaSelectRandom){
			//■選択肢２■■■■■■■■■■■■■■■■■■■■■■■■■■■■
			CreateTexture("Chara説明", 100, 287, 32, "cg/sys/chara/説明書き.png");
			CreateTexture("Chara影", 100, 86, 111, "cg/sys/chara/影.png");
		
			CreateWindow("CharaWindow", 300, 0, 0, 1024, 576, false);
			SetAlias("CharaWindow", "CharaWindow");
		
			Array($CharaNutName,"ミヅハ","千秋","恵那","沙紅羅","似鳥","フウリ","ノーコ");
			AssocArray($CharaNutName,"ミヅハ","千秋","恵那","沙紅羅","似鳥","フウリ","ノーコ");
		
			Array($CharaNutName[沙紅羅],88,96,true,ボタン_沙紅羅,沙紅羅,101);
			Array($CharaNutName[千秋],284,96,true,ボタン_千秋,千秋,100);
			Array($CharaNutName[恵那],396,96,true,ボタン_恵那,恵那,100);
			Array($CharaNutName[ノーコ],494,96,true,ボタン_ノーコ,ノーコ,101);
			Array($CharaNutName[似鳥],702,96,true,ボタン_似鳥,似鳥,100);
			Array($CharaNutName[フウリ],857,96,true,ボタン_フウリ,フウリ,100);
			Array($CharaNutName[ミヅハ],464,254,false,ボタン_ミヅハ,ミヅハ,102);
		
			//☆大晦日仕様
			DateTime($Year,$Month,$Day,$Hour,$Minute,$Second);
			if($Month==12&&$Day==31){
				$CharaNutName[ミヅハ][2]=true;
			}

//			$CharaOverSE="sound/se/se銃_置く";
			$CharaOverSE="sound/se/se銃_シリンダー回転";

			$WhileCount=0;
			while(Count($CharaNutName)>$WhileCount){
				if($CharaNutName[$WhileCount][2]){
					$CharaX=$CharaNutName[$WhileCount][0];
					$CharaY=$CharaNutName[$WhileCount][1];
			
					$CharaNutBase="Chara"+$CharaNutName[$WhileCount];
					CreateChoice($CharaNutBase);
					SetAlias($CharaNutBase, $CharaNutBase);

					if(($CharaNutName[ミヅハ][2]&&$CharaNutName[$WhileCount]=="恵那")||($CharaNutName[ミヅハ][2]&&$CharaNutName[$WhileCount]=="ノーコ")){
						$CharaNutImage0="cg/sys/chara/"+$CharaNutName[$WhileCount][3]+"hit.png";
						$CharaNutImage1=$CharaNutBase+"_image1";
					}else{
						if($CharaNutName[$WhileCount]=="似鳥"||$CharaNutName[$WhileCount]=="千秋"){
							$CharaNutImage0="cg/sys/chara/"+$CharaNutName[$WhileCount][3]+"hit.png";
							$CharaNutImage1=$CharaNutBase+"_image1";
						}else{
							$CharaNutImage0="cg/sys/chara/"+$CharaNutName[$WhileCount][3]+"off.png";
							$CharaNutImage1=$CharaNutBase+"_image1";
						}
					}
					$CharaNutFail="cg/sys/chara/"+$CharaNutName[$WhileCount][3]+"off.png";
					LoadImage($CharaNutImage1, $CharaNutFail);
					$CharaNutImage2=$CharaNutBase+"_image2";
					$CharaNutFail="cg/sys/chara/"+$CharaNutName[$WhileCount][3]+"over.png";
					LoadImage($CharaNutImage2, $CharaNutFail);
					$CharaNutImage3=$CharaNutBase+"_image3";
					$CharaNutFail="cg/sys/chara/"+$CharaNutName[$WhileCount][3]+"on.png";
					LoadImage($CharaNutImage3, $CharaNutFail);
				
					//image
					$CharaNutTemp1="CharaWindow/"+$CharaNutBase;
					CreateTexture($CharaNutTemp1, $CharaNutName[$WhileCount][5], $CharaX, $CharaY, $CharaNutImage1);
					SetAlias($CharaNutTemp1, $CharaNutTemp1);
				
					//hit
					$CharaNutHit=$CharaNutBase+"/MouseUsual/hit";
					CreateTexture($CharaNutHit, $CharaNutName[$WhileCount][5], $CharaX, $CharaY, $CharaNutImage0);
					SetAlias($CharaNutHit, $CharaNutHit);
					Request($CharaNutHit, "Erase");
					//usual
					//$CharaNutUsual=$CharaNutBase+"/MouseUsual/nut";
					//CreateTexture($CharaNutUsual, $CharaNutName[$WhileCount][5], $CharaX, $CharaY, $CharaNutImage1);
					//SetAlias($CharaNutUsual, $CharaNutUsual);
					//over
					$CharaNutOver=$CharaNutBase+"/MouseOver/nut";
					CreateTexture($CharaNutOver, $CharaNutName[$WhileCount][5], $CharaX, $CharaY, $CharaNutImage2);
					SetAlias($CharaNutOver, $CharaNutOver);
					//on
					$CharaNutClick=$CharaNutBase+"/MouseClick/nut";
					CreateTexture($CharaNutClick, $CharaNutName[$WhileCount][5], $CharaX, $CharaY, $CharaNutImage3);
					SetAlias($CharaNutClick, $CharaNutClick);
				
					$CharaSoundOver=$CharaNutBase+"/MouseOver/se";
					CreateSound($CharaSoundOver, SE, $CharaOverSE);
					SetVolume($CharaSoundOver, 0, 500, NULL);

				}
				$WhileCount++;
			}
		
			Fade("Chara*",0,0,null,false);
			Fade("Chara*/*",0,0,null,false);
			Fade("Chara*/*/*",0,0,null,true);
		
			//●セットネクストフォーカス
			Array($CharaForcus,"何か","ミヅハ","沙紅羅","千秋","恵那","ノーコ","似鳥","フウリ");
			AssocArray($CharaForcus,"何か","ミヅハ","沙紅羅","千秋","恵那","ノーコ","似鳥","フウリ");
		
			if($CharaNutName[ミヅハ][2]){
				Array($CharaForcus[沙紅羅],"フウリ","千秋","フウリ","千秋");
				Array($CharaForcus[千秋],"沙紅羅","恵那","沙紅羅","恵那");
				Array($CharaForcus[恵那],"千秋","ミヅハ","千秋","ミヅハ");
				Array($CharaForcus[ミヅハ],"恵那","ノーコ","恵那","ノーコ");
				Array($CharaForcus[ノーコ],"ミヅハ","似鳥","ミヅハ","似鳥");
				Array($CharaForcus[似鳥],"ノーコ","フウリ","ノーコ","フウリ");
				Array($CharaForcus[フウリ],"似鳥","沙紅羅","似鳥","沙紅羅");
			}else{
				Array($CharaForcus[沙紅羅],"フウリ","千秋","フウリ","千秋");
				Array($CharaForcus[千秋],"沙紅羅","恵那","沙紅羅","恵那");
				Array($CharaForcus[恵那],"千秋","ノーコ","千秋","ノーコ");
				Array($CharaForcus[ノーコ],"恵那","似鳥","恵那","似鳥");
				Array($CharaForcus[似鳥],"ノーコ","フウリ","ノーコ","フウリ");
				Array($CharaForcus[フウリ],"似鳥","沙紅羅","似鳥","沙紅羅");
				Array($CharaForcus[ミヅハ],"ミヅハ","ミヅハ","ミヅハ","ミヅハ");
			}
	
			$CharaWhile=1;
			while(Count($CharaForcus)>$CharaWhile){
				$basenut="Chara"+$CharaForcus[$CharaWhile]+"/MouseUsual/hit";
				$up="Chara"+$CharaForcus[$CharaWhile][0]+"/MouseUsual/hit";
				$down="Chara"+$CharaForcus[$CharaWhile][1]+"/MouseUsual/hit";
				$left="Chara"+$CharaForcus[$CharaWhile][2]+"/MouseUsual/hit";
				$right="Chara"+$CharaForcus[$CharaWhile][3]+"/MouseUsual/hit";
	
				if($CharaForcus[$CharaWhile]!="ミヅハ"||$CharaNutName[ミヅハ][2]){
					SetNextFocus($basenut, $up, UP);
					SetNextFocus($basenut, $down, DOWN);
					SetNextFocus($basenut, $left, LEFT);
					SetNextFocus($basenut, $right, RIGHT);
				}
				$CharaWhile++;
			}
	
			$CharacterWhile=true;
			while($CharacterWhile){
	
				//描画
				Fade("MSGWNG/MSG_*/*/*",300,0,null,false);
				Fade("MSGWNG/MSG_*", 300, 0, null, false);

				if(!$CharaSelectFirst){
					Move("CharaWindow/Chara*", 0, @-50, @0, Axl1, true);

					Move("CharaWindow/Chara沙紅羅", 500, @50, @0, Dxl1, false);
					Fade("CharaWindow/Chara沙紅羅",500,1000,null,true);
					Move("CharaWindow/Chara千秋", 500, @50, @0, Dxl1, false);
					Fade("CharaWindow/Chara千秋",500,1000,null,true);
					Move("CharaWindow/Chara恵那", 500, @50, @0, Dxl1, false);
					Fade("CharaWindow/Chara恵那",500,1000,null,true);
					Move("CharaWindow/Charaノーコ", 500, @50, @0, Dxl1, false);
					Fade("CharaWindow/Charaノーコ",500,1000,null,true);
					Move("CharaWindow/Chara似鳥", 500, @50, @0, Dxl1, false);
					Fade("CharaWindow/Chara似鳥",500,1000,null,true);
					Move("CharaWindow/Charaフウリ", 500, @50, @0, Dxl1, false);
					Fade("CharaWindow/Charaフウリ",500,1000,null,true);
					Move("CharaWindow/Charaミヅハ", 0, @50, @0, Dxl1, true);
					Fade("CharaWindow/Charaミヅハ",500,1000,null,true);
					Wait(300);
					Fade("Chara説明",700,1000,null,false);
					Fade("Chara影",700,1000,null,true);
					$CharaSelectFirst=true;
				}else{
					Fade("CharaWindow/*",500,1000,null,false);
					Fade("Chara説明",500,1000,null,false);
					Fade("Chara影",500,1000,null,true);
				}


				select{
					case Chara千秋{
						//◆小碓千秋
						$CharaName = "千秋";
					}case Chara恵那{
						//◆富士見恵那
						$CharaName = "恵那";
					}case Charaノーコ{
						//◆ノーコ
						$CharaName = "ノーコ";
					}case Chara似鳥{
						//◆似鳥戴斗
						$CharaName = "似鳥";
					}case Charaミヅハ{
						//◆ミヅハ
						$CharaName = "ミヅハ";
					}case Charaフウリ{
						//◆綿抜フウリ
						$CharaName = "フウリ";
					}case Chara沙紅羅{
						//◆沙紅羅
						$CharaName = "沙紅羅";
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
	
				//Fade("Chara*/*/*", 300, 0, null, false);
				//Fade("Chara*/*", 300, 0, null, false);
				//Fade("Chara*", 300, 0, null, true);
	
	
				//■選択肢３■■■■■■■■■■■■■■■■■■■■■■■■■■■■
				CreateName("MSGWNG");
			
				//▲画像ロード
				LoadImage("MSGWNG/IMG_yes_hit","cg/sys/chara/始めるoff.png");
				LoadImage("MSGWNG/IMG_no_hit","cg/sys/chara/選択肢に戻るoff.png");
			
				LoadImage("MSGWNG/IMG_yes_on","cg/sys/chara/始めるon.png");
				LoadImage("MSGWNG/IMG_yes_over","cg/sys/chara/始めるover.png");
				LoadImage("MSGWNG/IMG_yes_off","cg/sys/chara/始めるoff.png");
			
				LoadImage("MSGWNG/IMG_no_on","cg/sys/chara/選択肢に戻るon.png");
				LoadImage("MSGWNG/IMG_no_over","cg/sys/chara/選択肢に戻るover.png");
				LoadImage("MSGWNG/IMG_no_off","cg/sys/chara/選択肢に戻るoff.png");
			
				//■定義「選択肢」
				//box
				$CharaStand="cg/sys/chara/キャラ_"+$CharaName+".png";
				$CharaStory="cg/sys/chara/あらすじ_"+$CharaName+".png";
				$CharaPlate="cg/sys/chara/名前セット_"+$CharaName+".png";
				CreateTexture("MSGWNG/MSG_des", 100, 0, 0, "cg/sys/chara/飾り.png");
				CreateTexture("MSGWNG/MSG_cha", 100, 0, 0, $CharaStand);
				CreateTexture("MSGWNG/MSG_str", 100, 174, 92, $CharaStory);
				CreateTexture("MSGWNG/MSG_log", 100, 610, 29, $CharaPlate);
				//YES
				//CreateTexture("MSGWNG/MSG_img_yes",1012000,63,313,"MSGWNG/IMG_yes_off");
				CreateChoice("MSGWNG/MSG_yes");
				CreateTexture("MSGWNG/MSG_yes/MouseUsual/img",1012000,116,313,"MSGWNG/IMG_yes_hit");
				CreateTexture("MSGWNG/MSG_yes/MouseUsual/img2",1012000,116,313,"MSGWNG/IMG_yes_off");
				CreateTexture("MSGWNG/MSG_yes/MouseOver/img",1011000,116,313,"MSGWNG/IMG_yes_over");
				CreateTexture("MSGWNG/MSG_yes/MouseClick/img",1011000,116,313,"MSGWNG/IMG_yes_on");
				Request("MSGWNG/MSG_yes/MouseUsual/img", Erase);
				//NO
				//CreateTexture("MSGWNG/MSG_img_no",1012000,63,313,"MSGWNG/IMG_no_off");
				CreateChoice("MSGWNG/MSG_no");
				CreateTexture("MSGWNG/MSG_no/MouseUsual/img",1012000,63,313,"MSGWNG/IMG_no_hit");
				CreateTexture("MSGWNG/MSG_no/MouseUsual/img2",1012000,63,313,"MSGWNG/IMG_no_off");
				CreateTexture("MSGWNG/MSG_no/MouseOver/img",1011000,63,313,"MSGWNG/IMG_no_over");
				CreateTexture("MSGWNG/MSG_no/MouseClick/img",1011000,63,313,"MSGWNG/IMG_no_on");
				Request("MSGWNG/MSG_no/MouseUsual/img", Erase);
			
				//▲セットフォーカス
				SetNextFocus("MSGWNG/MSG_yes/MouseUsual/img","MSGWNG/MSG_no/MouseUsual/img",LEFT);
				SetNextFocus("MSGWNG/MSG_yes/MouseUsual/img","MSGWNG/MSG_no/MouseUsual/img",RIGHT);
				SetNextFocus("MSGWNG/MSG_yes/MouseUsual/img","MSGWNG/MSG_no/MouseUsual/img",DOWN);
				SetNextFocus("MSGWNG/MSG_yes/MouseUsual/img","MSGWNG/MSG_no/MouseUsual/img",UP);
				SetNextFocus("MSGWNG/MSG_no/MouseUsual/img","MSGWNG/MSG_yes/MouseUsual/img",LEFT);
				SetNextFocus("MSGWNG/MSG_no/MouseUsual/img","MSGWNG/MSG_yes/MouseUsual/img",RIGHT);
				SetNextFocus("MSGWNG/MSG_no/MouseUsual/img","MSGWNG/MSG_yes/MouseUsual/img",DOWN);
				SetNextFocus("MSGWNG/MSG_no/MouseUsual/img","MSGWNG/MSG_yes/MouseUsual/img",UP);
			
				//●最終準備
				Fade("MSGWNG/MSG_*",0,0,null,false);
				Fade("MSGWNG/MSG_*/*/*",0,0,null,false);
			
				//★描画開始
				CreateSound("サウンド１", SE, "sound/se/se銃_構える");
				SetVolume("サウンド１", 0, 600, NULL);
				Request("サウンド１", Play);
				Request("サウンド１", Disused);

				Fade("Chara*/*/*", 300, 0, null, false);
				Fade("Chara*/*", 300, 0, null, false);
				Fade("Chara*", 300, 0, null, false);

				Fade("MSGWNG/MSG_des",300,1000,null,false);
				Fade("MSGWNG/MSG_log",300,1000,null,false);
				Fade("MSGWNG/MSG_cha",300,1000,null,false);
				Fade("MSGWNG/MSG_str",300,1000,null,true);
	
				Fade("MSGWNG/MSG_img_*",300,1000,null,false);
				Fade("MSGWNG/MSG_*/MouseUsual/*",300,1000,null,true);
		
				WaitAction("MSGWNG/MSG_*",null);
		
				//★選択肢開始
				$CharacterWhile2=true;
				while($CharacterWhile2){
					select{
						case MSGWNG/MSG_yes{}
						case MSGWNG/MSG_no{
							$CharacterWhile2=false;
							//Fade("MSGWNG/MSG_*/*/*",500,0,null,false);
							//Fade("MSGWNG/MSG_*", 500, 0, null, true);
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
	
					if($CharacterWhile2){
						//■選択肢４■■■■■■■■■■■■■■■■■■■■■■■■■■■■
						CreateName("MSGWNS");
					
						//▲画像ロード
						LoadImage("MSGWNS/IMG_yes_hit","cg/sys/chara/はいoff.png");
					
						LoadImage("MSGWNS/IMG_yes_on","cg/sys/chara/はいon.png");
						LoadImage("MSGWNS/IMG_yes_over","cg/sys/chara/はいover.png");
						LoadImage("MSGWNS/IMG_yes_off","cg/sys/chara/はいoff.png");
					
						LoadImage("MSGWNS/IMG_no_on","cg/sys/chara/いいえon.png");
						LoadImage("MSGWNS/IMG_no_over","cg/sys/chara/いいえover.png");
						LoadImage("MSGWNS/IMG_no_off","cg/sys/chara/いいえoff.png");
					
						//■定義「選択肢」
						//box
						CreateTexture("MSGWNS/MSG_win", 100, 201, 209, "cg/sys/chara/確認ウィンドウ.png");
						//YES
						CreateTexture("MSGWNS/MSG_img_yes",1011000,379,290,"MSGWNS/IMG_yes_off");
						CreateChoice("MSGWNS/MSG_yes");
						CreateTexture("MSGWNS/MSG_yes/MouseUsual/img",1012000,379,290,"MSGWNS/IMG_yes_hit");
						//CreateTexture("MSGWNS/MSG_yes/MouseUsual/img2",1012000,379,290,"MSGWNS/IMG_yes_off");
						CreateTexture("MSGWNS/MSG_yes/MouseOver/img",1011000,379,290,"MSGWNS/IMG_yes_over");
						CreateTexture("MSGWNS/MSG_yes/MouseClick/img",1011000,379,290,"MSGWNS/IMG_yes_on");
						Request("MSGWNS/MSG_yes/MouseUsual/img", Erase);
						//NO
						CreateTexture("MSGWNS/MSG_img_no",1011000,527,290,"MSGWNS/IMG_no_off");
						CreateChoice("MSGWNS/MSG_no");
						CreateTexture("MSGWNS/MSG_no/MouseUsual/img",1012000,527,290,"MSGWNS/IMG_yes_hit");
						//CreateTexture("MSGWNS/MSG_no/MouseUsual/img2",1012000,527,290,"MSGWNS/IMG_no_off");
						CreateTexture("MSGWNS/MSG_no/MouseOver/img",1011000,527,290,"MSGWNS/IMG_no_over");
						CreateTexture("MSGWNS/MSG_no/MouseClick/img",1011000,527,290,"MSGWNS/IMG_no_on");
						Request("MSGWNS/MSG_no/MouseUsual/img", Erase);
					
						//▲セットフォーカス
						SetNextFocus("MSGWNS/MSG_yes/MouseUsual/img","MSGWNS/MSG_no/MouseUsual/img",LEFT);
						SetNextFocus("MSGWNS/MSG_yes/MouseUsual/img","MSGWNS/MSG_no/MouseUsual/img",RIGHT);
						SetNextFocus("MSGWNS/MSG_yes/MouseUsual/img","MSGWNS/MSG_no/MouseUsual/img",DOWN);
						SetNextFocus("MSGWNS/MSG_yes/MouseUsual/img","MSGWNS/MSG_no/MouseUsual/img",UP);
						SetNextFocus("MSGWNS/MSG_no/MouseUsual/img","MSGWNS/MSG_yes/MouseUsual/img",LEFT);
						SetNextFocus("MSGWNS/MSG_no/MouseUsual/img","MSGWNS/MSG_yes/MouseUsual/img",RIGHT);
						SetNextFocus("MSGWNS/MSG_no/MouseUsual/img","MSGWNS/MSG_yes/MouseUsual/img",DOWN);
						SetNextFocus("MSGWNS/MSG_no/MouseUsual/img","MSGWNS/MSG_yes/MouseUsual/img",UP);
					
						//●最終準備
						Fade("MSGWNS/MSG_*",0,0,null,false);
						Fade("MSGWNS/MSG_*/*/*",0,0,null,true);
					
						//★描画開始
						CreateSound("サウンド１", SE, "sound/se/se銃_撃鉄起こす");
						SetVolume("サウンド１", 0, 1000, NULL);
						Request("サウンド１", Play);
						Request("サウンド１", Disused);

						Fade("MSGWNS/MSG_win",300,1000,null,false);
						Fade("MSGWNS/MSG_img_*",300,1000,null,false);
						Fade("MSGWNS/MSG_*/MouseUsual/*",300,1000,null,true);
				
						WaitAction("MSGWNS/MSG_*",null);
				
						//★選択肢開始
						select{
							case MSGWNS/MSG_no{
								Fade("MSGWNS/MSG_img_no",0,0,null,true);
								Fade("MSGWNS/MSG_*/*/*",300,0,null,false);
								Fade("MSGWNS/MSG_*",300,0,null,true);
							}case MSGWNS/MSG_yes{
								$CharacterWhile=false;
								$CharacterWhile2=false;

								//選択終了：キャラ固定
								CreatePlainSP("絵背景１", 10000000);
								Delete("MSGWNS");
								Delete("MSGWNG");
								SetVolumeEF("@xbgm14",1300);
								FadeDelete("絵背景１", 200, null, true);

								//▽演出
								CreateSE("SE01","movie_chse");
								CreateMovie("タイトルムービー１", 1012001, 0, 0, false, false, "dx/ch_no.ngs");
								Wait(200);
								MusicStart("SE01",0,1500,0,1000,null,false);
								WaitAction("タイトルムービー１", null);

								Delete("Chara*");
								Delete("MSG*");
								Delete("タイトルムービー１");

								//CreateSound("サウンド１", SE, "sound/se/se銃_銃声01");
								//SetVolume("サウンド１", 0, 1000, NULL);
								//Request("サウンド１", Play);
								//Request("サウンド１", Disused);
								//Wait(500);

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
				}
			}
		}else{
			//Random
			Array($CharaNutName,"ミヅハ","千秋","恵那","沙紅羅","似鳥","フウリ","ノーコ");
			AssocArray($CharaNutName,"ミヅハ","千秋","恵那","沙紅羅","似鳥","フウリ","ノーコ");

			//☆大晦日仕様
			DateTime($Year,$Month,$Day,$Hour,$Minute,$Second);
			if($Month==12&&$Day==31){
				$Temp=Random(7);
			}else{
				$Temp=Random(6);
				$Temp++;
			}

			$CharaName=$CharaNutName[$Temp];

			//選択終了：ランダム
			//SetVolume("@*", 4000, 0, NULL);

			SetVolumeEF("@xbgm14",1300);
			Fade("MSGWNS/*", 300, 0, null, true);

			//▽演出
			CreateSE("SE01","movie_chse");
			CreateSE("SE02","se銃_シリンダー回転");
			MusicStart("SE02",0,1200,0,1000,null,false);

			CreateMovie("タイトルムービー１", 1012001, 0, 0, false, false, "dx/ch_rm.ngs");
			Wait(200);
			MusicStart("SE01",0,1500,0,1000,null,false);
			WaitAction("タイトルムービー１", null);

			Delete("Chara*");
			Delete("MSG*");
			Delete("タイトルムービー１");

/*
			WaitAction("サウンド１", null);
			CreateSound("サウンド１", SE, "sound/se/se銃_シリンダー回転");
			SetVolume("サウンド１", 0, 1000, NULL);
			Request("サウンド１", Play);
			Request("サウンド１", Disused);

			CreatePlainSP("絵背景１", 10000000);
			Delete("Chara*");
			Delete("MSG*");
			FadeDelete("絵背景１", 1000, null, true);

			WaitAction("サウンド１", null);
			CreateSound("サウンド１", SE, "sound/se/se銃_構える");
			SetVolume("サウンド１", 0, 1000, NULL);
			Request("サウンド１", Play);
			Request("サウンド１", Disused);
			WaitAction("サウンド１", null);

			CreateSound("サウンド１", SE, "sound/se/se銃_セーフ解除");
			SetVolume("サウンド１", 0, 1000, NULL);
			Request("サウンド１", Play);
			Request("サウンド１", Disused);
			WaitAction("サウンド１", null);

			CreateSound("サウンド１", SE, "sound/se/se銃_撃鉄起こす");
			SetVolume("サウンド１", 0, 1000, NULL);
			Request("サウンド１", Play);
			Request("サウンド１", Disused);
			WaitAction("サウンド１", null);

			Wait(4000);

			CreateSound("サウンド１", SE, "sound/se/se銃_銃声01");
			SetVolume("サウンド１", 0, 1000, NULL);
			Request("サウンド１", Play);
			Request("サウンド１", Disused);
*/
		}

		if($CharaName=="千秋"){
			//◆小碓千秋
			$GameName = "y1751千秋_恵那.nss";
			$CharaName = "千秋";
			#CharaName = "千秋";
			#FirstChara = "千秋";
		}else if($CharaName=="恵那"){
			//◆富士見恵那
			$GameName = "y1750恵那.nss";
			$CharaName = "恵那";
			#CharaName = "恵那";
			#FirstChara = "恵那";
		}else if($CharaName=="ノーコ"){
			//◆ノーコ
			$GameName = "y1750ノーコ.nss";
			$CharaName = "ノーコ";
			#CharaName = "ノーコ";
			#FirstChara = "ノーコ";
		}else if($CharaName=="似鳥"){
			//◆似鳥戴斗
			$GameName = "y1730似鳥.nss";
			$CharaName = "似鳥";
			#CharaName = "似鳥";
			#FirstChara = "似鳥";
		}else if($CharaName=="ミヅハ"){
			//◆ミヅハ
			$GameName = "y1750ミヅハ.nss";
			$CharaName = "フウリ";
			#CharaName = "フウリ";
			#FirstChara = "ミヅハ";
		}else if($CharaName=="フウリ"){
			//◆綿抜フウリ
			$GameName = "y1730フウリ.nss";
			$CharaName = "フウリ";
			#CharaName = "フウリ";
			#FirstChara = "フウリ";
		}else if($CharaName=="沙紅羅"){
			//◆沙紅羅
			$GameName = "y1730沙紅羅.nss";
			$CharaName = "沙紅羅";
			#CharaName = "沙紅羅";
			#FirstChara = "沙紅羅";
		}

		WaitAction("サウンド１", null);
		Wait(3000);

	}//else
}

