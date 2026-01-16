
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene aba2402フウリ.nss_MAIN
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
	$GameName = "aba2403似鳥_ノーコ.nss";//★エンディング中（aba）

//※↑ab2051ノーコ.nssの飛び方を参考に設定（mngw 10/14）

}

scene aba2402フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="270">
////////////header////////////
//file name "aba2402フウリ.nss"
//title "未来は今"
//previous "aba2401千秋_フウリ.nss"

////////////footer////////////
//next "aba2403似鳥_ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1901);}


//◆場所：スーパーノヴァ_ライブ会場
	OnBG(10,"bg0502100スーパーノヴァ_ライブ会場_通常");
	FadeBG(0,true);

	DeleteAllSt(200,false);

	SoundPlay("@xbgm20",0,450,true);

	FadeDelete("上背景", 2000, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("ML",700, @-60,@0,"bu鈴_シリアス_think");
	Move("@StNameML/ML*", 500, @60, @0, DxlAuto, false);
	FadeSt("ML",500,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aba24/020100010fjr">
「あーあ……」


{	St("ML",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aba24/020100020fjr">
「せっかく、アタシがお膳立てしてあげたのに……」

{	St("MR",700, @0,@0,"buフウリ_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aba24/020100030wfu">
「お膳立て？」

{	St("ML",700, @0,@0,"bu鈴_シリアス_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aba24/020100040fjr">
「……ま、いいや」

{	St("ML",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aba24/020100050fjr">
「どの恋愛だって、結局そうよね」



//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aba24/020100060fjr">
「コソコソしてるのが、かえってよくないし。
　このままうやむやにしてこじらせた方が、怖いわ」

{	St("MR",700, @0,@0,"buフウリ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aba24/020100070wfu">
「鈴ちゃん……なにを？」

{	St("ML",700, @0,@0,"bu鈴_シリアス_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);
	SetVolumeEX("@xbgm*", 4000, 0, null);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aba24/020100080fjr">
「フウリちゃん」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aba24/020100090fjr">
「もう……彼氏のこと、諦めなさい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("MR",700, @0,@0,"buフウリ_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aba24/020100100wfu">
「え……？」

{	SoundPlay("@xbgm25",0,450,true);
	St("ML",700, @0,@0,"bu鈴_シリアス_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aba24/020100110fjr">
「ちゃんと叩けなかったの、ホントはそのせいでしょ？」


//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aba24/020100120fjr">
「まだ、想いが断ち切れないから――」

{	St("MR",700, @0,@0,"buフウリ_前のめり_hard");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 200, 5, 5, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aba24/020100130wfu">
「そんなこと、ないです！」

{	St("MR",700, @0,@0,"buフウリ_胸手_hard");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aba24/020100140wfu">
「っていうか、まだ会ってもいないのに、断ち切る必要なんて――」


{	St("ML",700, @0,@0,"bu鈴_シリアス_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aba24/020100150fjr">
「フウリちゃん。わかってるんでしょ？
　認めたくないだけなんでしょ？」

{	St("MR",700, @0,@0,"buフウリ_胸手_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aba24/020100160wfu">
「私は……私は……！」

{	St("ML",700, @0,@0,"bu鈴_シリアス_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aba24/020100170fjr">
「あなたの彼氏は――」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aba24/020100180fjr">
「もう、二度とあなたの前に姿を現さない――」


{	St("MR",700, @0,@0,"buフウリ_胸手_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aba24/020100190wfu">
「――――ッ！！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//◆ＳＥ：駆け足

	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("@StNameMR/MR*", 200, @120, @0, DxlAuto, false);
	DeleteAllSt(200,true);
	TextBoxDelete(150);


	SceneOut(5000, 300, "slide_01_01_0");


{	ClockPass(1902);}


//◆場所：スーパーノヴァ_正面
	OnBG(10,"bg0501111スーパーノヴァ_正面_通常");
	FadeBG(0,true);

	DeleteAllSt(200,false);
	SetVolumeEX("SE01", 3000, 0, null);

	WaitKey(2000);

	SceneIn(300, "slide_01_01_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("C",700, @-120,@0,"buフウリ_胸手_think");
	Move("@StNameC/C*", 200, @120, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aba24/020100200wfu">
（鈴ちゃん……ひどい……！　ひどいよ！）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aba24/020100210wfu">
（ひどい……けど……でも……）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameC/C*", 200, @120, @0, DxlAuto, false);
	DeleteAllSt(200,true);

	TextBoxDelete(150);


//	SceneOut(5000, 300, "slide_01_01_0");
	PrintGO("上背景", 30000);

//◆場所：秋葉原_中央通り

	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);

//	SceneIn(300, "slide_01_01_1");
	DrawDelete("上背景", 500, 100, null, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("C",700, @-120,@0,"buフウリ_胸手_think");
	Move("@StNameC/C*", 500, @120, @0, DxlAuto, false);
	FadeSt("C",500,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aba24/020100220wfu">
（そう……なのかな……）


{	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aba24/020100230wfu">
（やっぱり私……）


//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aba24/020100240wfu">
（貫太さんを……諦めてる……？）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameC/C*", 200, @120, @0, DxlAuto, false);
	DeleteAllSt(200,true);

	TextBoxDelete(150);


//	SceneOut(5000, 300, "slide_01_01_0");
	PrintGO("上背景", 30000);

{	ClockPass(1903);}


//◆場所：あにのあな_正面
	OnBG(10,"bg0301111あにのあな_正面_通常");
	Move("@OnBG*", 0, @0, -1100, null, false);

	FadeBG(0,true);

//	SceneIn(300, "slide_01_01_1");
	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("C",700, @-120,@0,"buフウリ_胸手_lost");
	Move("@StNameC/C*", 1000, @120, @0, DxlAuto, false);
	FadeSt("C",1000,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aba24/020100250wfu">
（ノーコちゃん……）

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aba24/020100260wfu">
（私が、彼女を応援するのは……）


{	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aba24/020100270wfu">
（もしかして、私自身は、諦めてしまってるから……？）



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 4000, 0, null);

	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 3000, 1000, null, true);

	DeleteSt("C", 0,true);
	Delete("@OnBG*");


	WaitKey(2000);

	EndScene();
}
