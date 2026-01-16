
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2320ミヅハ.nss_MAIN
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

scene z2320ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "z2320ミヅハ.nss"
//title "神様"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：半田明神_社務所
	OnBG(10,"bg0604100半田明神_社務所_通常");
	FadeBG(0,true);

//※下倉注：雪が降ってきている。背景はそのまま

{	ClockPass(2320);}

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",0,true);}

	SnowDrop(0);
	Wait(1500);
	CreateSE("SE01", "seガヤ_交通少_l");
	MusicStart("SE01", 500, 350, 0, 1000, null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z23/200300010mzh">
「神が為すべきこと……」

{	St("C",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z23/200300020mzh">
「沙紅羅を、このまま悲しませるなど、許さん！」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z23/200300030mzh">
「例え……星を欺いてでも、わらわは……
　あやつの運命を、変えてやりたい！」

{	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z23/200300040mzh">
「しかし……どうすれば……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z23/200300050mzh">
「うぬぬぬぬぬぬ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
