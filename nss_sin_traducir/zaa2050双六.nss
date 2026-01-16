
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zaa2050双六.nss_MAIN
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

scene zaa2050双六.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "zaa2050双六.nss"
//title "屍"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2050);}

//◆場所：籠_正面_ブラックライト
	OnBG(10,"bg0801200籠_正面_ブラックライト");
	FadeBG(0,true);

{	St("MR",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("MR",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/zaa20/500500010msi">
「ははっ！　ははっ！　はははははは！」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/zaa20/500500020msi">
「やりました！　やりましたよ！
　これで私の借金はチャラ！　チャラですね！」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu双六a_通常_angry");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zaa20/500500030ksr">
「チッ――」

{	St("ML",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zaa20/500500040ksr">
「いいから行け」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	DeleteSt("ML".200,false);
	St("MR",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/zaa20/500500050msi">
「はっ！　はいっ！　それでは失礼しますッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
