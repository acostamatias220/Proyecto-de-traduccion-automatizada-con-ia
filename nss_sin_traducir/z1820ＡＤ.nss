
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1820ＡＤ.nss_MAIN
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
	EndScript();

}

scene z1820ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="160">
////////////header////////////
//file name "z1820ＡＤ.nss"
//title "饅頭中毒"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1821);}

//◆場所：ＵＰ＋_屋外セット
	OnBG(10,"bg1201100ＵＰ＋_屋外セット_通常");
	FadeBG(0,true);

	St("MR",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("MR",0,true);

	SoundPlay("@xbgm16",0,450,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z18/200100010adi">
「これ、クリスマス饅頭っていって――」

{	St("ML",700, @0,@0,"bu若原_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/z18/200100020whr">
「はっ！　季節外れの売れ残りか――」

{	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z18/200100030adi">
「すいません」

{	St("ML",700, @0,@0,"bu若原_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/z18/200100040whr">
「まあいい。オレたちも似たようなもんだ」

{	St("MR",700, @0,@0,"buＡＤ_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z18/200100050adi">
「そんな――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("ML",700, @0,@0,"bu若原_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/z18/200100060whr">
「けどな！　業界の隅っこで、厄介者扱いされるオレたちだって、アイディアと情熱があれば何かができる！」

{	Shake("@StNameML/ML*", 500, 20, 0, 0, 0, 500, Dxl3, false);}
//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/z18/200100070whr">
「ビバ！　インターネット！　オレたちの戦いは、『全国ゆるキャラバン』のネット中継から始まった！」

{	St("ML",700, @0,@0,"bu若原_通常_angry");
	St("ML",700, @0,@0,"bu若原_通常_normal");
	Shake("@StNameML/ML*", 200, 0, 40, 0, 0, 500, Dxl3, false);
	FadeSt("ML",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("ML", 200, 5800);}
//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/z18/200100080whr">
「ネットでの反響が、テレビとの同時中継を呼び込む――
　そんな時代に、オレたちは生きてるんだ」

{	AgainSt("ML",700, @0,@0,"bu若原_通常_normal");
	St("MR",700, @0,@0,"buＡＤ_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z18/200100090adi">
「そう……ですよね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("ML",700, @0,@0,"bu若原_通常_angry");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 500, 20, 0, 0, 0, 500, Dxl3, false);
	FadeSt("ML",200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/z18/200100100whr">
「さあ、革命だ！　テレビ維新だ！
　饅頭食ったら、出発するぜよ！」

{	St("MR",700, @0,@0,"buＡＤ_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z18/200100110adi">
「はいっ！！」

{	St("ML",700, @0,@0,"bu若原_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);
	Move("@StNameML/ML*", 200, @0, @60, Axl1, false);
	DeleteAllSt(200,false);}
//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/z18/200100120whr">
「行くぞっ！
　あむあむ……あむ……あむ？」

{	St("MR",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z18/200100130adi">
「え？　若原Ｄ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/z18/200100140whr">
「んぐ……んぐぐぐ……んぐぐぐぐぐぐ……」

{	St("ML",700, @0,@80,"bu若原_通常_angry");
	Move("@StNameML/ML*", 500, @0, @-80, Dxl3, false);
	Shake("@StNameML/ML*", 500, 20, 0, 0, 0, 500, Axl3, false);
	FadeSt("ML",200,false);}
//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/z18/200100150whr">
「んごおおおおおおおおおおおおおおお……！」

{	Move("@StNameML/ML*", 200, @0, @80, Axl3, false);
	DeleteAllSt(200,true);
	CreateSE("SE02","se人体_倒れる02");
	MusicStart("SE02",0,700,0,1000,null,false);
	Wait(800);
	St("MR",700, @0,@40,"buＡＤ_通常_shock");
	FadeT("@StNameMR/MR*",0,0,200,0,-40,Dxl1,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z18/200100160adi">
「若原Ｄ？　若原Ｄッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
