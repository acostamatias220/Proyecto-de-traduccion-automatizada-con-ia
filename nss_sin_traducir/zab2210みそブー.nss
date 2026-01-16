
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zab2210みそブー.nss_MAIN
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

scene zab2210みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="70">
////////////header////////////
//file name "zab2210みそブー.nss"
//title "ブラパン"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2210);}

//◆場所：似鳥マンション_エントランス
	OnBG(10,"bg1301100似鳥マンション_エントランス_通常");
	FadeBG(0,true);

{	St("L",700, @0,@0,"buみそa_通常_hard");
	FadeSt("L",0,true);}

	CreateSE("SE01","seメカ_痛バイ_停止");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【みそ】
<voice name="みそ" class="みそ" src="voice/zab22/100200010mso">
「ん……？」

{	DeleteSt("L",200,false);
	St("R",700, @0,@0,"buブーa_通常_normal");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zab22/100200020buu">
「なんだ、みそ？」

{	DeleteSt("R",200,false);
	St("L",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/zab22/100200030mso">
「いや、今の警官……
　なんか変なバイクで駆けつけなかったか？」

{	DeleteSt("L",200,false);
	St("R",700, @0,@0,"buブーa_通常_shout");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zab22/100200040buu">
「ほ、ホントだ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	DeleteSt("R",200,false);
	St("L",700, @0,@0,"buみそa_通常_shout");
	FadeSt("L",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【みそ】
<voice name="みそ" class="みそ" src="voice/zab22/100200050mso">
「なんか、ブラパンって呼ばれてるぞ！」

{	DeleteSt("L",200,false);
	St("R",700, @0,@0,"buブーa_通常_hard");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zab22/100200060buu">
「ひ……卑猥だな！」

{	DeleteSt("R",200,false);
	St("L",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/zab22/100200070mso">
「ああ……卑猥だ……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
