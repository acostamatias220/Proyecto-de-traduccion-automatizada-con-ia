
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zba2230鈴_ＡＤ.nss_MAIN
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

scene zba2230鈴_ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "zba2230鈴_ＡＤ.nss"
//title "避難"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2230);}

//◆場所：スーパーノヴァ_正面_ガラス割れ
	OnBG(10,"bg0501500スーパーノヴァ_正面_ガラス割れタイヤ痕");
	FadeBG(0,true);

	MusicStart("@xbgm20",1000,350,0,1000,null,true);

	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,700,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);
	Wait(1000);

	St("C",700, @180,@0,"buＡＤ_通常_angry");
	MusicStart("SE01",200,0,0,1000,null,false);
	Move("@StNameC/C*", 200, @-180, @0, Dxl1, false);
	FadeSt("C",200,true);
	Wait(500);
//	Move("@StNameC/C*", 300, @150, @0, Dxl1, false);
	Move("@StNameC/C*", 200, @-60, @0, null, false);
	DeleteSt("C", 200,true);

{	St("ML",700, @-150,@0,"bu鈴_シリアス_shout");
	Move("@StNameML/ML*", 300, @150, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zba22/300500010fjr">
「ちょ！　何やってんの！」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zba22/300500020adi">
「だってアレ、スクープ――」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zba22/300500030fjr">
「とか言ってる場合じゃないでしょ！
　ほら、半田明神に避難を！」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zba22/300500040adi">
「冗談じゃないわッ！！
　大スクープなんだからッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("MR",700, @0,@0,"buＡＤ_通常_angry");
	FadeSt("MR",200,false);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zba22/300500050adi">
「このチャンスは、逃せないッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("@StNameMR/MR*", 300, @-400, @0, Axl1, false);
	DeleteSt("MR", 200,true);



	EndScene();
}
