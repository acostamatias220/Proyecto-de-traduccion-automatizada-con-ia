
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zaa2110鈴.nss_MAIN
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

scene zaa2110鈴.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="70">
////////////header////////////
//file name "zaa2110鈴.nss"
//title "走り出す"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2116);}

//◆場所：スーパーノヴァ_ライブ会場_ガラス補修
	OnBG(10,"bg0502211スーパーノヴァ_ライブ会場_ガラス補修");
	FadeBG(0,true);

{	St("C",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("C",0,true);}

	MusicStart("@xbgm20",1000,450,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zaa21/100600010fjr">
「え……？」

{	St("C",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zaa21/100600020fjr">
「フウリちゃん……テレビに出て……」

{	St("C",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zaa21/100600030fjr">
「あ……ダメ！」

{	St("C",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zaa21/100600040fjr">
「行かなきゃ――フウリちゃんの所に――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	MusicStart("@xbgm20",3000,250,0,1000,null,true);

//◆場所：スーパーノヴァ_正面_ガラス補修
	SceneOut(5000, 1000, "blind_01_00_0");

	DeleteSt("C",0,false);
	OnBG(10,"bg0501300スーパーノヴァ_正面_ガラス補修");
	FadeBG(0,true);

	SceneIn(1000, "blind_01_00_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zaa21/100600050fjr">
「――あれ？」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zaa21/100600060fjr">
「今、何か後ろにちっちゃい影がいたような――」

{	St("C",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zaa21/100600070fjr">
「気のせい？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
