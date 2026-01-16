
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zaba2400双六.nss_MAIN
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

scene zaba2400双六.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="20">
////////////header////////////
//file name "zaba2400双六.nss"
//title "記憶の欠片"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1912);}

//◆場所：地下_祭壇
	OnBG(10,"bg0702100地下_祭壇_通常");
	Move("@OnBG*", 0, @0, -170, null, true);
	FadeBG(0,true);

{	St("C",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zaba24/000400010ksr">
（なんだ……この女）

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zaba24/000400020ksr">
（オレ、どこかでコイツに会ったことがあるような……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
