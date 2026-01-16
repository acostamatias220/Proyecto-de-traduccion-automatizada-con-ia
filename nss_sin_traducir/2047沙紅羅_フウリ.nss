
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2047沙紅羅_フウリ.nss_MAIN
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

	$LFlag_NowFile = "2047沙紅羅_フウリ.nss";
	$GameName = "2050カゴメ2.nss";
	//$GameName = "2050沙紅羅_似鳥_フウリ.nss";
}

scene 2047沙紅羅_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="310">
////////////header////////////
//file name "2047沙紅羅_フウリ.nss"
//title "フウリ、覚醒"
//previous "2045沙紅羅_フウリ.nss"

////////////footer////////////
//next "沙紅羅" "2050沙紅羅_似鳥_フウリ.nss"
//next "フウリ" "2050沙紅羅_似鳥_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2047);}

//◆場所：ＵＰ＋_屋外セット_炎上
//	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
//	FadeBG(0,true);
	OnBG(100,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

	Wait(1000);

	CreateSE("SE20","seガヤ_歓声_l");
	MusicStart("SE20",2000,400,0,1000,null,true);

	Wait(500);

	FadeDelete("上背景", 1000, null, true);

	St("MR",700, @+100,@0,"buＡＤ_通常_sad");

	Move("@StNameMR/MR*", 350, @-100, @0, Dxl1, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//◆音声指示：疲労困憊
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/470100010adi">
「ＣＭ、入り、ました……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/470100020mrp">
「すごい食べっぷり……
　いい絵、撮れてるわよね？」

{	St("ML",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/470100030mrp">
「確かに、やらせじゃなくて、本気のフウリちゃんを撮れて良かったのかも……」

{	St("ML",700, @0,@0,"buミリＰa_通常_happy");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/470100040mrp">
「きっとレイジ君も、喜んでくれるわ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buＡＤ_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/470100050adi">
「いや、まあそうかもしれませんけど……」

{	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/470100060mrp">
「なに？　何か文句あるわけ？」

{	St("MR",700, @0,@0,"buＡＤ_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/470100070adi">
「このペースじゃ食べ物が――」

{	St("ML",700, @0,@0,"buミリＰa_通常_pinch");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/470100080mrp">
「……やっぱり？」

{	St("MR",700, @0,@0,"buＡＤ_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/470100090adi">
「どうしましょう！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2048);}

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/470100100mrp">
「仕方ないわ。一度、大食いに休憩を挟みましょう」

{	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/470100110adi">
「休憩？　でも、その間なにを――
　もうＶＴＲは残ってない――」

{	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/470100120mrp">
「そのための、似鳥君よ」

{	St("ML",700, @0,@0,"buミリＰa_通常_shout");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/470100130mrp">
「控え室にカメラを繋いで！
　キャラデザの現場を、中継するわ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/470100140adi">
「急にそんな――！」

{	St("ML",700, @0,@0,"buミリＰa_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/470100150mrp">
「そろそろ、ＣＭ明けね！
　こっちのことは、任せたわ！」

{	St("ML",700, @0,@0,"buミリＰa_通常_shout");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/470100160mrp">
「向こうにカメラを振ったら、大食いは一時中止！」

{	St("MR",700, @0,@0,"buＡＤ_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/470100170adi">
「でも、似鳥さんに話は――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


	DeleteSt("MR",200,true);

	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);


//◆ＳＥ：ジングル
	CreateSE("SE01","se擬音_ゆるキャラジングル");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1500);

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_通常_shout");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/470100180mrp">
『さあ、いよいよ盛り上がる全国ゆるキャラバン！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_通常_smile");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/470100190mrp">
『ここでがらりと視点を変え、一度秋葉原のゆるキャラデザイナー、似鳥君に話を聞いてみましょうッ！』


{	DeleteSt("C",200,true);
	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/470100200skr">
「いきなりだな」

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/470100210ktt">
「いきなりですね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2049);}

	TextBoxDelete(150);

	DeleteSt("MR",200,true);


{	St("C",700, @0,@0,"buミリＰb_通常_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/470100220mrp">
『似鳥君！
　どのくらい、進んでいるかしら？』

//◆音声指示：スピーカー越し
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/470100230nki">
『え……ええと、それが……』

{	St("C",700, @0,@0,"buミリＰb_通常_smile");
	FadeSt("C",200,true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/470100240mrp">
『まさか全然、進んでないってことはないでしょうね』

//◆音声指示：スピーカー越し
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/470100250nki">
『いや、頑張ってるんですけど……』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//◆音声指示：スピーカー越し
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/470100260nki">
『進んでいるって言うか、いないって言うか。
　進みたいって言うか、一進一退……』

{	St("C",700, @0,@0,"buミリＰb_通常_normal");
	FadeSt("C",200,true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/470100270mrp">
『はいはい、わけのわかんないこと言ってないで！』

{	St("C",700, @0,@0,"buミリＰb_ショータイム_normal");
	FadeSt("C",200,true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/470100280mrp">
『途中でいいからアイディアを見せて頂戴！』

//◆音声指示：スピーカー越し
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/470100290nki">
『それは、その……ええと……ええと……』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/470100300skr">
「だ……大丈夫なんだろうな？」

{	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/470100310ktt">
「全然、大丈夫じゃなさそうな……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolumeEX("SE*", 500, 0, null);

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	Wait(300);

	EndScene();
}
