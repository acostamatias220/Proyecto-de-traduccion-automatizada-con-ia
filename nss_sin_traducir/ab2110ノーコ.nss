
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ab2110ノーコ.nss_MAIN
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
	$GameName = "2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nss";
//	$GameCircle=false;

//※↑ab2051ノーコ.nssの飛び方を参考に設定（mngw 10/14）

}

scene ab2110ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1030">
////////////header////////////
//file name "ab2110ノーコ.nss"
//title "こわがることはない"
//previous "ab2108ノーコ.nss"

////////////footer////////////
//next "ノーコ" "2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2110);}

//◆場所：スーパーノヴァ_控え室

	OnBG(10,"bg0503100スーパーノヴァ_控え室_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);


//◆ＳＥ：ドア開ける
	CreateSE("SE01","se動作_ドア開ける01");
	MusicStart("SE01",0,700,0,1000,null,false);
	WaitKey(1000);

	SoundPlay("@xbgm09",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("MR",700, @60,@0,"bu鈴_通常_shock");
	Move("@StNameMR/MR*", 200, @-60, @0, DxlAuto, false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100010fjr">
「ノーコちゃん、ネーム探せない？」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buノーコa_カッター_angry");
	Shake("@StNameML/ML*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100020nko">
「ひぐっ、ぅ……ぅう……えい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

		CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/efカッター剣閃b.jpg");

		CreateSE("SE00","se戦闘_風切り音02");
		MusicStart("SE00",0,700,0,1000,null,false);

		Wait(100);
		Fade("絵背景100", 100, 1000, null, true);

		Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
		Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

		Wait(200);

	DeleteAllSt(0,true);
	St("MR",700, @0,@0,"bu鈴_もじゃ_angry");
	Shake("@StNameMR/MR*", 500, 5, 5, 0, 0, 500, null, false);
	FadeSt("MR",0,true);

		Fade("絵背景100", 200, 0, null, true);
		Delete("絵背景100");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]


//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100030fjr">
「なああああああああああ、ちょっと！」

{	DeleteAllSt(200,true);
	St("ML",710, @0,@0,"buノーコa_カッター_shock");
	FadeSt("ML",200,true);
	St("R",700, @240,@0,"bu鈴_もじゃ_angry");
	Move("@StNameR/R*", 200, @-240, @0, DxlAuto, false);
	FadeSt("R",200,true);
	CreateSE("SE00","se動作_抱く");
	MusicStart("SE00",0,700,0,1000,null,false);
//	Shake("@OnBG*", 100, 5, 5, 0, 0, 500, null, false);
	BGPlainShake(50, 100, 5, 5, 0, 0, 1000, Dxl1, false);
	Shake("@StNameML/ML*", 100, 5, 5, 0, 0, 500, null, false);
	}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100040nko">
「は……はなして」

{	Shake("@StNameR/R*", 300, 10, 10, 0, 0, 500, null, false);
	}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100050fjr">
「放さない！」



//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100060fjr">
「従業員のメンタルヘルスの管理も、アタシの仕事なの！」

{	St("ML",710, @0,@0,"buノーコa_カッター_pinch");
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 300, 5, 5, 0, 0, 500, null, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100070nko">
「うう……う……く」

{	St("R",700, @0,@0,"bu鈴_もじゃ_angry");
	FadeSt("R",200,true);
	Shake("@StNameR/R*", 300, 5, 5, 0, 0, 500, null, false);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100080fjr">
「うぐぐ……ぐ……ぐ……」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100090nko">
「い、いいかげん、はなしてくれないと――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	CreateTextureEX("EF100", 2000, Center, Middle, "cg/ev/ev1830鈴ドロップキック.jpg");
	Zoom("EF100", 0, 2000, 2000, Dxl2, true);
	SetBlur("EF100", true, 2, 500, 50, false);

	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(0,true);

	Fade("EF100", 200, 1000, null, false);
	Zoom("EF100", 200, 1000, 1000, Dxl2, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]


//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100100fjr">
「ドロップキ――――ック！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Zoom("EF100", 250, 20000, 20000, Axl2, false);
	FadeF4("EF100", 250, 1000, 3000, 0, 0, Axl3, false);

	Wait(150);
	Fade("EF100", 100, 0, null, true);
	Delete("EF100");
	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef034_精神汚染.jpg", false);

	SetVolumeEX("@xbgm*", 500, 0, null);

	CreateSE("SE01","se戦闘_打撃_ドロップキック01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("揺用", 2005);
	Shake("揺用", 500, 25, 15, 0, 0, 1000, Dxl1, false);

			St("ML",700, @0,@0,"buノーコa_通常_rage");
			FadeSt("ML",0,true);

	Fade("揺用", 500, 0, null, true);
	Delete("揺用");

			Shake("@StNameML/ML*", 200, 5, 5, 0, 0, 500, null, false);


//			TextBoxDelete(0);

//			CreateColorSP("絵色白", 710, "#FFFFFF");
//			Wait(50);
//			DeleteAllSt(0,true);

//			St("ML",700, @0,@0,"buノーコa_通常_rage");
//			Move("@StNameML/ML*", 200, @-120, @0, DxlAuto, false);
//			Shake("@StNameML/ML*", 200, 5, 5, 0, 0, 500, null, false);
//			FadeSt("ML",0,true);
//			Shake("@OnBG*", 500, 5, 5, 0, 0, 500, null, false);

//			Delete("絵色白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100110nko">
「あう」


{	DeleteAllSt(200,true);
	St("MR",700, @-60,@0,"bu鈴_シリアス_sad");
	Move("@StNameMR/MR*", 200, @60, @0, DxlAuto, false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100120fjr">
「ふぅ――」

{	St("ML",700, @-60,@0,"buノーコa_通常_pain");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 500, @60, @0, DxlAuto, false);
	FadeSt("ML",500,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100130nko">
「いたい……」

{	St("MR",700, @0,@0,"bu鈴_シリアス_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100140fjr">
「あなたが悪いのっ！
　あたしだって、暴力ふるいたいわけじゃ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2111);}

//	TextBoxDelete(150);

	SoundPlay("@xbgm25",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("ML",700, @0,@0,"buノーコa_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 100, 0, 5, 0, 0, 500, null, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100150nko">
「ひぐ……」

{	St("ML",700, @0,@0,"buノーコa_通常_cry");
	Shake("@StNameML/ML*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100160nko">
「う……うう……ううう……」

{	St("ML",700, @0,@0,"buノーコa_通常_cry");
	Shake("@StNameML/ML*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100170nko">
「うぁっ、ぅ…………ううううう……！！」

{	St("MR",700, @0,@0,"bu鈴_シリアス_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100180fjr">
「え？　何！？」



//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100190fjr">
「そんなに痛かった？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("ML",700, @0,@0,"buノーコa_通常_cry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100200nko">
「わたしは……おもに」

{	St("MR",700, @0,@0,"bu鈴_シリアス_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100210fjr">
「え？」

{	St("ML",700, @0,@0,"buノーコa_通常_cry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100220nko">
「わたし……にとりの、じゃま」

{	St("MR",700, @0,@0,"bu鈴_シリアス_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100230fjr">
「にとり？」

{	St("ML",700, @0,@0,"buノーコa_通常_cry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100240nko">
「すきな……ひと」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100250nko">
「せっかく……いっしょにくらせるのに」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100260nko">
「わたしを、しあわせにするって、いったのに」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100270nko">
「それが、できなくて」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100280nko">
「そういう、ほんねを、テレビで……」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100290nko">
「こんどこそ、しあわせになれるって、おもったのに」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2112);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("MR",700, @0,@0,"bu鈴_シリアス_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100300fjr">
「……ねえ、ノーコちゃん」



//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100310fjr">
「ホントに、捨てられちゃったの？」



//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100320fjr">
「直接、言われたの？」

{	St("ML",700, @0,@0,"buノーコa_通常_cry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100330nko">
「そうじゃ……ないけど……」


{	St("MR",700, @0,@0,"bu鈴_シリアス_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100340fjr">
「なのに、泣いてるの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("ML",700, @0,@0,"buノーコa_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100350nko">
「…………」

{	St("MR",700, @0,@0,"bu鈴_シリアス_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100360fjr">
「あなた……アタシの友達と、似てるわね」

{	St("ML",700, @0,@0,"buノーコa_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100370nko">
「ともだち……？」

{	St("MR",700, @0,@0,"bu鈴_シリアス_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100380fjr">
「ええ。そのコね、実は好きな人を追いかけるため、東京に出てきたらしいの」

{	St("MR",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100390fjr">
「いつもマイペースなんだけど、時々、妙に引っ込み思案なところがあってね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]


//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100400fjr">
「好きな人と連絡が取れなくて、宙ぶらりんのまま」

{	St("ML",700, @0,@0,"buノーコa_通常_pain");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100410nko">
「おんしんふつう」

{	St("MR",700, @0,@0,"bu鈴_シリアス_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100420fjr">
「そうなんだけどね。
　本気で捜そうとしてないのよ。怖いから」

{	St("ML",700, @0,@0,"buノーコa_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100430nko">
「こわいの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("MR",700, @0,@0,"bu鈴_シリアス_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100440fjr">
「ずっと連絡がないわけだからね」

{	St("MR",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100450fjr">
「普通に考えたら、他に好きな人ができたんじゃない？」

{	St("ML",700, @0,@0,"buノーコa_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100460nko">
「そうとは、かぎらないんじゃ……」

{	St("MR",700, @0,@0,"bu鈴_シリアス_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100470fjr">
「そう！　その通り！」

{	St("MR",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100480fjr">
「向こうにだって、事情があるかもしれない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2113);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("MR",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100490fjr">
「連絡先がわからないだけだったり、もしかしたら記憶喪失になっていたり……」

{	St("MR",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100500fjr">
「それだったら、無駄に悲しむなんて損じゃない？」

{	St("MR",700, @0,@0,"bu鈴_通常_happy");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100510fjr">
「いずれにせよ、会わなきゃ何も始まらないよっ！」

{	St("MR",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100520fjr">
「――って言ってるんだけどね。
　やっぱり怖くて、その先に進めないわけ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]


//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100530fjr">
「っていうか……」

{	St("MR",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100540fjr">
「自分の望みが叶わないことを、知ってるのかもね」

{	St("ML",700, @0,@0,"buノーコa_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100550nko">
「…………」

{	St("ML",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100560nko">
「もしかしてそれ……フウリ？」

{	St("MR",700, @0,@0,"bu鈴_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100570fjr">
「あ、わかっちゃった？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100580nko">
「てがみ、みた」

{	St("MR",700, @0,@0,"bu鈴_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100590fjr">
「手紙？」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100600nko">
「はんだみょうじんに、おちてた」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100610nko">
「フウリあての、てがみ」

{	St("ML",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100620nko">
「おだかんたが、しんだって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2114);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("MR",700, @0,@0,"bu鈴_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100630fjr">
「織田貫太……？」

{	St("MR",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100640fjr">
「あれ？　その名前、聞いたことがあるような……」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100650nko">
「フウリの、おもっているひと」

{	St("MR",700, @0,@0,"bu鈴_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100660fjr">
「あ……ああ、そうだっけ……」

{	St("MR",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100670fjr">
「そうか……亡くなってたんだ……
　かわいそうなフウリ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("ML",700, @0,@0,"buノーコa_通常_pain");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100680nko">
「おしえないほうが、いい？」

{	St("MR",700, @0,@0,"bu鈴_シリアス_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100690fjr">
「辛いことだけど……
　でもそれが本当のことなら、教えてあげなきゃ駄目ね」

{	St("ML",700, @0,@0,"buノーコa_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100700nko">
「つらいのに……？」

{	St("MR",700, @0,@0,"bu鈴_シリアス_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100710fjr">
「それが、本人のためになるはず」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100720fjr">
「後に引き延ばした方が、かえって毒よ」

{	St("ML",700, @0,@0,"buノーコa_通常_pain");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100730nko">
「そうか……」


{	SetVolumeEX("@xbgm*", 4000, 0, null);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100740nko">
「ありがとう」

{	St("MR",700, @0,@0,"bu鈴_シリアス_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100750fjr">
「え？」

{	St("ML",700, @0,@0,"buノーコa_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100760nko">
「わたしも、かくご、できた」


{	St("ML",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100770nko">
「にとりに、きもち、きいてくる」




{	St("MR",700, @0,@0,"bu鈴_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100780fjr">
「ああ、そう。うん、よかった」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100790nko">
「いってくる」


{	St("MR",700, @0,@0,"bu鈴_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100800fjr">
「え？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]


{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100810nko">
「――――っ」


//◆ＳＥ：走り出す
{
	CreateSE("SE02","se動作_走る02_l");
	MusicStart("SE02",0,700,0,1000,null,true);
	}

{	Move("@StNameML/ML*", 200, @-240, @0, DxlAuto, false);
	DeleteSt("ML", 200,true);
	}

//◆音声指示：遠くから

{
//	Shake("@OnBG*", 300, 5, 5, 0, 0, 500, null, false);
	BGPlainShake(50, 300, 5, 8, 0, 0, 1000, Dxl1, false);
	SetVolumeEX("SE02", 5000, 0, null);
	}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/100100820fjr">
「ちょっと！　バイトが終わってからに――！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	PrintGO("上背景", 30000);

{	ClockPass(2115);}

//◆場所：スーパーノヴァ_ライブ会場
	OnBG(10,"bg0502211スーパーノヴァ_ライブ会場_ガラス補修");
	FadeBG(0,true);

	DeleteAllSt(200,true);

	SoundPlay("@xbgm23",0,450,true);

	DrawDelete("上背景", 500, 100, null, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]

{	St("C",700, @-60,@0,"buノーコa_通常_normal");
	Move("@StNameC/C*", 200, @60, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100830nko">
（そう……）

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100840nko">
（どうして、こわがるひつようが？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	TextBoxDelete(150);
	Move("@StNameC/C*", 200, @60, @0, DxlAuto, false);
	DeleteAllSt(200,true);


	SceneOut(5000, 500, "blind_01_00_1");

{	ClockPass(2116);}

//◆場所：スーパーノヴァ_正面
	OnBG(10,"bg0501300スーパーノヴァ_正面_ガラス補修");
	FadeBG(0,true);

	SceneIn(500, "blind_01_00_0");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("C",700, @-60,@0,"buノーコa_幽霊_normal");
	Move("@StNameC/C*", 200, @60, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100850nko">
（わたしは……のぞまれてうまれた）



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100860nko">
（のぞまれてげんじつになった）



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100870nko">
（わたしがこうなったのには、いみがある）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	Move("@StNameC/C*", 200, @60, @0, DxlAuto, false);
	DeleteAllSt(200,true);


	SceneOut(5000, 500, "blind_01_00_1");

{	ClockPass(2117);}

//◆場所：秋葉原_中央通り
	OnBG(10,"bg0103211秋葉原_中央通り_閉店");
	FadeBG(0,true);

	SceneIn(500, "blind_01_00_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]

{	St("C",700, @60,@0,"buノーコa_幽霊_sad");
	Move("@StNameC/C*", 200, @-60, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100880nko">
（だったら、にとりのはんのうも、ちがうはず）


{	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100890nko">
（こわがることはない）



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100900nko">
（にとりは、わたしをのぞんでる）



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100910nko">
（わたしのおもいは……ぜったい……）



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100920nko">
「ぜったい、つうじる」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	Move("@StNameC/C*", 200, @-60, @0, DxlAuto, false);
	DeleteAllSt(200,true);


	SceneOut(5000, 500, "blind_01_00_0");

{	ClockPass(2118);}

//◆場所：ＵＰ＋_屋外セット_炎上
	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);
	WaitKey(1000);

	SceneIn(500, "blind_01_00_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	St("C",700, @60,@0,"buノーコa_幽霊_normal");
	Move("@StNameC/C*", 1000, @-60, @0, DxlAuto, false);
	FadeSt("C", 1000,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100930nko">
「ついた……」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100940nko">
「つたえるの」

{	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100950nko">
「ほんとうのきもち」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100960nko">
「わたしは――」

{	St("C",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100970nko">
「しかくがある――」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100980nko">
「にとりに――」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/100100990nko">
「にとりに――！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2119);}


	SetVolumeEX("@xbgm*", 1500, 0, null);


	TextBoxDelete(150);


//◆演出指定：フォン、マイクがハウり、辺りが暗闇に音いる
//おがみ：ＳＥマイクハウリング

//				SceneOut(5000, 2000, "effect_01_00_0");
//
//			//	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/bg1203200ＵＰ＋_セット裏_暗闇.jpg");
//			//	Fade("絵背景", 1500, 1000, null, true);
//
//				Delete("@OnBG*");
//
//			//	OnBG(10,"bg1201311ＵＰ＋_屋外セット_暗闇");
//			//	FadeBG(0,true);
//
//				Delete("絵背景");
//				DeleteAllSt(0,true);
//
//				WaitKey(1000);
//
//				SceneIn(0, "effect_01_00_0");


	CreateTextureEX("絵背景200", 2000, Center, Middle, "cg/bg/bg1202300ＵＰ＋_セット上_炎上.jpg");
	Fade("絵背景200", 1000, 1000, null, true);

	CreateSE("SE00","se環境_ハウリング");
	MusicStart("SE00",0,700,0,1000,null,false);

	DeleteAllSt(0,false);

	OnBG(10,"bg1202200ＵＰ＋_セット上_暗闇");
	FadeBG(0,true);

	FadeDelete("絵背景200", 2000, null, true);

	WaitKey(500);



{	St("C",700, @0,@0,"buミリＰa_通常_shout");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/100101000mrp">
「な……」

{	St("C",700, @0,@0,"buミリＰb_ショータイム_angry");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/100101010mrp">
「ちょっと照明！　何やって――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);
	TextBoxDelete(150);

	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteAllSt(0,true);

	OnBG(10,"bg1203200ＵＰ＋_セット裏_暗闇");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

	Wait(500);

	CreateSE("SE01","se戦闘_カッター_刃出す01普通a");
	CreateSE("SE02","se擬音_光迸る");
	MusicStart("SE01",0,1500,0,250,null,false);
	MusicStart("SE02",0,700,0,900,null,false);

//◆演出指定：暗闇から浮き出るように
	CreateTextureSP("絵背景100", 5000, Center, Middle, "cg/bg/bg1203200ＵＰ＋_セット裏_暗闇.jpg");
	CreateColorSP("絵色100", 500, "BLACK");

	St2("C",700, @0,@0,"fuノーコa_通常_normal","cg2/",".png");
	FadeSt("C",0,true);

	CreatePlainSP("浮出用", 1500);
	Request("浮出用", AddRender);
	Delete("絵色100");
	CreateTextureSP("絵背景200", 800, Center, Middle, "cg/bg/bg1203200ＵＰ＋_セット裏_暗闇.jpg");
	DrawTransition("絵背景100", 1500, 1000, 0, 100, null, "cg/data/random_01_00_0.png", false);
	Fade("絵背景100", 1500, 0, null, true);
	Fade("絵背景200", 500, 0, null, false);

	SetVolumeEX("SE*", 2000, 0, null);

	Fade("浮出用", 500, 0, null, true);
	Delete("浮出用");
	Delete("絵背景*");

	Wait(800);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100810nko">
「にとり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100820nko">
「にとりは、どこ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Delete("浮出用");
	Delete("絵背景*");


//	TextBoxDelete(150);



	EndScene();
}
