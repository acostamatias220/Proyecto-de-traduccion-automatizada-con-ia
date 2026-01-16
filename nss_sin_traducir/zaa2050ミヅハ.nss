
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zaa2050ミヅハ.nss_MAIN
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

scene zaa2050ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="170">
////////////header////////////
//file name "zaa2050ミヅハ.nss"
//title "間違い電話"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2050);}

//◆場所：半田明神_鳥居
	OnBG(10,"bg0602111半田明神_鳥居_通常");
	Move("@OnBG*", 0, @0, @-390, null, true);
	FadeBG(0,true);

	CreateSE("SE01", "seガヤ_交通少_l");
	MusicStart("SE01", 500, 350, 0, 1000, null,true);

{	St("C",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zaa20/500300010mzh">
「むー。けーたいでんわでテレビが見られるのか。
　ハイカラじゃのう……」

{	St("C",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zaa20/500300020mzh">
「どれどれ……電源は……」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zaa20/500300030mzh">
「…………」

{	St("C",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zaa20/500300040mzh">
「わ、わからん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zaa20/500300050mzh">
「ここか？　ここか？　ここ……」


//◆ＳＥ：ピポパポ
{	CreateSE("ピポパポ", "seメカ_携帯_ダイヤル");
	MusicStart("ピポパポ", 0, 1000, 0, 1000, null, false);
	St("C",700, @0,@40,"buミヅハ_フラット_shock");
	FadeT("@StNameC/C*",0,0,200,0,-40,Dxl1,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zaa20/500300060mzh">
「うお！　なんじゃ？　なにか音が――」

{	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zaa20/500300070mzh">
「なんじゃ？　何が起こっているのじゃ？」

{	St("C",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zaa20/500300080mzh">
「ええと……発信中？　相手は――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zaa20/500300090mzh">
「<RUBY text="たちばな">大刀刃那</RUBY>？」

{	DeleteSt("C",200,true);}
//◆音声指示：電話越し
//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/zaa20/500300100whr">
『あ、もしもし！』

{	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zaa20/500300110mzh">
「あの、すまぬ。間違い――」

{	DeleteSt("C",200,true);}
//◆音声指示：電話越し
//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/zaa20/500300120whr">
『悪いけどオレタチバナさんじゃなくて、同室だった者です』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//◆音声指示：電話越し
//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/zaa20/500300130whr">
『タチバナさん、今朝なくなったみたいで。
　あの、もしかして家族の――』

{	St("C",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zaa20/500300140mzh">
「いや、違う！　間違い電話じゃ、すまぬ！」

{	DeleteSt("C",200,false);
	CreateSE("携帯", "seメカ_携帯_電子音01");
	MusicStart("携帯", 0, 1000, 0, 1000, null, false);
	Wait(1000);
	St("C",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zaa20/500300150mzh">
「…………ふぅ」

{	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zaa20/500300160mzh">
「変なところに電話をしてしもうた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("C",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zaa20/500300170mzh">
「てくのろじいとは、難しいもんじゃのう……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
