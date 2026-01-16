
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zc2400みそブー.nss_MAIN
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

scene zc2400みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="20">
////////////header////////////
//file name "zc2400みそブー.nss"
//title "みそブーの願い６"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2400);}

//◆場所：半田明神_涸れ井戸
	if(#RouteName=="c"){
	OnBG(10,"bg0606100半田明神_涸れ井戸_通常");
	}else{
	OnBG(10,"bg0606200半田明神_涸れ井戸_雪");
	}
	FadeBG(0,true);

{	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",0,true);}

	CreateSE("SE01","seガヤ_半田明神01_l");
	MusicStart("SE01",2000,300,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【みそ】
<voice name="みそ" class="みそ" src="voice/zc24/000200010mso">
「どうか……みんなの願いが集まって……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_ero");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zc24/000200020buu">
「ミヅハがちゃんと、元の姿になれますように……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
