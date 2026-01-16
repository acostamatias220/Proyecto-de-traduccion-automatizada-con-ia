
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zbaa2400ミヅハ.nss_MAIN
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

scene zbaa2400ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="30">
////////////header////////////
//file name "zbaa2300ミヅハ.nss"
//title "ミヅハノメの願い"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2400);}

//◆場所：半田明神_境内
	OnBG(10,"bg0603411半田明神_境内_ノーマル新年");
	FadeBG(0,true);

	CreateSE("SE01","seガヤ_半田明神02_l");
	MusicStart("SE01",1000,700,0,0,null,true);

	St("C",100, @0,@0,"buミヅハノメ_通常_normal");
	GodFadeSt("C",0,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/zbaa24/000300010mhn">
「街が壊れて、かえって半田明神に願いが集まった……か」

{	St("C",100, @0,@0,"buミヅハノメ_通常_hard");
	PlainFadeSt("C",200,false,1000);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/zbaa24/000300020mhn">
「念願かなってこの姿じゃが」

{	St("C",100, @0,@0,"buミヅハノメ_通常_smile");
	GodFadeSt("C",200,false);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/zbaa24/000300030mhn">
「あのふたりも……
　無事に気持ちが通じ合うと良いのう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
