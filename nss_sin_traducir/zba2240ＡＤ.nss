
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zba2240ＡＤ.nss_MAIN
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

scene zba2240ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "zba2240ＡＤ.nss"
//title "プロ根性"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2240);}

//◆場所：スパコン館_裏面_廃墟
	OnBG(10,"bg1101500スパコン館_裏面_廃墟");
	FadeBG(0,true);

	St("ML",700, @-150,@0,"buＡＤ_通常_hard");
	FadeSt("ML",0,true);

	Move("@StNameML/ML*", 300, @150, @0, Dxl1, false);

	CreateSE("SE01","se環境_風低音_l");
	MusicStart("SE01",4000,700,0,500,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zba22/400100010adi">
「ミリＰさんっ！」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/zba22/400100020mrp">
「やること、わかってるわね！？」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zba22/400100030adi">
「はい！　テレビに流さないネット中継なら、ふたりでも何とか！」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buミリＰa_ショータイム_happy");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/zba22/400100040mrp">
「よろしい！
　この怪異、世界中に配信してやるわよッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buＡＤ_通常_smile");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zba22/400100050adi">
「はいっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
