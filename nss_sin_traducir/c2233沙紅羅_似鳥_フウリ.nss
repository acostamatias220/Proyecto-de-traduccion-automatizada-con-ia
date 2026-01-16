
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene c2233沙紅羅_似鳥_フウリ.nss_MAIN
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

	if($CharaName=="沙紅羅"||$CharaName=="似鳥"){
		$GameName="c2235沙紅羅_似鳥.nss";
	}else if($CharaName=="フウリ"){
		$GameName="2235フウリ.nss";
	}

}

scene c2233沙紅羅_似鳥_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="460">
////////////header////////////
//file name "c2233沙紅羅_似鳥_フウリ.nss"
//title "届かない夢"
//previous "2230フウリ.nss"
//previous "c2230沙紅羅_似鳥.nss"

////////////footer////////////
//next "沙紅羅" "c2235沙紅羅_似鳥.nss"
//next "似鳥" "c2235沙紅羅_似鳥.nss"
//next "フウリ" "2235フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintGO("上背景", 30000);
	Request("@SE01", UnLock);

{	ClockPass(2233);}

//◆場所：あにのあな_屋上
	OnBG(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 300, null, true);

	CreateSE("階段のぼる_01", "se動作_階段のぼる");
	CreateSE("階段のぼる_02", "se動作_階段のぼる");
	SoundEffect("階段のぼる_02","AUDITORIUM");

	MusicStart("階段のぼる_01", 1000, 300, 0, 1000, null, false);
	MusicStart("階段のぼる_02", 1000, 500, 0, 1000, null, false);

	Wait(2000);

	SetVolume("階段のぼる_*", 200, 0, null);

//◆ＳＥ：バタン！　扉開く
	CreateSE("扉開ける", "se動作_屋上ドア開ける");
	MusicStart("扉開ける", 0, 700, 0, 1000, null, false);

	SetVolume("@SE01", 2000, 0, null);

{	St("C",700, @0,@0,"bu平次_御用だ_shout");
	FadeSt("C",200,false);
	Zoom("@StNameC/C*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameC/C*", 100, 1000, 1000, Axl2, true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/c22/330100010wff">
「御用だッ！！」

{	CreateSE("SE10", "se環境_風_l");
	MusicStart("SE10", 2000, 300, 0, 1000, null, true);
	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_shout");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @-200, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/330100020skr">
「げ！　モジャモジャ！　隠れ――」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu平次_御用だ_angry");
	FadeSt("C",200,true);}
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/c22/330100030wff">
「鉄砲はどこだ！？
　アザナエルをいただきに来たッ！」

{	St("C",700, @0,@0,"bu平次_御用だ_pain");
	FadeSt("C",200,true);}
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/c22/330100040wff">
「どこだ！？　どこ――どこ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

{	St("ML",700, @-60,@0,"bu似鳥_通常_normal");
	Move("@StNameML/ML*", 300, @60, @0, DxlAuto, false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/330100050nki">
「これ――」

{	St("C",700, @0,@0,"bu平次_落ち込み_sad");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/c22/330100060wff">
「ん？　なんか暗い……？」

{	St("ML",700, @0,@0,"bu似鳥_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/330100070nki">
「持ってってください」

{	St("C",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/c22/330100080wff">
「え……お、おう！」

{	St("C",700, @0,@0,"bu平次_通常_normal");
	FadeSt("C",200,true);}
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/c22/330100090wff">
「それじゃありがたく、いただいておくぜ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
{	St("ML",700, @0,@0,"bu似鳥_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/330100100nki">
「これで、アザナエルは、封印されるんですね？」

{	St("C",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/c22/330100110wff">
「あ、ああ。そうだな」

{	St("ML",700, @0,@0,"bu似鳥_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/330100120nki">
「……お願いします」

{	St("C",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/c22/330100130wff">
「なあ、ところでさっきまで、ここにノーコが――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE10", 1000, 0, null);

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	SoundPlay("@xbgm25", 1500, 450, true);

	CreateTextureEX("大きい背景", 100, 388, 91, "cg/bg/bg0303100あにのあな_屋上_通常.jpg");
	Zoom("大きい背景", 0, 2000, 2000, null, true);
	SetShade("大きい背景", MEDIUM);
	St("ML",1100, @-140,@0,"fu似鳥_通常_pinch");

	Move("@大きい背景", 1000, @40, @0, Dxl1, false);
	Move("@StNameML/ML*", 1000, @40, @0, Dxl1, false);
	Fade("大きい背景", 300, 1000, null, false);
	FadeSt("ML",300,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/330100140nki">
「絶対に、封印してください」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/330100150nki">
「もう二度と――アザナエルで、悲劇が起きないように」

{	St("ML",1100, @-100,@0,"fu似鳥_通常_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/330100160nki">
「あやふやな夢に……心を奪われるのが、悪いんです。
　叶いもしない夢を、見てちゃダメなんです」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/330100170nki">
「ちゃんと、地に足を着いて、現実を見て――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	CreatePlainSP("ぱぱっと", 2000);

	DeleteAllSt(0,true);
	Fade("大きい背景",0,0,null,true);

	St("C",700, @0,@0,"bu平次_通常_hard");
	FadeSt("C",0,true);

	FadeDelete("ぱぱっと", 200, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//★inc櫻井　ざっくり切られるのでざっくりBGM消す。
//★inc櫻井　再度風SE
//cono：演出変更しました
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/c22/330100180wff">
「現実が厳しすぎたから、逃げたんじゃないのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	CreatePlainSP("ぱぱっと", 2000);

	DeleteAllSt(0,true);
	Fade("大きい背景",0,1000,null,true);
	St("ML",1000, @-100,@0,"fu似鳥_通常_normal");
	FadeSt("ML",0,true);
	FadeDelete("ぱぱっと", 200, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/330100190nki">
「え……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreatePlainSP("ぱぱっと", 2000);

	DeleteAllSt(0,true);
	Fade("大きい背景",0,0,null,true);

	St("C",700, @0,@0,"bu平次_通常_hard");
	FadeSt("C",0,true);

	FadeDelete("ぱぱっと", 200, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/c22/330100200wff">
「どうしても叶えたくて、でも、自分の力では届かない。
　そんな夢を叶えるために、アザナエルを使うのは？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreatePlainSP("ぱぱっと", 2000);

	DeleteAllSt(0,true);
	Fade("大きい背景",0,1000,null,true);

	St("ML",1000, @0,@0,"fu似鳥_通常_worry");
	FadeSt("ML",0,true);

	FadeDelete("ぱぱっと", 200, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/330100210nki">
「届かない……夢……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreatePlainSP("ぱぱっと", 2000);

	DeleteAllSt(0,true);
	Fade("大きい背景",0,0,null,true);

	St("C",700, @0,@0,"bu平次_通常_hard");
	FadeSt("C",0,true);

	FadeDelete("ぱぱっと", 200, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/c22/330100220wff">
「アザナエルは、そんな夢を叶えたんじゃないのか？
　そのために、アザナエルがあるんじゃないのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreatePlainSP("ぱぱっと", 2000);

	DeleteAllSt(0,true);
	Fade("大きい背景",0,1000,null,true);

	St("ML",1000, @-100,@0,"fu似鳥_通常_sad");
	FadeSt("ML",0,true);

	FadeDelete("ぱぱっと", 200, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/330100230nki">
「それは――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	SetVolume("@xbgm*", 1000, 0, null);

//	TextBoxDelete(150);
	FadeDelete("大きい背景",200,null,false);
	DeleteSt("ML",200,true);

//	CreateSE("SE01", "se環境_風_l");
//	MusicStart("SE01", 0, 700, 0, 1000, null, true);


	St("C",700, @-100,@0,"bu沙紅羅_通常_shout");
	CreateSE("一歩", "se動作_一歩");
	MusicStart("一歩", 0, 1000, 0, 1000, null,false);
	Move("@StNameC/C*", 200, @+100, @0, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/330100240skr">
「バッキャロ――――ッ！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/330100250skr">
「かなわねぇのは夢じゃねぇ！
　そんなのただのワガママだ！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/330100260skr">
「夢ってのは、自分の力で叶えるものを言うんだよ！
　じゃなきゃ、意味なんてあるはずねぇだろ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2234);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/330100270skr">
「まずは、自分の力を認めるところから――」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/c22/330100280wff">
「でも……それは、辛え」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/330100290skr">
「人間は本当に辛い時、よりどころにするものを探す」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/330100300skr">
「本当に辛い時、泣いて泣いて死んでしまいたくなったとき、アタシを救ってくれたのは――」

{	Move("@StNameC/C*", 200, @-40, @0, null, false);
	DeleteAllSt(200,true);
	St("C",700, @-40,@0,"bu沙紅羅_後ろ向き_shout");
	Move("@StNameC/C*", 200, @40, @0, null, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/330100310skr">
「こいつだった」

{	DeleteAllSt(200,true);}
　「百野殺駆」――沙紅羅の背中の刺繍が夜の光に輝く。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	SetVolume("SE*", 1000, 0, null);

	TextBoxDelete(150);

//	SoundPlay("@xbgm25",1000,450,true);

	CreateColorEX("絵色白", 20000, WHITE);
	Fade("絵色白", 300, 1000, null, true);

	ClockDelete(0,true);

	CreateTextureSP("道路", 500, @0, @0, "cg/ef/efバイク走行表現背景.jpg");
	CreateEffect("セピア", 1000, @0, @0, 1024, 576, "Sepia");

	Fade("絵色白", 300, 0, null, true);

	St("C",700, @0,@100,"bu沙紅羅_通常_normal");
	Move("@StNameC/C*", 300, @0, @-50, Dxl1, false);
	FadeSt("C",300,true);

	St("R",600, @150,@0,"buブーa_オラオラ_hard");
	St("L",500, @-150,@0,"buみそa_オラオラ_hard");
	Move("@StNameR/R*", 300, @-50, @0, Dxl1, false);
	Move("@StNameL/L*", 300, @50, @0, Dxl1, false);
	FadeSt("R",300,false);
	FadeSt("L",300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/330100320skr">
「たった３人の暴走集団」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/330100330skr">
「最初はただの逃げ場。どうしようもないヤツの吹きだまりくらいにしか考えてなかった」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/330100340skr">
「けど……本当に辛い時、本当に大事なものがわかる」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/330100350skr">
「誰にだって、きっとあるはずだ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/330100360skr">
「自分なりの、『百野殺駆』がな」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/330100370skr">
「そいつさえ知ってりゃ、アザナエルなんていらねぇ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/330100380skr">
「いらねぇ……はずなんだよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Fade("絵色白", 300, 1000, null, true);

{	ClockPass(2234);}

	DeleteAllSt(0,false);
	Delete("セピア");
	Delete("道路");
	Fade("絵色白", 300, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("C",700, @0,@0,"bu平次_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/c22/330100390wff">
「……はっ」

{	St("C",700, @0,@0,"bu平次_落ち込み_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/c22/330100400wff">
「故郷を捨てたオレには、よりどころなんて――」

{	SetVolume("@xbgm*", 2000, 0, null);
	St("C",700, @0,@40,"bu沙紅羅_頭かき_shock");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 200, @0, @-40, Dxl1, false);
	FadeSt("C",200,true);
	CreateSE("SE01", "se環境_風_l");
	MusicStart("SE01", 0, 700, 0, 1000, null, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/330100410skr">
「ってしまった！
　思わず前に出ちまった！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/330100420skr">
「クソ！　こうなったら――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆演出指定：木刀を構えて
	CreateSE("SE01a","se戦闘_風切り音01");
	CreateSE("SE01b","se戦闘_風切り音02");
	CreateSE("SE01c","se戦闘_風切り音03");
	CreateSE("SE01d","se戦闘_風切り音04");
	CreateSE("SE01e","se戦闘_風切り音05");

	DeleteSt("C",200,true);

	St("C",700, @0,@0,"bu沙紅羅_木刀_rage");
		CreateSE("木刀", "se戦闘_木刀_構える");
		MusicStart("木刀", 0, 700, 0, 1000, null,false);
	FadeSt("C",200,false);
	MusicStart("SE01a",0,700,0,1000,null,false);
	Move("@StNameC/C*", 100, @0, @50, Axl2, true);
	Move("@StNameC/C*", 100, @0, @-50, Dxl2, true);
	MusicStart("SE01b",0,700,0,1000,null,false);
	Move("@StNameC/C*", 100, @0, @50, Axl2, true);
	Move("@StNameC/C*", 100, @0, @-50, Dxl2, true);
	MusicStart("SE01c",0,700,0,1000,null,false);
	Move("@StNameC/C*", 100, @0, @50, Axl2, true);
	Move("@StNameC/C*", 100, @0, @-50, Dxl2, true);

	MusicStart("SE01d",0,700,0,1000,null,false);
	Shake("@StNameC/C*", 200, 5, 0, 0, 0, 1000, null, false);
	Move("@StNameC/C*", 100, @-50, @50, Dxl2, true);
	MusicStart("SE01e",0,700,0,1000,null,false);
	Move("@StNameC/C*", 100, @100, @0, Dxl2, true);
	Move("@StNameC/C*", 100, @-50, @-50, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/330100430skr">
「ふ！　は！　ほ！
　おっしゃー！　やるならやってやんぞコラー！」

{	St("MR",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/c22/330100440wff">
「どうした嬢ちゃん。
　そんな張り切って」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
{	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/330100450skr">
「へ？　見逃してくれんのか？」

{	St("MR",700, @0,@0,"bu平次_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/c22/330100460wff">
「……へんな奴め」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：バタン！
	CreateSE("扉開ける", "se動作_屋上ドア開ける");
	MusicStart("扉開ける", 0, 700, 0, 1000, null, false);

	Move("@StNameMR/MR*", 300, @150, @0, null, false);
	DeleteAllSt(200,true);

	Wait(1000);

//	TextBoxDelete(150);

	EndScene();
}
