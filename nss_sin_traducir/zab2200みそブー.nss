
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zab2200みそブー.nss_MAIN
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

scene zab2200みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "zab2200みそブー.nss"
//title "犠牲になる"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2202);}

//◆場所：似鳥マンション_正面
	OnBG(10,"bg1301100似鳥マンション_エントランス_通常");
	FadeBG(0,true);

{	St("L",700, @0,@0,"buみそa_通常_hard");
	FadeSt("L",0,true);}

	CreateSE("SE01","seメカ_車_パトカーサイレン_l");
	MusicStart("SE01",6000,700,0,900,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【みそ】
<voice name="みそ" class="みそ" src="voice/zab22/000200010mso">
「おい、ブー」

{	DeleteSt("L",200,false);
	St("R",700, @0,@0,"buブーa_通常_hard");
	FadeSt("R",200,true);
	SetFrequency("SE01", 3000, 1000, Dxl3);
	SetVolumeEX("SE*", 4000, 0, null);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zab22/000200020buu">
「ああ。わかってる」

//【ブー】
<voice name="ブー" class="ブー" src="voice/zab22/000200030buu">
「姉弟の再会が終わるまで、姐さんのことは口に出さない」

{	DeleteSt("R",200,false);
	St("L",700, @0,@0,"buみそa_通常_hard");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/zab22/000200040mso">
「でも……」

//【みそ】
<voice name="みそ" class="みそ" src="voice/zab22/000200050mso">
「姐さん、ホントに真っ直ぐ病院に行くか……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
