
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1950双六.nss_MAIN
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

scene z1950双六.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="20">
////////////header////////////
//file name "z1950双六.nss"
//title "くつろぎの瞬間"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1950);}

//◆場所：バックギャモン_店内
	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);

	SoundPlay("@xsong01",0,450,true);
	SetVolumeEX("@xsong01", 60000, 0, null)

	St("C",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("C",0,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z19/500400010ksr">
「ふぅ……やっと帰ってきたぜ」

{
	CreateSE("SE02","seメカ_携帯_電子音01");
	MusicStart("SE02",0,400,0,1000,null,false);


	CreateSE("SE01","seガヤ_AV_l");
	MusicStart("SE01",500,400,0,1000,null,true);

WaitKey(3000);


	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z19/500400020ksr">
「ここでＡＶ鑑賞の時間が、一番落ち着くなあ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("X*", 2000, 0, null)

	TextBoxDelete(150);



	EndScene();
}
