
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zc2400ミヅハ.nss_MAIN
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

scene zc2400ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="20">
////////////header////////////
//file name "zc2400みそブー.nss"
//title "天へ……"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2403);}

//◆場所：秋葉原_上空
//	OnBG(10,"bg2401100空_上空_通常");
//	FadeBG(0,true);

//	FadeDelete("上背景", 0, null, true);

	CreateTextureSP("背景", 200, Center, -446, "cg/bg/bg2401100空_上空_通常.jpg");

	St("C",800, @-50,@50,"buミヅハノメ_通常_normal");

	CreateSE("SE01","se擬音_光り輝く01");
	MusicStart("SE01",3000,200,0,1000,null,true);


	Move("背景", 1500, @0, 0, Dxl1, false);
	FadeDelete("上背景", 1500, null, true);






	Move("@StNameC/C*", 600, @50, @-50, DxlAout, false);
	FadeSt("C",600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/zc24/000300010mhn">
「皆の者……さらばじゃ！」

{	St("C",800, @0,@0,"buミヅハノメ_通常_smile");
	PlainFadeSt("C",200,false,1000);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/zc24/000300020mhn">
「今年がおぬしらにとって、よい一年になりますように」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 3000, 0, null);

	CreatePlainSP("絵板写", 5000);
	Request("@StNameC/C*", AddRender);

	FadeDelete("絵板写", 300, null, true);

	Wait(300);

	Move("@StNameC/C*", 1200, @40, @-50, null, false);

	DeleteAllSt(1200,true);
	TextBoxDelete(150);



	EndScene();
}
