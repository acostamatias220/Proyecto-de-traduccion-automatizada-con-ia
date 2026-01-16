
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2200ノーコ.nss_MAIN
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

	//★徒歩：フラグ修正
	if($myRoute=="トゥルー"){
		$GameName = "2206ノーコ.nss";
	}else{
		$GameName = "b2206ノーコ.nss";
	}
}

scene 2200ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="350">
////////////header////////////
//file name "2200ノーコ.nss"
//title "飛び降り自殺未遂"
//previous "2150沙紅羅_似鳥_ノーコ.nss"


////////////footer////////////
//next "ノーコ"（"flkagome2" = true） "b2206ノーコ.nss"

//next "ノーコ" "2206ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：秋葉原_上空
////	OnBG(10,"bg2401100空_上空_通常");
////	FadeBG(0,true);

	CreateTextureEX("絵ＢＧ100", 100, Center, middle, "cg/bg/l/bg2401100空_上空_通常_l.jpg");
	Fade("絵ＢＧ100", 0, 1000, null, true);
	CreateTextureEX("絵背景200", 100, Center, middle, "cg/bu/buノーコa_通常_fear.png");
	Fade("絵背景200", 0, 1000, null, true);
	CreateTextureEX("絵背景300", 100, Center, middle, "cg/bu/buノーコa_通常_normal.png");
	CreateTextureEX("絵背景400", 100, Center, middle, "cg/bu/buノーコa_通常_rage.png");

	CreateSE("SE10","se環境_風_l");
	CreateSE("SE11","se環境_風低音_l");


	if($PreGameName=="2150沙紅羅_似鳥_ノーコ.nss"){
	MoveFTP2("@絵ＢＧ100", 8300, 4, 3);
	MoveFTP3("@絵背景*", 10000, 6, 5);
	MusicStart("SE10",300,1500,0,1000,null,true);
	MusicStart("SE11",2000,1000,0,1000,null,true);
	CreateColorSP("絵色黒", 20000, "#000000");
	FadeDelete("上背景", 0, null, true);
	FadeDelete("絵色黒", 2000, null, true);
	}else{
	FadeDelete("上背景", 0, null, true);

	TakeRatePic();//あきゅん「演出：スクリーン希望箇所」

	MoveFTP2("@絵ＢＧ100", 8300, 4, 3);
	MoveFTP3("@絵背景*", 10000, 6, 5);
	MusicStart("SE10",300,1500,0,1000,null,true);
	MusicStart("SE11",2000,1000,0,1000,null,true);
	}


//	MoveFTP2stop();
//	MoveFTP3stop();

//	Move("絵背景100", 2000, @0, 0, Dxl1, false);

{	ClockPass(2200);}

	Wait(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100010nko">
「あ……ああ…………あ……あ……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100020nko">
「おわったんだ……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100030nko">
「もう、ほんとうに、おわったんだ……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100040nko">
「へやいっぱいの、おもいで……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100050nko">
「わたしがいきてきたあかし……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	St("C",700, @0,@0,"buノーコa_通常_normal");
//	FadeSt("C",200,true);
	Fade("絵背景200", 300, 0, Axl2, false);
	Fade("絵背景300", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100060nko">
「にとりと、わたしの、きずな……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100070nko">
「ＮＯ　ＣＯＮＴＲＯＬ――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100080nko">
「それが……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100090nko">
「すてられた……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100100nko">
「すてられちゃったんだ……」

{
//	St("C",700, @0,@0,"buノーコa_通常_cry");
//	FadeSt("C",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100110nko">
「ひぐっ、ひぐ、うぐ……う、う、う……」

{
	Fade("絵背景300", 300, 0, Axl2, false);
	Fade("絵背景400", 200, 1000, null, true);

/*
	St("C",700, @0,@0,"buノーコa_通常_rage");
	FadeSt("C",200,true);
	Move("@StNameC/C*", 800, @50, @50, Dxl1, false);
	DeleteAllSt(400,false);
	CreateSE("SE01","se動作_空飛ぶ02");
	MusicStart("SE01",0,700,0,1000,null,false);
*/
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100120nko">
「うわああぁぁぁぁ…………………………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE01", 1000, 0, null);

	TextBoxDelete(150);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	MoveFTP2stop();
	MoveFTP3stop();
	Delete("絵色黒");
	Delete("絵背景*");
	Delete("絵ＢＧ*");
//◆場所：あにのあな_屋上
	OnBG(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);

//◆時間：ジャンプ
{	ClockPass(2204);}

	CloudZoomSet(4000);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(0,@-1000,@-500,null,false);
	SetVolumeEX("SE11", 3000, 0, null);

	CreateTextureSP("絵背景100", 100, -824, -412, "cg/bg/l/bg0108200秋葉原_俯瞰_閉店_l.jpg");
	Request("絵背景100", Smoothing);
	Zoom("絵背景100", 0, 800, 800, null, true);

	Move("絵背景100", 10000, -100, -60, null, false);

	DrawDelete("絵黒幕", 300, 100, null, "slide_03_01_1", true);


	Wait(5000);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	CloudZoomDelete(0,true);
	Delete("絵背景100");
	Wait(1000);

	DrawDelete("絵黒幕", 1000, 100, null, "slide_03_01_1", true);

	St("C",700, @0,@-50,"buノーコa_通常_sad");
	Move("@StNameC/C*", 800, @0, @50, Dxl1, false);
	FadeSt("C",400,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100130nko">
「うそだとおもった」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100140nko">
「すなおになれないだけだとおもった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100150nko">
「あいはつうじてるとしんじた」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100160nko">
「だから、にとりといっしょにしのうとおもった」

{	St("C",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100170nko">
「けど――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100180nko">
「…………」

{	St("C",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100190nko">
「にとりは、わたしがきらいだった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100200nko">
「ほんとうに、きらいだった」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100210nko">
「とうぜんだ」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100220nko">
「にせものだもの」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100230nko">
「げんじつとうひのだいたいひん」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100240nko">
「ただのかげ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100250nko">
「だから、もう」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100260nko">
「わたしがいきているいみはない――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100270nko">
「わたしのからだは、なまみ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100280nko">
「とびおりてしまおう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100290nko">
「きえてしまおう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2205);}


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100300nko">
「このせかいから、いなくなってしまおう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100310nko">
「それが……わたしのうんめい」

{	Move("@StNameC/C*", 1000, @0, @-80, Axl1, false);
	DeleteAllSt(500,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100320nko">
「…………」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100330nko">
「すべてはここから、はじまった」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100340nko">
「だから――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("立絵", 100, center, -197, "cg/bu/l/buノーコa_通常_normal_x01.png");
	Zoom("立絵", 0, 600, 600, null, true);
	Request("立絵", Smoothing);
	Fade("立絵", 1000, 1000, null, false);
	Move("立絵", 1500, @0, @50, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/000100350nko">
「ここで、わたしは、おわる――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指示：飛び降りる

	TextBoxDelete(150);

	CreateSE("SE01","se動作_一歩");

	CreateColorEX("絵色１", 10000, "#000000");
	CreateTextureEX("絵背景１", 3000, 0, 0, "cg/bg/bg2401100空_上空_通常.jpg");

	CreateTextureEX("絵人物１", 3000, -550, -700, "cg/bu/l/buノーコa_通常_normal_x02.png");
	Request("絵人物１", Smoothing);
	Rotate("絵人物１", 0, @0, @0, -55, null, true);
	Zoom("絵人物１", 0, 2500, 2500, Dxl2, true);
	SetShade("絵人物１", MEDIUM);

	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolume("SE10", 1000, 0, NULL);

	Fade("絵背景３", 300, 1000, null, false);
	Move("絵背景３", 650, 0, 0, Axl1, false);
	Fade("絵色１", 600, 1000, null, true);
	Delete("絵背景３");

	Fade("絵人物１", 0, 1000, null, false);
	Fade("絵背景１", 0, 1000, null, false);

	Move("絵人物１", 2000, @-50, @-25, Dxl3, false);
	Fade("絵色１", 400, 0, null, true);
	Wait(500);

	Move("絵人物１", 400, @-20, @-20, Axl1, false);
	Zoom("絵人物１", 400, 2600, 2600, Axl1, false);
	Fade("絵色１", 400, 1000, null, true);

	EndScene();
}
