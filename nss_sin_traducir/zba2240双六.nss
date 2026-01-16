
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zba2240双六.nss_MAIN
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

scene zba2240双六.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="40">
////////////header////////////
//file name "zba2240双六.nss"
//title "沙紅羅のために"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2240);}

//◆場所：地下_通路_スパコン館
	OnBG(10,"bg0701500地下_通路_スパコン館");
	FadeBG(0,true);

{	St("C",700, @0,@0,"bu双六a_横向き_normal");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

	CreateSE("SE01","se環境_水滴02");
	SoundEffect("SE01","SEWERPIPE");
	MusicStart("SE01",3000,700,0,1000,null,true);

//	MusicStart("@xbgm21",0,450,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zba22/400400010ksr">
（ああっ、クソ！
　なんでオレは、ほとんど知らない女のために――）

{	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zba22/400400020ksr">
（でも、なんていうか……こんな感覚は、久々だ）

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zba22/400400030ksr">
（もし、この祈りが通じたら……）

{	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,false);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zba22/400400040ksr">
（未来も、信じちまうかもしれねぇな）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	SetVolumeEX("@xbgm*", 1000, 0, null);

	TextBoxDelete(150);

	EndScene();
}
