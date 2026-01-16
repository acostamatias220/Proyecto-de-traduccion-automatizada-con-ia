
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1850恵那.nss_MAIN
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
	$GameName = "1900恵那.nss";
	DeleteAllSt(200,true);

//■ムービー再生
	Quake_IsChaeck();
}

scene 1850恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="570">
////////////header////////////
//file name "1850恵那.nss"
//title "半田明神地下洞窟の謎を探れ！"
//previous "1830恵那.nss"

////////////footer////////////
//next "恵那" "1900恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);

{	ClockPass(1850);}

//※下倉注：半田明神社務所を先行して説明しておきたいのでここに入れます

	OnBG(10,"bg0604111半田明神_社務所_通常");
	FadeBG(0,true);

	KoreJikenSet();


//◆ＳＥ：ガサガサ！　草を掻き分けながら進む　→　削除
//	CreateSE("SE01","se動作_歩く05_l");
//	MusicStart("SE01",0,700,0,1000,null,true);



	CreateSE("SE01","se動物_イヌ_走る_l");
	MusicStart("SE01",500,400,0,1000,null,true);

	CreateSE("SE02","se動作_走る05_l");
	MusicStart("SE02",1000,700,0,1000,null,true);

	DrawDelete("上背景", 300, 100, null, "slide_01_01_1", true);


WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @50,@0,"bu恵那_通常_shout");
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100010fje">
「ユージロー！　どこまで――」

{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"buユージローa_通常_normal");
//	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/500100020ujr">
「わう――――ん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	SetVolumeEX("SE*", 2000, 0, null);


	CreateSE("SE11","se環境_林_l");
	MusicStart("SE11",2000,700,0,1000,null,true);

{	ClockPass(1851);}

	WaitKey(1000);


//◆場所：半田明神_涸れ井戸
	OnBG(10,"bg0606100半田明神_涸れ井戸_通常");
	FadeBG(0,true);



	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//	St("L",700, @0,@0,"bu恵那_通常_pinch");
//	FadeSt("L",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100030fje">
「え……？」

//	St("L",700, @0,@0,"bu恵那_一休_think");
//	FadeSt("L",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100040fje">
（こんなところに、井戸があるなんて――
　今まで何度も来たけど、一回も見た記憶がないわ）


//	St("L",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("L",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100050fje">
（しかも、蓋が開いて……ロープが続いてる）




</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
//	SetVolume("SE*", 500, 0, null);


//◆ＥＶ："ev/ev0000恵那これは事件！？.txt"

//◆ＳＥ：パララー！

	TextBoxDelete(150);

	KoreJikenStart();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100060fje">
「これは事件――！？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	KoreJikenEnd(true);

	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/bg0606100半田明神_涸れ井戸_通常.jpg");
	SetShade("絵背景",MEDIUM);
	Zoom("絵背景", 0, 2000, 2000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100070fje">
（見たことのない少女――いつにも増して張り切る星さん――河原屋双六――見えなかった井戸――）

{	St("C",19700, @0,@0,"fu恵那_一休_think");
	Fade("絵背景", 200, 1000, null, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100080fje">
（おかしい。絶対に、おかしいわ）

{	St("C",19700, @0,@0,"fu恵那_ハルヒ_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100090fje">
（絶対に、この下に何かがある――！！）




</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1852);}

	FadeDelete("絵背景", 200, null, false);
	DeleteAllSt(200,true);


//	TextBoxDelete(150);

//◆演出指定：少し時間をおいて

//◆ＳＥ：ボトッ！

	CreateSE("SE00","se戦闘_風切り音08");

	CreateSE("SE01","se動作_井戸もの落とす");
	CreateSE("SE02","se動作_井戸もの落とす");
SoundEffect("SE02","Echo",100,50,300,400);

	MusicStart("SE00",0,700,0,1000,null,false);

WaitKey(2000);

	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);

WaitKey(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//	St("C",700, @0,@0,"bu恵那_通常_hard");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100100fje">
（深いし、涸れてる）

//	St("C",700, @0,@0,"bu恵那_通常_pinch");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100110fje">
（ロープ、保つわよね……？）

//	DeleteAllSt(200,true);}

{	St("MR",700, @0,@0,"buユージローa_通常_sad");
	FadeSt("MR",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/500100120ujr">
「くぅぅぅん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
{	DeleteAllSt(200,true);}

/*
//※下倉注：以下の台詞、修正 2010/11/10

{	St("ML",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100130fje">
「わかってるわ。一緒に行きましょ」


{	DeleteAllSt(200,true);}
　愛犬を抱きかかえ、恵那はロープに手をかけた。
*/

{	St("ML",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100130fje">
「ごめん、ユージロー。
　ここで待ってて」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 1000, 0, null);


	TextBoxDelete(150);
	DeleteAllSt(200,true);

{	ClockPass(1853);}


	PrintGO("上背景", 5000);
	FadeDelete("上背景", 1000, null, true);

	CreateSE("SE01","se擬音_ロープきしむ");
	MusicStart("SE01",0,700,0,1000,null,false);



WaitKey(500);


//恵那、ユージロー、井戸におりて地下へ（音声加工：反響）
//voice/18/500100140fje～voice/18/500100570fje//β時（千代子）
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100140fje">
「ん――しょ、んん――」

//◆ＳＥ：ギシギシ
{	SetVolume("SE*", 1000, 0, null);}

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100150fje">
（なんとか――ロープは保ちそうね）


　恵那はゆっくりと、涸れ井戸を降りていく。






//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100160fje">
（ん……あれは……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100170fje">
（横穴？）


{	CreateSE("SE01","se擬音_ロープきしむ");
	MusicStart("SE01",0,700,0,1000,null,false);
}

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100180fje">
「ん……しょ！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolume("SE01", 1000, 0, null);


	CreateSE("SE02","se動作_足踏み");
	CreateSE("SE03","se動作_足踏み");
	SoundEffect("SE03","SEWERPIPE");

	MusicStart("SE02",0,700,0,1000,null,false);
SetFrequency("SE02", 10, 2000, Dxl3);
	MusicStart("SE03",0,700,0,1000,null,false);



{	ClockPass(1854);}


//	TextBoxDelete(150);

	PrintGO("上背景", 5000);

//◆場所：地下_通路
	OnBG(10,"bg0701100地下_通路_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
//	St("C",700, @0,@0,"bu恵那_通常_angry");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100190fje">
「――――ッ！！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100200fje">
（すごい……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


/*
//※下倉注：以下の台詞、修正 2010/11/10

{	DeleteAllSt(200,true);}
//◆音声指示：小声
{	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/500100220ujr">
「ハ……ハ……ハ……」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//◆音声指示：小声
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100225fje">
「うん。行きましょ」


{	DeleteAllSt(200,true);}
　地下ムロの奧からは、かすかに光が届いている。

　そちらへ向けて、ふたりはゆっくりと進んでいく。
*/




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100210fje">
（こんな場所が……半田明神にあったなんて……）

//	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//◆音声指示：小声
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100225fje">
（向こう側から……光？）



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	CreateSE("SE01","se動作_歩く01_l");
	CreateSE("SE02","se動作_歩く01_l");
	SoundEffect("SE02","SEWERPIPE");

	MusicStart("SE01",0,700,0,800,null,true);
	MusicStart("SE02",0,700,0,800,null,true);


//	TextBoxDelete(150);


{	ClockPass(1855);}




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("C",19700, @0,@0,"fu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100230fje">
（たしかこの辺り、昔はお酒とか味噌とか、そういう糀の特産地で、地下にムロがあるとか言ってたっけ……）


//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100240fje">
（もしかして、これがその地下ムロ？）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100250fje">
（天先屋の地下から繋がってるって、サイババアから聞いたことはあるけど……）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100260fje">
（まさかホントに、こんなところまで繋がってたの……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	DeleteAllSt(200,true);}
WaitKey(1000);

{	ClockPass(1856);}


	SetVolumeEX("SE*", 500, 0, null);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/500100270ksr">
「ここ……だな」

{	St("MR",19700, @0,@0,"fu恵那_通常_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100280fje">
（この先に――いる！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/500100290ksr">
「わざわざこのために、四国から呼んだんだ。
　よろしく頼むぜ」

//	St("C",700, @0,@0,"buミリＰa_通常_shout");
//	FadeSt("C",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/500100300mpt">
「ええ、任して頂戴」

//	St("MR",19700, @0,@0,"fu恵那_一休_think");
//	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100310fje">
（ふたりいる……？）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

{	ClockPass(1857);}

{	St("C",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("C",200,true);}

	CreateSE("SE01","se動作_葉っぱむしる");
	CreateTextureEX("絵演物", 1010, Center, Middle, "cg/obj/obj太三郎の葉っぱ.png");
	Move("絵演物", 0, @0, @120, null, true);

	MusicStart("SE01",0,1400,0,1500,null,false);
	Move("絵演物", 300, @0, @-120, Dxl1, false);
	Fade("絵演物", 300, 1000, null, true);

	Wait(1000);

	FadeDelete("絵演物", 500, null, true);

//◆演出指示：気合い
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]
//	St("C",700, @0,@0,"buミリＰa_通常_shout");
//	FadeSt("C",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/500100320mpt">
「ふん…………ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Shake("@StNameC/C*", 200, 2, 0, 2, 0, 500, Axl3, false);

	CreateSE("SE01","se環境_電撃");//se環境_雷01
	MusicStart("SE01",0,500,0,1000,null,true);

	CreateColorEXadd("絵色", 5000, "#FFFF99");
	Fade("絵色", 0, 600, null, true);

	Wait(100);

	SetVolume("SE01", 500, 0, null);
	FadeDelete("絵色", 500, null, false);

	DeleteAllSt(200,true);

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//	St("MR",19700, @0,@0,"fu恵那_通常_pinch");
//	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100330fje">
（え……何？）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100340fje">
（……？）

//	St("MR",19700, @0,@0,"fu恵那_通常_hard");
//	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100350fje">
（……なにが、起こってるの？）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

{	ClockPass(1858);}

//aba2400恵那.nssタイプスリップ？

//◆演出指定：稲光
//	TextBoxDelete(150);

	CreateSE("SE01","se環境_電撃");//se環境_雷01
	MusicStart("SE01",500,500,0,1000,null,true);


	St("C",700, @0,@0,"buミリＰa_通常_shout");
	Shake("@StNameC/C*", 1200, 2, 1, 2, 0, 500, Axl3, false);
	FadeSt("C",200,true);

	CreateColorEXadd("絵色", 1500, "#FFFF99");
	CreateProcess("絵p稲光", 150, 0, 0, "ina1850");
	Request("絵p稲光",Start);

//◆演出指示：気合い
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0095]
//	St("C",700, @0,@0,"buミリＰa_通常_shout");
//	FadeSt("C",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/500100360mpt">
「はぁッ、んん…………ん……！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Delete("絵p稲光");
	SetVolume("SE01", 100, 0, null);

	DeleteAllSt(200,true);

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//	St("MR",19700, @0,@0,"fu恵那_通常_pinch");
//	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100370fje">
「――――ッ！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100380fje">
（なんか……すごく、まずいかも――）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100390fje">
（誰か、助けを呼びに――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);


	CreateSE("SE01","se環境_電撃");//se環境_雷01
	MusicStart("SE01",500,700,0,1000,null,true);


	St("C",700, @0,@0,"buミリＰa_通常_shout");
	Shake("@StNameC/C*", 1800, 4, 2, 4, 0, 500, Axl3, false);
	FadeSt("C",200,true);

	CreateColorEXadd("絵色", 1500, "#FFFF99");
	CreateProcess("絵p稲光", 150, 0, 0, "ina1850b");
	Request("絵p稲光",Start);


//◆演出指示：気合い
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0105]
//	St("C",700, @0,@0,"buミリＰa_通常_shout");
//	FadeSt("C",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/500100400mpt">
「ぉ……お、おおおおお……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Delete("絵p稲光");
	Delete("絵色");
	SetVolume("SE01", 100, 0, null);

//	TextBoxDelete(150);
	DeleteAllSt(200,true);


//◆ＳＥ：稲妻
//◆演出指定：稲光バチバチ


WaitKey(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//	St("MR",19700, @0,@0,"fu恵那_通常_think");
//	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100410fje">
（大人ふたりに、私ひとりで勝てる？）

//	St("MR",19700, @0,@0,"fu恵那_通常_shout");
//	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100420fje">
（ええいっ！　迷ってるヒマはない！）


{	DeleteAllSt(200,true);
	SoundPlay("@xbgm01_noint",0,450,true);}


{	St("MR",700, @0,@50,"bu恵那_ハルヒ_angry");
Move("@StNameMR/MR*", 200, @0, @-50, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100430fje">
「アンタたち！　待ちなさい！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100440fje">
「そんなとこで、いったい何を――」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"buユージローa_通常_angry");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 200, 0, 10, 0, 0, 400, Axl3, false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/500100450ujr">
「わう――んッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1859);}

/*
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_ハルヒ_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100460fje">
「え……？」

{	DeleteAllSt(200,false);}
//	St("ML",700, @200,@0,"buユージローa_通常_angry");
//	Shake("@StNameML/ML*", 200, 0, 30, 0, 0, 500, Axl3, false);
//Move("@StNameML/ML*", 200, @-200, @0, Dxl1, false);
//	FadeSt("ML",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/500100470ujr">
「わうわうわうわうっ！！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100480fje">
「ユージロー！　ちょっと――」

{	DeleteAllSt(200,false);}
{	St("ML",700, @50,@0,"buユージローa_通常_angry");
Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	Shake("@StNameML/ML*", 200, 0, 30, 0, 0, 500, Axl3, false);
	FadeSt("ML",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/500100490ujr">
「がるるるるっ！！」

{	DeleteAllSt(200,false);}
{	St("L",700, @50,@0,"bu双六a_通常_normal");
Move("@StNameL/L*", 200, @-50, @0, Dxl3, false);
	FadeSt("L",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/500100500ksr">
「ぬおっ！　なんだ！！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buミリＰa_通常_shock");
Move("@StNameML/ML*", 200, @50, @0, Dxl3, false);
	FadeSt("ML",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/500100510mpt">
「い、犬！？」
*/

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_ハルヒ_sigh");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100460fje">
「ユージロー？　なんでッ！？」

{	DeleteAllSt(200,false);}
//	St("ML",700, @200,@0,"buユージローa_通常_angry");
//	Shake("@StNameML/ML*", 200, 0, 30, 0, 0, 500, Axl3, false);
//Move("@StNameML/ML*", 200, @-200, @0, Dxl1, false);
//	FadeSt("ML",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/500100470ujr">
「わうわうわうわうっ！！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100480fje">
「まさか追いかけてきたの！？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @50,@0,"buユージローa_通常_angry");
Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	Shake("@StNameML/ML*", 200, 0, 30, 0, 0, 500, Axl3, false);
	FadeSt("ML",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/500100490ujr">
「がるるるるっ！！」

{	DeleteAllSt(200,false);}
{	St("L",700, @50,@0,"bu双六a_通常_normal");
Move("@StNameL/L*", 200, @-50, @0, Dxl3, false);
	FadeSt("L",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/500100500ksr">
「ぬおっ！　なんだ！！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buミリＰa_通常_shock");
Move("@StNameML/ML*", 200, @50, @0, Dxl3, false);
	FadeSt("ML",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/500100510mpt">
「い、犬！？」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//	TextBoxDelete(150);

//◆演出指定：稲光と共に地鳴り酷くなる


	CreateSE("SE02","se環境_地鳴り02_l");
	MusicStart("SE02",0,700,0,1000,null,true);

	CreateSE("SE01","se環境_雷02");
	MusicStart("SE01",0,700,0,1000,null,true);

CreateName("絵カメラ");//CreateCamera("絵カメラ", 0, 0, 1000);
SetAlias("絵カメラ","絵カメラ");
	CreateTextureSP("絵カメラ/絵背景", 10, Center, Middle, "cg/bg/bg0701100地下_通路_通常.jpg");
	CreateTextureEX("絵カメラ/絵立11", 700, 112, 174, "cg/bu/buユージローa_通常_angry.png");//800x498
	CreateTextureEX("絵カメラ/絵立21", 700, 147, 17, "cg/bu/buミリＰa_通常_shock.png");//729x655
	CreateTextureEX("絵カメラ/絵立22", 700, 147, 17, "cg/bu/buミリＰa_通常_shout.png");//729x655

	//CreateColorEXadd("絵色", 0, "#FFFF99");
	CreateColor("絵カメラ/色",1000,-50,-50, 1200,700,#FFFF99);
	Request("絵カメラ/色",AddRender);
	SetAlias("絵カメラ/色","絵色");
	Fade("絵カメラ/色", 0, 500, null, true);
	
	CreateProcess("絵p稲光", 150, 0, 0, "ina1850c");
	Request("絵p稲光",Start);

//	Shake("@絵カメラ/絵*", 200000, 2, 2, 4, 6, 500, Axl3, false);
	CreateProcess("絵pゆれ", 150, 0, 0, "ina1850d");
	Request("絵pゆれ",Start);

WaitKey(1000);

	Fade("絵カメラ/絵立11", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//	St("C",700, @0,@0,"buユージローa_通常_angry");
//	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/500100520ujr">
「がるるっ！　わうわうわう！！」

{	FadeDelete("絵カメラ/絵立11", 200,  Axl3, true);
	Fade("絵カメラ/絵立21", 200, 1000, Dxl2, true);
}
//	St("C",700, @0,@0,"buミリＰa_通常_shock");
//	FadeSt("C",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/500100530mpt">
「やだちょっと！　放しなさいって！」

{	Fade("絵カメラ/絵立22", 200, 1000, Dxl2, true);
	Delete("絵カメラ/絵立21");
}
//	St("C",700, @0,@0,"buミリＰa_通常_shout");
//	FadeSt("C",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/500100540mpt">
「今放さないと――ぎゃああっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	FadeDelete("絵カメラ/絵立2*", 200,  Axl3, true);

	SetVolume("SE0*", 1000, 0, null);


	CreateSE("SE11","se環境_雷01");
	MusicStart("SE11",0,700,0,1000,null,false);
Delete("絵p稲光");
	Delete("@OnBG*"););

	Shake("@絵カメラ/絵*", 5000, 10, 20, 10, 20, 500, Axl3, false);

	Fade("@絵色", 0, 1000, null, true);
	Fade("@絵色", 1500, 0, null, true);
	Fade("@絵カメラ/*", 5000, 0, null, false);


	CreateSE("SE03","se戦闘_倒壊03");//se環境_荷物崩れる
	MusicStart("SE03",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//	DeleteSt("MR", 200,true);}
//St("ML",700, @0,@0,"bu双六a_通常_shout");
//	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/500100550ksr">
「ぬわああっ！！」

//	DeleteSt("ML", 200,true);}
//	St("MR",700, @0,@0,"buユージローa_通常_hard");
//	FadeSt("MR",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/500100560ujr">
「きゃうううう――――ん！」

//	DeleteSt("MR", 200,true);}
//	St("C",700, @0,@0,"bu恵那_通常_shout");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/500100570fje">
「ユージロ――――ッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 1000, 0, null);

	SetVolume("SE*", 2000, 0, null);
	TextBoxDelete(150);

//◆演出指定：地鳴り酷く・天井崩れる
//	TextBoxDelete(150);

//	PrintGO("上背景", 5000);
//	FadeDelete("上背景", 1000, null, true);

	CreateColorEX("絵黒幕", 25000, "BLACK");
	//DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Fade("絵黒幕", 1000, 1000, null, true);

Delete("@絵カメラ");
Delete("絵pゆれ");
WaitKey(1000);

	PrintBG("上背景", 30000);
	ClockDelete(0,true);
	Delete("上背景");

	EndScene();
}
