
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2100ノーコ.nss_MAIN
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
	$GameName = "2110ノーコ.nss";

}

scene 2100ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1400">
////////////header////////////
//file name "2100ノーコ.nss"
//title "ノーコのキリキリクッキング"
//previous "2050ノーコ.nss"

////////////footer////////////
//next "ノーコ" "2110ノーコ.nss"

////////////body////////////


//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2100);}

/*
//◆場所：似鳥マンション_エントランス
	OnBG(10,"bg1301100似鳥マンション_エントランス_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 600, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
*/
//◆場所：似鳥マンション_正面
	OnBG(10,"bg1302100似鳥マンション_正面_通常");
	FadeBG(0,true);

	DrawDelete("上背景", 600, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100010nko">
「ただい――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameC/C*", 300, @-30, @0, Dxl3, false);
	DeleteAllSt(200,true);

//◆ＳＥ：ゴツン！
	CreateSE("SE01","se戦闘_打撃音02");
	MusicStart("SE01",0,1000,0,1000,null,false);


	CreateTextureSP("絵ゆれ", 100, Center, Middle, "cg/bg/bg1302100似鳥マンション_正面_通常.jpg");
	Shake("絵ゆれ", 200, 10, 8, 5, 0, 200, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100020nko">
「あう」

{	St("C",700, @-90,@0,"buノーコa_幽霊_sad");
	Move("@StNameC/C*", 200, @90, @20, Dxl1, false);
	FadeSt("C",200,true);
	Move("@StNameC/C*", 300, @40, @20, Axl1, true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100030nko">
「いたい」

{	St("C",700, @40,@40,"buノーコa_幽霊_normal");
	Move("@StNameC/C*", 400, @-40, @-40, Dxl1, false);
	FadeSt("C",200,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100040nko">
「そうか」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100050nko">
「くぐりぬけられない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆ＳＥ：がちゃっ　扉を開く（鍵は開いている）
	CreateSE("SE01","se動作_ドア開ける01");
	MusicStart("SE01",0,1200,0,1000,null,false);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("絵ゆれ");

{	ClockPass(2101);}


//◆場所：似鳥マンション_玄関
	OnBG(10,"bg1303100似鳥マンション_玄関_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

	Wait(500);

	SoundPlay("@xbgm05",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("C",700, @30,@0,"buノーコa_幽霊_normal");
	Move("@StNameC/C*", 200, @-30, @0, null, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100060nko">
「ついた」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100070nko">
「どうぐ、ある」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100080nko">
「ざいりょう、ある」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100090nko">
「あとは、つくる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100100nko">
「まずは……」

{	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100110nko">
「まずは？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100120nko">
「どうする？」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100130nko">
「………………」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100140nko">
「つくりかた……わからない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆場所：似鳥マンション_リビング_同人誌散乱
	OnBG(10,"bg1304200似鳥マンション_リビング_同人誌散乱");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("C",700, @30,@0,"buノーコa_幽霊_normal");
	Move("@StNameC/C*", 200, @-30, @0, null, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100150nko">
「りょうりばんぐみ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	CreateSE("SE02","seメカ_テレビ_テレビ点ける");
	MusicStart("SE02",0,700,0,1000,null,false);
	Wait(400);

//◆ＳＥ：チャンネル変える
	CreateSE("SE01","seメカ_テレビ_チャンネル変更");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(300);
	CreateSE("SE02","seメカ_テレビ_チャンネル変更");
	MusicStart("SE02",0,700,0,1000,null,false);
	Wait(300);
	CreateSE("SE01","seメカ_テレビ_チャンネル変更");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100160nko">
「やってない」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);
	Move("@StNameC/C*", 400, @80, @0, Dxl1, false);
	DeleteAllSt(200,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100170nko">
「りょうりのほん――」

{	St("C",700, @30,@0,"buノーコa_幽霊_sad");
	Move("@StNameC/C*", 200, @-30, @0, null, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100180nko">
「ない」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100190nko">
「ほん、かう？」

{	St("C",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100200nko">
「……めんどう」

{	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100210nko">
「そうだ！」

{	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("C",200,true);
	Move("@StNameC/C*", 400, @-80, @0, Dxl1, false);
	DeleteAllSt(200,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100220nko">
「エロゲーに、つくりかた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：がさがさ、がさがさ
	CreateSE("SE01","se動作_同人探す_l");
	MusicStart("SE01",0,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100230nko">
「ほん、じゃま」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100240nko">
「どこ？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100250nko">
「どこに……」

{	SetVolume("SE01", 200, 0, null);
	St("C",700, @0,@50,"buノーコa_通常_normal");
	Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100260nko">
「あった！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：スマガのパッケージ



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100270nko">
「たしかここに、カレーなべが……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100280nko">
「パソコンきどう――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100290nko">
「ゲームをインストール――」

{	Move("@StNameC/C*", 200, @0, @50, Axl1, false);
	DeleteAllSt(200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100300nko">
「…………う」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100310nko">
「うう…………！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100320nko">
「うううう……！」

{	St("C",700, @0,@50,"buノーコa_通常_sad");
	Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100330nko">
「めんどう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	Move("@StNameC/C*", 200, @-80, @0, Axl1, false);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

{	ClockPass(2102);}

//◆場所：似鳥マンション_玄関
	OnBG(10,"bg1303100似鳥マンション_玄関_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "blind_01_00_1", true);

//cono：以下演出仮入れ

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("C",700, @30,@0,"buノーコa_幽霊_sad");
	Move("@StNameC/C*", 200, @-30, @0, null, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100340nko">
「もういい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100350nko">
「たよりは」

{	Move("@StNameC/C*", 300, @-80, @0, Axl3, false);
	DeleteAllSt(200,true);
	Move("@StNameL/L*", 200, @80, @0, Dxl3, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100360nko">
「かん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	St("L",700, @-80,@0,"fuノーコa_通常_normal");
//	FadeSt("L",200,true);

{	ClockPass(2103);}


//◆ＳＥ：鍋に水入れる
	CreateSE("SE01","se環境_水_l");
	MusicStart("SE01",0,700,0,1000,null,true);

	Wait(1500);

//◆ＳＥ：コンロに鍋のる
	SetVolume("SE01", 100, 0, null);
	CreateSE("SE02","se日常_料理_コンロ鍋のせる");
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{//◆ＳＥ：コンロに鍋のる
	SetVolume("SE01", 100, 0, null);
	CreateSE("SE02","se日常_料理_コンロ鍋のせる");
	MusicStart("SE02",0,700,0,1000,null,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100370nko">
「ふん！」

{//◆ＳＥ：コンロに火がつく
	SetVolume("SE02", 100, 0, null);
	CreateSE("SE01","se日常_料理_コンロ火つける");
	MusicStart("SE01",0,700,0,1000,null,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100380nko">
「はっか！」

{//◆ＳＥ：ガサゴソ袋を漁る
	SetVolume("SE01", 100, 0, null);
	CreateSE("SE02","se動作_ビニール漁る01");
	MusicStart("SE02",0,700,0,1000,null,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100390nko">
「つぎ！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100400nko">
「やさい！」

{//◆ＳＥ：カッターナイフ
	SetVolume("SE02", 100, 0, null);
	CreateSE("SE01","se戦闘_カッター_刃出す02早い");
	MusicStart("SE01",0,700,0,1000,null,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100410nko">
「きる！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	SetVolume("SE01", 100, 0, null);

//◆ＳＥ：ひゅんひゅん刃が舞う
	CreateSE("SE02","se戦闘_風切り音複数_l");
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(1500);
	SetVolume("SE02", 300, 0, null);
	Wait(500);

//◆ＳＥ：ぼちゃぼちゃぼちゃぼちゃ
	CreateSE("SE01","se日常_料理_具材投下");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1500);
	SetVolume("SE01", 500, 0, null);
	Wait(500);

//◆ＳＥ：ぐつぐつぐつぐつぐつ
	CreateSE("SE02","se日常_料理_煮る_l");
	MusicStart("SE02",0,700,0,1000,null,false);

	Yuru_Curry_Set("ノーコカレー作る");

	Yuru_Curry_Start01(500);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100420nko">
「にる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("SE02", 100, 0, null);

//◆ＳＥ：がさっ
	CreateSE("SE01","se動作_ビニール漁る02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　ノーコはカレー粉を袋ごと、わしっと掴む。


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100430nko">
「まつ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100440nko">
「…………」

{	Yuru_Curry_SpeedChange(200);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100450nko">
「まつ」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100460nko">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Yuru_Curry_SpeedChange(50);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100470nko">
「まつ」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100480nko">
「…………」


{	Yuru_Curry_Delete();}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100490nko">
「めんどう」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100500nko">
「もう」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100510nko">
「いい」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100520nko">
「カレーこ」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100530nko">
「いけ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	SetVolume("SE01", 100, 0, null);

//◆ＳＥ：ドガッ！
	CreateSE("SE02","se人体_倒れる01");
	MusicStart("SE02",0,500,0,1000,null,false);

	Yuru_Curry_Delete();
	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100540nko">
「ん？」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100550nko">
「あれ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2104);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100560nko">
「なべきえた」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100570nko">
「ふしぎ」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100580nko">
「というか」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100590nko">
「うもれた」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100600nko">
「………………」


//【ノーコ】

<voice name="ノーコ" class="ノーコ" src="voice/21/000100610nko">
「うん」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100620nko">
「みずついか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("SE02", 100, 0, null);

//◆ＳＥ：じょぼじょぼじょぼ
	CreateSE("SE01","se環境_水_l");
	MusicStart("SE01",0,1000,0,1000,null,true);

	Wait(1000);

	Yuru_Curry_Set("ノーコカレー作る");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100630nko">
「うしょ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE01", 500, 0, null);

	Yuru_Curry_Start02(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100640nko">
「ん……？」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100650nko">
「あ」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100660nko">
「にんじんいれわすれ……」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100670nko">
「………………」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100680nko">
「おくれてきたやさい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("SE02", 500, 0, null);

//◆ＳＥ：どぼどぼどぼどぼ
	CreateSE("SE01","se日常_料理_具材投下");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(3000);

	SetVolume("SE01", 300, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100690nko">
「……あ」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100700nko">
「かわ」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100710nko">
「………………」


{	Yuru_Curry_SpeedChange(50);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100720nko">
「……なかったことに」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100730nko">
「まつ」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100740nko">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 3000, 0, null);

	Yuru_Curry_Delete();

	Wait(600);

	St("C",700, @0,@40,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 200, @0, @-40, Dxl3, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0171]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100750nko">
「あじみ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	DeleteAllSt(200,true);}
//◆音声指示：すする
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100760nko">
「――――」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100770nko">
「ん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2105);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("C",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100780nko">
「ん――！」

{	Shake("@StNameC/C*", 500, 0, 20, 0, 0, 500, Dxl3, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100790nko">
「んんん――――！！」

{	Move("@StNameC/C*", 400, @0, @80, Axl1, false);
	DeleteAllSt(300,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100800nko">
「うええええええええ……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100810nko">
「けほっ！　けほ！　けほ！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100820nko">
「うう……う……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("C",700, @0,@40,"buノーコa_通常_pain");
	Move("@StNameC/C*", 200, @0, @-40, Dxl1, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100830nko">
「からひ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100840nko">
「というか」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100850nko">
「ひたひ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100860nko">
「…………」

{	St("C",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100870nko">
「にとり……おいしくたべる？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100880nko">
「…………」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100890nko">
「たべられない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100900nko">
「てりょうりなんてむり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100910nko">
「ごみ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100920nko">
「……なんか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	Move("@StNameC/C*", 400, @40, @0, Axl1, false);
	DeleteAllSt(400,true);

	CreateSE("SE01","se戦闘_カッター_刃出す01普通b");
	$SETime = RemainTime("SE01");

//◆ＳＥ：キリキリキリ、カッターナイフ
//あきゅん「演出：今までのノーコは妄想の存在だったので自傷によるリアルな痛みなどなかった、ここではいつもの自傷行動で痛みを感じ自分が現実の存在であることを認識する、一番良い演出で頼む」

	CreatePlainSP("絵板写", 5000);
	Wait(16);

	CreateColorSP("絵色黒", 2000, "#000000");

//	CreateTextureSP("絵キャラノーコ", 2100, -1400, -2200, "cg/bu/l/buノーコa_カッター_smile_x01.png");
	CreateTextureSP("絵キャラノーコ", 2100, -2200, -1350, "cg/bu/l/buノーコa_カッター_smile_x01.png");
	SetShade("絵キャラノーコ", MIDEUM);
	Zoom("絵キャラノーコ", 0, 3000, 3000, null, true);
	Rotate("絵キャラノーコ", 0, @0, @0, -40, null,true);

	CreateTextureSP("絵短刃下", 2100, Center, Middle, "cg/img/imgカッターバラd.png");
	CreateTextureSP("絵短刃上", 2120, Center, Middle, "cg/img/imgカッターバラb.png");

	CreateTextureSP("絵短刃", 2110, 541, -1066, "cg2/img/imgカッターバラc.png");
	SetBlur("絵短刃", true, 2, 500, 60, false);

	MoveFTP3("@絵キャラノーコ", 10000, 12, 3);

	Wait(16);
	FadeDelete("絵板写", 500, null, true);


	MusicStart("SE01",0,1200,0,1000,null,false);
	Move("絵短刃", $SETime, 376, -975, AxlDxl, false);
//	Move("絵短刃", $SETime, 540, -1064, DxlAuto, true);


	Wait(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100930nko">
「しにたい――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se戦闘_切断01");
	MusicStart("SE01",0,500,0,1000,null,false);

	CreateColorEX("絵フラッシュ赤１", 6000, "#FF0000");
	CreateColorSPmul("絵フラッシュ赤２", 5000, "#FF0000");
	Wait(30);
	Fade("絵フラッシュ赤２", 200, 1000, null, true);
	Fade("絵フラッシュ赤１", 200, 1000, null, true);

	Delete("絵キャラノーコ");
	Delete("絵短刃*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0221]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100940nko">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureSP("絵演", 2010, Center, Middle, "cg/img/imgノーコリスカイメージa.jpg");
	CreateTextureEX("絵演2", 2020, Center, Middle, "cg/img/imgノーコリスカ実体a.jpg");
	CreateTextureEX("絵演3", 2030, Center, Middle, "cg/img/imgノーコリスカ実体b.jpg");
	Request("絵演*", Smoothing);
	Zoom("絵演*", 0, 1100, 1100, null, true);
	SetBlur("絵演*", true, 2, 500, 150, false);

	#imgノーコリスカイメージb = true;

	MoveFTP3("@絵演*", 6000, 12, 3);

//あきゅん「素材：imgノーコリスカ実体a」
	Delete("絵フラッシュ赤２");
	Fade("絵フラッシュ赤１", 500, 0, null, true);

	Wait(500);

	Fade("絵フラッシュ赤１", 0, 1000, null, true);
	Delete("絵演");
	Fade("絵演2", 0, 1000, null, true);
	FadeDelete("絵フラッシュ赤１", 100, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0222]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100950nko">
「いたっ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2106);}


//あきゅん「素材：imgノーコリスカ実体a」
//演出調整済み

	Fade("絵演3", 0, 1000, null, true);
	DrawTransition("絵演3", 25000, 0, 1000, 30, Dxl2, "cg/data/beam_02_00_0.png", false);


	CreateSE("SE01","se環境_水滴02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_鼓動_l");
	MusicStart("SE02",0,1200,0,1000,null,true);

	SoundPlay("@xbgm25",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0225]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100960nko">
「あ……」

//あきゅん「素材：imgノーコリスカ実体b」
//おがみ：演出調整済み
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100970nko">
「ちが……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100980nko">
「たれていく」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000100990nko">
「わたしのいのち……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101000nko">
「いたい……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101010nko">
「て、きれて、かんじる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101020nko">
「いたいの、かんじる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE01", 100, 0, null);
	SetVolume("SE02", 3000, 0, null);

	TextBoxDelete(150);

	CreateColorEX("絵色100", 5500, "BLACK");
	Fade("絵色100", 500, 1000, null, true);

	MoveFTP3stop();
	Delete("絵演*");
	Wait(300);

//あきゅん「素材：imgノーコリスカ実体c」
//あきゅん「素材：imgノーコリスカ実体d」
	CreateTextureEX("絵演上", 2023, Center, Middle, "cg/img/imgノーコリスカ実体d.jpg");
	CreateTextureSP("絵演下", 2022, Center, Middle, "cg/img/imgノーコリスカ実体c.jpg");


	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　ノーコは包帯を、ぐるりと巻く。

　血に染まった腕が、白い包帯で包み込まれていく。

{
	FadeDelete("絵色100", 500, null,true);
	Fade("絵演上", 3500, 1000, Axl1, false);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101030nko">
「だめだ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101040nko">
「しぬのはだめ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101050nko">
「せっかくてにいれたからだ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101060nko">
「いきなきゃ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101070nko">
「にとりといっしょにいたいから」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101080nko">
「いきなきゃ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101090nko">
「……うん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Delete("絵色黒");
	Delete("絵板写");
	Delete("絵演");
	Delete("絵演下");

	FadeDelete("絵演上", 800, null, true);

	SetVolumeEX("@xbgm*", 3000, 0, null);

	CreateSE("SE21","se日常_料理_煮る_l");
	MusicStart("SE21",2000,1500,0,1000,null,true);

	Wait(200);

	St("C",700, @40,@0,"buノーコa_幽霊_normal");
	Move("@StNameC/C*", 400, @-40, @0, Dxl1, false);
	FadeSt("C",400,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101100nko">
「すこし、にこもう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101110nko">
「そうしよう」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101120nko">
「まつ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101130nko">
「…………」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101140nko">
「まつ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0261]
{	St("C",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101150nko">
「…………」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101160nko">
「テレビでも――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101170nko">
「あれ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2107);}


	TextBoxDelete(150);
	DeleteAllSt(200,true);

	SetVolumeEX("SE21", 2000, 0, null);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_00_0.png", true);

//◆場所：似鳥マンション_リビング_同人誌散乱
	OnBG(10,"bg1304200似鳥マンション_リビング_同人誌散乱");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 200, 100, null, "slide_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//◆音声指示：テレビ越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000101180mrp">
『こちら控え室！
　今、似鳥君が一生懸命デザインをしてるところよーん』

{	St("C",700, @-50,@0,"buノーコa_通常_shock");
	Move("@StNameC/C*", 200, @50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101190nko">
「にとり……？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101200nko">
「なんでテレビに？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 1500, 0, null);

	DeleteAllSt(200,true);

//※下倉注：ここ、"2110似鳥.nss"の画面を映して似鳥の苦戦を強調して欲しいです


	CreatePlainSP("絵上敷", 105);

	CreateTextureSPadd("絵背景効果", 104, Center, Middle, "cg/ef/efテレビ画面用効果フィルター.jpg");
	Fade("絵背景効果", 0, 300, null, true);

	CreateTextureEX("絵背景テレビ", 100, Center, Middle, "cg/bg/l/bg1203100ＵＰ＋_セット裏_通常_l.jpg");
	Request("絵背景テレビ", Smoothing);
	Zoom("絵背景テレビ", 0, 800, 800, null, true);
	Move("絵背景テレビ", 0, @-200, @0, null, true);
	Fade("絵背景テレビ", 0, 1000, null, true);

	St("C",101, @50,@0,"buミリＰb_通常_happy");
	Request("@StNameC/C*", Smoothing);
	Zoom("@StNameC/C*", 0, 1200, 1200, null, true);
	FadeSt("C",0,true);

	FadeDelete("絵上敷", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//◆音声指示：テレビ越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000101210mrp">
『それじゃ早速、似鳥君にお話を――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("L",101, @-300,@0,"bu似鳥_眼鏡上げ_mad");
	Request("@StNameL/L*", Smoothing);
	Zoom("@StNameL/L*", 0, 1200, 1200, null, true);
	FadeSt("L",200,false);
	Move("@StNameL/L*", 500, @200, @0, AxlDxl, false);
	Move("@StNameC/C*", 500, @200, @0, AxlDxl, false);
	Move("絵背景テレビ", 500, @100, @0, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280a]
//◆音声指示：テレビ越し
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/000101220nki">
『ふんぐ！　んぐ……んぐぐぐぐぐ……』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",101, @250,@0,"buミリＰb_通常_sad");
	Request("@StNameC/C*", Smoothing);
	Zoom("@StNameC/C*", 0, 1200, 1200, null, true);
	Move("@StNameL/L*", 500, @-200, @0, AxlDxl, false);
	Move("@StNameC/C*", 500, @-200, @0, AxlDxl, false);
	Move("絵背景テレビ", 500, @-100, @0, AxlDxl, 300);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280b]
//◆音声指示：テレビ越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000101230mrp">
『さっきの没で闘争本能に火がついたのかしら？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",101, @50,@0,"buミリＰb_通常_hard");
	Request("@StNameC/C*", Smoothing);
	Zoom("@StNameC/C*", 0, 1200, 1200, null, true);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280c]
//◆音声指示：テレビ越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000101240mrp">
『集中して、アタシの声も聞こえないみたいね』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	CreatePlainSP("絵上敷", 105);
	Delete("絵背景効果");
	Delete("絵背景テレビ");
	DeleteAllSt(0,true);

	FadeDelete("絵上敷", 500, null, true);

	Wait(300);

	SoundPlay("@xbgm26",0,450,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
{	St2("C",700, @0,@0,"fuノーコa_通常_sad","cg2/",".png");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101250nko">
「ちがう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101260nko">
「わたしにはわかる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101270nko">
「にとりはくるしんでいる」

{	St2("C",700, @0,@0,"fuノーコa_通常_pain","cg2/",".png");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101280nko">
「くるしんで……くるしんで……」

{	St2("C",700, @0,@0,"fuノーコa_通常_fear","cg2/",".png");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101290nko">
「あれ……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2108);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101300nko">
「なに？　これ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101310nko">
「ふるえ……とまらない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101320nko">
「そこに……にとりが」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101330nko">
「にとりがいて」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101340nko">
「わたしは、にとりに……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101350nko">
「にとりに、はなせて、それで……」

{	St2("C",700, @0,@0,"fuノーコa_通常_pain","cg2/",".png");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101360nko">
「――――」

{	St2("C",700, @0,@0,"fuノーコa_通常_sad","cg2/",".png");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101370nko">
「あいたい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101380nko">
「いますぐ」

{	St2("C",700, @0,@0,"fuノーコa_通常_shock","cg2/",".png");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101390nko">
「あいたい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2109);}


	Move("@StNameC/C*", 200, @0, @100, Axl1, false);
	DeleteAllSt(200,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
{	St("C",700, @0,@100,"buノーコa_幽霊_normal");
	Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/000101400nko">
「いこう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 1000, 0, null);


	TextBoxDelete(150);
	Move("@StNameC/C*", 200, @-80, @0, Axl3, false);
	DeleteAllSt(200,true);

//◆ＳＥ：扉バン！　と空けてノーコが部屋から飛び出す

	CreateSE("SE01","se動作_ドア閉める02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 500, 1000, null, true);

	OnBG(10,"bg1301100似鳥マンション_エントランス_通常");
	FadeBG(0,true);

	Wait(1000);

	Fade("絵色黒", 1000, 0, null, true);

	EndScene();
}
