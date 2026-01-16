
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene bab2352千秋_恵那.nss_MAIN
{
//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "baa2353千秋_恵那.nss";//★エンディング中（bab）
}

scene bab2352千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "bab2352千秋_恵那.nss"
//title "神様の意味"
//previous "baa2351千秋_恵那.nss"

////////////footer////////////
//next "baa2353千秋_恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：半田明神_鳥居
//	OnBG(10,"bg0602112半田明神_鳥居_通常");
//	FadeBG(0,true);

	CreateTextureSP("絵背景10", 100, Center, 0, "cg/bg/bg0602112半田明神_鳥居_通常.jpg");
	Move("絵背景10", 0, @0, @-900, null, true);

	St("ML",700, @0,@0,"bu恵那_通常_happy");
	FadeSt("ML",0,true);

	FadeDelete("上背景", 0, null, true);

//あきゅん「修正指示：がやつきと銃声が同タイミングとかないので、調整」
//inc久保田　修正しました。　恵那にびっくりさせる演技を追加

	Request("@SE*", UnLock);

	CreateSE("SE11","SEガヤ_ざわざわ_l");
	MusicStart("SE11",1000,700,0,1000,null,true);
	SetVolumeEX("SE11_baa2351千秋_恵那", 1000, 0, null);

	WaitKey(500);


//◆ＳＥ：パン！
//inc久保田　撃鉄を起こす音が入るので、普通の花火音に変更しました。
//おがみ：微音で流しました。
//	CreateSE("SE02","SE銃_銃声01");
	CreateSE("SE02a","SE銃_銃声01");
	CreateSE("SE02","se環境_花火01");

	MusicStart("SE02",0,300,0,1000,null,false);
	MusicStart("SE02a",0,200,0,1000,null,false);
	WaitKey(800);
	St("ML",700, @0,@0,"bu恵那_哀愁_fear");
	Shake("@StNameML/ML*", 100, 2, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("ML",100,true);

	WaitKey(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("ML",700, @0,@0,"bu恵那_一休_think");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/520100010fje">
「アレ？　今のアザナエルの――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

{	ClockPass(2400);}

//◆演出指示：花火が打ち上がる。

//◆ＳＥ：花火

	CreateSE("花火音", "se環境_花火01");
	MusicStart("花火音", 0, 700, 0, 1000, null,false);

	SetVolumeEX("SE11", 1000, 0, null);


//★ inc遠藤 花火っぽい環境光作成。少しタイミングをずらして色を残した。
	CreateTextureEXadd("花火", 2500, @0, @0, "cg/data/circle_10_00_1.png");
	CreateColorEX("花火色100", 1500, "red");
	CreateColorEX("花火色210", 1500, "blue");
	CreateColorEX("花火色200", 1500, "green");

	Fade("花火", 100, 1000, Axl1, false);
	Fade("花火色100", 50, 500, Axl1, true);
	Fade("花火色210", 50, 200, Axl1, true);
	Fade("花火色200", 50, 200, Axl1, true);
	Delete("花火色2*");
	Fade("花火", 1000, 0, Axl1, false);

	FadeDelete("花火色100", 1500, null, true);


//	St("ML",700, @0,@0,"bu恵那_感動_happy");
//	FadeSt("ML",200,false);

	MusicStart("SE01",0,0,0,1000,null,true);

//◆ＳＥ：花火

	CreateColorEXadd("絵色100", 3600, "WHITE");
	CreateTextureEX("花火02", 2500, @0, @0, "cg/img/img花火.jpg");
	Zoom("花火02", 0, 1100, 1100, null, true);
	CreateSE("SE歓声","seガヤ_歓声_l");
	CreateSE("花火音02", "se環境_花火打ち上げ");
	CreateSE("花火音03", "se環境_花火連打02");


	MusicStart("花火音02", 0, 1000, 0, 1000, null,false);

	CloudZoomSmokeSet01("カゴメスモークプロセスA",3500,"cg/ef/天使の羽big.png");
	CloudZoomSmokeSet02("カゴメスモークプロセスB",3500,"cg/ef/天使の羽big.png");

	DeleteSt("ML",200,false);
	Wait(200);


	Wait(1500);

	CloudZoomSmokeStart01(3800,200,500,2500,900,-300,576,-100,-100,Dxl1);
	CloudZoomSmokeStart02(3500,200,500,2500,900,1044,576,824,-100,Dxl1);



	Fade("絵色100", 200, 1000, null, true);
	MoveFTP3("@花火02", 3000, 4, 3);
	fireworks_set(3500);
	Move("絵背景10", 0, @0, @390, null, true);
	Fade("花火02", 0, 1000, null, true);
	MusicStart("SE歓声",0,700,0,1000,null,true);

	FadeDelete("絵色100", 800, null, false);

	MusicStart("花火音03", 0, 700, 0, 1000, null,false);

	Wait(2000);
	CloudZoomSmokeDelete01(2000);
	CloudZoomSmokeDelete02(2000);

	Wait(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/520100020fje">
「違った？」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bab23/520100030kit">
「あれ？　今、空に鳥が――」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/520100040fje">
「鳥？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);
	Move("絵背景10", 0, @0, @-390, null, false);


//	SetVolumeEX("歓声", 2000, 0, null);
	SetVolumeEX("花火音03", 2000, 0, null);
	SetVolumeEX("花火音02", 2000, 0, null);
	fireworks_Delete(2000,false);
	FadeDelete("花火02", 2000, null, true);
	MoveFTP3stop();


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("ML",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/520100050fje">
「ま、いいや。とにかく改めて……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolume("SE歓声", 2000, 0, null);
	Request("@SE*", Lock);

	EndScene();
}
