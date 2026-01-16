
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zaa2400みそブー.nss_MAIN
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

scene zaa2400みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="20">
////////////header////////////
//file name "zaa2120みそブー.nss"
//title "みそブーの願い２"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2400);}

//◆場所：泰然堂大学病院_廊下
	OnBG(10,"bg1403100泰然堂大学病院_廊下_通常");
	FadeBG(0,true);

{	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【みそ】
<voice name="みそ" class="みそ" src="voice/zaa24/000100010mso">
「どうか姐さんが……」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buブーa_通常_normal");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zaa24/000100020buu">
「今年こそ、幸せになれますように……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
