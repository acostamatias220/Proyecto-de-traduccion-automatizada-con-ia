
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zc2300みそブー.nss_MAIN
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

scene zc2300みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="30">
////////////header////////////
//file name "zc2300みそブー.nss"
//title "日曜工作"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2309);}

//◆場所：半田明神_鳥居_ペンキ
//	OnBG(10,"bg0602211半田明神_鳥居_ペンキ");
//	FadeBG(0,true);

	CreateSE("SE01","seガヤ_交通少_l");
	CreateSE("SE02","seガヤ_ざわざわ02_l");
	MusicStart("SE01",2000,300,0,1000,null,true);
	MusicStart("SE02",2000,450,0,1000,null,true);


	CreateTextureSP("背景", 200, Center, -830, "cg/bg/bg0602211半田明神_鳥居_ペンキ.jpg");
	FadeDelete("上背景", 500, null, true);

	Move("背景", 4000, @0, -340, DxlAuto, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【みそ】
<voice name="みそ" class="みそ" src="voice/zc23/000200010mso">
「ふふふ……腕が鳴るなあ、ブー」

//【ブー】
<voice name="ブー" class="ブー" src="voice/zc23/000200020buu">
「おうよ！　某蛇羅号以来の日曜大工――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	PrintGO("上背景", 5000);

	CreateTextureSP("背景", 200, Center, -830, "cg/bg/bg0602211半田明神_鳥居_ペンキ.jpg");

	St("L",700, @0,@0,"buみそa_オラオラ_pride");
	FadeSt("L",0,true);

	St("R",700, @0,@0,"buブーa_オラオラ_normal");
	FadeSt("R",0,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ブー】
<voice name="ブー" class="ブー" src="voice/zc23/000200030buu">
「全力で、やってやろうじゃねぇか！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
