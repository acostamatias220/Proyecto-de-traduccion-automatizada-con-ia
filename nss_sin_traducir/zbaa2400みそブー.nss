
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zbaa2400みそブー.nss_MAIN
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

scene zbaa2400みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="20">
////////////header////////////
//file name "zbaa2400みそブー.nss"
//title "みそブーの願い３"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2400);}

//◆場所：半田明神_境内
	OnBG(10,"bg0603411半田明神_境内_ノーマル新年");
	FadeBG(0,true);

	CreateSE("SE01","seガヤ_半田明神02_l");
	MusicStart("SE01",1000,700,0,0,null,true);

{	St("MR",700, @0,@0,"buみそa_通常_hard");
	FadeSt("MR",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【みそ】
<voice name="みそ" class="みそ" src="voice/zbaa24/000200010mso">
「どうか……姐さんの恋が……」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buブーa_通常_hard");
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zbaa24/000200020buu">
「今度こそ、ちゃんと実りますように……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	MusicStart("SE01",1000,0,0,1000,null,false);

	EndScene();
}
