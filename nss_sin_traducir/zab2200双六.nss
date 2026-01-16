
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zab2200双六.nss_MAIN
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

scene zab2200双六.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="30">
////////////header////////////
//file name "zab2200双六.nss"
//title "予感"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2200);}

//◆場所：バックギャモン_店内
	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);

{	St("C",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("C",0,true);}

	SoundPlay("@xsong01",4000,250,true);
	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zab22/000500010ksr">
「こうなっちまったら、来るんだろうな……沙紅羅」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zab22/000500020ksr">
「けど……アイツを連れてくわけにはいかねぇや」

{	St("C",700, @0,@0,"bu双六a_横向き_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zab22/000500030ksr">
「こっちの世界で暮らすには、純粋すぎる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
