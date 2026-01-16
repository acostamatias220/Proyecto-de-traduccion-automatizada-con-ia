
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zab2130ユージロー.nss_MAIN
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

scene zab2130ユージロー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="40">
////////////header////////////
//file name "zab2130ユージロー.nss"
//title "ユージロー迷子"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2135);}

//◆場所：秋葉原_万世橋
	OnBG(10,"bg0104200秋葉原_万世橋_閉店");
	FadeBG(0,true);

	CreateSE("SE10","seガヤ_交通_l");
	MusicStart("SE10",500,700,0,1000,null,true);

	CreateSE("SE11","se動物_イヌ_走る_l");
	MusicStart("SE11",500,700,0,1000,null,true);

{	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zab21/300200010ujr">
「また、この匂いだ――！」

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zab21/300200020ujr">
「オレは例によって、この匂いを追いかけて秋葉原の街中を走り！　走り！　走り――！」

{	St("C",700, @0,@0,"buユージローa_通常_angry");
	St("C",700, @0,@0,"buユージローa_通常_sad");
	SetVolume("SE11", 1000, 0, null);
	FadeSt("C",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 2500);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zab21/300200030ujr">
「そして、恵那たちとはぐれた……」

{	AgainSt("C",700, @0,@0,"buユージローa_通常_sad");
	St("C",700, @0,@0,"buユージローa_通常_normal");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zab21/300200040ujr">
「……まあ、平次のオヤジさんに会えたからいいけど」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
