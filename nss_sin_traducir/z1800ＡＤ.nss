
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1800ＡＤ.nss_MAIN
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

scene z1800ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="30">
////////////header////////////
//file name "z1800ＡＤ.nss"
//title "肉まんを探せ！"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1800);}

//◆場所：小碓家_正面
	OnBG(10,"bg1601100小碓家_正面_通常");
	FadeBG(0,true);

	CreateSE("SE01","seガヤ_交通少_l");
	MusicStart("SE01",500,300,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @200,@0,"buＡＤ_通常_normal");
	Move("@StNameC/C*", 200, @-40, @0, Dxl1, false);
	FadeSt("C",200,true);
	Move("@StNameC/C*", 1500, @-160, @0, Dxl1, false);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z18/000200010adi">
「肉まん……肉まん……
　あれ……？　おかしいな……」

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z18/000200020adi">
「私の記憶が確かなら……
　確かこの辺りに、コンビニがあったはず……」

{	St("C",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z18/000200030adi">
「携帯の地図にも、そう書いてあるし……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
