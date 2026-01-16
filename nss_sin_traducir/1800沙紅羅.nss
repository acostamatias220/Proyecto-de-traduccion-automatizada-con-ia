
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1800沙紅羅.nss_MAIN
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
	$GameName = "1810沙紅羅.nss";

}

scene 1800沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1710">
////////////header////////////
//file name "1800沙紅羅.nss"
//title "ビッグ斎藤に夜露死苦"

////////////footer////////////
//next "沙紅羅" "1810沙紅羅.nss"
//previous "y1730沙紅羅.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1800);}

//◆場所：ビッグサイト_正面
	OnBG(10,"bg2001111ビッグサイト_正面_通常");
	FadeBG(0,true);

	CreateTextureSP("絵背景50", 50, center, middle, "cg/bg/bg2001111ビッグサイト_正面_通常.jpg");
	Request("絵背景50", Smoothing);
	Zoom("絵背景50", 0, 1200, 1200, null, true);

	CreateTextureSP("絵背景100", 100, -300, -150, "cg/bg/l/bg2001111ビッグサイト_正面_通常_l.jpg");
	Request("絵背景100", Smoothing);
	Zoom("絵背景100", 0, 800, 800, null, true);

	CreateMovieEX("ムービー１", 5000, Center, Middle, true, true, "dx/mvk100.ngs");
	Request("ムービー１", AddRender);
	Zoom("ムービー１", 0, 3000, 3000, null, true);
	Fade("ムービー１", 0, 1000, null, true);

	CreateSE("SE10","se環境_風と葉っぱ_l");
//	CreateSE("SE11","seガヤ_街中_l");
	MusicStart("SE10",3000,500,0,1000,null,true);
//	MusicStart("SE11",3000,700,0,1000,null,true);

	if($PreGameName=="y1730沙紅羅.nss"){

		FadeDelete("上背景", 2000, null, false);

	}else{

		FadeDelete("上背景", 0, null, false);

	}

	Move("絵背景100", 6000, -600, @0, null, false);
	Wait(5000);
	Fade("絵背景100", 1000, 0, null, false);
	Zoom("絵背景50", 1500, 1000, 1000, Dxl1, true);


	Wait(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　祭りのあと――ビッグサイトを、闇が包む。

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000400010e05">
「ハァ……疲れたァ……」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400020e06">
「いやないでしょ疲れたとか！
　むしろみ　な　ぎ　っ　て　き　た　！！ｗｗｗｗ」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000400030e05">
「大晦日なのに元気なやつですね……
　もうコミマは終わりましたよ」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400040e06">
「またまたぁ！　オレたちのコミマはこれからでしょ？」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000400050e05">
「え？　それってどういうことか聞いて良いですか？」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400060e06">
「よくぞ聞いてくれました！
　これからアキバで第２ラウンド！」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000400070e05">
「第２ラウンド？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400080e06">
「ホラこれ！　ダベッターで今話題騒然！
　緊急ＲＤが回ってきました！！」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000400090e05">
「緊急ＲＤ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//【拡散希望】本日１９時よりＡＶ神ロクローさんのライブイベントアリ！コミマ後はみなアキバのラムタルへＧＯ！

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400100e06">
「ロクローさんのイベントキター！！　って感じだよね」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400110e06">
「それから第一宇宙速度のライブでカウントダウン！！
　ワクワクがとまらない！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000400120e05">
「一応聞きますけど……本気で行く気だったんですか？」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400130e06">
「本気と書いてマジと読むッ！！」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000400140e05">
「なんか……色々辛いと言わざるを得ない。
　僕が付き合う必然性はあるのだろうか、いやない」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400150e06">
「そんな冷たいこといっちゃう？
　同じ本書いた仲じゃない！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1801);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400160e06">
「この<RUBY text="ティルノ">Ｔｉｒｎｏ</RUBY>さんの挿絵がなかったら、今日の同人誌もどれだけ売れたか……」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000400170e05">
「あー、はいはい。
　確かにＴｉｒｎｏさんの挿絵は素晴らしかったです」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000400180e05">
「御影日向ひとりの文才じゃ、あんなに売れることは到底不可能と言わざるを得ないでしょうよ……」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400190e06">
「だよねー、だから付き合ってちょーだいよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000400200e05">
「……良いですけど、ライブはともかく、ロクローさんのイベントってなにか聞きたいところなのですが」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400210e06">
「知らない？　ホラ、ＴＡＭＡのコスプレＡＶ」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000400220e05">
「把握。あのパロディの――」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400230e06">
「パロディ違う！　アレはもう既に新たな芸術だッ！！」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000400240e05">
「確かに新ジャンルと言わざるを得ない側面もないとは言えませんが……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400250e06">
「御影君も来る？」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000400260e05">
「あにのあなで待機してます。
　コスプレとか三次元とかに興味ないし」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400270e06">
「三次元に、ねぇ……」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000400280e05">
「なんですかその顔」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400290e06">
「そういうヤツに限って、恋に落ちるとコロッと――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 2000, 0, null);
	SetVolumeEX("SE*", 2000, 0, null);

{	ClockPass(1802);}

//◆演出指示：エンジン「ブロロロロロ！」
	CreatePlainEX("揺用", 2005);
	Shake("揺用", 1000, 2, 2, 0, 0, 1000, null, true);

	CreateSE("SE01","seメカ_バイク_エンジン加速");
	MusicStart("SE01",500,700,0,1000,null,false);

//データ先読み込み
	CreateTextureEX("絵背景スクロール１", 3100, -3988, @0, "cg/ev/ex/ev0000沙紅羅原付ライダーb_exbg.jpg");
	CreateTextureEX("絵背景スクロール２", 3100, -3988, @0, "cg/ev/ex/ev0000沙紅羅原付ライダーb_exbg.jpg");

	CreateSE("SE01a","se戦闘_刃物02");
	CreateSE("SE01b","se戦闘_刃物02");
	CreateSE("SE01c","se戦闘_刃物02");
	CreateSE("SE01d","se戦闘_刃物02");
	CreateSE("SE01e","se戦闘_刃物02");
	CreateSE("SE01f","se戦闘_刃物02");
	CreateSE("SE01g","se戦闘_刃物02");
	CreateSE("SE01h","se戦闘_刃物02");
	CreateSE("SE01i","se戦闘_刃物02");
	CreateSE("SE01j","se擬音_百野殺駆登場");


	SoundPlay("@xbgm07",0,700,true);

	Fade("揺用", 2000, 1000, null, true);
	Delete("揺用");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000400300e05">
「……異変？」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400310e06">
「なんだ、この音――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000400320skr">
「どけどけどけどけどけ――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	CreateSE("SE02","seメカ_バイク_走行_l");

//◆ＳＥ：バイク接近

//◆ＥＶ："ev/ev0000沙紅羅原付ライダー.txt"

//◆演出指定：最初は沙紅羅フルフェイスヘルメット

//嶋：調整必須
//おがみ：β調整済み
	CreateColorEXadd("絵色白", 5500, "WHITE");
	Fade("絵色白", 100, 1000, null, true);

	Fade("ムービー１", 0, 0, null, true);
	CreateTextureSP("絵背景ライダー", 3102, center, middle, "cg/ev/ex/ev0000沙紅羅原付ライダーb_ex01.png");




//	CreateTextureEX("絵背景ライダー２", 3103, -150, -250, "cg/ev/3dライダー標準_騎航_戦闘b.png");
	Request("絵背景ライダー", Smoothing);
	Zoom("絵背景ライダー", 0, 1500, 1500, null, true);
//	Rotate("絵背景ライダー", 0, @0, @0, @180, null,true);
	SetBlur("絵背景ライダー", true, 1, 500, 80, false);

	MusicStart("SE02",2500,1300,0,1500,null,true);
	SetFrequency("SE02", 10000, 2000, AxlDxl);

	MoveFTP3("@絵背景ライダー", 2000, 12, 10);

/*
	CloudZoomSet(4000);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(0,@-1000,@0,null,false);
*/
	CreateSCR1("@絵背景スクロール１","@絵背景スクロール２",300,@3500,@0);


	MusicStart("SE01a",0,850,0,1000,null,false);
	Fade("絵色白", 200, 0, null, true);

	Wait(500);

	Fade("絵色白", 100, 1000, null, true);
	Move("絵背景ライダー", 0, 0, -1136, null, false);
//	Zoom("絵背景ライダー", 100, 800, 800, null, true);

	MusicStart("SE01b",0,850,0,1000,null,false);
	Fade("絵色白", 100, 0, null, true);

	Wait(400);

	Fade("絵色白", 100, 1000, null, true);
	Move("絵背景ライダー", 0, -450, -1236, null, false);
//	Zoom("絵背景ライダー", 100, 800, 800, null, true);
	MusicStart("SE01c",0,850,0,1000,null,false);
	Fade("絵色白", 100, 0, null, true);

	Wait(300);

	Fade("絵色白", 100, 1000, null, true);
	Move("絵背景ライダー", 0, -900, -1250, null, false);
//	Zoom("絵背景ライダー", 100, 800, 800, null, true);
	MusicStart("SE01d",0,850,0,1000,null,false);
	Fade("絵色白", 100, 0, null, true);

	Wait(200);

	Fade("絵色白", 100, 1000, null, true);
	Move("絵背景ライダー", 0, -1388, -1020, null, false);
//	Zoom("絵背景ライダー", 100, 800, 800, null, true);
	MusicStart("SE01e",0,850,0,1000,null,false);
	Fade("絵色白", 100, 0, null, true);


	Wait(200);

	Fade("絵色白", 100, 1000, null, true);
	Move("絵背景ライダー", 0, -442, 300, null, false);
	MusicStart("SE01f",0,850,0,1000,null,false);
	Fade("絵色白", 100, 0, null, false);
//	Zoom("絵背景ライダー", 100, 800, 800, Dxl1, true);

	Wait(200);

	Fade("絵色白", 100, 1000, null, true);
	Move("絵背景ライダー", 0, -300, -500, null, false);
	MusicStart("SE01g",0,850,0,1000,null,false);
	Fade("絵色白", 100, 0, null, false);
//	Zoom("絵背景ライダー", 100, 800, 800, Dxl1, true);

	Wait(200);

	Fade("絵色白", 100, 1000, null, true);
	Move("絵背景ライダー", 0, 100, -1600, null, false);
	MusicStart("SE01h",0,850,0,1000,null,false);
	Fade("絵色白", 100, 0, null, false);
//	Zoom("絵背景ライダー", 100, 800, 800, Dxl1, true);

	Wait(200);

	Fade("絵色白", 100, 1000, null, true);
	Move("絵背景ライダー", 0, -1100, -1600, null, false);
	MusicStart("SE01i",0,850,0,1000,null,false);
	Fade("絵色白", 100, 0, null, false);
//	Zoom("絵背景ライダー", 100, 800, 800, Dxl1, true);

	Wait(200);

	Fade("絵色白", 100, 1000, null, true);
	SetBlur("絵背景ライダー", false, 1, 500, 200, false);

	Move("絵背景ライダー", 0, -442, -800, Dxl1, false);
	Fade("絵色白", 200, 0, null, false);
	MusicStart("SE01j",0,1000,0,1000,null,false);
	Zoom("絵背景ライダー", 200, 800, 800, Axl1, true);
	SetBlur("絵背景ライダー", true, 1, 500, 80, false);

	SetVolumeEX("SE02", 2000, 600, null);


	Wait(500);

//	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/ev/ev0000沙紅羅原付ライダーb.jpg");
//	Fade("絵背景100", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000400330skr">
「ビッグ斎藤・到着！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


/*
//◆音声指示：同時
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000400340e05">
「えええええええええええええ！？」

//◆音声指示：同時
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400350e06">
「えええええええええええええ！？」
*/


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text095]
//◆音声指示：同時
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000400340">
「「えええええええええええええ！？」」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000400360skr">
「とりゃあっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetFrequency("SE02", 3000, 3000, AxlDxl);

	CreateSE("SE01","seメカ_バイク_エンジン加速");
	MusicStart("SE01",0,1500,0,1000,null,false);

//◆ＳＥ：ガシャーン
	Shake("絵背景ライダー", 500, 10, 20, 0, 0, 1000, null, false);
	MoveFTP3stop();

	SetBlur("絵背景ライダー", false, 1, 500, 200, false);
	Move("絵背景ライダー", 700, @-2500, @0, Axl2, false);
	Delete("絵色白");
	Wait(500);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


	CloudZoomDelete(0,true);
	SCR1stop();
	Delete("絵背景*");

	CreateTextureSP("絵背景斉藤", 100, center, -150, "cg/bg/l/bg2001100ビッグサイト_正面_通常_l.jpg");
	Request("絵背景斉藤", Smoothing);
	Move("絵背景斉藤", 0, @45, @0, null, true);
	Zoom("絵背景斉藤", 0, 1000, 1000, null, true);
	SetBlur("絵背景斉藤", true, 1, 500, 90, false);

	OnBG(10,"bg2001100ビッグサイト_正面_通常");
	FadeBG(0,true);


	Fade("ムービー１", 0, 500, null, true);

	Zoom("絵背景斉藤", 700, 900, 900, Axl3, false);
	DrawDelete("絵黒幕", 200, 100, null, "slide_01_01_1", true);

	Wait(500);

	SetVolumeEX("SE*", 1000, 0, null);

	CreateSE("SE02","se戦闘_ガラス割れる02");
	MusicStart("SE02",0,1200,0,1000,null,false);

	CreatePlainSP("揺用", 2005);
	Shake("揺用", 1500, 15, 5, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 1500, 0, null, true);
	Delete("揺用");

	Wait(500);

	SetVolumeEX("@xbgm07", 2000, 450, null);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　歩道をすっ飛ばしてきた凄まじいバイクが坂を一気に駈け上がりビッグサイトのガラス扉に突っ込む。

{
/*
	St("C",700, @0,@0,"st沙紅羅メット_通常_normal");

	Shake("@StNameC/C*", 400, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 400, @0, @0, Dxl1, false);

	FadeSt("C",200,true);
*/
	MoveFTP3("@絵背景斉藤", 2000, 5, 5);

}
//◆音声指示：遠くから
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000400370skr">
「おりゃー！　とーじんぼーはどこじゃー！」

//◆音声指示：遠くから
//【コミマスタッフＡ】
<voice name="コミマスタッフＡ" class="その他男声" src="voice/18/000400380e11">
「な！　ちょっと！　何してるんですか！」

//◆音声指示：遠くから
//【コミマスタッフＢ】
<voice name="コミマスタッフＢ" class="その他男声" src="voice/18/000400390e12">
「出てってください！　今すぐ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//◆音声指示：遠くから
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000400400skr">
「アタシの行く手を阻むヤツァ、例え親でも許さねー！」

//◆音声指示：遠くから
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000400410skr">
「ビッグ斎藤！　とーじんぼーを出せええ！！」

//◆音声指示：遠くから
//【コミマスタッフＡ】
<voice name="コミマスタッフＡ" class="その他男声" src="voice/18/000400420e11">
「エマージェンシー！　エマージェンシー！
　こちら正面入り口！」

//◆音声指示：遠くから
//【コミマスタッフＡ】
<voice name="コミマスタッフＡ" class="その他男声" src="voice/18/000400430e11">
「謎のコスプレ女が制止を振り切って侵入・逃走！
　至急応援頼む！！」

//◆音声指示：遠くから
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000400440skr">
「とーじんぼー、どこじゃああああああ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1803);}

//	TextBoxDelete(150);

//	DeleteSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000400450e05">
「な……何事？」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400460e06">
「あんなキャラ、いたっけ？」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000400470e05">
「本物のレディース？」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400480e06">
「さすがにないだろ……ないよな？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","seメカ_バイク_エンジン加速");
	MusicStart("SE01",0,1200,0,1000,null,false);


//マスク準備
	CreateMask("絵マスク左", 6000, 0, 0, "cg/mask/ci縦ライン_00_00.png", false);
	Zoom("絵マスク左", 0, 0, 1000, null, true);
	SetAlias("絵マスク左","絵マスク左");
	CreateTextureEX("絵マスク左/絵演背景", 1000, center, middle, "cg/ev/ev0000沙紅羅原付ライダーb.jpg");
	CreateTextureEX("絵マスク左枠", 1000, center, middle, "cg/mask/ci縦ライン_00_00z.png");
	Request("絵マスク左枠", Smoothing);

//動作準備
	Fade("絵マスク左/絵演背景", 0, 1000, null, true);
	Move("絵マスク左/絵演背景", 0, @100, @0, null, true);

//イン動作
	Fade("絵マスク左枠", 0, 1000, null, true);
	Zoom("絵マスク左", 200, 1500, 1500, Dxl2, false);
	Zoom("絵マスク左枠", 200, 1500, 1500, Dxl2, false);
	Move("絵マスク左/絵演背景", 200, @-70, @0, Dxl2, false);
	Fade("絵マスク左/絵演立絵", 200, 1000, null, false);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//◆音声指示：遠くから
//【コミマスタッフＢ】
<voice name="コミマスタッフＢ" class="その他男声" src="voice/18/000400490e12">
「待てえええ！！」

//◆音声指示：遠くから
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000400500skr">
「仏恥義理！」

//◆音声指示：遠くから
//【コミマスタッフＡ】
<voice name="コミマスタッフＡ" class="その他男声" src="voice/18/000400510e11">
「やむを得ん！　発砲を許可する！」

//◆音声指示：遠くから
//【コミマスタッフＢ】
<voice name="コミマスタッフＢ" class="その他男声" src="voice/18/000400520e12">
「ＳＩＲ　ＹＥＳ　ＳＩＲ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//アウト動作
	Zoom("絵マスク左", 200, 0, 1000, Axl2, false);
	Zoom("絵マスク左枠", 200, 0, 1000, Axl2, false);
	Fade("絵背景斉藤", 300, 0, null, true);
	Delete("絵マスク*");
	Delete("絵背景斉藤");

	MoveFTP3stop();

	CreateColorEXadd("絵色100", 15000, "WHITE");

//◆ＳＥ：銃声
	CreateSE("SE01","se銃_マシンガン乱射_l");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵色100", 0, 1000, null, true);
	CreatePlainSP("揺用", 2005);
	Fade("絵色100", 100, 0, null, false);
	Shake("揺用", 200, 5, 8, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 200, 0, null, true);

	Wait(100);

	Fade("絵色100", 0, 1000, null, true);
	CreatePlainSP("揺用", 2005);
	Fade("絵色100", 100, 0, null, false);
	Shake("揺用", 200, 5, 8, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 200, 0, null, true);

	Fade("絵色100", 0, 1000, null, true);
	CreatePlainSP("揺用", 2005);
	Fade("絵色100", 100, 0, null, false);
	Shake("揺用", 200, 5, 8, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 200, 0, null, true);

	Fade("絵色100", 0, 1000, null, true);
	CreatePlainSP("揺用", 2005);
	Fade("絵色100", 100, 0, null, false);
	Shake("揺用", 200, 5, 8, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 200, 0, null, true);

	Wait(100);

	Fade("絵色100", 0, 1000, null, true);
	CreatePlainSP("揺用", 2005);
	Fade("絵色100", 100, 0, null, false);
	Shake("揺用", 200, 5, 8, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 200, 0, null, true);


	Delete("揺用");

	Wait(500);

	SetVolumeEX("SE*", 2000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//◆音声指示：遠くから
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000400530skr">
「ぬわあああああ！」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000400540e05">
「銃声……？」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400550e06">
「あーあ。
　コミマスタッフ、怒らせちゃったよ」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000400560e05">
「死亡フラグですかね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400570e06">
「気になんのか？」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000400580e05">
「べ、別にそういうワケじゃ！」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400590e06">
「お、ツンデレ来た！」

//◆ＳＥ：銃声
//◆音声指示：遠くから
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000400600skr">
「ええい、畜生ッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1804);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//◆音声指示：遠くから
//【コミマスタッフＡ】
<voice name="コミマスタッフＡ" class="その他男声" src="voice/18/000400610e11">
「逃げるぞ！　撃て！」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400620e06">
「のわっ！　こっち来た！」

{	CreateSE("SE01","seメカ_バイク_エンジン加速");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreatePlainSP("揺用", 2005);
	Shake("揺用", 2000, 2, 4, 0, 0, 1000, null, false);
	Fade("揺用", 2000, 0, null, true);}
//◆ＳＥ：バイク接近
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000400630skr">
「どけどけどけどけどけー！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：バイク急停止
	SetVolumeEX("SE*", 1000, 0, null);

	CreateSE("SE02","seメカ_バイク_急停止");
	MusicStart("SE02",0,700,0,1000,null,false);


	CreatePlainSP("揺用", 2005);
	Shake("揺用", 2000, 3, 2, 4, 6, 1000, Axl1, false);

	Wait(2500);

	Delete("揺用");

	Fade("ムービー１", 500, 1000, null, true);

//◆演出指定：ここでバストアップ的な
//あきゅん「"沙紅羅メット_通常_normal"」

	CreateSE("SE03","se人体_倒れる04");
	MusicStart("SE03",0,700,0,1000,null,false);

	Fade("ムービー１", 2000, 500, null, false);


	St("C",700, @0,@50,"bu沙紅羅メット_通常_normal");
	Move("@StNameC/C*", 400, @0, @-50, Dxl1, false);
	FadeSt("C",400,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000400640skr">
「おい、そこのふたり！」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000400650e05">
「ぁ……」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400660e06">
「は、はいっ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000400670skr">
「ここ……ビッグ斎藤で良いんだよな？」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400680e06">
「ビッグ……斎藤？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu沙紅羅メット_頭かき_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000400690skr">
「あぁん？　ちげーのか？」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000400700e05">
「あの……そうじゃなくて。
　たぶんビッグサイ――ふんぐぐぐッ！！」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400710e06">
「は、はいッ！　ビッグ斎藤でＯＫです！」

{	St("C",700, @0,@0,"bu沙紅羅メット_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000400720skr">
「はっはーやっぱり！　アタシの目に狂いねーな！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400730e06">
「さすがです！」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000400740e05">
「ふんぐぐぐ……」

//◆音声指示：小声
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400750e06">
「いいか、おまえ。余計な口挟むなよ！」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000400760e05">
「ほんな……ふぐ、んぐぐ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



{	St("C",700, @0,@0,"bu沙紅羅メット_通常_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000400770skr">
「それじゃあの、ナンだ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000400780skr">
「とーじんぼーって、どこにある？」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400790e06">
「とーじんぼー？」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000400800e05">
「ふごふご、ふご！」

//◆音声指示：小声
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400810e06">
「いいから黙ってろって！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1805);}

{	St("C",700, @0,@0,"bu沙紅羅メット_頭かき_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000400820skr">
「ほら、コミックスーパー？　に、つきものなんだろ？」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400830e06">
「あー、はいはい、コミックスーパー！
　ありますあります！」

{	St("C",700, @0,@0,"bu沙紅羅メット_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000400840skr">
「とーじんぼー、欲しいんだ」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400850e06">
「えーと、あの……
　それは、つまりどういう……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	St("C",700, @0,@0,"bu沙紅羅メット_通常_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000400860skr">
「あぁん？　もしかしてテメーら」

//◆音声指示：凄む
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000400870skr">
「知らねーのか？」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400880e06">
「えーといや、知らないとかそういうことではなくて――」

{	CreateSE("SE01","se戦闘_切断01");
	MusicStart("SE01",0,700,0,1000,null,false);}
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000400890e05">
「がうッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400900e06">
「いでででででッ！
　お、オレの右手を噛みやがったな！」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000400910e06">
「親にも噛まれたことないのに！」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000400920e05">
「当たり前です！　黙っててください！」

　男は連れを制止すると、ヘルメットの女に向き合う。

　紙袋から一冊の本を差し出し、訊ねた。

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000400930e05">
「僕が思うに、探してるのはこういう本ですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//あきゅん「"沙紅羅メット_前のめり_normal"」
{	St("C",700, @0,@0,"bu沙紅羅メット_前のめり_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000400940skr">
「ん？　おおー！　これこれ！」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000400950e05">
「これ、とーじんぼーじゃなく、同人誌っていいます」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000400960skr">
「あーそか！　そうそう、そんな感じの名前だったな！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000400970skr">
「どーじんしどーじんし。
　どれどれ、どんな話が書いて――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 300, 0, null);
	TextBoxDelete(150);

	Wait(100);

//◆ＳＥ：セクシーボイス
	CreateSE("SE01","se擬音_ギャグ_セクシーボイス");
	MusicStart("SE01",0,1200,0,1000,null,false);

	Wait(1100);

	St("C",700, @0,@0,"bu沙紅羅メット_頭かき_normal");
	Shake("@StNameC/C*", 500, 6, 0, 0, 0, 1000, null, false);
	FadeQ($C_次,0,0,200,0,50,Dxl1,false);
	FadeSt("C",150,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000400980skr">
「きゃあああああああ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(150,true);

{	ClockPass(1806);}

	CreateTextureEX("絵背景100", 100, Center, -400, "cg/img/img引き裂かれた同人誌が夜空に舞う.jpg");


//◆ＳＥ：切り裂く
	CreateSE("SE01","se動作_紙破る");
	CreateSE("SE02","se戦闘_切断02");
	CreateSE("SE03","se戦闘_切断02");
	MusicStart("SE01",0,1200,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);
	MusicStart("SE03",0,1200,0,1000,null,false);

	Wait(500);

	Fade("絵背景100", 200, 1000, null, false);
	Move("絵背景100", 1500, @0, -50, Dxl2, true);

	Wait(100);

	FadeDelete("絵背景100", 300, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0251]
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000400990e05">
「えええええええ？」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000401000e06">
「裂いちゃった！？」

//あきゅん「"沙紅羅メット_通常_normal"」
{
	FadeDelete("絵背景100", 300, null, true);

	St("C",700, @0,@0,"bu沙紅羅メット_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401010skr">
「変態ッ！　変態ッ！　変態ッ！
　なんてもの見せやがる――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401020skr">
「あ……」

//あきゅん「"沙紅羅メット_頭かき_normal"」
{	St("C",700, @0,@0,"bu沙紅羅メット_頭かき_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401030skr">
「ええと……」

//◆ＳＥ：風が吹く
{	CreateSE("SE01","se擬音_ギャグ_寒い風");
	MusicStart("SE01",0,700,0,1000,null,false);}
　咳に吹き飛ばされるように、同人誌だったのものの切れ端が風に舞った。

{	SoundPlay("@xbgm07_noint",0,450,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401040skr">
「す、す……すまねぇっ！」

{	St("C",700, @0,@0,"bu沙紅羅メット_前のめり_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401050skr">
「この通りだッ！　許してくれッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000401060e05">
「謝られたところで、本は返ってこない――ふがっ！」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000401070e06">
「いえいえお気になさらずに！
　全然、全然大丈夫ですから！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401080skr">
「ゆ……許してくれるのか！？」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000401090e06">
「も、もちろん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401100skr">
「な……なんて！」

//あきゅん「"沙紅羅メット_泣き_normal"」
{	St("C",700, @0,@0,"bu沙紅羅メット_泣き_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401110skr">
「なんて優しい人なんだあっ！
　オーイオイオイオイ……」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000401120e05">
「おいおい？　ってなんだ？」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000401130e06">
「な、泣き声だろ……たぶん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401140skr">
「アタシは今、猛烈に感動しているッ！！」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000401150e06">
「ああ……はいはい、だから泣かないで！
　こんな本、秋葉原でも買えますから！」

//あきゅん「"沙紅羅メット_通常_normal"」
{	St("C",700, @0,@0,"bu沙紅羅メット_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401160skr">
「秋葉原で？」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000401170e06">
「はい！　ビッグ斎藤でコミックスーパーは終わりましたけど、大手とかなら秋葉原の同人ショップでも――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1807);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401180skr">
「秋葉原！　おお！　なんか聞いたことある！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401190skr">
「なるほど、秋葉原に行けばとーじんぼー……
　じゃなくて、同人誌が買えんだな」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000401200e06">
「その通りです！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401210skr">
「ツーバードとかいうヤツの本が、あるんだな！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401220skr">
「『のーこんとろーる』の１１とかいうのが、あるな！？」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000401230e06">
「わかんないですけど、新刊ならたぶん……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401240skr">
「それで行こう！」

//◆ＳＥ：バイクエンジンかかる
{	DeleteSt("C",200,true);
	CreateSE("SE01","seメカ_バイク_エンジン始動");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(300);
}
　彼女はバイクに跨り、エンジンをかける。

{	St("C",700, @0,@0,"bu沙紅羅メット_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401250skr">
「ふたりとも、サンキューな！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000401260e06">
「はい！　お役に立てれば――」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000401270e05">
「ふががが――ぷはっ！　き、気をつけて！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401280skr">
「おーよ！　おまえらも、気をつけて帰れ――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401290skr">
「…………」

{	St("C",700, @0,@0,"bu沙紅羅メット_頭かき_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401300skr">
「あー、そうだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000401310e06">
「他にもなにかッ？」

{	St("C",700, @0,@0,"bu沙紅羅メット_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401320skr">
「本、弁償しなきゃな」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000401330e06">
「あ！　いえ、そんな！　お金なんて」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401340skr">
「アタシが悪いんだからさ。とっとけ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401350skr">
「……あれ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　ポケットに手を入れたまま、彼女の動きが固まった。

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000401360e05">
「トラブル発生ですか？」

{	St("C",700, @0,@0,"bu沙紅羅メット_頭かき_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401370skr">
「金が、ねぇ……」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000401380e06">
「え！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401390skr">
「さっき落としたかな……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000401400e05">
「あの、落とし物ないか訊いてきますか？」

{	St("C",700, @0,@0,"bu沙紅羅メット_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401410skr">
「いや、いい。別に大したモンは入ってねーし！」

{	St("C",700, @0,@0,"bu沙紅羅メット_頭かき_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401420skr">
「……ってか、逆に捕まりそうだ」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000401430e06">
「確かに」

{	St("C",700, @0,@0,"bu沙紅羅メット_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401440skr">
「かといって持ってるのは、ケータイと――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1808);}

//◆演出指定：木刀ブオン！　ふるう

//あきゅん「"沙紅羅メット_木刀_normal"」
{	St("C",700, @0,@0,"bu沙紅羅メット_木刀_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401450skr">
「コレくらいか」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401460skr">
「さすがにコレをやるわけにはいかねーしな……」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000401470e05">
「いえ、別にいいんです！
　そもそも自分の不注意だし……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401480skr">
「そうはいかねー！
　アタシのコケンに関わるんだっつーの！」

{	St("C",700, @0,@0,"bu沙紅羅メット_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401490skr">
「あ……そうだ、コレ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 1000, 0, null);
	TextBoxDelete(150);

	CreateSE("SE01","se人体_倒れる04");


	CreateSE("SE10","se環境_風_l");
	MusicStart("SE10",1000,700,0,1000,null,true);

//◆ＥＶ："ev/ev1800沙紅羅夜露死苦.txt"

	CreateTextureEX("絵背景100", 1000, Center, InBottom, "cg/ev/ev1800沙紅羅夜露死苦.jpg");


	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(800);
	Fade("絵背景100", 500, 1000, null, false);
	Move("絵背景100", 1000, @0, -518, Dxl1, true);

	DeleteSt("C",0,true);

	Wait(800);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401500skr">
「コレ、取っとけ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	Move("絵背景100", 2000, @0, -94, AxlDxl, true);

	Wait(1200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000401510e05">
「あ……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401520skr">
「どした？　なんかついてる？」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000401530e05">
「いえ……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401540skr">
「ほれ、早く」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000401550e05">
「あ……はい」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000401560e06">
「え、でも、ノーヘルで秋葉原まで？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401570skr">
「喧嘩上等！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("絵背景100", 500, 0, null, true);
	Delete("絵背景100");

{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_smile");
	FadeSt("C",200,true);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401580skr">
「んじゃ、アタシは急ぐから」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/000401590skr">
「じゃあな、ふたりとも。サンキュー」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	Wait(500);

{	ClockPass(1809);}

	CreateSE("SE02","seメカ_バイク_エンジン始動");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("揺用", 2005);
	Shake("揺用", 5000, 1, 1, 1, 1, 1000, AxlDxl, false);

	Wait(1500);
//◆ＳＥ：バイク移動

	Wait(500);
	CreateSE("SE01","seメカ_バイク_エンジン加速");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(3000);

	Fade("揺用", 200, 0, null, true);
	Delete("揺用");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0391]
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000401600e06">
「……ふぅ。やっと行った」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000401610e06">
「あのコスプレ女、ヤバイだろ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000401620e06">
「ってか、コスプレか？
　まさか、本物のヤンキー？」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000401630e06">
「いやいや、んなわけ……」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000401640e06">
「……ん？　おい、どした？」

{	CreateSE("SE01","se擬音_ギャグ_きゃるーん");
	MusicStart("SE01",0,700,0,1000,null,false);}
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000401650e05">
「…………」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000401660e06">
「おい、聞こえてるか？　おいってば！」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000401670e06">
「返事をするんだッ！！　御影隊員ッ！」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000401680e05">
「ん……あ、大丈夫です」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000401690e06">
「ちぇっ、普通の返しかよ」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/18/000401700e06">
「ってかさ、御影君、そのヘルメットどうすんの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
//あきゅん「素材：objヘルメットa」

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/obj/objヘルメットa.png");
	Move("絵背景100", 0, @0, @100, null, true);

	Move("絵背景100", 800, @0, @-100, Dxl2, false);
	Fade("絵背景100", 500, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0405]
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/18/000401710e05">
「ええと……どうしましょうか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	FadeDelete("絵背景100", 500, null, true);
	Wait(200);

	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("ムービー１");


	EndScene();
}
