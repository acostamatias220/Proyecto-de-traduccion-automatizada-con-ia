
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1850ユージロー_双六.nss_MAIN
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

scene z1850ユージロー_双六.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="90">
////////////header////////////
//file name "z1850ユージロー_双六.nss"
//title "奇襲"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：地下_祭壇
	OnBG(10,"bg0702100地下_祭壇_通常");
	Move("@OnBG*", 0, @0, -100, null, true);
	FadeBG(0,true);

{	ClockPass(1859);}

/*
//※下倉注：整合性確保のため台詞コピペ　2010/11/05
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/z18/500300010mpt">
「ふんぐぐぐ――――！」
*/

	CreateColorSP("上背景", 15000, "BLACK");

	CreateTextureSPmul("絵色闇", 200, Center, Middle, "cg/data/circle_13_00_1.png");
	Fade("絵色闇", 0, 850, null, true);

WaitKey(1000);



	SetVolume("@xbgm14_onlyvo", 10000, 400, null);

//◆場所：地下_祭壇
	OnBG(10,"bg0702200地下_祭壇_閉門");
	Move("@OnBG*", 0, @0, -390, null, true);
	FadeBG(0,true);

	CreateSE("SEL01","se環境_風低音_l");
	MusicStart("SEL01",500,400,0,1000,null,true);

	St("MR",700, @0,@0,"buミリＰa_通常_shout");
	FadeSt("MR",0,true);

	FadeDelete("上背景", 500, null, true);

	CreateSE("SE03","se環境_電撃");//se環境_雷01
	MusicStart("SE03",500,700,0,1000,null,false);

	Shake("@StNameMR/MR*", 1800, 4, 2, 4, 0, 500, Axl3, false);

	CreateColorEXadd("絵色", 1500, "#FFFF99");
	CreateProcess("絵p稲光", 150, 0, 0, "ina1850b");
	Request("絵p稲光",Start);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/500100400mpt">
「ぉ……お、おおおおお……」

{	Delete("絵p稲光");
	Delete("絵色");}
{	SetVolume("SE03", 1500, 0, null);}
{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z18/500300020ksr">
「ふふ……双一親分の言うとおりだ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z18/500300030ksr">
「いよいよ、アザナエルがオレたちの手に――」

{	CreateSE("SE02","se動物_イヌ_走る_l");
	MusicStart("SE02",0,700,0,1000,null,false);
	DeleteAllSt(200,true);
	Wait(500);}
{	St("C",700, @80,@0,"buユージローa_通常_angry");
	Move("@StNameC/C*", 200, @-80, @0, Dxl3, false);
	SetVolume("SE02", 1000, 0, null);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z18/500300040ujr">
「そうはさせるか――――っ！！」

{	St("MR",700, @0,@40,"buミリＰa_通常_shock");
	DeleteAllSt(200,false);
	FadeT("@StNameMR/MR*",0,0,200,0,-40,Dxl1,false);
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/z18/500300050mpt">
「い、犬！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("C",700, @0,@0,"buユージローa_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z18/500300060ujr">
「この匂い！
　――おまえ、オレをはねたやつだな！！」

{	Move("@StNameC/C*", 200, @80, @0, Dxl3, false);
	St("MR",700, @0,@0,"buミリＰa_通常_pinch");
	DeleteAllSt(100,false);
	Shake("@StNameMR/MR*", 200, 0, 10, 0, 0, 500, Dxl3, false);
	Move("@StNameMR/MR*", 400, @80, @0, Dxl1, false);
	FadeSt("MR",200,false);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/z18/500300070mpt">
「やだちょっと！　離しなさい！」

{	Shake("@StNameMR/MR*", 800, 0, 10, 0, 0, 500, Dxl3, false);
	St("MR",700, @80,@0,"buミリＰa_通常_pinch");
	St("MR",700, @80,@0,"buミリＰa_通常_shock");
	FadeSt("MR",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("MR", 200, 2500);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/z18/500300080mpt">
「今離さないと――ぎゃああっ！！」

{	AgainSt("MR",700, @80,@0,"buミリＰa_通常_shock");
//	DeleteSt("MR",200,true);
	Move("@StNameMR/MR*", 200, @40, @0, Dxl3, false);
	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu双六a_通常_shout");
	Move("@StNameML/ML*", 200, @-50, @0, Dxl3, false);
	Shake("@StNameML/ML*", 200, 0, 10, 0, 0, 500, Dxl3, false);
	FadeSt("ML",200,false);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z18/500300090ksr">
「ぬわああっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
