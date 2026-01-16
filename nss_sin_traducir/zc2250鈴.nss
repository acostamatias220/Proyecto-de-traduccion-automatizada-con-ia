
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zc2250鈴.nss_MAIN
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

scene zc2250鈴.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "zc2250鈴.nss"
//title "立ち直るのは無理、鈴！"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2259);}

//◆場所：スーパーノヴァ_ライブ会場_ガラス割れ
	OnBG(10,"bg0502111スーパーノヴァ_ライブ会場_ガラス割れ");
	FadeBG(0,true);

{	St("C",700, @0,@0,"bu鈴_もじゃ_cry");
	FadeSt("C",0,true);}

	MusicStart("@xbgm20",1000,450,0,1000,null,true);


	FadeDelete("上背景", 500, null, true);

	Shake("@StNameC/C*", 500, 15, 1, 0, 0, 1000, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zc22/500200010fjr">
「もじゃ――――――っ！！」

{	St("ML",700, @-200,@0,"buミリＰa_ショータイム_happy");
	DeleteSt("C", 150,false);
	Move("@StNameML/ML*", 200, @200, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/zc22/500200020mrp">
「鈴ちゃん！！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu鈴_シリアス_fear");
	Shake("@StNameMR/MR*", 500, 15, 1, 0, 0, 1000, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zc22/500200030fjr">
「あー！　ミリＰさん、すいません！
　私、ダメかもしれない……」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zc22/500200040fjr">
「ちょっと、外で頭冷やしてきます！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	Move("@StNameMR/MR*", 200, @30, @0, Axl1, false);
	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/zc22/500200050mrp">
「そうした方がいいかもね……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
