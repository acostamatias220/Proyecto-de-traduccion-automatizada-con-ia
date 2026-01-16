
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zbaa2300ＡＤ.nss_MAIN
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

scene zbaa2300ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="40">
////////////header////////////
//file name "zbaa2300ＡＤ.nss"
//title "勝利"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2300);}

//◆場所：スパコン館_裏面_廃墟
	OnBG(10,"bg0107400秋葉原_遠景_破壊");
	FadeBG(0,true);

{	St("C",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("C",0,true);}

	CreateSE("SE01","se環境_風低音_l");
	MusicStart("SE01",3000,700,0,300,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zbaa23/000100010adi">
「す……すごい！」

{	DeleteAllSt(200,true);
	St("C",700, @-200,@200,"buミリＰa_ショータイム_shout");
	Move("@StNameC/C*", 200, @200, @-200, Dxl1, false);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/zbaa23/000100020mrp">
「やりましたっ！！」

{	St("C",700, @0,@0,"buミリＰa_ショータイム_pride");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/zbaa23/000100030mrp">
「秋葉原に現れた謎のタヌキが――
　今、ひとりのヤンキー少女の手によって、倒された！」

{	St("C",700, @0,@0,"buミリＰa_ショータイム_happy");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/zbaa23/000100040mrp">
「秋葉原の街は、救われたのですッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
