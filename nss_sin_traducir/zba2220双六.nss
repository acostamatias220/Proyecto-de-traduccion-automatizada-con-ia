
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zba2220双六.nss_MAIN
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

scene zba2220双六.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="20">
////////////header////////////
//file name "zb2220双六.nss"
//title "非常事態宣言"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2228);}


//◆場所：バックギャモン_店内
	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);

//◆演出指示：爆発音

	CreateTextureEX("絵背景100", 10, Center, InBottom, "cg/bg/bg1002100バックギャモン_店内_通常.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	CreateSE("SE01","se戦闘_爆発01");
	CreateSE("SE02","se戦闘_倒壊04");
	MusicStart("SE01",0,400,0,1000,null,false);
	MusicStart("SE02",0,400,0,1000,null,false);

	Shake("絵背景100", 3000, -7, 5, 0, 0, 1000, Dxl1, false);

	SoundPlay("@xsong01",3000,450,true);

	FadeDelete("上背景", 500, null, true);

	Wait(500);

{	St("C",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zba22/200400010ksr">
「ああん！？　今度は何の音だ？」

{	St("C",700, @0,@0,"bu双六a_通常_angry");
	FadeSt("C",200,false);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zba22/200400020ksr">
「また高架線でも落ちたのか！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
