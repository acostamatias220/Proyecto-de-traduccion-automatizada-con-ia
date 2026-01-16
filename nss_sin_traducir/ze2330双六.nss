
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ze2330双六.nss_MAIN
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

scene ze2330双六.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="30">
////////////header////////////
//file name "ze2330双六.nss"
//title "絶体絶命"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2330);}

//◆場所：籠_内部
	OnBG(10,"bg0802100籠_内部_通常");
	FadeBG(0,true);

{	St("C",700, @0,@0,"bu双六a_通常_pinch");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ze23/300200010ksr">
「逃げるヒマもなく……
　電話も、繋がらねぇ……」

{	St("C",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("C",200,false);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ze23/300200020ksr">
「……沙紅羅」

{	St("C",700, @0,@0,"bu双六a_通常_shock");
	FadeSt("C",200,false);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ze23/300200030ksr">
「できればオレのこういう所は、見せてやりたくなかったけど。これも罰ってヤツか――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
