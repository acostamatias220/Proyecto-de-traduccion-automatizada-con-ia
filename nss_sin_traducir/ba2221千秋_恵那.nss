
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ba2221千秋_恵那.nss_MAIN
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

	if($CharaName=="千秋"){
		$GameName = "ba2230千秋_恵那.nss";
	}else if($CharaName=="恵那"){
		$GameName = "ba2230千秋_恵那.nss";
	}else{
		$GameName = "ba2230千秋_恵那.nss";
	}

}

scene ba2221千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="430">
////////////header////////////
//file name "ba2221千秋_恵那.nss"
//title "今為すべきことを"
//previous "ba2220千秋_恵那.nss"

////////////footer////////////
//next "千秋" "ba2230千秋_恵那.nss"
//next "恵那" "ba2230千秋_恵那.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);


{	ClockPass(2221);}


//	CreateTextureEX("絵背景２", 2000, 0, 0, "cg/ev/m/ev2220千秋恵那押し倒しa_m.jpg");
//	Fade("絵背景２", 0, 1000, null, false);

	OnBG(10,"bg1601100小碓家_自室_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 200, null, true);


//◆場所：小碓家_自室

//◆ＳＥ：テレビつく
//	SetVolumeEX("@xbgm*", 300, 0, null);
	CreateSE("SE01","seメカ_テレビ_テレビ点ける");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(300);

//	Delete("絵背景*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
//◆音声指示：テレビ越し
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/210100010nko">
「せいこう……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
　体勢を整えたその瞬間、肘にリモコンが挟まる。

{	St("MR",700, @-50,@0,"fu千秋_通常_fear");
	Move("@StNameMR/MR*", 300, @50, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/210100020kit">
「あ、ごめ――」

{	DeleteAllSt(200,false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/210100030fje">
「待って」

{	SetVolumeEX("@xbgm*", 2000, 0, null);
//St("ML",700, @-10,@60,"bu恵那_哀愁_pinch");
//	Move("@StNameML/ML*", 200, @10, @-60, Dxl1, false);
//	FadeSt("ML",200,true);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/210100040fje">
「今のテレビ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

	TextBoxDelete(150);

	CreateTextureEX("絵背景１", 12, -200, -140, "cg/bg/bg1601100小碓家_自室_通常.jpg");
	Zoom("絵背景１", 0, 1500, 1500, null, true);
	Move("絵背景１", 1000, @-50, @0, Dxl2, false);
	Fade("絵背景１", 1000, 1000, null, true);

//あきゅん「修正指示：テレビ画面演出でノーコ出してください」
//テレビ画面演出を追加しました(11/19)

	CreateTextureEX("絵結果100", 13, Center, Middle, "cg/bg/bg0303100あにのあな_屋上_通常.jpg");
	CreateTextureEXadd("絵結果200", 10010, Center, Middle, "cg/ef/efテレビ画面用効果フィルター.jpg");

//	Zoom("絵結果100", 0, 1500, 1500, null, true);

	St("C",700, @0,@0,"buノーコa_幽霊_smile");
	FadeSt("C",300,false);
	Fade("絵結果100", 300, 1000, null, false);
	Fade("絵結果200", 300, 300, null, true);

	Fade("絵背景１", 0, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆音声指示：テレビ越し
//【ノーコ】

<voice name="ノーコ" class="ノーコ" src="voice/ba22/210100050nko">
「カゴメアソビが……せいこう」

//◆音声指示：テレビ越し
//【ノーコ】
{	St("C",700, @0,@0,"buノーコa_通常_smile");
	FadeSt("C",200,true);}
<voice name="ノーコ" class="ノーコ" src="voice/ba22/210100060nko">
「これでにとりは、わたしをすきに……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

/*
//◆音声指示：テレビ越し
{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/210100070nko">
「にとり……」

//◆音声指示：テレビ越し
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/210100080nko">
「もう、くるしまなくてもいい――」
*/

	TextBoxDelete(150);

	DeleteAllSt(300,false);
	Fade("@絵結果*", 300, 0, null, true);
	Delete("@絵結果*");

	CreateSE("SE01","se動作_布落とす");
	MusicStart("SE01",0,1200,0,1000,null,false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("ML",700, @0,@100,"fu恵那_哀愁_pinch");
	Move("@StNameML/ML*", 400, @0, @-100, Dxl1, false);
	FadeSt("ML",400,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/210100090fje">
「アザナエル……」

{	St("C",700, @0,@0,"fu恵那_哀愁_worry");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/210100100fje">
「カゴメアソビ、無事に終わったんだ」

{	St("ML",700, @0,@0,"fu恵那_一休_hard");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/210100110fje">
「だったら――ゴメン、千秋」

{	St("ML",700, @0,@0,"fu恵那_一休_think");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/210100120fje">
「私やっぱり、今こうしてる場合じゃ――」

//◆音声指示：すごく悲しそうな顔
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/210100130kit">
「――――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2222);}


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu恵那_哀愁_fear");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/210100140fje">
「あ……ごめん」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_朗らか_shy");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/210100150kit">
「え、いや、そうじゃない！」

{	St("MR",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/210100160kit">
「だよな！
　アザナエルをなんとかしないと、気持ち悪いし！」


{	St("MR",700, @0,@0,"bu千秋_朗らか_pride");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/210100170kit">
「行こうぜ、恵那！」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/210100180fje">
「でも、身体――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_朗らか_pride");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/210100190kit">
「ダイジョブだって！
　ホラ、こんなぴんぴんしてるし！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/210100200fje">
「千秋……」

{	St("ML",700, @0,@0,"bu恵那_感動_happy");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/210100210fje">
「アリガト」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


{	ClockPass(2223);}


//◆場所：小碓家_正面

	SoundPlay("@xbgm03",0,450,true);

	SceneOut(5000, 300, "slide_01_01_0");

	Wait(500);

	DeleteAllSt(0,false);
	OnBG(10,"bg1601100小碓家_正面_通常");
	FadeBG(0,true);

	SceneIn(300, "slide_01_01_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]

{	St("MR",700, @-80,@0,"bu恵那_一休_hard");
	Move("@StNameMR/MR*", 200, @80, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/210100220fje">
「大晦日だし、道路も混乱してる。走った方が早いわね」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_sigh");
	Move("@StNameML/ML*", 200, @80, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/210100230kit">
「今日は休むヒマねぇなあ……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/210100240fje">
「ほら、行くわよ！」

{	Move("@StNameMR/MR*", 200, @80, @0, Axl1, false);
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/210100250kit">
「おう！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameML/ML*", 200, @80, @0, Axl1, false);
	DeleteAllSt(200,true);

	TextBoxDelete(150);

	CreateSE("SEL01","se動作_集団走る");
	MusicStart("SEL01",0,700,0,1000,null,true);

	SceneOut(20000, 300, "slide_01_01_0");

//◆時間：ジャンプ
{	ClockPass(2226);}
	Wait(1000);

//◆場所：ＵＰ＋_屋外セット_炎上

	DeleteAllSt(0,false);
	OnBG(10,"bg1201200ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

	Wait(500);

	SceneIn(300, "slide_01_01_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]

{	St("ML",700, @-50,@0,"bu千秋_朗らか_normal");
	Move("@StNameML/ML*", 200, @50, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/210100260kit">
「で、どこに向かってるんだ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/210100270fje">
「あにのあなの最上階よ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/210100280kit">
「あ。言われてみれば、そんな気もするな……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/210100290fje">
「問題は、彼女たちはあそこに留まってるか――」

{	SetVolumeEX("SE*", 300, 0, null);
	St("MR",700, @0,@0,"bu恵那_一休_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/210100300fje">
「いや、待って！
　中継中なら、ワンセグでゆるキャラバンが……」

　恵那は慌てて、ポケットから携帯電話を取りだした。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

	TextBoxDelete(150);


//◆演出指示：テレビ内




//◆場所：秋葉原_中央通り

//	OnBG(10,"bg0103200秋葉原_中央通り_閉店");
//	FadeBG(0,true);

	TextBoxDelete(150);

	CreatePlainSP("絵板写", 5000);
	Wait(16);
	CreateTextureEX("絵結果100", 1000, Center, Middle, "cg/bg/bg0103200秋葉原_中央通り_閉店.jpg");
	CreateTextureEXadd("絵結果200", 1110, Center, Middle, "cg/ef/efテレビ画面用効果フィルター.jpg");
	DeleteAllSt(0,true);

	Zoom("絵結果100", 0, 1500, 1500, null, true);

	Fade("絵結果100", 0, 1000, null, false);
	Fade("絵結果200", 0, 300, null, true);
	Wait(16);
	FadeDelete("絵板写", 300, null, true);

	St("ML",1000, @-50,@0,"bu沙紅羅_後ろ向き_shout");
	Move("@StNameML/ML*", 300, @50, @0, Dxl2, false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/210100310skr">
「こっちだ！」

{
	DeleteAllSt(200,false);
	St("MR",1000, @0,@0,"buミリＰb_ショータイム_pinch");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/210100320mrp">
「ええいっ！　あっちこっち！
　行ったり来たり！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指示：テレビ終わり

	TextBoxDelete(150);

	CreatePlainSP("絵板写", 5000);

	DeleteAllSt(0,false);
	Fade("絵結果100", 0, 0, null, false);
	Fade("絵結果200", 0, 0, null, false);
	Wait(16);
	FadeDelete("絵板写", 300, null, true);

{	ClockPass(2227);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/210100330fje">
「やっぱり移動してる――！？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/210100340kit">
「どっちに？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/210100350fje">
「この方向は……スパコン館？」

{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/210100360fje">
「ノーコさんも絵描きも、変なヤンキーもいるわ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_驚天_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/210100370kit">
「げ……師匠もいるのか」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/210100380fje">
「アザナエルはあそこね。急ぎ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2228);}


	DeleteAllSt(200,false);

//	TextBoxDelete(150);


	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg1201200ＵＰ＋_屋外セット_炎上.jpg");
	Fade("絵背景100", 0, 1000, null, false);
//	Shake("絵背景100", 3000, 0, 1, 0, 0, 500, AxlDxl, false);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100a]
//◆音声指示：遠くから
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/210100390tsr">
「ぐおおおおおおおおお！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
*/

	CreateVOICE("その他男声","ba22/210100390tsr");
	MusicStart("その他男声",0,500,0,1000,null,false);

	$SETime = RemainTime("その他男声")-300;
	WaitKey($SETime);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100b]
{	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/210100400kit">
「なんだ、今の鳴き声？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/210100410fje">
「わかんないけど……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/210100420fje">
「すごく、嫌な予感がするわ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/210100430kit">
「……だな。行ってみよう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SceneOut(5000, 300, "slide_01_01_1");
	OnBG(10,"bg0103200秋葉原_中央通り_閉店");
	FadeBG(0,true);
	DeleteAllSt(0,true);
	Wait(500);

	Delete("絵背景*");
	Delete("絵結果*");
	SceneIn(300, "slide_01_01_0");

	EndScene();
}
//next "千秋" "ba2230千秋_恵那.nss"
//next "恵那" "ba2230千秋_恵那.nss"
