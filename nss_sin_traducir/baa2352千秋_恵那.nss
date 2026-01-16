
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene baa2352千秋_恵那.nss_MAIN
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
	$GameName = "baa2353千秋_恵那.nss";//★エンディング中（baa）
}

scene baa2352千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="20">
////////////header////////////
//file name "baa2352千秋_恵那.nss"
//title "新しい未来へ"
//previous "baa2351千秋_恵那.nss"

////////////footer////////////
//next "baa2353千秋_恵那.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2400);}

//◆演出指示：空に花火が上がる

//◆ＳＥ：花火

	CreateTextureEX("絵背景100", 10, Center, @-460, "cg/bg/bg2401100空_上空_通常.jpg");

	Request("@SE*", UnLock);

	FadeDelete("上背景", 200, null, true);
	CreateSE("SE01","se環境_花火打ち上げ");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵背景100", 1000, @0, @460, Dxl2, false);
	Fade("絵背景100", 1000, 1000, null, false);
	Wait(230);
	CreateColorEXadd("絵色白", 710, "#FFFFFF");
	Fade("絵色白", 200, 1000, null, true);

	Wait(50);
	Fade("絵色白", 200, 0, null, true);
	Delete("絵色白");
	Wait(200);

//	OnBG(10,"bg2401100空_上空_通常");
//	FadeDelete("上背景", 0, null, true);
//	FadeBG(1500,true);

	WaitPlay("SE01",null);

	CreateColorEXadd("花火赤", 710, "#FF0000");
	CreateColorEXadd("花火青", 711, "#0000FF");
	CreateColorEXadd("花火紫", 713, "#FF00FF");
	CreateSE("SE01","se環境_花火連打02");

	fireworks_set(500);

	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSPadd("絵演花火", 709, Center, 0, "cg/img/img花火.jpg");

	Zoom("絵演花火", 1500, 1300, 1300, Dxl1, false);

	Fade("花火赤", 300, 500, null, false);
	Fade("花火青", 300, 500, null, false);
	Fade("花火紫", 300, 600, null, false);
	Wait(50);
	Wait(50);
	FadeDelete("花火紫", 300, null, true);
	FadeDelete("花火青", 300, null, true);
	FadeDelete("花火赤", 300, null, true);
	FadeDelete("絵演花火", 300, null, true);
	Wait(500);


//◆場所：半田明神_鳥居

//	OnBG(10,"bg0602112半田明神_鳥居_通常");
//	FadeBG(1500,true);
	CreateTextureEX("絵背景101", 11, Center, 0, "cg/bg/bg0602112半田明神_鳥居_通常.jpg");
	Move("絵背景101", 0, @0, @-900, null, true);

	SetVolumeEX("SE01", 4000, 400, null);

	fireworks_Delete(1000,false);

	Fade("絵背景101", 1500, 1000, null, true);

	CreateSE("SE01_baa2352千秋_恵那","seガヤ_半田明神01_l");
//	Request("SE01_baa2352千秋_恵那", Lock);
	MusicStart("SE01_baa2352千秋_恵那",3000,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("ML",700, @0,@0,"bu恵那_感動_happy");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/520100010fje">
「綺麗……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/baa23/520100020kit">
「花火、まだ残ってたんだな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
//	DeleteAllSt(200,true);

	Request("@SE*", Lock);

	EndScene();
//next "baa2353千秋_恵那.nss"
}
