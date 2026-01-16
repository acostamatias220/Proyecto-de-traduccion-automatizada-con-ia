
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ab2210沙紅羅_h.nss_MAIN
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
	$GameName = "ab2230カゴメ.nss";

	//★リコレクション用★★★★★★★★★★★★★★★
	ReConquest();
	#ab2210沙紅羅_h=true;
	if($PLACE_reco){
		RecoOut();
	}
}

scene ab2210沙紅羅_h.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="4120">
////////////header////////////
//file name "ab2210沙紅羅_h.nss"
//title "裸になる"
//previous "ab2200沙紅羅.nss"

////////////footer////////////
//next "沙紅羅" "ab2230カゴメアソビ.nss"

////////////body////////////

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
if(!$PLACE_reco){
//============================================

//■再定義定型文
	PrintBG("上背景", 30000);

	ClockTime(2210);
	ClockDelete(0,true);

//◆場所：バックギャモン_店内
	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);
	FadeDelete("上背景", 0, null, true);


//◆ＥＶ："ev/ev2210沙紅羅ストリップ.txt" 差分Ａ
//	CreateTextureEX("絵背景100_l", 100, Center, Middle, "cg/ev/l/ev2210沙紅羅ストリップa_l.jpg");
//	Fade("絵背景100_l", 1000, 1000, null, false);

//	Move("絵背景100_l", 0, -384, -384, null, true);
//	Fade("絵背景100_l", 1500, 1000, null, false);
//	Move("絵背景100_l", 4000, -1024, 0, Dxl1, true);

	SetVolume("@x*", 3000, 0, NULL);
	SoundPlay("@xsong01_noeff",3000,450,true);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/ev/ev2210沙紅羅ストリップa.jpg");
	Fade("絵背景100", 4000, 1000, null, true);
	Delete("絵背景100_l");

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
}else{
	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);

	ClockTime(2210);

	SetVolume("@x*", 3000, 0, NULL);
	SoundPlay("@xsong01_noeff",3000,450,true);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/ev/ev2210沙紅羅ストリップa.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	//リコ背景抹消
	RecoIn();
}
//========================================================


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200010skr">
「…………」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200020ksr">
「……もう真っ赤だぞ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200030skr">
「――――ッ！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200040ksr">
「興奮してんのか？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200050skr">
「そんなわけ、ない！」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200060skr">
「ただ、恥ずかしいに、決まってる！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200070skr">
「こんなの、もうやめてください」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200080ksr">
「やめんのか？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200090ksr">
「コイツ、欲しいんだよな」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200100skr">
「……くっ！」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200110ksr">
「コイツ、欲しいんだよなぁ！？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200120skr">
「……はい」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200130ksr">
「で？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200140ksr">
「立ってるだけか？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200150skr">
「…………」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200160ksr">
「突っ立ってるだけかって聞いてんだよッ！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200170skr">
「……いいえ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200180ksr">
「じゃ、どうする？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200190skr">
「…………」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//あきゅん「修正指示：ＳＥ入れてください」
//※脱ぐ音と推測し、衣擦れ音を設置しました（mngw 11/18）

	CreateSE("SE01","se動作_衣擦れ");
	MusicStart("SE01",0,700,0,1000,null,false);

//◆ＥＶ："ev/ev2210沙紅羅ストリップ.txt" 差分Ｂ
	CreateTextureEX("絵背景101_l", 100, Center, Middle, "cg/ev/l/ev2210沙紅羅ストリップb_l.jpg");
	Move("絵背景101_l", 0, -600, -400, Dxl1, true);
	Fade("絵背景101_l", 1000, 1000, null, false);
	Move("絵背景101_l", 3000, -900, -200, Dxl1, true);
	Delete("絵背景100");

//◆演出指定：上を脱ぐ

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200200skr">
「…………ッ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200210ksr">
「へえ……意外」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200220ksr">
「大人しく、脱ぐのな」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200230skr">
「う……うう……！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200240ksr">
「オレに媚びを売って来るもんだと――」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200250skr">
「そんなわけ――ッ！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200260ksr">
「子分ふたりと、いつもよろしくやってんだろ？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200270skr">
「違う！　あいつらを、バカにしないで下さいッ！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200280ksr">
「…………」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200290ksr">
「なんつーかおまえ。
　掘り出しもんだねぇ、ははっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2211);


//	TextBoxDelete(150);
	CreateTextureEX("絵背景101", 100, Center, Middle, "cg/ev/ev2210沙紅羅ストリップb.jpg");
	Fade("絵背景101", 1000, 1000, null, true);
	Delete("絵背景101_l");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200300skr">
「…………っ！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200310ksr">
「で？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200320skr">
「まだ……か？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200330skr">
「まだ、やるん……ですか？」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200340ksr">
「は？　これから、本番だぜ」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200350skr">
「…………」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200360ksr">
「下、脱げよ」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200370skr">
「…………」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200380ksr">
「ほら、下脱げって言ってんだよ」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200390skr">
「……ふざ……ふざけ、ないで」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200400ksr">
「ふざけてなんてねぇよ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200410ksr">
「なあ、沙紅羅？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200420ksr">
「おまえの叶えたい願いってのは、なんだ？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200430ksr">
「そんなところで躊躇するような、チンケな願いか？」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200440skr">
「アタシは……」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200450skr">
「…………」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200460skr">
「やり直さなきゃ」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200470ksr">
「やり直す？」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200480skr">
「――――ッ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200490skr">
「――ぅ、――ぅ、――――ぅぅ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	CreateTextureEX("絵背景101_m", 100, Center, Middle, "cg/ev/m/ev2210沙紅羅ストリップb_m.jpg");
	Move("絵背景101_m", 0, 0, -200, Dxl1, false);
	Fade("絵背景101_m", 1000, 1000, null, true);
	Delete("絵背景101");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　スカートに手をかけたまま、沙紅羅の動きが止まる。

　行き場を失って、指先だけがデニム生地を掻く。


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2212);


//	TextBoxDelete(150);
	CreateTextureEX("絵背景101", 100, Center, Middle, "cg/ev/ev2210沙紅羅ストリップb.jpg");
	Fade("絵背景101", 1000, 1000, null, true);
	Delete("絵背景101_m");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200500ksr">
「恥ずかしいのか？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200510ksr">
「それとも、屈辱か？」



//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200520skr">
「ねえ、双六さん……あんたは……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200530skr">
「なんで……こんなこと……」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200540skr">
「双一の、命令だから？
　それとも……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200550skr">
「こんなアタシを見て……楽しいの？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200560ksr">
「ゾクゾクするね」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200570ksr">
「オレはな、沙紅羅」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200580ksr">
「裸のおまえが、見たいんだ」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200590skr">
「――――っ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200600ksr">
「下ろせ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200610skr">
「でも――」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200620ksr">
「いいから下ろせよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	TextBoxDelete(150);

//◆ＥＶ："ev/ev2210沙紅羅ストリップ.txt" 差分Ｃ
	CreateTextureEX("絵背景102_l", 100, Center, Middle, "cg/ev/l/ev2210沙紅羅ストリップc_l.jpg");
	Move("絵背景102_l", 0, -300, -400, Dxl1, true);
	Fade("絵背景102_l", 1000, 1000, null, false);
	Move("絵背景102_l", 5000, -900, -200, Dxl1, false);
	WaitKey(1000);
	Delete("絵背景101");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200630skr">
「…………」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200640skr">
「これで……いいですか？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200650skr">
「もう、これで……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200660skr">
「これで、許してくれますか……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateTextureEX("絵背景102", 100, Center, Middle, "cg/ev/ev2210沙紅羅ストリップc.jpg");
	Fade("絵背景102", 1000, 1000, null, true);
	Delete("絵背景102_l");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200670ksr">
「…………」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200680ksr">
「ぷっ！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200690ksr">
「ぷはっ、ぷははははははははははは！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200700ksr">
「おいおいねーちゃんおかしいだろわかんだろチッとは頭使えよオイ！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200710ksr">
「初対面の男の前で下着姿になっておいて、なに今更恥ずかしがってんだ？　おかしいだろ？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200720ksr">
「ここまで来たらあとは一緒」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200730ksr">
「ガキじゃねぇんだ。わかるだろ？」



//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200740skr">
「……がい」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200750ksr">
「ん？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200760skr">
「ぉねがい……あります」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200770ksr">
「なんだ？　言ってみな」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200780skr">
「見えてるんですよね」


　沙紅羅が視線で監視カメラを差す。


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200790ksr">
「ん……？　ああ、双一親分か？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200800skr">
「切ってください」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200810ksr">
「……は？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2213);


//	TextBoxDelete(150);

	CreateTextureEX("絵背景102_m", 100, Center, Middle, "cg/ev/m/ev2210沙紅羅ストリップc_m.jpg");
	Move("絵背景102_m", 0, -500, -50, Dxl1, true);
	Fade("絵背景102_m", 1000, 1000, null, true);
	Delete("絵背景102");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200820skr">
「覚悟は、できてます」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200830skr">
「双六さんが、相手なら、いいです」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200840skr">
「でも……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200850skr">
「……ふたりで、お願いします」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200860skr">
「アタシ……これ以上は、もう……！」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200870ksr">
「脱ぎ始めたな」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200880skr">
「え――？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200890ksr">
「双一親分は、裸が好きなんだ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200900ksr">
「なんでかわかるか？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆ＳＥ：しゃべりながらガサゴソ、カチッ！ ローターの包装を外して、電池を入れる

	CreateSE("SE01","se動作_バッグ漁る");
	MusicStart("SE01",0,700,0,1000,null,false);


	CreateTextureEX("絵背景102", 100, Center, Middle, "cg/ev/ev2210沙紅羅ストリップc.jpg");
	Fade("絵背景102", 1000, 1000, null, true);
	Delete("絵背景102_m");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200910ksr">
「普段着飾ってる人間のその奧の奧――」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200920ksr">
「本性が、剥き出しになるからだよ」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200930skr">
「なに……それは……？」

//◆ＳＥ：バイブレーション
{
	CreateSE("SE02","se擬音_バイブ01_l");
	MusicStart("SE02",0,700,0,1000,null,true);
}

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200940ksr">
「怖がることはねぇだろ。普通のオモチャだよ」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200950skr">
「ぁ……やだ……やめ……やめて――！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200960ksr">
「これ以上、脱ぎたくねぇんだろ？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100200970ksr">
「だったらコレで、我慢しな！」


{	SetVolumeEX("SE02", 500, 0, null);}

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2214);


	TextBoxDelete(150);

//◆ＥＶ："ev/ev2210沙紅羅ストリップ.txt" 差分Ｄ
	CreateTextureEX("絵背景102_l", 100, Center, Middle, "cg/ev/l/ev2210沙紅羅ストリップc_l.jpg");
	Move("絵背景102_l", 0, -300, -400, Dxl1, true);
	Fade("絵背景102_l", 500, 1000, null, true);
	Delete("絵背景102");
	CreateTextureEX("絵背景103_l", 100, Center, Middle, "cg/ev/l/ev2210沙紅羅ストリップd_l.jpg");
	Move("絵背景103_l", 0, -300, -400, Dxl1, true);
	Fade("絵背景103_l", 1000, 1000, null, true);
	Delete("絵背景102_l");
	Shake("絵背景103_l", 300, 5, 5, 0, 0, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200980skr">
「やっ！　ぁ――ひゃっ！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＥＶ："ev/ev2210沙紅羅ストリップ.txt" 差分Ｄ
	CreateTextureEX("絵背景103", 100, Center, Middle, "cg/ev/ev2210沙紅羅ストリップd.jpg");
	Fade("絵背景103", 1000, 1000, null, true);
	Delete("絵背景103_l");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100200990skr">
「ダメ、外し――」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201000ksr">
「触んな！」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201010skr">
「え……？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201020ksr">
「触ったら、オシマイだ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201030skr">
「そん……な……」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201040ksr">
「ローター、使ったことないのか？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201050skr">
「ローター？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201060ksr">
「……やれやれ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201070ksr">
「コレだから田舎モンは、なあッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2215);

	TextBoxDelete(150);

//◆ＥＶ："ev/ev2210沙紅羅ストリップ.txt" 差分Ｅ
	CreateTextureEX("絵背景104_l", 100, Center, Middle, "cg/ev/l/ev2210沙紅羅ストリップe_l.jpg");
	Move("絵背景104_l", 0, -300, -400, Dxl1, true);
	Fade("絵背景104_l", 1000, 1000, null, true);
	Delete("絵背景103");

	#ev2210沙紅羅ストリップe = true;

//◆ＳＥ：ローター始動

	CreateSE("SE02","se擬音_バイブ01_l");
	MusicStart("SE02",0,700,0,1000,null,true);
	WaitKey(500);

	Shake("絵背景104_l", 300, 5, 5, 0, 0, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201080skr">
「きゃっ！　な、なんだ！？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201090skr">
「ちょっと！　これ、震えてる――！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201100ksr">
「気持ちいいか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景104_l2", 100, Center, Middle, "cg/ev/l/ev2210沙紅羅ストリップe_l.jpg");
	Move("絵背景104_l2", 0, -900, -150, Dxl1, true);
	Fade("絵背景104_l2", 1000, 1000, null, true);
	Delete("絵背景104_l");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201110skr">
「な、なに言って――？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201120skr">
「気持ちいいとか、悪いとか、そんな――！」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201130skr">
「あ……なに？　いや、変……変な……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201140skr">
「やだ！　やだやだ！　なんでこんなこと――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201150skr">
「え――？　うそ――なに――
　ぁぅ……ぁ……ちょっと……これ……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201160skr">
「へんな……感じ……おかしい……
　引っ張られる……みたいに……」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201170ksr">
「感じてるじゃねぇか」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201180skr">
「そ、そういうのじゃっ、ない……
　ない……です、感じてなんて……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201190skr">
「そんな、ただの……振動……だし。
　このくらい……なんでも……」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201200ksr">
「気持ちいいって、顔に出てるぞ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201210skr">
「そんなこと、言わないで――」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201220ksr">
「双一親分にも、見られてるだろうな」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201230skr">
「あっ、や……だめ……そんな……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201240skr">
「ぁ……ぁ、ああ……あ…………っ」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2216);


	TextBoxDelete(150);

//◆ＥＶ："ev/ev2210沙紅羅銃フェラ.txt" 差分Ａ
	CreateTextureEX("絵背景200_m", 100, Center, Middle, "cg/ev/m/ev2210沙紅羅銃フェラa_m.jpg");
	Move("絵背景200_m", 0, -200, -300, Dxl1, false);
	Fade("絵背景200_m", 1000, 1000, null, false);
	Move("絵背景200_m", 3000, 0, 0, Dxl1, true);
	Delete("絵背景104_l");

	CreateTextureEX("絵背景200", 100, Center, Middle, "cg/ev/ev2210沙紅羅銃フェラa.jpg");
	Fade("絵背景200", 1000, 1000, null, true);
	Delete("絵背景200_m");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201250skr">
「んぁ……ん……んん……ん……」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201260ksr">
「立ってられなかったか？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201270skr">
「そんな……の、だって……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201280skr">
「ぁ――ん――んん――んん――っ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201290ksr">
「また気持ちよくなってきた？」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201300skr">
「そ、そういうのじゃ――ああっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆ＥＶ："ev/ev2210沙紅羅銃フェラ.txt" 差分Ｂ
	CreateTextureEX("絵背景200_l", 100, Center, Middle, "cg/ev/l/ev2210沙紅羅銃フェラa_l.jpg");
	Move("絵背景200_l", 0, -600, -550, Dxl1, false);
	Fade("絵背景200_l", 1000, 1000, null, true);
	Delete("絵背景200");
	
	WaitKey(500);

	CreateTextureEX("絵背景201_l", 100, Center, Middle, "cg/ev/l/ev2210沙紅羅銃フェラb_l.jpg");
	Move("絵背景201_l", 0, -600, -550, Dxl1, false);
	Fade("絵背景201_l", 500, 1000, null, true);
	Delete("絵背景200_l");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]

　靴を脱いだ双六の指先が、沙紅羅の腿へ伸びる。

　指先が、下着の上からローターを押しつける。


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2217);


//	TextBoxDelete(150);

	Move("絵背景201_l", 1000, -200, -150, Dxl1, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201310skr">
「ちょ――やめ！　やめてください！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201320ksr">
「感じすぎちまうか？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201330skr">
「そ……そうじゃ、なくて――んんんッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("SE02", 500, 0, null);


//◆ＳＥ：ローター音が押しつけられたりして波打つ
	CreateSE("SE03","se擬音_バイブ03_l");
	MusicStart("SE03",0,700,0,1000,null,true);

	CreateTextureEX("絵背景201", 100, Center, Middle, "cg/ev/ev2210沙紅羅銃フェラb.jpg");
	Fade("絵背景201", 1000, 1000, null, true);
	Delete("絵背景200_l");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201340ksr">
「ホラ、ホラホラホラ！
　正直になれよ。気持ちいいんだろ？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201350skr">
「……んな……こと……！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201360ksr">
「あ、そう」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201370ksr">
「まだ足りねぇか」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201380skr">
「え……？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201390skr">
「――――ッッ！！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolumeEX("SE03", 500, 0, null);

//◆ＳＥ：ローター強

	CreateSE("SE04","se擬音_バイブ04_l");
	MusicStart("SE04",500,700,0,1000,null,true);

	Shake("絵背景200", 300, 5, 5, 0, 0, 500, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320a]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201400skr">
「ぁぁ――――ッ、ぁぁぁぁ――――ッ！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201410skr">
「ぁぅ――ぁぁ――ん――んん――っ！
　んんん――ん――んんんん――っっ！！」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201420ksr">
「甘くて良い声じゃねーか」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201430ksr">
「気持ちいいだろ？
　色んなものが、一気にどうでもよくなるだろ？」

//◆音声指示：快感を堪えながら、必死に首を振る
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201440skr">
「ん――んんんん――！！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201450ksr">
「コレ、欲しいんじゃねぇのか？」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201460skr">
「ほひ……んんッ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201470skr">
「欲しい……欲しい、です！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201480ksr">
「コレが、おまえの願いだな？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201490skr">
「はい……ん、んん……ッ！
　コレが……アタシの……願い、ですッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201500ksr">
「じゃ、くわえろ」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201510skr">
「え……」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201520ksr">
「アザナエル、くわえろっつってんだよッ！！」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201530skr">
「ひぁっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2218);


	TextBoxDelete(150);

//◆ＥＶ："ev/ev2210沙紅羅銃フェラ.txt" 差分Ｃ
	CreateTextureEX("絵背景202_l", 100, Center, Middle, "cg/ev/l/ev2210沙紅羅銃フェラc_l.jpg");
	Move("絵背景202_l", 0, -200, -150, Dxl1, false);
	Fade("絵背景202_l", 1000, 1000, null, true);
	Delete("絵背景201");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201540ksr">
「どした？　冷たいか？」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201550skr">
「は……はい」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201560skr">
「つめ……たいです」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201570ksr">
「おまえが温めんだよ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201580skr">
「温める？」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201590ksr">
「冷たいまま、おまえの中に入れられたいか？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201600skr">
「入れる……って？」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201610ksr">
「ほら、舌出せ舌」



//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201620skr">
「……どうしても？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201630skr">
「どうしても……ですか？」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201640skr">
「どうしても、これじゃなきゃだめですか？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201650skr">
「あ……アタシ……その……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201660skr">
「はじめて……なんです」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201670skr">
「だめ……ですか？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201680ksr">
「ああ……ああ……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	CreateTextureEX("絵背景202", 100, Center, Middle, "cg/ev/ev2210沙紅羅銃フェラc.jpg");
	Fade("絵背景202", 1000, 1000, null, true);
	Delete("絵背景202_l");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201690ksr">
「おまえ……ホントに、可愛い女だ……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201700skr">
「双六さん……？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201710ksr">
「だから、壊してやりたくなるね」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201720skr">
「え――ぁむッ！」

{	BGPlainShake(110, 500, 0, 8, 0, 0, 1000, Dxl1, true);
//	Shake("絵背景202", 300, 5, 5, 0, 0, 500, null, false);
}

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201730ksr">
「オラ、舌出せ舌！　わかんだろ！」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201740skr">
「んむ――んむ、んん――」


　銃身が、唇を横殴りに擦りつけられる。


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＥＶ："ev/ev2210沙紅羅銃フェラ.txt" 差分Ｄ
	CreateTextureEX("絵背景203", 100, Center, Middle, "cg/ev/ev2210沙紅羅銃フェラd.jpg");
	Fade("絵背景203", 1000, 1000, null, true);
	Delete("絵背景202");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201750skr">
「んっ！　んんっ！　んんん――！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201760ksr">
「へぇ。アザナエル……いらねぇのか」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201770ksr">
「見ず知らずの人間に、こんな肌まで晒しておいて、なにもせずに帰んのか？」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201780skr">
「ん……んん……ん……ん……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201790skr">
「れ――れろ――れろ――ん――」


　固く閉ざされていた唇から、ちろりと舌が出る。


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201800skr">
「れろ……れろ……ん……」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201810ksr">
「それでおっ立つと思ってんのか？
　もっと気合い入れて！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2219);


	TextBoxDelete(150);

	CreateTextureEX("絵背景203_l", 100, Center, Middle, "cg/ev/l/ev2210沙紅羅銃フェラd_l.jpg");
	Move("絵背景203_l", 0, -200, -150, Dxl1, false);
	Fade("絵背景203_l", 1000, 1000, null, true);
	Delete("絵背景203");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201820skr">
「ぁんん……んん……」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201830skr">
「んれろ……んん……んちゅ……ん……ん！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201840ksr">
「先っぽから――根本まで」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201850skr">
「はぅ……んれろ……んちゅっ！　ちゅ！
　ちゅうっ、むちゅ……んんん……」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201860ksr">
「男のアレだと思って、丁寧に舐めな」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201870skr">
「れろっ、ちゅうっ、ちゅっ！
　むちゅ――ちゅばっ、むちゅう…ぅぅぅう」


　銃身が唾液に濡れ、黒光りする。



//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201880ksr">
「……サマになってきたじゃねぇか」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201890ksr">
「ほら……ご褒美だッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＥＶ："ev/ev2210沙紅羅銃フェラ.txt" 差分Ｅ
	CreateTextureEX("絵背景204", 100, Center, Middle, "cg/ev/ev2210沙紅羅銃フェラe.jpg");
	Fade("絵背景204", 1000, 1000, null, true);
	Delete("絵背景203_l");

	SetVolumeEX("SE04", 500, 0, null);

//◆ＳＥ：ローターが押しつけられる
	CreateSE("SE01","se擬音_バイブ02_l");
	MusicStart("SE01",50,700,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201900skr">
「んんんん――――っ！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201910skr">
「んぁっ！　ああっ！　あっ！
　ダメ、そこ――ダメ――ダメです！！」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201920ksr">
「おい口！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201930skr">
「ぁあっ！　んっ、んちゅ――
　んぁっ！　あっ、あ、あああああ――……！」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100201940ksr">
「気合い入れてしゃぶれ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201950skr">
「ぁむ――っ！！？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201960skr">
「はぐっ、ん……んぐぐ……か――ぷはっ！
　けほっ――けほっけほっけほ――」

//【沙紅羅】
//<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201970skr">
//「なに一息ついてんだよ！」
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000102660ksr">
「――やれやれ」


{	SetVolume("SE01", 1000, 0, null);}

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2220);

//	TextBoxDelete(150);

	SetVolumeEX("SE01", 1000, 0, null);

//◆ＳＥ：ローターが押しつけられる
	CreateSE("SE02","se擬音_バイブ02_l");
	MusicStart("SE02",0,700,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201980skr">
「ふぁあっ！　あっ！　あっ！　あむ――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100201990skr">
「んむ――んむっ、んむっ、んっんっん――！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202000skr">
「んちゅっ、んちゅっ！　んっ！　んっ！　ん――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202010skr">
「んぁっ、ぁむっ、んちゅ……んぁぁぁぁっ！
　んちゅっ、んちゅ、んぁっああっ！　んんん――！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202020ksr">
「どうだ？　だんだん、気持ちよくなってきただろ？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202030ksr">
「口の中に、本物、突っ込まれてるみたいだろ？」


//◆音声指示：首を横に振る
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202040skr">
「んんんんん――！！」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202050ksr">
「ははは！　目から涙まで垂らして、良く言うぜ！」


{
//◆ＳＥ：セイフティ解除
	CreateSE("SE03","se銃_セーフ解除");
	MusicStart("SE03",0,700,0,1000,null,false);
	}


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202060skr">
「ん――！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景204_m", 100, Center, Middle, "cg/ev/m/ev2210沙紅羅銃フェラe_m.jpg");
	Move("絵背景204_m", 0, 0, -50, Dxl1, false);
	Fade("絵背景204_m", 1000, 1000, null, false);
	Move("絵背景204_m",2000, -100, -150, Dxl1, true);
	Delete("絵背景204");

	WaitKey(500);

//◆ＳＥ：ハンマーコック
	CreateSE("SE04","se銃_撃鉄起こす");
	MusicStart("SE04",0,700,0,1000,null,false);

//◆ＥＶ："ev/ev2210沙紅羅銃フェラ.txt" 差分Ｆ
	CreateTextureEX("絵背景205_m", 100, Center, Middle, "cg/ev/m/ev2210沙紅羅銃フェラf_m.jpg");
	Move("絵背景205_m", 0, -100, -150, Dxl1, false);
	Fade("絵背景205_m", 1000, 1000, null, true);
	Delete("絵背景204_m");
	#ev2210沙紅羅銃フェラf = true;



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202070skr">
「んんっ！？　ん！　ん！　んはっ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202080skr">
「す……双六さん、それ――！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202090ksr">
「カゴメアソビ、したいんだろ？」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202100skr">
「や……ちょっと、やめ――んむぅぅぅっ！！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202110ksr">
「カゴメカゴメ、籠の中の鳥は――
　ははははは！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202120skr">
「んぁっ、んぐ――ぷはっ！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202130ksr">
「なんだよ？　さっきとちげぇぞ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@x*", 10000, 0, null);
	SetVolumeEX("@SE*", 10000, 0, null);

	ClockTime(2221);


//	TextBoxDelete(150);


//◆音声指示：最後の「ぁああああッ」でローターに強弱をつけられる

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202140skr">
「ば……バカ言わないでくださいッ！
　同じ風になんて――ぁああああッ！！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202150ksr">
「いついつでやる――」


//◆演出指定：沙紅羅半泣き：所々銃をくわえさせられながら
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202160skr">
「あああっ、あっ！　あ――だめ――だめ！
　許してッ！　お願い――ぁむんんん――！！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202170ksr">
「夜明けの晩に――」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202180skr">
「はむっ、んちゅっ、んぁっ！　あっ、ぁむ！
　なんか――んむっ！　んちゅばっ！　ああああ！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202190ksr">
「鶴と亀が滑った――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202200skr">
「わかんなく――なって、だめ――待って！
　覚悟が――んむっ！　んちゅっ！　んちゅるるるッ！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202210ksr">
「うしろの正面――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202220skr">
「はぅっ！　ぅ――ぅぅぅ――ぅぅッ！
　ぅぁっ！　ぁっ！　むあっ！　あああああ――」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202230ksr">
「だーあれ」



{	SetVolumeEX("@x*", 10, 0, null);
	SetVolumeEX("SE02", 0, 0, null);}

{	TextBoxDelete(150);}

{	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 2000, 1000, null, true);
}


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202240ksr">
「バァン！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202250skr">
「んぁああああああああああああッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：失禁です

//◆ＥＶ："ev/ev2210沙紅羅銃フェラ.txt" 差分Ｇ
	CreateTextureEX("絵背景206_l", 100, Center, Middle, "cg/ev/l/ev2210沙紅羅銃フェラg_l.jpg");
	Move("絵背景206_l", 0, -200, -150, Dxl1, false);
	Fade("絵背景206_l", 0, 1000, null, true);
	Delete("絵背景205");

	Fade("絵色白", 4000, 0, null, true);
	Delete("絵色白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202260skr">
「ぁ……ぁ……ぁぁ……ぁ……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202270skr">
「ん……んぐっ、ん……うっ、う、う、ううううう……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2222);

	TextBoxDelete(150);

	CreateTextureEX("絵背景206_m", 100, Center, Middle, "cg/ev/m/ev2210沙紅羅銃フェラg_m.jpg");
	Fade("絵背景206_m", 1000, 1000, null, true);
	Delete("絵背景206_l");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202280ksr">
「あーあ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202290ksr">
「あーあーあー！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202300skr">
「うう、うう、うぁ……うぁあああぁぁぁ……」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202310ksr">
「あーあ。どうすんだコレ？　漏らしちまって」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202320skr">
「ぅぁ……ぁ……え？　もれッ、漏れて……？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Move("絵背景206_m", 3000, -400, -250, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202330skr">
「嘘……ウソ……うそ……でしょ……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202340skr">
「アタシ……アタシ……あああああ……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景206", 100, Center, Middle, "cg/ev/ev2210沙紅羅銃フェラg.jpg");
	Fade("絵背景206", 1000, 1000, null, true);
	Delete("絵背景206_m");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202350ksr">
「どうだ？　わかったか？」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202360ksr">
「アザナエルを撃つなんてのは、並の覚悟じゃできねぇ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202370ksr">
「今ならまだ戻れんだ。堅気の世界で生きんだな」



//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202380skr">
「ひぐっ、ぅ……ぅぅ……う……」



//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202390ksr">
「なんか、言いたいことでもあっか？」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202400skr">
「わっ、わた……し……」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202410skr">
「双六さんの……前で……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202420skr">
「漏らし……ちゃった……ぅぁっ、ん……」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202430ksr">
「ん？　ええと――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202440skr">
「……ら……ぃ、です……か？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202450ksr">
「あ？」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202460skr">
「アタシ……の、こと……
　こんな……みっともなくて……嫌い、ですか？」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202470ksr">
「いやいや、そうじゃなくてな！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202480ksr">
「もう、わかるだろ？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202490ksr">
「おまえは、カゴメアソビなんかしないで、ひとりできちっと、自分の幸せ守ってれば――」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202500ksr">
「ここは、おまえみたいないい女が来るところじゃねぇんだよ！」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202510skr">
「いい……女……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202520skr">
「こんなでも……こんなでも……！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202530skr">
「ホントに……そう、言ってくれるんですか……？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202540ksr">
「ああ！　いい女だ！
　だから泣くな！　ほら、泣くなって！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2223);


	TextBoxDelete(150);

	CreateTextureEX("絵背景206_l", 100, Center, Middle, "cg/ev/l/ev2210沙紅羅銃フェラg_l.jpg");
	Move("絵背景206_l", 0, -200, -150, Dxl1, false);
	Fade("絵背景206_l", 1000, 1000, null, true);
	Delete("絵背景206");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202550skr">
「……ください」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202560ksr">
「ん？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202570skr">
「アザナエル、ください！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202580ksr">
「うおっ？」


　沙紅羅は自分の唾液で濡れたアザナエルを、手に取る。


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	CreateTextureEX("絵背景206", 100, Center, Middle, "cg/ev/ev2210沙紅羅銃フェラg.jpg");
	Fade("絵背景206", 1000, 1000, null, true);
	Delete("絵背景206_l");


	SoundPlay("@xbgm25",0,450,true);





//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202590skr">
「アタシに……入れれば、いいんですよね？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202600skr">
「入れれば、願い、叶えてくれるんですよね？」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202610ksr">
「お、おい！　ちょっと待て！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202620ksr">
「おまえなに言ってるかわかってんのか？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202630ksr">
「どうせ男知らねぇんだろ？　なのに――」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202640skr">
「願い、叶えたいんです」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202650skr">
「今日あったこと――全部なくして」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202660skr">
「みんな、みんな、不幸にならずに済む１日にして」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202670skr">
「証明するんです」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202680skr">
「人間、どこからでもやり直せるって」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202690ksr">
「やり直せる……？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202700skr">
「そうです」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202710skr">
「過去に過ちを犯したからって」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202720skr">
「どうしようもない人生を歩んだからって」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202730skr">
「取り返しがつかないなんて……嘘です！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2224);


	TextBoxDelete(150);

	CreateTextureEX("絵背景206_l", 100, Center, Middle, "cg/ev/l/ev2210沙紅羅銃フェラg_l.jpg");
	Move("絵背景206_l", 0, -200, -150, Dxl1, false);
	Fade("絵背景206_l", 1000, 1000, null, true);
	Delete("絵背景206");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202740skr">
「だってそうでしょう！？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202750skr">
「アタシだって、たくさん間違いを犯しました！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202760skr">
「そのせいで、弟と離ればなれになっちまって――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202770skr">
「でも、まだ信じてるんです！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202780skr">
「今日、弟に本が届けば、アタシたち、やり直せるって！」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202790skr">
「まっとうで、幸せな、普通の姉弟になれるって」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202800ksr">
「沙紅羅――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202810skr">
「アタシは、カゴメアソビをします！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202820skr">
「それは、アタシのためじゃないんです！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202830skr">
「誰かのためじゃないんです！」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202840skr">
「双六さん！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202850skr">
「あなたがやり直せるって、証明するためです！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202860skr">
「だから…………ッ」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202870ksr">
「よこせ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202880skr">
「嫌です！　アタシは――」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202890ksr">
「いいから、よこせ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202900skr">
「ダメ！　アタシは――」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202910ksr">
「よこせって言ってんだッ！！」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202920skr">
「きゃ――ッ！」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202930ksr">
「ふん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

	CreateTextureEX("絵背景207", 100, Center, Middle, "cg/ev/ev2210沙紅羅銃フェラh.jpg");
	Fade("絵背景207", 0, 1000, null, true);
	Delete("絵背景206_l");

	Shake("絵背景207", 300, 5, 5, 0, 0, 500, null, false);

//◆ＳＥ：ゴトン！　アザナエルが床に落ちる
//	CreateSE("SE01","se銃_落とす02");
	CreateSE("SE01","se銃_置く");
	MusicStart("SE01",0,700,0,1000,null,false);
//	SetVolumeEX("@x*", 300, 0, null);

	Fade("絵色白", 200, 0, null, true);
	Delete("絵色白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202940skr">
「双六……さん？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202950ksr">
「初めてなのに、こんな思いさせて、悪い」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202960skr">
「あ、あの、それじゃ……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202970skr">
「責任……とって、くれますか？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100202980ksr">
「オレが最初で、いいんだな？」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100202990skr">
「……はい」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203000skr">
「あの……でも、ひとつだけ、いいですか？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100203010ksr">
「なんだ？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203020skr">
「カメラ……切ってくれますか？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100203030ksr">
「カメラ……？　ああ、アレか」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100203040ksr">
「心配すんな」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100203050ksr">
「最初から、なにも映ってねぇよ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203060skr">
「え？　でも――」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100203070ksr">
「ここには、オレとおまえ、ふたりっきりだ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100203080ksr">
「それでいいだろ？」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203090skr">
「……はい」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 3000, 0, null);

	ClockTime(2225);

	TextBoxDelete(150);

	PrintFadeNut("上背景", 2000, true);

	DeleteSt("C", 0,true);
	Delete("@OnBG*");


	SoundPlay("@xbgm29",0,450,true);


	FadeDelete("上背景", 0, null, true);

	WaitKey(1000);

	Delete("絵背景207");

//◆ＥＶ："ev/ev2210沙紅羅正常位.txt" 差分Ａ
	CreateTextureEX("絵背景300_l", 100, Center, Middle, "cg/ev/l/ev2210沙紅羅正常位a_l.jpg");
	Move("絵背景300_l", 0, -800, -400, Dxl1, false);
	Fade("絵背景300_l", 3000, 1000, null, false);
	Move("絵背景300_l", 3000, -200, -150, Dxl1, true);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203100skr">
「ぁ……ぁ、ぁ……」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100203110ksr">
「ん？　何か言いたいのか？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203120skr">
「あ……あの……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203130skr">
「匂わない……ですか？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100203140ksr">
「少し匂う」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203150skr">
「あ……やっぱり……」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100203160ksr">
「でも、悪くねぇよ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203170skr">
「バカ言わないで下さい！　双六さ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景300", 100, Center, Middle, "cg/ev/ev2210沙紅羅正常位a.jpg");
	Fade("絵背景300",1000, 1000, null, true);
	Delete("絵背景300_l");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100203180ksr">
「双六でいい」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203190skr">
「え……？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100203200ksr">
「呼んでくれるか？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203210skr">
「双……六？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100203220ksr">
「沙紅羅……」

　双六がサングラスをとる。

　身体が沙紅羅に覆い被さり――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	CreateTextureEX("絵背景ogm_l", 100, Center, Middle, "cg/ev/l/ev2210沙紅羅正常位c_l.jpg");
	Move("絵背景ogm_l", 0, -200, -150, Dxl1, false);
	Fade("絵背景ogm_l", 1000, 1000, null, true);
//	Delete("絵背景402");
	#ev2210沙紅羅正常位c = true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730a]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203230skr">
「んんっ！
　ん……んちゅ……ん……んん……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203240skr">
「んちゅっ、ちゅ……むちゅっ、ちゅう……
　はぁっ、ん……んん……ん……ちゅ……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203250skr">
「ぁ……双六……さん……」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100203260ksr">
「双六」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203270skr">
「え、ええと……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203280skr">
「双六」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100203290ksr">
「そうだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	CreateTextureEX("絵背景ogm2_l", 100, Center, Middle, "cg/ev/l/ev2210沙紅羅正常位b_l.jpg");
	Move("絵背景ogm2_l", 0, -200, -150, Dxl1, false);
	Fade("絵背景ogm2_l", 600, 1000, null, true);
//	Delete("絵背景402");
	#ev2210沙紅羅正常位b = true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730b]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203300skr">
「双六……綺麗な、目……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203310skr">
「会ってから、全然、時間も経ってなくて……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203320skr">
「けど……視線が、離せないの」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203330skr">
「あなたを見ると、まるで……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203340skr">
「運命が、アタシたちを、引き合わせたみたい」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100203350ksr">
「運命……か」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100203360ksr">
「その先に、幸せがあるといいな」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203370skr">
「今……世界で一番、幸せだから」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203380skr">
「――――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2226);


	TextBoxDelete(150);

	PrintFadeNut("上背景", 1000, true);

	DeleteSt("C", 0,true);
	Delete("@OnBG*");


	FadeDelete("上背景", 0, null, true);

//◆ＥＶ："ev/ev2210沙紅羅正常位深く.txt" 差分Ａ
	CreateTextureEX("絵背景400_l", 100, Center, Middle, "cg/ev/l/ev2210沙紅羅正常位深くa_l.jpg");
	Move("絵背景400_l", 0, -800, -250, Dxl1, false);
	Fade("絵背景400_l", 2000, 1000, null, false);
	Move("絵背景400_l", 3000, -200, -150, Dxl1, true);
	Delete("絵背景300");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
//◆音声指示：最後にキス
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203390skr">
「来て、双ろ――むっ！」

//◆音声指示：「んんんんんッ！」で挿入
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203400skr">
「んむ――んむっ、む――んんんんんッ！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203410skr">
「んんん――んん――ん――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203420skr">
「ん……んん……ん……んはぁっ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203430skr">
「はぁっ、はぁっ、はぁっ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203440skr">
「ぁ……双六……入ってる……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景400", 100, Center, Middle, "cg/ev/ev2210沙紅羅正常位深くa.jpg");
	Fade("絵背景400", 1000, 1000, null, true);
	Delete("絵背景400_l");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203450skr">
「でも……まだ、足りないよ……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203460skr">
「ん――ッ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203470skr">
「ぁ――んんっ、ん――！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203480skr">
「すご――ろく――んちゅ――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203490skr">
「んちゅっ、ん、んん――んちゅぅううッ！
　んはぁっ――はぁ――はぁ――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203500skr">
「全部……来た？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100203510ksr">
「――ああ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203520skr">
「よかった……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203530skr">
「あ！　待って！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203540skr">
「もうちょっと！　ちょっとだけ……そのままで……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2227);

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203550skr">
「…………」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100203560ksr">
「……辛いか？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203570skr">
「いたい。正直、マジでいたい」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203580skr">
「けどぜんぜん、たいしたことないよ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203590skr">
「だって……双六」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203600skr">
「あんたが、優しく声をかけてくれるんだもの」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203610skr">
「これ以上の幸せなんて、ないよ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100203620ksr">
「沙紅羅――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203630skr">
「もう、大丈夫だから、ねぇ……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203640skr">
「来て」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＥＶ："ev/ev2210沙紅羅正常位深く.txt" 差分Ｂ
	CreateTextureEX("絵背景401_l", 100, Center, Middle, "cg/ev/l/ev2210沙紅羅正常位深くb_l.jpg");
	Move("絵背景401_l", 0, -800, -250, Dxl1, false);
	Fade("絵背景401_l", 2000, 1000, null, true);
	Delete("絵背景400");

//◆演出指定：動き始める

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203650skr">
「んんっ！　んんんんんん――――！！」

{	Move("絵背景401_l", 8000, -200, -150, Dxl1, false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203660skr">
「ん――んん――ん、んん――ぁあっ！
　んはぁっ、はぁっ、はぁっ――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203670skr">
「なに？　この感覚――
　んぁっ、あっ、あっ、あ――！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203680skr">
「んぁっ！　あっ！　あ！　あ――！
　双六――すごい――なんで――？」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203690skr">
「気持ちよくて――アタシ――頭、真っ白で――
　ぁあっ、どう、したら、いいのっ？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203700skr">
「こんなに、幸せで――アタシ――
　怖い――くらい――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203710skr">
「あぁっ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203720skr">
「んぁっ！　あっ！　あ！　あ！　ああっ！
　すごい――気持ちいい――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景401", 100, Center, Middle, "cg/ev/ev2210沙紅羅正常位深くb.jpg");
	Fade("絵背景401", 1000, 1000, null, true);
	Delete("絵背景401_l");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203730skr">
「おかしくなる――アタシ――んはっ！
　バラバラになって――消えちゃいそう――ッ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203740skr">
「ねえ、ぎゅっと――掴んで――
　んあっ、ん！　ん！　んあっ、ん――んん――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203750skr">
「んんんんんん――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2228);

	TextBoxDelete(150);

//◆演出指定：１度絶頂

	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",300,1000,null,true);


//◆ＥＶ："ev/ev2210沙紅羅正常位深く.txt" 差分Ｃ
	CreateTextureEX("絵背景402", 100, Center, Middle, "cg/ev/ev2210沙紅羅正常位深くc.jpg");
	Fade("絵背景402", 0, 1000, null, true);
	Delete("絵背景401");

	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203760skr">
「んぁ……ぁ……ぁはっ、ん……んん……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203770skr">
「あついの……出て……感じる……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203780skr">
「双六……ぁあ……あ……双六……
　もっと……もっと……近く……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203790skr">
「キス……んむっ、んちゅ……
　んっ、ん、んん……ん……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203800skr">
「んちゅ……ん、んんっ、んんん……っ。
　ちゅ……ちゅう…………あ……！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100203810ksr">
「ん？　沙紅羅？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＥＶ："ev/ev2210沙紅羅正常位.txt" 差分Ｂ
//※下倉注：これを差分Ｃに変更 2010/11/29
//おがみ：使用箇所、はな散らす！
	CreateTextureEX("絵背景301_l", 100, Center, Middle, "cg/ev/l/ev2210沙紅羅正常位b_l.jpg");
	Move("絵背景301_l", 0, -200, -150, Dxl1, false);
	Fade("絵背景301_l", 1000, 1000, null, true);
	Delete("絵背景402");
	#ev2210沙紅羅正常位b = true;


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850a]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203820skr">
「綺麗……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203830skr">
「双六の目……すごく……綺麗……」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100203840ksr">
「バカ言え」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203850skr">
「バカじゃないよ……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203860skr">
「その目に映るもの……アタシにも、見せて」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100203870ksr">
「オレの目に……映るもの？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203880skr">
「覚悟は出来てるの」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203890skr">
「地獄の底まで、一緒だよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);
	CreateTextureEX("絵背景ogm_l", 100, Center, Middle, "cg/ev/l/ev2210沙紅羅正常位c_l.jpg");
	Move("絵背景ogm_l", 0, -200, -150, Dxl1, false);
	Fade("絵背景ogm_l", 500, 1000, null, true);
//	Delete("絵背景402");
	#ev2210沙紅羅正常位c = true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850b]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203900skr">
「ん……ぁ……んんっ！　ぁ……だめ……
　まだ、動いたら……変に……ぁあっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆ＥＶ："ev/ev2210沙紅羅正常位深く.txt" 差分Ｄ
	CreateTextureEX("絵背景403", 100, Center, Middle, "cg/ev/ev2210沙紅羅正常位深くd.jpg");
	Fade("絵背景403", 1000, 1000, null, true);
	Delete("絵背景301");
	Delete("絵背景ogm_l");

//◆演出指定：リズミカルに

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203910skr">
「……ぁふっ！　……ぁっ！　……あっ！　……あ！
　……ああっ！　……あっ！　……ああっ！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203920skr">
「もう……ぐちゃぐちゃ……だよ……
　アタシ……もう……わかんない……」


{	CreateTextureEX("絵背景403_l", 100, Center, Middle, "cg/ev/l/ev2210沙紅羅正常位深くd_l.jpg");
	Move("絵背景403_l", 0, -200, -150, Dxl1, false);
	Fade("絵背景403_l", 1000, 1000, null, true);
	Delete("絵背景403");}


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203930skr">
「でも……アリガト……アリガトね……
　今日……アタシ……ここに来て……良かった……っ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203940skr">
「アタシたち……会えたのも、運命……かな？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203950skr">
「んぁっ……！　あっ……！　すご……
　私のなかで……また……どんどん、大きくなって……」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203960skr">
「アタシ……かきまぜて……
　気持ち……気持ち……いいよぉ……んんんッ！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203970skr">
「さっき、さっき……きた、ばっかりなのにッ……
　いい？　また、また……いっちゃっていい？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203980skr">
「んぁっ！　あっ！　あっ！　あっあっ！
　また……アタシ、また……くる……！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100203990skr">
「ねえ、一緒に……いい？
　一緒に……いこ？　ね？」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100204000skr">
「アタシの……中に……あなたの……
　好きだって……気持ち、ちょうだい……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100204010skr">
「んぁっ！　あっ！　ああっ！　あ、あああッ！
　好き！　んちゅっ！　ちゅ……ちゅうっ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100204020skr">
「ちゅ……んぁっ、ちゅあっ、あっあっ……！
　いく……いく……いっちゃ……ああっあっあっ……！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100204030skr">
「ぁぁぁぁああああああああ…………ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2229);

	TextBoxDelete(0);


	CreateColorEX("白フラ", 15000, "WHITE");
	Fade("白フラ", 0, 1000, null, true);

//◆ＥＶ："ev/ev2210沙紅羅正常位深く.txt" 差分Ｅ
	CreateTextureEX("絵背景404", 100, Center, Middle, "cg/ev/ev2210沙紅羅正常位深くe.jpg");
	Fade("絵背景404", 300, 1000, null, true);
	Delete("絵背景403_l");

	Fade("白フラ", 300, 0, null, true);
	Fade("白フラ", 100, 1000, null, true);
	Fade("白フラ", 1500, 0, null, true);


//◆ＳＥ：絶頂＆射精
//	CreateSE("SE02","se人体_絶頂射精");
//	MusicStart("SE02",0,700,0,1000,null,false);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100204040skr">
「んぁっ……んぁ……ぁふぅっ……んぁっ、ぁ……ぁ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100204050skr">
「ぁ……ふぁ……ぁぁ……ぁ……ぁ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100204060skr">
「双六……ん…………んん……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100204070skr">
「ありがとう……アタシ……世界で一番……幸せ……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Delete("白フラ");

	TextBoxDelete(150);


	CreateTextureEX("絵背景404_l", 100, Center, Middle, "cg/ev/l/ev2210沙紅羅正常位深くe_l.jpg");
	Move("絵背景404_l", 0, -200, -150, Dxl1, false);
	Fade("絵背景404_l", 1000, 1000, null, true);
	Delete("絵背景404");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0920]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/100204080ksr">
「沙紅羅――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100204090skr">
「ちゅっ……ん……んん……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＥＶ："ev/ev2210沙紅羅正常位深く.txt" 差分Ｃ
	CreateTextureEX("絵背景402_l", 100, Center, Middle, "cg/ev/l/ev2210沙紅羅正常位深くc_l.jpg");
	Move("絵背景402_l", 0, -200, -150, Dxl1, false);
	Fade("絵背景402_l", 1000, 1000, null, true);
	Delete("絵背景404_l");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0930]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100204100skr">
「泣かないで……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100204110skr">
「アタシが……あなたに、教えてあげる」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/100204120skr">
「全てに絶望してしまうには、まだ早いってこと……」

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

	SetVolumeEX("@xbgm*", 3000, 0, null);
	PrintFadeNut("上背景", 3000, true);
	DeleteSt("C", 0,true);
	Delete("@OnBG*");
	Delete("絵背景*");
	FadeDelete("上背景", 0, null, true);

	WaitKey(3000);



	EndScene();
}
