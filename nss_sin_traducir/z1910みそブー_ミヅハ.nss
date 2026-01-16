
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1910みそブー_ミヅハ.nss_MAIN
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

scene z1910みそブー_ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="60">
////////////header////////////
//file name "z1910みそブー_ミヅハ.nss"
//title "パンツ・ウォッシャー・ブー"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1910);}

//◆場所：銭形公園_全景
	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);

	CreateSE("SEL01","seガヤ_交通少_l");
	MusicStart("SEL01",500,400,0,1000,null,true);

	St("C",700, @0,@0,"buミヅハ_ダウナー_cry");
	FadeSt("C",0,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z19/100200010mzh">
「う……うう……すまぬ……
　つい……先の震災を思い出してしまい……」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z19/100200020mso">
「先の震災？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_sad");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z19/100200030buu">
「あーあー、なくななくな。大丈夫だって」

{	St("MR",700, @0,@0,"buブーa_通常_smile");
	St("MR",700, @0,@0,"buブーa_オラオラ_shout");
	FadeSt("MR",200,true);
	Shake("@StNameMR/MR*", 500, 0, 10, 0, 0, 500, Dxl3, false);
	//★立ち絵プロセス：開始
	FadeStPro("MR", 200, 7200);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z19/100200040buu">
「お、お、おおおおお漏らしくらい、オオオオオデがちゃあんと洗うのでパンツを下さいッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	AgainSt("MR",700, @0,@0,"buブーa_オラオラ_shout");
	St("ML",700, @0,@0,"buみそa_オラオラ_angry");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @50, @0, Dxl3, false);
	FadeSt("ML",200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【みそ】
<voice name="みそ" class="みそ" src="voice/z19/100200050mso">
「やめろっての！」

//◆ＳＥ：ばきぃっ！
{	Move("@StNameML/ML*", 200, @80, @0, Dxl3, false);
	DeleteAllSt(100,true);
	St("MR",700, @0,@0,"buブーa_オラオラ_shock");
	Shake("@StNameMR/MR*", 200, 30, 15, 0, 0, 500, Dxl3, false);
	CreateSE("SE01","se戦闘_打撃音07");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z19/100200060buu">
「ぬはあっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
