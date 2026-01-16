
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ze2320双六.nss_MAIN
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

scene ze2320双六.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "ze2320双六.nss"
//title "あと一歩"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2320);}

//◆場所：籠_内部
	OnBG(10,"bg0802100籠_内部_通常");
	FadeBG(0,true);

{	St("C",700, @0,@0,"bu双六a_通常_shock");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ze23/200200010ksr">
「おいおい、ウソだろ……」

{	St("C",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("C",200,false);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ze23/200200020ksr">
「ここまで来て……あと一歩だって言うのに……」

{	St("C",700, @0,@0,"bu双六a_通常_pinch");
	FadeSt("C",200,false);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ze23/200200030ksr">
「どうして、失敗しちまうんだ……？」

{	St("C",700, @0,@0,"bu双六a_通常_shout");
	FadeSt("C",200,false);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ze23/200200040ksr">
「おい！　双一！　答えろよ！」

{	St("C",700, @0,@0,"bu双六a_通常_angry");
	FadeSt("C",200,false);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ze23/200200050ksr">
「まだ……まだ、奥の手が用意してあんだろう！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
