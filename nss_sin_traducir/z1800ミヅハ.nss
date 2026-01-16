
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1800ミヅハ.nss_MAIN
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

scene z1800ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="60">
////////////header////////////
//file name "z1800ミヅハ.nss"
//title "ぶしつけの詫び"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1802);}

//◆場所：半田明神_鳥居
	OnBG(10,"bg0602111半田明神_鳥居_通常");
	Move("@OnBG*", 0, @0, -855, null, true);
	FadeBG(0,true);

	St("C",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("C",0,true);

	CreateSE("SE01", "seガヤ_交通少_l");
	MusicStart("SE01", 500, 350, 0, 1000, null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z18/000300010mzh">
「むう……あの女！　信心のないヤツじゃ！」

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z18/000300020mzh">
「…………」

{	St("C",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z18/000300030mzh">
「…………むぅ」

{	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z18/000300040mzh">
「しかし、確かにわらわの言い方も、横暴じゃったかの」

{	St("C",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z18/000300050mzh">
「うーむ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("C",700, @0,@40,"buミヅハ_通常_smile");
	FadeT("@StNameC/C*",0,0,200,0,-40,Dxl1,false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z18/000300060mzh">
「そうじゃ！
　サイババア様の所で、詫びに甘酒をもらっていこう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
