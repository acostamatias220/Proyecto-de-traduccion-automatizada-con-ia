
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zc2400双六.nss_MAIN
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
	EndScript();

}

scene zc2400双六.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "zc2400双六.nss"
//title "水の中"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2400);}

//◆演出指示：水に溺れながら
	CreateSE("SE01","se環境_水中_l");
	MusicStart("SE01",1000,700,0,1000,null,true);

	CreateTextureEX("絵背景100", 100, Center, InBottom, "cg/ef/ef水中絵a.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	FadeDelete("上背景", 500, null, true);

	CreateColorEX("絵色黒", 110, "#000000");

	Move("絵背景100", 30000, @0, -576, null, false);
	Fade("絵色黒", 0, 1000, null, true);
	DrawTransition("絵色黒", 29000, 0, 1000, 100, null, "cg/data/slide_02_00_1.png", false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zc24/000500010ksr">
「ぐ……がっ、ぐぼぼ……」

{	CreateTextureEX("絵背景200", 100, Center, 0, "cg/bu/bu双六a_通常_shout.png");
	Fade("絵背景200", 200, 500, null, true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zc24/000500020ksr">
（クソッ！　逃げ道が……水に塞がれて……！！）

{	CreateTextureEX("絵背景300", 100, Center, 0, "cg/bu/bu双六a_通常_pinch.png");
	Fade("絵背景200", 200, 0, null, false);
	Fade("絵背景300", 200, 500, null, true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zc24/000500030ksr">
（せめて……両手が……自由になれば……！！）

{	CreateTextureEX("絵背景400", 100, Center, 0, "cg/bu/bu双六a_通常_shock.png");
	Fade("絵背景300", 200, 0, null, false);
	Fade("絵背景400", 200, 500, null, true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zc24/000500040ksr">
（これも、アイツの計算……？）

{	CreateTextureEX("絵背景500", 100, Center, 0, "cg/bu/bu双六a_通常_sad.png");
	Fade("絵背景400", 200, 0, null, false);
	Fade("絵背景500", 200, 500, null, true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zc24/000500050ksr">
（それともこれこそ……
　オレに与えられた罰か……！？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("絵背景500", 1000, 0, null, true);

//	MusicStart("SE01",1000,0,0,1000,null,false);

	EndScene();
}
