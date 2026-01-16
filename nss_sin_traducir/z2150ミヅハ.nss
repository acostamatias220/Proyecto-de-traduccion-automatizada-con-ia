
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2150ミヅハ.nss_MAIN
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

scene z2150ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="20">
////////////header////////////
//file name "z2150ミヅハ.nss"
//title "決意"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2156);}

//◆場所：スパコン館_裏面
	OnBG(10,"bg1101300スパコン館_裏面_電柱折れ");
	FadeBG(0,true);

	CreateSE("SE11","se動作_走る01_l");
	MusicStart("SE11",500,300,0,1000,null,true);

	CreateSE("SEL01","seガヤ_交通少_l");
	MusicStart("SEL01",500,500,0,1000,null,true);

	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",200,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z21/500300010mzh">
（そうじゃ！　アザナエルの弾――）

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z21/500300020mzh">
（あれさえあれば――あれさえあれば――ッ！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 1000, 0, null);

	TextBoxDelete(150);

	EndScene();
}
