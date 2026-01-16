
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2210鈴.nss_MAIN
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

scene z2210鈴.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="60">
////////////header////////////
//file name "z2210鈴.nss"
//title "精神崩壊３"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2210);}

//◆場所：スーパーノヴァ_正面_ガラス車イン
	OnBG(10,"bg0501400スーパーノヴァ_正面_ガラス車イン");
	FadeBG(0,true);

//◆音声指示：狂気
	St("C",700, @0,@0,"bu鈴_もじゃ_fear");
	FadeSt("C",0,true);

	MusicStart("@xbgm20",1000,350,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z22/100500010fjr">
「もういやだ……もういやだ……」

{	Move("@StNameC/C*", 3000, @0, 600, AxlDxl, false);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z22/100500020fjr">
「もういやもういやもういやもういやもういやもういやもういやもういやもういやもういやもういやもういや」

{	Move("@StNameC/C*", 5000, @0, 0, AxlDxl, false);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z22/100500030fjr">
「もういやもういやもういやもういやもういやもういやもういやもういやもういやもういやもういやもういや」

{	St("MR",700, @0,@0,"bu村崎_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/z22/100500040msi">
「あの……鈴さん、気を確かに」

{	St("C",700, @0,0,"bu鈴_もじゃ_angry");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 200, @-200, @-105, Dxl3, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z22/100500050fjr">
「もういやだって言ってるでしょドラゴンスリーパ――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Move("@StNameC/C*", 200, @200, @50, Dxl3, false);
	DeleteAllSt(200,false);
	CreateSE("SE01","se戦闘_絞める");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("MR",700, @0,@0,"bu村崎_通常_cry");
	Move("@StNameMR/MR*", 200, @100, @50, Dxl3, false);
	Shake("@StNameMR/MR*", 500, 0, 20, 0, 0, 500, Dxl3, false);
	FadeSt("MR",200,true);
	Move("@StNameMR/MR*", 200, @0, @80, AxlDxl, false);
	CreateSE("SE02","se擬音_ギャグ_ドカーン");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateSE("SE03","se人体_骨砕ける01");
	MusicStart("SE03",0,700,0,1000,null,false);
	DeleteAllSt(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/z22/100500060msi">
「ふぎゃああああああああ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
