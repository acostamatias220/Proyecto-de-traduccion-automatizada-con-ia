
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1930みそブー_ＡＤ.nss_MAIN
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

scene z1930みそブー_ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="190">
////////////header////////////
//file name "z1930みそブー_ＡＤ.nss"
//title "脱便！！"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1930);}

//◆場所：銭形公園_トイレ正面
	OnBG(10,"bg1702100銭形公園_トイレ正面_通常");
	FadeBG(0,true);

	St("MR",700, @0,@0,"buブーa_オラオラ_happy");
	FadeSt("MR",0,true);

	CreateSE("SEL01","seガヤ_交通少_l");
	MusicStart("SEL01",500,400,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ブー】
<voice name="ブー" class="ブー" src="voice/z19/300100010buu">
「た、助けてくれてありがとうございましたッ！！」

{	St("C",700, @0,@0,"buＡＤ_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z19/300100020adi">
「あ、いえいえそんな……」

{	St("C",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z19/300100030adi">
「でも、トイレ壊しちゃって良かったんでしょうか……」

{	St("ML",700, @0,@0,"buみそa_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z19/300100040mso">
「いやいや、壊したのは扉だけじゃないんスよ！　ホラ！」

{	St("MR",700, @0,@0,"buブーa_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z19/300100050buu">
「さすがにこっちは抜けられなさそうなんで、断念しましたけどね！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("C",700, @0,@0,"buＡＤ_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z19/300100060adi">
「あ、窓も割れてる……」

{	St("ML",700, @0,@0,"buみそa_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z19/300100070mso">
「窓は割った後、『こりゃ抜けられねぇだろ……』って気付いたけど、まさか天井につっかかるとは！」

{	St("C",700, @0,@0,"buＡＤ_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z19/300100080adi">
「え？　でもそれって――」

{	St("MR",700, @0,@0,"buブーa_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z19/300100090buu">
「大丈夫！　オレたち窓は直せるんで！」

{	St("ML",700, @0,@0,"buみそa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z19/300100100mso">
「いやあ、学校の窓叩き割って遊んでたらバレちゃって、罰として自分たちで張り直せって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",700, @0,@0,"buＡＤ_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z19/300100110adi">
「いや、そうじゃなくて――」

{	St("ML",700, @-50,@0,"buみそa_オラオラ_pride");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @50, @0, Dxl3, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z19/300100120mso">
「と！　こんなことしてる場合じゃねぇ！」

{	St("MR",700, @50,@0,"buブーa_オラオラ_happy");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @-50, @0, Dxl3, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z19/300100130buu">
「お礼はあとで！　ここに電話、して下さい！」

{	St("C",700, @0,@0,"buＡＤ_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z19/300100140adi">
「は、はあ……」

{	St("L",700, @50,@0,"buみそa_オラオラ_shout");
	DeleteAllSt(200,false);
	Move("@StNameL/L*", 200, @-50, @0, Dxl3, false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z19/300100150mso">
「行くぞ、ブー！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("R",700, @-50,@0,"buブーa_オラオラ_shout");
	Move("@StNameR/R*", 200, @50, @0, Dxl3, false);
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ブー】
<voice name="ブー" class="ブー" src="voice/z19/300100160buu">
「おう！　ロケボーで、ミヅハちゃんを追撃だ！！」

{	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(100);
	CreateSE("SE02","se戦闘_風切り音10");
	MusicStart("SE02",0,700,0,1000,null,false);
	Move("@StNameL/L*", 200, @-100, @0, null, false);
	Move("@StNameR/R*", 200, @100, @0, null, false);
	FadeDelete("@StNameL/L*", 150, null, false);
	FadeDelete("@StNameR/R*", 150, null, true);}
{	Wait(2000);
	St("C",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("C",300,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z19/300100170adi">
「……行っちゃった」

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z19/300100180adi">
「なんで細身のみそさんが先に出なかったんだろう？」

{	St("C",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z19/300100190adi">
「もしかして……バカ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
