
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zbb2230双六.nss_MAIN
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

scene zbb2230双六.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="30">
////////////header////////////
//file name "zbb2230双六.nss"
//title "唖然"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2239);}

//◆場所：秋葉原_中央通り
	OnBG(10,"bg0103100秋葉原_中央通り_通常");
	FadeBG(0,true);

{	St("C",700, @0,@0,"bu双六a_通常_shock");
	FadeSt("C",0,true);}

	CreateSE("SE01","seガヤ_ざわざわ02_l");
	MusicStart("SE01",3000,300,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zbb22/300200010ksr">
「…………おいおい」

{	St("C",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("C",200,false);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zbb22/300200020ksr">
「そんなんで、この危機が収まるのかよ……」

{	St("C",700, @0,@0,"bu双六a_横向き_sad");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zbb22/300200030ksr">
「参ったな、こりゃあ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
