
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1950ノーコ.nss_MAIN
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
	$GameName = "2000ノーコ.nss";
	//$GameCircle=false;

}

scene 1950ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//<continuation number="1680">
////////////header////////////
//file name "1950ノーコ.nss"
//title "ちかめいきゅうたんけん"
//previous "1949ノーコ.nss"

////////////footer////////////
//next "ノーコ" "2000ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintGO("上背景", 30000);

{	ClockPass(1950);}

//◆場所：あにのあな_正面
	CreateTextureEX("絵背景１", 10, 0, -1152, "cg/bg/bg0301211あにのあな_正面_停電.jpg");
	Fade("絵背景１", 0, 1000, null, true);


//	MusicStart("@xbgm01",0,450,0,1000,null,true);
	SoundPlay("@xbgm02",0,450,true);

	FadeDelete("上背景", 500, null, true);

	St("C",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500100010buu">
「ぐぐぐ……ぐぇ……」

{	St("MR",700, @0,@0,"buミヅハ_通常_surprise");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500100020mzh">
「ブー！　どうした！？」

{	St("C",700, @0,@0,"buみそa_通常_pinch");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100030mso">
「み……見誤った！　中がこんな戦場とは……」

{	St("C",700, @0,@0,"buみそa_オラオラ_pinch");
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100040mso">
「オレも身体が頑丈じゃなかったらどうなってたか」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500100050mzh">
「そ……そんなにすごいのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"buみそa_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100060mso">
「ブーがブラックライト付きハンディマイクを持ってなければ、恐らく帰ることすらままならなかっただろう」

{	St("MR",700, @0,@0,"buミヅハ_通常_think");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500100070mzh">
「ぶらっくらいと？」

{	St("C",700, @0,@0,"buブーa_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500100080buu">
「突然、頼んでもない通販で届いたブラックライト！
　急なカラオケボックスに……便利だぜ！」

{	St("ML",700, @0,@0,"buノーコa_幽霊_think");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/500100090nko">
「きゅうなカラオケボックスって、なに？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"buみそa_通常_smile");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100100mso">
「そりゃあもちろん、田んぼの中で突然――」

{	St("C",700, @0,@0,"buみそa_通常_normal");
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100110mso">
「あれ？　ブー？　さっきなんか言ったか？」

{	St("C",700, @0,@0,"buブーa_通常_normal");
	DeleteSt("C",200,true);
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500100120buu">
「いや。オレはなにも」

{	St("C",700, @0,@0,"buみそa_通常_hard");
	DeleteSt("C",200,true);
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100130mso">
「ん？　おっかしいなあ……
　確かに聞こえたんだけど……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"buブーa_通常_hard");
	DeleteSt("C",200,true);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500100140buu">
「って、いつもの空耳はいいからさ！
　姐さんを助けに、もう一回中に――」

{	St("MR",700, @0,@0,"buミヅハ_手構え_pride");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500100150mzh">
「待たれよ！」

{	St("MR",700, @0,@0,"buミヅハ_手構え_other");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500100160mzh">
「みそ、ブー！
　こんどは、わらわも連れて行くのじゃ！」

{	St("C",700, @0,@0,"buみそa_通常_pride");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100170mso">
「いやいや、オレたちでも苦戦するのに、子供のおまえが中に入るとか無理だから」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buミヅハ_通常_pride");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500100180mzh">
「わらわは子供ではない！
　神様じゃ！」

{	St("MR",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500100190mzh">
「おぬしらも、わらわの力を知っておるだろう？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1951);}

/*
//◆音声指示：同時
//◆音声指示：怯えうなずき
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100200mso">
「――――」

//◆音声指示：同時
//◆音声指示：怯えうなずき
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500100210buu">
「――――」
*/

//同時出しNGならカット演出とか良いんじゃないかなー
	DeleteSt("MR",200,true);
	St("L",700, @0,@0,"buみそa_通常_fear");
	St("R",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("L",200,false);
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//◆音声指示：同時
//◆音声指示：怯えうなずき
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100200">
「「――――」」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteSt("L",200,false);
	DeleteSt("R",200,true);

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/500100220nko">
「なにがあったの？」

//◆音声指示：小声
{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500100230mzh">
「こやつら、わらわを誘拐する途中で怖じ気づきおってな。
　実力行使で誘拐させたのじゃ」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/500100240nko">
「じつりょくこうし……？」

{	St("C",700, @0,@0,"buミヅハ_手構え_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500100250mzh">
「よいかふたりとも！
　半田明神はな、勝負事の神様として知られておる！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500100260mzh">
「沙紅羅など一発で探し当ててみせようぞ！」

{	St("MR",700, @0,@0,"buみそa_通常_happy");
	DeleteSt("C",200,false);
	MoveEX($MR_次, 200, 20, 0, Dxl1, false);
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100270mso">
「そ、そいつはありがてぇ！」

{	St("ML",700, @0,@0,"buブーa_通常_happy");
	DeleteSt("MR",200,false);
	MoveEX($ML_次, 200, -20, 0, Dxl1, false);
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500100280buu">
「これで姐さん、見つかったも同然だ！」

{	St("L",700, @0,@0,"buノーコa_幽霊_normal");
	DeleteSt("ML",200,false);
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/500100290nko">
「しんじた。たんじゅん」

{	St("MR",700, @0,@0,"buみそa_通常_smile");
	DeleteSt("L",200,false);
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100300mso">
「よっしゃ！　そうと決まったら早速出発だ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buブーa_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500100310buu">
「おうよ！　オレも休んじゃいられねぇ！」

{	St("C",700, @0,@0,"buミヅハ_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500100320mzh">
「ノーコよ。おぬしはどうする？」

{	St("L",700, @0,@0,"buノーコa_幽霊_think");
	St("L",100, @0,@0,"buノーコa_通常_normal");
	DeleteSt("C",200,false);
	FadeSt("L",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("L", 200, 2000);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/500100330nko">
「…………いく」

{	//★立ち絵プロセス：再定義
	AgainSt("L",100, @0,@0,"buノーコa_通常_normal");}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/500100340nko">
「ようじをおえたらじんじゃへつれていく」

{	St("C",700, @0,@0,"buミヅハ_通常_angry");
	DeleteSt("L",200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500100350mzh">
「それはいやじゃ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("L",700, @0,@0,"buノーコa_通常_normal");
	DeleteSt("C",200,false);
	FadeSt("L",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/500100360nko">
「それでも、とにかく、ついていく」

{	St("C",700, @0,@0,"buミヅハ_通常_normal");
	DeleteSt("L",200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500100370mzh">
「そうか……まあ、それもよかろ」

{	St("C",700, @0,@0,"buミヅハ_手構え_other");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500100380mzh">
「よし！
　それでは、沙紅羅を捜しに出発じゃ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

/*
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100390mso">
「おうっ！！」

//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500100400buu">
「おうっ！！」
*/
//同時出しNGならカット演出とか良いんじゃないかなー
	St("L",699, @0,@0,"buみそa_オラオラ_pride");
	St("R",699, @0,@0,"buブーa_オラオラ_hard");

	FadeSt("L",200,false);
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100390">
「「おうっ！！」」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 1000, 0, null);

	DeleteAllSt(200,true);


//	PrintGO("上背景", 30000);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


	CreateColorSPmul("絵停電色", 2999, "BLUE");
	Fade("絵停電色", 0, 300, null, true);
	CreateColorSP("絵色黒幕２", 500, "BLACK");
	CreateColorSP("絵色黒幕３", 1500, "BLACK");
	DrawTransition("絵色黒幕２", 0, 300, 300, 200, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("絵色黒幕３", 0, 550, 550, 250, null, "cg/data/slide_06_00_0.png", true);
	Fade("絵色黒幕３", 0, 500, null, true);


{	ClockPass(1952);}

//◆場所：あにのあな_店内_停電
	OnBG(10,"bg0302211あにのあな_店内_停電");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

	St("C",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("C",0,true);


	SoundPlay("@xbgm03",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500100410mzh">
「ぎゃー！　だずげでー！」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500100420mzh">
「ぐらいー！　づぶざれるー！！」

{	St("MR",700, @0,@0,"buみそa_通常_shout");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100430mso">
「大丈夫だッ！　落ち着けミヅハ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buブーa_通常_shout");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500100440buu">
「みんな紳士だ！
　三次元にはきっと手出ししねぇ！」

{	St("L",700, @0,@0,"buノーコa_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/500100450nko">
「しんでしまえ」

{	St("C",700, @0,@0,"buミヅハ_ダウナー_cry");
	DeleteSt("L",200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500100460mzh">
「もういやじゃ！
　沙悟浄！　九千坊！　出てたも――」

{	St("ML",700, @0,@0,"buブーa_通常_shock");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500100470buu">
「だめ！　こんなところであいつらを使ったら！
　大変なことに――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"buみそa_オラオラ_shout");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100480mso">
「こうなったら――ふん！」

{	Move($C_今, 200, @0, @40, Axl1, false);
	DeleteSt("C",200,true);
	St("C",700, @0,@0,"buミヅハ_通常_surprise");
	//★徒歩：ＳＥ
	CreateSE("SE01","se動作_バッグ渡す");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeT($C_次,0,0,200,0,-40,Dxl1,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500100490mzh">
「うきゃーっ！」

{	St("C",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500100500mzh">
「なななな、なんじゃ！？　高い！　高いぞ！」

{	St("C",700, @0,@0,"buミヅハ_フラット_happy");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500100510mzh">
「まるで大入道のようじゃ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",700, @0,@0,"buみそa_通常_pinch");
	FadeFF("@StNameC/C*",0,0,450,0,0,Dxl1,false);
	//FadeFF($C_今,0,1000,400,0,0,Dxl1,false);
	//FadeFF($C_次,0,0,500,0,0,Dxl1,false);
	DeleteSt("C",200,true);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100520mso">
「あ、暴れるな！　落ちる！　こら！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buブーa_通常_pinch");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500100530buu">
「な……なんだみそ！　いったい何を！」

{	St("C",700, @0,@0,"buミヅハ_フラット_happy");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500100540mzh">
「かたぐるまじゃ！」

{	St("ML",700, @0,@0,"buブーa_通常_angry");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500100550buu">
「代われ！」

{	St("C",700, @0,@0,"buみそa_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100560mso">
「断る！」

{	St("ML",700, @0,@0,"buブーa_通常_cry");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500100570buu">
「お願いです！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	St("C",700, @0,@0,"buみそa_通常_shout");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100580mso">
「ダメだっつーの！」

{	St("ML",700, @0,@0,"buブーa_通常_cry");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);
	Move($ML_今, 500, @0, @50, Axl1, false);
	DeleteSt("ML",500,true);
	//★徒歩：ＳＥ
	CreateSE("SE01","se人体_倒れる04");
	MusicStart("SE01",0,700,0,1000,null,false);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500100590buu">
「この通り！」

{	St("L",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/500100600nko">
「どげざ……」

{	St("C",700, @0,@0,"buみそa_通常_shout");
	DeleteSt("L",200,false);
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100610mso">
「ミヅハ！　姐さんはどっちだ！？」

{	St("C",700, @0,@0,"buミヅハ_通常_normal");
	DeleteSt("C",200,true);
	FadeSt("C",200,true);
	St("C",700, @0,@0,"buミヅハ_通常_think");
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 2000);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500100620mzh">
「うむ、しばし待てい！
　むむ、むむ、むむむむむ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1953);}


//	TextBoxDelete(150);

	//★立ち絵プロセス：再定義
	AgainSt("C",700, @0,@0,"buミヅハ_通常_think");

{	St("C",700, @0,@0,"buミヅハ_手構え_other");
	FadeSt("C",200,true);}

	CreateColorEX("絵色１", 10000, "#FFFFFF");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500100630mzh">
「おお、こっちじゃ！
　得も言われぬ力をビンビンと感じる！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("ML",700, @0,@0,"buブーa_通常_ero");
	St("ML",700, @0,@0,"buブーa_通常_shock");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);

	//★徒歩：ＳＥプロセス１
	CreateSE("SE09","se戦闘_打撃音02");
	MusicStartPro("@SE09",0,700,0,1000,null,false,1800);
	//★徒歩：フラッシュプロセス開始
	FlashPro("@絵色１", 100, 1000, 1800, 500, 0, 0);
	//★徒歩：シェイクプロセス
	ShakePro("@StNameML/ML*", 1000, 0, 20, 0, 0, 500, Dxl1, 1800);
	//★徒歩：ムーブプロセス開始
	MovePro("@StNameML/ML*", 200, @0, @50, Dxl1, 1800);
	//★立ち絵プロセス：開始
	FadeDeleteStPro("ML", 200, 1800, 200, 100);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500100640buu">
「オレもビンビ――ふげっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE11","seガヤ_客暴動_l");
	MusicStart("SE11",1000,200,0,1000,null,true);


	//★徒歩：フラッシュプロセス停止
	DustFlash("@絵色１",300,0,null,false);
	//★立ち絵プロセス：再定義
	DustSt("ML");
	//★徒歩：ＳＥプロセス停止（継続するなら必要なし）
	DustMusic("@SE09", 500, 0, NULL);
	//★徒歩：フラッシュプロセス停止
	DustFlash("@絵色１",200,0,null,false);
	//★徒歩：シェイクプロセス停止
	DustShake();
	//★徒歩：ムーブプロセス停止
	DustMove();

	St("C",700, @0,@0,"buみそa_通常_shout");
	MoveEX($C_次, 200, 0, -40, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0152]
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100650mso">
「いよっしゃ！　行くぞ！」

{	St("C",700, @0,@0,"buブーa_通常_sad");
	DeleteSt("C",200,true);
	FadeFF($C_次,0,0,500,0,-50,Dxl2, false);
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500100660buu">
「おう……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolumeEX("@xbgm*", 3000, 0, null);

	TextBoxDelete(150);




//◆演出指定：移動
	//PrintFadeNut("上背景", 1000, true);
	PrintDrawNut("上背景", 1000, 100, "blind_01_00_0", true);

	CreateColorSPmul("絵停電色", 2999, "BLUE");
	Fade("絵停電色", 0, 300, null, true);
	CreateColorSP("絵色黒幕２", 500, "BLACK");
	CreateColorSP("絵色黒幕３", 1500, "BLACK");
	DrawTransition("絵色黒幕２", 0, 300, 300, 200, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("絵色黒幕３", 0, 550, 550, 250, null, "cg/data/slide_06_00_0.png", true);
	Fade("絵色黒幕３", 0, 500, null, true);


	OnBG(10,"bg0302200あにのあな_店内_停電");
	FadeBG(0,true);

	//FadeDelete("上背景", 1000, null, true);
	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

{	St("ML",700, @0,@0,"buブーa_通常_normal");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500100670buu">
「ここは……地下？」

{	St("MR",700, @0,@0,"buみそa_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100680mso">
「人っ子ひとりいねーな」

{	St("ML",700, @0,@0,"buブーa_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500100690buu">
「年越しイベントがあるみたいだが……まだ早いしな」

{	St("ML",700, @0,@0,"buブーa_通常_sad");
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500100700buu">
「ってか、姐さんは同人誌の階にいるんじゃ？」

{	St("MR",700, @0,@0,"buみそa_通常_smile");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100710mso">
「けどよ、上は結構捜したぞ。
　案外、こういう意表を突いた場所にいるのかも」

{	St("ML",700, @0,@0,"buブーa_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500100720buu">
「なるほど……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆場所：あにのあな_地下扉




{	St("C",700, @0,@0,"buミヅハ_手構え_hard");
	DeleteSt("ML",200,false);

	MoveEX($C_次, 200, -40, 0, Dxl1, false);
	FadeSt("C",200,true);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500100730mzh">
「むむ、感じる……感じるぞ！
　この扉の奥から、なにやら凄まじい力が漂っておる！」

{	//★徒歩：ＳＥ
	CreateSE("SE01","se動作_屋上ドア開ける");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteSt("C",200,false);
	Wait(2000);
	St("ML",700, @0,@0,"buブーa_通常_hard");
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500100740buu">
「……駄目だ。鍵がかかってる」

{	St("C",700, @0,@0,"buミヅハ_通常_think");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500100750mzh">
「鍵？　むむ……なにか、開ける方法は……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buみそa_通常_pride");
	St("MR",700, @0,@0,"buみそa_通常_shout");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("MR", 200, 2000);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100760mso">
「心配無用！　こんなこともあろうかと――ブー！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//★立ち絵プロセス：再定義
	AgainSt("MR",700, @0,@0,"buみそa_通常_shout");

	St("C",700, @50,@0,"buブーa_通常_smile");
	St("C",700, @0,@0,"buブーa_オラオラ_shout");

	DeleteSt("MR",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]
{	MoveEX($C_次, 200, -40, 0, Dxl1, false);
	FadeSt("C",200,true);
	FadeXUU($C_次,0,0,400,-50,-20,-50,Dxl1,false);
	FadeSt("C",400,false);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500100770buu">
「デデデデッデデー！　扉破壊装置ッ！！」

{	St2("C",700, @0,@0,"fuノーコa_通常_normal","cg2/",".png");
	DeleteSt("C",100,true);
	MoveEX($C_次, 200, 0, -20, Dxl1, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/500100780nko">
「……ただのおの」

{	St("MR",700, @0,@0,"buみそa_オラオラ_angry");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100790mso">
「ただの斧じゃねぇ！
　これは、ブーを救出して脱便するために――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1954);}

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"buブーa_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500100800buu">
「だから、誰と話してるんだ？」

{	St("MR",700, @0,@0,"buみそa_オラオラ_shock");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100810mso">
「あれ？　おっかしーな……」

{	St("C",700, @0,@0,"buミヅハ_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500100820mzh">
「まあ良いではないか。それより扉を！」

{	St("MR",700, @0,@0,"buみそa_通常_normal");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100830mso">
「ああ、そうだったな！」

{	St("C",700, @0,@0,"buみそa_オラオラ_pride");
	Move($MR_今, 200, @-40, @0, Axl1, false);
	DeleteSt("MR",200,true);
	//★徒歩：ＳＥ
	CreateSE("SE01","se戦闘_刃物構える");
	MusicStart("SE01",0,700,0,1000,null,false);
	MoveEX($C_次, 200, 0, -50, Dxl1, false);
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100840mso">
「ウシ！　行くぞっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buブーa_通常_shout");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500100850buu">
「頼む、みそ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("ML",200,true);


	CreateWindow("絵ウィンドウ１", 150, 256, 0, 512, 576, false);
	SetAlias("絵ウィンドウ１", "絵ウィンドウ１");
	CreateTextureEX("絵ウィンドウ１/絵背景１", 2000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	CreateTextureEX("絵ウィンドウ１/絵人物１", 3000, Center, InBottom, "cg/bu/buみそa_オラオラ_shout.png");
	Move("絵ウィンドウ１/絵人物１", 0, @0, @250, null, true);

	$SYSTEM_effect_rain_dencity=128;
	$SYSTEM_effect_rain_speed=128;
	CreateEffect("絵ウィンドウ１/絵エフェクト１", 2000, 0, 0, 1024, 576, "Rain");
	SetAlias("絵ウィンドウ１/絵エフェクト１", "絵ウィンドウ１/絵エフェクト１");
	Fade("絵ウィンドウ１/絵エフェクト１", 0, 0, null, true);
	Rotate("絵ウィンドウ１/絵エフェクト１", 0, @0, @0, 180, null, true);

	CreateColorEX("絵ウィンドウ１/絵色１", 10000, "#FFFFFF");
	Request("絵ウィンドウ１/絵色１", AddRender);

	Zoom("絵ウィンドウ１", 0, 0, 1000, Dxl2, true);
	Fade("絵ウィンドウ１/絵エフェクト１", 0, 1000, null, false);
	Fade("絵ウィンドウ１/絵背景１", 0, 1000, null, false);
	Fade("絵ウィンドウ１/絵人物１", 0, 1000, null, true);

	Zoom("絵ウィンドウ１/絵背景１", 0, 2000, 2000, Dxl1, true);
	Rotate("絵ウィンドウ１/絵背景１", 10000000, @0, @0, @360000, null, false);

	CreateColorEX("絵色０", 9999, "#000000");
	CreateColorEX("絵色２", 10000, "#FFFFFF");
	Request("絵色２", AddRender);

	//▼シェイク
	MoveSSP1("@絵ウィンドウ１/絵人物１",100000,0,3,0,3,300,null);
	Move("@絵ウィンドウ１/絵人物１", 30000, @0, @-200, Dxl1, false);
	Zoom("絵ウィンドウ１", 300, 1000, 1000, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0201]
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100860mso">
「おおおおおおお――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Zoom("絵ウィンドウ１", 200, 2500, 1000, Dxl1, false);
	Fade("絵ウィンドウ１/絵色１", 200, 1000, null, true);

	Fade("絵色０", 0, 1000, null, true);
	Fade("絵色２", 0, 1000, null, true);

	//▼シェイク：停止
	MoveSSP1stop();
	Delete("絵ウィンドウ１/絵エフェクト１");

	//★徒歩：ＳＥ
	CreateSE("SE01","se戦闘_風切り音08");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵色２", 500, 0, null, false);
	DrawTransition("絵ウィンドウ１/絵色１", 500, 1000, 50, 1000, Dxl1, "cg/data/slide_08_00_1.png", false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0202]
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100870mso">
「ふんっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("絵色２", 200, 1000, null, true);
	Delete("絵ウィンドウ１");
	Delete("絵色０");

//◆ＳＥ：ドアぶっ壊す
	//★徒歩：ＳＥ
	CreateSE("SE01","se戦闘_切断破壊");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵色２", 200, 0, null, false);
	PlainShake(10, 2000, 0, 20, 0, 0, 500, Dxl1, false);

	Wait(1000);

	St("C",700, @0,@0,"buみそa_通常_pride");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100880mso">
「いよっしゃ！」

{	St("ML",700, @0,@0,"buブーa_通常_happy");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500100890buu">
「いよっ、みそ！　さすがのバカ力だぜ！」

{	St("L",700, @0,@0,"buノーコa_通常_shock");
	DeleteSt("ML",200,false);
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/500100900nko">
「ひじょうしき……」

{	St("C",700, @0,@0,"buみそa_通常_smile");
	DeleteSt("L",200,false);
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100910mso">
「へへへ……褒めるな褒めるな」

{	St("MR",700, @0,@0,"buミヅハ_通常_sigh");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500100920mzh">
「し……しかし……」

{	St("MR",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500100930mzh">
「なにやら、不気味なところじゃのう……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"buみそa_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100940mso">
「灯りも、ぜんぜんねぇや」

{	St("ML",700, @0,@0,"buブーa_オラオラ_happy");
	MoveEX($ML_次, 200, 0, -40, Dxl1, false);
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500100950buu">
「持ってて良かったブラックライト！」

{	St("MR",700, @0,@0,"buミヅハ_通常_think");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500100960mzh">
「普通のライトがあれば、もっといいんじゃがのう……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	SetVolumeEX("@xbgm*", 1000, 0, null);
	SetVolume("SE*", 2000, 0, null);

	//PrintFadeNut("上背景", 1000, true);
	PrintDrawNut("上背景", 1000, 100, "blind_01_00_0", true);

{	ClockPass(1955);}


//◆場所：地下_通路_あにのあな
	OnBG(10,"bg0701400地下_通路_あにのあな");
	FadeBG(0,true);

	Wait(500);

	Delete("絵色*");
	Delete("絵停電色");

	//FadeDelete("上背景", 1000, null, true);
	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

	SoundPlay("@xbgm24",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	St("MR",700, @0,@0,"buみそa_通常_shout");
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100970mso">
「おーい！　姐さーん！」

{	St("ML",700, @0,@0,"buブーa_通常_shout");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500100980buu">
「どこですかー！　出てきてくださいー！」

{	St("MR",700, @0,@0,"buみそa_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500100990mso">
「ホントにこんな所にいるのか？」

{	St("ML",700, @0,@0,"buブーa_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500101000buu">
「わかんねー。けど……姐さん、方向音痴だからな」

{	St("MR",700, @0,@0,"buみそa_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500101010mso">
「……確かに」

{	St("MR",700, @0,@0,"buみそa_通常_pride");
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500101020mso">
「おいミヅハ？　大丈夫か？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("R",700, @0,@0,"buミヅハ_通常_surprise");
	DeleteSt("MR",200,false);
	FadeSt("R",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500101030mzh">
「う……うむ！　ミヅハは大丈夫じゃ！」

{	St("R",700, @0,@0,"buミヅハ_通常_pride");
	Shake("@StNameR/R*", 300, 8, 0, 0, 0, 500, null, false);
	FadeSt("R",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500101040mzh">
「こわくないぞ！　全く、こわくなどない！」

{	St("R",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("R",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500101050mzh">
「だから、置いていくでないぞ！」

{	St("ML",700, @0,@0,"buブーa_通常_normal");
	DeleteSt("R",200,false);
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500101060buu">
「わかってるわかってる。なあ、みそ」

{	St("MR",700, @0,@0,"buみそa_通常_smile");
	DeleteSt("ML",200,false);
	Shake("@StNameMR/MR*", 500, 8, 0, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500101070mso">
「お……おう！」

{	St("ML",700, @0,@0,"buブーa_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500101080buu">
「……おまえも怖がってねぇ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreatePlainSP("絵背景１", 11);

	St("MR",700, @0,@0,"buみそa_通常_angry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);

	St("MR",700, @0,@0,"buみそa_通常_pinch");
	//★立ち絵プロセス：開始
	FadeStPro("MR", 200, 2000);

//◆ＳＥ：地鳴りと振動：地下鉄の音
	//★徒歩：ＳＥプロセス２
	CreateSE("SE09","se環境_地鳴り02_l");
	MusicStartPro2("@SE09",1500,1200,0,1000,null,true,1000,3000,2000);

	//★徒歩：シェイクプロセス開始
	ShakePro("@絵背景１", 5000, 0, 5, 0, 0, 500, AxlDxl, 1000);

//	PlainShake(10, 5000, 0, 5, 0, 0, 500, AxlDxl, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500101090mso">
「んなわけねえ！
　ただちょっと、気味が悪いだけ――」

{	//★立ち絵プロセス：再定義
	AgainSt("MR",700, @0,@0,"buみそa_通常_pinch");
	St("R",700, @0,@0,"buミヅハ_通常_surprise");
	DeleteSt("MR",200,false);
	FadeSt("R",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500101100mzh">
「――――ッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	//★徒歩：ＳＥプロセス停止（継続するなら必要なし）
	DustMusic("@SE09", 500, 0, NULL);

	CreatePlainEX("絵背景１", 10);
	Fade("絵背景１", 300, 1000, null, true);

	//★徒歩：シェイクプロセス停止
	DustShake();

	Delete("絵背景１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	St("MR",700, @0,@0,"buみそa_通常_fear");
	DeleteSt("R",200,false);
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500101110mso">
「な……なんだ、今の音は？」

{	St("ML",700, @0,@0,"buブーa_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500101120buu">
「地震――じゃねぇよな」

{	St("MR",700, @0,@0,"buみそa_通常_pinch");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500101130mso">
「ミヅハ！」

{	St("R",700, @0,@0,"buミヅハ_通常_sigh");
	DeleteSt("MR",200,false);
	FadeSt("R",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500101140mzh">
「な――なんじゃ？」

{	St("MR",700, @0,@0,"buみそa_通常_happy");
	DeleteSt("R",200,false);
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500101150mso">
「ほ、本当にさあ、この奥にあるのか？」

{	St("R",700, @0,@0,"buミヅハ_通常_sigh");
	DeleteSt("MR",200,false);
	FadeSt("R",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500101160mzh">
「な、なんだか自信がなくなってきたのう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buみそa_オラオラ_happy");
	DeleteSt("R",200,false);
	MoveEX($MR_次, 200, 0, -40, Dxl1, false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500101170mso">
「だよなぁ！」

{	St("MR",700, @0,@0,"buみそa_通常_happy");
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500101180mso">
「じゃあ、後戻りってことで――」

{	St("R",700, @0,@0,"buミヅハ_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("R",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500101190mzh">
「うむ！　そうする――」

{	St("C",700, @0,@0,"buブーa_通常_shout");
	DeleteSt("R",200,false);
	MoveEX($C_次, 200, 40, 0, Dxl1, false);
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500101200buu">
「ちょっと待った！」

{	St("C",700, @0,@0,"buブーa_通常_hard");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500101210buu">
「コレ――矢印じゃねぇか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteSt("C",200,true);

//◆演出指定：地下通路の壁に浮かびあがる矢印・ブラックライトでしか光らない
//あきゅん「img地下通路の矢印」
	CreateTextureEX("絵背景１", 2000, 0, 0, "cg/img/img地下通路の矢印.jpg");

	DrawTransition("絵背景１", 2000, 0, 1000, 100, null, "cg/data/circle_02_00_0.png", false);
	Fade("絵背景１", 2000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500101220mzh">
「なんじゃこれは……！」

//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500101230buu">
「蛍光塗料……？　いや、違うな。
　ガラスの破片がモザイクではめ込んである」

//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500101240buu">
「コイツ、ずいぶん年代物だぜ」

//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500101250mso">
「どうしてこんな所に？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(1956);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500101260buu">
「この先に行ってみれば、わかるだろ」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500101270mzh">
「……行くのか？」

//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500101280buu">
「『得も言われぬ力』を感じるんだろ？」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500101290mzh">
「じゃが……正直、沙紅羅とは限らんぞ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	FadeDelete("絵背景１", 500, null, true);

{	St("C",700, @0,@0,"buブーa_通常_hard");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500101300buu">
「どっちみち、手がかりがねぇんだ。オレは行く」

{	//★徒歩：ＳＥ
	CreateSE("SE01","se動作_歩く03_l");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("MR",700, @0,@0,"buみそa_オラオラ_shock");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500101310mso">
「お……ちょい、待て――」

{	St("MR",700, @0,@0,"buみそa_オラオラ_pinch");
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500101320mso">
「あー！　もう！　しゃーねーなー！」

{	//★徒歩：ＳＥ
	CreateSE("SE02","se動作_歩く03_l");
	MusicStart("SE02",0,700,0,1000,null,false);

	St("R",700, @0,@0,"buミヅハ_通常_sigh");
	DeleteSt("MR",200,false);
	FadeSt("R",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500101330mzh">
「コラ！　みそブー！　ミヅハを置いていくでない！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	//★徒歩：ＳＥ
	CreateSE("SE03","se動作_走る02_l");
	MusicStart("SE03",0,700,0,1000,null,false);

	DeleteSt("R",200,false);

	Wait(2000);

	St("ML",700, @0,@0,"buノーコa_幽霊_think");
	FadeSt("ML",400,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0301]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/500101340nko">
「……やれやれ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move($ML_今, 200, @0, @-20, Axl1, false);
	DeleteSt("ML",200,true);







	//PrintFadeNut("上背景", 1000, true);
	PrintDrawNut("上背景", 1000, 100, "blind_01_00_0", true);


{	ClockPass(1957);}

//◆場所：地下_地下鉄
	OnBG(10,"bg0703100地下_地下鉄_通常");
	FadeBG(0,true);

	St("ML",700, @0,@0,"buブーa_通常_normal");

//◆演出指定：線路沿い
	//★徒歩：ＳＥプロセス２
	CreateSE("SE09","se環境_地鳴り02_l");
	MusicStartPro2("@SE09",1000,1200,0,1000,null,true,0,4000,2000);
	PlainShake(10, 5000, 0, 10, 0, 0, 500, AxlDxl, false);

	//FadeDelete("上背景", 1000, null, true);
	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

	Wait(2000);

	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500101350buu">
「地下鉄……か。まさか繋がってるなんてな」

{	St("MR",700, @0,@0,"buみそa_通常_pinch");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500101360mso">
「ってことは、さっきの地鳴りは地下鉄？」

{	St("MR",700, @0,@0,"buみそa_通常_pride");
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500101370mso">
「ったく！　ふざけやがって！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	FadeDelete("上背景", 100, null, true);

//◆ＳＥ：ビビビビビビビビ！　電気の音
	St("C",700, @0,@0,"buみそa_オラオラ_pride");
	St("C",700, @0,@0,"buみそa_オラオラ_angry");

	CreateSE("SE09","se環境_電撃");
	CreateTextureEX("絵背景１", 10000, 0, 0, "cg/bg/bg0703100地下_地下鉄_通常.jpg");
	CreateTextureSP("絵背景２", 10, 0, 0, "cg/bg/bg0703100地下_地下鉄_通常.jpg");

	DeleteSt("MR",200,true);
	FadeTT($C_次,0,0,300,0,-50,Dxl2,false);
	FadeSt("C",200,true);

	$temp1950=$C_次;

	//★ロック設置
	LockVideo(true);

	//★徒歩：ＳＥプロセス２
	MusicStartPro2("@SE09",0,800,0,1000,null,false,2000,4000,1000);
	//★徒歩：シェイクプロセス１開始
	ShakePro1($C_次, 4000, 0, 20, 0, 0, 500, null, 2000);
	//★徒歩：シェイクプロセス２開始
	ShakePro2("@絵背景２", 4000, 20, 0, 0, 0, 500, null, 2000);
	//★徒歩：電撃プロセス
	CreateElect("ElectProcess",2000);
	//★立ち絵プロセス：開始
	FadeDeleteStPro("C", 100, 2000, 500, 2500);

	//★ロック設置
	LockVideo(false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0311]
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500101380mso">
「オレたちをビビらせんじゃねあでででででででッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("絵背景１", 100, 1000, null, true);

	//★徒歩：ＳＥプロセス停止（継続するなら必要なし）
	DustMusic("@SE09", 500, 0, NULL);
	//★徒歩：シェイクプロセス停止
	DustShake1();
	DustShake2();
	//★徒歩：電撃プロセス停止
	StopElect();
	//★立ち絵プロセス：再定義
	DustSt("C");

	Delete("絵背景２");

	FadeDelete("絵背景１", 100, null, true);

{	St("ML",700, @0,@0,"buブーa_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500101390buu">
「みそ！　おい、大丈夫かッ！！」

{	St("MR",700, @0,@0,"buみそa_通常_fear");
//	$silhouette=true;
//	St("MR2",700, @0,@0,"buみそa_通常_fear");
//	$silhouette=false;
	DeleteSt("ML",200,false);
	FadeSt("MR",200,false);
//	FadeSt("MR2",200,true);
}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500101400mso">
「しび……しびれた……」

{	St("ML",700, @0,@0,"buブーa_通常_pinch");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500101410buu">
「チッ！　コレが第三<RUBY text="きじょう">軌条</RUBY>方式ってやつか……」

{	St("MR",700, @0,@0,"buミヅハ_フラット_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500101420mzh">
「だいさんきじょうほうしき？」

{	St("ML",700, @0,@0,"buブーa_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500101430buu">
「ほら、普通電車は上の電線から電気流すだろ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Delete("@SE09");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500101440buu">
「ところがこれは、横に１本高圧線を引いて、そっから電気を流すんだ」

{	St("ML",700, @0,@0,"buブーa_通常_sad");
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500101450buu">
「コストとかが安く済むから、昔の線路とかには使われてたんだっけかな……？」

{	St("MR",700, @0,@0,"buみそa_通常_pride");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500101460mso">
「さ……さすがブーだ。賢いぜ！」

{	St("ML",700, @0,@0,"buブーa_通常_pride");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500101470buu">
「へっへっへ……褒めるなみそ」

{	St("C",700, @0,@0,"buミヅハ_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500101480mzh">
「しかし……よく生きておったのう……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(1958);}

	TextBoxDelete(150);

	St("MR",700, @0,@0,"buみそa_オラオラ_pride");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500101490mso">
「なんてったって、オレ様は頑丈だからな！」

{	St("MR",700, @0,@0,"buみそa_オラオラ_happy");
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500101500mso">
「はっはっはっはっは！」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/500101510nko">
「もうすこし、せいみつなつくりでもいい」

{	St("MR",700, @0,@0,"buみそa_オラオラ_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500101520mso">
「うるせぇ！　余計なお世話――」

{	St("MR",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500101530mso">
「あ、あれ？　また――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
{	St("C",700, @0,@0,"buミヅハ_手構え_other");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500101540mzh">
「矢印はこっちだ！　行くぞ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

{	ClockPass(1959);}
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆場所：籠_正面
	OnBG(10,"bg0801100籠_正面_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0351]
{	St("MR",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500101550mso">
「しかし……ずいぶん入り組んでるな」

//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500101560mso">
「もし、こんなところで迷ったら……」

{	St("ML",700, @0,@0,"buブーa_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500101570buu">
「大丈夫。矢印を逆向きに辿ればいいんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500101580buu">
「オレがこの、ブラックライトを持ってる限り――」

{	St("MR",700, @0,@0,"buみそa_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500101590mso">
「お……おい！」

{	St("MR",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500101600mso">
「コレ……なんだ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 2000, 0, null);

	DeleteAllSt(200,true);


	CreatePlainSP("揺用", 2005);

	CreateColorSP("絵黒幕", 1000, "BLACK");
	DrawTransition("絵黒幕", 0, 500, 500, 200, null, "cg/data/circle_02_00_1.png", true);



	CreateTextureSP("絵背景", 100, 0, 0, "cg/bg/l/bg0801200籠_正面_ブラックライト_l.jpg");
	FadeDelete("揺用", 1000, null, false);
	Move("絵背景", 5000, -1024, @0, AxlDxl, true);


//◆場所：籠_正面_ブラックライト
	OnBG(10,"bg0801200籠_正面_ブラックライト");
	FadeBG(0,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0365]
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500101610mso">
「なんか、書いてあるぞ……」

//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500101620buu">
「ホントだ……」

//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500101630buu">
「文字……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{
	Move("絵背景", 2000, 0, @0, AxlDxl, true);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/500101640buu">
「Ａ……Ｘ……Ａ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{
	Move("絵背景", 2000, -1024, @0, AxlDxl, true);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0371]
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/500101650mso">
「Ｎ……Ａ……Ｅ……Ｌ」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/500101660mzh">
「ふたりとも……」

<voice name="ミヅハ" class="ミヅハ" src="voice/19/500101670mzh">
「少し、下がるのじゃ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	FadeDelete("絵背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【ミヅハ】
　ミヅハの声で、みそブーが下がる。

　壁全体に、ブラックライトの光が当たる。

　蛍光色に輝くその文字が描くのは……

//◆演出指定：少し下がって、ライトを全体に当てる
</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	FadeDelete("絵黒幕", 3000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0382]
{	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/500101680nko">
「<RUBY text="アザナエル">ＡＸＡＮＡＥＬ</RUBY>……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);


	EndScene();
}
