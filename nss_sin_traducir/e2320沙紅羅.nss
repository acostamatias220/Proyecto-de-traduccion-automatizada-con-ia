
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene e2320沙紅羅.nss_MAIN
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
	$GameName = "e2330沙紅羅.nss";
}

scene e2320沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="970">
////////////header////////////
//file name "e2320沙紅羅.nss"
//title "仇討ち"
//previous "2310沙紅羅.nss"

////////////footer////////////
//next "沙紅羅" "e2330沙紅羅.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：バックギャモン_店内
	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);

{	St("C",700, @0,@0,"bu沙紅羅_放心_lost");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 200, null, true);

{	ClockPass(2320);}

//あきゅん「修正指示：シーンに合わせたＢＧＭを使用してください」
//★inc櫻井　修正　フェード時間500で再生開始
//★inc櫻井　直前のファイルと立ち位置調整
	SoundPlay("@xbgm26", 0, 450, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100010skr">
「弟子よ……死んだとか……
　ウソだって……言ってくれよ……」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"bu平次_落ち込み_sad");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100020fjh">
「金閣寺……もう諦めろ……
　コイツは……もう……」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_放心_lost");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100030skr">
「目、覚ませ……覚ましてくれ……頼むから……」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"bu平次_通常_shout");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100040fjh">
「金閣寺！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100050skr">
「何でだよ！？　なんで諦めんだよ！！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100060skr">
「失敗をやり直すのに、遅いってことはないって――
　アタシ、それを信じて――」

{	St("C",700, @0,@0,"bu沙紅羅_通常_pinch");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100070skr">
「それを信じたから、ここに来たのに――来たのに――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100080skr">
「諦めたら……諦めたら……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2321);}


//	TextBoxDelete(150);


{	DeleteSt("C",200,false);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100090skr">
「うう……う……ううう……」

{	SoundPlay("@xsong01",0,1,true);
	SetVolume("@xbgm*", 1000, 0, null);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/e23/200100100jbr">
「こぼしたカレーを嘆いても、仕方ナイ」

{	St("C",700, @-60,@0,"bu沙紅羅_後ろ向き_rage");
	Move("@StNameC/C*", 200, @60, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100110skr">
「誰だてめぇはっ！！」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100120fjh">
「おまえ……ジャブル？」


{	SetVolumeEX("@xsong01", 3000, 450, null);
	DeleteSt("ML",200,false);
	St("L",700, @-150,@0,"buジャブル_通常_hard");
	Move("@StNameL/L*", 300, @150, @0, Dxl1, false);
	FadeSt("L",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/e23/200100130jbr">
「今、恵那ちゃんが危ないのではないデスカ？
　ならば、嘆いているヒマないデス」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("L",700, @0,@0,"buジャブル_通常_pride");
	FadeSt("L",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/e23/200100140jbr">
「はやく、双一をやっつけるデスネ」

{	DeleteSt("L",200,false);
	CreateSE("木刀", "se戦闘_木刀_構える");
	MusicStart("木刀", 0, 700, 0, 1000, null,false);
	St("C",700, @0,@0,"bu沙紅羅_木刀_rage");
	Shake("@StNameC/C*", 200, 6, 0, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100150skr">
「なにを偉そうに――！」

//★inc櫻井　沙紅羅を止めようと割り込むように移動、そのままC表示に。
{	DeleteSt("R",200,false);
	St("C",700, @-150,@0,"bu平次_通常_shout");
	Move("@StNameC/C*", 300, @150, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100160fjh">
「いや待て！」

{	St("C",700, @0,@0,"bu平次_通常_hard");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100170fjh">
「ジャブル、おまえ河原屋組の一員だろ？
　そんなこと言って、いいのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"buジャブル_通常_hard");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/e23/200100180jbr">
「もう、いいんデスヨ」


//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/e23/200100190jbr">
「わたし、もう疲れたデス。
　河原屋組の都合に振り回されるのは、たくさんデスネ」

//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/e23/200100200jbr">
「だから……平次さんに、提案があるデス」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100210fjh">
「提案？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2322);}

//	TextBoxDelete(150);

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buジャブル_通常_hard");
	FadeSt("ML",200,true);}

	SetVolumeEX("@xsong01", 3000, 1, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/e23/200100220jbr">
「はい。この仕事ができるのは、あなたしかいないデス」

{	SoundPlay("@xbgm31",0,450,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/e23/200100230jbr">
「実は今……籠の奧には、爆弾が仕掛けられているデス」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100240fjh">
「……おまえが仕掛けたんだな」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buジャブル_通常_hard");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/e23/200100250jbr">
「河原屋組の依頼デス。
　彼らは、籠を壊そうとしているデスネ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/e23/200100260jbr">
「アザナエルないなら、河原屋双一をこの世から消す方法は、もうコレしか残されていないデス」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100270fjh">
「…………」

{	St("MR",700, @0,@0,"bu平次_通常_cool");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100280fjh">
「オレは、警官だぞ」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100290fjh">
「本当に、そんな仕事ができると――」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buジャブル_通常_hard");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/e23/200100300jbr">
「あなたになら、わかるはずデスネ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/e23/200100310jbr">
「河原屋双一の、苦しみが」

//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/e23/200100320jbr">
「それを救ってやることは――
　あなたにしか、できないデス」


{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100330fjh">
「…………」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100340fjh">
「……わかんねぇ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2323);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100350fjh">
「オレに……そんなことが……」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buジャブル_通常_hard");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/e23/200100360jbr">
「そちらの様子は、カメラで観察できるデス」

{	St("ML",700, @0,@0,"buジャブル_通常_pride");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/e23/200100370jbr">
「もしも覚悟ができたなら――連絡を」

{	SetVolumeEX("@x*", 3000, 0, null);
	Move("@StNameML/ML*", 200, @-80, @0, Dxl1, false);
	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100380fjh">
「…………」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100390fjh">
「おい、金閣寺。オレは先に――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xsong01", 3000, 450, null);

//	TextBoxDelete(150);

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100400skr">
「モジャモジャのオッサン！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100410skr">
「……これをやったのは、河原屋双一か？」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu平次_通常_cool");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100420fjh">
「たぶん、な」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100430skr">
「どうして、こんなことを？」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100440fjh">
「――さあ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//あきゅん「修正指示：双一を出すなら、もっと心象的にまったり使用する」
//★inc櫻井　修正
	CreateTextureEX("双一", 2000, @0, @0, "cg/img/img河原屋双一.jpg");
	Fade("双一", 1000, 1000, null, true);
	DeleteSt("MR",0,true);

	CreateTextureEXmul("絵演双一大", 2010, -766, 0, "cg/img/l/img河原屋双一_l.jpg");
	Move("絵演双一大", 30000, @0, -120, null, false);
	Fade("絵演双一大", 2000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100450fjh">
「アイツは、平凡な人生ってのが、大嫌いだ」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100460fjh">
「出会った人間に、生きるか死ぬかの選択を突きつけて、その反応を楽しんでいやがるのさ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100470skr">
「…………ふざけてる」

{	SetVolumeEX("@x*", 2000, 0, null);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100480fjh">
「ああ。全く――ふざけたヤツだよ」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2324);}


//	TextBoxDelete(150);
	FadeDelete("絵演双一大", 500, Dxl3, false);
	FadeDelete("双一",500,null,true);

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100490skr">
「その顔――アタシも、ブン殴りに行きたい」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100500skr">
「一緒に連れて行ってもらえねぇか？」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100510fjh">
「おまえ――大丈夫か？」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100520skr">
「ああ、もう大丈夫だ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//あきゅん「修正指示：千秋のレイアウト調整」
//★inc櫻井　修正
	CreatePlainSP("絵板写", 5000);
	Wait(16);
	CreateTextureEX("千秋", 500, @-150, @-200, "cg/ev/l/ev2250千秋オブデス_l.jpg");
	Fade("千秋", 0, 1000, null, false);
	St("ML",700, @0,@0,"fu沙紅羅_通常_hard");
	FadeSt("ML",0,true);
	FadeDelete("絵板写", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0125]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100530skr">
「アタシの弟子にこんなことをしたヤツを――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100540skr">
「もうこんな、取り返しのつかねぇことをしたヤツを――」


{	SoundPlay("@xbgm07_noint",0,450,true);
	St("ML",700, @0,@0,"fu沙紅羅_通常_rage");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100550skr">
「アタシは絶対に、ゆるせねぇ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//あきゅん「修正指示：もっさりしてるので沙紅羅の勢いが殺されているキレよく」
//★inc櫻井　修正
	FadeDelete("千秋",300,null,false);
	DeleteSt("ML",300,true);

	TextBoxDelete(150);


{	St("C",700, @0,@60,"buユージローa_通常_hard");
	Move("@StNameC/C*", 300, @0, @-60, AxlDxl, false);
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/e23/200100560ujr">
「わうっ！！」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"bu平次_通常_cool");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100570fjh">
「……そうか」

{	St("MR",700, @0,@0,"bu平次_通常_cool");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100580fjh">
「よしっわかった！
　一緒に行くぞ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu平次_通常_shout");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100590fjh">
「河原屋双一を――ブン殴りにな」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100600skr">
「おうっ！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//あきゅん「β演出：走行感のある風に組み直し」

//◆場所：地下_通路

	SceneOut(5000, 500, "circle_01_00_0");
	DeleteSt("R",0,false);
	OnBG(10,"bg0701600地下_通路_バックギャモン");
	FadeBG(0,true);

//◆演出指定：エンジン音が鳴り続ける

//あきゅん「修正指示：バイク音五月蝿い規定値より音量大きい」
//★inc櫻井　修正
	CreateSE("バイク走行", "seメカ_バイク_走行_l");
	MusicStart("バイク走行", 300, 700, 0, 1000, null,true);


	MoveFFP1("@OnBG*",50);

	CreateTextureSPover("道線", 110, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	TurboBlur("@道線");


{	ClockPass(2325);}

	DeleteAllSt(0,true);
	SceneIn(500, "circle_01_00_1");

	SetVolumeEX("バイク走行", 3000, 400, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100610fjh">
「そこを右だッ！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100620skr">
「……良く、知ってるな？」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100630fjh">
「前にも、来たことがあるからな」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100640skr">
「前にも……？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//あきゅん「修正指示：ここでは絵を出さない」
//★inc櫻井　修正


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100650fjh">
「ああ。昔――今から１０年も前の話だ」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100660fjh">
「河原屋双一にカゴメアソビを強要されて――
　撃たなかった。撃てなかった」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100670fjh">
「もしかして、あの時撃っていれば、恵那は――」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100680fjh">
「っと、そこを左！　線路を行くんだ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100690skr">
「わ、わかった」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


{	ClockPass(2326);}


//◆場所：地下_地下鉄

	SceneOut(5000, 300, "slide_01_03_0");

	MoveFFP1stop();
	Request("ProTurboBlur", Stop);
	Delete("Pro*");
	Delete("道線");

	CreateTextureSP("地下鉄", 10, Center, @-290, "cg/bg/l/bg0703100地下_地下鉄_通常_l.jpg");
	Zoom("地下鉄", 0, 500, 500, null, true);

	CreatePlainSP("揺用", 50);
//	Shake("揺用", 10000, 0, 5, 0, 0, 1000, Dxl1, false);

	MoveFFP1("@揺用",50);


//◆演出指定：最初はガタガタ揺れまくるバイク

	CreateSE("階段", "seメカ_バイク_階段降下");
	MusicStart("階段", 500, 700, 0, 1000, null,false);

	SceneIn(300, "slide_01_03_1");

//あきゅん「修正指示：ウィンドウ格好悪いのでマスクの方でやる」
//★inc櫻井　修正




	CreateMask("絵マスク", 4000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateColorEX("絵マスク/絵演色", 4510, "BLUE");
	CreateTextureEXadd("絵マスク/絵演背景", 4520, 300, Middle, "cg/ef/ef002_汎用移動.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 4530, @420, @-100, "cg/bu/bu平次_通常_pain.png");
	Request("絵マスク/絵演立絵", Smoothing);

//動作準備
	CreateTextureEX("ライン02", 5000, @800, @0, "cg/mask/ciスラッシュ_05_00z.png");

	Wait(16);

	Fade("ライン02", 200, 1000, null, false);
	Move("ライン02", 200, @-600,@0, null, false);

	Move("絵マスク", 0, 1024, 0, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, false);
	Fade("絵マスク/絵演色", 0, 1000, null, false);


//イン動作
	Move("絵マスク", 200, 200, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);


//あきゅん「修正指示：沙紅羅は出さない」
//★inc櫻井　修正

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100700fjh">
「いでででででででででで！！」

{	CreateTextureEX("絵マスク/絵演立絵02", 4530, @420, @-100, "cg/bu/bu平次_通常_shout.png");
	FadeDelete("絵マスク/絵演立絵",300,Axl2,false);
	Fade("絵マスク/絵演立絵02", 200, 1000, null, true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100710fjh">
「ストップ！　ストップ！　脚に響く！！」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100720skr">
「ああっ！　もう！
　急いでんだから我慢しろ！」

{	CreateTextureEX("絵マスク/絵演立絵03", 4530, @420, @-100, "cg/bu/bu平次_通常_angry.png");
	FadeDelete("絵マスク/絵演立絵02",300,Axl2,false);
	Fade("絵マスク/絵演立絵03", 200, 1000, null, true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100730fjh">
「我慢って――てめぇ脚をケガしてから言ってみろ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100740skr">
「うっせ！　娘の命がどうなってもいいのかよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);


{	CreateTextureEX("絵マスク/絵演立絵04", 4530, @420, @-100, "cg/bu/bu平次_通常_pain.png");
	FadeDelete("絵マスク/絵演立絵03",300,Axl2,false);
	Fade("絵マスク/絵演立絵04", 200, 1000, null, true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100750fjh">
「良くない！　良くないけど――いでででででで！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100760skr">
「ったく！　女みたいな悲鳴あげやがって！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：エンジン停止
//★ inc櫻井　バイクにまたがったままと想定して立ち絵を立たせていません。

{	Move("ライン02", 200, 1024, 0, null, false);

	Move("絵マスク", 200, 1024, 0, null, true);

	Delete("絵マスク*");
	SetVolume("バイク走行", 1000, 0, null);
	CreateSE("エンジン停止", "seメカ_バイク_エンジン停止");
	MusicStart("エンジン停止", 0, 1000, 0, 1000, null,false);
	WaitKey(3000);
	FadeDelete("揺用",1000,null,true);
	SetVolume("エンジン停止", 1000, 0, null);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0184]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/e23/200100770ujr">
「わうわうわう！！」

{	SetVolumeEX("@xbgm*", 2000, 0, null);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100780skr">
「ん？　この音――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆ＳＥ：地下鉄の振動

//あきゅん「修正指示：ループとかしっかり命令する、入れただけで満足しない」
//★inc櫻井　修正
	CreateSE("地鳴り", "se環境_地鳴り01_l");
	MusicStart("地鳴り", 2000, 1000, 0, 900, null,true);

	CreatePlainSP("絵演微震動", 20);
	Shake("絵演微震動", 6000000, 0, 1, 0, 0, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　沙紅羅と平次は、背後を振り返る。


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100790fjh">
「地下鉄だ！　反対車線に移れ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100800skr">
「わかってる！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2327);}


	TextBoxDelete(150);

//あきゅん「修正指示：画面全体をつかって電車の通過を表現する」
//★inc櫻井　修正

//★ inc遠藤 1810沙紅羅.nssのパトライトのように
// 列車の窓からこぼれる光をイメージして通り過ぎていく演出を入れたいのですが、
// 弊社のスクリプト知識ですとにんともかんとも…
// 力不足で申し訳無いのですが、こちらおまかせできないものでしょうか。

//◆ＳＥ：フアン！　という音と共に電車のライトが光る
//	CreateTextureSP("地下鉄", 10, Center, @0, "cg/bg/bg0703100地下_地下鉄_通常.jpg");
	CreateSE("電車音", "seメカ_電車_クラクション");
	CreateTextureEXadd("ライト", 15000, @0, @0, "cg/data/beam_04_00_1.png");

	CreateSE("電車音02", "seメカ_電車_通過");

	Wait(16);

	Shake("絵演微震動", 5000, 0, 1, 0, 8, 1000, null, false);
	MusicStart("電車音", 0, 1200, 0, 1000, null,false);
	Fade("ライト", 1200, 1000, null, false);

	MusicStart("電車音02", 0, 1400, 0, 1000, null,false);
	Wait(2500);
	Shake("絵演微震動", 5000, 0, 6, 0, 0, 1000, null, false);
	Fade("ライト", 2400, 0, null, true);

	SetVolume("地鳴り", 5000, 0, null);

//	Delete("黒");


//	SceneIn(300, "slide_01_02_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100810fjh">
「ふぅ……危ねぇ」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100820fjh">
「な？
　オレの言うこと聞いて、止まって置いてよかっただろ？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100830skr">
「別に、そんなことねーし！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100840skr">
「走りながら反対車線に移れば――」

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/e23/200100850ujr">
「わうわうわうっ！！」

　ユージローが、前方に向かって吠える。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//あきゅん「修正指示：電車の通過音も入れる」
//★inc櫻井　修正　SEの途切れが悪いので単発再生にしています。
{
	CreateColorEXadd("ライト", 15000, "#FFFFFF");

	CreateSE("電車音", "seメカ_電車_クラクション");
	CreateSE("電車音02", "seメカ_電車_通過");

	Wait(16);

	Shake("絵演微震動", 5000, 0, 1, 0, 8, 1000, null, false);
	MusicStart("電車音", 0, 1200, 0, 1000, null,false);
	Fade("ライト", 1200, 1000, null, false);

	Wait(1000);

	MusicStart("電車音02", 0, 1400, 0, 1000, null,false);
	Wait(2500);
	Shake("絵演微震動", 5000, 0, 6, 0, 0, 1000, null, false);
	Fade("ライト", 2400, 0, null, true);

	SetVolume("地鳴り", 5000, 0, null);

}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0205]
　後方から追い抜いていった地下鉄とすれ違うように、前方から迫るのは――もう一本の地下鉄。

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100860fjh">
「あのまま真っ直ぐ走ってたら――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100870skr">
「逃げ場、なかったかもな」

{	Zoom("絵窓02", 200, 0, 1000, Dxl2, false);
	Zoom("絵窓", 200, 0, 1000, Dxl2, true);
	Delete("絵窓/絵演立絵02");
	Delete("絵窓02/絵演立絵02");}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/e23/200100880ujr">
「わうっ！」


　平次と沙紅羅は、ばつが悪そうに顔を見合わせながら、再び反対車両へとバイクを移動させる。

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100890skr">
「ゆっくり、安全運転で行くか」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100900fjh">
「ああ。そうしよう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("電車*", 1000, 0, null);
	SceneOut(20000, 1000, "blind_01_00_0");
	Delete("揺用");




//◆場所：籠_正面_ブラックライト

	OnBG(10,"bg0801200籠_正面_ブラックライト");
	FadeBG(0,true);


//◆時間：ジャンプ
{	ClockPass(2329);}
	Wait(2000);

	Delete("絵演*");
	Delete("ライト");
	SceneIn(1000, "blind_01_00_1");

//◆ＳＥ：犬の足音
//◆演出指定：犬が先行する感じの演出

	CreateSE("SE01","se動物_イヌ_走る_l");
	MusicStart("SE01",1500,700,0,1000,null,true);

	Wait(2000);

	St("C",700, @+100,@+150,"buユージローa_通常_normal");
	CreateSE("SE02","se動作_一歩");

	SetVolume("SE01", 300, 0, null);
	MusicStart("SE02",0,700,0,1000,null,false);
	Move("@StNameC/C*", 200, @-100, @-150, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220a]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/e23/200100910ujr">
「わうわう！　わうわうわう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE02","se動作_一歩");

	MusicStart("SE02",0,500,0,700,null,false);
	Move("@StNameC/C*", 200, @-200, @0, Dxl1, false);
	DeleteSt("C",200,true);


//◆演出指定：遠くからライトが近づいてきて、バイクが止まる音
//◆ＳＥ：ふたりとも、降りる

//あきゅん「修正指示：テンポ悪いので調整」
//★inc櫻井　修正　WaitKey秒数縮小とFadeDelete秒数縮小
	DeleteSt("MR",200,true);

	CreateColorEXadd("絵色200", 1500, "White");
	CreateSE("SE02","seメカ_バイク_走行_l");
	MusicStart("SE02",2000,700,0,1000,null,true);

	Fade("絵色200", 300, 700, null, false);
	DrawTransition("絵色200", 1500, 0, 1000, 100, Dxl1, "cg/data/circle_03_00_0.png", true);

	CreateSE("SE01","seメカ_バイク_エンジン停止");

	Fade("絵色200", 300, 1000, null, true);
	SetVolume("@SE02", 300, 0, null);
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("絵色100", 1000, null, false);
	FadeDelete("絵色200", 1000, null, true);

	Wait(1000);

	St("ML",700, @-100,@0,"bu沙紅羅_通常_hard");

	CreateSE("SE03","se動作_一歩");
	MusicStart("SE03",0,500,0,1000,null,false);
	Move("@StNameML/ML*", 200, @+100, @0, Dxl1, false);
	FadeSt("ML",200,true);

	SoundPlay("@xbgm24",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220b]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100920skr">
「とうとう、来た」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100930skr">
「この奧に、河原屋双一が？」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100940fjh">
「ああ、そうだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/200100950fjh">
「準備は、いいな？」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100960skr">
「いつでもいいぜ」

{	CreateSE("木刀", "se戦闘_木刀_構える");
	MusicStart("木刀", 0, 700, 0, 1000, null,false);
	St("ML",700, @0,@0,"bu沙紅羅_木刀_rage");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/200100970skr">
「この喝雄不死で、双一の頭、かち割ってやるッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);
	SetVolume("@xbgm*", 500, 0, null);

	ClearWaitAll(1000, 0);


	EndScene();
}
