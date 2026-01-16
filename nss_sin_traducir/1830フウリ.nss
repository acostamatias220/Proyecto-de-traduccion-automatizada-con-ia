
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1830フウリ.nss_MAIN
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
	$GameName = "1850千秋_フウリ.nss";
//	$GameCircle=false;

}

scene 1830フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1880">
////////////header////////////
//file name "1830フウリ.nss"
//title "たたくのは得意です！"
//previous "1820フウリ.nss"


////////////footer////////////
//next "フウリ" "1850千秋_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1830);}


//◆場所：スーパーノヴァ_ライブ会場_消灯
	OnBG(10,"bg0502200スーパーノヴァ_ライブ会場_消灯");
	FadeBG(0,true);

	SoundPlay("@xbgm20",1000,450,true);

	CreateWindow("win01", 200, 0, 30, 1024, 240, false);
	CreateTextureEX("win01/絵背景100", 180, 16, 233, "cg/bg/bg0502211スーパーノヴァ_ライブ会場_消灯.jpg");
	CreateTextureEX("win01/絵st100", 180, 60, -31, "cg/bu/bu鈴_シリアス_hard.png");
	Zoom("win01/絵背景100", 0, 2000, 2000, null, true);
	SetShade("win01/絵背景100", HEAVY);

	CreateWindow("win02", 200, 0, 306, 1024, 240, false);
	CreateTextureEX("win02/絵背景100", 180, 16, 233, "cg/bg/bg0502211スーパーノヴァ_ライブ会場_消灯.jpg");
	CreateTextureEX("win02/絵st100", 180, 419, 212, "cg/bu/buフウリ_通常_hard.png");
	Zoom("win02/絵背景100", 0, 2000, 2000, null, true);
	SetShade("win02/絵背景100", HEAVY);


	DrawDelete("上背景", 500, 100, null, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　ステージの準備は整っていた。

　遅刻のボーカルに代わり、アルバイトがひとり、ステージに立つ。

{	Move("win01", 500, @0, 40, null, false);
	Fade("win01/絵*", 500, 1000, null, false);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300100010fjr">
「じゃ、リハ始めます！」

{	Move("win02", 500, @0, 296, null, false);
	Fade("win02/絵*", 500, 1000, null, false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100020wfu">
（鈴ちゃん……気合い入ってる……）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100030wfu">
（後は音を鳴らすだけ）

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300100040fjr">
「今日までずっと、練習してきたんだから」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateTextureEX("win01/絵st200", 180, 60, -31, "cg/bu/bu鈴_シリアス_angry.png");
	CreateTextureEX("win02/絵st200", 180, 419, 212, "cg/bu/buフウリ_通常_hard.png");
	CreateTextureEX("win02/絵st300", 180, 419, 212, "cg/bu/buフウリ_通常_fear.png");

	Fade("win01/絵st200", 200, 1000, Dxl1, true);
	Fade("win01/絵st100", 0, 0, Axl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300100050fjr">
「アタシたち、絶対、メジャーになれる！」

{	Fade("win01/絵st100", 200, 1000, Dxl1, false);
	Fade("win02/絵st200", 200, 1000, Dxl1, true);
	Fade("win02/絵st100", 0, 0, Axl1, false);
	Fade("win01/絵st200", 0, 0, Axl1, false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100060wfu">
「はい」

{	Fade("win02/絵st300", 200, 1000, Dxl1, true);
	Fade("win02/絵st200", 0, 0, Axl1, true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100070wfu">
（うう……嘘です！）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100080wfu">
（上手くいっても、デビューできるのは私だけ……）

{	Fade("win01/絵st200", 200, 1000, Dxl1, true);
	Fade("win01/絵st100", 0, 0, Axl1, true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300100090fjr">
「フウリちゃん！　しゃんとして！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockTime(1831);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300100100fjr">
「今日は、大チャンスなんだから！」

{	Fade("win02/絵st200", 200, 1000, Dxl1, true);
	Fade("win02/絵st300", 0, 0, Axl1, true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100110wfu">
「は……はい……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100120wfu">
（だめだ……ボーッとしている場合じゃない）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100130wfu">
（私も、ちゃんとやらなきゃ……）

{	SetVolume("@xbgm20", 1000, 0, null);
	Move("win01", 500, @0, -100, null, false);
	Move("win02", 500, @0, 676, null, false);
	Fade("win01/絵*", 500, 0, null, false);
	Fade("win02/絵*", 500, 0, null, true);
	St("C",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100140wfu">
「行きます……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

//◆演出指示：音楽鳴り始める


//※下倉注：イントロだけを流してから、例の新エフェクトで回想に入りたいです。

//◆演出指定：回想
	MusicStart("@xsong02_oke",0,450,0,1000,null,true);

	Wait(2620);

	SetVolumeEX("@xsong02_oke", 3000, 1000, null);

	Wait(4500);

	SetVolumeEF("@xsong02_oke", 1000);

//嶋：借入
//	SoundPlay("@xbgm25",1500,1000,true);
//	Wait(3000);
//	SetVolumeEF("@xbgm25", 1000);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	ClockDelete(1000,false);
	Fade("フラッシュ白",1000,1000,null,true);
	Delete("win01/絵*");
	Delete("win02/絵*");
	Delete("win01");
	Delete("win02");

	DeleteAllSt(0,true);

	Wait(2000);


	CreateSE("SE04","seガヤ_ざわざわ_l");
	MusicStart("SE04",1500,700,0,1000,null,true);

//◆場所：秋葉原駅_正面
	OnBG(10,"bg0201112秋葉原駅_正面_通常");
	FadeBG(0,true);

	CreateColor("色回想", 5000, 0, 0, 1024, 576, "WHITE");
	SetAlias("色回想", "色回想");
	Request("色回想", AddRender);
	Fade("色回想", 0, 150, null, true);

	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");

{	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}

//※下倉注：右往左往して色んな人に声をかけてる感じを出して欲しい 2010/11/18

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100150wfu">
「あの……絵に興味、ありませんか？」

{	Move("@StNameC/C*", 200, @+100, @0, Dxl1, false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100160wfu">
「おねがいします」

{	Move("@StNameC/C*", 200, @-200, @0, Dxl1, false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100170wfu">
「ちょっとお話を……」

{	Move("@StNameC/C*", 200, @+200, @0, Dxl1, false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100180wfu">
「おねがい……します……」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100190wfu">
「きゅぅぅ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1832);}

	TextBoxDelete(150);


{	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100200wfu">
（東京は……きびしいところです……）

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100210wfu">
（おなかも空きました……）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100220wfu">
（このまま今月のノルマが果たせないと……）

{	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100230wfu">
（うう……考えてる場合じゃない！）

{	DeleteSt("C",200,true);
	St("C",700, @-30,@0,"bu鈴_通常_normal");
	Move("@StNameC/C*", 200, @+30, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300100240fjr">
「お願いしまーす！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300100250fjr">
「アキバアミューズメントエリア・スーパーノヴァ！
　今日も元気に、朝の５時まで営業でーすっ！」

{	St("C",700, @0,@0,"bu鈴_通常_happy");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300100260fjr">
「どうですかっ？
　朝まで一緒に、遊んじゃいませんっ？」

{	Move("@StNameC/C*", 300, @+30, @0, Dxl1, false);
	DeleteSt("C",200,true);
	St("C",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100270wfu">
（ああ……あのひと、すごいです……）

{	St("C",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100280wfu">
（それにくらべて、私はぜんぜん……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100290wfu">
（うう……弱音を吐いてる場合じゃないです）

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100300wfu">
（じゃないと、教習ビデオのように、あわぶろに……）


{	St("C",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100310wfu">
「お願いしますッ！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100320wfu">
「あの、お話を！
　すごく綺麗な絵があります！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1833);}

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"buフウリ_前のめり_smile");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100330wfu">
「少しでいいので、話を聞いてもらえると――」

{	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100340wfu">
（うう……だめです）

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100350wfu">
（寒いし、お腹もぺこぺこだし……）

{	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100360wfu">
「もう、帰りたい……」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300100370fjr">
「ね、ちょっとあなた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300100380fjr">
「大丈夫かな？
　なんか泣いちゃいそうな顔――」

{	St("MR",700, @0,@0,"buフウリ_胸手_think");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100390wfu">
「大丈夫です……
　泣いたりなんかしません……」

{	St("ML",700, @0,@0,"bu鈴_シリアス_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300100400fjr">
「嫌なことさせられてるんじゃないの？」

{	St("MR",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100410wfu">
「そんなこと、ないです」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1834);}

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu鈴_シリアス_shout");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300100420fjr">
「でも――」

{	DeleteSt("ML",200,true);
	St("C",700, @+100,@0,"buフウリ_通常_angry");
	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100430wfu">
「みなさーん！　絵を買いませんかー！？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100440wfu">
「綺麗で貴重な、絵ですよー！」

{	DeleteSt("C",200,true);
	St("ML",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300100450fjr">
「………………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指示：時間経過

	CreateColorEX("フラッシュ白", 15000, "Black");
	Fade("フラッシュ白",1000,1000,null,true);

	DeleteAllSt(0,true);

	Wait(500);

	Fade("フラッシュ白",1000,0,null,true);
	Delete("フラッシュ白");


{	St("MR",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100460wfu">
「きゅぅぅぅぅ……」

{	St("ML",700, @0,@0,"buジャブル_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/300100470jbr">
「フウリ、今日も駄目デスネ？」

{	St("MR",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100480wfu">
「ひぇっ！
　あ……ジャブルさん……」

{	St("ML",700, @0,@0,"buジャブル_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/300100490jbr">
「約束デスネ。ノルマ果たせなかたら――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1835);}

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100500wfu">
「あの、でも、もう少しだけ……」

{	St("ML",700, @0,@0,"buジャブル_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/300100510jbr">
「ワタシ、大学追われて、今はただの雇われ店長。
　数学とショバイには自信あるデスが、力まだナイ」

//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/300100520jbr">
「だからなにもしてあげられないデス。
　カタジケナイ」

{	St("MR",700, @0,@0,"buフウリ_胸手_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100530wfu">
「あ……ごめんなさい。そうですよね……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buジャブル_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/300100540jbr">
「一緒に来てくれマスカ？」

{	St("MR",700, @0,@0,"buフウリ_胸手_think");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100550wfu">
「……はい」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("MR",200,true);

	SetVolume("@SE*", 1000, 0, null);




	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//バックギャモンＢＧＭに差し替え
	SoundPlay("@xsong01",4000,150,true);

//◆場所：バックギャモン_正面
	OnBG(10,"bg1001100バックギャモン_正面_通常");
	FadeBG(0,true);

{	ClockTime(1836);}



	DrawDelete("黒幕１", 1000, 100, null, "blind_01_00_1", true);

	St("MR",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100560wfu">
「…………うう」

{	St("ML",700, @0,@0,"buジャブル_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/300100570jbr">
「ダイジョブデスネ。
　双一オヤビンも鬼じゃありませんデスヨ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/300100580jbr">
「話せばきっと――」

{	DeleteSt("ML",200,true);}
//嶋：わざと立ち絵出してないです
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/300100590ksr">
「おい、いるんだろ？　入れ！」

{	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100600wfu">
「は、はい……」

{	Move("@StNameC/C*", 200, @+50, @0, Dxl1, false);
	DeleteSt("C",200,true);
	St("C",700, @0,@0,"buジャブル_通常_normal");
	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/300100610jbr">
「フウリ、がんばるのデス！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆場所：バックギャモン_店内
	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);

	SetVolumeEX("@xsong01", 1500, 300, null);


	DrawDelete("黒幕１", 500, 100, null, "blind_01_00_1", true);

{	St("ML",700, @-50,@0,"buフウリ_通常_normal");
	Move("@StNameML/ML*", 200, @+50, @0, Dxl1, false);
	FadeSt("ML",200,true);}

{	ClockTime(1837);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100620wfu">
「双六さん……あの……こんばんは」

{
//	SoundPlay("@xbgm04",0,450,true);
	St("MR",700, @0,@0,"bu双六a_通常_pride");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/300100630ksr">
「双一親分との約束、憶えてんな？」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100640wfu">
「あの……でも……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100650wfu">
「もう少しだけ、時間をもらえませんか？」

{	St("MR",700, @0,@0,"bu双六a_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/300100660ksr">
「親分にメシ、食わせてもらったよな？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100670wfu">
「あ……それは、はい」

{	St("MR",700, @0,@0,"bu双六a_通常_smile");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/300100680ksr">
「家、保証人になってもらったよな？」

{	St("ML",700, @0,@0,"buフウリ_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100690wfu">
「感謝、してます」

{	St("MR",700, @0,@0,"bu双六a_通常_smile");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/300100700ksr">
「仕事も、世話してもらっただろ？」

{	St("ML",700, @0,@0,"buフウリ_胸手_think");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100710wfu">
「…………はい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu双六a_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/300100720ksr">
「でも、結果が出なかった」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/300100730ksr">
「結果が出なかったときはどうするか――」

{	St("MR",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/300100740ksr">
「双一親分に聞いてみるか？」

{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100750wfu">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1838);}

	TextBoxDelete(150);

	DeleteAllSt(200,true);

//	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/obj/obj携帯メール_フウリ1830.png");
//	Move("絵背景100", 0, @0, @+100, null, true);

	CreateAXLPhWindowEX("絵演窓", "Y", 2100, 96, 192, false);
	PhWindowAXLZoom("絵演窓", "Y", 0, 0, null, true);
	CreateTextureSP("絵演窓/絵演物", 2010, Center, 90, "cg/obj/obj携帯メール_フウリ1830.png");


//	Move("絵背景100", 300, @0, @-100, Dxl1, false);
//	Fade("絵背景100", 300, 1000, null, true);

	PhWindowAXLZoom("絵演窓", "Y", 300, 1000, Dxl1, true);

	Wait(500);

//演出：携帯電話が渡される。ディスプレイには、「河原屋双一」の文字。
//あきゅん「素材：obj携帯メール_フウリ1830」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100760wfu">
「…………」

　フウリは発信できない。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	Move("絵背景100", 300, @0, @+100, Dxl1, false);
//	Fade("絵背景100", 300, 0, null, true);
//	Delete("絵背景100");
	PhWindowAXLZoom("絵演窓", "Y", 300, 0, Axl1, true);
	Delete("@絵演窓*");
	St("MR",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/300100770ksr">
「人には向き不向きがある」

{	St("MR",700, @0,@0,"bu双六a_通常_smile");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/300100780ksr">
「な、そうだろ？」

{	St("ML",700, @0,@0,"buフウリ_胸手_shout");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100790wfu">
「でも私は――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu双六a_通常_pride");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/300100800ksr">
「世の中辛いことばっかりじゃねーんだぞ？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/300100810ksr">
「美味いモン食って、綺麗な服買って、な？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/300100820ksr">
「色んな人を気持ちよくさせて、それで自分もお金がもらえるんだから、そりゃおまえ、万々歳だろ？　な？」

{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100830wfu">
「…………」

{	St("MR",700, @0,@0,"bu双六a_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/300100840ksr">
「じゃ、行こうか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1839);}

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100850wfu">
「あの、でも……」

{	St("MR",700, @0,@0,"bu双六a_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/300100860ksr">
「行・く・ぞ！」

{	St("ML",700, @0,@0,"buフウリ_通常_fear");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100870wfu">
「は……はい……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//　河原屋双六は、フウリの手を引き店を出る。

{	DeleteSt("ML",200,true);}
//◆場所：バックギャモン_正面
//	OnBG(10,"bg1001100バックギャモン_正面_通常");
//	FadeBG(500,true);

//◆ＳＥ：ドロップキック

//嶋：表示方法調整予定
//※下倉注：ここはテンポが悪いのでバックギャモン正面を出さずに店内に鈴が突っ込んできた流れに修正お願いします
	CreateTextureEX("絵背景10", 120, -950, -65, "cg/ev/l/ev1830鈴ドロップキック_l.jpg");
	SetBlur("絵背景10", true, 5, 500, 50, false);
	CreateTextureEX("絵背景1", 119, 0, 0, "cg/ev/ev1830鈴ドロップキック.jpg");


//バックギャモンＢＧＭに差し替え
//	SetVolume("@xbgm04", 500, 0, null);
	SetVolumeEX("@xsong01", 500, 0, null);

	CreateSE("SE01","se環境_地鳴り03");
	CreateSE("SE02","se戦闘_打撃_ドロップキック01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("絵背景10", 60000, 2, 1, 0, 0, 1000, Dxl1, false);
	Fade("絵背景1", 500, 1000, null, false);
	Fade("絵背景10", 500, 1000, null, true);

	CreateColorEX("フラッシュ白", 15000, "WHITE");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0201]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300100880fjr">
「チェスト――――――ッ！！」

{	Shake("絵背景10", 0, 0, 0, 0, 0, 1000, Dxl1, false);
	Move("絵背景10", 400, -512, -288, Dxl2, false);
	Zoom("絵背景10", 400, 750, 750, Dxl2, false);
	Wait(250);
	Move("絵背景10", 200, -78, -432, Axl1, false);
	Zoom("絵背景10", 200, 1000, 1000, Axl1, false);
	Wait(200);
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("フラッシュ白",0,1000,null,true);
	Delete("絵背景10");
	Delete("絵背景1");
	CreateTextureEX("絵背景10", 1, 0, 0, "cg/bg/bg1001100バックギャモン_正面_通常.jpg");
	Shake("@OnBG*", 500, 1, 5, 0, 0, 1000, null, false);
	FadeDelete("フラッシュ白",300,null,false);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/300100890ksr">
「どは――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SoundPlay("@xbgm03",0,450,true);
	St("MR",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100900wfu">
「え？　ドロップキック！？」

{	DeleteAllSt(200,false);
	St("ML",700, @-30,@0,"bu鈴_シリアス_angry");
	Move("@StNameML/ML*", 200, @+30, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300100910fjr">
「ほら、逃げちゃうよっ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100920wfu">
「でも、逃げるって――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300100930fjr">
「聞いてたの！
　売られたりするの嫌だよね！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300100940wfu">
「でも、それは……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@+30,"bu双六a_通常_shout");
	Move("@StNameC/C*", 200, @0, @-30, Dxl1, false);
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/300100950ksr">
「な、なにすんだボケええええええええ！！」

{	CreateSE("SE01","se戦闘_風切り音06");
	MusicStart("SE01",0,700,0,1000,null,false);
	Zoom("@StNameC/C*", 200, 1200, 1200, null, false);
	DeleteSt("C",200,true);
	St("C",700, @0,@0,"bu鈴_通常_normal");
	CreateSE("SE02","se動作_足踏み");
	MusicStart("SE02",0,700,0,1000,null,false);
	Move("@StNameC/C*", 200, @-200, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300100960fjr">
「ほりゃ！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu双六a_通常_pinch");
	CreateSE("SE03","se戦闘_打撃音01");
	MusicStart("SE03",0,700,0,1000,null,false);
	Shake("@StNameC/C*", 300, 3, 0, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/300100970ksr">
「うおっ！」

　突撃した双六が躱され壁際に突き飛ばされると――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1840);}


//	TextBoxDelete(150);

	DeleteAllSt(200,true);

{	St("ML",700, @-200,@0,"bu鈴_シリアス_angry");
	Move("@StNameML/ML*", 200, @+200, @0, Dxl1, false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300100980fjr">
「大気圏突破式・ドロップキ――――ック！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);


	CreateTextureEX("絵背景10", 1000, 0, 0, "cg/ev/ev1830鈴ドロップキック.jpg");

	Zoom("絵背景10", 0, 2000, 2000, null, true);
	SetBlur("絵背景10", true, 3, 500, 50, false);

	Zoom("絵背景10", 350, 1000, 1000, Dxl1, false);
	Fade("絵背景10", 350, 1000, null, false);

	Wait(300);

	CreateColorEX("フラッシュ白", 15000, "WHITE");

	DeleteAllSt(0,true);


	CreateSE("SE01","se戦闘_打撃_ドロップキック01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("フラッシュ白",0,1000,null,true);

	Delete("絵背景10");

	St("C",700, @0,@0,"bu双六a_通常_angry");
	FadeSt("C",0,true);

	Shake("@StNameC/C*", 1000, 10, 0, 0, 0, 1000, null, false);

	St("C",700, @0,@0,"bu双六a_通常_pinch");

	FadeDelete("フラッシュ白", 1000, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0231]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/300100990ksr">
「ふげえええええええッ！！」

{	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/300101000ksr">
「あうあ……あう……がくっ！」

{	CreateSE("SE01","se人体_倒れる04");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("@StNameC/C*", 250, @0, @+100, Dxl1, false);
	DeleteSt("C",200,true);
	St("ML",700, @-50,@0,"bu鈴_シリアス_angry");
	Move("@StNameML/ML*", 200, @+50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101010fjr">
「今のうちっ！　逃げちゃおっ！」

{	Move("@StNameML/ML*", 200, @-200, @0, Dxl1, false);
	DeleteSt("ML",200,true);
	St("MR",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101020wfu">
「は、はい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se動作_走る05_l");
	MusicStart("SE01",0,500,0,1000,null,true);

	Move("@StNameMR/MR*", 200, @-200, @0, Dxl1, false);
	DeleteSt("MR",200,true);


	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

//◆場所：エレキセンター_廊下
	OnBG(10,"bg0901100エレキセンター_廊下_通常");
	FadeBG(0,true);

	St("MR",700, @0,@0,"buジャブル_通常_shock");
	FadeSt("MR",0,true);


	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/300101030jbr">
「フウリどしましたデスカ！？」

{	St("ML",700, @-100,@0,"buフウリ_通常_normal");
	Move("@StNameML/ML*", 200, @+100, @0, Dxl1, false);
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101040wfu">
「あの、ジャブルさん！　お世話になりました！」

{	Move("@StNameML/ML*", 200, @-200, @0, Dxl1, false);
	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buジャブル_通常_happy");
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/300101050jbr">
「あらら？
　とにかくおげんきで――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("@xbgm*", 2000, 0, null);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteAllSt(0,true);

	WaitKey(1000);


//◆場所：銭形公園_全景
	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);

	SetVolume("SE*", 1000, 0, null);

	CreateSE("SE04","seガヤ_交通少_l");
	MusicStart("SE04",1000,400,0,1000,null,true);

	Wait(1000);

	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);


{	St("MR",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101060wfu">
「はぁ……ひぃ……ふぅ……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101070wfu">
「なんとか……逃げ切れましたかね……」

{	St("MR",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101080wfu">
「ああ……でも……もう……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101090wfu">
「もう、力が……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1841);}


	TextBoxDelete(150);

	CreateSE("SE01","se人体_倒れる04");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("@StNameMR/MR*", 200, @0, @+100, Dxl1, false);
	DeleteSt("MR",200,true);

//◆ＳＥ：ベンチに倒れ込む

//◆演出指定：空を見上げる感じ

//	SoundPlay("@xbgm25",0,450,true);


	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");
	Move("絵背景100", 1000, @0, @+100, null, false);
	Fade("絵背景100", 500, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101100wfu">
「きゅ…………」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101110wfu">
「東京は……きびしいところです」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101120wfu">
「でも……それだけじゃないのかも……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("絵背景100", 1000, @0, @-150, Dxl1, false);
	FadeDelete("絵背景100", 500, null, true);

	St("ML",700, @0,@0,"bu鈴_通常_happy");
	FadeSt("ML",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0271]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101130fjr">
「その通り！」

{	DeleteSt("ML",200,true);
	St("MR",700, @0,@+100,"buフウリ_通常_shock");
	Move("@StNameMR/MR*", 200, @0, @-100, Dxl1, false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101140wfu">
「あ！」

{	St("MR",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101150wfu">
「あ、あ、あああああ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buフウリ_胸手_shout");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101160wfu">
「ありがとうございました！　ええと……」

{	St("ML",700, @0,@0,"bu鈴_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101170fjr">
「アタシは鈴。富士見鈴」

{	St("ML",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101180fjr">
「あそこのスーパーノヴァってお店で働いてるの」

{	St("ML",700, @0,@0,"bu鈴_通常_happy");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101190fjr">
「あなたは？」

{	St("MR",700, @0,@0,"buフウリ_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101200wfu">
「フウリです！　綿抜フウリ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1842);}


//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu鈴_シリアス_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101210fjr">
「ふうり……か」

{	St("ML",700, @0,@0,"bu鈴_シリアス_smile");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101220fjr">
「……どうやって書くの？」

{	St("MR",700, @0,@0,"buフウリ_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101230wfu">
「カタカナです」

{	St("ML",700, @0,@0,"bu鈴_通常_happy");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101240fjr">
「フウリちゃん、どうぞヨロシクね！」

{	St("MR",700, @0,@0,"buフウリ_胸手_think");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101250wfu">
「はい、こちらこそどうぞよろしくぅぅぅぅ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("@StNameMR/MR*", 200, @0, @+100, Dxl1, false);
	DeleteSt("MR",200,true);

//◆ＳＥ：ベンチに倒れ込む

//◆演出指定：空を見上げる感じ

	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");
	Move("絵背景100", 1000, @0, @+100, null, false);
	Fade("絵背景100", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101260fjr">
「え？　フウリちゃん？」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101270fjr">
「ど、どうしたの！　ケガ！？」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101280fjr">
「まさか、双六に捕まって！？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101290wfu">
「は、は、はら……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	SetVolume("@xbgm*", 1000, 0, null);

//◆ＳＥ：お腹が鳴るよ
	CreateSE("SE01","se人体_空腹");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101300wfu">
「はらぺこ……です……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1843);}


	TextBoxDelete(150);

//◆演出指定：通常に戻る

	CreateColorEX("フラッシュ白", 15000, "Black");
	Fade("フラッシュ白",500,1000,null,true);

	Delete("絵背景100");


	SetVolume("SE*", 1000, 0, null);

	WaitKey(1000);


	St("C",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("C",0,true);

	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");

	SoundPlay("@xbgm10",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0301]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101310wfu">
「あむあむ……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101320wfu">
「あむあむ……」

{	St("C",700, @0,@0,"buフウリ_頬手_shy");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101330wfu">
「んんんん――――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	St("C",700, @0,@0,"buフウリ_頬手_other");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101340wfu">
「ンマーイ……」

{	St("C",700, @0,@0,"buフウリ_頬手_shy");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101350wfu">
「なんたる肉汁じゅるじゅる……！
　肉汁じゅるじゅるがたまらないのですぅ……！」

{	DeleteSt("C",200,true);
	St("ML",700, @0,@0,"bu鈴_通常_happy");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101360fjr">
「あはは。そんな、反応良すぎ」

{	St("MR",700, @0,@0,"buフウリ_頬手_happy");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101370wfu">
「こ、これはなんという美食でしょうか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1844);}


//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu鈴_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101380fjr">
「肉まん、食べたことないの？」

{	St("MR",700, @0,@0,"buフウリ_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101390wfu">
「肉まん……記憶しました」

{	St("MR",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101400wfu">
「鈴ちゃん！
　こんなごちそうを頂いて、ありがとうございます」

{	St("ML",700, @0,@0,"bu鈴_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101410fjr">
「肉まんは幸せの……
　お腹だけじゃなく、幸せもいっぱい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu鈴_通常_happy");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101420fjr">
「心もぽかぽか、温まったでしょ？」

{	St("MR",700, @0,@0,"buフウリ_前のめり_smile");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101430wfu">
「はい！」

{	St("ML",700, @0,@0,"bu鈴_通常_happy");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101440fjr">
「うん、よしよしっ。いい笑顔」

{	St("ML",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101450fjr">
「今までそんな顔、見たことなかったわよ」

{	St("MR",700, @0,@0,"buフウリ_通常_smile");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101460wfu">
「あははははは……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1845);}


//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu鈴_シリアス_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101470fjr">
「さーてと。
　ここじゃ寒いから、ちょっと街中歩きましょう」

{	St("MR",700, @0,@0,"buフウリ_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101480wfu">
「あ……はい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("@xbgm*", 1000, 0, null);

//◆場所：秋葉原_中央通り
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteAllSt(0,true);

	OnBG(100,"bg0103100秋葉原_中央通り_通常");
	FadeBG(0,true);

	CreateSE("SE01","seガヤ_街中_l");
	MusicStart("SE01",1000,600,0,1000,null,true);

	DrawDelete("黒幕１", 500, 100, null, "blind_01_00_1", true);

	St("ML",700, @-30,@0,"bu鈴_シリアス_think");

	Move("@StNameML/ML*", 200, @+30, @0, Dxl1, false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0341]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101490fjr">
「といっても、もうこの時間だと普通のお店閉まっちゃうのよねえ……」

{	St("ML",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101500fjr">
「ごはんは食べたばっかりだし」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1846);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101510fjr">
「開いてるのはカラオケか、それとも――」

{	St("MR",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101520wfu">
「あの、鈴ちゃんのその格好って……」

{	St("ML",700, @0,@0,"bu鈴_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101530fjr">
「ん？　ああ、コレ」

{	St("ML",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101540fjr">
「スーパーノヴァってお店のコスチューム」

{	St("ML",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101550fjr">
「着替えてないと恥ずかしい？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buフウリ_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101560wfu">
「そんなことはないです。
　でも、鈴ちゃんのお店とかは――」

{	St("ML",700, @0,@0,"bu鈴_シリアス_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101570fjr">
「今、ライブ中なの。
　途中から入って邪魔したくないかな……」

{	St("MR",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101580wfu">
「ライブ中？」

{	St("ML",700, @0,@0,"bu鈴_シリアス_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101590fjr">
「スーパーノヴァって、ミニライブハウスで。
　店員が自分たちでパフォーマンスするの」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buフウリ_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101600wfu">
「それじゃ、鈴ちゃんも歌ったり？」

{	St("ML",700, @0,@0,"bu鈴_シリアス_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101610fjr">
「アタシは歌よりもベースがメインかな」

{	St("ML",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101620fjr">
「ま、バンド組むにもメンバーが集まってないんだけど」

{	St("MR",700, @0,@0,"buフウリ_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101630wfu">
「バンド……」

{	St("ML",700, @0,@0,"bu鈴_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101640fjr">
「あ、そうだ！　今の時間なら――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("SE01", 500, 0, null);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteSt("ML",200,true);

{	ClockTime(1847);}


//◆場所：ドンガ・バチョ_家電売り場
	OnBG(10,"bg1801111ドンガ・バチョ_家電売り場_通常");
	FadeBG(0,true);
	#bg1801100ドンガ・バチョ_家電売り場_通常 = true;

	CreateSE("SE02","seガヤ_ガバチョのテーマ_l");
	MusicStart("SE02",0,700,0,1000,null,true);

	DrawDelete("黒幕１", 500, 100, null, "blind_01_00_1", true);


{	St("MR",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101650wfu">
「お買い物？」

{	St("ML",700, @0,@0,"bu鈴_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101660fjr">
「ううん。最上階にゲームセンターがあってね」

{	St("ML",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101670fjr">
「アタシのベースの腕前、見せてあげるわ」

{	St("ML",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101680fjr">
「フウリちゃんもやる？」

{	St("MR",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101690wfu">
「私、ゲームはあんまり……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("MR",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101700wfu">
「たたくのは、得意なんですけど――」

{	St("ML",700, @0,@0,"bu鈴_シリアス_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101710fjr">
「大丈夫。叩くゲームもちゃんとあるわよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("SE02", 500, 0, null);

	CreateColorEX("フラッシュ黒", 15000, "Black");
	Fade("フラッシュ黒",500,1000,null,true);

	DeleteAllSt(0,true);


//◆ＥＶ："ev/ev1830フウリ天才ドラムマニア.txt"
//◆演出指定：演奏しながら

	CreateSE("SE01","se特殊_DM_あくび");

	CreateTextureEX("絵背景101", 1000, Center, Middle, "cg/ev/ex/ev1830フウリ天才ドラムマニア_x01.jpg");
	CreateTextureEX("絵背景102", 1001, Center, Middle, "cg/ev/ex/ev1830フウリ天才ドラムマニア_x02.jpg");
	CreateTextureEX("絵背景103", 1002, Center, Middle, "cg/ev/ex/ev1830フウリ天才ドラムマニア_x03.jpg");
	CreateTextureEX("絵背景104", 1003, 0, 0, "cg/ev/ex/ev1830フウリ天才ドラムマニア_x04.jpg");
	Zoom("絵背景101", 0, 2000, 2000, null, true);
	Zoom("絵背景102", 0, 2000, 2000, null, true);
	Zoom("絵背景103", 0, 2000, 2000, null, true);
	Zoom("絵背景104", 0, 2000, 2000, null, true);
	SetBlur("絵背景104", true, 3, 500, 50, false);


	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);
	Delete("フラッシュ黒");

	Fade("絵背景101", 0, 1000, null, true);

	MusicStart("SE01",0,700,0,1000,null,true);

	Zoom("絵背景101", 800, 1000, 1000, Dxl1, false);
	Fade("フラッシュ白",700,0,null,true);
	Wait(500);
	Fade("フラッシュ白",0,1000,null,true);
	Fade("絵背景102", 0, 1000, null, true);
	Zoom("絵背景102", 800, 1000, 1000, Dxl1, false);
	Fade("フラッシュ白",700,0,null,true);
	Wait(500);
	Fade("フラッシュ白",0,1000,null,true);
	Fade("絵背景103", 0, 1000, null, true);
	Zoom("絵背景103", 800, 1000, 1000, Dxl1, false);
	Fade("フラッシュ白",700,0,null,true);
	Wait(500);
	Fade("フラッシュ白",0,1000,null,true);
	Fade("絵背景104", 0, 1000, null, true);
	Zoom("絵背景104", 800, 1000, 1000, Dxl1, false);
	Fade("フラッシュ白",700,0,null,true);
	Wait(500);
	Move("絵背景104", 800, @0, -576, Dxl1, false);
	Fade("フラッシュ白",1000,1000,null,true);
	Delete("絵背景*");
	CreateTextureSP("絵背景100", 1000, 0, -576, "cg/ev/ev1830フウリ天才ドラムマニア.jpg");
	CreateTextureEX("絵背景101", 1000, 0, -576, "cg/ev/ev1830フウリ天才ドラムマニア鈴付.jpg");

	Move("絵背景100", 3000, @0, 0, null, false);
	Fade("フラッシュ白",1000,0,null,true);
	Delete("フラッシュ白");

	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");

//	St("C",700, @0,@0,"buフウリ_通常_normal");
//	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0391]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101720wfu">
（たんたんたたたん）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101730wfu">
（たたたたんすちゃちゃちゃ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101740wfu">
（ちゃかぽこちゃかぽこぶんぶくぶん！）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101750wfu">
（たんたんたぬきのぽんぽこぽん！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1848);}


	TextBoxDelete(150);

	Fade("絵背景101", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0401]
//◆音声指示：大声で
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101760fjr">
「フウリちゃん！　すごいよ！」

{	Fade("絵背景101", 300, 0, null, true);}
//◆音声指示：大声で
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101770wfu">
「え？　何がですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//◆音声指示：大声で
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101780fjr">
「今までドラムの経験ある？」

//◆音声指示：大声で
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101790wfu">
「ないですけど！」

//◆音声指示：大声で
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101800fjr">
「初めてなのにこんなに！？」

{	Fade("絵背景101", 300, 1000, null, true);}
//◆音声指示：大声で
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101810fjr">
「ねえ、フウリちゃん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//◆音声指示：大声で
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101820fjr">
「アタシと一緒に、バンド組まない？」

{	Fade("絵背景101", 300, 0, null, true);}
//◆音声指示：大声で
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101830wfu">
「え？　なんて言いました？」

//◆音声指示：大声で
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101840fjr">
「だから、アタシと一緒に――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Delete("@text0420");

//◆演出指定：回想シーンから、一気に現実に
//◆ＳＥ：ぎゅいーん！：でもベースだねここ……
	SetVolume("SE01", 300, 0, null);
	CreateSE("SE10","se環境_ハウリング");
	MusicStart("SE10",0,1000,0,1000,null,false);

	CreateColorEX("フラッシュ白", 15000, "Black");
	Fade("フラッシュ白",300,1000,null,true);

	Delete("色回想");
	Delete("絵背景*");

//◆場所：スーパーノヴァ_ライブ会場_消灯
	OnBG(10,"bg0502200スーパーノヴァ_ライブ会場_消灯");
	FadeBG(0,true);



//◆時間：ジャンプ
{	ClockPass(1849);}
	Fade("フラッシュ白",1000,0,null,true);
	Delete("フラッシュ白");

//◆場所：スーパーノヴァ_ライブ会場
	OnBG(10,"bg0502100スーパーノヴァ_ライブ会場_通常");
	FadeBG(500,true);

//◆演出指示：会場が明るくなる感じで



{	St("ML",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101850fjr">
「アタシと一緒にやる気あるの！？」

{	St("MR",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/300101860wfu">
「え……？」

{	DeleteSt("MR",200,true);
	St("C",700,@0,@0,"bu鈴_シリアス_angry");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101870fjr">
「解散よ！」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300101880fjr">
「『第一宇宙速度』は、今をもって解散！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);


	EndScene();
}
