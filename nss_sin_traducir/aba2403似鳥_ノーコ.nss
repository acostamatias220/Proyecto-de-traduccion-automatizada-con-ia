
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene aba2403似鳥_ノーコ.nss_MAIN
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
	$GameName = "aba2404沙紅羅.nss";//★エンディング中（aba）
}

scene aba2403似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="410">
////////////header////////////
//file name "aba2403似鳥_ノーコ.nss"
//title "未来は今"
//previous "aba2402フウリ.nss"

////////////footer////////////
//next "aba2404沙紅羅.nss"

//※↑条件分岐の書き方がよく分からないため飛び先設定未設置（mngw 10/14）


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
{	ClockPass(1858);}

//◆場所：似鳥マンション_リビング



	PrintFadeNut("上背景２", 1000, true);
	FadeDelete("上背景", 0, null, true);

	DeleteSt("C", 0,true);
	Delete("@OnBG*");

	OnBG(10,"bg1304200似鳥マンション_リビング_同人誌散乱");
	FadeBG(0,true);


	SoundPlay("@xbgm29",0,700,true);

	FadeDelete("上背景２", 2000, null, true);

	WaitKey(1000);


//◆ＥＶ："ev1840ノーコ同人誌再現正常位.txt" 差分Ｄ

	CreateTextureEX("絵背景103_l", 100, Center, Middle, "cg/ev/l/ev1840ノーコ同人誌再現正常位d_l.jpg");
	Move("絵背景103_l", 0, -800, -100, Dxl1, true);
	Fade("絵背景103_l", 1000, 1000, null, false);
	Move("絵背景103_l", 3000, -800, 0, Dxl2, true);

	CreateTextureEX("絵背景103", 100, Center, Middle, "cg/ev/ev1840ノーコ同人誌再現正常位d.jpg");
	Fade("絵背景103", 1000, 1000, null, true);
	Delete("絵背景103_l");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/aba24/030100010nki">
「オラ行くぞ！　出すぞ！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/aba24/030100020nko">
「いやっ！　あっ、あ――でも、まだ――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/aba24/030100030nko">
「まだ、こたえ――きいて――ない――」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/aba24/030100040nki">
「出すからな！　合わせろ！　合わせろよ！」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/aba24/030100050nko">
「は――はひっ、んっ、んんっ、んんん――！！」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/aba24/030100060nko">
「あわせます――にとり――さきに――わたし――」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/aba24/030100070nko">
「いきます――いいですか？　いいですか？」

{	ClockPass(1859);}


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/aba24/030100080nki">
「おう！　ほら！　いっちまえ！！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/aba24/030100090nko">
「きて――わたし――いく――いく――
　ぁっ、ん――んく――ん――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	CreateTextureEX("絵背景103_l", 100, Center, Middle, "cg/ev/l/ev1840ノーコ同人誌再現正常位d_l.jpg");
	Move("絵背景103_l", 0, -800, 0, Dxl1, true);
	Fade("絵背景103_l", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/aba24/030100100nko">
「ぁ――ぁ、あ、ああああ――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/aba24/030100110nko">
「ああああああああああああ――――ッ」


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/aba24/030100120nki">
「オレも――んっ、んんんッ！　んんッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);


	CreateColorEX("白フラ", 15000, "WHITE");

//◆演出指定：射精

	Fade("白フラ", 0, 1000, null, true);

//◆ＥＶ："ev1840ノーコ同人誌再現正常位.txt" 差分Ｅ
	CreateTextureEX("絵背景104", 100, Center, Middle, "cg/ev/ev1840ノーコ同人誌再現正常位e.jpg");
	Fade("絵背景104", 300, 1000, null, true);
	Delete("絵背景103_l");
	Fade("白フラ", 300, 0, null, true);
	Fade("白フラ", 100, 1000, null, true);
	Fade("白フラ", 1500, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/aba24/030100130nki">
「はぁっ、はぁっ、はぁっ、はぁっ！」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/aba24/030100140nko">
「ぁ……ぁ……ん……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/aba24/030100150nko">
「しろいので……べとべと……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/aba24/030100160nki">
「どうだッ！？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/aba24/030100170nko">
「きもち……よかった……です」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/aba24/030100180nko">
「おねがい、もう……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Delete("白フラ");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/aba24/030100190nko">
「もう、はなさないで」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/aba24/030100200nko">
「ずっと……このままで……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/aba24/030100210nki">
「……ああ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/aba24/030100220nki">
「オレは……これが……好きなんだ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/aba24/030100230nki">
「絶対……誰にも、邪魔なんてさせるか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1900);}


	TextBoxDelete(150);

	CreateTextureEX("絵背景104_l", 100, Center, Middle, "cg/ev/l/ev1840ノーコ同人誌再現正常位e_l.jpg");
	Move("絵背景104_l", 0, -800, 0, Dxl1, true);
	Fade("絵背景104_l", 1000, 1000, null, true);
	Delete("絵背景104");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/aba24/030100240nko">
「にとり……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/aba24/030100250nko">
「また……おっきくなってる」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/aba24/030100260nki">
「……そんな簡単に治まるかよ！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/aba24/030100270nki">
「オラ、ノーコ！　次はこっちだッ！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/aba24/030100280nko">
「……うん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/aba24/030100290nki">
「ほら？　おねだりは？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/aba24/030100300nko">
「ごしゅじんさま……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/aba24/030100310nko">
「わたしの……はしたない……うしろのあなに……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/aba24/030100320nko">
「ください」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/aba24/030100330nki">
「うおおおっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

	DeleteAllSt(0,false);
	Delete("@OnBG*");
	Delete("絵背景*");

	CreateTextureEX("絵背景103_l", 100, Center, Middle, "cg/ev/l/ev1840ノーコ同人誌再現正常位d_l.jpg");
	Move("絵背景103_l", 0, -200, -400, Dxl1, true);
	Fade("絵色白", 500, 0, null, false);
	Fade("絵背景103_l", 500, 1000, null, false);
	Move("絵背景103_l", 2000, -800, 0, DxlAuto, true);

	Delete("絵色白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/aba24/030100340nko">
「ぁあっ！　あ！　ああ！　あああ！！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/aba24/030100350nki">
「ああ……クソッ！　クソッ！　クソッ！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/aba24/030100360nki">
「このド淫乱め！　こんなに締め付けやがって！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1901);}


	CreateTextureEX("絵背景101_l", 100, Center, Middle, "cg/ev/l/ev1840ノーコ同人誌再現正常位b_l.jpg");
	Move("絵背景101_l", 0, -800, 0, Dxl1, true);
	Fade("絵背景101_l", 500, 1000, null, true);

	Delete("絵背景103_l");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/aba24/030100370nko">
「ごめんなさい……ごめんなさい……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/aba24/030100380nko">
「わたしを……すてない？」


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/aba24/030100390nki">
「捨てるわけねぇだろ！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateTextureEX("絵背景103_l", 100, Center, Middle, "cg/ev/l/ev1840ノーコ同人誌再現正常位d_l.jpg");
	Move("絵背景103_l", 0, -800, 0, Dxl1, true);
	Fade("絵背景103_l", 500, 1000, null, true);

	Delete("絵背景101_l");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/aba24/030100400nki">
「こんなに気持ちいいこと、やめられるかっ！！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/aba24/030100410nki">
「オレは……絶対、このまま、逃げ切ってやる！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	WaitKey(1000);

	SetVolumeEX("@xbgm*", 4000, 0, null);

	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 3000, 1000, null, true);

	WaitKey(2000);


	EndScene();
}
