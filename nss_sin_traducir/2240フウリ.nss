
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2240フウリ.nss_MAIN
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
		$GameName="2250カゴメ4.nss";
	}else{
		$GameName="c2250フウリ.nss";
	}
}

scene 2240フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="560">
////////////header////////////
//file name "2240フウリ.nss"
//title "本当の願いは……？"
//previous "2235フウリ.nss"
//previous "c2233フウリ.nss"

////////////footer////////////
//next "フウリ" "2250カゴメ4.nss"

////////////body////////////

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2242);}

//◆場所：柳神社_境内
	OnBG(10,"bg1501100柳神社_境内_通常");
	FadeBG(0,true);

	CreateSE("SE10","se環境_風と葉っぱ_l");
	MusicStart("SE10",3000,500,0,1000,null,true);


	DrawDelete("上背景", 300, 100, null, "blind_01_00_1", true);

//◆ＳＥ：猫鳴き声
	CreateSE("SE01","se動物_ネコ_鳴き声02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);

//◆ＳＥ：猫鳴き声
	CreateSE("SE12","se動物_ネコ_鳴き声02");
	MusicStart("SE12",0,700,0,750,null,false);

	Wait(1000);

//◆ＳＥ：ゆっくり、足音が近づく
	CreateSE("SE02","se動作_歩く04_l");
	CreateSE("SE13","se動物_ネコ_鳴き声02");
	MusicStart("SE02",3000,700,0,1000,null,false);

	Wait(2500);

	MusicStart("SE13",0,700,0,900,null,false);

	Wait(1000);


	St("C",700, @-100,@0,"buフウリ_通常_hard");

	SetVolume("SE02", 100, 0, null);
	CreateSE("SE03","se動作_着地");
	MusicStart("SE03",1000,700,0,1000,null,false);
	Move("@StNameC/C*", 200, @+100, @0, Dxl1, false);
	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/400100010wfu">
「…………」

{	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/400100020wfu">
「ねこさん、ごめんなさい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

//◆ＳＥ：猫、鳴き声をあげて去っていく

	CreateSE("SE01","se動物_ネコ_鳴き声01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);

	CreateSE("SE02","se動作_茂み_l");
	MusicStart("SE02",0,700,0,1000,null,true);

	Wait(500);
	SetVolume("SE02", 3000, 0, null);

{	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/400100030wfu">
「おたぬきさま……」

{	St("C",700, @0,@0,"buフウリ_胸手_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/400100040wfu">
「その、隣に……」

{	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/400100050wfu">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2243);}

	TextBoxDelete(150);


	CreatePlainSP("絵板写", 5000);
	DeleteAllSt(0,true);

//◆演出指定：一度、空を見上げる
	CreateTextureSP("絵背景100", 100, Center, -400, "cg/bg/bg2401100空_上空_通常.jpg");

	Move("絵背景100", 2500, @0, 0, Dxl1, false);
	FadeDelete("絵板写", 500, null, true);

	Wait(1000);

	DeleteSt("C",0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/400100060wfu">
「ふぅ……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/400100070wfu">
「…………よし」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 3000, 0, null);

	TextBoxDelete(150);

//◆演出指定：ゆっくり見せる感じ

	CreatePlainSP("絵板写", 5000);
	Wait(16);
	Fade("絵背景100", 0, 0, null, true);
	CreateTextureSP("絵背景1000", 100, 0, Middle, "cg/bg/l/bg1502100柳神社_お墓_通常_l.jpg");

	CreateColorSP("絵色100", 1500, "Black");
	OnBG(10,"bg1502100柳神社_お墓_通常");
	FadeBG(0,true);

	Move("絵背景1000", 10000, -512, @0, null, false);
	DrawTransition("絵色100", 10, 0, 500, 1000, null, "cg/data/circle_02_00_1.png", false);
	FadeDelete("絵板写", 500, null, true);

//	CreateSE("SE01","se環境_風と葉っぱ_l");
//	MusicStart("SE01",3000,500,0,1000,null,true);

	FadeDelete("絵背景100", 1000, null, true);

	Wait(2000);

	FadeDelete("絵色100", 5000, null, true);


//◆場所：柳神社_お墓



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/400100080wfu">
「…………」

{	FadeDelete("絵背景1000", 1000, null, true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/400100090wfu">
「……あった」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/400100100wfu">
「…………」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/400100110wfu">
「タヌキの神社なのに、マヌケです」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/400100120wfu">
「ずっと、ずっと捜していた人が」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/400100130wfu">
「こんなに近くに、いたなんて」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/400100140wfu">
「でも――」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/400100150wfu">
「これで、やっと会える――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);

//◆ＳＥ：シリンダを回す
	CreateSE("SE01","se銃_シリンダー回転");
	MusicStart("SE01",0,700,0,1000,null,false);

	OnBG(10,"bg1501100柳神社_境内_通常");
	FadeBG(1000,true);

	Wait(500);

	St("MR",700, @+100,@0,"bu貫太_通常_shout");
	OnSE("se動作_足踏み",1000);
	Move("@StNameMR/MR*", 200, @-100, @0, Dxl1, false);
	FadeSt("MR",200,true);

{	ClockPass(2244);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/400100160okt">
「待てッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SoundPlay("@xbgm24",1000,450,true);

{	St("ML",700, @0,@0,"buフウリ_銃構え_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/400100170wfu">
「――――」

{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/400100180wfu">
「太四郎さん」

{	St("MR",700, @0,@0,"bu貫太_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/400100190okt">
「アザナエルで、なにをする気だ？」

{	St("ML",700, @0,@0,"buフウリ_胸手_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/400100200wfu">
「……太四郎さんには、関係ないです」

{	St("MR",700, @0,@0,"bu貫太_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/400100210okt">
「本物の貫太に会いに行くんだろ？」

{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/400100220wfu">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2245);}


//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu貫太_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/400100230okt">
「君は、今までずっと、貫太が死んでることを知っていた」

{	St("MR",700, @0,@0,"bu貫太_通常_hard");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/400100240okt">
「でも、それを認めることができなかった」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/400100250okt">
「そうだろ？」

{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/400100260wfu">
「…………」

{	St("MR",700, @0,@0,"bu貫太_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/400100270okt">
「アザナエルが叶えるのは、本当の願いだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2246);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/400100280okt">
「君は、貫太をこっちに会いに来させるのか？」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/400100290okt">
「それとも――」

{	St("MR",700, @0,@0,"bu貫太_通常_sad");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/400100300okt">
「君が、向こうに会いに行くのか？」

{	St("ML",700, @0,@0,"buフウリ_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/400100310wfu">
「…………」

{	SetVolume("@xbgm24", 1000, 0, null);
	SoundPlay("@xbgm25",1500,450,true);
	St("MR",700, @0,@0,"bu貫太_横向き_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/400100320okt">
「君が村を出てから、１年が経った」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu貫太_横向き_sad");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/400100330okt">
「僕は遠く離れて、君のことを想った」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/400100340okt">
「いつも思い出すのは、村を出る直前、まるで死に場所を求めるみたいな君の横顔だ」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/400100350okt">
「君は全てを投げ出して、貫太を捜しに出た」

{	St("MR",700, @0,@0,"bu貫太_横向き_hard");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/400100360okt">
「僕の父親は、四国の大狸だ。
　許嫁の約束を破ったら、もう地元には帰れない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2247);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/400100370okt">
「君にはもう、帰る場所がない」

{	St("ML",700, @0,@0,"buフウリ_胸手_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/400100380wfu">
「……覚悟の上です」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/400100390wfu">
「それとも、私を連れて帰りたい？」

{	St("MR",700, @0,@0,"bu貫太_横向き_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/400100400okt">
「…………」

{	St("MR",700, @0,@0,"bu貫太_横向き_sad");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/400100410okt">
「父さんは怒ってる。
　たぶんどう転んでも無駄だと思う」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu貫太_通常_hard");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/400100420okt">
「僕が今日ここに来たことだって、父さんは知らない」

{	St("ML",700, @0,@0,"buフウリ_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/400100430wfu">
「…………」


{	ClockPass(2248);}


{	St("MR",700, @0,@0,"bu貫太_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/400100440okt">
「僕は、君に死んで欲しくない。それだけなんだ」

{	St("MR",700, @0,@0,"bu貫太_通常_hard");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/400100450okt">
「もし君が許してくれるなら、地元に帰れなくてもいい」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/400100460okt">
「家を捨てて、君と暮らしたい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/400100470okt">
「だから――お願いだ、フウリ」

{	St("MR",700, @0,@0,"bu貫太_通常_sad");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/400100480okt">
「アザナエルを、下ろしてくれ」

{	St("MR",700, @0,@0,"bu貫太_通常_hard");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/400100490okt">
「僕と一緒に、暮らしてくれ」

{	St("ML",700, @0,@0,"buフウリ_胸手_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/400100500wfu">
「太四郎さんは、いつもそうです」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/400100510wfu">
「私に意地悪ばっかりしてるみたいで、いつも困らせるけど、本当は私のことを考えてくれてるんです」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2249);}


//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/400100520wfu">
「だから、怒るに怒れません」

{	St("MR",700, @0,@0,"bu貫太_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/400100530okt">
「でも、こうでもしなかったら、話を聞いてくれなかっただろ？」

{	St("ML",700, @0,@0,"buフウリ_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/400100540wfu">
「太四郎さんの気持ちは、嬉しいです」

{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/400100550wfu">
「でも――」

{	St("ML",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/400100560wfu">
「ごめんなさい。
　太四郎さんとは、一緒に暮らせません」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 3000, 0, null);


	TextBoxDelete(150);

	DeleteAllSt(200,true);



	EndScene();
}
