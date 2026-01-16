
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zc2230双六.nss_MAIN
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

scene zc2230双六.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="40">
////////////header////////////
//file name "zc2230双六.nss"
//title "最悪の事態"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2230);}

//◆場所：バックギャモン_店内
	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);

{	St("C",700, @0,@0,"bu双六a_横向き_sad");
	FadeSt("C",0,true);}

	SoundPlay("@xsong01",3000,250,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zc22/300100010ksr">
「……うわー、マジかよ」

{	St("C",700, @0,@0,"bu双六a_横向き_sigh");
	FadeSt("C",200,false);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zc22/300100020ksr">
「最悪の事態だろ」

{	St("C",700, @0,@0,"bu双六a_横向き_sad");
	FadeSt("C",200,false);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zc22/300100030ksr">
「もう、弾なんて……」

//◆ＳＥ：電話着信

{	DeleteSt("C", 200,true);
	CreateSE("SE01","seメカ_携帯_メール着信_双六_l");
	MusicStart("SE01",0,1000,0,1000,null,true);
	Wait(1500);
	St("C",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zc22/300100040ksr">
「双一親分から……電話？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
