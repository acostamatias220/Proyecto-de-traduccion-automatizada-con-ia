
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zc2240ＡＤ.nss_MAIN
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

scene zc2240ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="20">
////////////header////////////
//file name "zc2240ＡＤ.nss"
//title "次の目標"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2240);}

//◆場所：ＵＰ＋_屋外セット
	OnBG(10,"bg1201200ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

{	St("C",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

	CreateSE("SE01","seガヤ_交通少_l");
	MusicStart("SE01",2000,300,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zc22/400100010adi">
「うん！　ここで立ち止まっててもしょうがない！」

{	St("C",700, @0,@0,"buＡＤ_通常_smile");
	FadeSt("C",200,false);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zc22/400100020adi">
「すぐにここを片付けて、ライブの手伝いに行こう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
