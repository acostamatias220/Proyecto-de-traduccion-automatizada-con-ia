
//=============================================================================//
.//■EXTRA [Media Library]■
//=============================================================================//
#include "nss/function.nss"
#include "nss/function_move.nss"
#include "nss/function_select.nss"
#include "nss/function_quick.nss"

//"nss/function_stand.nss"【function.nss内でinclude】
//"nss/function_process.nss"【function.nss内でinclude】

chapter main
{
	$DebugMode=false;

	$MediaPage=1;
	$MediaPhase=0;

	$MediaFirst=true;
	$MediaWoop=true;
	while($MediaWoop){

		//$tekitou=MilliTime();
		MediaBase();
		//Message("デバッグ用ウィンドウ",String("%d",MilliTime()-$tekitou));
	
		$MediaLoop=true;
		while($MediaLoop){
			MediaLive();
		}
	}

	//■動作「終了」
	CreateEffect("@システムエキストラ/背景", 2500, 0, 0, 1024, 576, "Plain");
	Request("@システムエキストラ/背景",Passive);

	Wait(16);
}

chapter main2
{
	Media();
}


..//★基礎定義
function MediaBase()
{
	$エキストラ音楽=true;

	//LoadImage("MediaImage0", "cg/sys/extra/media/空白アイコン.png");
	//LoadImage("MediaImage1", "cg/sys/extra/media/エロシーン選択中.png");
	//LoadImage("MediaImage2", "cg/sys/extra/media/映像選択中.png");
	//LoadImage("MediaImage3", "cg/sys/extra/media/サムネイルボタンon.png");

	//■ベース
	CreateColor("MediaColor", 3000, 0, 0, 1024, 576, BLACK);
	Fade("MediaColor", 0, 0, null, false);

	//■定義「背景」
	CreateTexture("MediaGround", 900, 0, 0, "cg/sys/extra/media/背景.png");
	CreateTexture("MediaBase1", 900, 0, 0, "cg/sys/extra/media/雲.png");
	CreateTexture("MediaBase2", 900, 0, 1, "cg/sys/extra/media/村崎セット.png");

	CreateTexture("MediaBaseMusic", 1000, 628, 91, "cg/sys/extra/media/ベース_音楽.png");
	CreateTexture("MediaBaseMovie", 900, 377, 0, "cg/sys/extra/media/ベース_映像.png");
	CreateTexture("MediaBaseReco1", 1000, 148, 91, "cg/sys/extra/media/ベース_エロシーン.png");
	CreateTexture("MediaBaseReco2", 1100, 148, 91, "cg/sys/extra/media/エロアイコン装飾off.png");

	//オーバー素材
	CreateTexture("MediaOverMusic", 1001, 628, 91, "cg/sys/extra/media/音楽選択中.png");
	SetAlias("MediaOverMusic", "MediaOverMusic");
	CreateTexture("MediaOverMovie", 900, 377, 0, "cg/sys/extra/media/ベース_映像over.png");
	SetAlias("MediaOverMovie", "MediaOverMovie");
	CreateTexture("MediaOverReco", 1100, 148, 91, "cg/sys/extra/media/エロアイコン装飾over.png");
	SetAlias("MediaOverReco", "MediaOverReco");
	Fade("MediaOver*", 0, 0, null, true);

	//アニメ素材
	$TempWhile=1;
	while(30>=$TempWhile){
		$TempImg=String("cg/sys/extra/media/タヌキアニメ/タヌキ歩く小_%05d.png",$TempWhile);
		$TempNut="MediaAnime"+$TempWhile;
		CreateTexture($TempNut, 1000, 633, 296, $TempImg);
		SetAlias($TempNut, $TempNut);
		$TempWhile++;
	}
	Request("@MediaAnime*", Erase);
	Request("@MediaAnime1", Enter);

	CreateProcess("MediaAnimePro", 150, 0, 0, "TanukiAnime");
	SetAlias("MediaAnimePro", "MediaAnimePro");

	//曲名
	CreateTexture("MediaTitle0", 1000, 646, 313, "cg/sys/extra/media/再生中_ＢＧＭ.png");
	CreateTexture("MediaTitle1", 1000, 646, 313, "cg/sys/extra/media/再生中_歌01.png");
	CreateTexture("MediaTitle2", 1000, 646, 313, "cg/sys/extra/media/再生中_歌02.png");
	CreateTexture("MediaTitle3", 1000, 646, 313, "cg/sys/extra/media/再生中_歌03.png");
	CreateTexture("MediaTitle4", 1000, 646, 313, "cg/sys/extra/media/再生中_歌04.png");
	CreateTexture("MediaTitle5", 1000, 646, 313, "cg/sys/extra/media/再生中_歌05.png");
	Fade("MediaTitle*", 0, 0, null, true);

	CreateTexture("MediaPlate", 1100, 40, 32, "cg/sys/extra/media/タイトル要素.png");

	//■初回番号定義
	//前回のカーソル
	$MusicBan=#ExtraMusicNo;
	$SongBan=#ExtraSongNo;
	//再生中の番号を優先
	if(#ExtraBgmCategory!="NONE"){
		VariableValue($,#ExtraBgmCategory+"Ban",#ExtraPlayNo);
	}



	//数字//////////////////////////
	$WhileCount=0;
	while(10>$WhileCount){
		$MusicCountNutA1="MusicCountA"+$WhileCount;
		$MusicCountNutA2="MusicCountOverA"+$WhileCount;
		$MusicCountNutB1="MusicCountB"+$WhileCount;
		$MusicCountNutB2="MusicCountOverB"+$WhileCount;
		$SongCountNutA1="SongCountA"+$WhileCount;
		$SongCountNutA2="SongCountOverA"+$WhileCount;

		$MediaCountimg1="cg/sys/extra/media/音楽数字_"+$WhileCount+"_off.png";
		$MediaCountimg2="cg/sys/extra/media/音楽数字_"+$WhileCount+"_over.png";

		CreateTexture($MusicCountNutA1, 1000, 838, 95, $MediaCountimg1);
		SetAlias($MusicCountNutA1, $MusicCountNutA1);
		CreateTexture($MusicCountNutA2, 1000, 838, 95, $MediaCountimg2);
		SetAlias($MusicCountNutA2, $MusicCountNutA2);
		CreateTexture($MusicCountNutB1, 1000, 804, 95, $MediaCountimg1);
		SetAlias($MusicCountNutB1, $MusicCountNutB1);
		CreateTexture($MusicCountNutB2, 1000, 804, 95, $MediaCountimg2);
		SetAlias($MusicCountNutB2, $MusicCountNutB2);
		CreateTexture($SongCountNutA1, 1000, 838, 193, $MediaCountimg1);
		SetAlias($SongCountNutA1, $SongCountNutA1);
		CreateTexture($SongCountNutA2, 1000, 838, 193, $MediaCountimg2);
		SetAlias($SongCountNutA2, $SongCountNutA2);
		$WhileCount++;
	}
	Request("MusicCount*", Erase);
	Request("SongCount*", Erase);
	Fade("MusicCountOver*", 0, 0, null, false);
	Fade("SongCountOver*", 0, 0, null, false);

	//Music//////////////////////////
	$MusicNum1=String("@MusicCountA%01d",Integer($MusicBan%10));
	$MusicNum2=String("@MusicCountB%01d",Integer($MusicBan/10));
	$MusicNum3=String("@MusicCountOverA%01d",Integer($MusicBan%10));
	$MusicNum4=String("@MusicCountOverB%01d",Integer($MusicBan/10));

	if(#Music[$MusicBan]=="@xsong02_live"){
		$MusicNum1="@MusicCountA9";
		$MusicNum2="@MusicCountB9";
		$MusicNum3="@MusicCountOverA9";
		$MusicNum4="@MusicCountOverB9";
	}
	Request($MusicNum1, Enter);
	Request($MusicNum2, Enter);
	Request($MusicNum3, Enter);
	Request($MusicNum4, Enter);

	//Song////////////////////////////
	$SongNum1=String("@SongCountA%01d",Integer($SongBan%10));
	$SongNum2=String("@SongCountOverA%01d",Integer($SongBan%10));

	if(#Song[$SongBan]=="@xsong02_live"){
		$SongNum1="@SongCountA9";
		$SongNum2="@SongCountOverA9";
	}
	Request($SongNum1, Enter);
	Request($SongNum2, Enter);





	//■ＭＥＤＩＡ変数定義
	Array($MediaNutName,"Reco1","Reco2","Reco3","Reco4","Reco5","Reco6","Movie1","Movie2","PlayMusic","NextMusic","BackMusic","PlaySong","NextSong","BackSong","Exit");
	AssocArray($MediaNutName,"Reco1","Reco2","Reco3","Reco4","Reco5","Reco6","Movie1","Movie2","PlayMusic","NextMusic","BackMusic","PlaySong","NextSong","BackSong","Exit");

	#NoCheck=true;
	Array($MediaNutName["Reco1"],327,136,#Reco[1],"エロアイコン01_","エロタイトル01");
	Array($MediaNutName["Reco2"],257,140,#Reco[2],"エロアイコン02_","エロタイトル02");
	Array($MediaNutName["Reco3"],188,135,#Reco[3],"エロアイコン03_","エロタイトル03");
	Array($MediaNutName["Reco4"],323,274,#Reco[4],"エロアイコン04_","エロタイトル04");
	Array($MediaNutName["Reco5"],252,274,#Reco[5],"エロアイコン05_","エロタイトル05");
	Array($MediaNutName["Reco6"],186,275,#Reco[6],"エロアイコン06_","エロタイトル06");
	Array($MediaNutName["Movie1"],425,151,"NoCheck","ムービーボタン01_");
	Array($MediaNutName["Movie2"],464,316,"NoCheck","ムービーボタン02_");

	Array($MediaNutName["PlayMusic"],637,99,"NoCheck","音楽再生ボタン_","音楽停止ボタン_");
	Array($MediaNutName["NextMusic"],878,128,"NoCheck","やじるし右_");
	Array($MediaNutName["BackMusic"],769,128,"NoCheck","やじるし左_");
	Array($MediaNutName["PlaySong"],637,198,"NoCheck","音楽再生ボタン_","音楽停止ボタン_");
	Array($MediaNutName["NextSong"],878,223,"NoCheck","やじるし右_");
	Array($MediaNutName["BackSong"],805,223,"NoCheck","やじるし左_");

	Array($MediaNutName["Exit"],926,456,"NoCheck","戻るボタン");


	//■MEDIA変数定義
	if(!$PLACE_title){
		$DebugMode=false;
		Media();
	}


	$WhileCount=0;
	while(Count($MediaNutName)>$WhileCount){
		$MediaX=$MediaNutName[$WhileCount][0];
		$MediaY=$MediaNutName[$WhileCount][1];

		$MediaNutBase=$MediaNutName[$WhileCount];
		CreateChoice($MediaNutBase);
		SetAlias($MediaNutBase, $MediaNutBase);

		$MediaNutImage0="cg/sys/extra/media/"+$MediaNutName[$WhileCount][3]+"off.png";
		$MediaNutImage1="cg/sys/extra/media/"+$MediaNutName[$WhileCount][3]+"off.png";
		$MediaNutImage2="cg/sys/extra/media/"+$MediaNutName[$WhileCount][3]+"over.png";
		$MediaNutImage3="cg/sys/extra/media/"+$MediaNutName[$WhileCount][3]+"on.png";
		if(Strstr($MediaNutBase,"Next")==1||Strstr($MediaNutBase,"Back")==1){
			$MediaNutImage0="cg/sys/extra/media/"+$MediaNutName[$WhileCount][3]+"hit.png";
		}

		if(VariableValue(#,$MediaNutName[$WhileCount][2])){
			$MediaNutTemp1=$MediaNutBase+"/img";
			CreateTexture($MediaNutTemp1, 1000, $MediaX, $MediaY, $MediaNutImage1);

			$MediaNutHit=$MediaNutBase+"/MouseUsual/hit";
			CreateTexture($MediaNutHit, 1000, $MediaX, $MediaY, $MediaNutImage0);
			$MediaNutOver=$MediaNutBase+"/MouseOver/nut";
			CreateTexture($MediaNutOver, 1000, $MediaX, $MediaY, $MediaNutImage2);
			$MediaNutClick=$MediaNutBase+"/MouseClick/nut";
			CreateTexture($MediaNutClick, 1000, $MediaX, $MediaY, $MediaNutImage3);

			if(Strstr($MediaNutBase,"Reco")==1){
				$MediaNutImage4="cg/sys/extra/media/"+$MediaNutName[$WhileCount][4]+".png";
				$MediaNutOver=$MediaNutBase+"/MouseOver/nut2";
				$MediaNutClick=$MediaNutBase+"/MouseClick/nut2";
				CreateTexture($MediaNutOver, 1100, 46, 149, $MediaNutImage4);
				CreateTexture($MediaNutClick, 1100, 46, 149, $MediaNutImage4);
			}else if(Strstr($MediaNutBase,"Play")==1){
				$MediaNutImage1="cg/sys/extra/media/"+$MediaNutName[$WhileCount][4]+"off.png";
				$MediaNutImage2="cg/sys/extra/media/"+$MediaNutName[$WhileCount][4]+"over.png";
				$MediaNutImage3="cg/sys/extra/media/"+$MediaNutName[$WhileCount][4]+"on.png";
				$MediaNutTemp1=$MediaNutBase+"/img2";
				CreateTexture($MediaNutTemp1, 1000, $MediaX, $MediaY, $MediaNutImage1);

				$MediaNutOver=$MediaNutBase+"/MouseOver/nut2";
				$MediaNutClick=$MediaNutBase+"/MouseClick/nut2";
				CreateTexture($MediaNutOver, 1000, $MediaX, $MediaY, $MediaNutImage2);
				CreateTexture($MediaNutClick, 1000, $MediaX, $MediaY, $MediaNutImage3);
			}else if(Strstr($MediaNutBase,"Next")==1||Strstr($MediaNutBase,"Back")==1){
				$MediaNutFail=$MediaNutName[$WhileCount]+"ProcessOver";
				$MediaNutOver=$MediaNutBase+"/MouseOver/pro";
				CreateProcess($MediaNutOver, 150, 0, 0, $MediaNutFail);
				$MediaNutFail=$MediaNutName[$WhileCount]+"ProcessLeave";
				$MediaNutLeave=$MediaNutBase+"/MouseLeave/pro";
				CreateProcess($MediaNutLeave, 150, 0, 0, $MediaNutFail);
				$MediaNutFail=$MediaNutName[$WhileCount]+"ProcessClick";
				$MediaNutLeave=$MediaNutBase+"/MouseClick/pro";
				CreateProcess($MediaNutLeave, 150, 0, 0, $MediaNutFail);
			}
		}else{
			$MediaNutHit=$MediaNutBase+"/MouseUsual/hit";
			CreateTexture($MediaNutHit, 1000, $MediaX, $MediaY, $MediaNutImage1);
			Request($MediaNutBase, UnClickable);
		}
		Request($MediaNutHit, "Erase");
		$WhileCount++;
	}

	if(#ExtraBgmCategory=="NONE"){
		Request("@PlayMusic/img2", Erase);
		Request("@PlayMusic/MouseOver/nut2", Erase);
		Request("@PlayMusic/MouseClick/nut2", Erase);
		Request("@PlaySong/img2", Erase);
		Request("@PlaySong/MouseOver/nut2", Erase);
		Request("@PlaySong/MouseClick/nut2", Erase);

		$MediaAnimePro=false;
		Fade("MediaAnime1", 0, 1000, null, true);

		$NowMediaTitle="無し";
	}else if(#ExtraBgmCategory=="Music"){
		Request("@PlayMusic/img", Erase);
		Request("@PlayMusic/MouseOver/nut", Erase);
		Request("@PlayMusic/MouseClick/nut", Erase);
		Request("@PlaySong/img2", Erase);
		Request("@PlaySong/MouseOver/nut2", Erase);
		Request("@PlaySong/MouseClick/nut2", Erase);

		$MediaAnimePro=true;
		Fade("MediaAnime1", 0, 1000, null, true);
		Fade("MediaTitle0", 0, 1000, null, false);
		$NowMediaTitle="MediaTitle0";
	}else if(#ExtraBgmCategory=="Song"){
		Request("@PlayMusic/img2", Erase);
		Request("@PlayMusic/MouseOver/nut2", Erase);
		Request("@PlayMusic/MouseClick/nut2", Erase);
		Request("@PlaySong/img", Erase);
		Request("@PlaySong/MouseOver/nut", Erase);
		Request("@PlaySong/MouseClick/nut", Erase);

		$MediaAnimePro=true;
		Fade("MediaAnime1", 0, 1000, null, true);
		$NowMediaTitle="MediaTitle"+#ExtraPlayNo;
		Fade($NowMediaTitle, 0, 1000, null, false);
	}

}


..//★連想配列
function Media()
{
	//■各種定義

	//Reco
	Array(#Reco,"何か","1840似鳥_ノーコ_h","2300フウリ_h","ab2210沙紅羅_h","baa2330似鳥_ノーコ_h","bab2340千秋_恵那_h","bb2221千秋_恵那_h");
	#RecoCount=Count(#Reco);

	//デバッグモード
	if($DebugMode){
		$RecoWhile=1;
		while(Count(#Reco)>$RecoWhile){
			VariableValue(#,#Reco[$RecoWhile],true);
			$RecoWhile++;
		}
	}

	//Movie
	Array(#Movie,"何か","pv","op");
	#MovieCount=Count(#Movie);

	//デバッグモード
	if($DebugMode){
		$MovieWhile=1;
		while(Count(#Movie)>$MovieWhile){
			VariableValue(#,#Movie[$MovieWhile],true);
			$MovieWhile++;
		}
	}

	//BGM
	Array(#Music,"何か","@xbgm01","@xbgm02","@xbgm03","@xbgm04","@xbgm05","@xbgm06","@xbgm07","@xbgm08","@xbgm09","@xbgm10","@xbgm11","@xbgm12","@xbgm13","@xbgm14","@xbgm15","@xbgm16","@xbgm17","@xbgm18","@xbgm19","@xbgm20","@xbgm21","@xbgm22","@xbgm23","@xbgm24","@xbgm25","@xbgm26","@xbgm27","@xbgm28","@xbgm29","@xbgm30","@xbgm31","@xbgm32","@xbgm33","@xsong02_live");
	#MusicCount=Count(#Music);

	//デバッグモード
	if($DebugMode){
		$MusicWhile=1;
		while(Count(#Music)>$MusicWhile){
			VariableValue(#,#Music[$MusicWhile],true);
			$MusicWhile++;
		}
	}

	//Song
	Array(#Song,"何か","@xsongop","@xsonged","@xsong01_noeff_short","@xsong02","@xsong03");
	#SongCount=Count(#Song);

	//デバッグモード
	if($DebugMode){
		$SongWhile=1;
		while(Count(#Song)>$SongWhile){
			VariableValue(#,#Song[$SongWhile],true);
			$SongWhile++;
		}
	}
}


..//●選択肢生成と描画
function MediaLive()
{
	if($MediaFirst||$MediaReturn){
	}else{
		CreateTexture("MediaScreen", 10000, 0, 0, SCREEN);
		Fade("MediaNext/MouseUsual/img", 0, 1000, null, false);
		Fade("MediaBack/MouseUsual/img", 0, 1000, null, false);
	}

	Fade("*/MouseOver/*", 0, 0, null, false);
	Fade("*/MouseClick/*", 0, 0, null, true);


	//●セットネクストフォーカス
	Array($MediaForcus,"0","Reco1","Reco2","Reco3","Reco4","Reco5","Reco6","Movie1","Movie2","PlayMusic","NextMusic","BackMusic","PlaySong","NextSong","BackSong","Exit");
	AssocArray($MediaForcus,"0","Reco1","Reco2","Reco3","Reco4","Reco5","Reco6","Movie1","Movie2","PlayMusic","NextMusic","BackMusic","PlaySong","NextSong","BackSong","Exit");
	Array($MediaForcus[Reco1],Reco4,Reco4,Reco2,Movie1);
	Array($MediaForcus[Reco2],Reco5,Reco5,Reco3,Reco1);
	Array($MediaForcus[Reco3],Reco6,Reco6,NextMusic,Reco2);
	Array($MediaForcus[Reco4],Reco1,Reco1,Reco5,Movie2);
	Array($MediaForcus[Reco5],Reco2,Reco2,Reco6,Reco4);
	Array($MediaForcus[Reco6],Reco3,Reco3,NextSong,Reco5);
	Array($MediaForcus[Movie1],Movie2,Movie2,Reco1,PlayMusic);
	Array($MediaForcus[Movie2],Movie1,Movie1,Reco4,PlaySong);
	Array($MediaForcus[PlayMusic],PlaySong,PlaySong,Movie1,BackMusic);
	Array($MediaForcus[BackMusic],BackSong,BackSong,PlayMusic,NextMusic);
	Array($MediaForcus[NextMusic],Exit,NextSong,BackMusic,Reco3);
	Array($MediaForcus[PlaySong],PlayMusic,PlayMusic,Movie2,BackSong);
	Array($MediaForcus[BackSong],BackMusic,BackMusic,PlaySong,NextSong);
	Array($MediaForcus[NextSong],NextMusic,Exit,BackSong,Reco6);
	Array($MediaForcus[Exit],NextSong,NextMusic,Movie2,Reco6);

	$MediaWhile=1;
	while(Count($MediaForcus)>$MediaWhile){
		$basenut=$MediaForcus[$MediaWhile]+"/MouseUsual/hit";
		$up=$MediaForcus[$MediaWhile][0]+"/MouseUsual/hit";
		$down=$MediaForcus[$MediaWhile][1]+"/MouseUsual/hit";
		$left=$MediaForcus[$MediaWhile][2]+"/MouseUsual/hit";
		$right=$MediaForcus[$MediaWhile][3]+"/MouseUsual/hit";
		SetNextFocus($basenut, $up, UP);
		SetNextFocus($basenut, $down, DOWN);
		SetNextFocus($basenut, $left, LEFT);
		SetNextFocus($basenut, $right, RIGHT);
		$MediaWhile++;
	}


	//●描画
	if($MediaFirst){
		Fade("MusicCount*", 0, 0, null, true);
		Fade("SongCount*", 0, 0, null, true);
		Fade("MediaTitle*", 0, 0, null, true);
		Fade("MediaAnime1", 0, 0, null, true);
		Fade("MediaPlate", 0, 0, null, true);
		Fade("MediaBase*", 0, 0, null, true);
		Fade("*/img", 0, 0, null, true);
		Fade("*/img2", 0, 0, null, true);

		Fade("MediaBase1", 0, 1000, null, false);
		Fade("MediaBase2", 0, 1000, null, false);
		Fade("Exit/img", 0, 1000, null, true);

		Move("MediaPlate", 0, @0, @50, null, true);
		Move("MediaBase1", 0, @0, @-90, null, true);
		Move("MediaBase2", 0, @0, @576, null, true);
		Move("Movie1/img", 0, @0, @-50, null, true);
		Move("Movie2/img", 0, @0, @-50, null, true);
		Move("MediaBaseMovie", 0, @0, @-50, null, true);

		//描画
		Fade("@スクリーン", 300, 0, null, false);
		Move("MediaBase1", 300, @0, @90, Dxl1, false);
		Move("MediaBase2", 300, @0, @-576, Dxl1, true);

		Fade("Movie1/img", 300, 1000, Dxl1, false);
		Fade("Movie2/img", 300, 1000, Dxl1, false);
		Fade("MediaBaseMovie", 300, 1000, Dxl1, false);
		Move("Movie1/img", 300, @0, @50, Dxl1, false);
		Move("Movie2/img", 300, @0, @50, Dxl1, false);
		Move("MediaBaseMovie", 300, @0, @50, Dxl1, false);

		Fade($NowMediaTitle, 150, 1000, null, false);
		Fade("MediaAnime1", 150, 1000, null, false);

		Fade("@MusicCountA*", 150, 1000, null, false);
		Fade("@MusicCountB*", 150, 1000, null, false);
		Fade("@SongCountA*", 150, 1000, null, false);
		Fade("@SongCountB*", 150, 1000, null, false);
		Fade("*/img", 150, 1000, null, false);
		Fade("*/img2", 150, 1000, null, false);

		Fade("MediaBaseReco1", 150, 1000, null, false);
		Fade("MediaBaseReco2", 150, 1000, null, false);
		Fade("MediaBaseMusic", 150, 1000, null, true);

		Move("MediaPlate", 300, @0, @-50, Dxl1, false);
		Fade("MediaPlate", 300, 1000, null, true);
		Delete("@スクリーン");

		$MediaFirst=false;
	}else if($MediaReturn){
		if($SelectRecoIco){
			$TempNut1="Reco"+$SelectRecoIco+"/MouseClick/nut";
			Fade($TempNut1, 0, 1000, null, true);
			$TempNut2="Reco"+$SelectRecoIco+"/MouseClick/nut2";
			Fade($TempNut2, 0, 1000, null, true);
		}

		Fade("@MediaScreen", 500, 0, null, true);
		Request("MediaScreen", UnLock);
		Delete("@MediaScreen");

		Fade($TempNut1, 150, 0, null, false);
		Fade($TempNut2, 150, 0, null, false);

		$MediaReturn=false;
	}else{
		Fade("MediaScreen", 300, 0, null, true);
		Delete("MediaScreen");
	}

	if($MediaAnimePro){
		Request("MediaAnimePro", Start);
	}

	//★選択開始
	$MediaLiveWhile=true;
	while($MediaLiveWhile){
		$SelectRecoIco=0;
		$SelectMovieIco=0;
		$SelectSoundIco=0;

		$SoundNextOn1=false;
		$SoundBackOn1=false;
		$SoundNextOn2=false;
		$SoundBackOn2=false;

		select{
			CursorPosition($CurX,$CurY);
			if($CurX>125&&$CurY>72&&$CurX<390&&$CurY<400&&!$MediaCurOn){
				LockVideo(true);//★ロック設置
				Fade("MusicCountOver*", 0, 0, null, false);
				Fade("SongCountOver*", 0, 0, null, false);
				Fade("MediaOverMusic", 0, 0, null, false);
				Fade("MediaOverMovie", 0, 0, null, false);
				Fade("MediaOverReco", 0, 1000, null, false);
				LockVideo(false);//★ロック設置
			}else if($CurX>400&&$CurY>50&&$CurX<625&&$CurY<523&&!$MediaCurOn){
				LockVideo(true);//★ロック設置
				Fade("MusicCountOver*", 0, 0, null, false);
				Fade("SongCountOver*", 0, 0, null, false);
				Fade("MediaOverMusic", 0, 0, null, false);
				Fade("MediaOverReco", 0, 0, null, false);
				Fade("MediaOverMovie", 0, 1000, null, false);
				LockVideo(false);//★ロック設置
			}else if($CurX>632&&$CurY>94&&$CurX<1024&&$CurY<182&&!$MediaCurOn){
				//音楽
				LockVideo(true);//★ロック設置
				Fade("MediaOverReco", 0, 0, null, false);
				Fade("MediaOverMovie", 0, 0, null, false);
				Fade("MusicCountOver*", 0, 1000, null, false);
				Fade("SongCountOver*", 0, 0, null, false);
				Fade("MediaOverMusic", 0, 1000, null, false);
				LockVideo(false);//★ロック設置
			}else if($CurX>632&&$CurY>196&&$CurX<1024&&$CurY<280&&!$MediaCurOn){
				//歌
				LockVideo(true);//★ロック設置
				Fade("MediaOverReco", 0, 0, null, false);
				Fade("MediaOverMovie", 0, 0, null, false);
				Fade("MediaOverMusic", 0, 1000, null, false);
				Fade("MusicCountOver*", 0, 0, null, false);
				Fade("SongCountOver*", 0, 1000, null, false);
				LockVideo(false);//★ロック設置
			}else if($CurX>632&&$CurY>94&&$CurX<1024&&$CurY<455&&!$MediaCurOn){
				//なし
				LockVideo(true);//★ロック設置
				Fade("MediaOverReco", 0, 0, null, false);
				Fade("MediaOverMovie", 0, 0, null, false);
				Fade("SongCountOver*", 0, 0, null, false);
				Fade("MusicCountOver*", 0, 0, null, false);
				Fade("MediaOverMusic", 0, 1000, null, false);
				LockVideo(false);//★ロック設置
			}else if(!$MediaCurOn){
				LockVideo(true);//★ロック設置
				Fade("MusicCountOver*", 0, 0, null, false);
				Fade("SongCountOver*", 0, 0, null, false);
				Fade("MediaOver*", 0, 0, null, false);
				LockVideo(false);//★ロック設置
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
			}else if($SYSTEM_r_button_down){
				$MediaLiveWhile=false;$MediaLoop=false;$MediaWoop=false;break;
			}
	
			case Reco1{$SelectRecoIco=1;
			}case Reco2{$SelectRecoIco=2;
			}case Reco3{$SelectRecoIco=3;
			}case Reco4{$SelectRecoIco=4;
			}case Reco5{$SelectRecoIco=5;
			}case Reco6{$SelectRecoIco=6;
			}case Movie1{$SelectMovieIco=1;
			}case Movie2{$SelectMovieIco=2;
			}case PlayMusic{$SelectSoundIco=1;
			}case NextMusic{
			}case BackMusic{
			}case PlaySong{$SelectSoundIco=2;
			}case NextSong{
			}case BackSong{
			}case Exit{
				//Request("@決定サウンズ", Stop);
				//SetVolume("@決定サウンズ", 0, 1000, NULL);
				//Request("@決定サウンズ", Play);
				$MediaLiveWhile=false;$MediaLoop=false;$MediaWoop=false;break;
			}
		}

		if($SelectRecoIco!=0&&VariableValue(#,#Reco[$SelectRecoIco])){
			$MediaLiveWhile=false;$MediaLoop=false;
		}else if($SelectMovieIco!=0){
			MovieFade();
		}else if($SelectSoundIco==1){
			MusicFade();
		}else if($SelectSoundIco==2){
			SongFade();
		}else{
			$SelectRecoIco=0;
		}
	}

	//★回想スクリプト
	if($SelectRecoIco!=0){
		RecoFade();
	}
}


..//●選択後動作：RECO
function RecoFade()
{
	SetVolume("@x*", 1000, 0, null);

	CreateTexture("MediaScreen", 99999999, 0, 0, SCREEN);
	SetAlias("MediaScreen", "MediaScreen");
	Request("MediaScreen", Lock);
	Wait(500);

	Delete("Next*");
	Delete("Next*");
	Delete("Back*");
	Delete("Play*");
	Delete("Exit");

	Delete("Media*");
	Delete("Movie*");
	Delete("Reco*");
	Delete("Song*");
	Delete("Music*");

	//★：システム変数系の初期化
	$PLACE_reco=true;
	$PLACE_title=false;

	//エキストラオリジン
	$SYSTEM_backselect_lock=true;
	$SYSTEM_save_lock=true;
	$SYSTEM_load_lock=true;
	$LOCAL_extra_lock=true;

	$SYSTEM_menu_lock=false;

	$SYSTEM_skip_lock=false;
	$SYSTEM_text_erase_lock = false;
	$SYSTEM_backlog_lock = false;
	$SYSTEM_twitter_lock=false;

	//アザナエル
	$SYSTEM_super_lock=true;
	$LOCAL_extra_lock=true;
	$SYSTEM_load_lock=true;
	$SYSTEM_save_lock=true;
	$NowOclock=0;

	$SYSTEM_title_lock=false;
	//$SYSTEM_backselect_lock=false;

	$SYSTEM_skip=false;
	#SYSTEM_skip_express=false;
	$SYSTEM_text_auto=false;
	$SYSTEM_text_auto_lock=true;

	$SYSTEM_text_erase=false;
	$SYSTEM_text_waitkey=true;

	//ConfigCharacterVoice();

	//★：ゲームスピード
	#SYSTEM_play_speed = #play_speed_plus;

	//タイトルからはこのまま進行
	ClearBacklog();
	//DeleteSaveFile(9999);
	//DeleteSaveFile(#SaveSelect[#GameNumber]);

	//◆ショートカットメニュー
	QuickSet();

	//◆立ち絵定義
	StArray();

	$GameName=#Reco[$SelectRecoIco]+".nss";
	$GameCircle=true;
	while($GameCircle){
		$ConGameName = "nss/" + $GameName;
		$AllRead = Conquest($ConGameName,$GameName,null);

		$GameName2 = $GameName + "_MAIN";
		$hoge="nss/" + $GameName + "->" + $GameName2;
		Conquest($ConGameName,$GameName2,true);
		call_scene $hoge;
	}

	//◆ショートカットメニュー
	QuickDelete();

	//★：ゲームスピード
	#play_speed_plus = #SYSTEM_play_speed;

	//★：システム変数系のクリア
	$GameName=false;

	#SYSTEM_play_speed=3;
	$SYSTEM_skip=false;
	#SYSTEM_skip_express=false;
	$SYSTEM_text_auto=false;
	$SYSTEM_menu_lock=true;
	#SYSTEM_skip_express_minimum_time=0;
	$SYSTEM_text_waitkey=true;

	//エキストラオリジン
	$SYSTEM_save_lock=false;
	$SYSTEM_backselect_lock=false;
	$SYSTEM_load_lock=false;
	$LOCAL_extra_lock=false;

	//$MemoryWhile=true;
	$PLACE_title=true;
	$PLACE_reco=false;

	//エキストラＢＧＭ
	Request(#エキストラＢＧＭ, Play);
	SetLoop(#エキストラＢＧＭ, true);
	SetVolume(#エキストラＢＧＭ, 0, 350, NULL);

	$OclockPass_in=false;
	$ClockTime_in=false;

	$MediaReturn=true;
}

..//☆本編挿入用
//★本編の回想冒頭に仕込むもの
function ReConquest_yobi()
{
	Conquest($ConGameName,$PreGameName,true);
}
function RecoIn(){
	Request("@MediaScreen", UnLock);
	Fade("@MediaScreen", 500, 0, null, true);
	Delete("@MediaScreen");

	Wait(1000);
}
//★本編の回想終了に仕込んで強制的に先頭に戻す
function RecoReturn(){
	Escape(2);
}
//★本編の回想スクリプト冒頭に差し込む
function RecoOut(){
	SetVolume("@x*", 2000, 0, NULL);

	CreateTexture("MediaScreen", 99999999, 0, 0, SCREEN);
	SetAlias("MediaScreen", "MediaScreen");
	Request("MediaScreen", Lock);

	Wait(2000);

	//時計消す
	ClockDelete(0,true);

	Delete("@*");
	Delete("*");

	$GameCircle=false;
}







function ForExample(){
//メイン内
	//★リコレクション用★★★★★★★★★★★★★★★
	ReConquest();
	#ma03_013=true;
	if($PLACE_reco){
		RecoOut();
	}



//シーン内
//============================================
//★リコレクション用★★★★★★★★★★★★★★★
if(!$PLACE_reco){
//============================================


//============================================
//★リコレクション用★★★★★★★★★★★★★★★
}else{

	//状態定義
	SoundPlay("@mbgm36",0,1000,true);

	SceneFadeBG(200, 0, "cg/bg/bg18500_2_天象儀最上階.jpg",true);
	CreateColorEXadd("白幕", 17000, "WHITE");
	Fade("白幕", 0, 1000, null, true);


	//リコ背景抹消
	RecoIn();
}
//========================================================


//終了
//============================================
//★リコレクション用★★★★★★★★★★★★★★★
	if($PLACE_reco){
		RecoReturn();
	}else{

	}
//============================================

}





..//●選択後動作：MOVIE
function MovieFade()
{
	SetVolume(#エキストラＢＧＭ, 1000, 1, NULL);

	Fade("MediaColor", 1000, 1000, null, true);
	$nut="dx/"+#Movie[$SelectMovieIco]+".ngs";
	MoviePlay($nut, true);

	//エキストラＢＧＭ
	Request(#エキストラＢＧＭ, Play);
	SetLoop(#エキストラＢＧＭ, true);
	SetVolume(#エキストラＢＧＭ, 500, 350, NULL);

	Fade("MediaColor", 300, 0, null, true);
}

..//●選択後動作：BGM
function MusicFade()
{
	if((#ExtraBgmCategory=="Music")&&(#ExtraPlayNo==$MusicBan)){
		#ExtraBgmCategory="NONE";
		SetVolume("@x*", 1000, 0, NULL);

		Request("@PlayMusic/img", Enter);
		Request("@PlayMusic/MouseOver/nut", Enter);
		Request("@PlayMusic/MouseClick/nut", Enter);
		Request("@PlayMusic/img2", Erase);
		Request("@PlayMusic/MouseOver/nut2", Erase);
		Request("@PlayMusic/MouseClick/nut2", Erase);

		$MediaAnimePro=false;

		Fade("MediaTitle*", 0, 0, null, false);
	}else{
		if(#ExtraBgmCategory=="NONE"){
			Request("MediaAnimePro", Stop);
			WaitAction("MediaAnimePro", null);
			$MediaAnimePro=true;
			Request("MediaAnimePro", Start);
		}

		#ExtraBgmCategory="Music";
		#ExtraPlayNo=$MusicBan;
		#エキストラＢＧＭ=#Music[$MusicBan];

		Request("@PlayMusic/img2", Enter);
		Request("@PlayMusic/MouseOver/nut2", Enter);
		Request("@PlayMusic/MouseClick/nut2", Enter);
		Request("@PlayMusic/img", Erase);
		Request("@PlayMusic/MouseOver/nut", Erase);
		Request("@PlayMusic/MouseClick/nut", Erase);
		Request("@PlaySong/img", Enter);
		Request("@PlaySong/MouseOver/nut", Enter);
		Request("@PlaySong/MouseClick/nut", Enter);
		Request("@PlaySong/img2", Erase);
		Request("@PlaySong/MouseOver/nut2", Erase);
		Request("@PlaySong/MouseClick/nut2", Erase);

		Fade("MediaTitle*", 0, 0, null, false);
		Fade("MediaTitle0", 0, 1000, null, false);

		SetVolume("@x*", 1000, 0, NULL);
		Request(#エキストラＢＧＭ, Play);
		SetLoop(#エキストラＢＧＭ, true);
		SetVolume(#エキストラＢＧＭ, 0, 350, NULL);
	}
}

..//●選択後動作：SONG
function SongFade()
{
	if((#ExtraBgmCategory=="Song")&&(#ExtraPlayNo==$SongBan)){
		#ExtraBgmCategory="NONE";
		SetVolume("@x*", 1000, 0, NULL);

		Request("@PlaySong/img", Enter);
		Request("@PlaySong/MouseOver/nut", Enter);
		Request("@PlaySong/MouseClick/nut", Enter);
		Request("@PlaySong/img2", Erase);
		Request("@PlaySong/MouseOver/nut2", Erase);
		Request("@PlaySong/MouseClick/nut2", Erase);

		$MediaAnimePro=false;

		Fade("MediaTitle*", 0, 0, null, false);
	}else{
		if(#ExtraBgmCategory=="NONE"){
			Request("MediaAnimePro", Stop);
			WaitAction("MediaAnimePro", null);
			$MediaAnimePro=true;
			Request("MediaAnimePro", Start);
		}

		#ExtraBgmCategory="Song";
		#ExtraPlayNo=$SongBan;
		#エキストラＢＧＭ=#Song[$SongBan];

		Request("@PlaySong/img", Erase);
		Request("@PlaySong/MouseOver/nut", Erase);
		Request("@PlaySong/MouseClick/nut", Erase);
		Request("@PlaySong/img2", Enter);
		Request("@PlaySong/MouseOver/nut2", Enter);
		Request("@PlaySong/MouseClick/nut2", Enter);
		Request("@PlayMusic/img", Enter);
		Request("@PlayMusic/MouseOver/nut", Enter);
		Request("@PlayMusic/MouseClick/nut", Enter);
		Request("@PlayMusic/img2", Erase);
		Request("@PlayMusic/MouseOver/nut2", Erase);
		Request("@PlayMusic/MouseClick/nut2", Erase);

		$TempNut="MediaTitle"+#ExtraSongNo;
		Fade("MediaTitle*", 0, 0, null, false);
		Fade($TempNut, 0, 1000, null, false);

		SetVolume("@x*", 1000, 0, NULL);
		Request(#エキストラＢＧＭ, Play);
		SetLoop(#エキストラＢＧＭ, true);
		SetVolume(#エキストラＢＧＭ, 0, 350, NULL);
	}
}



function NextMusicProcessOver()
{
	$MediaCurOn=true;

	$MusicNextOn=false;
	$MusicBackOn=false;
}

function NextMusicProcessLeave()
{
	Wait(100);
	$MediaCurOn=false;

	$MusicNextOn=false;
	$MusicBackOn=false;
}

function NextMusicProcessClick()
{
	$MusicBackOn=false;
	WaitAction("@BackMusic/MouseClick/pro", null);

	$MusicNextFirst=false;
	$MusicNextOn=true;
	while($MusicNextOn){
		//★ロック
		LockVideo(true);

		$MusicBan++;

		if($MusicBan>=#MusicCount){
			$MusicBan=1;
		}else if($MusicBan<1){
			$MusicBan=(#MusicCount-1);
		}
		#ExtraMusicNo=$MusicBan;

		$MusicNum1=String("@MusicCountA%01d",Integer($MusicBan%10));
		$MusicNum2=String("@MusicCountB%01d",Integer($MusicBan/10));
		$MusicNum3=String("@MusicCountOverA%01d",Integer($MusicBan%10));
		$MusicNum4=String("@MusicCountOverB%01d",Integer($MusicBan/10));
	
		if(#Music[$MusicBan]=="@xsong02_live"){
			$MusicNum1="@MusicCountA9";
			$MusicNum2="@MusicCountB9";
			$MusicNum3="@MusicCountOverA9";
			$MusicNum4="@MusicCountOverB9";
		}

		Request("@MusicCount*", Erase);
		Request($MusicNum1, Enter);
		Request($MusicNum2, Enter);
		Request($MusicNum3, Enter);
		Request($MusicNum4, Enter);
	
		Fade($MusicNum1, 0, 1000, null, false);
		Fade($MusicNum2, 0, 1000, null, false);
		Fade($MusicNum3, 0, 1000, null, false);
		Fade($MusicNum4, 0, 1000, null, false);

		if((#ExtraBgmCategory=="Music")&&(#ExtraPlayNo==$MusicBan)){
			Request("@PlayMusic/img2", Enter);
			Request("@PlayMusic/MouseOver/nut2", Enter);
			Request("@PlayMusic/MouseClick/nut2", Enter);
			Request("@PlayMusic/img", Erase);
			Request("@PlayMusic/MouseOver/nut", Erase);
			Request("@PlayMusic/MouseClick/nut", Erase);
		}else{
			Request("@PlayMusic/img", Enter);
			Request("@PlayMusic/MouseOver/nut", Enter);
			Request("@PlayMusic/MouseClick/nut", Enter);
			Request("@PlayMusic/img2", Erase);
			Request("@PlayMusic/MouseOver/nut2", Erase);
			Request("@PlayMusic/MouseClick/nut2", Erase);
		}

		Fade("@PlayMusic/img", 0, 1000, null, false);
		Fade("@PlayMusic/img2", 0, 1000, null, false);

		//★ロック解除
		LockVideo(false);

		$MusicBanPre=$MusicBan;
		if($MusicNextFirst){
			Wait(1);
		}else{
			$NextMusicProcessClick=0;
			while(10>$NextMusicProcessClick){
				if(!$MusicNextOn){break;}
				Wait(16);
				$NextMusicProcessClick++;
			}
			$MusicNextFirst=true;
		}
	}
}

function BackMusicProcessOver()
{
	$MediaCurOn=true;

	$MusicNextOn=false;
	$MusicBackOn=false;
}

function BackMusicProcessLeave()
{
	Wait(100);
	$MediaCurOn=false;

	$MusicNextOn=false;
	$MusicBackOn=false;
}

function BackMusicProcessClick()
{
	$MusicNextOn=false;
	WaitAction("@NextMusic/MouseClick/pro", null);

	$MusicBackFirst=false;
	$MusicBackOn=true;
	while($MusicBackOn){
		//★ロック
		LockVideo(true);

		$MusicBan--;

		if($MusicBan>=#MusicCount){
			$MusicBan=1;
		}else if($MusicBan<1){
			$MusicBan=(#MusicCount-1);
		}
		#ExtraMusicNo=$MusicBan;
	
		$MusicNum1=String("@MusicCountA%01d",Integer($MusicBan%10));
		$MusicNum2=String("@MusicCountB%01d",Integer($MusicBan/10));
		$MusicNum3=String("@MusicCountOverA%01d",Integer($MusicBan%10));
		$MusicNum4=String("@MusicCountOverB%01d",Integer($MusicBan/10));

		if(#Music[$MusicBan]=="@xsong02_live"){
			$MusicNum1="@MusicCountA9";
			$MusicNum2="@MusicCountB9";
			$MusicNum3="@MusicCountOverA9";
			$MusicNum4="@MusicCountOverB9";
		}

		Request("@MusicCount*", Erase);
		Request($MusicNum1, Enter);
		Request($MusicNum2, Enter);
		Request($MusicNum3, Enter);
		Request($MusicNum4, Enter);
	
		Fade($MusicNum1, 0, 1000, null, false);
		Fade($MusicNum2, 0, 1000, null, false);
		Fade($MusicNum3, 0, 1000, null, false);
		Fade($MusicNum4, 0, 1000, null, false);

		if((#ExtraBgmCategory=="Music")&&(#ExtraPlayNo==$MusicBan)){
			Request("@PlayMusic/img2", Enter);
			Request("@PlayMusic/MouseOver/nut2", Enter);
			Request("@PlayMusic/MouseClick/nut2", Enter);
			Request("@PlayMusic/img", Erase);
			Request("@PlayMusic/MouseOver/nut", Erase);
			Request("@PlayMusic/MouseClick/nut", Erase);
		}else{
			Request("@PlayMusic/img", Enter);
			Request("@PlayMusic/MouseOver/nut", Enter);
			Request("@PlayMusic/MouseClick/nut", Enter);
			Request("@PlayMusic/img2", Erase);
			Request("@PlayMusic/MouseOver/nut2", Erase);
			Request("@PlayMusic/MouseClick/nut2", Erase);
		}

		Fade("@PlayMusic/img", 0, 1000, null, false);
		Fade("@PlayMusic/img2", 0, 1000, null, false);

		//★ロック解除
		LockVideo(false);

		$MusicBanPre=$MusicBan;
		if($MusicBackFirst){
			Wait(1);
		}else{
			$BackMusicProcessClick=0;
			while(10>$BackMusicProcessClick){
				if(!$MusicBackOn){break;}
				Wait(16);
				$BackMusicProcessClick++;
			}
			$MusicBackFirst=true;
		}
	}
}

function NextSongProcessOver()
{
	$MediaCurOn=true;

	$SongNextOn=false;
	$SongBackOn=false;
}

function NextSongProcessLeave()
{
	Wait(100);
	$MediaCurOn=false;

	$SongNextOn=false;
	$SongBackOn=false;
}

function NextSongProcessClick()
{
	$SongBackOn=false;
	WaitAction("@BackSong/MouseClick/pro", null);

	$SongNextFirst=false;
	$SongNextOn=true;
	while($SongNextOn){
		//★ロック
		LockVideo(true);

		$SongBan++;

		if($SongBan>=#SongCount){
			$SongBan=1;
		}else if($SongBan<1){
			$SongBan=(#SongCount-1);
		}
		#ExtraSongNo=$SongBan;

		$SongNum1=String("@SongCountA%01d",Integer($SongBan%10));
		$SongNum2=String("@SongCountOverA%01d",Integer($SongBan%10));
	
		if(#Song[$SongBan]=="@xsong02_live"){
			$SongNum1="@SongCountA9";
			$SongNum2="@SongCountOverA9";
		}

		Request("@SongCount*", Erase);
		Request($SongNum1, Enter);
		Request($SongNum2, Enter);
	
		Fade($SongNum1, 0, 1000, null, false);
		Fade($SongNum2, 0, 1000, null, false);

		if((#ExtraBgmCategory=="Song")&&(#ExtraPlayNo==$SongBan)){
			Request("@PlaySong/img2", Enter);
			Request("@PlaySong/MouseOver/nut2", Enter);
			Request("@PlaySong/MouseClick/nut2", Enter);
			Request("@PlaySong/img", Erase);
			Request("@PlaySong/MouseOver/nut", Erase);
			Request("@PlaySong/MouseClick/nut", Erase);
		}else{
			Request("@PlaySong/img", Enter);
			Request("@PlaySong/MouseOver/nut", Enter);
			Request("@PlaySong/MouseClick/nut", Enter);
			Request("@PlaySong/img2", Erase);
			Request("@PlaySong/MouseOver/nut2", Erase);
			Request("@PlaySong/MouseClick/nut2", Erase);
		}

		Fade("@PlaySong/img", 0, 1000, null, false);
		Fade("@PlaySong/img2", 0, 1000, null, false);

		//★ロック解除
		LockVideo(false);

		$SongBanPre=$SongBan;
		if($SongNextFirst){
			Wait(1);
		}else{
			$NextSongProcessClick=0;
			while(10>$NextSongProcessClick){
				if(!$SongNextOn){break;}
				Wait(16);
				$NextSongProcessClick++;
			}
			$SongNextFirst=true;
		}
	}
}

function BackSongProcessOver()
{
	$MediaCurOn=true;

	$SongNextOn=false;
	$SongBackOn=false;
}

function BackSongProcessLeave()
{
	Wait(100);
	$MediaCurOn=false;

	$SongNextOn=false;
	$SongBackOn=false;
}

function BackSongProcessClick()
{
	$SongNextOn=false;
	WaitAction("@NextSong/MouseClick/pro", null);

	$SongBackFirst=false;
	$SongBackOn=true;
	while($SongBackOn){
		//★ロック
		LockVideo(true);

		$SongBan--;

		if($SongBan>=#SongCount){
			$SongBan=1;
		}else if($SongBan<1){
			$SongBan=(#SongCount-1);
		}
		#ExtraSongNo=$SongBan;
	
		$SongNum1=String("@SongCountA%01d",Integer($SongBan%10));
		$SongNum2=String("@SongCountOverA%01d",Integer($SongBan%10));

		if(#Song[$SongBan]=="@xsong02_live"){
			$SongNum1="@SongCountA9";
			$SongNum2="@SongCountOverA9";
		}

		Request("@SongCount*", Erase);
		Request($SongNum1, Enter);
		Request($SongNum2, Enter);
	
		Fade($SongNum1, 0, 1000, null, false);
		Fade($SongNum2, 0, 1000, null, false);

		if((#ExtraBgmCategory=="Song")&&(#ExtraPlayNo==$SongBan)){
			Request("@PlaySong/img2", Enter);
			Request("@PlaySong/MouseOver/nut2", Enter);
			Request("@PlaySong/MouseClick/nut2", Enter);
			Request("@PlaySong/img", Erase);
			Request("@PlaySong/MouseOver/nut", Erase);
			Request("@PlaySong/MouseClick/nut", Erase);
		}else{
			Request("@PlaySong/img", Enter);
			Request("@PlaySong/MouseOver/nut", Enter);
			Request("@PlaySong/MouseClick/nut", Enter);
			Request("@PlaySong/img2", Erase);
			Request("@PlaySong/MouseOver/nut2", Erase);
			Request("@PlaySong/MouseClick/nut2", Erase);
		}

		Fade("@PlaySong/img", 0, 1000, null, false);
		Fade("@PlaySong/img2", 0, 1000, null, false);

		//★ロック解除
		LockVideo(false);

		$SongBanPre=$SongBan;
		if($SongBackFirst){
			Wait(1);
		}else{
			$BackSongProcessClick=0;
			while(10>$BackSongProcessClick){
				if(!$SongBackOn){break;}
				Wait(16);
				$BackSongProcessClick++;
			}
			$SongBackFirst=true;
		}
	}
}




function TanukiAnime()
{
	$TanukiAnimeNutPre="@MediaAnime30";
	$TanukiAnimeWhile=0;

	//Fade("@MediaAnime*", 0, 0, null, false);
	//Request("@MediaAnime*", Enter);

	while(1){
		$TanukiAnimeNut="@MediaAnime"+$TanukiAnimeWhile;

		Request($TanukiAnimeNut, Enter);
		Request($TanukiAnimeNutPre, Erase);
		Fade($TanukiAnimeNut, 0, 1000, null, false);
		//Fade($TanukiAnimeNutPre, 0, 0, null, false);

		$TanukiAnimeNutPre=$TanukiAnimeNut;
		$TanukiAnimeWhile++;
		if($TanukiAnimeWhile>30){
			$TanukiAnimeWhile=1;
		}else if($TanukiAnimeWhile==2&&!$MediaAnimePro){
			break;
		}
	}
}
























