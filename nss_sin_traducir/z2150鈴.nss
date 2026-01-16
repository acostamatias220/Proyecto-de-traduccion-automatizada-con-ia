
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2150鈴.nss_MAIN
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

scene z2150鈴.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="60">
////////////header////////////
//file name "z2150鈴.nss"
//title "精神崩壊２"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2150);}


//◆場所：スーパーノヴァ_正面_ガラス車イン
	OnBG(10,"bg0501400スーパーノヴァ_正面_ガラス車イン");
	FadeBG(0,true);

//◆音声指示：狂気
{	St("C",700, @0,@0,"bu鈴_もじゃ_fear");
	FadeSt("C",0,true);}

	MusicStart("@xbgm20",1000,350,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z21/500600010fjr">
「もういやだ……もういやだ……」

{	Move("@StNameC/C*", 3000, @-100, @20, AxlDxl, false);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z21/500600020fjr">
「あたし、おうちかえる」

{	St("C",700, @-100,@20,"bu鈴_もじゃ_angry");
	Move("@StNameC/C*", 200, @-100, @-20, AxlDxl, false);
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 1000, 0, 15, 0, 0, 500, Dxl3, false);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z21/500600030fjr">
「おうちかえる！　かえるんだもーん！！」

{	St("MR",700, @0,@0,"bu村崎_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/z21/500600040msi">
「あの……鈴さん、気を確かに」

{	St("C",700, @-200,@0,"bu鈴_もじゃ_angry");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 500, 20, 0, 0, 0, 500, Dxl3, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z21/500600050fjr">
「あんたが言うなスパイダー・ジャーマン・スープレ――――ックス！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Move("@StNameC/C*", 200, @200, @0, Dxl3, false);
	DeleteAllSt(200,false);
	CreateSE("SE01","se戦闘_絞める");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("MR",700, @0,@0,"bu村崎_通常_cry");
	Move("@StNameMR/MR*", 200, @100, @0, Dxl3, false);
	Shake("@StNameMR/MR*", 500, 0, 20, 0, 0, 500, Dxl3, false);
	FadeSt("MR",200,true);
	Move("@StNameMR/MR*", 200, @0, @80, AxlDxl, false);
	CreateSE("SE03","se擬音_ギャグ_ドカーン");
	MusicStart("SE03",0,700,0,1000,null,false);
	DeleteAllSt(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/z21/500600060msi">
「ふぎゃああああああああ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
