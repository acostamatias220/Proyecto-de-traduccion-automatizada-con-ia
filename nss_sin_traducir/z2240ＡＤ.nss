
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2240ＡＤ.nss_MAIN
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

scene z2240ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="30">
////////////header////////////
//file name "z2240ＡＤ.nss"
//title "ハッピーエンド？"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2240);}

//◆場所：ＵＰ＋_屋外セット
	OnBG(10,"bg1203100ＵＰ＋_セット裏_通常");
	FadeBG(0,true);

	CreateSE("SE01","se環境_燃える_l");
	MusicStart("SE01",500,400,0,1000,null,true);

{	St("C",700, @0,@0,"buＡＤ_通常_smile");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z22/400100010adi">
「やった！　これでハッピーエンド！」

{	St("C",700, @0,@0,"buＡＤ_通常_pride");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z22/400100020adi">
「ゆるキャラが発表できなかったのは心残りだけど……ここまでできれば上出来よね！」

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z22/400100030adi">
「若原Ｄに連絡しなきゃ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
