
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2020ミヅハ.nss_MAIN
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

scene z2020ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="90">
////////////header////////////
//file name "z2020ミヅハ.nss"
//title "星の不在"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2027);}

//◆場所：半田明神_境内
	OnBG(10,"bg0603111半田明神_境内_通常");
	FadeBG(0,true);

	CreateSE("SE01", "seガヤ_交通少_l");
	MusicStart("SE01", 500, 350, 0, 1000, null,true);

	St("MR",700, @0,@0,"bu平次_通常_normal");
	FadeSt("MR",0,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/z20/200200010fjh">
「おーい！　星さん！
　ミヅハを連れてきたぞー！！」

{	St("MR",700, @0,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/z20/200200020fjh">
「あれ？　いない……のか？」

{	St("ML",700, @0,@0,"buミヅハ_通常_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z20/200200030mzh">
「むう……奇妙じゃ」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z20/200200040mzh">
「この大晦日の忙しい時期に……
　星が神社を留守にするなど」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z20/200200050mzh">
「やはり……アザナエルを探しに？」

{	St("ML",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z20/200200060mzh">
「うう……これは本格的に、おしりペンペンでは済まぬかも知れん……」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z20/200200070mzh">
「ゆるキャラバンも気になるし……」

{	St("MR",700, @0,@0,"bu平次_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/z20/200200080fjh">
「星さん！　星さん！　星さんやーい！！」

{	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
//	Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z20/200200090mzh">
「平次が気を取られてる隙に、逃げ出すしかあるまい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
//	Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
//	DeleteAllSt(200,true);

	EndScene();
}
