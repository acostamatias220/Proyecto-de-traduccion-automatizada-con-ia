
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1830ＡＤ.nss_MAIN
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

scene z1830ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="80">
////////////header////////////
//file name "z1830ＡＤ.nss"
//title "別れ"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1830);}

//◆場所：ＵＰ＋_屋外セット
	OnBG(10,"bg1201100ＵＰ＋_屋外セット_通常");
	FadeBG(0,true);

	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("MR",0,true);

	SoundPlay("@xbgm16",0,450,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z18/300100010adi">
「そんな……若原Ｄ……」

{	St("MR",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z18/300100020adi">
「ご、ごめんなさいッ！
　私が……私が変な饅頭を食べさせたせいで……」

{	St("ML",700, @0,@0,"bu若原_通常_angry");
	DeleteAllSt(200,false);
	FadeFF("@StNameML/ML*",0,0,500,0,-50,Dxl2, false);
	FadeSt("ML",200,true);}
//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/z18/300100030whr">
「心配するな。君のせいじゃない」

{	St("MR",700, @0,@0,"buＡＤ_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z18/300100040adi">
「でも――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("ML",700, @0,@30,"bu若原_通常_angry");
	DeleteAllSt(200,false);
	FadeFF("@StNameML/ML*",0,0,500,0,50,Dxl2, false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/z18/300100050whr">
「大丈夫……オレの代わりは、ミリＰに頼んである」

{	St("MR",700, @0,@0,"buＡＤ_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z18/300100060adi">
「ミリＰさんにですか……？」

{	St("ML",700, @0,@0,"bu若原_通常_angry");
	DeleteAllSt(200,false);
	FadeFF("@StNameML/ML*",0,0,500,0,-50,Dxl2, false);
	FadeSt("ML",200,true);
	Move("@StNameML/ML*", 3000, @-800, @50, Dxl1, false);}
//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/z18/300100070whr">
「あとは、よろしくな」

{	CreateSE("SE02","se人体_倒れる04");
	MusicStart("SE02",0,700,0,1000,null,false);
	Wait(800);
	St("MR",700, @0,@40,"buＡＤ_通常_hard");
	DeleteAllSt(200,false);
	FadeT("@StNameMR/MR*",0,0,200,0,-40,Dxl1,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z18/300100080adi">
「は――はいっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
