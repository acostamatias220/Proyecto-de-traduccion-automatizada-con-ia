
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zbaa2400双六.nss_MAIN
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

scene zbaa2400双六.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "zbaa2400双六.nss"
//title "決意"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2345);}

//◆場所：バックギャモン_店内
	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);

{	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",0,true);}

	SoundPlay("@xsong01",0,100,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zbaa24/000500010ksr">
（やれやれ……）

{	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zbaa24/000500020ksr">
（結局オレは、生きる希望を見いだしちまったってわけか）

{	St("C",700, @0,@0,"bu双六a_通常_smile");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zbaa24/000500030ksr">
（いずれ後悔するのはわかりきってるのに……
　人間ってのは、因果なもんだぜ）

{	DeleteSt("C", 200,true);
	CreateSE("SE01","se動作_足踏み");
	MusicStart("SE01",0,700,0,0,null,false);
	SetVolumeEX("@xsong01", 2000, 250, null);
	Wait(1500);
	St("C",700, @0,@0,"bu双六a_横向き_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zbaa24/000500040ksr">
「ん……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"bu双六a_横向き_sad");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zbaa24/000500050ksr">
「客か？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
