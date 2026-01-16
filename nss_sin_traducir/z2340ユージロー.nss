
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2340ユージロー.nss_MAIN
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

scene z2340ユージロー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="30">
////////////header////////////
//file name "z2340ユージロー.nss"
//title "義理の姉"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2341);}

//◆場所：地下_通路
	OnBG(10,"bg0701100地下_通路_通常");
	FadeBG(0,true);

	CreateSE("SE11","se動物_イヌ_走る_l");
	MusicStart("SE11",500,300,0,1000,null,true);

	CreateSE("SE01","se環境_風低音_l");
	MusicStart("SE01",500,700,0,1000,null,true);

{	St("C",700, @0,@0,"buユージローb_通常_hard");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z23/400400010ujr">
「オレとみそブーは、義理の兄弟――」

{	Shake("@StNameC/C*", 500, 0, 15, 0, 0, 500, Dxl3, false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z23/400400020ujr">
「そして沙紅羅は、二人の姐さんだ！」

{	St("C",700, @0,@0,"buユージローb_通常_angry");
	Shake("@StNameC/C*", 500, 0, 30, 0, 0, 500, Dxl3, false);
	FadeSt("C",200,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z23/400400030ujr">
「義姉パンツを逃すわけにはいかないッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("SE*", 1000, 0, null);

	EndScene();
}
