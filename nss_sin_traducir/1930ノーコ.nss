
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1930ノーコ.nss_MAIN
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
	$GameName = "1940ノーコ.nss";
}

scene 1930ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1490">
////////////header////////////
//file name "1930ノーコ.nss"
//title "かみさまのいうとおり"
//previous "1920似鳥_ノーコ_フウリ.nss"

////////////footer////////////
//next "ノーコ" "1940ノーコ.nss"

////////////body////////////


//■再定義定型文

	PrintGO("上背景", 30000);

{	ClockPass(1930);}

//◆場所：秋葉原_蔵前橋通り
	OnBG(10,"bg0106100秋葉原_蔵前橋通り_通常");
	FadeBG(0,true);


	FadeDelete("上背景", 1000, null, true);

	MusicStart("@xbgm26",0,450,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St2("C",700, @0,@0,"fuノーコa_通常_sad","cg2/",".png");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100010nko">
「おわりだ……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100020nko">
「もうなにもない……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100030nko">
「にとりはしっていた」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100040nko">
「わたしがにせものだって」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100050nko">
「ただのまぼろしだって」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100060nko">
「そうしたら、わたし……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St2("C",700, @0,@0,"fuノーコa_通常_fear","cg2/",".png");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100070nko">
「もう、にとりのそばにいられない」

{	St2("C",700, @0,@0,"fuノーコa_通常_sad","cg2/",".png");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100080nko">
「だめだ……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100090nko">
「しのう……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100100nko">
「こんどこそ、ほんとうに、なくなってしまおう……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1931);}


{	St2("C",700, @0,@0,"fuノーコa_通常_shock","cg2/",".png");
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 500);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//◆音声指示：遠くから
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300100110wfu">
「まってー！　ノーコちゃん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//★立ち絵プロセス：再定義
	AgainSt2("C",700, @0,@0,"fuノーコa_通常_shock","cg2/",".png");
	DeleteSt("C",200,true);
	St("R",700, @0,@0,"stフウリ_通常_hard");
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030a]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100120nko">
「フウリ？」

//◆音声指示：遠くから
{	St("R",700, @0,@0,"stフウリ_通常_angry");
	FadeSt("R",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300100130wfu">
「にげないでくださいぃぃー！！」

{	St("R",700, @0,@0,"stフウリ_通常_shock");
	FadeSt("R",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300100140wfu">
「ああっ！　赤信号なのに――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	//★徒歩：ＳＥ
	CreateSE("SE01","se動作_走る03_l");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move($R_今, 200, @-40, @0, Axl1, false);
	DeleteSt("R",200,true);
	WaitAction("SE01", null);

	St("ML",100, @0,@0,"fuノーコa_幽霊_sad");
	FadeSt("ML",300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100150nko">
「…………」

　追いかけるフウリを振り切る。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("@StNameML/ML*", 400, @-40, @0, AxlAuto, false);
	DeleteSt("ML",400,true);

	CreateTextureEX("絵背景１", 2000, 0, 0, "cg/bg/bg2502100信号機_見上げ_青標識無.jpg");
	#bg2501100信号機_見上げ_青 = true;

	//★徒歩：ＳＥ
//	CreateSE("SE00","seメカ_車_走行_l");
	CreateSE("SE00","seガヤ_交通_l");
	MusicStart("SE00",1000,1200,0,1000,null,true);

	Fade("絵背景１", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
　絶え間なく車が行き交う４車線に、迷わず踏み出した。

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100160nko">
「しのう」

//◆音声指示：遠くから
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300100170wfu">
「あぶないッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateTextureEX_mono("絵背景２", 2000, 0, 0, "cg/bg/bg2502100信号機_見上げ_青標識無.jpg");

//◆ＳＥ：行き交う車の音
	//★徒歩：ＳＥ
	CreateSE("SE10","seメカ_車_走行車外");
	MusicStart("SE10",4000,1800,0,1000,null,true);

	Fade("絵背景２", 0, 1000, null, true);
	Delete("絵背景１");

//	ClearFadeNut(0, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　自殺でも試みるかのように、猛スピードでやってくる車の前に身を投げ出す。

　しかし――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	PrintGO("上背景", 30000);

	OnBG(10,"bg0106100秋葉原_蔵前橋通り_通常");
	FadeBG(0,true);

	SetFrequency("SE10", 400, 900, null);
	SetVolumeEX("SE10", 2000, 0, null);

	FadeDelete("上背景", 1000, null, true);


	St("C",700, @0,@0,"fuノーコa_幽霊_sad");
	MoveEX($C_次, 500, 0, -10, Dxl1, false);
	FadeSt("C",500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100180nko">
「これではしねない」

　彼女の身体はすり抜ける。

　なぜなら、妄想の存在だから。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move($C_今, 200, @0, @-20, Axl1, false);
	DeleteSt("C",200,true);

{	St("R",700, @0,@0,"stフウリ_通常_hard");
	FadeSt("R",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//◆音声指示：遠くから
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300100190wfu">
「ノーコちゃん！　待ってってば――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	//★徒歩：ＳＥ
	CreateSE("SE01","se動作_走る03_l");
	MusicStart("SE01",0,700,0,1000,null,false);

//◆ＳＥ：キキーッ！！
	//★徒歩：ＳＥ
	CreateSE("SE09","seメカ_車_急ブレーキ");
	MusicStart("SE09",0,700,0,1000,null,false);

	Move($R_今, 200, @-40, @0, Axl1, false);
	DeleteSt("R",200,true);
	WaitAction("SE01", null);

	St("MR",700, @0,@0,"buフウリ_通常_shock");
	FadeSS($MR_次,0,0,200,50,30,Dxl2,false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【綿抜フウリ】
//◆音声指示：遠くから
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300100200wfu">
「ふぎゃっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move($MR_今, 200, @-20, @0, Axl1, false);
	DeleteSt("MR",200,true);

//◆ＳＥ：クラクション
	//★徒歩：ＳＥ
	CreateSE("SE09","seメカ_車_クラクション_l");
	MusicStart("SE09",0,700,0,1000,null,false);

	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeFF3($C_次,0,0,500,-50,-50,Dxl2, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//◆音声指示：遠くから
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300100210wfu">
「あ、すいませ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：キキーッ！！
	CreateSE("SE08","seメカ_車_急ブレーキ");
	MusicStart("SE08",0,700,0,1000,null,false);

	TextBoxDelete(150);

	St("ML",700, @0,@0,"buフウリ_頬手_shock");

	Move($C_今, 200, @-20, @0, Axl1, false);
	DeleteSt("C",200,true);

	Wait(500);

//◆ＳＥ：クラクション多重奏
	CreateSE("SE07","seメカ_車_クラクション多数_l");
	MusicStart("SE07",500,500,0,1000,null,true);

	FadeYWWC3("@StNameML/ML*",0,0,400,30,-50,null,false);
	FadeSt("ML",400,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//◆音声指示：遠くから
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300100220wfu">
「あああああ！　すいません、すいません！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("@SE*", 3000, 0, NULL);

	PrintFadeNut("上背景", 2000, true);

	Wait(2000);

{	ClockPass(1932);}


//◆場所：秋葉原_裏通り
	OnBG(10,"bg0101111秋葉原_裏通り_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);

	St("MR",700, @0,@0,"stフウリ_通常_angry");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//◆音声指示：遠くから
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300100230wfu">
「こらー！　待って！」

{	St("ML",700, @0,@0,"fuノーコa_幽霊_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100240nko">
「うるさい」

//◆音声指示：遠くから
{	St("MR",700, @0,@0,"stフウリ_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300100250wfu">
「私の、話を、聞いてください！」

{	St("ML",700, @0,@0,"fuノーコa_幽霊_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100260nko">
「だまれ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆音声指示：遠くから
{	St("MR",700, @0,@0,"stフウリ_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300100270wfu">
「私に、ごめんなさいをさせてくださいー！」

{	St("ML",700, @0,@0,"fuノーコa_幽霊_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100280nko">
「いらない」

//◆音声指示：遠くから
{	St("MR",700, @0,@0,"stフウリ_通常_fear");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300100290wfu">
「待ってえええええ！！」

{	St("ML",700, @0,@0,"fuノーコa_幽霊_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100300nko">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	//★徒歩：ＳＥ
	CreateSE("SE01","se動作_走る03_l");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteSt("ML",400,true);

{	St("R",700, @0,@0,"buフウリ_胸手_shout");
	FadeSt("R",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300100310wfu">
「はぁっ、はぁっ、はぁ……」

{	St("R",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("R",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300100320wfu">
「ノーコちゃん、ええと、あの……」

{	St("L",700, @0,@0,"buノーコa_通常_fear");
	DeleteSt("R",200,false);
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100330nko">
「あなたのせい」

{	St("R",700, @0,@0,"buフウリ_胸手_think");
	DeleteSt("L",200,false);
	FadeSt("R",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300100340wfu">
「きゅぅぅ……」

{	St("L",700, @0,@0,"buノーコa_通常_fear");
	DeleteSt("R",200,false);
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100350nko">
「あなたが、ぼうそうした」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100360nko">
「かってに、よこから、くちをだした」

{	St("R",700, @0,@0,"buフウリ_胸手_cry");
	DeleteSt("L",200,false);
	FadeSt("R",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300100370wfu">
「ひぐっ、う……で……でも……
　私はそれがノーコちゃんのためだって……」

{	St("L",700, @0,@0,"buノーコa_幽霊_sad");
	DeleteSt("R",200,false);
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100380nko">
「わたしは、あなたと、ちがう」

{	St("C",700, @0,@0,"buフウリ_前のめり_hard");
	DeleteSt("L",200,false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300100390wfu">
「ノーコちゃん……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100400nko">
「ついてこないで」

{
	Move("@StNameC/C*", 200, @-100, @0, Axl1, false);
	DeleteSt("C",200,true);
	Wait(200);
	St("C",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300100410wfu">
「きゅ……きゅ……きゅうううう……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300100420wfu">
「お友達……お友達に、酷いことをしてしまって……」

{	St("C",700, @0,@0,"buフウリ_胸手_cry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300100430wfu">
「ご……ごめんなさい……ごめんなさいいい……！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@x*", 3000, 0, NULL);

	TextBoxDelete(150);

	PrintDrawNut("上背景", 1000, 100, "blind_01_00_0", true);

//◆場所：スーパーノヴァ_正面_ガラス割れ
	OnBG(10,"bg0501200スーパーノヴァ_正面_ガラス割れ");
	FadeBG(0,true);

	MusicStart("@xbgm20",2000,300,0,1000,null,true);

	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	DeleteSt("R",200,false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100440nko">
「まだ、ついてくる」

{	St("C",700, @0,@0,"buノーコa_幽霊_think");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100450nko">
「あれだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",400,true);



	PrintGO("上背景", 30000);

//◆場所：スーパーノヴァ_ライブ会場
	OnBG(10,"bg0502111スーパーノヴァ_ライブ会場_ガラス割れ");
	FadeBG(0,true);

	St("C",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("C",0,true);

	MusicStart("@xbgm20",2000,450,0,1000,null,true);

	FadeDelete("上背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/300100460fjr">
「え？　ガラスがない？」

　割れたガラスからスーパーノヴァへと飛び込む。

　真正面には、携帯電話を手に取る鈴の姿があった。

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/300100470fjr">
「ガラスはあるけど――人手がない？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("C",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/300100480fjr">
「そんな、年明けなんて悠長なこと――」

{	St("C",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/300100490fjr">
「コンビニは後回しでいいじゃないですかっ！！」

{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100500nko">
「…………うるさい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move($C_今, 200, @0, @-20, Axl1, false);
	DeleteSt("C",200,true);

	MusicStart("@xbgm20",1000,300,0,1000,null,true);

	PrintFadeNut("上背景", 500, true);

//◆場所：スーパーノヴァ_控え室
	OnBG(10,"bg0503100スーパーノヴァ_控え室_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
　構わず壁を抜け、控え室に。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("@x*", 1000, 0, NULL);

	PrintFadeNut("上背景", 500, true);



{	ClockPass(1933);}

//◆場所：銭形公園_全景
	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0132]
　公園を突き抜け――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	PrintFadeNut("上背景", 500, true);


{	ClockPass(1934);}

//◆場所：半田明神_男坂
	OnBG(10,"bg0601100半田明神_男坂_通常");
	FadeBG(0,true);

	//★徒歩：ＳＥ
	CreateSE("SE01","se環境_風_l");
	MusicStart("SE01",3000,700,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　明神下の坂を上る。

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100510nko">
「ふりはらえた……」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100520nko">
「おせっかい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100530nko">
「こうなったのは、かのじょのせい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100540nko">
「さいあく」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100550nko">
「もし、あそこであわなかったら――」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100560nko">
「…………」

{	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100570nko">
「フウリがいなかったら、かわってた？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateColorEX("絵色１", 10000, "#FFFFFF");

//◆ＳＥ：ぽわん
	//★徒歩：ＳＥ
	CreateSE("SE01","se動物_タヌキ_化ける02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵色１", 0, 400, null, true);
	Fade("絵色１", 1000, 0, null, true);

	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100580nko">
「――――？」

{	St("C",700, @0,@0,"buノーコa_幽霊_think");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100590nko">
「いまのおと……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);

	//★徒歩：ＳＥ
	CreateSE("SE01","se動作_手紙取り出す");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵背景１", 2000, Center, Middle, "cg/obj/objフウリ葉っぱの手紙変化後.png");
	Move("絵背景１", 0, @0, @120, null, true);

	Move("絵背景１", 800, @0, @-120, DxlAuto, false);
	Fade("絵背景１", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100600nko">
「てがみ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SoundPlay("@xbgm25",0,450,true);


//◆演出指定：以下、訃報。差出人の太四郎の印象が薄くなるように配置
//★徒歩：上記やるならこのオブジェクトにはっきりと文字が書かれている必要がある。
//★徒歩：確認後、下記テキスト削除質問
//あきゅん「素材：imgフウリの手紙」
	PrintGO("上背景", 30000);
	ClockDelete(0,true);
	ClockTime(1934);

	CreateTextureSP("絵演背景上", 2010, 1024, Middle, "cg/img/imgフウリの手紙_文字.png");
	$XSetPos=1024-ImageHorizon("絵演背景上");
	Move("絵演背景上", 0, $XSetPos, @0, null, true);
	CreateTextureSP("絵演背景下", 2000, Center, Middle, "cg/img/imgフウリの手紙.jpg");
	FadeDelete("上背景", 1000, null, true);

	$TegamiTime=24000;
	Move("絵演背景上", $TegamiTime, 0, @0, null, false);
	WaitKey($TegamiTime);
	Move("絵演背景上", 0, 0, @0, null, true);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
フウリ様

訃報

団三郎狸殿ヨリ織田貫太ノ死亡ヲ確認トノ一報有リ
一昨年ノ夏佐渡ニ客分トシテ迎エラレタ折車ト接触
ソノママ帰ラズノ山ヘト向カッタトノコト

太四郎

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

*/

	PrintGO("上背景", 30000);

	ClockPass(1934);

	OnBG(10,"bg0601100半田明神_男坂_通常");
	FadeBG(0,true);

	CreateSE("SE01","se動作_手紙取り出す");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("上背景", 1000, null, true);

{	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100610nko">
「フウリに、ふほう……？」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100620nko">
「おだかんた……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指示：回想開始：1910ノーコ_フウリ.nss

	CreateColorEXadd("絵色１", 20000, "#FFFFFF");

	ClockDelete(0,true);
	ClockTime(1934);

	Fade("絵色１", 300, 1000, null, true);

	DeleteSt("C",0,true);
	CreateTextureEX_mono("絵背景１", 10, 0, 0, "cg/bg/bg0106100秋葉原_蔵前橋通り_通常.jpg");
	Fade("絵背景１", 0, 1000, null, true);

	St("MR",700, @0,@0,"buフウリ_通常_angry");
	SetTone($MR_次, Monochrome);
	FadeSt("MR",0,true);

	Fade("絵色１", 700, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300100630wfu">
「死んでしまっては、駄目です！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300100640wfu">
「死んでしまっては……元も子もないのです！」

{	St("MR",700, @0,@0,"buフウリ_通常_sad");
	SetTone($MR_次, Monochrome);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300100650wfu">
「絶対、生きてる――まだ、生きています！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指示：回想終了


//◆演出指示：回想開始：1910ノーコ_フウリ.nss
	Fade("絵色１", 300, 1000, null, true);

	DeleteSt("MR",0,true);

	DeleteSt("C",0,true);
	CreateTextureEX_mono("絵背景１", 10, 0, 0, "cg/bg/bg1304200似鳥マンション_リビング_同人誌散乱.jpg");
	Fade("絵背景１", 0, 1000, null, true);

	St("C",700, @0,@0,"buフウリ_胸手_shout");
	SetTone($C_次, Monochrome);
	FadeSt("C",0,true);

	Fade("絵色１", 700, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300100660wfu">
「後悔先に立たずなのです」

{	St("C",700, @0,@0,"buフウリ_胸手_sad");
	SetTone($C_次, Monochrome);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300100670wfu">
「自分の気持ちを伝えないと、その後悔を、ずっとずっと引きずることになるのです」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指示：回想終了
	Fade("絵色１", 300, 1000, null, true);

	ClockPass(1934);

	Delete("絵背景１");
	DeleteSt("C",0,true);

	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",0,true);

	Fade("絵色１", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0182]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100680nko">
「…………」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100690nko">
「だからって、ゆるせるわけない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100700nko">
「でも……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100710nko">
「わたしがしんだら、ぜんぶきえる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100720nko">
「ぜんぶ、いみない」

{	St("C",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100730nko">
「さよなら、フウリ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	TextBoxDelete(150);

	SetVolume("@SE*", 3000, 0, NULL);
	SetVolumeEX("@xbgm*", 2000, 0, null);

	Move($C_今, 200, @0, @-10, Axl1, false);
	DeleteSt("C",200,false);


//	ClearFadeNut(2000, true);
	CreateColorEX("絵色黒", 29000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

	Wait(2000);

	PrintGO("上背景", 30000);

{	ClockPass(1935);}

	MusicStart("@xbgm15",0,450,0,1000,null,true);


//※下倉注：人なし差分に変更 → やっぱり人有りに 2010/11/23

//◆場所：半田明神_境内
	OnBG(10,"bg0603111半田明神_境内_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);

	St("C",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100740nko">
「みこ……いた」

//◆演出指示：難しい顔の歌門星
{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"st歌門_通常_think");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300100750kms">
「………………」

{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100760nko">
「これで、しねる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：近づく
	Move($C_今, 200, @0, @-10, Axl1, false);
	DeleteSt("C",200,true);

	Wait(300);

	St("MR",700, @0,@0,"buノーコa_通常_normal");
	MoveEX($MR_次, 400, 0, 20, Dxl1, false);
	FadeSt("MR",400,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0201]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100770nko">
「こえがきこえる？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100780nko">
「わたしをはらえる？」

{	St("ML",700, @0,@0,"bu歌門_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300100790kms">
「邪魔しないでもらえますか！？」

{	St("MR",700, @0,@0,"buノーコa_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100800nko">
「わたしはじゃまもの」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100810nko">
「けがらわしきもの」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100820nko">
「がいなすもの」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100830nko">
「だからはらわれねばならない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100840nko">
「わたしをけして」

{	St("ML",700, @0,@0,"bu歌門_通常_shout");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300100850kms">
「断ります！」

{	St("MR",700, @0,@0,"buノーコa_通常_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300100860nko">
「え――？」

{	St("ML",700, @0,@0,"bu歌門_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300100870kms">
「今はそれどころではありません！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("ML",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300100880kms">
「ようやくアザナエルの呪いが解けるというのに――
　ミヅハ様ったら何故こんな日に限って！」

{	St("ML",700, @0,@0,"bu歌門_通常_think");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300100890kms">
「連絡を……連絡？　でも、誰に頼れば？
　叔父様は伊勢にいるし……近くには誰も……」

{	St("ML",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300100900kms">
「もし先代がここにいらっしゃれば……」

{	St("ML",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300100910kms">
「いやしかし、泣き言を言っていても仕方ない……」

{	St("ML",700, @0,@0,"bu歌門_通常_think");
	//★立ち絵プロセス：開始
	FadeStPro("ML", 200, 2000);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300100920kms">
「誰かに連絡をとって――そうだ！
　平次様に伝えなければ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//※下倉注：ここで電話するので背景「bg0604100半田明神_社務所_通常」に変更。

	//★立ち絵プロセス：再定義
	AgainSt("ML",700, @0,@0,"bu歌門_通常_think");

	PrintGO("上背景", 30000);
//	OnBG(10,"bg0603111半田明神_境内_通常");
	OnBG(10,"bg0604100半田明神_社務所_通常");
	FadeBG(0,true);
	DrawDelete("上背景", 500, 100, null, "slide_01_00_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　言うが早いか、歌門は社務所の電話の受話器をとる。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1936);}


	TextBoxDelete(150);

//◆ＳＥ：ぷっぷっぷっぷ、電話かける音
	//★徒歩：ＳＥ
	CreateSE("SE01","seメカ_携帯_ダイヤル");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(3000);

//◆ＳＥ：ぷるるるるるる、ぷるるるるるる……
	//★徒歩：ＳＥ
	CreateSE("SE01","seメカ_携帯_コール01_l");
	MusicStart("SE01",0,700,0,1000,null,true);

	Wait(4000);

	SetVolume("@SE01", 0, 0, NULL);

{	St("C",700, @0,@0,"bu歌門_通常_think");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0241]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300100930kms">
「――もしもし、平次様でしょうか！？」

{	St("C",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300100940kms">
「緊急事態です！
　アザナエルが盗まれました！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("C",700, @0,@0,"bu歌門_通常_think");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300100950kms">
「……はい、はい、そうです。間違いありません！」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300100960kms">
「それが、ミヅハ様はちょうど社を離れていて」

{	St("C",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300100970kms">
「遊びたいがため、わざと誘拐されたようでしたが、そこまでが河原屋双一の計画だったらしく」

{	St("C",700, @0,@0,"bu歌門_通常_shout");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300100980kms">
「はい、そうです！　河原屋双一の――そう、双六が明言しておりました」

{	St("C",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300100990kms">
「そこまで計算するなんて……
　ウソのようですが、彼ならやりかねません」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("C",700, @0,@0,"bu歌門_通常_think");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101000kms">
「サイババア様も……ネット上に不穏な動きがあると。
　やはり、河原屋双一の仕業……」

{	St("C",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101010kms">
「いえ、それもどうもおかしくて……」

{	St("C",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101020kms">
「双六は、土砂崩れの下敷きになっていました。
　だから、盗むのには失敗していて」

{	St("C",700, @0,@0,"bu歌門_通常_think");
	FadeSt("C",200,true);
	St("C",700, @0,@0,"bu歌門_通常_shock");
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 2500);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101030kms">
「なのに、社からはアザナエルが消えて……
　あ、いえ！　弾は盗まれていません！　大丈夫です！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//★立ち絵プロセス：再定義
	AgainSt("C",700, @0,@0,"bu歌門_通常_shock");

{	St("C",700, @0,@0,"bu歌門_通常_think");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101040kms">
「それでその、双六を一応土砂から掘り出したんですけれども、はい、なんだか犬と女の人の声を聞いたとか……」

{	St("C",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101050kms">
「私はその前に……
　恵那様が来ているのを見ておりました」

{	St("C",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101060kms">
「……あり得る話だと思います」

{	St("C",700, @0,@0,"bu歌門_通常_think");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101070kms">
「もしアザナエルかミヅハ様を見つけたら、どうかよろしくお願いいたします！」

{	St("C",700, @0,@0,"bu歌門_通常_shout");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101080kms">
「何卒、よろしくお願いいたします！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);

//◆ＳＥ：受話器置く
	//★徒歩：ＳＥ：受話器置く（無し）
//	CreateSE("SE01","SE_戦闘_銃器_発砲_44マグナム2");
//	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(2000);

{	St("C",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101090kms">
「…………ふぅ」

{	St("C",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101100kms">
「これで、平次様は協力してくれるはず……」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101110kms">
「まだ人手は足りないけど……残り正味４時間……」

{	St("C",700, @0,@0,"bu歌門_通常_think");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101120kms">
「私には新年の準備があるし、これ以上どうやって……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1937);}


{	St("MR",700, @0,@0,"buノーコa_通常_normal");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300101130nko">
「まだかかる？」

{	St("ML",700, @0,@0,"bu歌門_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101140kms">
「……いたのですか？」

{	St("MR",700, @0,@0,"buノーコa_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300101150nko">
「はやく、わたしをころして」

{	St("ML",700, @0,@0,"bu歌門_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101160kms">
「この際はっきりさせておきましょう」

{	St("ML",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101170kms">
「あなたのような亡霊の、下らない悩みに付き合ってる暇など、寸毫たりともありません」

{	St("MR",700, @0,@0,"buノーコa_通常_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300101180nko">
「くだらない……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("MR",200,true);

	St("C",700, @0,@0,"buノーコa_カッター_rage");

//◆ＳＥ：カッターナイフ
	//★徒歩：ＳＥ
	CreateSE("SE01","se戦闘_カッター_刃出す03遅い");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
{	MusicStart("SE01",0,1000,0,1000,null,false);
	MoveEX($C_次, 500, -40, 0, Dxl1, false);
	FadeSt("C",500,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300101190nko">
「わたしのなやみが、くだらない――！？」

{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101200kms">
「そのカッターナイフ、捨てられますか？」

{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"buノーコa_カッター_shock");
	FadeFF($C_次,0,0,200,0,0,Dxl1,false);
	SetVolumeEX("SE01", 300, 0, null);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300101210nko">
「え？」

{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101220kms">
「それは、人を傷つけるものではない」

{	St("C",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101230kms">
「あなたと失恋相手を結びつける、絆でしょう？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"buノーコa_カッター_shock");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300101240nko">
「…………」

{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101250kms">
「それを、あなたは自ら放棄することができない」

{	St("C",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101260kms">
「自らの未来に未練があるものを、どうして祓うことができましょう？」

{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"buノーコa_カッター_pinch");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300101270nko">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Wait(500);

	Move($C_今, 1000, @50, @50, Axl1, false);
	DeleteSt("C",1000,true);

	Wait(1500);

	St("C",700, @0,@0,"bu歌門_通常_pride");
	St("C",700, @0,@0,"bu歌門_通常_normal");

	FadeSt("C",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0311]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101280kms">
「しかし――そうですね」

{	//★立ち絵プロセス：再定義
	AgainSt("C",700, @0,@0,"bu歌門_通常_normal");}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101290kms">
「あなたが苦しいのもわかる。
　未練を断ち切ることこそ、我が務めかもしれません」

{	St("R",700, @0,@0,"buノーコa_発狂_normal");
	DeleteSt("C",200,false);
	FadeSt("R",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300101300nko">
「おねがい。わたし……くるしい」

{	St("ML",700, @0,@0,"bu歌門_通常_pride");
	DeleteSt("R",200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101310kms">
「いいでしょう。望み通りにして差し上げます。
　ただし――そのためには条件がひとつ」

{	St("ML",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101320kms">
「私の所に、ミヅハ様を連れてきてください」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1938);}


{	St("R",700, @0,@0,"buノーコa_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("R",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300101330nko">
「ミヅハさま？」

{	St("ML",700, @0,@0,"bu歌門_通常_normal");
	DeleteSt("R",200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101340kms">
「本名は<RUBY text="ミヅハノメ">弥都波能売命</RUBY>様」

{	St("ML",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101350kms">
「日本橋魚河岸の守護神として創建され、半田明神に遷座なさった、由緒正しき神様でございます」

{	St("ML",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101360kms">
「彼の地を長く離れていることもあり、氏子の信心を失い、普段の見た目は童子のようでもありますが、侮るなかれ」

{	St("ML",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101370kms">
「祭神三柱が出向かれて留守となったこの半田明神の留守神様として鎮座していらっしゃいます」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("ML",700, @0,@0,"bu歌門_通常_think");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101380kms">
「いや……鎮座して、いらっしゃいましたが……」

{	St("ML",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101390kms">
「やむにやまれぬ事情で、連れ去られたのです」

{	St("R",700, @0,@0,"buノーコa_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("R",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300101400nko">
「つれさられた……」

{	St("ML",700, @0,@0,"bu歌門_通常_hard");
	DeleteSt("R",200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101410kms">
「もしも祓い清められ、この世から消え去りたいと願うならば、ミヅハ様をここへと呼び戻してください」

{	St("ML",700, @0,@0,"bu歌門_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101420kms">
「この要求――呑んでいただけますね？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("R",700, @0,@0,"buノーコa_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("R",200,true);}

{	ClockPass(1939);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300101430nko">
「……じぶんかって」

{	St("ML",700, @0,@0,"bu歌門_通常_pride");
	DeleteSt("R",200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101440kms">
「あなたも同様でしょう？」

{	St("R",700, @0,@0,"buノーコa_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("R",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300101450nko">
「……たしかに」

{	St("ML",700, @0,@0,"bu歌門_通常_normal");
	DeleteSt("R",200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300101460kms">
「約束、していただけますね」

{	St("R",700, @0,@0,"buノーコa_通常_shock");
	DeleteSt("ML",200,false);
	FadeSt("R",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300101470nko">
「やくそく――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("R",200,true);

	Wait(1000);

	St("C",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("C",500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300101480nko">
「…………」

{	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("C",500,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300101490nko">
「わかった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("@SE*", 3000, 0, NULL);
	SetVolume("@x*", 3000, 0, NULL);

//	ClearFadeNut(3000, true);
	EndFileBlackOut(20000,2000);

	Wait(2000);

	EndScene();
}
