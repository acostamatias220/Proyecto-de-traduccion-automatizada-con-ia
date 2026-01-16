
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zc2400ＡＤ.nss_MAIN
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

scene zc2400ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="40">
////////////header////////////
//file name "zc2400鈴.nss"
//title "ＡＤの願い"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2400);}

//◆場所：半田明神_境内_厭覇薔薇新年

	if(#RouteName=="c"){
	OnBG(10,"bg0603911半田明神_境内_厭覇薔薇新年新カンダー");
	}else{
	OnBG(10,"bg0603811半田明神_境内_雪ノーマル新年新カンダー");
	}

	FadeBG(0,true);

	CreateSE("SE01","seガヤ_半田明神02_l");
	MusicStart("SE01",1000,700,0,0,null,true);

{	St("MR",700, @0,@0,"buＡＤ_通常_smile");
	FadeSt("MR",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zc24/000100010adi">
「まさか……こんな風に、上手くいくなんて」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/zc24/000100020mrp">
「だから、最後まで諦めちゃダメって言ったでしょ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_smile");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zc24/000100030adi">
「……はい」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buＡＤ_通常_pride");
	FadeSt("C",200,false);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zc24/000100040adi">
（私も……ドラマを撮る夢……
　もう一回、頑張ってみよう……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	MusicStart("SE01",1000,0,0,1000,null,false);

	EndScene();
}
