
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene aa2120フウリ.nss_MAIN
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
	$GameName = "aa2345フウリ.nss";//★エンディングへ（aa）
}

scene aa2120フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="880">
////////////header////////////
//file name "aa2120フウリ.nss"
//title "後悔なしです！"
//previous "aa2110フウリ.nss"

////////////footer////////////
//next "フウリ" "aa2345フウリ.nss"

////////////body////////////

{	ClockPass(2120);}

//■再定義定型文
	PrintBG("上背景", 30000);
	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);
	FadeDelete("上背景", 0, null, true);
	SetVolumeEX("@xbgm*", 1500, 0, null);

//◆演出指定：思わぬフウリの告白に、会場が沸き立つ。

	CreateSE("SE02","seガヤ_沸き立つ_l");
	MusicStart("SE02",600,1100,0,1000,null,true);
	CreateSE("SE01","seガヤ_ざわざわ02_l");
	MusicStart("SE01",600,700,0,1000,null,true);

	CreateAXLWindowEX("絵演窓", "X", 2000, 60, 256, false);
	WindowAXLZoom("絵演窓", "X", 0, 0, null, true);

	CreateTextureSP("絵演窓/絵背景", 1010, -1690, -470, "cg/bg/l/bg1201211ＵＰ＋_屋外セット_炎上_l.jpg");
	CreateTextureSP("絵演窓/絵立絵", 1100, -70, 0, "cg/bu/buＡＤ_通常_normal.png");

	WindowAXLZoom("絵演窓", "X", 200, 1000, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
//◆音声指示：インカム
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa21/200100010adi">
『もうＣＭです！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	WindowAXLZoom("絵演窓", "X", 200, 0, AxlDxl, true);
	Delete("@絵演窓*");

//◆音声指示：スピーカー越し
{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buミリＰb_通常_happy");
	FadeSt("R",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/200100020mrp">
『フウリちゃん、最高のインタビューをありがとう！
　全国ゆるキャラバン、ＣＭの後もまだまだ続くわよ！』


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE03","se擬音_ゆるキャラジングル");
	MusicStart("SE03",0,700,0,1000,null,false);
	DeleteAllSt(200,false);

	$SETime = RemainTime("SE03");
	WaitKey($SETime);

	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010c]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/200100030wfu">
「きゅ――……」

{	St("C",700, @0,@0,"buフウリ_胸手_shy");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/200100040wfu">
「言った……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/200100050wfu">
「ずっと、ずっと、言えなかったあの告白。
　とうとう、言ってしまいました……」

{	St("C",700, @0,@0,"buフウリ_胸手_smile");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/200100060wfu">
「なんだか、すっきり……」

{	St("C",700, @0,@0,"buフウリ_胸手_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/200100070wfu">
「もう、迷いはないです」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/200100080wfu">
「貫太さんがどこにいても、私の気持ちは――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2121);}

//	TextBoxDelete(150);

	SetVolumeEX("@SE*", 2000, 0, null);
	SoundPlay("@xbgm10",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buミリＰa_通常_happy");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/200100090mrp">
「フウリちゃん、お疲れ様！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/200100100wfu">
「ミリＰさんこそ、お疲れ様でしたー……」

{	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/200100110wfu">
「あの……私……
　インタビュー、上手くできたでしょうか？」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/200100120mrp">
「上手くできたかって？」

{	St("R",700, @0,@0,"buミリＰa_通常_shout");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/200100130mrp">
「そりゃあ、もう！」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/200100140mrp">
「メ・チャ・ク・チャ上手くいったわよ！」

{	St("R",700, @0,@0,"buミリＰa_通常_pinch");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/200100150mrp">
「番組はねっ！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/200100160wfu">
「ひ――あ、あのー、なんだか言葉にすごく毒が……」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/200100170mrp">
「アタシ、何時間か前に注意したわよね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("R",700, @0,@0,"buミリＰa_ショータイム_angry");
	Shake("@StNameR/R*", 300, 8, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("R",0,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/200100180mrp">
「アイドルなんだから、恋人の話しちゃ駄目だって」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/200100190wfu">
「へ？」

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/200100200wfu">
「きゅ……きゅー！」

{
	St("C",700, @0,@0,"buフウリ_頬手_shock");
	FadeSt("C",0,true);
	Shake("@StNameC/C*", 500, 0, 3, 0, 0, 1000, Dxl1, false);
}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/200100210wfu">
「きゅー！　きゅー！　きゅ――――――！！！！」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/200100220mrp">
「さすがに、アレを生でやっちゃったら、純粋にアイドルとしては売り出せないわ」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/200100230wfu">
「そ、そそそそ……そんなぁ……」

{	DeleteAllSt(200,false);
	SetVolumeEX("@xbgm*", 300, 0, null);
	St("L",700, @0,@0,"bu鈴_シリアス_angry");
	Move("@StNameL/L*", 300, @50, @0, Dxl2, false);
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aa21/200100240fjr">
「望むところじゃないッ！！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/200100250wfu">
「え？　鈴ちゃんっ！？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aa21/200100260fjr">
「テレビ観てたら、いてもたってもいられなくて」


{	St("L",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aa21/200100270fjr">
「ミリＰさん、アタシたちは別に見世物になりたくて音楽を始めたわけじゃないの！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2122);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("L",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aa21/200100280fjr">
「音楽を届けるべき人に届けるために、この第一宇宙速度ってバンドを始めたのよ！！」

{	SoundPlay("@xbgm27",0,450,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aa21/200100290fjr">
「アタシたちは、飾らないアタシたちのままで天下を獲ってやるわ！」


{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/200100300mrp">
「へぇ……吠えるじゃない」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aa21/200100310fjr">
「フウリちゃんのためだったら、いくらでも吠えるわッ！
　文句ある！？」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/200100320mrp">
「そこまで言うんだったら、なにも」

{	St("R",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/200100330mrp">
「フウリちゃん」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/200100340wfu">
「は……はい！」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/200100350mrp">
「その彼と、また会えるといいわね」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/200100360wfu">
「はい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/200100370mrp">
「ふたりとも、アタシを見返すビッグなバンドになって帰ってきなさい」

{	St("R",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/200100380mrp">
「できるもんならね」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aa21/200100390fjr">
「やってやろーじゃないの！」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buミリＰa_通常_happy");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/200100400mrp">
「ふふふ……待ってるわ」

{
	SetVolumeEX("@xbgm*", 1500, 0, null);
	CreateSE("SE04","seガヤ_ざわざわ02_l");
	MusicStart("SE04",0,250,0,1000,null,true);
	DeleteAllSt(200,false);
	St("MR",700, @-50,@0,"buＡＤ_通常_sad");
	Move("@StNameMR/MR*", 300, @50, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa21/200100410adi">
「あの、ミリＰさん。
　格好つけてるところ、悪いんですけど……」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/200100420mrp">
「なによ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa21/200100430adi">
「まだ番組、半分以上残ってるんですけど……」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buミリＰa_通常_pinch");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/200100440mrp">
「もう！　わかってるわよ！」

{	St("R",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/200100450mrp">
「それに散々引っ張ってきたんだもの……
　秋葉原の新マスコットも発表しなきゃいけないし」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2123);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("R",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/200100460mrp">
「ＣＭ明けは敗者のインタビューで繋ぐとして……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_前のめり_shout");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/200100470wfu">
「あ、あの！　私たちにできることは――」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/200100480mrp">
「……気にしなくていいわよ。
　アタシたちだって、自分の尻くらい拭けるもの」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/200100490wfu">
「でも――」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/200100500mrp">
「貴方たちは貴方たちの心配をしなさい」

{	St("R",700, @0,@0,"buミリＰa_通常_happy");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/200100510mrp">
「ライブまで時間ないし。
　トラブルもあるんでしょ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/200100520wfu">
「そ、それは確かに……」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aa21/200100530fjr">
「早いところ、ガラス職人探さないとね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/200100540mrp">
「ガラス職人……？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aa21/200100550fjr">
「実は、今日の地震で窓ガラスが割れちゃって……」

{	St("L",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aa21/200100560fjr">
「ガラス自体はあるんだけど、それを填められる職人さんがいないのよね……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa21/200100570adi">
「あ……あの！」

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa21/200100580adi">
「私、知ってる！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2124);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/200100590wfu">
「え？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aa21/200100600fjr">
「知ってる……？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa21/200100610adi">
「職人さんではないんだけど、ガラスは張れるっていうひとがいるよ！」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/200100620mrp">
「なんで？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa21/200100630adi">
「学校のガラスを叩き割ったら、罰として張り直しを命じられたみたいです」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("MR",700, @0,@0,"buＡＤ_通常_smile");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa21/200100640adi">
「もし良かったら……連絡とってみようか？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aa21/200100650fjr">
「よ――よ――！」

{	St("L",700, @0,@0,"bu鈴_通常_happy");
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aa21/200100660fjr">
「よろしくお願いしますッ！！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_smile");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa21/200100670adi">
「ううん、困ったときはお互い様だから！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2125);}


//	TextBoxDelete(150);

//◆ＳＥ：電話ぴぽぱぽ


	CreateSE("SE01","seメカ_携帯_ダイヤル");
	MusicStart("SE01",0,700,0,1000,null,false);

	$SETime = RemainTime("SE01");
	WaitKey($SETime);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("MR",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa21/200100680adi">
「……あ、もしもし？　ブーさん？」

{	St("MR",700, @0,@0,"buＡＤ_通常_smile");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa21/200100690adi">
「あいえ、その節はどうも、お世話になりました！
　それであの、まだ秋葉原にいらっしゃいます？」

{	St("MR",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa21/200100700adi">
「あ、そうですか。あの、実はですね――」

{	St("MR",700, @0,@0,"buＡＤ_通常_smile");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa21/200100710adi">
「ＯＫですか！？　ああっ！　よかったあ……」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aa21/200100720fjr">
「良かった……これでライブ、上手くいく……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/200100730wfu">
「そ、それはそうですけど」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aa21/200100740fjr">
「ん？　なにか不満？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/200100750wfu">
「やっぱり、ミリＰさんの番組の後半が心配です！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/200100760wfu">
「私たちにも、何かできることが――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/200100770mrp">
「できることって……ううん……困ったわね」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/200100780mrp">
「せめてニコちゃんがいれば、緊急ライブができるかもしれないのに……」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aa21/200100790fjr">
「緊急ライブ！？　それって――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_頬手_shock");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/200100800wfu">
「い、良いんですか！？」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/200100810mrp">
「まあ、肝心のニコちゃんがいないことには――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2126);}


//	TextBoxDelete(150);

	DeleteAllSt(200,false);

{
	SetVolumeEX("@SE04*", 500, 0, null);
	SoundPlay("@xbgm20_noeff",0,450,true);
}

//窓準備
	CreateAXLWindowEX("絵窓", "Y",1600, 128, 320, false);
	SetAlias("絵窓","絵窓");
	WindowAXLZoom("絵窓", "Y", 0, 0, null, true);
	CreateColorSP("絵窓/絵演色", 1510, "#000000");

//背景準備
	CreateTextureEX("絵窓/絵演背景", 1530, Center, Middle, "cg/bg/m/bg1202300ＵＰ＋_セット上_炎上_m.jpg");
	SetShade("絵窓/絵演背景", HEAVY);
	Fade("絵窓/絵演背景", 0, 1000, null, true);

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1540, center, middle, "cg/bu/buそに子_通常_shout.png");
	Move("絵窓/絵演立絵", 0, @-200, 50, null, true);
	Request("絵窓/絵演立絵", Smoothing);

//動作
	WindowAXLZoom("絵窓", "Y", 200, 1000, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, false);
	Move("絵窓/絵演立絵", 1000, @200, 50, Dxl2, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{
//	DeleteAllSt(200,false);
//	St("ML",700, @-50,@0,"buそに子_通常_smile");
//	Move("@StNameML/ML*", 300, @50, @0, Dxl2, false);
//	FadeSt("ML",200,true);
	}
//【太四郎（そに子）】
<voice name="太四郎（そに子）" class="そに子" src="voice/aa21/200100820skt">
「お、お待たせしました～」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	WindowAXLZoom("絵窓", "Y", 200, 0, Axl2, true);
	St("R",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("R",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0192]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/200100830mrp">
「えっ！？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aa21/200100840fjr">
「なんで！？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/200100850wfu">
「そ、その声は――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	CreatePlainSP("絵板写", 5000);
	Wait(16);
	DeleteAllSt(0,false);
	St("L",700, @0,@0,"bu鈴_通常_shock");
	St("R",700, @0,@0,"buミリＰa_通常_shock");
	St("C",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("L",0,false);
	FadeSt("C",0,false);
	FadeSt("R",0,true);
	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0195]
//◆音声指示：同時
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/200100860">
「「「ニコちゃんっ！！」」」

//◆音声指示：同時
//【富士見鈴】

//<voice name="富士見鈴" class="富士見鈴" src="voice/aa21/200100870fjr">
//「ニコちゃんっ！！」

//◆音声指示：同時
//【ミリＰ】
//<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/200100880mrp">
//「ニコちゃんっ！！」

</PRE>
	SetText();
	AddText(1,"「ニコちゃんっ！！」","綿抜フウリ","aa21/200100860wfu",false,false,1000);
	AddText(2,"「ニコちゃんっ！！」","富士見鈴","aa21/200100870fjr",false,false,1000);
	AddText(3,"「ニコちゃんっ！！」","ミリＰ","aa21/200100880mrp",false,false,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 2500, 0, null);
	CreateColorEX("絵背景", 20000, "BLACK");
	Fade("絵背景", 2500, 1000, null, true);


	EndScene();
}
//next "フウリ" "aa2345フウリ.nss"
