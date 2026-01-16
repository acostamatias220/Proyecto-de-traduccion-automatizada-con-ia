#include "nss/function.nss"

//=============================================================================//
//■EXTRA [Achie]■
//=============================================================================//
chapter main
{
	//★タイトルの状態
	$SYSTEM_menu_lock = true;

	$DebugMode=false;

	$AchiePage=1;
	$AchiePhase=0;

	$AchieFirst=true;
	AchievementBase();
	Achievement();

	SetVolume("@システムエキストラ/サウンド１", 2000, 0, NULL);
	SetVolume(#エキストラＢＧＭ, 2000, 350, NULL);

	//■動作「終了」
	CreateEffect("@システムエキストラ/背景", 2500, 0, 0, 1024, 576, "Plain");
	Request("@システムエキストラ/背景",Passive);

	Wait(16);
}

chapter main2
{
	Achie();
}


function AchievementBase()
{
	$エキストラ実績=true;

	//LoadImage("AchieImage0", "cg/sys/extra/sound/空白アイコン.png");
	//LoadImage("AchieImage1", "cg/sys/extra/sound/サムネイルボタンoff.png");
	//LoadImage("AchieImage2", "cg/sys/extra/sound/選択カーソル.png");
	//LoadImage("AchieImage3", "cg/sys/extra/sound/サムネイルボタンon.png");

	//■ベース
	CreateColor("AchieColor", 3000, 0, 0, 1024, 576, BLACK);
	Fade("AchieColor", 0, 0, null, false);

	//■背景
	CreateTexture("AchieGround", 1000, 0, 0, "cg/sys/extra/achie/背景01.png");

	CreateTexture("AchieNum09", 1000, 0, 0, "cg/sys/extra/achie/背景02.png");
	CreateTexture("AchieNum01", 1000, 0, 0, "cg/sys/extra/achie/キャラ01.png");
	CreateTexture("AchieNum02", 1000, 0, 0, "cg/sys/extra/achie/キャラ02.png");
	CreateTexture("AchieNum03", 1000, 0, 0, "cg/sys/extra/achie/キャラ03.png");
	CreateTexture("AchieNum04", 1000, 0, 0, "cg/sys/extra/achie/キャラ04.png");
	CreateTexture("AchieNum05", 1000, 0, 0, "cg/sys/extra/achie/キャラ05.png");
	CreateTexture("AchieNum06", 1000, 0, 0, "cg/sys/extra/achie/キャラ06.png");
	CreateTexture("AchieNum07", 1000, 0, 0, "cg/sys/extra/achie/キャラ07.png");
	CreateTexture("AchieNum08", 1000, 0, 0, "cg/sys/extra/achie/キャラ08.png");
	CreateTexture("AchieNum10", 1000, 0, 0, "cg/sys/extra/achie/おめでとう画像.png");
	Request("AchieNum10", Smoothing);//645,28
	CreateTexture("AchieNum11", 1001, 645, 28, "cg/sys/extra/achie/フルコンプ.png");
	CreateColor("AchieNumColor", 1001, 0, 0, 1024, 480, "WHITE");
	Request("AchieNumColor", AddRender);
	Fade("AchieNum*", 0, 0, null, false);

	CreateTexture("AchieBase03", 1000, 0, InBottom, "cg/sys/extra/achie/帯.png");
	CreateTexture("AchieBase01", 1000, 49, 530, "cg/sys/extra/achie/時間と結末.png");
	CreateTexture("AchieBase02", 1000, 512, 530, "cg/sys/extra/achie/時計選択.png");

	//■アチーブメント変数定義
	$DebugMode=false;
	Achie();

	//クリアエンディング数
	$AchieText=$AchieCount+"/10";
	SetFont("ＭＳ ゴシック", 24, FFFFFF, 000000, MEDIUM, NONE);
	CreateText("AchieText01", 1000, 398, 521, Auto, Auto, $AchieText);
	Request("AchieText01", PushText);

	//■各種定義
	Array($AchieNutName,"沙紅羅","千秋","恵那","ノーコ","似鳥","フウリ","Exit");
	AssocArray($AchieNutName,"沙紅羅","千秋","恵那","ノーコ","似鳥","フウリ","Exit");

	Array($AchieNutName["沙紅羅"],626,511,true,時計沙紅羅,);
	Array($AchieNutName["千秋"],673,511,true,時計千秋);
	Array($AchieNutName["恵那"],720,511,true,時計恵那);
	Array($AchieNutName["ノーコ"],767,511,true,時計ノーコ);
	Array($AchieNutName["似鳥"],814,511,true,時計似鳥);
	Array($AchieNutName["フウリ"],861,511,true,時計フウリ);
	Array($AchieNutName["Exit"],926,456,true,戻るボタン);



	$WhileCount=0;
	while(Count($AchieNutName)>$WhileCount){
		if($AchieNutName[$WhileCount][2]){
			$AchieX=$AchieNutName[$WhileCount][0];
			$AchieY=$AchieNutName[$WhileCount][1];

			$AchieTempNum=$WhileCount+1;
			$AchieNutBase="Achie"+$AchieTempNum;
			//$AchieNutBase="Achie"+$AchieNutName[$WhileCount];
			CreateChoice($AchieNutBase);
			SetAlias($AchieNutBase, $AchieNutBase);

			$AchieNutImage1="cg/sys/extra/achie/"+$AchieNutName[$WhileCount][3]+"off.png";
			$AchieNutImage2="cg/sys/extra/achie/"+$AchieNutName[$WhileCount][3]+"over.png";
			if($AchieNutName[$WhileCount]=="Exit"){$AchieNutImage3="cg/sys/extra/achie/"+$AchieNutName[$WhileCount][3]+"on.png";}
			else{$AchieNutImage3="cg/sys/extra/achie/"+$AchieNutName[$WhileCount][3]+"over.png";}
			$AchieNutImage4="cg/sys/time/時計ベース"+$AchieNutName[$WhileCount]+".png";

			$AchieNutTemp1=$AchieNutBase+"/img";
			CreateTexture($AchieNutTemp1, 1000, $AchieX, $AchieY, $AchieNutImage1);
			if($AchieNutName[$WhileCount]!="Exit"){
				$AchieNutTemp2=$AchieNutBase+"/img2";
				CreateTexture($AchieNutTemp2, 1000, $AchieX, $AchieY, $AchieNutImage2);
				$AchieNutOver2=$AchieNutBase+"/MouseOver/nut2";
				CreateTexture($AchieNutOver2, 1000, 630, 0, $AchieNutImage4);
				$AchieNutClick2=$AchieNutBase+"/MouseClick/nut2";
				CreateTexture($AchieNutClick2, 1000, 630, 0, $AchieNutImage4);
			}

			$AchieNutHit=$AchieNutBase+"/MouseUsual/hit";
			CreateTexture($AchieNutHit, 1000, $AchieX, $AchieY, $AchieNutImage1);
			$AchieNutOver=$AchieNutBase+"/MouseOver/nut";
			CreateTexture($AchieNutOver, 1000, $AchieX, $AchieY, $AchieNutImage2);
			$AchieNutClick=$AchieNutBase+"/MouseClick/nut";
			CreateTexture($AchieNutClick, 1000, $AchieX, $AchieY, $AchieNutImage3);
			Request($AchieNutHit, "Erase");

			if(#BaseChara==$AchieNutName[$WhileCount]){
				$BaseCharaNut="Achie"+$AchieTempNum+"/img2";
			}
		}
		$WhileCount++;
	}

	//使用中キャラ
	if(!#BaseChara){
		#BaseChara="沙紅羅";
		$TempX=$AchieNutName[#BaseChara][0];
	}else if(#BaseChara=="ミヅハ"){
		$TempX=1124;
	}else{
		$TempX=$AchieNutName[#BaseChara][0];
	}
	$TempX-=5;
	CreateTexture("AchieBase04", 1000, $TempX, 489, "cg/sys/extra/achie/使用中.png");

	//プレイ時間
	//●総プレイ時間：合計
	#ALL_PLAY_TIME=#ALL_PLAY_TIME+(Time()-#BEGIN_TIME);
	//●総プレイ時間：計測開始
	#BEGIN_TIME=Time();

	$PlayTime=String("%01d時間 %02d分",#ALL_PLAY_TIME/3600,Integer(#ALL_PLAY_TIME-(3600*Integer(#ALL_PLAY_TIME/3600)))/60,#ALL_PLAY_TIME%60);
	SetFont("ＭＳ ゴシック", 22, FFFFFF, 000000, MEDIUM, NONE);
	CreateText("AchieText02", 1000, 185, 523, Auto, Auto, $PlayTime);
	Request("AchieText02", PushText);

	Fade("Achie*/img2", 0, 0, null, false);
	Fade($BaseCharaNut, 0, 1000, null, false);
	Fade("Achie*/*/*", 0, 0, null, true);

}

..//★連想配列
function Achie()
{
	Array($Achie,"ClearTrue","ClearAA","ClearABA","ClearABB","ClearBAA","ClearBAB","ClearBB","ClearC","ClearD","ClearE");

	$AchieCount=0;
	$AchieWhile=0;
	while(Count($Achie)>$AchieWhile){
		if(!$DebugMode){
			if(VariableValue(#,$Achie[$AchieWhile])){
				$AchieCount++;
				$TempNut=String("AchieNum%02d",$AchieCount);
				Fade($TempNut, 0, 1000, null, false);
			}
		}else{
			VariableValue(#,$Achie[$AchieWhile],true);
		}

		$AchieWhile++;
	}
}

..//●選択肢生成と描画
function Achievement()
{
	//●セットネクストフォーカス
	Array($AchieForcus,"0","1","2","3","4","5","6","7");
	AssocArray($AchieForcus,"0","1","2","3","4","5","6","7");
	Array($AchieForcus["1"],7,2,7,2);
	Array($AchieForcus["2"],1,3,1,3);
	Array($AchieForcus["3"],2,4,2,4);
	Array($AchieForcus["4"],3,5,3,5);
	Array($AchieForcus["5"],4,6,4,6);
	Array($AchieForcus["6"],5,7,5,7);
	Array($AchieForcus["7"],6,1,6,1);

	$AchieWhile=1;
	while(Count($AchieForcus)>$AchieWhile){
		$basenut="Achie"+$AchieForcus[$AchieWhile]+"/MouseUsual/hit";
		$up="Achie"+$AchieForcus[$AchieWhile][0]+"/MouseUsual/hit";
		$down="Achie"+$AchieForcus[$AchieWhile][1]+"/MouseUsual/hit";
		$left="Achie"+$AchieForcus[$AchieWhile][2]+"/MouseUsual/hit";
		$right="Achie"+$AchieForcus[$AchieWhile][3]+"/MouseUsual/hit";
		SetNextFocus($basenut, $up, UP);
		SetNextFocus($basenut, $down, DOWN);
		SetNextFocus($basenut, $left, LEFT);
		SetNextFocus($basenut, $right, RIGHT);
		$AchieWhile++;
	}

	//●描画
	if($AchieCount==10){
		//#ExtraAchieFull=false;
		if(#ExtraAchieFull){
			CreateSound("@システムエキストラ/サウンド１", SE, "sound/se/seガヤ_半田明神02_l");
			SetVolume("@システムエキストラ/サウンド１", 0, 0, NULL);
			SetLoop("@システムエキストラ/サウンド１", true);
			Request("@システムエキストラ/サウンド１", Play);
			Request("@システムエキストラ/サウンド１", Disused);
			SetVolume("@システムエキストラ/サウンド１", 4000, 500, NULL);

			SetVolume(#エキストラＢＧＭ, 2000, 200, NULL);

			CreateSound("サウンド３", SE, "sound/se/se戦闘_打撃音01");

			Fade("AchieNum*", 0, 0, null, true);
			Fade("@スクリーン", 300, 0, null, true);
			Delete("@スクリーン");

			Move("AchieNum11", 0, @-20, @20, Dxl1, false);
			Zoom("AchieNum10", 0, 1100, 1100, null, true);

			$TempFade=30;
			$TempWait=30;
			Fade("AchieNum01", $TempFade, 1000, null, false);
			Wait($TempWait);
			Fade("AchieNum02", $TempFade, 1000, null, false);
			Wait($TempWait);
			Fade("AchieNum03", $TempFade, 1000, null, false);
			Wait($TempWait);
			Fade("AchieNum04", $TempFade, 1000, null, false);
			Wait($TempWait);
			Fade("AchieNum05", $TempFade, 1000, null, false);
			Wait($TempWait);
			Fade("AchieNum06", $TempFade, 1000, null, false);
			Wait($TempWait);

			Request("サウンド３", Play);
			Request("サウンド３", Disused);

			Fade("AchieNum07", $TempFade, 1000, null, false);
			Wait($TempWait);
			Fade("AchieNum08", $TempFade, 1000, null, false);
			Wait($TempWait);
			Fade("AchieNum09", $TempFade, 1000, null, false);
			Wait($TempWait);


			Shake("AchieNum10", 400, 0, 10, 0, 0, 500, Dxl1, false);

			Fade("AchieNum11", 400, 1000, null, false);
			Move("AchieNum11", 400, @20, @-20, Dxl1, false);

			Zoom("AchieNum10", 400, 1000, 1000, Dxl1, false);
			Fade("AchieNum10", 400, 1000, null, true);

		}else{
			CreateSound("@システムエキストラ/サウンド１", SE, "sound/se/seガヤ_半田明神02_l");
			SetVolume("@システムエキストラ/サウンド１", 0, 0, NULL);
			SetLoop("@システムエキストラ/サウンド１", true);
			Request("@システムエキストラ/サウンド１", Play);
			Request("@システムエキストラ/サウンド１", Disused);
			SetVolume("@システムエキストラ/サウンド１", 4000, 500, NULL);

			SetVolume(#エキストラＢＧＭ, 2000, 1, NULL);

			Fade("AchieNum*", 0, 0, null, true);
			Fade("@スクリーン", 300, 0, null, true);
			Delete("@スクリーン");
	
			$TempFade=500;
			Fade("AchieNum01", $TempFade, 1000, null, true);
			Fade("AchieNum02", $TempFade, 1000, null, true);
			Fade("AchieNum03", $TempFade, 1000, null, true);
			Fade("AchieNum04", $TempFade, 1000, null, true);
			Fade("AchieNum05", $TempFade, 1000, null, true);
			Fade("AchieNum06", $TempFade, 1000, null, true);
			Fade("AchieNum07", $TempFade, 1000, null, true);
			Fade("AchieNum08", $TempFade, 1000, null, true);
	
			Fade("AchieNum09", 500, 1000, null, true);
			Fade("AchieNumColor", 2000, 1000, null, true);
	
			SetBlur("AchieNum10", true, 2, 400, 400, false);
//			Fade("AchieNum10", 0, 1000, null, true);
			Zoom("AchieNum10", 0, 1100, 1100, null, true);

			CreateSound("サウンド２", SE, "sound/se/se戦闘_風切り音06");
			Request("サウンド２", Play);
			Request("サウンド２", Disused);

			Wait(500);

			CreateSound("サウンド３", SE, "sound/se/se戦闘_打撃音01");
			Request("サウンド３", Play);
			Request("サウンド３", Disused);

			Shake("AchieNum10", 1000, 0, 10, 0, 0, 500, Dxl1, false);
			Fade("AchieNum10", 2000, 1000, null, false);
			Fade("AchieNumColor", 2000, 0, null, false);
			Zoom("AchieNum10", 2000, 1000, 1000, Dxl2, true);

			Move("AchieNum11", 0, @520, @-120, null, true);
			Fade("AchieNum11", 0, 1000, null, true);
			Rotate("AchieNum11", 500, @0, @0, 720, null, false);
			Move("AchieNum11", 500, @-520, @120, null, true);

			//Wait(1000);
			//SetVolume("@システムエキストラ/サウンド１", 2000, 0, NULL);
			SetVolume(#エキストラＢＧＭ, 2000, 200, NULL);

			#ExtraAchieFull=true;
		}
		#ev9999おめでとう画像=true;
	}else{
		Fade("@スクリーン", 300, 0, null, true);
		Delete("@スクリーン");
	}

	$AchieFirst=false;

	//★選択開始
	$AchievementWhile=true;
	while($AchievementWhile){
		$SelectAchieIco=0;
		select{
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
			}else if($SYSTEM_r_button_down){
				$AchievementWhile=false;$AchieLoop=false;$AchieWoop=false;break;
			}
	
			case Achie1{$SelectAchieIco=1;
			}case Achie2{$SelectAchieIco=2;
			}case Achie3{$SelectAchieIco=3;
			}case Achie4{$SelectAchieIco=4;
			}case Achie5{$SelectAchieIco=5;
			}case Achie6{$SelectAchieIco=6;
			}case Achie7{
				//Request("@決定サウンズ", Stop);
				//SetVolume("@決定サウンズ", 0, 1000, NULL);
				//Request("@決定サウンズ", Play);
				$AchievementWhile=false;$AchieLoop=false;$AchieWoop=false;break;
			}
		}

		//★アイコン移動
		if($SelectAchieIco!=0){
			AchieFade();
		}
	}
}


..//●選択後動作
function AchieFade()
{
	$AchieFadeNum=$SelectAchieIco-1;
	$AchieFadeTemp="Achie"+$SelectAchieIco+"/img2";

	$TempX=$AchieNutName[$AchieFadeNum][0]-5;
	Move("AchieBase04", 0, $TempX, @0, null, false);

	Fade("Achie*/img2", 100, 0, null, false);
	Fade($AchieFadeTemp, 0, 1000, null, true);
	Wait(100);

	#BaseChara=$AchieNutName[$AchieFadeNum];
}
