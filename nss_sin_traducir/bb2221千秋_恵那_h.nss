
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene bb2221千秋_恵那_h.nss_MAIN
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
	$GameName = "bb2400千秋_恵那.nss";//★エンディングへ（bb）

	//★リコレクション用★★★★★★★★★★★★★★★
	ReConquest();
	#bb2221千秋_恵那_h=true;
	if($PLACE_reco){
		RecoOut();
	}
}

scene bb2221千秋_恵那_h.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="4200">
////////////header////////////
//file name "bb2220千秋_恵那_h.nss"
//title "せめて、オトコノコらしく……"
//previous "ba2220千秋_恵那.nss"

////////////footer////////////
//next "bb2400千秋_恵那.nss"


////////////body////////////


//============================================
//★リコレクション用★★★★★★★★★★★★★★★
if(!$PLACE_reco){
//============================================

//■再定義定型文
	PrintBG("上背景", 30000);

	ClockTime(2221);
	ClockDelete(0,true);


//◆場所：小碓家_自室

	SoundPlay("@xbgm29",0,700,true);

	OnBG(10,"bg1601100小碓家_自室_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 200, null, true);

//	FadeDelete("上背景", 0, null, true);


//◆ＥＶ："ev/ev2220千秋恵那押し倒し.txt" 差分Ａ

//◆ＳＥ：テレビつく
	CreateSE("TV", "seメカ_テレビ_テレビ点ける");
	MusicStart("TV", 0, 700, 0, 1000, null, false);


//◆音声指示：テレビ越し

//あきゅん「修正指示：このエロシーン、全体的に甘いゆるりとしたエロに。なんか童貞ががっついてるみたいで忙しい印象を受けた。」
//あきゅん「修正指示：カット演出はエロにそぐわないので多用しない」


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/bb22/210100010mrp">
『――を映しちゃ……』

　体勢を整えたその瞬間、肘にリモコンが挟まる。

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100020kit">
「あ、ごめ――」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100030fje">
「待って」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100040fje">
「今のテレビ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	CreateTextureEXadd("絵テレビ効果", 50, Center, Middle, "cg/ef/efテレビ画面用効果フィルター.jpg");
	CreateTextureEX("絵しばらく", 45, 0, 0, "cg/ef/ef_bg_終了コント.jpg");
	Fade("絵テレビ効果", 300, 1000, null, false);
	Fade("絵しばらく", 300, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020a]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100050fje">
「……しばらく、お待ちください？」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100060fje">
「いや、でも確かに」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100070kit">
「恵那！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	CreatePlainSP("揺用", 55);
	CreateColorSP("絵色100", 40, "BLACK");

	Delete("絵しばらく");
	Delete("絵テレビ効果");

//◆ＳＥ：テレビ消す
	CreateSE("TV02", "seメカ_テレビ_テレビ消す");
	MusicStart("TV02", 0, 700, 0, 1000, null, false);

	Zoom("揺用", 100, 1000, 5, Dxl1, true);
	Zoom("揺用", 100, 0, 2, null, true);
	Delete("揺用");

	Wait(300);
	CreateTextureEX("絵100", 2000, @0, @0, "cg/ev/ev2220千秋恵那押し倒しa.jpg");
	Fade("絵100", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020b]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100080fje">
「千秋……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//============================================
//★リコレクション用★★★★★★★★★★★★★★★
}else{
	ClockTime(2221);

	CreateTextureEX("絵100", 2000, @0, @0, "cg/ev/ev2220千秋恵那押し倒しa.jpg");
	Fade("絵100", 0, 1000, null, true);

	SoundPlay("@xbgm29",0,700,true);

	//リコ背景抹消
	RecoIn();
}
//========================================================


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100090kit">
「謎も、事件も、全部いらない」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100100kit">
「恵那が欲しい！」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100110fje">
「――千秋」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100120fje">
「カッコはそんななのにさ。
　こういうときには、ちゃんと男の子なんだね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2222);


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100130kit">
「ちゃ、茶化すなよ！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100140fje">
「……うん、いいよ」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100150fje">
「私のはじめて、千秋にあげる」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	TextBoxDelete(150);
//◆ＥＶ："ev/ev2220千秋恵那押し倒し.txt" 差分Ｂ

	CreateSE("SE01","se動作_衣擦れ");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵200", 2010, @0, @0, "cg/ev/ev2220千秋恵那押し倒しb.jpg");
	Fade("絵200", 300, 1000, null, true);
	Delete("絵100");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　恵那が静かに、瞳を閉じる。

{	CreateTextureEX("絵200_l", 2100, @0, @0, "cg/ev/l/ev2220千秋恵那押し倒しb_l.jpg");
	Request("絵200_l", Smoothing);
	Fade("絵200_l", 300, 1000, null, true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100160kit">
「…………」

//あきゅん「修正指示：いきなり股間みるのはちょっと……、もっと雰囲気重視の甘いエロシーンにして下さい」
//★inc櫻井　修正　キスしようと顔を近づける
{	Zoom("絵200_l", 1000, 1500, 1500, Dxl1, false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100170fje">
「ん…………」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100180kit">
「…………」


//★inc櫻井　恥ずかしくて目をそらしたら胸があった。そして「ゴクリ」
{	Move("絵200_l", 800, @-350, @-200, Dxl3, true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100190fje">
「んん…………」


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100200kit">
「…………ゴクリ」





</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指示：目開け

	TextBoxDelete(150);

	CreateTextureEX("絵300_l", 2250, @-350, @-200, "cg/ev/l/ev2220千秋恵那押し倒しc_l.jpg");
	Request("絵300_l", Smoothing);
	Zoom("絵300_l", 0, 1500, 1500, Dxl1, true);
	Fade("絵300_l", 300, 1000, null, true);
	Move("絵300_l", 800, @450, @250, Dxl3, false);
	Delete("絵200_l");
	
//★inc櫻井　下に縮小絵を用意しておく。

	CreateTextureSP("絵300", 2200, @0, @0, "cg/ev/ev2220千秋恵那押し倒しc.jpg");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100210fje">
「ゴクリじゃないでしょっ！　もう！」


{	FadeDelete("絵300_l",300,null,false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100220fje">
「さっきまで、男らしかったのに……急にヘタレて！」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100230kit">
「へ、ヘタレなんかじゃない！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100240fje">
「ホントに？」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100250kit">
「もっかい！　もっかい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100260fje">
「うん……それじゃ……」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100270fje">
「…………」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指示：キス

	CreateTextureEX("絵400_l", 2350, @0, @0, "cg/ev/l/ev2220千秋恵那押し倒しb_l.jpg");
	Fade("絵400_l", 300, 1000, null, true);
	Delete("絵300");
	CreatePlainSP("揺用", 2370);
	Request("揺用", Smoothing);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100280kit">
「い、行くぞ！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100290fje">
「……うん」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100300kit">
「とう！」



//◆ＳＥ：ゴン！
//あきゅん「修正指示：ギャグなんでズームとかしてください」
//★inc櫻井　修正
{	Zoom("揺用", 300, 1900, 1900, Dxl1, false);
	Shake("揺用", 300, 15, 15, 0, 0, 300, Dxl1, false);

	CreateSE("SE01", "se擬音_ギャグ_頭打つ");
	MusicStart("SE01", 0, 1200, 0, 1000, null, false);
	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef034_精神汚染.jpg", false);
}



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100310kit">
「ぐっ！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100320fje">
「んっ！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2223);

//★inc櫻井　顔をはなす。
	Zoom("揺用", 300, 1000, 1000, Dxl1, false);
	TextBoxDelete(150);

//◆ＥＶ："ev/ev2220千秋恵那押し倒し.txt" 差分Ｃ
	CreateTextureEX("絵500_l", 2550, @0, @0, "cg/ev/l/ev2220千秋恵那押し倒しc_l.jpg");
	Fade("絵500_l", 300, 1000, null, true);
	Delete("揺用");
	Delete("絵400_l");

//★inc櫻井　下に縮小絵を用意しておく
	CreateTextureSP("絵500", 2500, @0, @0, "cg/ev/ev2220千秋恵那押し倒しc.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100330kit">
「いた、いたたたたた……」


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100340fje">
「もう、なんなのよ！」


　歯がぶつかり、ふたりが慌てて顔を離す。

{	FadeDelete("絵500_l",300,null,false);}

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100350fje">
「もっとよく考えなさいこのバカチビ！」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100360kit">
「な、なにを――！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100370fje">
「私だって、ドキドキしてるんだから」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100380fje">
「だから、お願い……ちゃんと、優しくして……」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100390kit">
「…………」


　急にしおらしくなった恵那を目の前にして、千秋は一度、大きく息をつく。



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100400kit">
「恵那」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100410fje">
「なに、千秋」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100420kit">
「好きだよ……ん」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);

	CreateTextureEX("絵600_l", 2650, @0, @0, "cg/ev/l/ev2220千秋恵那押し倒しb_l.jpg");
	Fade("絵600_l", 300, 1000, null, true);
	Delete("絵500*");
	CreateTextureSP("絵600", 2600, @0, @0, "cg/ev/ev2220千秋恵那押し倒しb.jpg");
	CreateTextureSP("絵500", 2550, @0, @0, "cg/ev/ev2220千秋恵那押し倒しc.jpg");
	Request("絵600_l", Smoothing);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100430fje">
「ん――んん――ん――」


　ふたりの唇が、重なる。


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100440kit">
「んちゅ――ん――ん――」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100450fje">
「はん――んっ、んん――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	FadeDelete("絵600_l",300,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100460fje">
「私も――んちゅ――ん――
　千秋のこと――好きなんだから――」




//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100470fje">
「ちゅ――だから、ちゃんと――んちゅ――幸せにして」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100480kit">
「恵那――ちゅ――」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100490fje">
「ぁ……んちゅ、ん――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　キスと共に千秋の指がぎこちなく、恵那に触れ……

//★inc櫻井　胸に触ろうとするが触れない。
{	Zoom("絵600", 1000, 1500, 1500, Dxl1, true);
	Zoom("絵600", 300, 1000, 1000, Dxl1, true);}
//あきゅん「修正指示：恵那に触れられない臆病な感じを演出して下さい」
//★inc櫻井　修正

　触れ……

//★inc櫻井　別のところに触れようとするが触れない。
{	Move("絵600", 1000, @200, @150, Dxl1, false);
	Zoom("絵600", 1000, 1500, 1500, Dxl1, true);
	Move("絵600", 300, @-200, @-150, Dxl1, false);
	Zoom("絵600", 300, 1000, 1000, Dxl1, true);}

　触れ…………


{	FadeDelete("絵600",300,null,false);}

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100500fje">
「ねえ、まだ……？」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100510kit">
「え、でも……」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100520fje">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2224);

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100530fje">
「もう！　やっぱりヘタレなんだから！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100540fje">
「だったらもう――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



//◆ＥＶ："ev/ev2220千秋恵那コックコックこんにちわ.txt" 差分Ａ

//★inc櫻井　「EV」はCGが完全に切り替わるときに使用しています。「Delete("絵*");」を実行するためです。

	CreateTextureEX("EV02", 3050, @-650, @-0, "cg/ev/l/ev2220千秋恵那コックコックこんにちわa_l.jpg");
	Move("EV02", 3000, @0, @-350, null, false);

	Fade("EV02", 1000, 1000, null, true);
	Delete("絵*");
	CreateTextureSP("絵700", 3000, @0, @0, "cg/ev/ev2220千秋恵那コックコックこんにちわa.jpg");
	FadeDelete("EV02",500,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100550fje">
「私の方から、攻めちゃうもんね！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100560kit">
「な……ちょっと！　急に――やめ――」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100570fje">
「ん？　見た目は女の子だけど」

{	CreateTextureEX("絵700?l", 3050, @-550, @-450, "cg/ev/l/ev2220千秋恵那コックコックこんにちわa_l.jpg");
	Fade("絵700_l", 500, 1000, null, false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100580fje">
「なんかここ、持ち上がってる……まさか……」



//◆演出指示：ぱららー！
//★ inc櫻井　特殊演出は省いています。
{	CreateSE("仮", "se擬音_恵那閃く");
	MusicStart("仮", 0, 1000, 0, 1000, null,false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100590fje">
「コレは事件！？」


{	FadeDelete("絵700_l",300,null,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100600kit">
「べ、別に事件じゃないし！　普通だし！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100610fje">
「えー？　でも、女の子にこんなのはついてない――」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100620kit">
「男の子です！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100630fje">
「ふぅん。じゃ、その証拠見せてもらおっかなぁ」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100640fje">
「ほら、スカート上げて」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100650kit">
「お、オレが！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100660fje">
「そ。男の子なら、その証拠見せてくれないとねえ……」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100670kit">
「うう……う……」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2225);


	TextBoxDelete(150);

	CreateSE("SE02","se動作_衣擦れ");
	MusicStart("SE02",0,700,0,1000,null,false);
//◆ＥＶ："ev/ev2220千秋恵那コックコックこんにちわ.txt" 差分Ｂ
	CreateTextureEX("絵800", 3100, @0, @0, "cg/ev/ev2220千秋恵那コックコックこんにちわb.jpg");
	Fade("絵800", 300, 1000, null, true);
	Delete("絵700*");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100680kit">
「ほら、これでいいだろ？」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100690fje">
「すご……はみ出してる……」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100700kit">
「しょうがないだろ！　パンツちっちゃいんだし！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100710fje">
「なんか、記憶のと違うね。ちょっとグロい」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100720fje">
「ってか、こんなおっきくなるんだ。
　女の子のカッコで興奮しちゃった？」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100730kit">
「バカ！　オレはヘンタイか！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100740kit">
「ただ……恵那が可愛かったから、それで……」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100750fje">
「ありがと」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100760kit">
「あ……あのさ、恵那。
　なんかオレ、苦しくて……」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100770fje">
「え？　苦しいの？　もしかしてクリマン――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100780kit">
「違う、あの、そうじゃなくて……ここ……」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100790fje">
「ん？　あ、ああ……そっか」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100800fje">
「名探偵富士見恵那としたことが、そんなことにも気づけないなんて、まだまだ修行が――」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100810kit">
「いや、推理はいいから……お願い」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100820fje">
「そうね。それじゃ……ええと、手でいいのかな？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100830kit">
「たぶん……」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100840fje">
「えと、それじゃ――触るね」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);




//あきゅん「修正指示：色味が似ているものをウインドウに入れる場合、枠は必ず付けてください」
//★inc櫻井　修正
//◆ＥＶ："ev/ev2220千秋恵那コックコックこんにちわ.txt" 差分Ｃ
	CreateTextureEX("絵900_l", 3250, @-650, @-450, "cg/ev/l/ev2220千秋恵那コックコックこんにちわc_l.jpg");
	Fade("絵900_l", 300, 1000, null, true);
	Delete("絵800*");


//窓1
	CreateWindow("絵窓", 3400, 50, 0, 300, 600, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 0, 1000, null, true);
	CreateTextureSP("絵窓/絵演背景", 3450, -243, -140, "cg/ev/l/ev2220千秋恵那コックコックこんにちわc_l.jpg");




//窓2
	CreateWindow("絵窓02", 3500, 670, 0, 300, 600, false);
	SetAlias("絵窓02","絵窓02");
	Zoom("絵窓02", 0, 0, 1000, null, true);
//	CreateTextureSP("絵窓02/絵演背景", 3550, @-850, @0, "cg/ev/l/ev2220千秋恵那コックコックこんにちわb_l.jpg");
	CreateTextureSP("絵窓02/絵演背景", 3550, -150, -69, "cg/ev/l/ev2220千秋恵那コックコックこんにちわb_l.jpg");


	CreateTextureEX("ライン", 5000, @810, @0, "cg/mask/ciウィンドウ縦02.png");
	CreateTextureEX("ライン02", 5000, @810, @0, "cg/mask/ciウィンドウ縦02.png");

	CreateTextureEX("ライン03", 5000, @190, @0, "cg/mask/ciウィンドウ縦02.png");
	CreateTextureEX("ライン04", 5000, @190, @0, "cg/mask/ciウィンドウ縦02.png");



//動作


	Fade("ライン03", 200, 1000, null, false);
	Fade("ライン04", 200, 1000, null, false);
	Move("ライン03", 200, @-150, @0, Dxl2, false);
	Move("ライン04", 200, @150, @0, Dxl2, false);
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);





//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100850kit">
「ぁあぁあっ！」


{	Fade("ライン", 200, 1000, null, false);
	Fade("ライン02", 200, 1000, null, false);
	Move("ライン", 200, @-150, @0, Dxl2, false);
	Move("ライン02", 200, @150, @0, Dxl2, false);
	Zoom("絵窓02", 200, 1000, 1000, Dxl2, false);
	Fade("絵窓02/絵演立絵", 200, 1000, null, true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100860fje">
「ぁ！　ゴメン！　痛かった？」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100870kit">
「痛いっていうか、そこ、敏感だから。
　周りの方から、ゆっくり……」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100880fje">
「あ……熱い。血管が浮き出て……どくんどくんって」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100890fje">
「それに、硬い……？　でも、骨って入ってないのよね」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100900kit">
「柔らかいときはふにゃふにゃだから、たぶん……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2226);

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100910fje">
「人体にもこんなに謎があるなんて……事件だわ」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100920kit">
「そ、そうか……？」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100930fje">
「それに私も、千秋のここを触ってるだけなのに、なんか胸が熱くて……」


　恵那の左手が、もどかしそうに彼女自身の股間を押さえつける。

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100940kit">
「あの……恵那？　動かしてくれるか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100950fje">
「動かすって……？」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100960kit">
「軽く握って、前後に」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100970fje">
「え……ええと……こう？」




//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210100980kit">
「あ……う、うん。それ、繰り返して……」




//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210100990fje">
「繰り返すって……こう、かな？　ん……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureSP("絵1000", 3200, @0, @0, "cg/ev/ev2220千秋恵那コックコックこんにちわc.jpg");

	FadeDelete("ライン",1000,null,false);
	FadeDelete("ライン02",1000,null,false);

	FadeDelete("ライン03",1000,null,false);
	FadeDelete("ライン04",1000,null,false);

	FadeDelete("絵窓/絵演背景",1000,null,false);
	FadeDelete("絵窓02/絵演背景",1000,null,false);
	FadeDelete("絵900_l",1000,null,true);

	Delete("絵窓*");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101000kit">
「ん――あ、ああ――そう――いいよ」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101010fje">
「え……そ、そんな声出すんだ」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101020kit">
「わ――悪いかよ――だって、ぁ――」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101030kit">
「いつもよりす――すごく――気持ちいい――」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101040fje">
「あ、そっか。
　エッチなゲームとかしながら、ひとりでやってるんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101050kit">
「そんな推理――しなくても――ぁ、あッ！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101060fje">
「速く動かしちゃったりして。
　このくらい、平気だったよね？」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101070kit">
「あ、う……大丈夫だけど。
　ちょっと速すぎて――ああっ！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101080fje">
「あは、身体よじっちゃって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101090fje">
「ふんふん……そうか、だんだん思い出してきたぞ」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101100kit">
「ぇ……？　思い出したって？」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101110fje">
「参考資料の話。
　確かこうして……ん……くちゃ……」


　恵那は舌を出し、自分の指に唾液を馴染ませる。




//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101120fje">
「こんな感じ……かな？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



//◆ＥＶ："ev/ev2220千秋恵那コックコックこんにちわ.txt" 差分Ｄ
	CreateTextureEX("絵1100_l", 3300, @-550, @0, "cg/ev/l/ev2220千秋恵那コックコックこんにちわd_l.jpg");
	Request("絵1100_l", Smoothing);
	Zoom("絵1100_l", 0, 1500, 1500, null, false);
	Fade("絵1100_l", 300, 1000, null, true);


	Delete("絵1000*");

//あきゅん「修正指示：強調する人物を明確に、受け攻めの流れで画面要素変える」
//★inc櫻井　修正
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101130kit">
「あ、ちょっと……ちょ……ああああっ！！」

{	CreateTextureSP("絵1200", 3200, @0, @0, "cg/ev/ev2220千秋恵那コックコックこんにちわd.jpg");
	FadeDelete("絵1100_l",500,null,false);}

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101140kit">
「何コレ？　すごく……ぬるぬるして……
　さっきまでと、全然違う……」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101150fje">
「ここは？」

//★inc櫻井　表情のみ使用
{	CreateTextureEX("絵背景1200_l", 3300, 0, 0, "cg/ev/l/ev2220千秋恵那コックコックこんにちわe_l.jpg");
	Fade("絵背景1200_l", 1000, 1000, null, true);
	Delete("絵1100*");}

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101160kit">
「ぁあっ！　あ！　そんな！　だめぇっ！
　あ！　ああっ！　あ！　あ！　あ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2227);


//	TextBoxDelete(150);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101170fje">
「こ、腰引けちゃってる！？
　やっぱり、敏感なんだ？」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101180kit">
「ぁぅぁ……ぁぅ……だめ……だめっ！
　もう、出ちゃう……いく、い――」


{	CreateTextureEX("絵1300_l", 3400, @-600, @0, "cg/ev/l/ev2220千秋恵那コックコックこんにちわc_l.jpg");
	Fade("絵1300_l", 300, 1000, null, true);
	Delete("絵背景1200*");}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101190fje">
「だーめ」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101200kit">
「えええええ……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101210fje">
「さっきのお返しだもんね」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101220kit">
「そ、そんなぁ……」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101230fje">
「あ……これ、私のツバじゃないよね」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101240fje">
「ぬるぬるしたの出てきて……
　ホントに、気持ちよかったんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101250kit">
「あ、あたりまえだ――ぁあっ！！」


　声を荒げかけた千秋を、恵那の指が再び刺激し始める。

　それと同時に、彼女が自ら股間に伸ばした指も、怪しげに蠢き始める。


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101260fje">
「ほら……更に指先ぬるぬるになって。
　くちゅくちゅ……音、たっちゃってるよ」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101270kit">
「い……言うなよ……そんな……ああっ！　だめ！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101280fje">
「見た目も声も女の子みたいなのに……スカートからこんなの生やしちゃってて……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	FadeDelete("絵1300_l",300,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101290kit">
「う……うるさい……ああああッ！」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101300kit">
「だめ！　先っぽ……だめ、きもち……よすぎて……
　も……う……限界……」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101310fje">
「だめだってば」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101320kit">
「うう……駄目って、なんだよぅ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101330fje">
「男の子だったら、ほら。我慢強いところ、見せてよ
　それとも、格好通りの女の子になっちゃう？」




//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101340kit">
「ふ、ふ、ふざけんな！　オレは男だ！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101350fje">
「ホントかな……？」


{	CreateTextureEX("絵1400_l", 3500, @-250, @0, "cg/ev/l/ev2220千秋恵那コックコックこんにちわb_l.jpg");
	Move("絵1400_l", 300, @250, @0, Dxl1, false);

	Fade("絵1400_l", 300, 1000, null, true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101360kit">
「オレの師匠は言った！
　人間、名前でも身体でもない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2228);

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101370kit">
「大切なのは――」


{	CreateTextureEX("絵1500_l", 3500, @-850, @0, "cg/ev/l/ev2220千秋恵那コックコックこんにちわc_l.jpg");
	Move("絵1500_l", 300, @250, @0, Dxl1, false);
	Fade("絵1500_l", 300, 1000, null, true);
	Delete("絵1400*");}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101380fje">
「ここ？」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101390kit">
「違うよ！　心だよ！」


{	CreateTextureEX("絵1600_l", 3500, @-600, @0, "cg/ev/l/ev2220千秋恵那コックコックこんにちわe_l.jpg");
//	Move("絵big5", 300, @250, @0, Dxl1, false);
	Fade("絵1600_l", 300, 1000, null, true);
	Delete("絵1500*");}

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101400fje">
「それじゃさ、これから１０数える間だけ、我慢して。
　それが、我慢できたら……うん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101410fje">
「男の子に、してあげる」


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101420kit">
「え？」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101430kit">
「あの、それって……」


{	CreateTextureEX("絵1700_l", 3500, @-600, @0, "cg/ev/l/ev2220千秋恵那コックコックこんにちわb_l.jpg");
	Fade("絵1700_l", 300, 1000, null, true);
	Delete("絵1600*");}

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101440fje">
「……わ、わかるでしょ！　そのくらい！」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101450kit">
「あ……う、うん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
{	CreateTextureEX("絵1800_l", 3500, @-250, @0, "cg/ev/l/ev2220千秋恵那コックコックこんにちわb_l.jpg");
	Move("絵1800_l", 300, @250, @0, Dxl1, false);
	Fade("絵1800_l", 300, 1000, null, true);
	Delete("絵1700*");}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101460kit">
「よし、わかった！！
　オレ……絶対、我慢してやる！！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101470fje">
「その意気その意気。
　それじゃ、行くよ」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101480kit">
「よっしゃ！　来い！」

//あきゅん「β演出：」
//◆演出指示：ここ、同時に流した方がいい？
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101490fje">
「じゅーうー」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	CreateTextureEX("絵1900", 3500, @0, @0, "cg/ev/ev2220千秋恵那コックコックこんにちわc.jpg");
	Fade("絵1900", 300, 1000, null, true);
	Delete("絵1800*");}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101500kit">
「ちょ……ちょっと長くない！？」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101510fje">
「きゅーうー」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101520kit">
「って、全然きいてな……んんっ！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101530fje">
「はーちー」


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101540kit">
「はぁっ！　ん……く……くぅ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//★inc櫻井　表情ないのでウィンドウで作成
//窓1
	CreateWindow("絵窓", 5050, 25, 0, 350, 600, false);
	SetAlias("絵窓","絵窓");
	CreateTextureEX("絵窓/絵演背景", 5000, Center, Middle, "cg/ev/ev2220千秋恵那コックコックこんにちわe.jpg");

//キャラ準備
	Fade("絵窓/絵演背景", 200, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101550fje">
「なーなー」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101560kit">
「まだ……まだか……よっ！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101570fje">
「ろーくー」


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101580kit">
「ああっ！　そんな！　激しくしたら……だめっ！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101590fje">
「ごーおー」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101600kit">
「限界……いやでも……ううっ、がんば……ああああっ」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101610fje">
「よーんー」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101620kit">
「さきっぽだめ……やめっ、ん……んくっ、ん、くぅ」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101630fje">
「さーんー」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101640kit">
「はぅぅっ！　んぎゅ……ぅ、ぅ、ぅぅぅ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2229);


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101650fje">
「にーいー」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101660kit">
「んぐっ、ん、んんっ、ん、んんん、ん……！！」




//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101670fje">
「いーちー」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101680kit">
「あ！　あ、らめ……あっ、あっ、あ、ああああああ！！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101690fje">
「ぜー」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101700kit">
「んぁぁぁぁぁぁぁあああああああッッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：射精
//▼べー：ＳＥ欠番につきコメントアウト


//	CreateSE("SE02","se人体_絶頂射精");
//	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorEX("白フラ", 15000, "WHITE");
	Fade("白フラ", 300, 1000, null, true);
	Delete("絵窓*");
//◆ＥＶ："ev/ev2220千秋恵那コックコックこんにちわ.txt" 差分Ｅ

	CreateTextureEX("絵2000", 3400, @0, @0, "cg/ev/ev2220千秋恵那コックコックこんにちわe.jpg");
	Fade("絵2000", 300, 1000, null, true);
	Delete("絵1900*");
	Delete("絵窓");
	Fade("白フラ", 300, 0, null, true);
	Fade("白フラ", 100, 1000, null, true);
	CreateTextureEX("絵2000_l", 3500, @300, @0, "cg/ev/l/ev2220千秋恵那コックコックこんにちわe_l.jpg");
	Request("絵2000_l", Smoothing);
	Zoom("絵2000_l", 0, 1500, 1500, null, false);

	Fade("絵2000_l", 0, 1000, null, true);
	Delete("絵2000");


	Fade("白フラ", 1500, 0, null, true);

	

//あきゅん「修正指示：最初はふがいない千秋が主役です、恵那の顔を出すのは野暮」
//★inc櫻井　修正
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101710fje">
「きゃっ……」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101720kit">
「はぁっ、はぁっ、はぁ……はぁっ、は……」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101730kit">
「ぁ……ぅ……ぅぅ……ぅぅぅ……ひぐっ、ぅ……ぅ」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101740fje">
「え？　ちょ、ちょっと！」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101750kit">
「ご……ご、ごめん……オレ、今度こそ……ちゃんとした男に、なれると思ってがんばって、それで……」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101760kit">
「なのに……ヘタレで、また、だから……また、恵那の期待に、応えられなくて……」



//あきゅん「修正指示：恵那ここから、どんな千秋でも恵那は好きだって雰囲気を演出」

{	CreateTextureEX("絵2100_l", 3500, @-850, @0, "cg/ev/l/ev2220千秋恵那コックコックこんにちわe_l.jpg");
	Move("絵2100_l", 600, @250, @0, Dxl1, false);
	Fade("絵2100_l", 600, 1000, null, true);
	Delete("絵2000_l");}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101770fje">
「バカチビ」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101780fje">
「千秋がどんな性格か、私が一番良く知ってるんだよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101790fje">
「そりゃ、男の子らしいのもいいけどね」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101800fje">
「私は、どんな千秋だって、好きなの」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101810kit">
「恵那……」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101820fje">
「ね、千秋。お願いがあるの」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101830fje">
「今度は、私を気持ちよくしてくれる？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);




//◆ＥＶ："ev/ev2220千秋恵那押し倒し.txt"


	CreateTextureEX("EV03", 3500, @0, @0, "cg/ev/ev2220千秋恵那押し倒しa.jpg");
	Fade("EV03", 1000, 1000, null, true);
	Delete("絵*");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101840fje">
「大丈夫。焦らなくてもいいよ」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101850kit">
「でも、オレ――」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101860kit">
「早く、恵那を全部、見たい」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101870fje">
「……バカ」

//◆演出指示：ブラジャー見える

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	CreateSE("SE","se動作_衣擦れ");
	MusicStart("SE",0,700,0,1000,null,false);
//◆ＥＶ："ev/ev2220千秋恵那押し倒し.txt" 差分Ｄ
	CreateTextureEX("絵2200", 3600, @0, @0, "cg/ev/ev2220千秋恵那押し倒しd.jpg");
	Fade("絵2200", 300, 1000, null, true);
	Delete("EV*");

//あきゅん「修正指示：衣類動かす場合は必ずＳＥ入れる」
//あきゅん「修正指示：文脈から千秋の視線を表現」
//★inc櫻井 修正

	CreateTextureEX("絵2300_l", 3600, @0, @0, "cg/ev/l/ev2220千秋恵那押し倒しd_l.jpg");
	Request("絵2300_l", Smoothing);
	Zoom("絵2300_l", 0, 1500, 1500, null, true);
	Fade("絵2300_l", 800, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]

{	Move("絵2300_l", 2000, @-350, @-200, Dxl3, true);}

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101880fje">
「…………」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101890kit">
「…………」


{	CreateTextureEX("絵2400_l", 3650, @-350, @-200, "cg/ev/l/ev2220千秋恵那押し倒しc_l.jpg");
	Request("絵2400_l", Smoothing);
	Zoom("絵2400_l", 0, 1500, 1500, null, true);
	Fade("絵2400_l", 300, 1000, null, true);
	Move("絵2400_l", 2000, @350, @200, Dxl3, true);
	Move("絵2400_l", 0, @350, @200, Dxl3, true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101900fje">
「ちょ、ちょっと。
　そんな見つめなくても……恥ずかしいし」


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101910kit">
「あ、ゴメン。意外と胸、あるんだなって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2230);

//	TextBoxDelete(150);

	FadeDelete("絵2400_l",300,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101920fje">
「鈴姉には負けるけどさ。
　私だって、そこそこあるんだからね」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101930kit">
「…………」


{	CreateTextureEX("絵2500", 3650, @0, @0, "cg/ev/ev2220千秋恵那押し倒しc.jpg");
	Fade("絵2500", 300, 1000, null, true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101940fje">
「だ、だから黙んないでって」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101950kit">
「あ、うん。ええと……その……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101960kit">
「その……これ、かわいい、柄だよな」


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101970fje">
「…………ふふっ」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210101980kit">
「な……なんだよ！　笑うなよ！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210101990fje">
「ゴメンゴメン。嬉しくて」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102000fje">
「ちゃんと選んだ甲斐がありました。ありがと」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102010kit">
「恵那……」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102020fje">
「……うん」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateTextureEX("絵2600_l", 3600, @-550, @-250, "cg/ev/l/ev2220千秋恵那押し倒しd_l.jpg");
	Fade("絵2600_l", 300, 1000, null, true);

//窓1 
	CreateWindow("絵窓", 6500, 50, 0, 300, 600, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 0, 1000, null, true);
	CreateTextureEX("絵窓/絵演背景", 6550, -306, -78, "cg/ev/l/ev2220千秋恵那押し倒しb_l.jpg");
	CreateTextureEX("絵窓/絵演背景02", 6550, -306, -78, "cg/ev/l/ev2220千秋恵那押し倒しd_l.jpg");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]

　千秋の指が、恵那の胸に触れる。

　ブラジャーの上から、恐る恐る指を滑らせる。


{	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	Fade("絵窓/絵演背景", 200, 1000, null, true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102030fje">
「ぁ……んん……ん……」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102040kit">
「どう、かな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	FadeDelete("絵窓/絵演背景",300,Axl2,false);
	Fade("絵窓/絵演背景02", 200, 1000, null, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102050fje">
「え……？　あ、んん……わかんない。
　変な感じ？」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102060fje">
「すごく、ドキドキして、それで……
　ちょっと、くすぐったいかも」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102070fje">
「千秋は？」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102080kit">
「やわらかい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2231);

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102090fje">
「バカチビ」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102100kit">
「直接、いい？」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102110fje">
「間の……うん。それだよ」


　小さな音を立てて、谷間のホックが外れる。



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＥＶ："ev/ev2220千秋恵那押し倒し.txt" 差分Ｅ
	FadeDelete("絵窓/絵演背景02",300,null,false);
	CreateTextureEX("絵2700", 3700, @0, @0, "cg/ev/ev2220千秋恵那押し倒しe.jpg");
	Fade("絵2700", 300, 1000, null, true);


	Delete("絵2600_l");
	Delete("絵窓");

//窓準備

//★inc櫻井　差分がないため、ウィンドウ作成。
//窓1
	CreateWindow("絵窓", 4000, 50, 0, 300, 600, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 1000, null, true);
	CreateTextureEX("絵窓/絵演背景", 3800, @0, @0, "cg/ev/ev2220千秋恵那押し倒しc.jpg");
	CreateTextureEX("絵窓/絵演背景02", 3800, @0, @0, "cg/ev/ev2220千秋恵那押し倒しb.jpg");





//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102120fje">
「…………」


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102130kit">
「……きれい」

{	Fade("絵窓/絵演背景", 300, 1000, null, true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102140fje">
「バカチビ」

　恥ずかしげに言う恵那。

　彼女の胸に、引き寄せられるよう手が伸びた。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	FadeDelete("絵窓/絵演背景",300,Axl2,false);
	Fade("絵窓/絵演背景02", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102150fje">
「ぁあっ、ん――」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102160kit">
「先っぽ、立ってる」

{	CreateTextureEX("絵窓/絵演背景03", 3800, @0, @0, "cg/ev/ev2220千秋恵那押し倒しc.jpg");
	FadeDelete("絵窓/絵演背景02",300,Axl2,false);
	Fade("絵窓/絵演背景03", 300, 1000, null, true);}

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102170fje">
「う……うるさい！　言わなくても……んんっ」


{	CreateTextureEX("絵2800_l", 4200, @-550, @-250, "cg/ev/l/ev2220千秋恵那押し倒しe_l.jpg");
	Fade("絵2800_l", 300, 1000, null, true);
	FadeDelete("絵窓/絵演背景03",300,null,false);
	Delete("絵窓");
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102180kit">
「んちゅ……んっ、ちゅ……」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102190fje">
「ぁあっ、そんな……いきなり、吸ったりして――」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102200kit">
「ちゅ……れろれろ……んちゅっ、ちゅ……」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102210fje">
「ぁ……んっ、んん……ん……ん……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//窓 
	CreateWindow("絵窓", 4300, 50, 0, 300, 600, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 0, 1000, null, true);
	CreateTextureEX("絵窓/絵演背景", 4350, -306, -78, "cg/ev/l/ev2220千秋恵那押し倒しc_l.jpg");
	CreateTextureEX("絵窓/絵演背景02", 4350, -306, -78, "cg/ev/l/ev2220千秋恵那押し倒しd_l.jpg");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102220kit">
「んちゅっ、ちゅ……ちゅぅうぅぅぅっ！」


{	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	Fade("絵窓/絵演背景", 200, 1000, null, true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102230fje">
「ん……こら！　吸ってばっかりじゃなく……
　なにか、言いなさいよ！」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102240kit">
「……おいひい」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102250fje">
「ば……バカチビ！
　なに、恥ずかしいこと言ってるのよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102260kit">
「な……おまえが言えって言ったんだろ」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102270fje">
「言ったわよ！　言ったけど……！」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102280kit">
「…………へへ」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102290fje">
「な、なに？」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102300kit">
「恥ずかしがる恵那も、可愛い」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2232);

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102310fje">
「な――な――！」


{	Zoom("絵窓", 200, 0, 1000, Dxl2, true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102320fje">
「バカばっかり言ってないで――ああッ！！」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102330kit">
「んちゅっ！　ちゅ――」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102340fje">
「んぁっ、ん……んんっ！」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102350kit">
「だんだん、敏感になってる？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102360fje">
「わ……わかんない」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102370kit">
「なってるよ。だってほら。指で摘むと――」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102380fje">
「んぁッ！　ぁ……ん……んんっ！！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102390fje">
「そんなッ、強く……引っ張ったら……ああっ！
　だめ！　取れちゃう……んああっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102400kit">
「あ……恵那が指先ひとつで、そんな声出すなんて」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102410kit">
「それじゃ……その……」

//あきゅん「修正指示：視線移動早すぎ、焦りすぎ」
//★inc櫻井　修正
{	Move("絵2800_l", 2000, @-450, @-250, Dxl3, true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102420kit">
「こっちを触ると……どうなっちゃうんだ？」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102430fje">
「――――ッ！！」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102440kit">
「さ、さわるぞ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Zoom("絵窓", 200, 1000, 1000, Dxl2, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102450fje">
「ば、バカチビ！
　いちいち言わなくたっていいし」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102460kit">
「あ……うん、ごめん」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



//◆ＥＶ："ev/ev2220千秋恵那手マン.txt"差分Ａ
	CreateTextureEX("EV03", 4500, @0, @0, "cg/ev/ev2220千秋恵那手マンa.jpg");
	Fade("EV03", 1000, 1000, null, true);
	Delete("絵*");
	Delete("絵窓");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102470fje">
「ん……んん……」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102480kit">
「恵那のパンツ……少し、濡れてる……？」


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102490fje">
「こ、このバカチビッ！
　いちいち言わなくたっていいって言ったでしょ！」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102500kit">
「…………」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102510fje">
「な、なによ！？」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102520kit">
「もしかして……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2233);

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102530kit">
「コレは事件！？」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102540fje">
「な、なにが？！」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102550kit">
「もしかして、おまえ……」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102560kit">
「はずかしい？」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102570fje">
「なっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102580fje">
「ば、ば、ばばば、バカチビ――――っ！！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102590fje">
「そんなの、そんなの――」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102600fje">
「恥ずかしいに、決まってるでしょ！」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102610kit">
「こんな格好してるもんね」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102620fje">
「――――っ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102630fje">
「もう！　変なこと言わないで、早く――」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102640kit">
「早く？」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102650fje">
「ええと、だから、早く……」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102660fje">
「千秋が、気持ちよくして……」

//◆音声指示：ゴクリ、ツバを飲み込む


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102670kit">
「――――っ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102680kit">
「よ、よぉし、じゃあそこまで言うなら――」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102690fje">
「だ、だめ！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102700fje">
「いきなりはしないで、ゆっくり、優しく、ね！」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102710kit">
「わ……わかってるよ！」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102720kit">
「優しく、優しく……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102730fje">
「んぁ……ん、んん……」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102740kit">
「わ、どんどんシミが広がって……」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102750fje">
「んん……ん……ば、バカ……言わないで……」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102760kit">
「ほら、ここかな？　ここら辺が……」




//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102770fje">
「ぁっ、ちょ――あんまり――んんっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102780kit">
「いや？」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102790fje">
「い、いやじゃないけど――」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102800kit">
「中に指、入れちゃったりして」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102810fje">
「ああっ、あっ、ちょっと、待って――」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102820kit">
「待つの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2234);

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102830fje">
「あ……止めちゃ……」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102840kit">
「続けていい？」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102850fje">
「い……意地悪しないでよ、バカチビ……」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102860kit">
「へへーん、そんな強がり言ってていいのかなあ」



//◆ＥＶ："ev/ev2220千秋恵那手マン.txt"差分Ｂ

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵2900", 4600, @0, @0, "cg/ev/ev2220千秋恵那手マンb.jpg");
	Fade("絵2900", 300, 1000, null, true);
	Delete("EV*");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102870kit">
「ほーら、ここら辺――」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102880fje">
「んぁっ、んっ、ちょっと……
　千秋、そんな……んんんんっ……！」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102890kit">
「うわ、あつい」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102900kit">
「すごく、びしょびしょで……音が……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102910kit">
「音が立っちゃうくらい、ぬるぬるだ」





//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102920fje">
「んぁ……ぁ……んん……ん……」




//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102930kit">
「どこら辺が、気持ちいいのかな――」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102940fje">
「ん――ん――んんん――っ！！
　あ――だめ、優しく――優しくして――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102950kit">
「エロい声」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102960fje">
「そんな、耳元で――」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210102970kit">
「胸も、ほら。先っぽがこんなに立って――」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102980fje">
「ああっ、いやだっ！
　言わない――言わないでっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210102990fje">
「んぁっ！　あっ、あっ、だめっ！
　そこだめそこだめだめだってばあっ！！」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103000kit">
「でも、気持ちいいんだろ？　ここ？」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103010fje">
「気持ち、いいとかっ、わかっ！
　わかんな――――んくぅっ！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103020fje">
「ん――くぅっ！　ああっ、あ――
　そんなにしたらっ！　変にっなっちゃう！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103030kit">
「いいよ、変になって」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103040fje">
「そんなっ、でも――いや――あっ！
　私――私、気持ちよくて――恥ずかし――」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103050kit">
「恥ずかしがらなくていいよ。ほら――」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103060kit">
「触ると、ビクビクって――ここが、気持ちいいの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2235);


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103070fje">
「あああっ！　そこ――そこっ、気持ち――いいよ！
　気持ちよくて――ああっ！　あっ！　あ――」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103080fje">
「来る――気持ちいいの――来て――
　千秋ッ！　千秋――私――私――！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103090fje">
「あっあっあっあっ！！　だめ、私――！
　千秋の前で、いっちゃうの？　いっちゃって、いいの？」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103100kit">
「いいよ、ほら――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103110fje">
「ああああっ！　だめ――だめっ！
　そこ、たくさん、いじられたら――あっ！　あ――！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103120fje">
「私、んぁあっ、あっ、ああああっ！！
　いく――いくっ、いっちゃ――う――！！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103130fje">
「んくぅ――――――――――――――っ！！！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＥＶ："ev/ev2220千秋恵那手マン.txt"差分Ｃ


	CreateColorEX("白フラッシュ", 15000, "WHITE");
	Fade("白フラッシュ", 300, 1000, null, true);

	CreateTextureEX("絵3000", 4700, @0, @0, "cg/ev/ev2220千秋恵那手マンc.jpg");
	Fade("絵3000", 300, 1000, null, true);
	Delete("絵2900");

//あきゅん「修正指示：画面一度白く飛ばして」
//★inc櫻井　修正



	Fade("白フラッシュ", 300, 0, null, true);
	Fade("白フラッシュ", 100, 1000, null, true);
	Fade("白フラッシュ", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103140fje">
「んぁ……んはぁ……ん……んん……ん……」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103150fje">
「ちあ……き……の……バカチビ……
　なんで、いうこと……聞かないのよ……」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103160fje">
「私……気持ちよくて……千秋の……良くて……
　おかしく……なっちゃった……」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103170fje">
「はず……かしい……」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103180kit">
「ごめん、でも――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103190fje">
「謝らないで。謝る……くらいだったら……」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103200fje">
「もっと……してくれる？」


//あきゅん「修正指示：ここらで挿入体位へ、全容見せないで顔アップとかで結合見えないように」
//★inc櫻井　修正
{	CreateTextureEX("EV04", 4800, @0, @-250, "cg/ev/l/ev2220千秋恵那ラブラブ正常位a_l.jpg");
	Fade("EV04", 1000, 1000, null, true);
	Delete("絵*");}

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103210kit">
「ここで、いいんだよな」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103220fje">
「……千秋、大丈夫？」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103230kit">
「それはこっちのセリフ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2236);

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103240kit">
「恵那、いいか？」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103250fje">
「……うん」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103260fje">
「来て」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



//◆ＥＶ："ev/ev2220千秋恵那ラブラブ正常位.txt" 差分Ａ

//◆演出指示：挿入


	
	CreateTextureEX("絵3100_l", 5050, @0, @-250, "cg/ev/l/ev2220千秋恵那ラブラブ正常位a_l.jpg");
	Move("絵3100_l", 5000, @0, @-150, null, false);
	Fade("絵3100_l", 1000, 1000, null, true);
	Delete("絵3000");
	CreateTextureSP("絵3200", 5000, @0, @0, "cg/ev/ev2220千秋恵那ラブラブ正常位a.jpg");

//★inc櫻井　差分がないため、ウィンドウ作成。
//窓1
	CreateWindow("絵窓", 6000, 0, 300, 1024, 250, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 1000, null, true);
	CreateTextureEX("絵窓/絵演背景", 5500, @0, @0, "cg/ev/ev2220千秋恵那ラブラブ正常位a.jpg");
	CreateTextureEX("絵窓/絵演背景02", 5500, @0, @0, "cg/ev/ev2220千秋恵那ラブラブ正常位d.jpg");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103270fje">
「はぅっ……う……うう……」


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103280kit">
「ん……んん……んん……」


{	FadeDelete("絵3100_l",300,null,false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103290fje">
「あつっ、ちょっと……ちょっと待った！」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103300kit">
「え……？　あ、ゴメン……痛かったか？」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103310fje">
「痛いっていうか、ちょっと苦しい……かな」


{	Fade("絵窓/絵演背景02", 200, 1000, null, true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103320fje">
「千秋は？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103330kit">
「……びっくりするくらい、気持ちいい」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103340fje">
「うん、良かった……」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103350kit">
「あのさ、恵那」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103360kit">
「今は苦しいかもしれないけど、オレがすぐ、気持ちよくしてやるからな！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103370fje">
「へへ……頼もしいんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103380fje">
「じゃ、気持ちよくしてもらおっかな」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103390kit">
「え、でも……」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103400fje">
「名探偵富士見恵那を甘く見ないで。
　ホントは、我慢してるんでしょ？」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103410kit">
「……我慢なんてしてない！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103420fje">
「私もそう。
　千秋にいっぱい、気持ちよくしてもらいたいだけ」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103430fje">
「だから、ね？　私のなかで、いっぱい動いて」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103440fje">
「一緒に、気持ちよくなろ？」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103450kit">
「……恵那」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2237);

//	TextBoxDelete(150);

	CreateTextureEX("絵窓/絵演背景03", 5500, @0, @0, "cg/ev/ev2220千秋恵那ラブラブ正常位c.jpg");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103460fje">
「なに、千秋」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103470kit">
「好きだよ」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103480fje">
「私も……大好きだよ、千秋……！」


{	Fade("絵窓/絵演背景03", 200, 1000, null, true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103490fje">
「ぁあっっ！　んっ！　くぅっ！　んんんっ！！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103500fje">
「はぁっ、はぁっ、はぁっ、ん――
　んんん――んんんんんん――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103510kit">
「恵那……すごい、恵那に全部、包まれて――」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103520fje">
「わかるよ、千秋が、全部中に――ああっ！」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103530kit">
「恵那、ゴメン！
　オレ、止まんない！　止まんないよ！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103540fje">
「いいよ、千秋、止まんなくて、いいんだよ。
　もっと、ね――好きなように――して――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103550fje">
「ぁぅっ――んんっ――んっ――
　はぁっ――はぁ――ぁ――ぁあ――あ――」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103560kit">
「ぁ……オレ……オレ……
　恵那の中に、出たり、入ったり――」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103570kit">
「それで恵那が……こんなエッチな顔してるなんて……
　なんか……信じられないっていうか……」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103580fje">
「ぁあっ、ん――なんか――
　痺れるみたいになって――あれ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103590kit">
「気持ちいい？」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103600fje">
「そうかも――しれない――んんっ！！」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103610kit">
「じゃあ……もっとたくさん……！
　気持ちよく……してやるっ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＥＶ："ev/ev2220千秋恵那ラブラブ正常位.txt" 差分Ｂ
	CreateTextureEX("絵3300_l", 7100, @-150, @-500, "cg/ev/l/ev2220千秋恵那ラブラブ正常位b_l.jpg");
	Fade("絵3300_l", 300, 1000, null, true);
	Delete("絵3200");
	Delete("絵窓");
	CreateTextureSP("絵3400", 7000, @0, @0, "cg/ev/ev2220千秋恵那ラブラブ正常位b.jpg");



//★inc櫻井　差分がないため、ウィンドウ作成。
//窓1
	CreateWindow("絵窓", 7200, 0, 300, 1024, 250, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 1000, null, true);
	CreateTextureEX("絵窓/絵演背景", 7100, @0, @0, "cg/ev/ev2220千秋恵那ラブラブ正常位a.jpg");
	CreateTextureEX("絵窓/絵演背景02", 7100, @0, @0, "cg/ev/ev2220千秋恵那ラブラブ正常位d.jpg");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103620fje">
「ぁぅっ――んっ――んっ――んん――
　はぅっ！　ぅっ！　んんっ！　んんん！！」


//◆音声指示：涙目で
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103630fje">
「ぁぅっ。あっ！　ああっ！　あっ、すごい――
　千秋……千秋……うう……うう……う……！」


{	FadeDelete("絵3300_l",300,null,false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103640kit">
「え……あ、恵那？　痛かった――？」


{	Fade("絵窓/絵演背景02", 200, 1000, null, true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103650fje">
「ううん……そうじゃ……なく、て……ね……」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103660fje">
「千秋と……やっと、一緒になれたんだって……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103670fje">
「そう、考えたら、なんか……
　悲しくないのに……涙が……っ！」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103680kit">
「探偵なのに、わかんないのか？」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103690kit">
「それは、うれし涙だぜ」


{	FadeDelete("絵窓/絵演背景02", 300, null, false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103700fje">
「そ……そのくらいっ！　わかるってっ！
　バカチビっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103710fje">
「んあっ、あっ！　あ……私、嬉しいの！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103720fje">
「千秋と、一緒になれてッ！　幸せなのッ！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103730fje">
「千秋と一緒にっ、エッチして――！
　それで、ふたりで、気持ちよくなって――！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103740fje">
「こんな幸せ――他に、なかったよ――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2238);

//	TextBoxDelete(150);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103750kit">
「オレも……恵那！
　幸せで――気持ちよくて――だから――！」




//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103760fje">
「私のなか、メチャクチャに――しちゃって――！
　メチャクチャにして、それで――」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103770fje">
「いっぱいいっぱい、千秋の、ちょうだい……」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103780kit">
「でもさ、オレ、こんなカッコしてても、男だから」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103790kit">
「その前に、恵那を気持ちよくしてから、な……！」





//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103800fje">
「千秋――んぁっ！！」




//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103810fje">
「あぁっ！　あっ！　すごっ！　さっきより、全然！
　力強くて、千秋の、気持ち――伝わる――！！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103820fje">
「ああっ！　だめっ！　そんな――奧――
　グリグリされたら、私――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103830kit">
「恵那、いいよ。
　好きなだけ、気持ちよくなって……くぅっ！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103840fje">
「はあっ！　ぁ――ああっ！　あっ！　あ――！
　いいの？　いく――いっちゃう、いく――」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103850fje">
「あんっ、あっ、あっ、あ、あああ――
　んぁあああああああああ――――ッ！！」


//◆演出指示：絶頂

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("白フラ", 300, 1000, null, true);

//◆ＥＶ："ev/ev2220千秋恵那ラブラブ正常位.txt" 差分Ｃ
	CreateTextureEX("絵3500", 8200, @0, @0, "cg/ev/ev2220千秋恵那ラブラブ正常位c.jpg");
	Fade("絵3500", 300, 1000, null, true);
	Delete("絵3400");
	Fade("白フラ", 300, 0, null, true);
	Fade("白フラ", 100, 1000, null, true);
	Fade("白フラ", 1500, 0, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103860fje">
「ぁ……ぁぅっ……ぅ……ぅぅっ！
　ぅあっ……んっ……んくぅっ……ぅ……ああ……！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103870fje">
「千秋……いる？　すご……きもち……よかった……」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103880kit">
「ああっ！　恵那も――なか、きゅってなって――
　ゴメン！　このまま――動かないと――」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103890fje">
「いいよ……だから……あぁあっ……今度は……
　このまま……私……だけじゃなく……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0920]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103900fje">
「ぁぅ……ぅっ！　千秋……
　今度は……千秋も……ね……？」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103910fje">
「ぁあっ……すごっ……また……はやく……！
　いい……いいの……千秋の……きもちいいよう……」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103920fje">
「あたま……まっしろで……！
　千秋の……こと……好きすぎて……幸せで……！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103930fje">
「あ……千秋の、震えて……なにか、来る……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0930]


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103940kit">
「うん、もう――オレも、もう――出ちゃ――」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103950fje">
「あっ、外、だめ……！！」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103960kit">
「でも――」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103970fje">
「いいの……っ！　大丈夫……だから！
　だから、お願い……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2239);

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0940]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210103980fje">
「私の……中に……千秋……いっぱい……
　いっぱい出して……」





//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210103990kit">
「恵那――ッ！！」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210104000kit">
「オレ、幸せにしてやるから！」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210104010kit">
「絶対絶対、幸せにしてやるから――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0950]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210104020fje">
「うん、ありがとう……」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210104030kit">
「いくよ、恵那」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210104040fje">
「うん……んっ……んあぁっ！　んぁっ！！
　私も、また――んんんっ！　またく、来るよ……」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210104050fje">
「私に……千秋の気持ち、全部、ちょうだい……！！
　幸せに……幸せに、して……ああっ、イく――！」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210104060fje">
「あっ、あ、、イク、あっ、あっ、あっ――
　あああああああああああああッ！！！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指示：絶頂



//◆ＥＶ："ev/ev2220千秋恵那ラブラブ正常位.txt" 差分Ｄ
//▼べー：ＳＥ欠番につきコメントアウト

//	CreateSE("SE02","se人体_絶頂射精");
//	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("白フラ", 300, 1000, null, true);
	CreateTextureEX("絵3600", 8500, @0, @0, "cg/ev/ev2220千秋恵那ラブラブ正常位d.jpg");
	Fade("絵3600", 300, 1000, null, true);
	Delete("絵3500");
	Fade("白フラ", 300, 0, null, true);
	Fade("白フラ", 100, 1000, null, true);
	Fade("白フラ", 1500, 0, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0960]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210104070fje">
「ぁ……ぁ……ぁぁ……ぁ……
　ぁ……んく……ん……んんっ、ん……」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210104080kit">
「くぅっ……恵那……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0970]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210104090fje">
「千秋……千秋……ん……んふふふ……」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210104100kit">
「ん……？　どうした？」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210104110fje">
「えへ……千秋の……いっぱい、入ってきて……」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210104120fje">
「そんなカッコしてても、やっぱりさ……
　千秋は、男の子なんだよね……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0980]


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210104130kit">
「当たり前だろ！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210104140fje">
「だから……ギュッと掴んで、離さないでね……」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210104150kit">
「誰が離すか！」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210104160kit">
「オレ、神様に誓うよ！」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb22/210104170kit">
「恵那を一生守って、一生幸せにしてやる！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0990]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210104180fje">
「ふふ……バカチビ……」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210104190fje">
「ありがとね」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb22/210104200fje">
「大好き……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
	if($PLACE_reco){
		RecoReturn();
	}
//============================================

	ClearWaitAll(2000, 2000);

	EndScene();
}
