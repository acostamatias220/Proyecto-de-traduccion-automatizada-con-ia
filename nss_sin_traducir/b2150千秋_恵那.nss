
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene b2150千秋_恵那.nss_MAIN
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

	if($CharaName=="千秋"){
		$GameName = "b2200千秋_恵那.nss";
	}else if($CharaName=="恵那"){
		$GameName = "b2200千秋_恵那.nss";
	}else{
		$GameName = "b2200千秋_恵那.nss";
	}

}

scene b2150千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="650">
////////////header////////////
//file name "b2150千秋_恵那.nss"
//title "自分にできること"
//previous "b2144千秋_恵那.nss"

////////////footer////////////
//next "千秋" "b2200千秋_恵那.nss"
//next "恵那" "b2200千秋_恵那.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆時間：ジャンプ
{	ClockPass(2152);}

	if($PreGameName=="b2144千秋_恵那.nss"){

	CreateColorSP("絵色黒", 20000, "#000000");
	FadeDelete("@上背景", 2000, null, true);

	CreateTextureEX("絵背景100", 30, Center, 0, "cg/bg/bg0103211秋葉原_中央通り_閉店.jpg");
	Fade("絵背景100", 0, 1000, null, false);
	SetShade("絵背景100", MEDIUM);

	OnBG(10,"bg0103211秋葉原_中央通り_閉店");
	FadeBG(0,true);

	WaitKey(2000);
	DrawDelete("絵色黒", 1000, 100, null, "blind_01_00_1", true);

	}else{

	CreateTextureEX("絵背景100", 30, Center, 0, "cg/bg/bg0103211秋葉原_中央通り_閉店.jpg");
	Fade("絵背景100", 0, 1000, null, false);
	SetShade("絵背景100", MEDIUM);

	OnBG(10,"bg0103211秋葉原_中央通り_閉店");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

	}

/*
	CreateTextureEX("絵背景100", 3000, Center, 0, "cg/bg/bg2401100空_上空_通常.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	FadeDelete("上背景", 0, null, true);


//◆場所：秋葉原_中央通り
	SceneOut(5000, 1000, "blind_01_01_0");

	Delete("絵背景100");

	CreateTextureEX("絵背景100", 30, Center, 0, "cg/bg/bg0103211秋葉原_中央通り_閉店.jpg");
	Fade("絵背景100", 0, 1000, null, false);
	SetShade("絵背景100", MEDIUM);

	OnBG(10,"bg0103211秋葉原_中央通り_閉店");
	FadeBG(0,true);

	SceneIn(1000, "blind_01_01_1");
*/

	CreateSE("SE00","seメカ_車_トラックエンジン_l");
	CreateSE("SE01","seガヤ_交通_l");
	MusicStart("SE00",2000,300,0,1000,null,true);
	MusicStart("SE01",2000,500,0,1000,null,true);

//あきゅん「修正指示：上下の背景の優先度を100未満に設定をお願い致します」
//★ wam井野 立ち絵に背景をかぶせておくのはやはり無理があったかなーと思いましたのでCreateAXLWindowEXでの演出に変更しました。また、背景の振動もやめました。 10/11/18


//窓準備
	CreateAXLWindowEX("絵窓", "Y", 1600, 96, 352, false);
	WindowAXLZoom("絵窓", "Y", 0, 0, null, true);
	CreateTextureSP("絵窓/絵背景", 1520, Center, Middle, "cg/bg/bg0103211秋葉原_中央通り_閉店.jpg");
	Zoom("絵窓/絵背景", 0, 2000, 2000, Dxl2, true);
	SetShade("絵窓/絵背景", heavy);
	Move("絵窓/絵背景", 0, @512, @0, null, true);
	Move("絵窓/絵背景", 600000, @-1024, @0, null, false);

//キャラ準備
	CreateTextureEX("絵窓/絵立絵", 1530, center, middle, "cg/bu/bu恵那_哀愁_sad.png");
	CreateTextureEX("絵窓/絵立絵2", 1530, center, middle, "cg/bu/bu村崎_通常_normal.png");

//動作
	Move("絵窓/絵立絵", 0, @200, @30, Dxl2, true);
	Fade("絵窓/絵立絵", 200, 1000, null, false);
	Move("絵窓/絵立絵", 300, @-50, @0, Dxl2, false);
	WindowAXLZoom("絵窓", "Y", 200, 1000, Dxl2, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100010fje">
「このトラック……大丈夫なんですか？」

{
	Move("絵窓/絵立絵2", 0, @-200, @30, Dxl2, true);
	Move("絵窓/絵立絵2", 300, @50, @0, Dxl2, false);
	Fade("絵窓/絵立絵", 300, 0, null, false);
	Fade("絵窓/絵立絵2", 200, 1000, null, true);

}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/500100020msi">
「ええええ、問題ありません」

{
	CreateTextureEX("絵窓/絵立絵", 1530, center, middle, "cg/bu/bu恵那_一休_sigh.png");
	Move("絵窓/絵立絵", 0, @150, @30, Dxl2, true);
	Fade("絵窓/絵立絵2", 300, 0, null, false);
	Fade("絵窓/絵立絵", 200, 1000, null, false);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100030fje">
「サイドミラー、取れかけてますけど」


{
	CreateTextureEX("絵窓/絵立絵2", 1530, center, middle, "cg/bu/bu村崎_通常_normal.png");
	Move("絵窓/絵立絵2", 0, @-150, @30, Dxl2, true);
	Fade("絵窓/絵立絵", 300, 0, null, false);
	Fade("絵窓/絵立絵2", 200, 1000, null, false);
}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/500100040msi">
「いつものことですから」

{
	Fade("絵窓/絵立絵2", 300, 0, null, false);
	Fade("絵窓/絵立絵", 200, 1000, null, false);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100050fje">
「…………はぁ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2153);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]

{
	CreateTextureEX("絵窓/絵立絵2", 1530, center, middle, "cg/bu/bu恵那_通常_sigh.png");
	Move("絵窓/絵立絵2", 0, @150, @30, Dxl2, true);
	Fade("絵窓/絵立絵", 300, 0, null, false);
	Fade("絵窓/絵立絵2", 200, 1000, null, false);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100060fje">
「それにしても、ちょっと狭い……かな？」


{
	CreateTextureEX("絵窓/絵立絵", 1530, center, middle, "cg/bu/bu千秋_通常_pain.png");
	Move("絵窓/絵立絵", 0, @0, @30, Dxl2, true);
	Fade("絵窓/絵立絵2", 300, 0, null, false);
	Move("絵窓/絵立絵", 500, @0, @30, Dxl2, false);
	Fade("絵窓/絵立絵", 200, 1000, null, true);
	Shake("絵窓/絵立絵", 300, 10, 0, 0, 0, 500, null, false);
}

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/500100070kit">
「うぐぐぐ……おえっ！」

{
	CreateTextureEX("絵窓/絵立絵2", 1530, center, middle, "cg/bu/bu恵那_ハルヒ_angry.png");
	Move("絵窓/絵立絵2", 0, @150, @30, Dxl2, true);
	Fade("絵窓/絵立絵", 300, 0, null, false);
	Fade("絵窓/絵立絵2", 200, 1000, null, false);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100080fje">
「ちょっと！　こんなところで戻さないでよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//あきゅん「修正指示：窓枠解除の際に潜ませて立ち絵が見えてしまっているので修正して下さい」



	CreateSE("SE02","se動作_衣擦れ");
	MusicStart("SE02",0,700,0,1000,null,false);

	SetVolumeEX("@SE00", 2000, 200, NULL);
	SetVolumeEX("@SE01", 2000, 200, NULL);

	TextBoxDelete(150);

	DeleteAllSt(200,true);

//EX収納
	WindowAXLZoom("絵窓", "Y",200, 0, Axl2, true);
	Fade("絵窓/絵立絵2", 300, 0, null, false);


	St("C",19010, @-50,@0,"fu恵那_一休_sigh");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100090fje">
「ん？　この感触……」

{	St("C",19010, @0,@0,"fu恵那_哀愁_worry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100100fje">
「なんか……ここら辺……硬いんだけど……」

{
	DeleteAllSt(200,false);

//	St("C",700, @0,@0,"bu千秋_通常_sigh");
//	FadeSt("C",200,true);
//	Shake("@StNameC/C*", 300, 5, 0, 0, 0, 500, null, false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/500100110kit">
「ぅうっ、ぅ……ぅ……ぞう……ピンクの……ぞう……」

{	St("C",19010, @0,@0,"fu恵那_通常_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100120fje">
「これってもしかして……」


{	St("C",19010, @0,@0,"fu恵那_哀愁_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100130fje">
「…………」

{	Move("@StNameC/C*", 1000, @0, @50, Dxl2, false);
	DeleteAllSt(1000,false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100140fje">
「そ――っと……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]

　恵那は、千秋の服に指を這わせ――


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100150fje">
「……あった」


{	St("C",19010,@0,@30,"fu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100160fje">
「あった……ホントに、あった……」

{	St("C",19010, @0,@0,"fu恵那_一休_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100170fje">
「なんで、アザナエルがこんなところに？」

{	St("C",19010, @0,@0,"fu恵那_哀愁_worry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100180fje">
「千秋、まさかアンタ――！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2154);}


//	TextBoxDelete(150);

	DeleteAllSt(200,true);


//左窓準備EX
	CreateAXLWindowEX("絵窓", "X", 1600, 160, 256, false);
	WindowAXLZoom("絵窓", "X", 0, 0, null, false);
	CreateTextureSP("絵窓/絵背景", 1520, 0, 0, "cg/bg/bg0103211秋葉原_中央通り_閉店.jpg");
	Move("絵窓/絵背景", 0, @0, @0, null, true);
	Zoom("絵窓/絵背景", 0, 2000, 1000, Dxl2, true);
	SetShade("絵窓/絵背景", heavy);


//キャラ準備
	CreateTextureEX("絵窓/絵立絵", 1530, center, middle, "cg/bu/bu村崎_通常_normal.png");
	Move("絵窓/絵立*", 0, @-222, @40, null, true);

//動作
	Fade("絵窓/絵立絵", 200, 1000, null, false);
	WindowAXLZoom("絵窓", "X", 200, 1000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]


{
//	St("C",700, @0,@0,"bu村崎_通常_normal");
//	FadeSt("C",200,true);
}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/500100190msi">
「ん？　どうかしましたか？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//収納
	WindowAXLZoom("絵窓", "X",200, 0, Axl2, true);
//	Delete("@絵窓*");


//右窓準備EX
	CreateAXLWindowEX("絵窓", "X", 1600, 608, 256, false);
	WindowAXLZoom("絵窓", "X", 0, 0, null, false);
	CreateTextureSP("絵窓/絵背景", 1520, 0, 0, "cg/bg/bg0103211秋葉原_中央通り_閉店.jpg");
	Move("絵窓/絵背景", 0, @0, @0, null, true);
	Zoom("絵窓/絵背景", 0, 2000, 2000, Dxl2, true);
	SetShade("絵窓/絵背景", heavy);

//キャラ準備
	CreateTextureEX("絵窓/絵立絵", 1530, center, middle, "cg/bu/bu恵那_哀愁_pinch.png");
	Move("絵窓/絵立*", 0, @222, @60, null, true); //e

//動作
	Fade("絵窓/絵立絵", 200, 1000, null, false);
	WindowAXLZoom("絵窓", "X", 200, 1000, Dxl2, true);

//	St("C",700, @0,@0,"bu恵那_一休_smile");
//	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100200fje">
「あ、いえいえ！　なんでもないです！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//収納
	WindowAXLZoom("絵窓", "X",200, 0, Axl2, true);
//	Delete("@絵窓*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]

　恵那はアザナエルをポケットに隠し、作り笑い。

//◆音声指示：小声
{
//	St("C",700, @0,@0,"bu千秋_通常_sigh");
//	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/500100210kit">
「アリクイが……アリクイが……」

{
	CreatePlainSP("絵板写", 5000);
	Wait(16);
//窓準備
	CreateAXLWindowEX("絵窓", "Y", 1600, 96, 352, false);
	WindowAXLZoom("絵窓", "Y", 0, 0, null, true);
	CreateTextureSP("絵窓/絵背景", 1520, Center, Middle, "cg/bg/bg0103211秋葉原_中央通り_閉店.jpg");
	Zoom("絵窓/絵背景", 0, 2000, 2000, Dxl2, true);
	SetShade("絵窓/絵背景", heavy);
	Move("絵窓/絵背景", 0, @512, @0, null, true);
	Move("絵窓/絵背景", 600000, @-1024, @0, null, false);

//キャラ準備
	CreateTextureEX("絵窓/絵立絵", 1530, center, middle, "cg/bu/bu村崎_通常_pinch.png");
	Move("絵窓/絵立絵", 0, @-150, @30, Dxl2, true);
	Delete("絵板写");

//動作
	Fade("絵窓/絵立絵", 200, 1000, null, false);
	WindowAXLZoom("絵窓", "Y", 200, 1000, Dxl2, true);

}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/500100220msi">
「彼女――じゃなくて彼、やっぱり千秋君なんですか？」


{
	CreateTextureEX("絵窓/絵立絵2", 1530, center, middle, "cg/bu/bu恵那_一休_sigh.png");
	Move("絵窓/絵立絵2", 0, @150, @30, Dxl2, true);
	Fade("絵窓/絵立絵", 300, 0, null, false);
	Fade("絵窓/絵立絵2", 200, 1000, null, false);
}

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100230fje">
「みたいですね。
　なんでこんな格好してるのやら……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//EX収納
	WindowAXLZoom("絵窓", "Y",200, 0, Axl2, true);
	Delete("@絵窓*");

	TextBoxDelete(150);

	CreateColorEX("黒幕", 25000, "BLACK");
	Fade("黒幕", 300, 1000, null, true);

	CreateTextureEXmul("影", 5000, Center, Middle, "cg/data/slide_02_00_0.png");
	CreateTextureEXmul("影2", 5000, Center, Middle, "cg/data/slide_02_00_0.png");
	Rotate("影", 0, @0, @0, 285, null,true);
	Rotate("影2", 0, @0, @0, 75, null,true);
	Zoom("影*", 0, 2000, 2000, null, true);
	Fade("影", 0, 800, null, false);

	Shake("絵背景100", 0, 0, 1, 0, 0, 200, null, false);
	Zoom("絵背景100", 0, 2500, 2500, null, true);
	SetShade("絵背景100", heavy);
	MusicStart("@xbgm11",0,450,0,1000,null,true);
	SetTone("絵背景100", Monochrome);

	St("L",700, @0,@0,"bu村崎_通常_fear");
	Zoom("@StNameL/L*", 0, 1200, 1200, null, true);
	Request("@StNameL/L*", Smoothing);
	SetTone("@StNameL/L*", Monochrome);

	St("R",700, @0,@0,"bu恵那_通常_think");
	Zoom("@StNameR/R*", 0, 1200, 1200, null, true);
	Request("@StNameR/R*", Smoothing);
	SetTone("@StNameR/R*", Monochrome);

	FadeSt("L",200,false);
	FadeSt("R",200,true);

	Fade("黒幕", 300, 0, null, true);


{	ClockPass(2155);}

	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]

//※北原メモ：→恵那と村崎の独り言が同時タスクで進むシーン、独り言は変わりばんこの方が流れ的にキレイかな、と思いました。演出組む際、両方試してみてください。
//あきゅん「修正指示：独り言の流れは交互にしてください。アクティブ時と非アクティブ時にスポットライト変更的な演出に変更をお願いします」

//★ wam井野 すみません交互版を加えるのを失念しておりました。 10/11/18


//◆音声指示：独り言
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100240fje">
「鈴姉に強要されて……よね？」

//◆音声指示：独り言
{
	Fade("影", 200, 0, null, false);
	Fade("影2", 200, 900, null, false);
	St("L",700, @0,@0,"bu村崎_通常_normal");
	Zoom("@StNameL/L*", 0, 1200, 1200, null, true);
	Request("@StNameL/L*", Smoothing);
	SetTone("@StNameL/L*", Monochrome);
	FadeSt("L",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/500100270msi">
「千秋君の写真……」

//◆音声指示：独り言
{
	Fade("影", 200, 900, null, false);
	Fade("影2", 200, 0, null, false);
	St("R",700, @0,@0,"bu恵那_通常_sigh");
	Zoom("@StNameR/R*", 0, 1200, 1200, null, true);
	Request("@StNameR/R*", Smoothing);
	SetTone("@StNameR/R*", Monochrome);
	FadeSt("R",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100250fje">
「まさか……こういう趣味とかないよね？」

//◆音声指示：独り言
{
	Fade("影", 200, 0, null, false);
	Fade("影2", 200, 900, null, false);
	St("L",700, @0,@0,"bu村崎_通常_fear");
	Zoom("@StNameL/L*", 0, 1200, 1200, null, true);
	Request("@StNameL/L*", Smoothing);
	SetTone("@StNameL/L*", Monochrome);
	FadeSt("L",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/500100280msi">
「いや、見た目だけじゃ男の子ってわかんないけど……」

//◆音声指示：独り言
{
	Fade("影", 200, 900, null, false);
	Fade("影2", 200, 0, null, false);
	St("R",700, @0,@0,"bu恵那_通常_pinch");
	Zoom("@StNameR/R*", 0, 1200, 1200, null, true);
	Request("@StNameR/R*", Smoothing);
	SetTone("@StNameR/R*", Monochrome);
	FadeSt("R",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100260fje">
「ない、ないはず……でも、いやもしかしたら……」

//◆音声指示：独り言
{
	Fade("影", 200, 0, null, false);
	Fade("影2", 200, 900, null, false);
	St("L",700, @0,@0,"bu村崎_通常_happy");
	Zoom("@StNameL/L*", 0, 1200, 1200, null, true);
	Request("@StNameL/L*", Smoothing);
	SetTone("@StNameL/L*", Monochrome);
	FadeSt("L",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/500100290msi">
「でも、いや……いいのか？　売れてしまえば……」




</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("黒幕", 300, 1000, null, true);

	Delete("影*");
	DeleteAllSt(0,false);

	Zoom("絵背景100", 0, 1000, 1000, null, true);
	SetShade("絵背景100", MEDIUM );
	SetTone("絵背景100", NULL);

	DeleteAllSt(0,false);

	Fade("黒幕", 300, 0, null, true);

	SetVolumeEX("@x*", 2000, 0, NULL);


//窓準備
	CreateAXLWindowEX("絵窓", "Y", 1600, 96, 352, false);
	WindowAXLZoom("絵窓", "Y", 0, 0, null, true);
	CreateTextureSP("絵窓/絵背景", 1520, Center, Middle, "cg/bg/bg0103211秋葉原_中央通り_閉店.jpg");
	Zoom("絵窓/絵背景", 0, 2000, 2000, Dxl2, true);
	SetShade("絵窓/絵背景", heavy);
	Move("絵窓/絵背景", 0, @512, @0, null, true);
	Move("絵窓/絵背景", 600000, @-1024, @0, null, false);

//キャラ準備
	CreateTextureEX("絵窓/絵立絵", 1530, center, middle, "cg/bu/bu恵那_通常_sigh.png");
	CreateTextureEX("絵窓/絵立絵2", 1530, center, middle, "cg/bu/bu村崎_通常_pinch.png");

//動作
	Move("絵窓/絵立絵", 0, @200, @30, Dxl2, true);
	Move("絵窓/絵立絵2", 0, @-200, @30, Dxl2, true);
	Fade("絵窓/絵立絵", 200, 1000, null, false);
	Fade("絵窓/絵立絵2", 200, 1000, null, false);
	WindowAXLZoom("絵窓", "Y", 200, 1000, Dxl2, true);
	Shake("絵窓/絵立絵*", 1000, 5, 0, 0, 0, 300, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080a]
//◆音声指示：同時
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100300fje">
「いやいやいやいや……」
{WaitAddText();}<BR>

//◆音声指示：同時
//【村崎勇】
//<voice name="村崎勇" class="村崎勇" src="voice/b21/500100310msi">
//「いやいやいやいや……」

</PRE>
	SetText();
	AddText(1,"「いやいやいやいや……」","富士見恵那","b21/500100300fje",false,false,1000);
	AddText(2,"「いやいやいやいや……」","村崎勇","b21/500100310msi",true,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――



{	ClockPass(2156);}


	CreateTextureEX("絵窓/絵立絵3", 1530, center, middle, "cg/bu/bu恵那_一休_sigh.png");
	Move("絵窓/絵立絵3", 0, @200, @30, Dxl2, true);
	Fade("絵窓/絵立絵", 300, 0, null, false);
	Fade("絵窓/絵立絵3", 200, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080b]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100320fje">
「ん？」

{
	CreateTextureEX("絵窓/絵立絵", 1530, center, middle, "cg/bu/bu村崎_通常_pinch.png");
	Move("絵窓/絵立絵", 0, @-200, @30, Dxl2, true);
	Fade("絵窓/絵立絵*", 300, 0, null, false);
	Fade("絵窓/絵立絵", 200, 1000, null, false);

	Shake("絵窓/絵立絵", 300, 5, 0, 0, 0, 500, null, false);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/500100330msi">
「あー、ええと、ともかく！　急ぎましょう！」

{

	CreateSE("SE00","seメカ_車_トラックエンジン_l");
	CreateSE("SE01","seガヤ_交通_l");
	MusicStart("SE00",2000,300,0,1000,null,true);
	MusicStart("SE01",2000,500,0,1000,null,true);

	CreateTextureEX("絵窓/絵立絵2", 1530, center, middle, "cg/bu/bu恵那_通常_sigh.png");
	Move("絵窓/絵立絵2", 0, @150, @30, Dxl2, true);
	Fade("絵窓/絵立絵", 300, 0, null, false);
	Fade("絵窓/絵立絵2", 200, 1000, null, false);
	Delete("絵窓/絵立絵3");
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100340fje">
「お願いします。千秋の家に――」

{
	CreateTextureEX("絵窓/絵立絵", 1530, center, middle, "cg/bu/bu村崎_通常_fear.png");
	Move("絵窓/絵立絵", 0, @-150, @30, Dxl2, true);
	Fade("絵窓/絵立絵2", 300, 0, null, false);
	Fade("絵窓/絵立絵", 200, 1000, null, false);
}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/500100350msi">
「え？　病院に連れて行かなくていいんですか？」

{
	CreateTextureEX("絵窓/絵立絵2", 1530, center, middle, "cg/bu/bu恵那_一休_sigh.png");
	Move("絵窓/絵立絵2", 0, @150, @30, Dxl2, true);
	Fade("絵窓/絵立絵", 300, 0, null, false);
	Fade("絵窓/絵立絵2", 200, 1000, null, false);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100360fje">
「本人が、絶対嫌だって」

{
	CreateTextureEX("絵窓/絵立絵", 1530, center, middle, "cg/bu/bu村崎_通常_fear.png");
	Move("絵窓/絵立絵", 0, @-150, @30, Dxl2, true);
	Fade("絵窓/絵立絵2", 300, 0, null, false);
	Fade("絵窓/絵立絵", 200, 1000, null, false);
}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/500100370msi">
「……この格好じゃ、仕方ないですね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]


{
	CreateTextureEX("絵窓/絵立絵2", 1530, center, middle, "cg/bu/bu村崎_通常_pinch.png");
	Move("絵窓/絵立絵2", 0, @-150, @30, Dxl2, true);
	Fade("絵窓/絵立絵", 300, 0, null, false);
	Fade("絵窓/絵立絵2", 200, 1000, null, false);
}

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/500100380msi">
「それにしても、助けてくれてありがとうございます」


//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/500100390msi">
「恵那ちゃんは命の恩人ですぅ……」

{
	CreateTextureEX("絵窓/絵立絵", 1530, center, middle, "cg/bu/bu恵那_通常_sigh.png");
	Move("絵窓/絵立絵", 0, @150, @30, Dxl2, true);
	Fade("絵窓/絵立絵2", 300, 0, null, false);
	Fade("絵窓/絵立絵", 200, 1000, null, false);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100400fje">
「わ、私こそ助けてもらっちゃって」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100410fje">
「村崎さんがあそこにいなかったら、千秋……どうなってたことか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]

{
	CreateTextureEX("絵窓/絵立絵2", 1530, center, middle, "cg/bu/bu恵那_一休_sigh.png");
	Move("絵窓/絵立絵2", 0, @150, @30, Dxl2, true);
	Fade("絵窓/絵立絵", 300, 0, null, false);
	Fade("絵窓/絵立絵2", 200, 1000, null, false);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100420fje">
「……って、待てよ？
　千秋がこうなったのって、そもそもクリマンのせい……」

{
	CreateTextureEX("絵窓/絵立絵", 1530, center, middle, "cg/bu/bu村崎_通常_pinch.png");
	Move("絵窓/絵立絵", 0, @-150, @30, Dxl2, true);
	Fade("絵窓/絵立絵2", 300, 0, null, false);
	Fade("絵窓/絵立絵", 200, 1000, null, false);
}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/500100430msi">
「え？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2157);}


	TextBoxDelete(150);

//EX収納
	WindowAXLZoom("絵窓", "Y",200, 0, Axl2, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]


{
	St("C",19010, @0,@0,"fu恵那_ハルヒ_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100440fje">
「やっぱり村崎さん！　あなたのせいじゃないですか！」

{
	CreateSE("SE02","se擬音_ギャグ_ドーン");
	MusicStart("SE02",0,700,0,1000,null,false);
	Request("@StNameC/C*", Smoothing);
	Zoom("@StNameC/C*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameC/C*", 100, 1000, 1000, Axl2, true);
}

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100450fje">
「なんであんなもの、売り物に――！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,false);

//左窓準備EX
	CreateAXLWindowEX("絵窓", "X", 1600, 160, 256, false);
	WindowAXLZoom("絵窓", "X", 0, 0, null, false);
	CreateTextureSP("絵窓/絵背景", 1520, 0, 0, "cg/bg/bg0103211秋葉原_中央通り_閉店.jpg");
//	Move("絵窓/絵背景", 0, @0, @0, null, true);
	Zoom("絵窓/絵背景", 0, 2000, 2000, Dxl2, true);
	SetShade("絵窓/絵背景", heavy);


//キャラ準備
	CreateTextureEX("絵窓/絵立絵", 1530, center, middle, "cg/bu/bu村崎_通常_fear.png");
	Move("絵窓/絵立*", 0, @-222, @40, null, true);

//動作
	Fade("絵窓/絵立絵", 200, 1000, null, false);
	WindowAXLZoom("絵窓", "X", 200, 1000, Dxl2, true);


//	St("C",700, @0,@0,"bu村崎_通常_pinch");
//	FadeSt("C",200,true);
//	Shake("@StNameC/C*", 300, 5, 0, 0, 0, 500, null, false);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111a]

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/500100460msi">
「す……す、すいません……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//収納
	WindowAXLZoom("絵窓", "X",200, 0, Axl2, true);
	Delete("@絵窓*");

	CreatePlainSP("絵板写", 5000);
	Wait(16);

//右窓準備EX
	CreateAXLWindowEX("絵窓", "X", 1600, 608, 256, false);
	WindowAXLZoom("絵窓", "X", 0, 0, null, false);
	CreateTextureSP("絵窓/絵背景", 1520, 0, 0, "cg/bg/bg0103211秋葉原_中央通り_閉店.jpg");
//	Move("絵窓/絵背景", 0, @0, @0, null, true);
	Zoom("絵窓/絵背景", 0, 2000, 2000, Dxl2, true);
	SetShade("絵窓/絵背景", heavy);

//キャラ準備
	CreateTextureEX("絵窓/絵立絵", 1530, center, middle, "cg/bu/bu恵那_ハルヒ_angry.png");
	Move("絵窓/絵立*", 0, @222, @60, null, true); //e

	Wait(16);
	Delete("絵板写");

//動作
	Fade("絵窓/絵立絵", 200, 1000, null, false);
	WindowAXLZoom("絵窓", "X", 200, 1000, Dxl2, true);


//	St("C",700, @0,@0,"bu恵那_ハルヒ_angry");
//	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111b]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100470fje">
「謝って済むことじゃないです！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
{
	WindowAXLZoom("絵窓", "X",200, 0, Axl2, true);
	Delete("@絵窓*");

	CreatePlainSP("絵板写", 5000);
	Wait(16);

//左窓準備EX
	CreateAXLWindowEX("絵窓", "X", 1600, 160, 256, false);
	WindowAXLZoom("絵窓", "X", 0, 0, null, false);
	CreateTextureSP("絵窓/絵背景", 1520, 0, 0, "cg/bg/bg0103211秋葉原_中央通り_閉店.jpg");
//	Move("絵窓/絵背景", 0, @0, @0, null, true);
	Zoom("絵窓/絵背景", 0, 2000, 2000, Dxl2, true);
	SetShade("絵窓/絵背景", heavy);


//キャラ準備
	CreateTextureEX("絵窓/絵立絵", 1530, center, middle, "cg/bu/bu村崎_通常_fear.png");
	CreateTextureEX("絵窓/絵立絵2", 1530, center, middle, "cg/bu/bu村崎_通常_cry.png");
	Move("絵窓/絵立*", 0, @-222, @40, null, true);

	Wait(16);
	Delete("絵板写");

//動作
	Fade("絵窓/絵立絵", 200, 1000, null, false);
	WindowAXLZoom("絵窓", "X", 200, 1000, Dxl2, true);

//	St("C",700, @0,@0,"bu村崎_通常_pinch");
//	FadeSt("C",200,true);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111c]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/500100480msi">
「今日中に借金返さないと、双六さんに……」

{
	Fade("絵窓/絵立絵", 300, 0, null, false);
	Fade("絵窓/絵立絵2", 200, 1000, null, false);

//	St("C",700, @0,@0,"bu村崎_通常_fear");
//	FadeSt("C",200,true);
}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/500100490msi">
「どうしても……どうしても、お金が必要だったんです」


{
//	St("C",700, @0,@0,"bu村崎_通常_cry");
//	FadeSt("C",200,true);
}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/500100500msi">
「やっぱり、駄目ですね。私には商才がない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//収納
	WindowAXLZoom("絵窓", "X",200, 0, Axl2, true);
	Delete("@絵窓*");

	Shake("絵背景100", 0, 0, 1, 0, 0, 0, null, false);

	OnBG(10,"bg2502200信号機_見上げ_黄標識無");
	FadeBG(0,true);

	Fade("絵背景100", 1000, 0, null, true);


//窓準備
	CreateAXLWindowEX("絵窓", "Y", 1600, 96, 352, false);
	WindowAXLZoom("絵窓", "Y", 0, 0, null, true);
	CreateTextureSP("絵窓/絵背景", 1520, Center, Middle, "cg/bg/bg2502200信号機_見上げ_黄標識無.jpg");
	Zoom("絵窓/絵背景", 0, 2000, 2000, Dxl2, true);
	SetShade("絵窓/絵背景", heavy);
	Move("絵窓/絵背景", 0, @512, @0, null, true);
	Move("絵窓/絵背景", 600000, @-1024, @0, null, false);

//キャラ準備
	CreateTextureEX("絵窓/絵立絵", 1530, center, middle, "cg/bu/bu村崎_通常_fear.png");

//動作
	Move("絵窓/絵立絵", 0, @-300, @30, Dxl2, true);
	Fade("絵窓/絵立絵", 200, 1000, null, false);
	WindowAXLZoom("絵窓", "Y", 200, 1000, Dxl2, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/500100510msi">
「私は古い商売人です」


//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/500100520msi">
「クリスマスまんじゅうなんて企画ものを流行らせようとして、見事に失敗したりして」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2158);}


	DeleteAllSt(200,false);

//収納
	WindowAXLZoom("絵窓", "Y",200, 0, Axl2, true);
	Delete("@絵窓*");

//右窓準備EX
	CreateAXLWindowEX("絵窓", "X", 1600, 608, 256, false);
	WindowAXLZoom("絵窓", "X", 0, 0, null, false);
	CreateTextureSP("絵窓/絵背景", 1520, 0, 0, "cg/bg/bg0103211秋葉原_中央通り_閉店.jpg");
//	Move("絵窓/絵背景", 0, @0, @0, null, true);
	Zoom("絵窓/絵背景", 0, 1500, 1500, Dxl2, true);
	SetShade("絵窓/絵背景", heavy);

//キャラ準備
	CreateTextureEX("絵窓/絵立絵2", 1530, center, middle, "cg/bu/bu恵那_哀愁_worry.png");
	CreateTextureEX("絵窓/絵立絵", 1530, center, middle, "cg/bu/bu恵那_一休_sigh.png");
	Move("絵窓/絵立*", 0, @222, @60, null, true);

//動作
	Fade("絵窓/絵立絵", 200, 1000, null, false);
	WindowAXLZoom("絵窓", "X", 200, 1000, Dxl2, true);


//	St("C",700, @0,@0,"bu恵那_一休_sigh");
//	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100530fje">
「ええと……すいません。言い過ぎちゃったかも」

{
	Fade("絵窓/絵立絵", 300, 0, null, false);
	Fade("絵窓/絵立絵2", 200, 1000, null, false);


//	St("C",700, @0,@0,"bu恵那_哀愁_worry");
//	FadeSt("C",200,true);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100540fje">
「でも私、着眼点は悪くないかなって――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//収納
	WindowAXLZoom("絵窓", "X",200, 0, Axl2, true);
	Delete("@絵窓*");

//	TextBoxDelete(150);

	SetFrequency("SE00", 5000, 700, null);
	SetVolumeEX("SE00", 5000, 1, null);

	OnBG(10,"bg2502300信号機_見上げ_赤標識無");
	FadeBG(1000,true);


//窓準備
	CreateAXLWindowEX("絵窓", "Y", 1600, 96, 352, false);
	WindowAXLZoom("絵窓", "Y", 0, 0, null, true);
	CreateTextureSP("絵窓/絵背景", 1520, Center, Middle, "cg/bg/bg2502300信号機_見上げ_赤標識無.jpg");
	Zoom("絵窓/絵背景", 0, 2000, 2000, Dxl2, true);
	SetShade("絵窓/絵背景", heavy);
	Move("絵窓/絵背景", 0, @256, @0, null, true);
	Move("絵窓/絵背景", 600000, @-768, @0, null, false);

//キャラ準備
	CreateTextureEX("絵窓/絵立絵", 1530, center, middle, "cg/bu/bu村崎_通常_normal.png");
	CreateTextureEX("絵窓/絵立絵2", 1530, center, middle, "cg/bu/bu村崎_通常_fear.png");

//動作
	Move("絵窓/絵立絵*", 0, @-300, @30, Dxl2, true);
	Fade("絵窓/絵立絵", 200, 1000, null, false);
	WindowAXLZoom("絵窓", "Y", 200, 1000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]


//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/500100550msi">
「優しいですね、恵那ちゃんは」



{
	Fade("絵窓/絵立絵", 300, 0, null, false);
	Fade("絵窓/絵立絵2", 200, 1000, null, false);
}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/500100560msi">
「でもね。自分のことは自分が一番良くわかってます。
　私はね、ひとりじゃなんにもできないんですよ」


//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/500100570msi">
「それに気づくのが遅すぎた」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/500100580msi">
「せめて織田君がいてくれれば……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateTextureEX("絵窓/絵立絵", 1530, center, middle, "cg/bu/bu恵那_通常_sigh.png");
	Move("絵窓/絵立絵", 0, @300, @30, Dxl2, true);
	Fade("絵窓/絵立絵2", 300, 0, null, false);
	Fade("絵窓/絵立絵", 200, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100590fje">
「織田って……貫太さん、ですか？」

{
	CreateTextureEX("絵窓/絵立絵2", 1530, center, middle, "cg/bu/bu村崎_通常_normal.png");
	Move("絵窓/絵立絵2", 0, @-300, @30, Dxl2, true);
	Fade("絵窓/絵立絵", 300, 0, null, false);
	Fade("絵窓/絵立絵2", 200, 1000, null, false);
}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/500100600msi">
「恵那ちゃんも、昔は面倒見てもらってましたもんね」


//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/500100610msi">
「彼、今頃何をしてるんだろうなあ……」

{
	CreateTextureEX("絵窓/絵立絵", 1530, center, middle, "cg/bu/bu恵那_哀愁_sad.png");
	Move("絵窓/絵立絵", 0, @300, @30, Dxl2, true);
	Fade("絵窓/絵立絵2", 300, 0, null, false);
	Fade("絵窓/絵立絵", 200, 1000, null, false);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100620fje">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2159);}


	SetVolumeEX("@x*", 3000, 0, NULL);

//収納
	WindowAXLZoom("絵窓", "Y",200, 0, Axl2, true);
	Delete("@絵窓*");

	TextBoxDelete(150);

	OnBG(10,"bg2502100信号機_見上げ_青標識無");
	FadeBG(1000,true);

	SetFrequency("SE00", 1000, 1000, null);
	SetVolumeEX("SE00", 1000, 600, null);

	CreateTextureEX("絵背景100", 3000, Center, 0, "cg/bg/bg2401100空_上空_通常.jpg");
	Fade("絵背景100", 2000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]

{
//	St("C",700, @0,@0,"bu恵那_通常_think");
//	FadeSt("C",200,true);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100630fje">
「村崎さん」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/500100640fje">
「次からは、もっとまともな商売してくださいよ」

{
//	St("C",700, @0,@0,"bu村崎_通常_cry");
//	FadeSt("C",200,true);
}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/500100650msi">
「……はい」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	SetVolumeEX("@x*", 2000, 0, NULL);

	SetVolumeEX("SE*", 2000, 0, null);
	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

	Wait(1000);

	EndScene();
}
