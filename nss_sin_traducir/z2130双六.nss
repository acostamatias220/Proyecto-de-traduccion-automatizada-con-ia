
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2130双六.nss_MAIN
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

scene z2130双六.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="20">
////////////header////////////
//file name "z2130双六.nss"
//title "助太刀"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2136);}

//◆場所：バックギャモン_店内
	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);

	SoundPlay("@xsong01",0,450,true);

//◆演出指示：轟音：高架下が崩れる
	CreateSE("SE01","se戦闘_倒壊01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Shake("OnBG*", 500, 50, 50, 0, 0, 500, null, false);

	FadeDelete("上背景", 500, null, true);

	WaitPlay("SE01");

{	St("C",700, @0,@0,"bu双六a_通常_shock");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z21/300300010ksr">
「……おいおい、なんだよ今の音」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z21/300300020ksr">
「さすがにこの店ぶっ壊させるわけにはいかねぇぞ、オイ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
