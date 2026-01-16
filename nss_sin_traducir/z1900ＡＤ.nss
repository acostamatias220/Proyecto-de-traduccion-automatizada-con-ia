
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1900ＡＤ.nss_MAIN
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

scene z1900ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="70">
////////////header////////////
//file name "z1900ＡＤ.nss"
//title "ミリＰ登場"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1902);}

//◆場所：ショウビル_正面
	OnBG(10,"bg1901111ショウビル_正面_通常");
	FadeBG(0,true);

	CreateSE("SE01","seガヤ_街中_l");
	MusicStart("SE01",500,700,0,1000,null,true);

	St("ML",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("ML",0,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z19/000100010mrp">
「う……う……ううう……うそ……」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z19/000100020mrp">
「ソトカンダーが……バラバラに……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z19/000100030adi">
「直すのは、無理っぽいですね。
　ソトカンダー抜きで番組を――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_pinch");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z19/000100040mrp">
「そんなの、無理よ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z19/000100050adi">
「え……？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z19/000100060mrp">
「全国ゆるキャラバンは、ソトカンダーありきで生まれた企画よ」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z19/000100070mrp">
「中心軸を失ったら……
　番組が成立するわけないじゃない！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
