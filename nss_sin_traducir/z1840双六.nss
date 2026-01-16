
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1840双六.nss_MAIN
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

scene z1840双六.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="30">
////////////header////////////
//file name "z1840双六.nss"
//title "待ち合わせ"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1849);}

//◆場所：半田明神_涸れ井戸
	OnBG(10,"bg0606100半田明神_涸れ井戸_通常");
	FadeBG(0,true);

	CreateSE("SE01","se環境_風と葉っぱ_l");
	MusicStart("SE01",500,700,0,1000,null,true);

	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",0,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z18/400300010ksr">
「みそブーは、うまくやってくれたみたいだな」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z18/400300020ksr">
「双一親分の言うとおり、行くか」

{	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/z18/400300030mpt">
「ええ。そうしましょう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
