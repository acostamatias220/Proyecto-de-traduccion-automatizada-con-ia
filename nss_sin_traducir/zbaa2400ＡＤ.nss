
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zbaa2400ＡＤ.nss_MAIN
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

scene zbaa2400ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "zbaa2400ＡＤ.nss"
//title "やり直す"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2400);}

//◆場所：スパコン館_裏面_廃墟
	OnBG(10,"bg1101500スパコン館_裏面_廃墟");
	FadeBG(0,true);

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",0,true);}

	CreateSE("SE01","seガヤ_半田明神01_l");
	SoundEffect("SE01","ARENA");
	MusicStart("SE01",3000,700,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/zbaa24/000100010mrp">
「ねえ、あなた」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zbaa24/000100020adi">
「は……はい、私ですか？」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/zbaa24/000100030mrp">
「今回のゆるキャラバン、散々だったけど」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buミリＰa_ショータイム_happy");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/zbaa24/000100040mrp">
「廃墟からやり直すみたいに、もっかい１から頑張ってみよっか？」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buＡＤ_通常_pride");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zbaa24/000100050adi">
「は……はいっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
