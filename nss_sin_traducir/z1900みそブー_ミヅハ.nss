
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1900みそブー_ミヅハ.nss_MAIN
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

scene z1900みそブー_ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="90">
////////////header////////////
//file name "z1900みそブー_ミヅハ.nss"
//title "地震"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1900);}

//◆場所：銭形公園_全景
	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);

	CreateSE("SEL01","seガヤ_交通少_l");
	MusicStart("SEL01",500,400,0,1000,null,true);

	SetVolume("@xbgm*", 500, 0, null);
	CreateSE("SE10","se環境_地鳴り02_l");
	MusicStart("SE10",50,700,0,1000,null,true);

	CreateTextureSP("絵ゆれ", 100, Center, Middle, "cg/bg/bg1701100銭形公園_全景_通常.jpg");
	CreateProcess("絵ゆれp", 150, 0, 0, "yure1850");
	Request("絵ゆれp",Start);

	FadeDelete("上背景", 500, null, true);

	WaitKey(1500);
	Delete("絵ゆれ");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("ML",700, @0,@0,"buみそa_通常_pinch");
	Shake("@StNameML/ML*", 200, 0, 20, 0, 0, 500, Dxl3, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z19/000200010mso">
「ぬおっ！　な、なんだ！？」

{	St("MR",700, @0,@0,"buブーa_通常_pinch");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 200, 0, 20, 0, 0, 500, Dxl3, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z19/000200020buu">
「地震！？　デカい――」

{	St("C",700, @0,@0,"buミヅハ_通常_sad");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 200, 0, 15, 0, 0, 500, Dxl3, false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z19/000200030mzh">
「う――ううう――」

{	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	Shake("@StNameC/C*", 200, 0, 30, 0, 0, 500, Dxl3, false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z19/000200040mzh">
「うわああああああああああああん！！」

{	St("ML",700, @0,@0,"buみそa_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z19/000200050mso">
「あー、コラコラ。
　泣くな泣くな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("MR",700, @0,@0,"buブーa_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z19/000200060buu">
「大丈夫だから、な？　すぐ収まる――」

{	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 500, 0, 30, 0, 0, 500, Dxl3, false);
	FadeSt("C",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z19/000200070mzh">
「震災じゃ――！　震災がきたあああああ！！」

{	St("ML",700, @0,@0,"buみそa_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z19/000200080mso">
「あ？」

{	St("MR",700, @0,@0,"buブーa_通常_sad");
	St("MR",700, @0,@0,"buブーa_オラオラ_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("MR", 200, 2500);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z19/000200090buu">
「漏らしてる――だと！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
