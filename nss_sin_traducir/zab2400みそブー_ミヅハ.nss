
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zab2400みそブー_ミヅハ.nss_MAIN
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

scene zab2400みそブー_ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="40">
////////////header////////////
//file name "zab2220みそブー_ミヅハ.nss"
//title "おともだち"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1900);}

//※下倉注：背景調整 2010/11/20
//◆場所：bg1701100銭形公園_全景_通常
	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);

{	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("C",0,true);}

	CreateSE("SE01","seガヤ_交通少_l");
	CreateSE("SE02","se環境_風と葉っぱ_l");
	MusicStart("SE01",2000,500,0,1000,null,true);
	MusicStart("SE02",2000,400,0,500,null,true);


	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zab24/000100010mzh">
「のう……みそブー」

{	DeleteSt("C",200,false);
	St("L",700, @0,@0,"buみそa_通常_normal");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/zab24/000100020mso">
「ん？」

{	DeleteSt("L",200,false);
	St("R",700, @0,@0,"buブーa_通常_normal");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zab24/000100030buu">
「なんだ？」

{	DeleteSt("R",200,false);
	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zab24/000100040mzh">
「おぬしたち……
　わらわのお友達に、なってはくれぬか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
