
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1950フウリ.nss_MAIN
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
	$GameName = "2010沙紅羅_フウリ.nss";

}

scene 1950フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="2050">
////////////header////////////
//file name "1950フウリ.nss"
//title "仲間さがしです！"
//previous "1930フウリ.nss"

////////////footer////////////
//next "フウリ" "2010沙紅羅_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//※下倉注：ミリ＝ゆるキャラバンを徹底
//嶋：ＢＧＭ再定義
//	SoundPlay("@xbgm30",0,450,true);
	SoundPlay("@xbgm16",0,450,true);

{	ClockPass(1950);}

//◆場所：秋葉原_裏通り
	OnBG(10,"bg0101111秋葉原_裏通り_通常");
	FadeBG(0,true);

	DrawDelete("上背景", 500, 1000, null, "blind_01_00_1", true);

{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200010wfu">
「行くって、どこへ――？」

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/500200020mrp">
「できたのよ！　新しい番組の企画が！」

{	St("MR",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/500200030mrp">
「ゆるキャラバンに代わる新しい企画――
　それは、大食いキングよッ！」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200040wfu">
「大食いキング？　って、あのテレ洋の？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buミリＰa_ショータイム_happy");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/500200050mrp">
「そう！　人気を博したゆるキャラ運動会に、テレビキングの人気企画、大食いキングをドッキング！」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/500200060mrp">
「新生、全国ゆるキャラバンの開催よ！」

{	St("ML",700, @0,@0,"buフウリ_胸手_think");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200070wfu">
「そんなの……急に上手くいくんでしょうか」

{	St("MR",700, @0,@0,"buミリＰa_ショータイム_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/500200080mrp">
「アタシたちの手で、上手くいかせるの。
　あなたも、参加してくれるわよね？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200090wfu">
「…………へ？」

{	St("ML",700, @0,@0,"buフウリ_頬手_shock");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200100wfu">
「きゅ！　きゅー！
　わ、私がテレビに！？」

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/500200110mrp">
「さっきのあなたの食べっぷりを見て思ったわ」

{	St("MR",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/500200120mrp">
「あなたならきっと、番組の目玉になれる！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1951);}


//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200130wfu">
「そんな……急に言われても……」

{	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/500200140mrp">
「お願い、この通り！　アタシを助けると思って、ね？」

{	St("ML",700, @0,@0,"buフウリ_胸手_think");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200150wfu">
「でも私……恥ずかしいし……」

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/500200160mrp">
「番組が終われば、きっとお茶の間の人気者よ！」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200170wfu">
「人気者……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buミリＰa_ショータイム_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/500200180mrp">
「彼氏を探してるんでしょ？
　もしかしたらゆるキャラバン、見てるかもしれないわ」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200190wfu">
「貫太さんが……見てるかも……」

{	St("ML",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200200wfu">
（もし番組で優勝して目立てば……
　貫太さんが私を見つけてくれるかもしれません）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200210wfu">
（そうしたら、私はミリＰさんに頼ってメジャーデビューする必要もない）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SoundPlay("@xbgm24",5000,550,true);
	SetVolumeEX("@xbgm16", 5000, 1, null);



//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200220wfu">
（もしかしてミリＰさんは、私がみんなと離ればなれになるのが嫌なのをわかってて、それで、こんな提案を……）

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200230wfu">
（…………あれ？）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200240wfu">
（それに……なんで、私が有名になる必要が……
　あるんでしたっけ……？）

{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200250wfu">
（だって、貫太さんは……貫太さんは……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1952);}

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200260wfu">
（いや、でも……そんなの……手紙はうそで……）

{	St("ML",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200270wfu">
（うう……頭が……頭が……！！）

{	SetVolumeEX("@xbgm24", 500, 0, null);
	SetVolumeEX("@xbgm16", 500, 450, null);
	St("MR",700, @0,@0,"buミリＰa_通常_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/500200280mrp">
「ちょっと、聞いてる？」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200290wfu">
「え……あ、はい……聞いてませんでした」

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/500200300mrp">
「やっぱりね……ま、いいわ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buミリＰa_ショータイム_normal");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/500200310mrp">
「アタシは片っ端から秋葉原の大食い店を当たるわ。
　あなたはふたり、コスプレイヤーを連れてきて！」

{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200320wfu">
「コスプレイヤー？」

{	St("MR",700, @0,@0,"buミリＰa_ショータイム_happy");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/500200330mrp">
「そう。秋葉原代表ね」

{	St("ML",700, @0,@0,"buフウリ_通常_fear");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200340wfu">
「代表って、そんな――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);


{	St("MR",700, @0,@0,"buミリＰa_ショータイム_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/500200350mrp">
「８時２０分からスタートだから！」

{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200360wfu">
「え！？　でも今もう――」

{	St("MR",700, @0,@0,"buミリＰa_ショータイム_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/500200370mrp">
「頼んだわよッ！！」

{	Move("@StNameMR/MR*", 200, @+200, @0, Dxl1, false);
	DeleteSt("MR",200,true);
	St("ML",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200380wfu">
「ふぇっ、ちょ……待ってくださ……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200390wfu">
「行っちゃっ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteSt("ML",200,true);
	St("MR",700, @+100,@0,"buミリＰa_通常_normal");
	Move("@StNameMR/MR*", 200, @-100, @0, Dxl1, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/500200400mrp">
「あともうひとつッ！！」

{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200410wfu">
「は、はい！？」

{	St("MR",700, @0,@0,"buミリＰa_ショータイム_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/500200420mrp">
「さっきの恋人の話、人前でしちゃ駄目よ！」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/500200430mrp">
「あくまであなたはアイドルバンド！
　恋人なんて、いちゃマズいんだからね！」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200440wfu">
「は……はい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolume("@xbgm*", 2000, 0, null);


	SoundPlay("@xbgm20",0,1,true);

	TextBoxDelete(150);

	CreateSE("SE10","seガヤ_交通少_l");
	MusicStart("SE10",2000,400,0,1000,null,true);



	DeleteSt("ML",200,true);

	Wait(1500);


{	ClockPass(1953);}


//嶋：同じ場所なので、保留
//◆場所：秋葉原_裏通り
//	OnBG(10,"bg0101111秋葉原_裏通り_通常");
//	FadeBG(500,true);

{	St("C",700, @0,@0,"fuフウリ_胸手_worry");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200450wfu">
（どうしよう……）

{	St("C",700, @0,@0,"fuフウリ_胸手_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200460wfu">
（……ううん、迷ってるヒマはありません！
　今度こそ、成功させましょう！）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200470wfu">
（仲間を集めるためには――！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	DeleteSt("C",200,true);

	SetVolumeEX("@xbgm20", 2000, 200, null);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆場所：スーパーノヴァ_正面_ガラス割れ
	OnBG(10,"bg0501200スーパーノヴァ_正面_ガラス割れ");
	FadeBG(0,true);

//	SoundPlay("@xbgm10",0,450,true);

	DrawDelete("黒幕１", 300, 100, null, "blind_01_00_1", true);

	St("C",700, @0,@0,"fuフウリ_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200480wfu">
（……機材は、届いたみたいですね）

{	St("C",700, @0,@0,"fuフウリ_前のめり_shout");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200490wfu">
（ジャブルさん、ありがとうございます！
　さすがは数学の元天才！）

{	St("C",700, @0,@0,"fuフウリ_胸手_worry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200500wfu">
（でもガラスは――まだ、割れたまま。
　お店の中は忙しそうです……）

{	St("C",700, @0,@0,"fuフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200510wfu">
（あの時、店を飛び出したまま……
　鈴ちゃん、許してくれるでしょうか？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1954);}

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"fuフウリ_胸手_sad");
	FadeSt("C",200,true);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200520wfu">
（やっぱり……ちょっと、こわい）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200530wfu">
（もしもまだ、解散するつもりでいたとしたら……）

{	St("C",700, @0,@0,"fuフウリ_通常_fear");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200540wfu">
（…………）

{//嶋：スーパーノヴァから出てきました
	DeleteAllSt(200,true);
	CreateSE("SE01","se動作_ドア蹴破る");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("ML",700, @-50,@0,"bu恵那_ハルヒ_shout");
	Move("@StNameML/ML*", 200, @+50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500200550fje">
「どいてどいてッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：ドン！！　押しのける

	CreateColorEX("フラッシュ白", 15000, "WHITE");

//	SetVolume("@xbgm*", 500, 0, null);
	CreateSE("SE01","se戦闘_打撃音05");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("フラッシュ白",0,1000,null,true);
	DeleteAllSt(0,true);
	St("C",700, @-100,@0,"buフウリ_通常_shock");
	FadeSt("C",0,true);
	Move("@StNameC/C*", 200, @+100, @0, Dxl1, false);
	Fade("フラッシュ白",200,0,null,true);
	Delete("フラッシュ白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200560wfu">
「きゅっ！！」

{	St("C",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500200570fje">
「待っててアッキーちゃん！　パンツ、届けるわ！」

{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200580wfu">
「パンツ……？」

{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500200590fje">
「私、今度は――あなたを、信じてみせる！！」

{	Move("@StNameC/C*", 200, @+100, @0, Dxl1, false);
	DeleteSt("C",200,true);
	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200600wfu">
（な、なんだったんですか、今のは……？）

{	St("C",700, @0,@0,"buフウリ_胸手_smile");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200610wfu">
（わかんない……わかんないけど……
　なんかこう、勇気が出るような）

{	St("C",700, @0,@0,"buフウリ_胸手_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200620wfu">
「……うん！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200630wfu">
「迷ってても、仕方ない！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE*", 2000, 0, null);

	TextBoxDelete(150);

	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	DeleteSt("C",200,true);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


//◆場所：スーパーノヴァ_ライブ会場_ガラス割れ
	OnBG(10,"bg0502111スーパーノヴァ_ライブ会場_ガラス割れ");
	FadeBG(0,true);



	SetVolumeEX("@xbgm20", 2000, 450, null);

	DrawDelete("黒幕１", 500, 100, null, "blind_01_00_1", true);


	St("C",700, @+50,@0,"buフウリ_通常_sad");
	Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200640wfu">
「あ……あの……」

{	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200650wfu">
「ただいま……です」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500200660fjr">
「フウリちゃん……」

{	St("MR",700, @0,@0,"buフウリ_胸手_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200670wfu">
「…………」

{	St("ML",700, @0,@0,"bu鈴_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500200680fjr">
「…………」

{	St("MR",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200690wfu">
「ええと、あの……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu鈴_シリアス_shout");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500200700fjr">
「ごめんなさいッ！！」

{	St("MR",700, @0,@0,"buフウリ_胸手_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200710wfu">
「え……」

{	St("ML",700, @0,@0,"bu鈴_シリアス_think");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500200720fjr">
「勝手に、バンド解散とか言っちゃって……
　ホントに、ごめん！」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500200730fjr">
「アタシ、リーダー失格だった。
　あなたを信じられなかった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);

	St("ML",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500200740fjr">
「あなたがアタシに隠し事してるって、不安になって。
　仲間なのに、なんで教えてくれないんだろうって」

{	St("ML",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500200750fjr">
「でもそれって当たり前で、アタシだって、なんでバンドをやるか、あなたに説明したことさえなかったんだよね」

{	St("ML",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500200760fjr">
「だから、アタシは心に決めたの」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500200770fjr">
「いつか、あなたが自分の心を開いてくれるその日まで」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500200780fjr">
「バンドメンバーとして、あなたを信じるって」

{	St("MR",700, @0,@0,"buフウリ_胸手_shy");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200790wfu">
「……ありがとう」

{	St("ML",700, @0,@0,"bu鈴_シリアス_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500200800fjr">
「えへ。なんか……面と向かって言うと、照れるね」

{	St("MR",700, @0,@0,"buフウリ_胸手_shy");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200810wfu">
「えへへ……そうですね……」

{	St("MR",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200820wfu">
「ふへ――なんか、肩の力が……一気に……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu鈴_シリアス_shout");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500200830fjr">
「ほら！　力を抜くには早いわよっ！
　まだ問題があるって、顔に書いてあるんだから！」


{	St("MR",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200840wfu">
「え……？　わかりますか？」

{	St("ML",700, @0,@0,"bu鈴_シリアス_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500200850fjr">
「どれだけ一緒に付き合ってると思ってるの？
　で、何に困ってるの？」

{	St("MR",700, @0,@0,"buフウリ_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200860wfu">
「あ、あの……実は鈴ちゃんに、お願いしたいことが」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200870wfu">
「実は、これから『全国ゆるキャラバン』というのがあって、それに参加しなければなりません」

{	St("MR",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200880wfu">
「それでもし良かったら、ふたりくらいメンバーを――」

{	St("MR",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200890wfu">
「……と思ったんですけど、やっぱり無理ですね」

{	St("ML",700, @0,@0,"bu鈴_シリアス_think");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500200900fjr">
「そんなこと……ない……かな？」

{	St("MR",700, @0,@0,"buフウリ_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200910wfu">
「私にだって、わかります。ライブを成功させるためには、もう人手が減らせない……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1955);}

	St("ML",700, @0,@0,"bu鈴_シリアス_think");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500200920fjr">
「ええと……その……」

{	St("ML",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500200930fjr">
「ゴメン」

{	St("MR",700, @0,@0,"buフウリ_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200940wfu">
「そんな顔、しないで下さいよー。
　私にだって、アテくらいあるんです」

{	St("MR",700, @0,@0,"buフウリ_胸手_hard");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200950wfu">
「私はライブまで、絶対に戻ってきます。
　だから鈴ちゃん、こっちはどうぞよろしくお願いします」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("ML",700, @0,@0,"bu鈴_シリアス_shout");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500200960fjr">
「でも――」

{	St("MR",700, @0,@0,"buフウリ_前のめり_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500200970wfu">
「それじゃ、また！
　絶対、笑顔で戻ってきますから！」

{	St("ML",700, @0,@0,"bu鈴_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500200980fjr">
「フウリちゃん……」

{	St("ML",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500200990fjr">
「わかったわ！
　会場の方は、この鈴ちゃんに任せておきなさいッ！」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500201000fjr">
「あなたが来るまで、ちゃんと会場準備しておくから！」

{	St("MR",700, @0,@0,"buフウリ_前のめり_smile");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201010wfu">
「はい、よろしくお願いします！」

{	DeleteSt("MR",200,true);
	St("C",700, @+30,@0,"bu千秋_通常_normal");
	Move("@StNameC/C*", 200, @-30, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/19/500201020ktt">
「……フウリ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	SetVolume("@xbgm*", 2000, 0, null);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteSt("C",0,true);

{	ClockPass(1956);}

	CreateSE("SE10","seガヤ_交通少_l");
	MusicStart("SE10",2000,400,0,1000,null,true);

//◆場所：銭形公園_全景
	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);

	DrawDelete("黒幕１", 1000, 100, null, "blind_01_00_1", true);



{	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201030wfu">
「ふぅ……よかった……仲直りできて……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"buフウリ_胸手_hard");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201040wfu">
「と、安心してはいられません！」

{	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201050wfu">
「勢いで出てきてしまいましたが……
　どうしよう……全然、アテがないです……」

{	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201060wfu">
「コスプレイヤーのひと……コスプレイヤーの……」

{	St("C",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201070wfu">
「あ！　星さん？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteSt("C",200,true);

	SetVolume("SE*", 500, 0, null);
//	SoundPlay("@xbgm10",0,450,true);
	SoundPlay("@xbgm15",0,450,true);

{	St("ML",700, @-50,@0,"buフウリ_通常_shock");
	Move("@StNameML/ML*", 200, @+50, @0, Dxl1, false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201080wfu">
「あああああ、あの、ちょっと！」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/500201090kms">
「なんですか」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201100wfu">
「お願いがあります！
　今、テレビに出るメンバーを探してて――」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/500201110kms">
「断ります」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201120wfu">
「あ……は、はい……
　やっぱり、そうですよね……」

{	St("ML",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201130wfu">
「どうも、失礼しまし――」

{//	SetVolume("@xbgm10", 500, 0, null);
	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/500201140kms">
「……待ちなさい」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201150wfu">
「きゅ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("ML",200,true);

//	SoundPlay("@xbgm15",0,450,true);

	St("C",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/500201160kms">
「先ほどは見逃しましたが――あなたは人間ではない。
　何者ですか？」

{	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201170wfu">
「えと、ふつうのひとですが……」

{	St("C",700, @0,@0,"bu歌門_威圧_angry");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/500201180kms">
「笑止！」

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	Shake("@StNameC/C*", 300, 5, 0, 0, 0, 1000, null, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201190wfu">
「きゅうっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



//◆ＥＶ："ev/ev0000歌門破魔弓.txt"
	CreateTextureEX("絵背景1000", 10000, Center, -500, "cg/ev/ev0000歌門破魔弓.jpg");

	CreateSE("SE01","se戦闘_弓矢_弓しなる");
	MusicStart("SE01",0,500,0,1000,null,false);

	Move("絵背景1000", 1500, @0, -135, DxlAuto, false);
	Fade("絵背景1000", 500, 1000, null, true);

	DeleteSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/500201200kms">
「もう一度伺います」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/500201210kms">
「あなたは何者？」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/500201220kms">
「アザナエルを盗み出したのは、あなたですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景10000", 1000, -277, -131, "cg/ev/ev0000歌門破魔弓.jpg");


	Fade("絵背景10000", 0, 1000, null, true);

	CreateMask("マスク１", 2000, 33, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	CreateTextureEX("マスクライン", 2101, 33, 0, "cg/mask/ciスラッシュ_05_01z.png");
	Fade("マスクライン", 0, 1000, null, true);


	CreateTextureEX("マスク１/絵背景100", 2000, Center, Middle, "cg/bg/bg1701100銭形公園_全景_通常.jpg");
	SetShade("マスク１/絵背景100", HEAVY);
	Zoom("マスク１/絵背景100", 0, 1500, 1500, null, true);
	Fade("マスク１/絵背景100", 0, 1000, null, true);

	CreateTextureEX("マスク１/絵st100", 2100, 400, 0, "cg/bu/buフウリ_通常_shock.png");
	Fade("マスク１/絵st100", 0, 1000, null, true);

	FadeDelete("絵背景1000", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0291]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201230wfu">
「あざなえる……って、なんです……？」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/500201240kms">
「時間がありません。答えないなら」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	TextBoxDelete(150);

	CreateTextureEX("マスク１/絵st200", 2100, 400, 0, "cg/bu/buフウリ_通常_fear.png");
	CreateTextureEX("マスク１/絵st300", 2100, 400, 0, "cg/bu/buフウリ_通常_angry.png");
	CreateTextureEX("マスク１/絵st400", 2100, 497, -5, "cg/bu/buフウリ_前のめり_hard.png");

//◆演出指定：光の矢が走る
	CreateColorEXadd("絵色100", 1500, "RED");
	Fade("絵色100", 500, 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/500201250kms">
「殺すだけです」

{	Fade("マスク１/絵st100", 220, 0, Axl1, false);
	Fade("マスク１/絵st200", 200, 1000, Dxl1, true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201260wfu">
「ちょ……やだ！　待ってください！」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/500201270kms">
「アザナエルを、どこへ？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201280wfu">
「知らないです！　ホントに知らないです！」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/500201290kms">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	Fade("マスク１/絵st200", 220, 0, Axl1, false);
	Fade("マスク１/絵st300", 200, 1000, Dxl1, true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201300wfu">
「嘘じゃありません……
　太三郎狸様に誓います……！」

{	Fade("マスク１/絵st300", 220, 0, Axl1, false);
	Fade("マスク１/絵st400", 200, 1000, Dxl1, true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201310wfu">
「嘘だったらなんでもします！
　腹踊りでもします！」

{	Fade("マスク１/絵st400", 220, 0, Axl1, false);
	Fade("マスク１/絵st200", 200, 1000, Dxl1, true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201320wfu">
「だから……その……痛いのは、やめて下さい……うう」

//◆音声指示：睨む
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/500201330kms">
「――――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//◆音声指示：怯え
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201340wfu">
「――――」

//◆音声指示：睨む
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/500201350kms">
「――――」

//◆音声指示：怯え
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201360wfu">
「――――」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/500201370kms">
「……わかりました」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE10","seガヤ_交通少_l");
	MusicStart("SE10",2000,700,0,1000,null,true);
	SetVolume("@xbgm15", 2000, 0, null);



	CreatePlainSP("仮上背景", 15000);

	Delete("マスク１/絵*");
	Delete("マスク１");
	Delete("マスクライン");
	Delete("絵背景100");
	Delete("絵色100");
	Delete("絵背景1000");
	Delete("絵背景10000");

	FadeDelete("仮上背景", 1000, null, true);

//	SoundPlay("@xbgm10",0,450,true);

{	St("MR",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/500201380kms">
「確かに、あなたではないようです」

{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201390wfu">
「あ……ありがとう……ございます……」

{	St("ML",700, @0,@0,"buフウリ_前のめり_shout");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201400wfu">
「お礼に、は、恥ずかしながら腹踊りを――」

{	St("MR",700, @0,@0,"bu歌門_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/500201410kms">
「不要です」

{	St("MR",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/500201420kms">
「失礼します」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201430wfu">
「あ……はい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	SetVolume("@xbgm*", 1000, 0, null);
	DeleteAllSt(200,true);

//◆ＳＥ：足跡
	CreateSE("SE01","se動作_歩く04_l");
	MusicStart("SE01",0,500,0,1000,null,true);

	Wait(2000);

//◆演出指定：足音を少し聞かせて去っていく感じで。次の声でカットアウトして足が止まる


{	St("C",700, @0,@0,"buフウリ_胸手_hard");
	FadeSt("C",200,true);}

	SetVolume("SE01", 500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201440wfu">
「星さん！　あの、アザナエル――でしたっけ？」

{	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201450wfu">
「見つかるといいですね！」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/500201460kms">
「……あなた、名前は？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buフウリ_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201470wfu">
「フウリです！　綿抜フウリ！」

{	St("C",700, @0,@0,"bu歌門_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/500201480kms">
「風狸――本来ならば祓わねばならぬところですが、あなたはいい<RUBY text="・・">モノ</RUBY>のようです」

{	St("C",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/500201490kms">
「お詫びにひとつ、忠告を」

{	St("C",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/500201500kms">
「あなたは今、非常に重要な出来事から目を逸らしている」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/500201510kms">
「あまりの願いの強さが故に、自分でも目を逸らしたことに気付いていないかもしれない」

{	St("C",700, @0,@0,"bu歌門_通常_think");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/500201520kms">
「しかし、それは誤ったあり方です」

{	St("C",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/500201530kms">
「希望など、捨ててしまいなさい。
　さすればあなたにも、心の平穏が訪れるでしょう」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201540wfu">
「そんなこと……いわれても……」

{	St("C",700, @0,@0,"bu歌門_通常_pride");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/500201550kms">
「では、失礼します」

{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201560wfu">
「心の平穏？　私が目を逸らしている……？」

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201570wfu">
「う、うーむ……
　なにがなんだか、よくわかりません」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE*", 2000, 0, null);

	TextBoxDelete(150);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteSt("C",0,true);

//◆場所：スーパーノヴァ_正面_ガラス割れ
	OnBG(10,"bg0501200スーパーノヴァ_正面_ガラス割れ");
	FadeBG(0,true);

	SoundPlay("@xbgm05",0,450,true);

	DrawDelete("黒幕１", 500, 100, null, "blind_01_00_1", true);

{	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201580wfu">
「コスプレのひと……コスプレのひと……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

/*
	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201590wfu">
「ここは……だめですね」
*/

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201600wfu">
「みんな、忙しそうです」

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201610wfu">
「でも……他に知り合いなんて……」

{	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201620wfu">
「うう……こうなったら、破れかぶれ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	SetVolume("@xbgm*", 1000, 0, null);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteSt("C",0,true);


	Wait(1000);

{	ClockPass(1957);}


//◆場所：ドンガ・バチョ_家電売り場
	OnBG(10,"bg1801111ドンガ・バチョ_家電売り場_通常");
	FadeBG(0,true);
	#bg1801100ドンガ・バチョ_家電売り場_通常 = true;

//	CreateSE("SE10","seガヤ_ガバチョのテーマ_l");
	MusicStart("SE10",1000,600,0,1000,null,true);

	DrawDelete("黒幕１", 500, 100, null, "blind_01_00_1", true);

	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201630wfu">
（ドンガの店員さん――ＵＦＯキャッチャー担当のメイドさんなら、暇そうだし、きっと！）

{	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201640wfu">
「あ、あの……」

//【バイトＢ】
<voice name="バイトＢ" class="その他女声" src="voice/19/500201650e14">
「お帰りなさいませ、ご主人さ――」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201660wfu">
「お仕事お休みできませんか……？」

//【バイトＢ】
<voice name="バイトＢ" class="その他女声" src="voice/19/500201670e14">
「え？」

{	St("C",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201680wfu">
「一緒に来てください！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【バイトＢ】
<voice name="バイトＢ" class="その他女声" src="voice/19/500201690e14">
「いや、でもそういうのは禁止されて……」

{	St("C",700, @0,@0,"buフウリ_前のめり_shout");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201700wfu">
「おなかすいてませんか？」

//【バイトＢ】
<voice name="バイトＢ" class="その他女声" src="voice/19/500201710e14">
「は？」

{	St("C",700, @0,@0,"buフウリ_前のめり_smile");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201720wfu">
「ごはんもお腹いっぱい食べられますよ！　ね？」

//【バイトＢ】
<voice name="バイトＢ" class="その他女声" src="voice/19/500201730e14">
「て、店長！　店長ーッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	SetVolume("SE10", 300, 0, null);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteSt("C",0,true);

{	ClockPass(1958);}

//◆場所：秋葉原駅_正面
	OnBG(10,"bg0201112秋葉原駅_正面_通常");
	FadeBG(0,true);


//	CreateSE("SE10","seガヤ_街中_l");
//	MusicStart("SE10",500,500,0,1000,null,true);

	DrawDelete("黒幕１", 300, 100, null, "blind_01_00_1", true);


	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201740wfu">
（こうなったら……コミマ帰りの人をスカウト！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：ダイジェスト

	DeleteSt("C",200,true);

//	SetVolume("SE*", 300, 0, null);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 10, null, "cg/data/turn_01_00_0.png", true);

	DeleteAllSt(0,true);



//◆場所：秋葉原駅_正面
//	OnBG(10,"bg0201112秋葉原駅_正面_通常");
//	FadeBG(0,true);

{	ClockPass(1959);}

//	SoundPlay("@xbgm23",0,450,true);

	DrawDelete("黒幕１", 500, 10, null, "turn_01_00_1", true);


	St("C",700, @0,@+50,"buフウリ_前のめり_shout");

	FadeSt("C",200,false);
	Move("@StNameC/C*", 100, @0, @-60, Dxl1, true);
	Move("@StNameC/C*", 100, @0, @+10, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0411]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201750wfu">
「あの、そのバッグの中……
　コスプレグッズが入ってませんか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2000);}


	TextBoxDelete(150);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 10, null, "cg/data/turn_01_00_1.png", true);

	DeleteAllSt(0,true);

	DrawDelete("黒幕１", 500, 10, null, "turn_01_00_0", true);

	St("MR",700, @+50,@+50,"buフウリ_前のめり_smile");
	FadeSt("MR",200,false);
	Move("@StNameMR/MR*", 100, @-50, @-60, Dxl1, true);
	Move("@StNameMR/MR*", 100, @0, @+10, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0412]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201760wfu">
「コスプレはお腹が減ります！
　一緒に大食いしましょう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2001);}


	TextBoxDelete(150);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 10, null, "cg/data/turn_01_00_0.png", true);

	DeleteAllSt(0,true);

	DrawDelete("黒幕１", 300, 10, null, "turn_01_00_1", true);

	St("ML",700, @-50,@+50,"buフウリ_通常_shock");
	FadeSt("ML",200,false);
	Move("@StNameML/ML*", 100, @+50, @-60, Dxl1, true);
	Move("@StNameML/ML*", 100, @0, @+10, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0413]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201770wfu">
「あなたのその美貌……テレビに映して……
　え？　男の人！？　そ、それはちょっと……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆ＳＥ：雷が鳴る
	SetVolume("@xbgm*", 300, 0, null);
	CreateSE("SE01","se環境_雷01");
	MusicStart("SE01",0,500,0,1000,null,false);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);

	DeleteAllSt(0,true);

	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);

	$SYSTEM_effect_rain_dencity=32;
	$SYSTEM_effect_rain_speed=128;
	CreateEffect("絵エフェクト１", 10000, 0, 0, 1024, 576, "Rain");
	SetAlias("絵エフェクト１", "絵エフェクト１");

	Fade("絵エフェクト１",0,500,null,true);
	CreateSE("SE10","se環境_雨_l");
	MusicStart("SE10",1000,500,0,1000,null,true);

	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201780wfu">
「きゅ――――っ！」

{	St("C",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201790wfu">
「か……雷……！？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201800wfu">
「うう……雨まで……」

　フウリは、駅前の時計を見上げる。

{	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201810wfu">
（もう、約束まで時間がない……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	CreateSE("SE11","seガヤ_ざわざわ_l");
	MusicStart("SE11",2000,700,0,1000,null,true);

	ClockPass(2002);

	St("C",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("C",200,true);

//※下倉注：ワンクリック毎に時間が経つような演出をお願いします

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201820wfu">
「お願いしますッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//※下倉注：この時点で雨止んでてＯＫです。一応音だけ止めておきます。 2010/11/19
	SetVolumeEX("SE10", 1000, 0, null);

	CreateColorEX("フラッシュ白", 20000, "Black");
	Fade("フラッシュ白",500,1000,null,true);

	Delete("絵エフェクト１");

	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);

	Wait(500);
	ClockPass(2003);

	Fade("フラッシュ白",500,0,null,true);


//※下倉注：ワンクリック毎に時間が経つような演出をお願いします

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0431]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201830wfu">
「あの、お話を！　大晦日の一大イベントです！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("フラッシュ白",500,1000,null,true);

{	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}

	Wait(500);
{	ClockPass(2004);}

	Fade("フラッシュ白",500,0,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0432]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201840wfu">
「少しでいいので、話を聞いてもらえると――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("フラッシュ白",500,1000,null,true);

	DeleteAllSt(200,true);

	Wait(2000);

//◆時間：ジャンプ
{	ClockPass(2007);}

	Fade("フラッシュ白",1000,0,null,true);
	Delete("フラッシュ白");

{	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0433]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201850wfu">
（だめです……）

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201860wfu">
（寒いし、お腹もぺこぺこだし……）

{	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201870wfu">
「もう、帰りたい……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("SE11", 300, 1, null);

//◆演出指定：回想開始
	CreateColorEXadd("フラッシュ", 20000, "WHITE");
	Fade("フラッシュ",300,1000,null,true);

	DeleteSt("C",200,true);

//借入
	CreateColorEXadd("フラッシュ白", 1500, "WHITE");
	Fade("フラッシュ白",0,100,null,true);

	Fade("絵エフェクト１",0,0,null,true);

	CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/bg/bg0201111秋葉原駅_正面_通常.jpg");
	CreateTextureEX("絵背景100", 1001, Center, 576, "cg/bu/bu鈴_シリアス_shout.png");
	CreateTextureEX("絵背景200", 1001, Center, 576, "cg/bu/bu鈴_シリアス_think.png");
	$CharaYPos=672-ImageVertical("絵背景100");
	$CharaYPos2=672-ImageVertical("絵背景200");

	Move("絵背景100", 0, @0, $CharaYPos, null, true);
	Move("絵背景200", 0, @0, $CharaYPos2, null, true);

	Fade("絵背景100", 0, 1000, null, true);

	Fade("フラッシュ",300,0,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500201880fjr">
「ね、ちょっとあなた」

{	Fade("絵背景200", 200, 1000, null, true);
	Fade("絵背景100", 0, 0, Axl1, true);}
//嶋：下記シーンに合わせて修正
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500201890fjr">
「大丈夫かな？
　なんか泣いちゃいそうな顔――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////【富士見鈴】
//<voice name="富士見鈴" class="富士見鈴" src="voice/19/500201890fjr">
//「大丈夫？　なんだか今にも泣きそうな――」

	TextBoxDelete(150);

//◆演出指定：回想終了

	Fade("フラッシュ",300,1000,null,true);

{	ClockPass(2008);}

	SetVolumeEX("SE11", 1000, 700, null);

	Delete("絵背景10");
	Delete("絵背景100");
	Delete("絵背景200");
	Delete("フラッシュ白");

//	SetVolumeEX("SE10", 300, 500, null);
	Fade("絵エフェクト１",0,500,null,true);

	Fade("フラッシュ",300,0,null,true);
	Delete("フラッシュ");

{	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0441]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201900wfu">
「ありゃりゃ……鈴ちゃん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2008);}


//	TextBoxDelete(150);

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201910wfu">
「また……心配されてしまいました」

{	St("C",700, @0,@0,"buフウリ_胸手_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201920wfu">
「うん、大丈夫……！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201930wfu">
「もう一踏ん張り……最後まで、諦めませんよ！」

{	St("C",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201940wfu">
「よおおおおおおッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆ＳＥ：ぽん！　腹鼓

	St("C",700, @0,@0,"buフウリ_前のめり_shout");

	CreateSE("SE01","se動物_タヌキ_腹鼓03");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("@StNameC/C*", 300, 3, 0, 0, 0, 500, null, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201950wfu">
「ぽん！！」

{	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201960wfu">
「よーし、頑張る――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);


{	ClockPass(2009);}

//◆ＳＥ：消防車サイレン
	CreateSE("SE01","seメカ_車_消防車サイレン_l");
	MusicStart("SE01",3000,700,0,1000,null,true);

	Wait(3000);
//◆演出指定：遠くから徐々に近づいてくる感じで
	SetVolume("SE01", 10000, 0, null);


{	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0461]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201970wfu">
「あれ？　火事ですか？」

{	St("C",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201980wfu">
「ＵＰ＋ビルの方から――あ！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500201990wfu">
「もしかして、雷が落ちた！？」

{	St("C",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500202000wfu">
「た、大変です！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	SetVolumeEX("SE10", 300, 0, null);
	SetVolumeEX("SE01", 300, 0, null);
	SetVolumeEX("SE11", 2000, 0, null);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵エフェクト１");

	DeleteSt("C",200,true);



	CreateSE("SE10","seガヤ_交通少_l");
	CreateSE("SE11","seガヤ_街中_l");
	MusicStart("SE10",2000,500,0,1000,null,true);
	MusicStart("SE11",2000,500,0,1000,null,true);

//◆場所：ショウビル_正面
	OnBG(10,"bg1901111ショウビル_正面_通常");
	FadeBG(0,true);

	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);

	St("C",700, @-50,@0,"buフウリ_通常_hard");
	Move("@StNameC/C*", 200, @+50, @0, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0471]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500202010wfu">
（一生懸命仲間を捜しても、番組が消えては元も子も――）

//◆音声指示：遠くから
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500202020skr">
「うぎゃああああああああ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//◆音声指示：遠くから
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500202030skr">
「エッチい本じゃねえかあああああああああ！！」

{	St("C",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500202040wfu">
「え……？」

//◆音声指示：遠くから
//【綿抜フウリ】
<voice name="フウリ" class="フウリ" src="voice/19/500202050wfu">
「今の声は――なんでしょうか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//※下倉注：ＳＥ引き継ぎ
	Request("SE10", Lock);
	Request("SE11", Lock);

	TextBoxDelete(150);

	DeleteAllSt(200,true);


	EndScene();

}
