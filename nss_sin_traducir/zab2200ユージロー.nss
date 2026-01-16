
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zab2200ユージロー.nss_MAIN
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

scene zab2200ユージロー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="30">
////////////header////////////
//file name "zab2200ユージロー.nss"
//title "ユージロー迷子"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2200);}

//◆場所：秋葉原_中央通り
	OnBG(10,"bg0103100秋葉原_中央通り_通常");
	FadeBG(0,true);

	CreateSE("SEL01","se動物_イヌ_走る_l");
	MusicStart("SEL01",0,400,0,1000,null,true);

	CreateSE("SE01","seガヤ_街中_l");
	MusicStart("SE01",500,700,0,1000,null,true);
	CreateSE("SE02","seガヤ_交通_l");
	MusicStart("SE02",500,700,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

{	St("C",700, @100,@0,"buユージローa_通常_hard");
	Move("@StNameC/C*", 200, @-100, @0, Dxl3, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zab22/000400010ujr">
「走れ走れ！　走るんだッ！！」

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zab22/000400020ujr">
「これがオレの、恩返し！」

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zab22/000400030ujr">
「もう二度と、恵那にあんな悲しい顔をさせてたまるか！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameC/C*", 200, @-100, @0, Dxl3, false);
	DeleteAllSt(200,false);
	SetVolumeEX("SE*", 2000, 0, null)

	TextBoxDelete(150);

	EndScene();
}
