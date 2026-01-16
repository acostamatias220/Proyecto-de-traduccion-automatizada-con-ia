
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1900フウリ.nss_MAIN
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
	$GameName = "1910ノーコ_フウリ.nss";


}

scene 1900フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="830">
////////////header////////////
//file name "1900フウリ.nss"
//title "インド人にお願い！"
//previous "1850千秋_フウリ.nss"

////////////footer////////////
//next "フウリ" "1910ノーコ_フウリ.nss"

////////////body////////////

//あきゅん「演出：暗転開始スクリプト」

//■再定義定型文
	PrintBG("上背景", 30000);
{	ClockPass(1900);}

	CreateColorSP("絵色100", 1500, "Black");

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200010wfu">
（揺れ……収まった……？）

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000200020fjr">
「みんな、ケガはないわね！？」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000200030fjr">
「フウリちゃんも、大丈夫？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200040wfu">
「あ、はい。なんとか大丈夫」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200050wfu">
「でもお店は……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆場所：スーパーノヴァ_ライブ会場_地震後
	CreateTextureEX("絵背景100", 1000, 0, 0, "cg/bg/l/bg0502300スーパーノヴァ_ライブ会場_地震後_l.jpg");
	CreateTextureEX("絵背景101", 1001, -775, -364, "cg/bg/l/bg0502300スーパーノヴァ_ライブ会場_地震後_l.jpg");
	OnBG(10,"bg0502300スーパーノヴァ_ライブ会場_地震後");
	FadeBG(0,true);

	Fade("絵背景100", 0, 1000, null, true);

	Move("絵背景100", 5000, @0, -512, DxlAuto, false);
	FadeDelete("絵色100", 500, null, true);

	Wait(2000);

	Move("絵背景101", 4000, -1024, @0, DxlAxl, false);
	Fade("絵背景101", 1000, 1000, null, true);
	Delete("絵背景100");

	Wait(2000);

	FadeDelete("絵背景101", 1000, null, true);

{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200060wfu">
「機材もガラスも、メチャクチャです……」

{	St("MR",700, @+50,@+100,"bu鈴_シリアス_hard");
	DeleteSt("ML",200,false);
	Move("@StNameMR/MR*", 200, @-50, @-100, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000200070fjr">
「倒れた機材チェックして！　壊れてるのは交換！」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000200080fjr">
「誰か機材関係に知り合いいない！？」

{	St("MR",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000200090fjr">
「ガラスは――電話帳探すしかないわね」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000200100fjr">
「代用品探して、なんとか年越しライブまでには――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buフウリ_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200110wfu">
「鈴ちゃん……」

{	St("MR",700, @0,@0,"bu鈴_通常_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000200120fjr">
「あ……」

{	St("MR",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000200130fjr">
「ええと、その……」

{	St("ML",700, @0,@0,"buフウリ_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200140wfu">
「――――ッ！！」

{	St("ML",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200150wfu">
「ちょっと、行ってきます！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("@StNameML/ML*", 250, @+200, @0, Dxl1, false);
	DeleteSt("ML",200,true);

	SoundPlay("@xbgm23",0,450,true);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

{	ClockPass(1901);}

//◆場所：スーパーノヴァ_正面_ガラス割れ
	OnBG(10,"bg0501200スーパーノヴァ_正面_ガラス割れ");
	FadeBG(0,true);

	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);


{	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200160wfu">
（アッキーちゃんが、言ったとおりです！）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200170wfu">
（鈴ちゃん、口では解散とか言っちゃったけど、ホントはライブがしたいんです！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

{	ClockPass(1902);}

//◆場所：秋葉原_中央通り
	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);

	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",0,true);

	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200180wfu">
（だったら私も……悩むことなんてないです！）

{	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200190wfu">
（ミリＰさんは、私だけがデビューできると言いました）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1903);}

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200200wfu">
（でも、そんなの願い下げです！
　私たちは、やっぱり、みんなでデビューしたい！）

{	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200210wfu">
（だから、お客さんのためにも今日のライブは絶対成功させて、でも、ミリＰさんの誘いはお断りして――）

{	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200220wfu">
（それで、いつかみんなでデビューするのです！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

{	ClockPass(1904);}

//◆場所：秋葉原_ガード下
	OnBG(10,"bg0102111秋葉原_ガード下_通常");
	FadeBG(0,true);

{	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}

	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200230wfu">
「来た――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("C",200,true);}

	SetVolumeEX("@xbgm23", 4000, 300, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200240wfu">
「では――！」

{	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200250wfu">
「では――」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200260wfu">
「では…………」

{	St("C",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200270wfu">
「やっぱり、怖いです……」

{	St("C",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200280wfu">
（もしも、双六さんがいたら……今度こそ、双一親分のところに連れて行かれてしまうかも）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200290wfu">
（今度こそ……あわぶろかも……）

{	St("C",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200300wfu">
（ううう……）

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200310wfu">
（お、お願いです……貫太さん……）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200320wfu">
（私に、勇気を……！）

{	St("C",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200330wfu">
「はああああああっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//◆ＳＥ：ぽん！　腹鼓
	CreateSE("SE01","se動物_タヌキ_腹鼓03");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",700, @0,@0,"buフウリ_前のめり_shout");
	Shake("@StNameC/C*", 300, 3, 0, 0, 0, 500, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200340wfu">
「ぽん！」

{	SetVolumeEX("@xbgm23", 1000, 450, null);
	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200350wfu">
「――気合い、入りました！」

{	St("C",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200360wfu">
「よし！　それでは突げ――」

{	DeleteAllSt(200,true);
	St("MR",700, @+50,@0,"buジャブル_通常_shock");
	SetVolume("@xbgm23", 200, 0, null);
	Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/19/000200370jbr">
「フウリちゃん？　どうしたデスカ？」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_通常_fear");
	Shake("@StNameML/ML*", 200, 2, 0, 0, 0, 1000, null, false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200380wfu">
「きゅぅぅぅぅっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1905);}

//	TextBoxDelete(150);

	St("ML",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200390wfu">
「じゃ……ジャブルさん！」

{	St("MR",700, @0,@0,"buジャブル_通常_happy");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/19/000200400jbr">
「お久しぶりデスネ。元気？」

{	St("ML",700, @0,@0,"buフウリ_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200410wfu">
「お久しぶりです！　元気でした！」

{	St("MR",700, @0,@0,"buジャブル_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/19/000200420jbr">
「こんなところにくるなんて、なにがあったデスカ？」

{	St("ML",700, @0,@0,"buフウリ_胸手_shout");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200430wfu">
「あ、あの！　お願いします！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200440wfu">
「実は私、今、スーパーノヴァという場所で第一宇宙速度というガールズバンドをやっていまして――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorSP("フラッシュ白", 20000, "Black");
	DrawTransition("フラッシュ白", 500, 0, 1000, 10, null, "cg/data/turn_01_00_0.png", true);

	DeleteSt("ML",0,true);
	Wait(1500);

	DrawDelete("フラッシュ白", 500, 10, null, "turn_01_00_1", true);
	SoundPlay("@xbgm10",0,450,true);

//◆演出指示：時間経過

{	St("ML",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200450wfu">
「――ということで、ジャブルさんならきっと、電機関係が強いので、機材の面倒を見てくれるのではないかと」

{	St("ML",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200460wfu">
「一度は、逃げ出してしまった身です。
　今さら何かを頼めた義理ではないのは、わかっています」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200470wfu">
「けど、こんな時間ですし。どんな要求にも絶対に応えるっていう、ジャブルさんしか頼れないんです……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200480wfu">
「お願いします！　この通り！」

{	St("ML",700, @0,@0,"buフウリ_胸手_shout");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200490wfu">
「どうか、私を助けてください……！」

{	St("MR",700, @0,@0,"buジャブル_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/19/000200500jbr">
「……やれやれデスネ。
　双一オヤビンにバレたら大変デス」

{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200510wfu">
「それはあの……やっぱり迷惑ですよね……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buジャブル_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/19/000200520jbr">
「けれど、私数学の元天才。
　それで日本に留学したデス。計算は得意！」

{	St("MR",700, @0,@0,"buジャブル_通常_happy");
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/19/000200530jbr">
「お客さんは神様！
　そのくらいのリスクは負うデスヨ」

{	St("ML",700, @0,@0,"buフウリ_前のめり_shout");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200540wfu">
「ホントですか！？」

{	St("MR",700, @0,@0,"buジャブル_通常_happy");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/19/000200550jbr">
「家電ならなんでも揃うジャガンナート商会ネ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	St("ML",700, @0,@0,"buフウリ_前のめり_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200560wfu">
「ありがとうございます！
　お金はちゃんと払います！」

{	SetVolume("@xbgm*", 300, 0, null);
	DeleteSt("ML",200,true);
	St("MR",700, @0,@0,"buジャブル_通常_hard");
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/19/000200570jbr">
「ただし、ひとつ条件あるデスネ」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200580wfu">
「条件？」

{	St("MR",700, @0,@0,"buジャブル_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/19/000200590jbr">
「もしかしたら今日これから、フウリちゃんは大変な目に遭ってしまうかもしれないデス」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/19/000200600jbr">
「それでも構わない？」

{	St("ML",700, @0,@0,"buフウリ_前のめり_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200610wfu">
「構いません！」

{	St("ML",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200620wfu">
「というか、既に結構大変な目に遭っているので……」

{	St("MR",700, @0,@0,"buジャブル_通常_happy");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/19/000200630jbr">
「その心意気、受け取りましたデス」

{	St("MR",700, @0,@0,"buジャブル_通常_normal");
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/19/000200640jbr">
「お店のことは、私に全て任せるデスネ！」

{	St("ML",700, @0,@0,"buフウリ_前のめり_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200650wfu">
「あ……ありがとうございますッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("ML",200,true);

	SetVolume("@xbgm*", 1000, 0, null);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(2000);

//◆時間：ジャンプ
{	ClockPass(1908);}

//◆場所：スーパーノヴァ_ガラス割れ
	OnBG(10,"bg0501200スーパーノヴァ_正面_ガラス割れ");
	FadeBG(0,true);

	DrawDelete("黒幕１", 1000, 100, null, "blind_01_00_1", true);

	SoundPlay("@xbgm20",0,450,true);

{	St("ML",700, @0,@0,"buフウリ_通常_smile");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200660wfu">
「よし！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200670wfu">
（機材は調達できました！）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200680wfu">
（これで、鈴ちゃんも私の気持ちがわかってくれるはず！
　後は全力で、ドラムを叩くだけ！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("ML",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200690wfu">
（ミリＰさんの提案は、断っちゃいます！
　デビューするのは、あとでいい！）

{	St("ML",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200700wfu">
（あとで、いい）

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200710wfu">
（あとでいい……はず、なのに……）

{	St("ML",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200720wfu">
（………………あれ？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200730wfu">
「なんで？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200740wfu">
（なんでお店に入るのに、足が震えちゃうのでしょう？）

{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200750wfu">
（ミリＰさんの誘いを断る決意ができたのに、なんで？）

{	St("ML",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200760wfu">
（鈴ちゃんと、話すのが怖い？）

{	St("ML",700, @0,@0,"buフウリ_胸手_shout");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200770wfu">
（まさか！　今さら、そんなことって――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1909);}

	TextBoxDelete(150);

	CreateMask("マスク１", 2000, 100, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("マスク１","マスク１");

	CreateTextureEX("マスク１/絵背景100", 1000, Center, Middle, "cg/bg/bg0501200スーパーノヴァ_正面_ガラス割れ.jpg");
	SetShade("マスク１/絵背景100", HEAVY);
	Zoom("マスク１/絵背景100", 0, 1500, 1500, null, true);
	CreateTextureEX("マスク１/絵st100", 1200, 400, 0, "cg/bu/buノーコa_通常_shock.png");
	CreateTextureEX("マスク１/絵st200", 1200, 450, 0, "cg/bu/buノーコa_通常_fear.png");

	SetVolume("@xbgm*", 1000, 0, null);

	Fade("マスク１/絵背景100", 200, 1000, null, false);
	DrawTransition("マスク１/絵背景100", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	Move("マスク１/絵st100", 200, 450, @0, Dxl1, false);
	Fade("マスク１/絵st100", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//◆音声指示：遠くから
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000200780nko">
「フウリ、いた！」

{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200790wfu">
「え？　ノーコちゃん？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200800wfu">
「走ってどうしました？　まだライブは――」

//◆音声指示：遠くから
{	Fade("マスク１/絵st100", 220, 0, Axl1, false);
	Fade("マスク１/絵st200", 200, 1000, Dxl1, true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000200810nko">
「たすけて！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//◆音声指示：遠くから
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000200820nko">
「にとり、しぬ！！」

{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000200830wfu">
「へ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("マスク１", 200, 1024, @0, Dxl1, false);
	Fade("マスク１", 200, 0, null, true);

	Delete("マスク１/絵*");
	Delete("マスク１");

	DeleteSt("ML",200,true);

	EndScene();
}
