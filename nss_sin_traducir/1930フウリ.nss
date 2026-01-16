
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1930フウリ.nss_MAIN
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
	$GameName = "1950フウリ.nss";

}

scene 1930フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1700">
////////////header////////////
//file name "1930フウリ.nss"
//title "ヤケ食いです！"
//previous "1920似鳥_ノーコ_フウリ.nss"

////////////footer////////////
//next "フウリ" "1950フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：似鳥マンション_玄関
	OnBG(10,"bg1302100似鳥マンション_正面_通常");
	FadeBG(0,true);

{	ClockPass(1930);}

	SoundPlay("@xbgm24",0,450,true);

	DrawDelete("上背景", 500, 1000, null, "blind_01_00_1", true);

{	St("C",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200010wfu">
「待って！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se動作_走る05_l");
	MusicStart("SE01",0,600,0,1000,null,true);

	Move("@StNameC/C*", 200, @+200, @0, Dxl1, false);
	DeleteSt("C",200,true);


	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

//◆場所：似鳥マンション_エントランス
	OnBG(10,"bg1301100似鳥マンション_エントランス_通常");
	FadeBG(0,true);

	SetVolume("SE01", 300, 0, null);
	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);


{	St("C",700, @0,@0,"buフウリ_胸手_shout");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200020wfu">
「待ってくださいですッ！」

{	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200030wfu">
（早く追いかけないと、また、手遅れになっちゃう！）

{	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200040wfu">
（そんなのは嫌ですッ！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se動作_走る05_l");
	MusicStart("SE01",0,600,0,1000,null,true);

	Move("@StNameC/C*", 200, @+200, @0, Dxl1, false);
	DeleteSt("C",200,true);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

//◆場所：秋葉原_蔵前橋通り
	OnBG(10,"bg0106100秋葉原_蔵前橋通り_通常");
	FadeBG(0,true);

	SetVolume("SE01", 300, 0, null);

	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);

	St("MR",700, @+200,@+50,"buフウリ_通常_hard");

	CreateSE("SE01","se動作_着地");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("@StNameMR/MR*", 200, @-200, @-50, Dxl1, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200050wfu">
「ノーコちゃん！？　どこですか？」

{	St("MR",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200060wfu">
「どこに……あ、いた！」

{	ClockPass(1931);}

{	St("MR",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200070wfu">
「まってー！　ノーコちゃん！」

{	DeleteSt("MR",200,true);
	St("ML",700, @+50,@0,"buノーコa_通常_shock");
	Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300200080nko">
「フウリ？」

{	Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	DeleteSt("ML",200,true);
	St("MR",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200090wfu">
「にげないでくださいぃぃー！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("MR",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200100wfu">
「ああっ！　赤信号なのに――」

{	DeleteSt("MR",200,true);
	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300200110nko">
「しのう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);

	CreateWindow("win01", 150, 100, 0, 824, 576, false);

	CreateColorEXadd("win01/フラッシュ白", 15000, "WHITE");


	CreateTextureEX("win01/絵背景100", 100, -226, -161, "cg/bg/bg0103100秋葉原_中央通り_通常.jpg");
	CreateTextureEX("win01ライン左", 16000, Center, 0, "cg/mask/ciウィンドウ縦01.png");
	CreateTextureEX("win01ライン右", 16000, Center, 0, "cg/mask/ciウィンドウ縦01.png");

	CreateTextureEX("win01/絵st100", 150, -370, -346, "cg2/fu/fuノーコa_通常_normal.png");
	CreateTextureEX("win01/絵st200", 150, -370, -346, "cg2/fu/fuノーコa_通常_sad.png");
	Move("win01/絵st100", 0, @+100, @0, null, true);

	Zoom("win01/絵背景100", 0, 2000, 2000, null, true);
	SetShade("win01/絵背景100", MEDIUM);

	Zoom("win01", 0, 0, 1000, null, true);


	Fade("win01ライン*", 500, 1000, null, false);
	Fade("win01/絵背景100", 300, 1000, null, false);
	Move("win01ライン右", 300, 895, @0, null, false);
	Move("win01ライン左", 300, 82, @0, null, false);
	Zoom("win01", 300, 1000, 1000, null, true);

	Move("win01/絵st100", 300, @-100, @0, null, false);
	Fade("win01/絵st100", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
　ノーコが踵を返し、道路へと飛び出した。

//◆音声指示：遠くへ
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200120wfu">
「あぶないッ！」

//◆ＳＥ：行き交う車の音
{	CreateSE("SE10","seガヤ_交通_l");
	MusicStart("SE10",0,700,0,1000,null,true);
	Fade("win01/フラッシュ白",2000,300,Axl1,false);}
　飛び出したノーコの身体に、減速もなく突っ込む車。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	SetVolume("SE10", 1200, 0, null);
	Fade("win01/フラッシュ白",1000,1000,Axl1,true);

	Wait(500);

	Fade("win01/フラッシュ白",500,0,Dxl1,true);
	Delete("win01/フラッシュ白");

	Fade("win01/絵st200", 300, 1000, null, true);
	Fade("win01/絵st100", 0, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300200130nko">
「これではしねない」

{	Move("win01/絵st200", 400, @-200, @0, null, false);
	Fade("win01/絵st200", 300, 0, null, true);
	St("C",700, @+50,@0,"buフウリ_通常_normal");
	Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200140wfu">
「そうか……実体がないから……」

{	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200150wfu">
「って、安心してる場合じゃない！」

//◆音声指示：遠くへ
{	St("C",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200160wfu">
「ノーコちゃん！　待ってってば――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：キキーッ！！

	CreateSE("SE01","seメカ_車_急ブレーキ");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

{	St("C",700, @0,@0,"buフウリ_通常_shock");
	Shake("@StNameC/C*", 300, 5, 0, 0, 0, 1000, null, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200170wfu">
「ふぎゃっ！」

//◆ＳＥ：クラクション
{	CreateSE("SE02","seメカ_車_クラクション_l");
	MusicStart("SE02",0,700,0,1000,null,false);
	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200180wfu">
「あ、すいませ――」

//◆ＳＥ：キキーッ！！
//◆ＳＥ：クラクション多重奏
{	CreateSE("SE03","seメカ_車_クラクション多数_l");
	MusicStart("SE03",0,700,0,1000,null,true);
	St("C",700, @0,@0,"buフウリ_通常_fear");
	Shake("@StNameC/C*", 300, 5, 0, 0, 0, 1000, null, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200190wfu">
「あああああ！　すいません、すいません！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("SE03", 300, 0, null);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteSt("C",200,true);

	Delete("win01/絵*");
	Delete("win01");
	Delete("win01*");

{	ClockPass(1932);}

//◆場所：秋葉原_裏通り
	OnBG(10,"bg0101111秋葉原_裏通り_通常");
	FadeBG(0,true);

{	St("C",700, @+100,@0,"fuフウリ_通常_angry");
	FadeSt("C",0,true);}

	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);

	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);

//嶋：ここから距離感を出すために、ノーコは一時的に出てきません

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200200wfu">
「こらー！　待って！」

{	DeleteSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300200210nko">
「うるさい」

{	St("C",700, @0,@0,"fuフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200220wfu">
「私の、話を、聞いてください！」

{	DeleteSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300200230nko">
「だまれ」

{	St("C",700, @0,@0,"fuフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200240wfu">
「私に、ごめんなさいをさせてくださいー！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300200250nko">
「いらない」

{	St("C",700, @0,@0,"fuフウリ_通常_fear");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200260wfu">
「待ってえええええ！！」

{	DeleteSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300200270nko">
「…………」

{	St("R",700, @0,@0,"buフウリ_胸手_shout");
	FadeSt("R",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200280wfu">
「はぁっ、はぁっ、はぁ……」

{	St("R",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("R",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200290wfu">
「ノーコちゃん、ええと、あの……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("L",700, @0,@0,"buノーコa_通常_fear");
	DeleteSt("R",200,false);
	FadeSt("L",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300200300nko">
「あなたのせい」

{	St("R",700, @0,@0,"buフウリ_胸手_think");
	DeleteSt("L",200,false);
	FadeSt("R",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200310wfu">
「きゅぅぅ……」

{	St("L",700, @0,@0,"buノーコa_通常_fear");
	DeleteSt("R",200,false);
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300200320nko">
「あなたが、ぼうそうした」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300200330nko">
「かってに、よこから、くちをだした」

{	St("R",700, @0,@0,"buフウリ_胸手_cry");
	DeleteSt("L",200,false);
	FadeSt("R",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200340wfu">
「ひぐっ、う……で……でも……
　私はそれがノーコちゃんのためだって……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("L",700, @0,@0,"buノーコa_幽霊_sad");
	DeleteSt("R",200,false);
	FadeSt("L",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300200350nko">
「わたしは、あなたと、ちがう」

{	St("C",700, @0,@0,"buフウリ_前のめり_hard");
	DeleteSt("L",200,false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200360wfu">
「ノーコちゃん……！」

{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300200370nko">
「ついてこないで」

{	Move("@StNameC/C*", 200, @-100, @-50, Axl1, false);
	DeleteSt("C",200,true);
	St("C",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200380wfu">
「きゅ……きゅ……きゅうううう……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200390wfu">
「お友達……お友達に、酷いことをしてしまって……」

{	St("C",700, @0,@0,"buフウリ_胸手_cry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200400wfu">
「ご……ごめんなさい……ごめんなさいいい……！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);

	SetVolume("@xbgm*", 1000, 0, null);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆場所：スーパーノヴァ_正面_ガラス割れ
	OnBG(10,"bg0501200スーパーノヴァ_正面_ガラス割れ");
	FadeBG(0,true);

	DrawDelete("黒幕１", 500, 100, null, "blind_01_00_1", true);

{	St("C",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200410wfu">
「ノーコちゃん？　ノーコちゃん！」

{	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200420wfu">
「だめだ……いない……」

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200430wfu">
（見失ってしまいました……）

{	St("C",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200440wfu">
（今鈴ちゃんに会ったら、心配をかけてしまいます。
　一度、落ち着かないと……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆時間：ジャンプ
{	ClockPass(1935);}

//◆場所：銭形公園_全景
	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);

	CreateSE("SE01","se環境_風と葉っぱ_l");
	MusicStart("SE01",0,300,0,1000,null,true);


	DrawDelete("黒幕１", 1000, 100, null, "blind_01_00_1", true);

{	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200450wfu">
「…………」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200460wfu">
「なんで……こんなことになっちゃったんでしょうか」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200470wfu">
「最初は、ただ、ノーコちゃんを助けてあげたくて……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200480wfu">
「そしたら、好きな人に、ノーコちゃんが告白できないことに気付いて……」

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200490wfu">
「だから私は、そのお手伝いを――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指示：回想開始

//嶋：仮
	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);

	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/bg/bg0101100秋葉原_裏通り_通常.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	St("C",7000, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",0,true);

	Fade("フラッシュ白",100,0,null,true);
	Delete("フラッシュ白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/300200500nko">
「わたしは、あなたと、ちがう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	SetVolume("SE*", 300, 0, null);
	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",500,1000,null,true);

	Delete("絵背景*");
	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",0,true);

	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");
//◆演出指示：回想終了

	Wait(300);

	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200510wfu">
「…………あ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",700, @0,@0,"buフウリ_胸手_shout");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200520wfu">
「ひどい……私……ひどい……」

{	St("C",700, @0,@0,"buフウリ_胸手_cry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200530wfu">
「ひぐっ、うきゅっ、うううう……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200540wfu">
「私、なんてことを……うきゅうううううううう……」


{	ClockPass(1936);}

{	SetVolume("SE*", 2000, 0, null);}


{	DeleteSt("C",200,true);
	St("MR",700, @+50,@0,"buミリＰa_通常_normal");
	Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300200550mrp">
「はろぉ～」

{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200560wfu">
「え……？　ミリＰさん？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//	SoundPlay("@xbgm10",0,450,true);
	SoundPlay("@xbgm27",0,450,true);

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300200570mrp">
「なーんか聞き覚えのある泣き声がすると思ったら」

{	St("MR",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300200580mrp">
「ほらほら、泣かない泣かない」

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300200590mrp">
「泣いてるヒマがあったら、アタシと一緒に行きましょ」

{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200600wfu">
「行くって――」

{	St("MR",700, @0,@0,"buミリＰa_通常_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300200610mrp">
「ヤケ食いできる店、教えて頂戴ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("MR",200,true);

//◆時間：ジャンプ
{	ClockPass(1938);}

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆場所：プリーズ_店内
	OnBG(10,"bg2101100プリーズ_店内_通常");
	FadeBG(0,true);

	DrawDelete("黒幕１", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【マダム】
<voice name="マダム" class="その他女声" src="voice/19/300200620e04">
「あら、フウリちゃんいらっしゃい」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200630wfu">
「マダムさん、こんばんは」

{	DeleteSt("ML",200,true);}
//【マダム】
<voice name="マダム" class="その他女声" src="voice/19/300200640e04">
「あら？　元気ないわねぇ」

{	St("ML",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200650wfu">
「うう……マダムさんには嘘がつけません……」

{	DeleteSt("ML",200,true);}
//【マダム】
<voice name="マダム" class="その他女声" src="voice/19/300200660e04">
「サービスするから、たくさん食べてお仕事頑張って！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1939);}


//	TextBoxDelete(150);


{	St("ML",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200670wfu">
「いつも、ありがとうございます」

{	St("MR",700, @0,@0,"buミリＰa_通常_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300200680mrp">
「あら、お知り合いのお店なんだ？」

{	St("ML",700, @0,@0,"buフウリ_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200690wfu">
「はい。よくお世話になってます」

{	DeleteSt("ML",200,true);}
//【マダム】
<voice name="マダム" class="その他女声" src="voice/19/300200700e04">
「それで、ご注文は？」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200710wfu">
「ナポリタンを超盛りで。コーヒーはホットを」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300200720mrp">
「カルボナーラ、超盛りをいただけるかしら？」

{	DeleteSt("MR",200,true);}
//【マダム】
<voice name="マダム" class="その他女声" src="voice/19/300200730e04">
「はい、注文いただきました」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(1940);}

{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0171]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200740wfu">
「ミリＰさんも超盛り……？」

{	St("MR",700, @0,@0,"buミリＰa_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300200750mrp">
「ヤケ食いしたいのはあなただけじゃないの」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200760wfu">
「なにかあったんですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolume("@xbgm*", 2000, 0, null);

	SoundPlay("@xbgm25",2000,450,true);

	DeleteSt("ML",200,true);

	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300200770mrp">
「……まあね」

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300200780mrp">
「アタシ、昔テレビ局に勤めてたでしょ。
　その時、戦友だった男のコがいてね」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300200790mrp">
「レイジ君っていうんだけど、理想に燃える若者！　って感じで、局とソリが合わなくて」

{	St("MR",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300200800mrp">
「売れ線主義の私とは、全然やり方が違うんだけどね。
　それでもなぜか、ソリがあって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300200810mrp">
「彼は局をやめて、ニヤ生とかで番組創ってるらしいんだけど。ほら知らない？　『全国ゆるキャラバン』」

{	St("ML",700, @0,@0,"buフウリ_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200820wfu">
「あ……知ってます。
　確か今日ＵＰ＋でイベントがあるんでしたっけ？」

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300200830mrp">
「そう。元々ネットから始まった番組でね。
　私も実は企画当初からアドバイザーしてたりして」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300200840mrp">
「口コミで話題で、どんどん規模が大きくなってさ。
　ようやくテレ洋で放送！　ってところまで漕ぎ着けて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1941);}

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300200850mrp">
「本人、かなり気合入ってて、アタシも何度かアドバイスしたんだけどね……」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300200860mrp">
「それが今日、突然食中毒で倒れちゃって……」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200870wfu">
「大丈夫なんですか？」

{	St("MR",700, @0,@0,"buミリＰa_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300200880mrp">
「命に別状はないみたいなんだけどね。
　ただ、肝心のディレクターがいなくなっちゃって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300200890mrp">
「でもね、大切な大晦日の生放送でしょ？
　信頼できる人間にディレクターを任せたいって」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300200900mrp">
「で、アタシに連絡が来たのよ」

{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200910wfu">
「急に……大変……」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200920wfu">
「でもあれ？
　生放送だったら、もう時間が」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300200930mrp">
「放送まで３０分ないわね」

{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200940wfu">
「そんな！　こんなことしてる場合じゃ――」

{	St("MR",700, @0,@0,"buミリＰa_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300200950mrp">
「壊れちゃったのよ」

{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200960wfu">
「へ？」

{	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300200970mrp">
「発表の目玉だったアキバの新マスコット、地震で壊れちゃったの」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1942);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300200980mrp">
「１／３０ソトカンダーが、地震で落っこちて」

{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300200990wfu">
「ええええええええええ！？」

{	St("MR",700, @0,@0,"buミリＰa_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300201000mrp">
「そもそも、ゆるキャラバンのプロデュースを主体にした番組だったから、致命傷で」

{	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300201010mrp">
「すぐに新しいアイディア作らなきゃならないんだけど」

{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201020wfu">
「で……できるんですか！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



{	St("MR",700, @0,@0,"buミリＰa_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300201030mrp">
「ま、無理ね」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300201040mrp">
「ダメなら、早く局に泣きつかなきゃならないんだけど」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300201050mrp">
「この企画、レイジ君がテレビ人生懸けた企画だから。諦めがつかなくて……」

{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201060wfu">
「ミリＰさん……」

{	St("ML",700, @0,@0,"buフウリ_胸手_shy");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201070wfu">
「そのレイジさんのことが、好きなんですね？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);

	St("MR",700, @0,@0,"buミリＰa_通常_smile");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300201080mrp">
「もちろん向こうは、なんとも思ってないけど」

{	St("ML",700, @0,@0,"buフウリ_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201090wfu">
「…………」

{	St("MR",700, @0,@0,"buミリＰa_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300201100mrp">
「まったく、嫌ね」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300201110mrp">
「いつも勇ましい恋愛の歌ばっかり作ってるのに。
　いざ自分の事となると、臆病になっちゃって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201120wfu">
「…………」

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300201130mrp">
「でも、アリガトね。
　なんか、話を聞いてもらったらすっきりした――」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201140wfu">
「あの……私の話も、聴いてもらえますか？」

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300201150mrp">
「あなたが良ければ、ね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1943);}


//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buフウリ_胸手_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201160wfu">
「私……好きな人が、いたんです」

{	St("ML",700, @0,@0,"buフウリ_胸手_smile");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201170wfu">
「昔から、好きで好きでずーっと好きで、それで、将来は一緒になれたらなあ、なんて思ってました」

{	St("ML",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201180wfu">
「けど、私には昔からの許嫁がいて。
　だから、その人に自分の気持ちを伝えられなくて」

{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201190wfu">
「やがて彼が遠くに行って、私と音信不通になりました」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("MR",700, @0,@0,"buミリＰa_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300201200mrp">
「悲しい話ね」

{	St("ML",700, @0,@0,"buフウリ_胸手_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201210wfu">
「でも……私は、諦めきれなくて」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201220wfu">
「有名になれば、連絡のつかなくなった彼に、見つけてもらえるかもしれないなって」

{	St("ML",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201230wfu">
「不純かもしれないけど、それが、第一宇宙速度に入った理由です」

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300201240mrp">
「そうだったんだ……初耳」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);

	St("ML",700, @0,@0,"buフウリ_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201250wfu">
「今日、私にお友達ができました」

{	St("ML",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201260wfu">
「そのお友達も、やっぱり好きな人がいて」

{	St("ML",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201270wfu">
「やっぱり立場が違って、結ばれない恋で、だからそのお友達は、彼に告白できなくて――」

{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201280wfu">
「私、それが我慢できませんでした」

{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201290wfu">
「だから、お節介にも、彼女を告白させようとして」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("ML",700, @0,@0,"buフウリ_胸手_cry");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201300wfu">
「それで、ふたりは……ふたりは……」

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300201310mrp">
「……そっか」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300201320mrp">
「そのお友達に、昔の自分が重なっちゃったんだ」

{	St("ML",700, @0,@0,"buフウリ_胸手_cry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201330wfu">
「そう……なんですっ……」

{	St("ML",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201340wfu">
「私と……彼女は……違うのに……でもっ！
　自分の……わがままで……ふたりを……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1944);}

//	TextBoxDelete(150);

	St("ML",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201350wfu">
「私……酷いことしてしまって……
　本当に、申し訳なくて……」


{	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300201360mrp">
「うん、うん……」

{	St("ML",700, @0,@0,"buフウリ_胸手_cry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201370wfu">
「ノーコちゃん、ごめんなさい……
　ごめんなさい……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	SetVolume("@xbgm*", 1000, 0, null);


//◆演出指示：時間経過
	CreateColorEX("フラッシュ白", 20000, "Black");
	Fade("フラッシュ白",1000,1000,null,true);

	DeleteAllSt(0,true);

	Wait(2000);

//◆時間：ジャンプ
{	ClockPass(1947);}

	Fade("フラッシュ白",1000,0,null,true);
	Delete("フラッシュ白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0311]
//【マダム】
<voice name="マダム" class="その他女声" src="voice/19/300201380e04">
「はい、陰気な顔はそこでおしまい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆ＳＥ：パスタが置かれる
	CreateSE("SE01","se日常_皿置く");
	MusicStart("SE01",0,700,0,1000,null,false);

	SoundPlay("@xbgm10",0,450,true);

{	St("ML",700, @0,@0,"buフウリ_前のめり_other");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201390wfu">
「ぅ……うわぁ。美味しそう……！」

{	St("MR",700, @0,@0,"buミリＰa_通常_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300201400mrp">
「量多いわね、この店」

{	DeleteSt("MR",200,true);}
//【マダム】
<voice name="マダム" class="その他女声" src="voice/19/300201410e04">
「今日は特別サービスよ。
　たくさん食べて、嫌なことは忘れちゃって」

{	St("ML",700, @0,@0,"buフウリ_前のめり_smile");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201420wfu">
「はい、ありがとうございます……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buミリＰa_通常_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300201430mrp">
「あなた……意外と立ち直り早いわね」

{	St("ML",700, @0,@0,"buフウリ_前のめり_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201440wfu">
「辛いとき、悲しいときは、肉まんとかでお腹をいっぱいにしろという、鈴ちゃんの教えです」

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300201450mrp">
「……あのコらしいわね」

{	St("ML",700, @0,@0,"buフウリ_前のめり_shout");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201460wfu">
「ということで、いただきます！」

{	St("MR",700, @0,@0,"buミリＰa_通常_smile");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300201470mrp">
「そうね。気を取り直して――いただきます」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1948);}


//	TextBoxDelete(150);


{	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300201480mrp">
「はむ、んむ……ん……」

{	St("MR",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300201490mrp">
「ん！　美味しい！」

{	DeleteSt("MR",200,true);}
//【マダム】
<voice name="マダム" class="その他女声" src="voice/19/300201500e04">
「ありがとうございます」

{	St("MR",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300201510mrp">
「穴場ね……こんな美味しいパスタがあるなんて」

{	DeleteSt("MR",200,true);}
//【マダム】
<voice name="マダム" class="その他女声" src="voice/19/300201520e04">
「はい、自慢のパスタです」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300201530mrp">
「フウリちゃんは、いつもこの店に――え？」

{	St("ML",700, @0,@0,"buフウリ_前のめり_shout");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201540wfu">
「おかわり！」

{	DeleteSt("ML",200,true);}
//【マダム】
<voice name="マダム" class="その他女声" src="voice/19/300201550e04">
「大盛りでいいかしら？」

{	St("ML",700, @0,@0,"buフウリ_前のめり_smile");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201560wfu">
「はい！」

{	St("MR",700, @0,@0,"buミリＰa_通常_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300201570mrp">
「な……なにその早さ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buフウリ_通常_angry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201580wfu">
「自棄食いなので！」

{	St("MR",700, @0,@0,"buミリＰa_通常_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300201590mrp">
「いやいや、早食いってレベルじゃないわよ」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300201600mrp">
「っていうか、まだ食べるわけ？」

{	St("ML",700, @0,@0,"buフウリ_頬手_shy");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201610wfu">
「八分目くらいまでは……」

{	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300201620mrp">
「あなた、大食い企画じゃないんだから――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1949);}


//	TextBoxDelete(150);
	DeleteSt("MR",200,true);

//◆演出指定：ニュータイプ演出
	CreateTextureEX("絵背景100", 1000, 367, 42, "cg/ef/ライトニング.png");
	Request("絵背景100", Smoothing);
	Zoom("絵背景100", 0, 100, 1000, null, true);
	SetBlur("絵背景100", true, 3, 500, 50, false);
	CreateColorEX("絵色100", 600, "Black");

	SetVertex("絵背景100", center, 1024);

	St("C",700, @0,@0,"buミリＰa_通常_hard");

	CreateSE("SE01","se擬音_ニュータイプ");

	FadeSt("C",200,false);

	SetVolume("@xbgm*", 200, 0, null);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色100", 100, 200, null, false);
	Zoom("絵背景100", 100, 1500, 1300, Dxl1, false);
	Move("絵背景100", 100, 0, @0, Dxl1, false);
	Fade("絵背景100", 100, 1000, null, true);

	Shake("絵背景100", 500, 0, 3, 0, 0, 1000, null, false);

	Wait(100);

	Zoom("絵背景100", 100, 1000, 1, Dxl1, true);

	Fade("絵色100", 300, 200, null, true);
	Delete("絵色100");
	Delete("絵背景100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300201630mrp">
「大食い企画――！？」

{	SoundPlay("@xbgm16",0,450,true);
	St("C",700, @0,@0,"buミリＰa_ショータイム_happy");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300201640mrp">
「そうか！　その手が――！」

{	DeleteSt("C",200,true);
	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201650wfu">
「ミリＰさん？　どうしたんですか？」

{	St("MR",700, @0,@0,"buミリＰa_通常_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300201660mrp">
「ちょっと来てくれる！？」

{	St("ML",700, @0,@0,"buフウリ_頬手_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201670wfu">
「え？　でも、おかわりが――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buミリＰa_通常_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300201680mrp">
「いいから来て！！」

{	St("ML",700, @0,@0,"buフウリ_通常_fear");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/300201690wfu">
「ひえっ！！」

//◆音声指示：遠くへ
{	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/300201700mrp">
「お金、ここに置いておくわよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	SetVolume("@xbgm*", 1000, 0, null);

	Move("@StNameMR/MR*", 200, @-300, @0, Dxl1, false);
	DeleteSt("MR",200,true);

	EndScene();
}

