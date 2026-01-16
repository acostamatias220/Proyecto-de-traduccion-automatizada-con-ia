
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zab2100双六.nss_MAIN
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

scene zab2100双六.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="30">
////////////header////////////
//file name "zab2100双六.nss"
//title "呆然"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：バックギャモン_店内
	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);

//◆ＳＥ：電話
	CreateSE("SEL1","seメカ_携帯_コール01_l");
	MusicStart("SEL1",2000,700,0,1000,null,true);

	SoundPlay("@xsong01",4000,1,true);

{	ClockPass(2100);}

{	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",0,true);}

	Wait(2000);

	FadeDelete("上背景", 500, null, true);

	Wait(1000);

	SetVolumeEX("SE*", 200, 0, null);
	SetVolumeEX("@xsong01", 5000, 250, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zab21/000400010ksr">
「あ……もしもし。双一親分？」

{	St("C",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zab21/000400020ksr">
「ええと、実は……地下で、奇妙な出来事が……」

{	St("C",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zab21/000400030ksr">
「ああ。アザナエルは、奪われた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
