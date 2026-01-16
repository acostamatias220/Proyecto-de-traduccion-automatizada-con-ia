
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1910恵那.nss_MAIN
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
	$GameName = "1920恵那.nss";
	//$GameCircle=false;

}

scene 1910恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1650">
////////////header////////////
//file name "1910恵那.nss"
//title "巫女奪還大作戦"
//previous "1900恵那.nss"

////////////footer////////////
//next "恵那" "1920恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);

{	ClockPass(1910);}



//◆場所：地下_通路_地震後
	OnBG(10,"bg0701200地下_通路_地震後");
	FadeBG(0,true);

	KoreJikenSet();


	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);


WaitKey(1000);

	CreateSE("SE12","se環境_林_l");
	MusicStart("SE12",3000,700,0,1000,null,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);



{	ClockPass(1911);}

//◆場所：半田明神_涸れ井戸
	OnBG(10,"bg0606100半田明神_涸れ井戸_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200010fje">
（御札は……カバンの中にあるけど、また後で納めに来ればいいわよね）


{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200020fje">
（あ！　もしかして――）

{	St("C",700, @0,@0,"bu恵那_一休_pride");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200030fje">
（この銃って、千秋に断られた私をかわいそうに思った神様が、プレゼントをくれたのかも……？）

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200040fje">
（だったらますます、ちゃんと届けないと！）



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE*", 2000, 0, null);

	TextBoxDelete(150);
	DeleteAllSt(200,true);


{	ClockPass(1912);}

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateSE("SE11","seガヤ_交通少_l");
	MusicStart("SE11",2000,700,0,1000,null,true);


//◆場所：秋葉原_蔵前橋通り

	OnBG(10,"bg0106100秋葉原_蔵前橋通り_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200050fje">
（とにかく、何事もないように……）

//	St("C",700, @0,@0,"bu恵那_通常_pride");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200060fje">
（大丈夫……私には、神様がついてる！）

//	St("C",700, @0,@0,"bu恵那_哀愁_worry");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200070fje">
（絶対に、上手くいくはずよ！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);



{	ClockPass(1913);}

//◆場所：銭形公園_全景
	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);


	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200080fje">
（この事件を解決して、名探偵として認められて――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200090fje">
（私は父さんに認めて――）


{	DeleteAllSt(200,true);}
//◆音声指示：泣き止んだばかり
//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/100200100mzh">
「ひぐっ、ぅ……ぅぅぅ……」

{	St("C",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200110fje">
（――――え？）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200120fje">
（女の子の泣き声が……トイレの方から……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200130fje">
//（しかも、こんな夜更けに？）
（しかも、こんな時間に？）

//	St("C",700, @0,@0,"bu恵那_一休_think");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200140fje">
（まさか――！）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("SE*", 1000, 0, null);

//◆ＥＶ："ev/ev0000恵那これは事件！？.txt"

//◆ＳＥ：パララー！

	KoreJikenStart();
	DeleteAllSt(0,true);

	SoundPlay("@xbgm08_noint",1000,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200150fje">
（コレは、怪談『みーちゃんのひとりあそび』！？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	KoreJikenEnd(true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0046]
//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/100200160mzh">
「ひぐっ、う……うう……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200170fje">
（やっぱり……幻聴じゃない！）

{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200180fje">
（昔、イジメにあってこのトイレに閉じ込められた子が、一晩経って死体で発見された……）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200190fje">
（解剖の結果、彼女はなぜか、水の中に溺れて命を失ったことが発覚する……）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200200fje">
（それ以来、夜の銭形公園のトイレでは、誰もいないはずの個室に鍵が掛かり、そこから少女の泣き声が聞こえる）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200210fje">
（そしてその少女――みーちゃんの泣き声を聞いてしまった人間は、幻に囚われ自分も水の中で溺れ死に――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("C",700, @0,@0,"bu恵那_一休_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200220fje">
（いや……落ち着きなさい名探偵！）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200230fje">
（今はとにかく銃を届けなきゃいけないし。
　オカルティックな謎に構ってる場合じゃない！）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200240fje">
（大体ただ子供が泣いてるだけかもしれないし――）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 1000, 0, null);

//	TextBoxDelete(150);

{	DeleteAllSt(200,true);}


	CreateSE("SE11","seガヤ_交通少_l");
	MusicStart("SE11",1000,400,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//	St("C",700, @0,@0,"buブーa_通常_normal");
//	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/100200250buu">
「泣くなって。ほら、ケバブ、冷めるぜ」

//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/100200260mzh">
「ぅ……う、うん」

//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/100200270mzh">
「はむ、ん……はむ……」

{	St("C",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200280fje">
（あれ？　この声、確か……）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


{	ClockPass(1914);}


//◆場所：銭形公園_トイレ正面
	OnBG(10,"bg1702100銭形公園_トイレ正面_通常");
	FadeBG(0,true);


	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]

　恵那は足音を立てないよう、声の元を探す。

　泣き声の大元はトイレの中ではなく、その外。


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	PrintGO("上背景", 30000);
	OnBG(10,"bg1702100銭形公園_トイレ正面_通常");
	FadeBG(0,true);

	CreateMaskAXLSP("絵マ", 800, 0, 0, "ciスラッシュ_03_01", true, "ciスラッシュ_03_01z");
	CreateTextureSP("絵マ/絵背景", 100, 0, 0, "cg/bg/bg1702100銭形公園_トイレ正面_通常.jpg");
	Zoom("絵マ/絵背景", 0, 2000, 2000, null, true);

	CreateTextureSP("絵マ/絵立11", 101, -50, 125, "cg/bu/buミヅハ_通常_normal.png");//-28//72, -28
	CreateTextureEX("絵マ/絵立12", 101, -50, 125, "cg/bu/buミヅハ_通常_smile.png");//-28
	CreateTextureEX("絵マ/絵立21", 100, 260, -110, "cg/bu/buブーa_通常_happy.png");//-11//307, -84

//	DrawDelete("上背景", 200, 100, null, "slide_01_00_1", true);
	FadeDelete("上背景", 200, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]


//	St("ML",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/100200290mzh">
「はむはむ……はむはむ……」

{	Fade("絵マ/絵立21", 200, 1000, Dxl2, true);}
//	DeleteAllSt(200,false);}
//	St("MR",700, @0,@0,"buブーa_通常_happy");
//	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/100200300buu">
「美味いか？」

{	FadeDelete("絵マ/絵立11", 200, Axl3, false);
	Fade("絵マ/絵立12", 200, 1000, Dxl2, false);
}
//	DeleteAllSt(200,false);}
//	St("ML",700, @0,@0,"buミヅハ_通常_smile");
//	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/100200310mzh">
「…………ンマイ」


{	PrintGO("上背景", 30000);
	Delete("絵マ*");
	OnBG(10,"bg1702100銭形公園_トイレ正面_通常");
	FadeBG(0,true);
//	DrawDelete("上背景", 200, 100, null, "slide_01_00_1", true);
	FadeDelete("上背景", 200, null, true);
}

//	DeleteAllSt(200,false);}

{	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200320fje">
（ミヅハちゃん――！）

//	St("C",700, @0,@0,"bu恵那_通常_hard");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200330fje">
（誘拐……されたんだっけ？
　星さんは狂言とか言ってたけど、やっぱり本物？）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200340fje">
（ってか――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

	PrintGO("上背景", 30000);
	OnBG(10,"bg1702100銭形公園_トイレ正面_通常");
	FadeBG(0,true);

	CreateMaskAXLSP("絵マ", 800, 0, 0, "ciスラッシュ_03_01", true, "ciスラッシュ_03_01z");
	CreateTextureSP("絵マ/絵背景", 100, 0, 0, "cg/bg/bg1702100銭形公園_トイレ正面_通常.jpg");
	Zoom("絵マ/絵背景", 0, 2000, 2000, null, true);

	CreateTextureSP("絵マ/絵立11", 101, -50, 125, "cg/bu/buミヅハ_通常_normal.png");//-28
	CreateTextureSP("絵マ/絵立21", 100, 160, -80, "cg/bu/buブーa_通常_ero.png");//-11


//	DrawDelete("上背景", 200, 100, null, "slide_01_00_1", true);
	FadeDelete("上背景", 200, null, true);
	Shake("絵マ/絵立21", 300, 10, 0, 0, 0, 1000, Dxl1, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]


//◆音声指示：鼻息荒い
//	St("MR",700, @0,@0,"buブーa_通常_ero");
//	Shake("@StNameMR/MR*", 300, 10, 0, 0, 0, 1000, Dxl1, false);
//	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/100200350buu">
「――っ！　――っ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	PrintGO("上背景", 30000);
	Delete("絵マ*");
	OnBG(10,"bg1702100銭形公園_トイレ正面_通常");
	FadeBG(0,true);
//	DrawDelete("上背景", 200, 100, null, "slide_01_00_1", true);
	FadeDelete("上背景", 200, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200360fje">
（アレ、どう見ても誘拐じゃない！）


{	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200370fje">
（いくら急いでるからって――
　見捨てるわけには、いかないわよね）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

	PrintGO("上背景", 30000);
	OnBG(10,"bg1702100銭形公園_トイレ正面_通常");
	FadeBG(0,true);

	CreateMaskAXLSP("絵マ", 800, 0, 0, "ciスラッシュ_03_01", true, "ciスラッシュ_03_01z");
	CreateTextureSP("絵マ/絵背景", 100, 0, 0, "cg/bg/bg1702100銭形公園_トイレ正面_通常.jpg");
	Zoom("絵マ/絵背景", 0, 2000, 2000, null, true);

	CreateTextureSP("絵マ/絵立11", 101, -50, 125, "cg/bu/buミヅハ_通常_normal.png");//-28
	CreateTextureSP("絵マ/絵立21", 100, 160, -80, "cg/bu/buブーa_通常_ero.png");//-11

//	DrawDelete("上背景", 200, 100, null, "slide_01_00_1", true);
	FadeDelete("上背景", 200, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//	St("MR",700, @0,@0,"buブーa_通常_ero");
//	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/100200380buu">
「も、もう、下は濡れてないかなァ？」

//	DeleteAllSt(200,true);}

{	PrintGO("上背景", 30000);
	Delete("絵マ*");
	OnBG(10,"bg1702100銭形公園_トイレ正面_通常");
	FadeBG(0,true);
//	DrawDelete("上背景", 200, 100, null, "slide_01_00_1", true);
	FadeDelete("上背景", 200, null, true);
}
{	St("C",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200390fje">
（な――！？　あのヘンタイ！
　通報してるヒマもないわね）


{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200400fje">
（……やるっきゃない、か）




{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200410fje">
「――――ふぅ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

//	SetVolume("SE*", 1000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　壁に背をもたれ、気を落ち着かせるように深呼吸。


{	St("C",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200420fje">
（あいつらはふたり組）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200430fje">
（確か銃を持ってたけど……モデルガンでしょうね）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200440fje">
（こっちには、本物がある）

{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200450fje">
（――もちろん、弾はないんだけど）

{	St("C",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200460fje">
（問題は――）



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	SetVolume("@xbgm*", 1000, 0, null);

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorEXadd("絵色", 5000, "#FFFFFF");
	Fade("絵色", 200, 1000, null, true);
	CreateColorEXadd("絵色2", 5000, "#FFFFFF");
	Fade("絵色2", 0, 200, null, true);

	OnBG(10,"bg0603111半田明神_境内_通常");
	FadeBG(0,true);

	Fade("絵色", 300, 0, null, true);


	SetVolumeEX("SE11", 300, 0, null);

//◆演出指定：回想：1830恵那.nss

//1830恵那.nss[text0275]
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]

//◆音声指示：回想
{	St("MR",700, @200,@0,"buブーa_通常_shout");
Move("@StNameMR/MR*", 200, @-200, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/100200470buu">
「みそ、早く！」

//◆音声指示：回想
{Move("@StNameMR/MR*", 200, @-200, @0, Dxl1, false);
	DeleteAllSt(200,true);
}
{	St("ML",700, @200,@0,"buみそa_オラオラ_pride");
Move("@StNameML/ML*", 200, @-200, @0, Dxl1, false);
	Shake("@StNameML/ML*", 200, 0, 10, 0, 6, 1000, null, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100200480mso">
「えっさっ、ほいさっ、えっさっ、ほいさっ！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	SoundPlay("@xbgm08_noint",1000,450,true);

Move("@StNameML/ML*", 200, @-200, @0, Dxl1, false);
	Shake("@StNameML/ML*", 200, 0, 10, 0, 6, 1000, null, false);
	DeleteAllSt(200,true);

	TextBoxDelete(150);


//◆演出指定：回想：終了


	Fade("絵色", 300, 1000, null, true);
	Delete("絵色2");

//◆場所：銭形公園_トイレ正面
	OnBG(10,"bg1702100銭形公園_トイレ正面_通常");
	FadeBG(0,true);

	FadeDelete("絵色", 300, null, true);

	CreateSE("SE01","se環境_水道_l");
	MusicStart("SE01",5000,200,0,1000,null,true);

//	St("C",700, @0,@0,"bu恵那_一休_think");
//	FadeSt("C",200,true);
////【富士見恵那】
//<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200490fje">
//（確か、ふたり組だったような……）




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200500fje">
（もうひとりはどこに――？）

//◆ＳＥ：後から薄く水道を流す音がフェードイン

{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200510fje">
（あれ？　水道の音？）

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200520fje">
（トイレの中で手を洗ってるなら――）

{	St("C",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200530fje">
（今がチャンス！）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]

　ふたり組に気付かれないよう、恵那はトイレの中へと身を滑らせる。


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	SetVolume("SE01", 2000, 400, null);


	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

{	ClockPass(1915);}

//◆場所：銭形公園_トイレ中
	OnBG(10,"bg1703100銭形公園_トイレ中_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]

{	St("C",700, @0,@0,"buみそa_通常_sad");
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100200540mso">
「うへぇ……つめてぇ！」

{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200550fje">
（やっぱりいた――）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200560fje">
（こっちには、気付いてない。それに――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　銃の入ったドラムバッグは、足元に置かれたまま。


//	St("C",700, @0,@0,"bu恵那_通常_hard");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200570fje">
（モデルガンかどうかはわかんないけど――）


{	St("ML",700, @-50,@0,"buみそa_通常_normal");
Move("@StNameML/ML*", 200, @50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100200580mso">
「ん？　ブーか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SoundPlay("@xbgm22",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0155]

//◆音声指示：小声
{	St("MR",700, @50,@0,"bu恵那_銃構え正面normal");//bu恵那_通常_hard
	DeleteAllSt(200,false);
Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200590fje">
「動かないで」

{	DeleteAllSt(200,false);}
{	SetVolume("SE*", 500, 0, null);
	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100200600mso">
「なんの真似だぁ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	DeleteAllSt(200,false);}
//◆音声指示：小声
{	St("MR",700, @0,@0,"bu恵那_銃構え正面normal");//bu恵那_通常_hard
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200610fje">
「静かに」

//◆音声指示：小声
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200620fje">
「この銃が見えないの？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100200630mso">
「やめとけ」

//	St("C",700, @0,@0,"buみそa_通常_normal");
//	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100200640mso">
「バッグの中味、インド人が用意したモデルガンだし」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	DeleteAllSt(200,false);}
//◆音声指示：小声
{	St("MR",700, @0,@0,"bu恵那_銃構え正面normal");//bu恵那_通常_normal
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200650fje">
「それはアンタの足元」

//◆音声指示：小声
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200660fje">
「こいつは、本物よ」

//◆音声指示：小声
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200670fje">
「わかるでしょ」

{	DeleteAllSt(200,false);}
//◆音声指示：小声
{	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100200680mso">
「げ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//◆音声指示：小声
//	St("C",700, @0,@0,"buみそa_通常_normal");
//	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100200690mso">
「おいおい、待てってば！」

//◆音声指示：小声
//	St("C",700, @0,@0,"buみそa_通常_normal");
//	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100200700mso">
「オレたちは命令されただけだぜ」

{	DeleteAllSt(200,false);}
//◆音声指示：小声
{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200710fje">
「命令された――？」

//◆音声指示：小声
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200720fje">
「誰に？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	DeleteAllSt(200,false);}
//◆音声指示：小声
{	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100200730mso">
「ええと……なんて言ったっけ？
　そーいち、親分？」

{	DeleteAllSt(200,false);}
//◆音声指示：小声
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200740fje">
「双一？　河原屋双一のこと？」

{	DeleteAllSt(200,false);}
//◆音声指示：小声
{	St("ML",700, @0,@0,"buみそa_通常_pride");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100200750mso">
「あーそうそう！　それそれ！」


//◆音声指示：小声
//	St("C",700, @0,@0,"buみそa_通常_normal");
//	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100200760mso">
「そのそーいちの命令で、あのガキを誘拐しろって！」

//◆音声指示：小声
//	St("C",700, @0,@0,"buみそa_通常_normal");
//	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100200770mso">
「時間がたったら、ちゃんと元に戻してやるつもり――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	DeleteAllSt(200,false);}
//◆音声指示：小声
{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200780fje">
「じゃあ、なんで、パンツ持ってるの？」

{	DeleteAllSt(200,true);}
　恵那が冷徹に指摘する。

　流し台には、女児パンツが乗っかっていた。

//◆音声指示：小声
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200790fje">
「パンツ脱がせて、いったいなにをしようとしてたわけ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	DeleteAllSt(200,false);}
//◆音声指示：小声
{	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100200800mso">
「いやいやいやいや！　ない！　ないない！」

//◆音声指示：小声
//	St("C",700, @0,@0,"buみそa_通常_normal");
//	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100200810mso">
「そういうんじゃなくて！
　ガキがションベン漏らしたから！」


{	DeleteAllSt(200,true);}
//◆音声指示：遠くから
//	St("C",700, @0,@0,"buブーa_通常_normal");
//	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/100200820buu">
「おーい、みそ！　まだか！」

//◆音声指示：荒い息
//◆音声指示：遠くから
//	St("C",700, @0,@0,"buブーa_通常_normal");
//	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/100200830buu">
「な、な、なんなら、お、オデが！」

//◆音声指示：荒い息
//◆音声指示：遠くから
//	St("C",700, @0,@0,"buブーa_通常_normal");
//	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/100200840buu">
「オデが、パンツを洗っても！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1916);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//◆音声指示：小声
{	St("MR",700, @0,@0,"bu恵那_通常_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200850fje">
「…………変態」

//◆音声指示：小声
{	St("ML",700, @0,@0,"buみそa_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100200860mso">
「オレを一緒にすんな！」

//◆音声指示：小声
//	St("C",700, @0,@0,"buみそa_通常_normal");
//	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100200870mso">
「ってか、あいつがあんなだから、オレが洗ってやってんだろーが！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//◆音声指示：小声
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200880fje">
「ノーパン幼女を一緒にさせておくのも問題よ」

{	DeleteAllSt(200,false);}
//◆音声指示：小声
{	St("ML",700, @0,@0,"buみそa_通常_fear");
	Shake("@StNameML/ML*", 300, 5, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100200890mso">
「盲点！」



{	DeleteAllSt(200,true);}
//◆音声指示：遠くから
//	St("C",700, @0,@0,"buブーa_通常_normal");
//	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/100200900buu">
「みそ？　おいみそ！　どうした？」

//◆音声指示：荒い息
//◆音声指示：遠くから
//	St("C",700, @0,@0,"buブーa_通常_normal");
//	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/100200910buu">
「まさか！　ミヅハちゃんのぱんつであらぬことを！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//◆音声指示：小声
{	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100200920mso">
「あらぬ事ってなんだよ！」

{	DeleteAllSt(200,false);}
//◆音声指示：小声
{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200930fje">
「中に呼んで」

{	DeleteAllSt(200,false);}
//◆音声指示：小声
{	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100200940mso">
「え？」

{	DeleteAllSt(200,false);}
//◆音声指示：小声
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200950fje">
「いいから、中に呼んでってば」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	DeleteAllSt(200,false);}
//◆音声指示：小声
{	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100200960mso">
「…………」

{	DeleteAllSt(200,false);}
//◆音声指示：小声
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100200970fje">
「早く！」


{	DeleteAllSt(200,true);}
//◆音声指示：荒い息
//◆音声指示：遠くから
//	St("C",700, @0,@0,"buブーa_通常_normal");
//	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/100200980buu">
「くそー！　みそめ！　抜け駆けは断じて許さぬ！」

//◆音声指示：遠くへ
{	St("C",700, @-50,@0,"buみそa_通常_shout");
Move("@StNameC/C*", 200, @50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100200990mso">
「おい、ブー！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//◆音声指示：遠くへ
//	St("C",700, @0,@0,"buみそa_通常_normal");
//	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100201000mso">
「ちょっと、来てくれねーか？」

{	DeleteAllSt(200,true);}
//◆音声指示：荒い息
//◆音声指示：遠くから
//	St("C",700, @0,@0,"buブーa_通常_normal");
//	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/100201010buu">
「任せなさ――い！」



//◆ＳＥ：足音
{	CreateSE("SE01","se動作_走る04_l");
	MusicStart("SE01",300,700,0,1000,null,false);
WaitKey(300);
}
//◆演出指定：ブー、

{	St("C",700, @200,@0,"buブーa_オラオラ_shout");
Move("@StNameC/C*", 200, @-200, @0, Dxl3, false);
	Shake("@StNameC/C*", 200, 0, 10, 0, 6, 1000, null, false);
	FadeSt("C",200,true);}
{	SetVolume("SE01", 1000, 0, null);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/100201020buu">
「洗濯屋ブーちゃんの腕前、とくとご覧――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
{	St("C",700, @0,@0,"buブーa_オラオラ_normal");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/100201030buu">
「アレ？」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_銃構え正面normal");
	FadeSt("C",200,true);}
　銃を構える恵那を見て、ブーの動きが止まる。

{	DeleteAllSt(200,true);}
{	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100201040mso">
「ブー、気をつけろ」

//	St("C",700, @0,@0,"buみそa_通常_normal");
//	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100201050mso">
「コイツが持ってんのは、マジモンだ」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/100201060buu">
「お……おう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu恵那_銃構え正面normal");//bu恵那_通常_angry
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100201070fje">
「痛い目見たくなかったら、あそこに入って」

{	DeleteAllSt(200,true);}
　恵那は男便所の一番奥、大の個室に目配せする。


{	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/100201080buu">
「うんこ部屋か」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100201090mso">
「クソッ！」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100201100fje">
「そういうのはいいから入りなさい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1917);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"buブーa_通常_sad");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/100201110buu">
「……わかったよ」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100201120fje">
「アンタも一緒に入って」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buみそa_通常_normal");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100201130mso">
「するってーと、アレだな？」

//	St("C",700, @0,@0,"buみそa_通常_normal");
//	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100201140mso">
「クソもミソも一緒に――」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100201150fje">
「いいから！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
{	DeleteAllSt(200,false);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
{	St("ML",700, @0,@0,"buみそa_通常_normal");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100201160mso">
「あーはいはい！　わかったわかった！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	DeleteAllSt(200,true);}
//	TextBoxDelete(150);
WaitKey(1000);
	CreateTextureEX("絵ゆれ", 100, Center, Middle, "cg/bg/bg1703200銭形公園_トイレ中_奧閉まる.jpg");
	Fade("絵ゆれ", 200, 1000, null, true);
	OnBG(10,"bg1703200銭形公園_トイレ中_奧閉まる");
	FadeBG(0,true);

	CreateSE("SE01","se戦闘_打撃音04");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵ゆれ", 100, 30, 2, 0, 0, 500, Axl3, true);
	Shake("絵ゆれ", 200, 10, 20, 0, 0, 500, Axl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0301]


//	St("C",700, @0,@0,"buブーa_通常_normal");
//	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/100201170buu">
「ふがっ！　ちょ！　押すな！」

{	CreateSE("SE01","se戦闘_打撃音06");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵ゆれ", 600, 30, 0, 0, 0, 500, Axl3, false);
}
//	St("C",700, @0,@0,"buみそa_通常_normal");
//	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100201180mso">
「狭いから仕方ねーだろ！　腹引っ込めろ！」

{	CreateSE("SE01","se戦闘_打撃音07");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵ゆれ", 400, 40, 8, 20, 4, 500, Axl3, false);
}
//	St("C",700, @0,@0,"buブーa_通常_normal");
//	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/100201190buu">
「無茶言うな！」

{	CreateSE("SE01","se戦闘_打撃音01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵ゆれ", 300, 4, 24, 2, 4, 500, Axl3, false);
}
//	St("C",700, @0,@0,"buみそa_通常_normal");
//	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100201200mso">
「おいブー！　おめーちょっとくせーぞ！　風呂入れ！」

{	CreateSE("SE01","se戦闘_打撃音02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵ゆれ", 300, 20, 2, 10, 1, 500, Axl3, false);
}
//	St("C",700, @0,@0,"buブーa_通常_normal");
//	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/100201210buu">
「３日に一遍は入ってるっつーの！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]


{	St("C",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100201220fje">
「……やれやれ」

{	DeleteAllSt(200,true);}
//◆ＳＥ：閂をする
{	CreateSE("SE01","se戦闘_絞める");//se動作_閂かける
	MusicStart("SE01",0,700,0,1000,null,false);}
　恵那は取っ手にブラシを挟み込む。


//	St("C",700, @0,@0,"buブーa_通常_normal");
//	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/100201230buu">
「ん？　なんだ今の音」

{	CreateSE("SE01","se擬音_トイレガタガタ02_l");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeF4("絵ゆれ", 2000, 1000, 1000, 0, 0, Dxl1, false);
WaitKey(1000);
	SetVolume("SE01", 1000, 0, null);
}
//	St("C",700, @0,@0,"buみそa_通常_normal");
//	FadeSt("C",200,true);}

//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100201240mso">
「あ……開かねー！　鍵かけられた！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	SetVolume("SE0*", 1000, 0, null);

Delete("絵ゆれ");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100201250fje">
「ちょっとそこで辛抱してなさい」

{	St("C",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100201260fje">
「後でちゃんと警察が迎えに来るから」


{	DeleteAllSt(200,true);}

　恵那は、洗面台のパンツをギュッと絞る。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);

//あきゅん「素材：objエコバッグ_恵那1910」

//
	CreateSE("SE01","se動作_ジッパー開ける01");
	MusicStart("SE01",0,700,0,1000,null,false);
WaitKey(1000);

	CreateSE("SE02","se動作_バッグ落とす");
	MusicStart("SE02",0,700,0,1000,null,false);
WaitKey(200);

	CreateTextureEX("絵オブ", 100, Center, Middle, "cg/obj/objエコバッグ_恵那1910.png");
	Zoom("絵オブ", 0, 0, 1000, null, true);

	Zoom("絵オブ", 300, 1000, 1000, Dxl3, false);
	Fade("絵オブ", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0325]
　少し迷ったが、拳銃と共にバッグに押し込んだ。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolumeEX("@xbgm*", 2000, 0, null);


	CreateSE("SE01","se動作_ジッパー閉める01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Zoom("絵オブ", 300, 0, 1000, Dxl3, false);
	FadeDelete("絵オブ", 200, null, true);
WaitKey(500);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0326]

{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100201270fje">
「さて……と」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	DeleteAllSt(200,true);



{	ClockPass(1918);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0327]
//	St("C",700, @0,@0,"buみそa_通常_normal");
//	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100201280mso">
「ちょっと待った！」


//	St("C",700, @0,@0,"buみそa_通常_normal");
//	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100201290mso">
「アイツ、これからどうするつもりだ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100201300fje">
「半田明神に戻すけど」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0331]

//	St("C",700, @0,@0,"buみそa_通常_normal");
//	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100201310mso">
「それ、なんとかならねーかな？」

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100201320fje">
「なんとかって？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]

//	St("C",700, @0,@0,"buみそa_通常_normal");
//	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100201330mso">
「だってアイツ、街に出るの初めてだって言うんだぜ」


//	St("C",700, @0,@0,"buみそa_通常_normal");
//	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100201340mso">
「なんか……すごく、かわいそうでさ」

//	St("C",700, @0,@0,"buみそa_通常_normal");
//	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100201350mso">
「だからさ、双一親分のところにつれてく前に、色々見学させてやろうかと思って」

{	St("C",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100201360fje">
「子供が出歩く時間じゃないでしょ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0345]
//	St("C",700, @0,@0,"buブーa_通常_normal");
//	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/100201370buu">
「わかってるけど……頼む！
　アイス食わせるって、約束しちまったんだ」

//	St("C",700, @0,@0,"buブーa_通常_normal");
//	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/100201380buu">
「アイツ、すげえ楽しみにしてるんだって！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100201390fje">
「でもさっきケバブ食べてたでしょ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0351]

//	St("C",700, @0,@0,"buみそa_通常_normal");
//	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/100201400mso">
「甘いものは別腹って、姐さんも言ってた！」

//	St("C",700, @0,@0,"buブーa_通常_normal");
//	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/100201410buu">
「言ってた！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0355]
{	St("C",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100201420fje">
「……はいはい」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100201430fje">
「わかったわよ」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);



{	ClockPass(1919);}


	CreateSE("SE10","seガヤ_交通少_l");
	MusicStart("SE10",2000,400,0,1000,null,true);

//◆場所：銭形公園_トイレ正面
	OnBG(10,"bg1702100銭形公園_トイレ正面_通常");
	FadeBG(0,true);




	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
{	St("C",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/100201440mzh">
「おお、遅かったの――ぬぬ！？」

{	St("C",700, @0,@0,"buミヅハ_通常_surprise");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/100201450mzh">
「恵那！　なぜおぬしが！？」

{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100201460fje">
「誘拐犯から助けてあげたのに、そんな物言い？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/100201470mzh">
「う……あ、おお！　そうか！
　助けてくれたのか！」

{	St("ML",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/100201480mzh">
「おぬしのおかげで助かったぞ。感謝する」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100201490fje">
「はいはい、どういたしまして」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100201500fje">
「大丈夫？　怖いこと、されなかった？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/100201510mzh">
「ふん！　バカにするでない！」

{	St("ML",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/100201520mzh">
「わらわは神様じゃぞ！
　なにを恐れるというのだ！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100201530fje">
「あー、はいはい。すごいすごい」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/100201540mzh">
「バカにしおったな、この無礼者めが」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
{	St("ML",700, @0,@0,"buミヅハ_ダウナー_sad");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/100201550mzh">
「しかし……そうか……
　みそブーは、捕まってしもうたのか……」

//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/100201560mzh">
「…………」


{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100201570fje">
（う……そんなにアイス、食べたかったの？）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100201580fje">
（そんな顔されると……ううう……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
{	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100201590fje">
（ホントなら、すぐに銃を届けに行きたいけど。
　約束もしたし、しょうがないか……）



{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100201600fje">
「ね、ミヅハちゃん。
　なんか、甘いものとか食べたくない？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/100201610mzh">
「お……なんと！
　なぜわらわの心の中がわかったのじゃ！？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_ハルヒ_pride");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100201620fje">
「それはもちろん、私が名探偵だから。
　なんでもお見通しよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/100201630mzh">
「それはすごい！
　名探偵とは……そのようなものじゃったのか」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/100201640fje">
「それじゃ、アイス食べに行く？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/100201650mzh">
「うむ！　名探偵について行こう！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@SE*", 2000, 0, null);

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	EndScene();
}
