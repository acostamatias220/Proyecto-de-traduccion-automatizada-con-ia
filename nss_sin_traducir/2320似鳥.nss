
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2320似鳥.nss_MAIN
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
	$GameName = "2330似鳥.nss";
//	$GameCircle=false;

}

scene 2320似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1380">
////////////header////////////
//file name "2320似鳥.nss"
//title "転ばぬ先の名探偵"
//previous "2310似鳥.nss"

////////////footer////////////
//next "似鳥" "2330似鳥.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

	SnowDrop(0);

	SoundPlay("@xbgm30",0,450,true);


{	ClockPass(2320);}


//◆場所：半田明神_社務所
	OnBG(10,"bg0604100半田明神_社務所_通常");
	FadeBG(0,true);

	St("C",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("C",0,true);

	FadeDelete("上背景", 200, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/200500010fjr">
「ニコちゃん、一応飯田橋までは来たみたいなんだけど、そこから全然動かないらしくて」

{	St("C",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/200500020fjr">
「スーパー・スーパーノヴァまであと３０分……大丈夫？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/200500030mrp">
「急な雪で交通が麻痺し始めたとなると、マズいわね。
　飯田橋からだと、普通に歩いて３０分ちょい……」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/200500040mrp">
「地面が隠れるくらいに雪が積もるとなると、まともに歩けやしないから……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@80,"bu似鳥_背張る_happy");
	Move("@StNameML/ML*", 200, @0, @-80, Dxl2, false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200500050nki">
「はっはっはっは！！」

{	St("ML",700, @0,@0,"bu似鳥_背張る_shout");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200500060nki">
「それなら、心配しなくても大丈夫ッ！！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200500070nki">
「名探偵富士見恵那は、こんなこともあろうかと、オレたちに策を授けてくれていたんだッ！！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/200500080mrp">
「な――！？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/200500090fjr">
「ホントに！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200500100nki">
「みそブー！　ロケボーっての、持ってるか？」

{	DeleteAllSt(200,false);
	St("MR",700, @50,@80,"buみそa_通常_pride");
	Move("@StNameMR/MR*", 200, @-50, @-80, Dxl2, false);
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/200500110mso">
「おう！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/200500120mrp">
「スケボー！？
　そうか、コレなら車道が混んでても――」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/200500130fjr">
「でもこれ……壊れてない？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2321);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/200500140mso">
「ああ。ちょっと、事故ってな。
　車輪がとれちまったんだ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_smile");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/23/200500150buu">
「けどな！
　雪の上じゃかえってコレが好都合――って寸法よ！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミリＰa_ショータイム_happy");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/200500160mrp">
「そうか！　スノーボードってわけね！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/200500170fjr">
「でもスキー場じゃないんだし、またどこかにぶつかったらシャレにならない――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200500180nki">
「もちろん、名探偵はお見通しだ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200500190nki">
「渋滞もしてない。邪魔者もいない。
　そんな道が、今日は新しく出来てるんだよ」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/200500200fjr">
「新しく……？　そんな道、あったっけ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200500210nki">
「ああ。今日だけ通れる、特別な道――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/200500220mrp">
「今日だけ通れる――特別な――？
　普通の道じゃない、道ってことは――あ！」

{	St("MR",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/200500230mrp">
「もしかして――神田川？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@80,"bu似鳥_ラッパー_rage");
	Shake("@StNameML/ML*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameML/ML*", 200, @0, @-80, Dxl2, false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200500240nki">
「正解！」

{	St("ML",700, @0,@0,"bu似鳥_背張る_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200500250nki">
「ミヅハに頼んで凍らせてもらった。
　何の邪魔者もない、真っ直ぐな道だ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2322);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_shout");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/23/200500260buu">
「それなら邪魔者もいない！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_shout");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/200500270mso">
「全力で、ぶっ飛ばせるってわけだ！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/200500280fjr">
「ふたりとも、お願い！」

{	St("C",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/200500290fjr">
「あたしの代わりに、ニコちゃんを迎えに行ってあげて！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@100,"buみそa_オラオラ_pride");
	Move("@StNameML/ML*", 300, @0, @-100, Dxl2, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/200500300mso">
「強きを挫き、弱きを助く！
　それがオレたち百野殺駆！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@100,"buブーa_通常_smile");
	Move("@StNameMR/MR*", 300, @0, @-100, Dxl2, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/23/200500310buu">
「ニコちゃんのことは、任せとけッ！！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/200500320fjr">
「……ありがとう！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_オラオラ_pride");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/200500330mso">
「んじゃ、早速――」

{	St("R",700, @0,@0,"buブーa_オラオラ_normal");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/23/200500340buu">
「行ってくるぜ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//おがみ：ＳＥ：ロケボー発射
	Move("@StNameL/L*", 200, @-100, @0, Axl2, false);
	Move("@StNameR/R*", 200, @100, @0, Axl2, false);
	DeleteAllSt(200,true);

	CreateSE("SE01","se特殊_ロケボー");
	MusicStart("SE01",0,1200,0,1000,null,false);


	Wait(1500);

	SetVolumeEX("@xbgm30", 3000, 450, null);

	SetVolumeEX("SE*", 2000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("C",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/200500350mrp">
「……よし！　今度こそ、抜かりないわね」

{	St("C",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/200500360mrp">
「ニコちゃんも迎えに行ったし――
　フウリちゃんも、呼びに行ってる」

//【ミリＰ】
//<voice name="ミリＰ" class="ミリＰ" src="voice/23/200500370mrp">
//「会場の設営は進んでる。
//　雪が積もって、鳥居も真っ黄色に塗り終わった」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/200500380mrp">
「生放送の準備も着々と進んでる……」

{	St("C",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/200500390mrp">
「あとは――似鳥君」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200500400nki">
「ああ。わかってる」

{	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200500410nki">
「オレが、ゆるキャラバンのマスコットを描くだけだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2323);}

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	SnowDropDelete(0);

//◆場所：半田明神_拝殿
	OnBG(10,"bg0607300半田明神_拝殿_布地");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//◆ＳＥ：足音
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("MR",700, @50,@0,"buミヅハ_通常_normal");
	Move("@StNameMR/MR*", 200, @-50, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200500420mzh">
「お……似鳥か」

{	St("MR",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200500430mzh">
「どうじゃ？　わらわの力、見たであろ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_happy");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200500440nki">
「ああ、すごい雪だ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200500450mzh">
「空から舞い落ちるまで、もう少し時間がかかるでな。
　もう５分もすれば、辺りは一面雪景色じゃ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200500460nki">
「神田川も――大丈夫だったか？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_手構え_pride");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200500470mzh">
「ふふふ……ミヅハノメを甘く見るでない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200500480mzh">
「わらわの力を以てすれば、川を凍らせることくらいちょちょいのちょいじゃ！」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200500490mzh">
「それよりも似鳥。
　おぬしこそ、大丈夫なのか？」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200500500mzh">
「これからここで、ますこっとを描くのであろ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200500510nki">
「ああ。
　書き初め用の道具、用意してもらってありがとな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2324);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200500520mzh">
「いや、この程度はどうということもないが――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200500530nki">
「大丈夫。オレはゆるキャラバンの時とは違う」

{	St("ML",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200500540nki">
「今度こそ、マスコットキャラクターを創ってやる」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200500550mzh">
「さあ、その意気じゃ！　期待しておる――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 2000, 0, null);
//おがみ：ＳＥ：走ってくる
	CreateSE("SE01","se動作_走る05_l");
	MusicStart("SE01",0,1200,0,1000,null,true);


	SoundPlay("@xbgm15",1000,450,true);

//	CreateSE("SE11","seガヤ_半田明神01_l");
//	MusicStart("SE11",3000,300,0,1000,null,true);

	DeleteAllSt(200,false);

	Wait(2000);
	SetVolumeEX("SE01", 1000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("C",700, @0,@50,"bu歌門_通常_shock");
	Move("@StNameC/C*", 200, @0, @-50, Dxl2, false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/200500560kms">
「ミヅハ様！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200500570mzh">
「おお、星か。どこに行っておったのじゃ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/200500580kms">
「河原屋双六を、追いかけておりました」

{	St("ML",700, @0,@0,"bu歌門_通常_shout");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/200500590kms">
「緊急事態です。
　アザナエルが、河原屋組に奪われました」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_surprise");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200500600mzh">
「河原屋組に――！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200500610mzh">
「しかしあれは、確か警察に預けられたのであろ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/200500620kms">
「どのような経路を経て河原屋組の手に落ちたのか、細かな経緯はわかりません」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/200500630kms">
「しかし――つい先程河原屋双六は、アザナエルを手に半田明神に現れました」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_surprise");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200500640mzh">
「ここに……双六が、来ていたのか？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/200500650kms">
「はい。沙紅羅様にアザナエルを手渡して、カゴメアソビをさせるため――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2325);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200500660mzh">
「双一の命令で？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/200500670kms">
「いえ。双一親分には内緒という話でした。
　双六が、自分の判断でしたこと――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200500680nki">
「双六と沙紅羅は、確かに普通の仲じゃないみたいだったけど……」

{	St("C",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200500690nki">
「いや、やっぱりおかしいだろ！
　沙紅羅が、カゴメアソビをするはず――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/200500700kms">
「弟が、死んだのです」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_surprise");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200500710mzh">
「死んだ？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_背張る_shout");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200500720nki">
「弟って……大刀刃那か！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200500730mzh">
「ん？　知っておるのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200500740nki">
「沙紅羅、弟に同人誌買うために秋葉原に来たって。
　確か、入院してるとか言ってたけど――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200500750mzh">
「詳しく聞かせてもらおうか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

//	SetVolumeEX("SE*", 1000, 0, null);

//◆演出指示：時間経過
	CreateColorEX("絵色100", 20000, "BLACK");
	Fade("絵色100", 800, 1000, null, true);

{	ClockPass(2326);}
	Wait(1000);

	Fade("絵色100", 800, 0, null, true);
	Wait(300);

//	SoundPlay("@xbgm15",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("C",700, @0,@0,"buミヅハ_ダウナー_pinch");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200500760mzh">
「な……なんという……」

{	St("C",700, @0,@0,"buミヅハ_ダウナー_sad");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200500770mzh">
「沙紅羅は弟のために秋葉原を駆けたというのに……」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200500780mzh">
「あやつのおかげで……ようやくアザナエル封印への目処が立ちつつあるというのに……」

{	St("C",700, @0,@0,"buミヅハ_ダウナー_pinch");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200500790mzh">
「なのに、あやつの弟が……死んだ……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200500800nki">
「……沙紅羅はどうした？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/200500810kms">
「アザナエルを撃たれてはかなわないと、私は慌てて双六の前に飛び出しました」

{	St("MR",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/200500820kms">
「そのまま地下通路を追いかけていったので、沙紅羅様の消息までは……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200500830nki">
「さっきから姿が見えないと思ってたけど、もしかして沙紅羅は病院に――？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/200500840kms">
「随分ショックを受けていたようですから、恐らく――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200500850mzh">
「違う！　沙紅羅は――わらわと約束をした」

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200500860mzh">
「あやつは絶対に、アザナエルを持って帰るはず――！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/200500870kms">
「本当に、信じているのですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200500880nki">
「でもほら、沙紅羅は恵那と一緒に探しに行くって言ってたし。恵那から連絡がないってことは――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200500890mzh">
「沙紅羅と恵那は、きっと、アザナエルを取り戻しに向かっている！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/200500900kms">
「その途中、カゴメアソビで命を絶たれなければ」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミヅハ_ダウナー_sad");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200500910mzh">
「…………」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200500920nki">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	DeleteAllSt(200,true);
	Wait(200);
	St("ML",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200500930mzh">
「のう、星よ――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu歌門_通常_shout");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/200500940kms">
「なりません！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200500950mzh">
「ま、まだわらわはなにも――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu歌門_通常_think");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/200500960kms">
「お見通しです。
　ミヅハ様自身が、アザナエルを撃つというのでしょう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2327);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200500970mzh">
「む……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/200500980kms">
「ミヅハ様。もしあなたがその力を解放すれば、勝負事の神として、間違いなく沙紅羅様の願いを叶えられる」

{	St("MR",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/200500990kms">
「しかし――引き替えとして、あなたは元の姿に戻る機会を失います」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200501000mzh">
「じゃが――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/200501010kms">
「人が死ぬのは運命。
　ミヅハ様が自らを犠牲にする必要はありません」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_ダウナー_sad");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200501020mzh">
「…………」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/200501030kms">
「ミヅハ様。くれぐれも、早まらぬよう」

{	St("MR",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/200501040kms">
「もしも沙紅羅様の願いを叶えるというのなら――」

{	St("MR",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/200501050kms">
「私が、力尽くでもアザナエルを封印して差し上げます」

{	St("MR",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/200501060kms">
「では、失礼」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 2000, 0, null);

	Move("@StNameMR/MR*", 200, @50, @0, Axl2, false);
	DeleteAllSt(200,true);

	Wait(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	St("MR",700, @0,@0,"buミヅハ_ダウナー_sad");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200501070mzh">
「…………」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200501080nki">
「…………」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_ダウナー_sad");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200501090mzh">
「星は……本気じゃな」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200501100nki">
「ああ、本気だと思う」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_ダウナー_sad");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200501110mzh">
「のう、似鳥。
　わらわには……わからぬ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200501120mzh">
「未来の危険に怯え、より多くの幸せという名目の元に、助けられる者を見捨てる」

{	St("MR",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200501130mzh">
「それが、正しい神の姿なのか？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200501140nki">
「たぶん……それが、正しいんだろう」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_ダウナー_sad");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200501150mzh">
「やはり……そうか……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200501160nki">
「けど、そんなのって、ないと思わないか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2328);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200501170mzh">
「似鳥……？」

{	DeleteAllSt(200,false);
	SoundPlay("@xbgm23",0,450,true);
	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200501180nki">
「まだなにも失ってないのに、失う心配ばっかりして、今苦しんでる人のこと見捨てるなんて、変だろ」

{	St("ML",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200501190nki">
「なあミヅハ？
　おまえだって、沙紅羅のこと、助けてやりたいだろ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200501200mzh">
「うむ！　助けてやりたい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200501210mzh">
「例え禁を破り、また１０年の辛抱を強要されたとしても、わらわはこの姿を誇らしく思うであろ！」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200501220mzh">
「わらわは……友達を、救いたい！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200501230nki">
「例え間違ってても、そうするべきだ。そう思う」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200501240mzh">
「似鳥よ、すまんな！
　おぬしの言葉で……わらわも気持ちの整理がついた」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200501250nki">
「あとは……どうやって、星さんの目を誤魔化すかだな」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200501260mzh">
「確かに……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	Wait(500);
/*
//◆音声指示：同時
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200501270nki">
「んん……………………………………………………」

//◆音声指示：同時
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200501280mzh">
「んん……………………………………………………」
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//◆音声指示：同時
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200501270">
「「んん……………………………………………………」」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 1000, 0, null);
	TextBoxDelete(150);

	Wait(1000);

{	ClockPass(2329);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
{	St("MR",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200501290mzh">
「だ……だめじゃ、思い浮かばん！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200501300nki">
「クソッ！　こんなときに名探偵がいれば……」

{
	DeleteAllSt(200,true);}
//◆音声指示：遠くから
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/200501310mrp">
「あー、テステス！　マイクテストでーす！」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/200501320mrp">
「えー、ライブをお待ちの皆さん、夜でもハロォ～！
　ゆるキャラバンから引き続き司会を務めるミリＰよん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
{	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200501330nki">
「あ……あと２０分」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200501340mzh">
「すまぬ似鳥。おぬしには仕事があったな！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200501350nki">
「ああ、そうだな」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/200501360nki">
「悪いけどオレ、こっち先に取りかかるわ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200501370mzh">
「うむ！　そうするがよい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
{	St("MR",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/200501380mzh">
「みんなの注目を集めるますこっと――期待しておるぞ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);
	Move("@StNameMR/MR*", 400, @50, @0, Axl1, false);
	DeleteAllSt(400,true);

	Wait(500);


	EndScene();
}
