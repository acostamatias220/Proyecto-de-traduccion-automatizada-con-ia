
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zba2220ミヅハ.nss_MAIN
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

scene zba2220ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="40">
////////////header////////////
//file name "zba2220ミヅハ.nss"
//title "最悪の事態"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2228);}

//◆場所：半田明神_拝殿
	OnBG(10,"bg0607100半田明神_拝殿_通常");
	FadeBG(0,true);

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zba22/200200010mzh">
（頼むぞ、３人とも……）

{	St("C",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zba22/200200020mzh">
（フウリの命を……救ってくれ……）

//◆ＳＥ：地鳴り

{	CreateSE("SE01","se環境_地鳴り01_l");
	MusicStart("SE01",0,700,0,1000,null,true);
	Wait(1000);
	St("C",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zba22/200200030mzh">
「――ッ！？」

{	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zba22/200200040mzh">
「この音は――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	EndScene();
}
