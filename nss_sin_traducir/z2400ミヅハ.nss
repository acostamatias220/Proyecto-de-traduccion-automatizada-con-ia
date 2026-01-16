
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2400ミヅハ.nss_MAIN
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

scene z2400ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="20">
////////////header////////////
//file name "z2400ミヅハ.nss"
//title "ミヅハの願い１"


{	ClockPass(2405);}


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：半田明神_境内_雪トゥルー新年
	OnBG(10,"bg0603311半田明神_境内_雪ライブ");
	FadeBG(0,true);

	CreateSE("SE11","seガヤ_大歓声_l");
	MusicStart("SE11",500,100,0,1000,null,true);

	St("C",700, @0,@0,"buミヅハノメ_通常_hard");
	FadeSt("C",0,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/z24/000300010mhn">
「どうか今年も……」

{	St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	GodFadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/z24/000300020mhn">
「皆が幸せに暮らせますように」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
