
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2150フウリ.nss_MAIN
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
		$GameName = "2210フウリ.nss";
	}else{
		//ab、b
		$GameName = "ab2210フウリ.nss";
	}
}

scene 2150フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="900">
////////////header////////////
//file name "2150フウリ.nss"
//title "別れの記憶"
//previous "2140ノーコ_フウリ.nss"

////////////footer////////////
//next "フウリ"（"flkagome1a" = true） "ab2210フウリ.nss"
//next "フウリ"（"flkagome2a" = true） "ab2210フウリ.nss"
//next "フウリ" "2210フウリ.nss"


////////////body////////////

//あきゅん「演出：暗転開始スクリプト」

//■再定義定型文
	PrintBG("上背景", 30000);
	ClockDelete(0,true);
	CreateColorSP("絵色100", 150, "Black");


{	ClockTime(2050);}



	FadeDelete("上背景", 0, null, true);

	CreateSE("SE01","se動作_茂み_l");
	MusicStart("SE01",0,400,0,1000,null,true);

	CreateSE("SE02","se動作_走る02_l");
	MusicStart("SE02",0,300,0,1100,null,true);

	Wait(1000);

	2150_seprocess();

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100010wfu">
（私は……ずっと、目を逸らし続けていた）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100020wfu">
（深く考えようとしなかった）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100030wfu">
（何かの間違いだって、思い込もうとしていた）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100040wfu">
（けど……私には今日、届いていたのだ）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100050wfu">
（貫太さんの、訃報が……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2051);}


	TextBoxDelete(150);

//◆演出指定：暗闇の中、ガサゴソと草を掻き分けながら走る感じ：ここの台詞はＢＧＭ的にループ？？

/*
====================================================================================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100060wfu">
「はぁッ――はぁッ、はぁッ、はッ、はッ、はッ――」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100070wfu">
「んく――う、はぁっ、ん――はぁっ、はあっ、はあっ」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100080wfu">
「はッ、はッ、はッ、はッ、はッ――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

====================================================================================
*/

{	ClockTime(2052);}

	CreateColorEXadd("絵色100", 1500, "White");

	2150_sedelete();
	SetVolume("SE01", 200, 0, null);
	SetVolume("SE02", 200, 0, null);
	Fade("絵色100", 0, 1000, null, false);
	DrawTransition("絵色100", 100, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

//◆場所：屋島_古戦場
	OnBG(10,"bg2201100屋島_古戦場_通常");
	FadeBG(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//◆音声指示：眩しさに目が眩む
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100090wfu">
「――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2053);}


	TextBoxDelete(150);



//◆演出指定：暗いところから明るい場所へ。徐々に目が慣れていく
	FadeDelete("絵色100", 2000, null, true);

{	SoundPlay("@xbgm25",0,450,true);}


	St("MR",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100100wfu">
「ぁ――――――」

{	St("MR",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100110wfu">
「貫太……さん」

{	St("ML",700, @0,@0,"bu貫太_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100120odk">
「フウリ……」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100130odk">
「どうしてここに？」

{	St("MR",700, @0,@0,"buフウリ_胸手_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100140wfu">
「太三郎様から聞きました！」

{	St("MR",700, @0,@0,"buフウリ_胸手_hard");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100150wfu">
「貫太さん！　どこに行くのですか？」

{	St("MR",700, @0,@0,"buフウリ_胸手_shout");
	DeleteSt("ML",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100160wfu">
「どうして行くのですか？」

{	St("MR",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100170wfu">
「どうして、私を――」

{	St("ML",700, @0,@0,"bu貫太_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100180odk">
「座ろう」

{	St("MR",700, @0,@0,"buフウリ_通常_angry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100190wfu">
「座るって、私の話を――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2054);}



{	St("ML",700, @0,@0,"bu貫太_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100200odk">
「聞くから、ね」

{	St("MR",700, @0,@0,"buフウリ_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100210wfu">
「でも――」

{	St("ML",700, @0,@0,"bu貫太_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100220odk">
「昔、一緒に見たんだっけ」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100230odk">
「親父様の源平合戦」

{	St("MR",700, @0,@0,"buフウリ_胸手_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100240wfu">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2055);}



{	St("ML",700, @0,@0,"bu貫太_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100250odk">
「四国狸の総大将が演じる、歴史に残る一代合戦」

{	St("ML",700, @0,@0,"bu貫太_通常_smile");
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100260odk">
「親父様の袋が、ぶん！　と音を立てて広がり、眼下の景色を一変させるやいなや、一斉に拍手喝采の渦！」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100270odk">
「海に浮かぶ色とりどりの船！
　大地を軽やかに駆け抜ける駿馬」

{	St("ML",700, @0,@0,"bu貫太_通常_hard");
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100280odk">
「源頼朝を筆頭とした源氏方が、安徳天皇と三種の神器を取り返さんと、平氏方を追い立てる！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2056);}




{	St("MR",700, @0,@0,"buフウリ_胸手_think");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100290wfu">
「楽しかった記憶はあるけど……あんまり憶えてないです」

{	St("ML",700, @0,@0,"bu貫太_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100300odk">
「まだ、ちっちゃかったしね」

{	St("MR",700, @0,@0,"buフウリ_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100310wfu">
「でも、始まるまでは、良く憶えてます」

{	St("ML",700, @0,@0,"bu貫太_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100320odk">
「寒かった」

{	St("MR",700, @0,@0,"buフウリ_胸手_shy");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100330wfu">
「手、さすってくれました」

{	St("ML",700, @0,@0,"bu貫太_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100340odk">
「僕も寒かったからね」

{	St("MR",700, @0,@0,"buフウリ_胸手_smile");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100350wfu">
「はい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2057);}


	TextBoxDelete(150);

	DeleteAllSt(200,true);

//◆ＳＥ：汽笛
	CreateSE("SE01","seメカ_船_汽笛");
	MusicStart("SE01",0,500,0,1000,null,false);

	Wait(1000);

{	St("MR",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100360wfu">
「…………」

{	St("ML",700, @0,@0,"bu貫太_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100370odk">
「…………」

{	St("MR",700, @0,@0,"buフウリ_胸手_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100380wfu">
「…………」

{	St("ML",700, @0,@0,"bu貫太_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100390odk">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2058);}


//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buフウリ_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100400wfu">
「ホントに……行っちゃうんですか？」

{	St("ML",700, @0,@0,"bu貫太_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100410odk">
「ああ」

{	St("MR",700, @0,@0,"buフウリ_胸手_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100420wfu">
「人間の世界は、厳しいと聞きました」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2059);}





{	St("ML",700, @0,@0,"bu貫太_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100430odk">
「実際に見てみなきゃわからないさ」

{	St("MR",700, @0,@0,"buフウリ_胸手_think");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100440wfu">
「…………」

{	St("ML",700, @0,@0,"bu貫太_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100450odk">
「…………」

{	St("MR",700, @0,@0,"buフウリ_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100460wfu">
「もしも、厳しかったら？」

{	St("ML",700, @0,@0,"bu貫太_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100470odk">
「泣いちゃうかもね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
{	ClockTime(2100);}

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100480wfu">
「ひとりで、だいじょうぶですか？」

{	St("ML",700, @0,@0,"bu貫太_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100490odk">
「きっとその時は、側に誰かがいてくれるさ」

{	St("MR",700, @0,@0,"buフウリ_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100500wfu">
「……そうでしょうか？」

{	ClockTime(2101);
	St("MR",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100510wfu">
「貫太さんを好きになってくれる物好きなんて、そうそういるようには思えません」

{	St("ML",700, @0,@0,"bu貫太_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100520odk">
「どうだろうね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2102);}

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buフウリ_胸手_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100530wfu">
「…………」

{	St("ML",700, @0,@0,"bu貫太_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100540odk">
「…………」

{	St("MR",700, @0,@0,"buフウリ_胸手_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100550wfu">
「……私が、泣いちゃったら？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100560wfu">
「貫太さんは、もう側にいてくれないのですか？」

{	St("ML",700, @0,@0,"bu貫太_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100570odk">
「ごめんな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2103);}

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu貫太_通常_normal");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100580odk">
「でも、ここには仲間がいるだろ」

{	St("ML",700, @0,@0,"bu貫太_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100590odk">
「親父様だっているし、太四郎だって――」

{	ClockTime(2104);
	St("MR",700, @0,@0,"buフウリ_胸手_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100600wfu">
「…………」

{	St("ML",700, @0,@0,"bu貫太_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100610odk">
「許嫁、だもんな」

{	St("MR",700, @0,@0,"buフウリ_胸手_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100620wfu">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2105);}

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu貫太_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100630odk">
「すごく、大事にしてくれるさ」

{	St("MR",700, @0,@0,"buフウリ_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100640wfu">
「でも……」

{	St("MR",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100650wfu">
「さみしいものは、さみしいです」

{	St("ML",700, @0,@0,"bu貫太_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100660odk">
「ごめん」

{	St("MR",700, @0,@0,"buフウリ_胸手_think");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100670wfu">
「許しません」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2106);}

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu貫太_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100680odk">
「ごめん」

{	St("MR",700, @0,@0,"buフウリ_胸手_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100690wfu">
「ひとりでとか」

{	St("ML",700, @0,@0,"bu貫太_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100700odk">
「ごめん」

{	St("MR",700, @0,@0,"buフウリ_胸手_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100710wfu">
「つれてって、くれないとか」

{	St("ML",700, @0,@0,"bu貫太_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100720odk">
「ごめん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2107);}

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buフウリ_胸手_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100730wfu">
「ひどいです」

{	St("ML",700, @0,@0,"bu貫太_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100740odk">
「ごめん」

{	St("MR",700, @0,@0,"buフウリ_胸手_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100750wfu">
「泣きます」

{	St("ML",700, @0,@0,"bu貫太_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100760odk">
「ごめん」

{	St("ML",700, @0,@0,"bu貫太_通常_hard");
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100770odk">
「でも――行かなきゃ、ダメなんだ」

{	St("MR",700, @0,@0,"buフウリ_通常_angry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100780wfu">
「わたしが泣いても？」

{	St("ML",700, @0,@0,"bu貫太_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100790odk">
「ごめん」

{	St("MR",700, @0,@0,"buフウリ_胸手_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100800wfu">
「貫太さん――！？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2108);}

	TextBoxDelete(150);

	DeleteAllSt(200,true);

//◆演出指定：ここで振り返りＳＴのイメージ

	SetVolume("@xbgm*", 500, 0, null);

//◆ＳＥ：風が吹く
	CreateSE("SE01","se環境_風と葉っぱ_l");
	MusicStart("SE01",0,600,0,1000,null,true);

	CreateColorEXadd("絵色100", 1500, "White");
	Fade("絵色100", 500, 1000, null, true);

	CreateTextureSP("絵背景100", 100, Center, 0, "cg/bg/l/bg2201100屋島_古戦場_通常_l.jpg");

	Move("絵背景100", 3000, @0, -200, Dxl1, false);
	DrawTransition("絵色100", 1000, 1000, 0, 300, AxlAuto, "cg/data/slide_03_01_0.png", true);

	Wait(2000);

	St("C",700, @+30,@0,"bu貫太_横向き_normal");
	Move("@StNameC/C*", 500, @-30, @0, Dxl1, false);
	FadeSt("C",300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100810odk">
「世界は広い」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100820odk">
「見てないものがまだまだある」

{	St("C",700, @0,@0,"bu貫太_横向き_hard");
	FadeSt("C",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100830odk">
「色んなものが見たい」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100840odk">
「色んなことを知りたい」

{	St("C",700, @0,@0,"bu貫太_横向き_smile");
	FadeSt("C",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/21/500100850odk">
「僕は、世界に比べたら、こんなにちっぽけ――」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100860wfu">
「そんなちっぽけな、貫太さん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2107);}

	TextBoxDelete(150);

	SetVolume("SE01", 10000, 0, null);

	DeleteAllSt(200,true);

	FadeDelete("絵背景*", 1000, null, true);

{	St("C",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100870wfu">
「もっとちっちゃい、私」

{	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100880wfu">
「出会ったなんて、奇跡です」

{	St("C",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100890wfu">
「それなのに、別れるなんて！」

{	St("C",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500100900wfu">
「一度離れたら、もう二度と会えない――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
//	DeleteAllSt(200,true);

	EndScene();


}
