
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2020ノーコ.nss_MAIN
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
	$GameName = "2030ノーコ.nss";
//	$GameCircle=false;

}

scene 2020ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="670">
////////////header////////////
//file name "2020ノーコ.nss"
//title "じげんをこえて"
//previous "2020カゴメ1.nss"

////////////footer////////////

//next "ノーコ" "2030千秋_ノーコ.nss"

////////////body////////////

//あきゅん「演出：暗転開始スクリプト」

//■再定義定型文
	PrintBG("上背景", 30000);
	ClockDelete(0,true);

//あきゅん「演出：喘ぎ声プロセスを先定義」
	LcPro_2020no-ko_erovoiceSet(500);

//定義
	Kagome_AllEffect_Set(3000);

//◆場所：バックギャモン_店内
	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);

{	ClockTime(2020);}

//◆演出指定：弾丸ではなく、希望（鳥）が飛び立つような演出
//◆演出指定：というかイメージ回想・特定のシーンではない

//	CreateSE("SE00","se擬音_カゴメアソビ成功");
//	MusicStart("SE00",0,700,0,1000,null,false);
	CreateColorSPadd("絵色１", 10000, "#FFFFFF");
	FadeDelete("上背景", 200, null, true);

	CreateTextureEX("絵背景１", 10, 0, 0, "cg/ev/ev1840ノーコ同人誌再現正常位d.jpg");
	Fade("絵背景１", 0, 1000, null, true);

//動作
	Kagome_AllEffect_Start();

	Wait(500);

	Fade("絵色１", 1000, 0, null, true);

	Wait(3000);

//消去
	Kagome_AllEffect_Delete(3000);

	Wait(3000);

	SoundPlay("@xbgm29",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200010nko">
「いく――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200020nko">
「あ――あ――！　あ、ああ、あっあっあ――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200030nko">
「んんん――――――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2021);}

	TextBoxDelete(50);

//◆演出指定：絶頂。似鳥も射精
	CreateColorEX("白フラ", 15000, "WHITE");
	Fade("白フラ", 0, 1000, null, true);

	CreateTextureEX("絵背景２", 100, Center, Middle, "cg/ev/ev1840ノーコ同人誌再現正常位e.jpg");
	Fade("絵背景２", 300, 1000, null, true);
	Delete("絵背景１");
	Delete("@OnBG*");

	Fade("白フラ", 300, 0, null, true);
	Fade("白フラ", 100, 1000, null, true);
	Fade("白フラ", 1500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200040nko">
「んはぁっ――んぁ――ん――ん――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200050nko">
「んく……ん……んん……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200060nko">
「かんじる……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200070nko">
「にとりの、いっぱい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200080nko">
「いっぱい、なかに、きた」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200200090nki">
「あ……ああ……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200200100nki">
「なぁ……もう、いいだろ？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200110nko">
「みたされない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200120nko">
「まだ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200130nko">
「もっと、ちょうだい」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200200140nki">
「もっとって――んっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2022);}

//	TextBoxDelete(150);

//◆演出指定：以下の台詞、ループでＢＧＭ的に流す
//cono：上記台詞のループ演出未記入です
//あきゅん「演出：10/12/17パッチで対応」
/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200150nko">
「ぁはっ、んっ、んっ、んん……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200160nko">
「ぁぅ……ぁ、ぁ、ぁ……ぁあ……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200170nko">
「おおきく……なる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200180nko">
「もっと――ついて――わたし――おく――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200190nko">
「いっぱい――いっぱい、して――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200200nko">
「あ――ふか――い――ぁっ――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200210nko">
「おと――えっち――きこえる――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200220nko">
「わたし――つかって――きもち――いい？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200230nko">
「ずっと――ずっと――そばに――いていい？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200240nko">
「ぁっ、ん――！　んっ、ん――んん――！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200250nko">
「んはぁっ――んはぁ――ん――ん……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
*/

//◆演出指定：ループここまで

{	ClockTime(2023);}

	LcPro_2020no-ko_erovoice();

	CreateColorEX("絵色黒", 11, "#000000");
	Fade("絵色黒", 0, 500, null, true);
	CreateTextureEX("絵背景３", 10, -760, 0, "cg/ev/l/ev1840ノーコ同人誌再現正常位e_l.jpg");
	Fade("絵背景３", 0, 1000, null, true);

	Fade("絵背景２", 200, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200260nko">
（だめだ）

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200270nko">
（しっている）

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200280nko">
（なんどやってもむだ）

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200290nko">
（みたされない）

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200300nko">
（わたしのなかににとりがいる）

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200310nko">
（それでもだめだ）

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200320nko">
（どうすればわたしはみたされる？）

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200330nko">
（なぜわたしはみたされない？）

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200340nko">
（それは、なぜ？）

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200350nko">
（それは――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Request("@ノーコプロセスボイス*", Disused);
	SetVolumeEX("@ノーコプロセスボイス*", 150, 0, null);
	Fade("絵色１", 150, 1000, null, true);
	Delete("Pro");

{	ClockTime(2024);}

//◆場所：銭形公園_全景
	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);
	DeleteAllSt(0,true);
	Delete("絵背景*");
	Delete("絵色黒");
	Delete("白フラ");

	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",0,true);

	Fade("絵色１", 1000, 0, null, true);

//◆演出指定：イメージシーンで、突然フウリが現れる

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/200200360wfu">
「似鳥さんが、愛してくれないから」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200370nko">
（あい……？）

{	St("C",700, @0,@0,"buフウリ_胸手_shy");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/200200380wfu">
「似鳥さんが、好きなんですよね？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200390nko">
（わからない）

{	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/200200400wfu">
「どうしてですか？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200410nko">
（だって、わたしはのうないかのじょだから）

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200420nko">
（もうそうのそんざいに、あいはふよう）

{	St("C",700, @0,@0,"buフウリ_胸手_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/200200430wfu">
「そうやって、自分を騙しているんです」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/200200440wfu">
「だからあなたは、満たされない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200450nko">
（わたしは、みたされないうんめい）

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200460nko">
（なぜならわたしは、のうないかのじょ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2025);}

	TextBoxDelete(150);

	Fade("絵色１", 300, 1000, null, true);

//◆場所：籠_正面_ブラックライト
	OnBG(10,"bg0801200籠_正面_ブラックライト");
	FadeBG(0,true);
	DeleteAllSt(0,true);

	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",0,true);

	Fade("絵色１", 300, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/200200470mzh">
「現実の存在になったとしたら？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200480nko">
（げんじつの……？）

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/200200490mzh">
「アザナエルは『願い』に反応する」

{	St("C",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/200200500mzh">
「おぬしが心から現実化したいと願い、なおかつ、カゴメアソビに成功すれば、きっと――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200510nko">
（わたしはのうないかのじょ）

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200520nko">
（だから、あいされない）

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200530nko">
（でも――もし！）

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200540nko">
（もし、げんじつのそんざいになることができたら――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2026);}


	TextBoxDelete(150);

	Fade("絵色１", 300, 1000, null, true);

	DeleteAllSt(0,true);
	Delete("@OnBG*");

	Wait(500);

	Fade("絵色１", 1000, 0, null, true);

//◆演出指示：過去の自分との対話

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200550nko">
（そうだ）

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200560nko">
（わたしは、かわりたい）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("R",700, @0,@0,"buノーコa_通常_normal");
	Move("@StNameR/R*", 2000, @-100, @0, Dxl3, false);

	FadeSt("R",1000,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200570nko">
（にとりだけしかいなかった、わたしのせかい）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2027);}




	Fade("@StNameR/R*", 1000, 0, null, false);
	Move("@StNameR/R*", 2000, @-150, @0, Dxl3, false);

	St2("L",19000, @0,@0,"fuノーコa_通常_normal","cg2/",".png");
	Move("@StNameL/L*", 3000, @200, @0, Dxl3, false);

	FadeSt("L",1000,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200580nko">
（でも、それがかわった）

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200590nko">
（フウリとであい……ミヅハとであった）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteSt("R",0,true);

	St("R",700, @-300,@0,"buノーコa_通常_cry");

	Move("@StNameR/R*", 3000, @-200, @0, Dxl1, false);
	FadeSt("R",1200,false);
	Move("@StNameL/L*", 3000, @300, @0, Dxl1, false);
	Fade("@StNameL/L*", 1200, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0152]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200600nko">
（いやなこともあった）

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200610nko">
（つらいこともあった）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2028);}


	DeleteSt("L",0,true);

	St("ML",700, @200,@0,"buノーコa_通常_cry");
	Move("@StNameML/ML*", 1500, @150, @0, Dxl1, false);
	FadeSt("ML",1000,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0153]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200620nko">
（でも……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fade("@StNameR/R*", 3000, 300, Dxl3, false);

	St("ML",700, @350,@0,"buノーコa_通常_shock");
	FadeSt("ML",1500,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0154]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200630nko">
（にとりがすむせかいは、きっと、そういうところ）

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200640nko">
（そしてわたしは……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2029);}


	Fade("@StNameML/ML*", 1500, 0, null, false);
	Fade("@StNameR/R*", 1500, 0, null, false);
	Move("@StNameR/R*", 1200, @200, @0, Dxl1, false);
	Move("@StNameML/ML*", 1200, @-200, @0, Dxl1, false);
	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",1500,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0155]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200650nko">
（にとりのそばにいたい！）

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200660nko">
（にとりのそばにいて、だれよりもいちばんちかくで）

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",1000,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200200670nko">
（にとりのあいのことばで、みたされたい……！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 500, 0, null);


	TextBoxDelete(150);

	CreateSE("SE01","se擬音_フラッシュバック");
	MusicStart("SE01",0,1000,0,1000,null,false);


	CreateColorEXadd("絵色１", 10000, "#FFFFFF");

	Fade("絵色１", 500, 1000, null, true);

	DeleteAllSt(0,true);

	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);

	Wait(2000);

	Fade("絵色１", 1500, 0, null, true);

	EndScene();
}
