
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2200双六.nss_MAIN
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

scene z2200双六.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="20">
////////////header////////////
//file name "z2200双六.nss"
//title "超速移動"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2205);}

//◆場所：秋葉原_中央通り → スパコン館_裏面
	OnBG(10,"bg1101300スパコン館_裏面_電柱折れ");
	FadeBG(0,true);

	CreateSE("SEL01","seガヤ_交通少_l");
	MusicStart("SEL01",500,500,0,1000,null,false);

	CreateSE("SE11","se動作_走る02_l");
	MusicStart("SE11",500,300,0,1000,null,true);

{	St("C",700, @0,@0,"bu双六a_通常_angry");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z22/000400010ksr">
「ああっ、くそっ！　忙しい！」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z22/000400020ksr">
「ってか、なんでオレが走らなきゃなんねぇんだよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 1000, 0, null);

	TextBoxDelete(150);

	EndScene();
}
