
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1850ＡＤ.nss_MAIN
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

scene z1850ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "z1850ＡＤ.nss"
//title "ミリＰ登場"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1857);}

//◆場所：ショウビル_正面
	OnBG(10,"bg1901111ショウビル_正面_通常");
	FadeBG(0,true);

	CreateSE("SE01","seガヤ_街中_l");
	MusicStart("SE01",500,700,0,1000,null,true);

	St("ML",700, @0,@0,"buミリＰa_通常_pinch");
	FadeSt("ML",0,true);

	FadeDelete("上背景", 500, null, true);

	Shake("@StNameML/ML*", 300, 0, 10, 0, 0, 500, Dxl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z18/500100010mrp">
「んぐ……ぐぐ……おもい……」

{	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z18/500100020adi">
「ミリＰさん、すいません！
　いきなりこんな仕事させちゃって」

{	St("ML",700, @0,@0,"buミリＰa_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z18/500100030mrp">
「ううん、いいのよ。
　これも、レイジ君のため……」

{	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z18/500100040adi">
「あ、あそこの階段上がりますから！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("ML",700, @0,@0,"buミリＰa_通常_pinch");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 500, 0, 10, 0, 0, 500, Dxl3, false);
	FadeSt("ML",200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z18/500100050mrp">
「ええ、わかったわ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
