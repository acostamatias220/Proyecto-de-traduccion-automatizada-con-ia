
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2320ＡＤ.nss_MAIN
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

scene z2320ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="20">
////////////header////////////
//file name "z2320ＡＤ.nss"
//title "リベンジ"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);


//※下倉注：雪が降ってきている。背景はそのまま

{	ClockPass(2320);}

//◆場所：半田明神_境内
	OnBG(10,"bg0603200半田明神_境内_ペンキ");
	FadeBG(0,true);

{	St("C",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("C",0,true);}

	SnowDrop(0);
	Wait(1500);
	CreateSE("SE01", "seガヤ_交通少_l");
	MusicStart("SE01", 500, 350, 0, 1000, null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z23/200100010adi">
「頑張って、設営します！」

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z23/200100020adi">
「今度こそ、ゆるキャラバンのリベンジ！
　文句のつけようがない番組にしてやります！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
