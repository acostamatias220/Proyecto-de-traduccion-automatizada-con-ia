
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene c2300恵那.nss_MAIN
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
	$GameName = "2301恵那.nss";
	//$GameCircle=false;

}

scene c2300恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="40">
////////////header////////////
//file name "c2300恵那.nss"
//title "名探偵は待ちきれない"
//previous "c2250沙紅羅_恵那_似鳥.nss"

////////////footer////////////
//next "恵那" "2301恵那.nss"

////////////body////////////

//◆場所：半田明神_男坂

	SetVolume("@xbgm*", 2000, 0, null);


	PrintBG("上背景", 30000);

{	ClockPass(2300);}

	OnBG(10,"bg0107200秋葉原_遠景_閉店");
	FadeBG(0,true);

	Move("@OnBG*", 0, @0, -651, null, true);

	Wait(1000);



	CreateSE("SEL01", "seガヤ_交通少_l");
	MusicStart("SEL01", 0, 400, 0, 1000, null,true);


	FadeDelete("上背景",1000,null,true);

{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c23/000300010fje">
（設計図描いたらすぐに来るから、名探偵は先にアザナエルのアテをつけておけ、とか言われたけど……）

{	St("C",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("C",200,false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c23/000300020fje">
（ホントに大丈夫なのかな？）

{	St("C",700, @0,@0,"bu恵那_一休_think");
	FadeSt("C",200,false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c23/000300030fje">
（……わかんない）

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c23/000300040fje">
（ま、いっか）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);

	SetVolume("SEL*", 500, 0, null);

	CreateColorSP("黒幕１", 30000, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(200);

	EndScene();
}
