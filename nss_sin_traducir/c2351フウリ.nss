
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene c2351フウリ.nss_MAIN
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
	$GameName = "c2357恵那.nss";//★エンディング中（c）
}

scene c2351フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="530">
////////////header////////////
//file name "c2351フウリ.nss"
//title "厭覇薔薇"
//previous "c2350沙紅羅_似鳥.nss"

////////////footer////////////
//next "c2357恵那.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2348);}

//◆場所：半田明神_社務所
	OnBG(10,"bg0604111半田明神_社務所_通常");
	FadeBG(0,true);

	CreateSE("走る", "se動作_走る05_l");
	MusicStart("走る", 1000, 700, 0, 1000, null,true);


//★inc櫻井　修正　年明けガヤだったものを差し替え　11/18
//※下倉注：ＢＧＭ継続につきコメントアウト
//	CreateSE("ガヤ", "seガヤ_ざわざわ_l");
//	MusicStart("ガヤ", 0, 700, 0, 1000, null,true);


	FadeDelete("上背景",1000,null,true);


	Wait(1000);

	SetVolume("走る", 1000, 0, null);

	Wait(1000);

{	St("ML",700, @-150,@0,"buフウリ_通常_fear");
	CreateSE("SE01","se動作_一歩");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("@StNameML/ML*", 300, @150, @0, Dxl1, false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/510100010wfu">
「お、遅れちゃってすいませんー！」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/510100020fjr">
「もう、フウリちゃんまでドキドキさせないでよ！
　ニコちゃん、もう向こうでスタンバイしてるわよ」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/510100030wfu">
「うう……お待たせしてしまって、申し訳ない……」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/510100040fjr">
「でもま、一時はどうなるかと思ったけど、なんとかなるかな？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/510100050wfu">
「お客さん、納得してくれますよね……？」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/510100060fjr">
「きっとできるわ！」

{	St("MR",700, @0,@0,"bu鈴_シリアス_smile");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/510100070fjr">
「新年１発目！
　メチャクチャ楽しい時間にしましょう！」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_通常_smile");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/510100080wfu">
「がんばりますっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	DeleteSt("ML",200,false);
	St("R",700, @0,@0,"stミリＰa_通常_normal");
	FadeSt("R",200,true);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/c23/510100090mrp">
「鈴ちゃん！」

{	DeleteSt("R",200,false);
	St("MR",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/510100100fjr">
「あ……ミリＰさん」

{	DeleteSt("MR",200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/c23/510100110mrp">
「ニコちゃんが呼んでたわよ！
　ほら、行ってあげて！」

{	St("ML",700, @0,@0,"bu鈴_シリアス_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/510100120fjr">
「はいっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	CreateSE("SE01","se動作_走る05_l");

	Move("@StNameML/ML*", 300, @150, @0, null, false);
	MusicStart("SE01",0,700,0,1100,null,true);
	DeleteSt("ML",200,true);

	Wait(700);

	SetVolume("SE01", 2000, 0, null);

	Wait(1000);

	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/c23/510100130mrp">
「……フウリちゃん」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/510100140wfu">
「は……はいっ！」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/c23/510100150mrp">
「なにか、吹っ切れた？
　ずいぶん、表情違うけど」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_頬手_shock");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/510100160wfu">
「え？　そうでしょうか？
　まあ吹っ切れたというか……何というか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/c23/510100170mrp">
「いいなあ……アタシも、気分入れ替えないと」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/510100180wfu">
「恋人さんのこと……
　上手くいかなかったんですか？」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/c23/510100190mrp">
「ゆるキャラバン、失敗しちゃったからね。
　もう、合わせる顔もないわよ」

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/c23/510100200mrp">
「途中までは、結構評判も悪くなかったみたい――っていうか、ネットなんかも大盛り上がりだったんだけど」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/c23/510100210mrp">
「最後が、アレじゃね……」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/510100220wfu">
「最後……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("ガヤ", 1000, 1, null);

	CreateColorEXadd("白", 20000, "#FFFFFF");
	Fade("白", 1000, 1000, null, true);

	ClockDelete(0,true);

	DeleteSt("ML",0,true);
	ClockDelete(0,true);

	CreateEffect("セピア", 3000, @0, @0, 1024, 576, "Sepia");

//あきゅん「修正指示：顔全部まで出すのはだめ」
//★inc櫻井　修正　口元までに修正
	CreateTextureEX("絵背景２", 2000, -320, -1170, "cg/ev/ev2230カゴメアソビ3.jpg");
	Move("絵背景２", 2000, @0, @700, Dxl1, false);
	Fade("絵背景２", 0, 1000, null, false);

	Fade("白", 300, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/c23/510100230mrp">
「ノーコちゃんの最期、映しちゃったから」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/c23/510100240mrp">
「フィクション……ってことで押し通したけど。
　そりゃまあ、そんなことしたら非難囂々よね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	Fade("白", 300, 1000, null, true);

{	ClockPass(2348);}

	Delete("絵背景２");
	Delete("セピア");
	ClockPass(2349);
	SetVolumeEX("ガヤ", 1000, 500, null);
	FadeDelete("白",1500,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/510100250wfu">
「そう……だったんですか」

{	St("ML",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/510100260wfu">
「ノーコちゃん……」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/c23/510100270mrp">
「力になりたいのに、かえって足を引っ張っちゃってさ」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/c23/510100280mrp">
「なんていうかこう……消えちゃいたい気分？」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/510100290wfu">
「そ、そんなこと言わないでくださいー！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("ML",200,true);

	shima_taiko(3000,"cg/yur/yurIF背景01.png","cg/yur/yurIF背景03.png");

//	CreateSE("腹鼓", "se動物_タヌキ_腹鼓03");
//	MusicStart("腹鼓", 0, 1000, 0, 1000, null);
//	St("C",700, @0,@60,"buフウリ_前のめり_shout");
//	Move("@StNameC/C*", 300, @0, @-60, Dxl1, false);
//	FadeSt("C",200,true);

	Wait(1000);

//◆ＳＥ：ぽん！　腹鼓
	shima_taikopon();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/510100300wfu">
「大丈夫です！」

//◆ＳＥ：ぽん！　腹鼓
{	shima_taikopon();}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/510100310wfu">
「来年になれば、きっとまたいいことがあります！」

//◆ＳＥ：ぽん！　腹鼓
{	shima_taikopon();}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/510100320wfu">
「明けない日は、ないんです！」

//◆ＳＥ：ぽん！　腹鼓
{	shima_taikopon();}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/510100330wfu">
「ないんです！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	shima_taikoDelete();

{	St("ML",700, @0,@0,"buフウリ_通常_smile");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/510100340wfu">
「ないです」

{	St("ML",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/510100350wfu">
「ない……ですよね？」


{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/c23/510100360mrp">
「ええ」


//◆ＳＥ：ぽん！　腹鼓
{	St("MR",700, @0,@0,"buミリＰa_ショータイム_happy");
	CreateSE("腹鼓", "se動物_タヌキ_腹鼓03");
	MusicStart("腹鼓", 0, 700, 0, 1000, null);
	Shake("@StNameMR/MR*", 300, 0, 3, 0, 0, 1000, null, false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/c23/510100370mrp">
「ないわ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆ＳＥ：ぽん！　腹鼓


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	CreateSE("腹鼓", "se動物_タヌキ_腹鼓03");
	MusicStart("腹鼓", 0, 700, 0, 1000, null);
	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"buフウリ_前のめり_smile");
	Shake("@StNameC/C*", 300, 0, 5, 0, 0, 1000, null, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/510100380wfu">
「ないですよね！」


//◆ＳＥ：ぽん！　腹鼓
{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	CreateSE("腹鼓", "se動物_タヌキ_腹鼓03");
	MusicStart("腹鼓", 0, 700, 0, 1000, null);
	Shake("@StNameMR/MR*", 300, 0, 5, 0, 0, 1000, null, false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/c23/510100390mrp">
「ない！」


//◆ＳＥ：ぽん！　腹鼓
{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_通常_smile");
	CreateSE("腹鼓", "se動物_タヌキ_腹鼓03");
	MusicStart("腹鼓", 0, 700, 0, 1000, null);
	Shake("@StNameML/ML*", 300, 0, 5, 0, 0, 1000, null, false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/510100400wfu">
「ない！」

//◆ＳＥ：ぽん！　腹鼓
{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミリＰa_ショータイム_normal");
	CreateSE("腹鼓", "se動物_タヌキ_腹鼓03");
	MusicStart("腹鼓", 0, 1000, 0, 1000, null);
	Shake("@StNameMR/MR*", 300, 0, 5, 0, 0, 1000, null, false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/c23/510100410mrp">
「日は――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆ＳＥ：ぽん！　腹鼓

	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_通常_normal");
	CreateSE("腹鼓", "se動物_タヌキ_腹鼓03");
	MusicStart("腹鼓", 0, 700, 0, 1000, null);
	Shake("@StNameML/ML*", 300, 0, 5, 0, 0, 1000, null, false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/510100420wfu">
「また――」

//◆ＳＥ：ぽん！　腹鼓
{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミリＰa_ショータイム_happy");
	CreateSE("腹鼓", "se動物_タヌキ_腹鼓03");
	MusicStart("腹鼓", 0, 700, 0, 1000, null);
	Shake("@StNameMR/MR*", 300, 0, 5, 0, 0, 1000, null, false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/c23/510100430mrp">
「昇る！」

//◆ＳＥ：ぽん！　腹鼓
{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"buフウリ_前のめり_hard");
	CreateSE("腹鼓", "se動物_タヌキ_腹鼓03");
	MusicStart("腹鼓", 0, 1000, 0, 1000, null);
	Shake("@StNameC/C*", 300, 0, 5, 0, 0, 1000, null, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/510100440wfu">
「はあああああ――――――――ッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//◆ＳＥ：ぽぽん！　腹鼓

	DeleteSt("C",200,true);

	St("MR",700, @0,@0,"buミリＰa_ショータイム_happy");
	St("ML",700, @0,@0,"buフウリ_通常_smile");
	CreateSE("腹鼓", "se動物_タヌキ_腹鼓02");
	MusicStart("腹鼓", 0, 700, 0, 1000, null);
	Shake("@StNameMR/MR*", 500, 0, 5, 0, 0, 1000, null, false);
	Shake("@StNameML/ML*", 500, 0, 5, 0, 0, 1000, null, false);
	FadeAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0129]
//◆音声指示：同時
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/510100460wfu">
「ぽん！」

////◆音声指示：同時
////【ミリＰ】
//<voice name="ミリＰ" class="ミリＰ" src="voice/c23/510100450mrp">
//「ぽん！」

</PRE>
	SetText();
	AddText(1,"「ぽん！」","綿抜フウリ","c23/510100460wfu",false,false,1000);
	AddText(2,"「ぽん！」","ミリＰ","c23/510100450mrp",false,true,1500);
	TypeBeginD();//―――――――――――――――――――――――――――


//	TextBoxDelete(150);

{	DeleteAllSt(200,true);
	St("R",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("R",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/510100470fjr">
「……何やってるの？」

{	DeleteSt("R",200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/c23/510100480mrp">
「え？　いや、これはその……」

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"buフウリ_前のめり_smile");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/510100490wfu">
「景気づけです！！」

{	DeleteSt("C",200,false);
	St("R",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("R",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/510100500fjr">
「景気づけ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("R",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("R",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/510100510fjr">
「ま、いいわ。そろそろ時間だから、行くわよ！」

{	DeleteSt("R",200,false);
	St("ML",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/510100520wfu">
「はい！」

{	DeleteSt("ML",200,true);
	St("MR",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/c23/510100530mrp">
「頑張ってね！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	SetVolume("SE*", 3000, 0, null);
	SetVolume("@xbgm*", 1000, 0, null);
	CreateColorEX("絵色100", 15000, "Black");
	Fade("絵色100", 1000, 1000, null, true);

	EndScene();

}
