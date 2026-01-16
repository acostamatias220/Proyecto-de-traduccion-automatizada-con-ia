
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zba2230みそブー.nss_MAIN
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

scene zba2230みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="20">
////////////header////////////
//file name "zba2230みそブー.nss"
//title "呆然"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2238);}

//◆場所：スパコン館_裏面_廃墟
	OnBG(10,"bg1101500スパコン館_裏面_廃墟");
	FadeBG(0,true);

{	St("MR",700, @0,@0,"buみそa_オラオラ_shock");
	FadeSt("MR",0,true);}

	CreateMovieSPsub("ムービー", 11000, 0, 50, true, true, "dx/mvk100.ngs");
	SetVertex("ムービー", 0, 0);
	Zoom("ムービー", 0, 2560, 2500, null, true);

	CreateSE("SE01","se環境_風低音_l");
	MusicStart("SE01",3000,700,0,300,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【みそ】
<voice name="みそ" class="みそ" src="voice/zba22/300100010mso">
「なんだと……！？」

{	DeleteSt("MR", 200,true);
	St("ML",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zba22/300100020buu">
「姐さんが……下敷きに……ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
