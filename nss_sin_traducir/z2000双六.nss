
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2000双六.nss_MAIN
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

scene z2000双六.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="40">
////////////header////////////
//file name "z2000双六.nss"
//title "ロクローはニューヒーロー"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2005);}


//◆場所：バックギャモン_店内
	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);


	SoundPlay("@xsong01",0,450,true);
	SetVolumeEX("@xsong01", 60000, 0, null)


	St("C",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("C",0,true);

	FadeDelete("上背景", 500, null, true);

	CreateSE("SE02","seガヤ_AV_l");
	MusicStart("SE02",500,400,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z20/000400010ksr">
「しかし、このロクローってヤツはすげえな……」

{	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z20/000400020ksr">
「最近のＡＶじゃ抜群に売れてるし……
　ってか、ＡＶじゃないのか？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z20/000400030ksr">
「あー、確か今日も、スパコン館で年越し撮影とか――」

//◆ＳＥ：電話
{	CreateSE("SE01","seメカ_携帯_メール着信_双六_l");
	MusicStart("SE01",0,700,0,1000,null,true);}

{	St("C",700, @0,@0,"bu双六a_通常_shock");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z20/000400040ksr">
「ん？　似鳥から電話――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);





	EndScene();
}
