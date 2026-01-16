
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zb2140鈴.nss_MAIN
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

scene zb2140鈴.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="40">
////////////header////////////
//file name "zb2140鈴.nss"
//title "不運"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2149);}

//◆場所：スーパーノヴァ_正面_ガラス割れ
	OnBG(10,"bg0501500スーパーノヴァ_正面_ガラス割れタイヤ痕");
	FadeBG(0,true);

	CreateTextureEX("うえよう", 200, Center, Middle, "cg/bg/bg0501500スーパーノヴァ_正面_ガラス割れタイヤ痕.jpg");

	MusicStart("@xbgm20",1000,350,0,1000,null,true);

	St("C",700, @0,@0,"bu鈴_もじゃ_cry");
	Shake("@StNameC/C*", 1500, 7, 1, 0, 0, 1000, Dxl1, false);
	FadeSt("C",0,true);
	FadeDelete("上背景", 500, null, true);

	Wait(1200);
	DeleteSt("C", 100,true);

	St("C",700, @0,@0,"bu鈴_シリアス_fear");
	FadeSt("C",100,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zb21/400200010fjr">
「ああ……まさか……
　こんなことになるなんて、不幸すぎる……」

{	CreateSE("SE01","se人体_倒れる04");
	MusicStart("SE01",0,700,0,0,null,false);
	Move("@StNameC/C*", 200, @0, @100, Dxl1, false);
	DeleteSt("C", 200,true);
	Wait(100);}
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/zb21/400200020e05">
「まあまあ、僕たちも力の限り協力体制を取っていきますんで……」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/zb21/400200030e06">
「その代わりといっちゃナンですが、１冊本をもらえると」

{	St("C",700, @-50,@200,"bu鈴_もじゃ_angry");
	Move("@StNameC/C*", 200, @50, @-200, Dxl1, false);
	Shake("@StNameC/C*", 1500, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,false);
}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zb21/400200040fjr">
「いいから、さっさと片付けて！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	SetVolumeEX("@xbgm*", 1000, 0, null);

	EndScene();
}
