
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ze2400みそブー.nss_MAIN
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

scene ze2400みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="20">
////////////header////////////
//file name "ze2400みそブー.nss"
//title "元の姿へ"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2400);}

//◆場所：半田明神_男坂

	CreateSE("SE01","seガヤ_半田明神02_l");
	MusicStart("SE01",3000,300,0,1000,null,true);

	CreateTextureSP("絵背景200", 100, Center, 0, "cg/bg/bg0107300秋葉原_遠景_雪.jpg");
	FadeDelete("上背景", 500, null, false);
	Move("絵背景200", 4000, @0, -650, DxlAuto, true);



{	St("MR",700, @0,@0,"buみそa_通常_smile");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【みそ】
<voice name="みそ" class="みそ" src="voice/ze24/000100010mso">
「ウシ！　無事に花火も打ち上がったし――」

{	St("ML",700, @0,@0,"buブーa_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ze24/000100020buu">
「姐さん、迎えに行くとすっか！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	EndScene();
}
