
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene d2402沙紅羅_似鳥_ノーコ.nss_MAIN
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
	$GameName = "d2403似鳥_ノーコ.nss";//★エンディング中（d）
}

scene d2402沙紅羅_似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="140">
////////////header////////////
//file name "d2402沙紅羅_似鳥_ノーコ.nss"
//title ""
//previous "d2401似鳥_ノーコ.nss"
//previous "e2355沙紅羅.nss"

////////////footer////////////
//next "d2403似鳥_ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

	Request("@SEzawa", UnLock);
	SetVolumeEX("@SEzawa", 3000, 0, null);

//	FadeDelete("上背景", 0, null, true);

//◆場所：半田明神_境内_雪ライブ

//	CreateTextureSP("背景", 10, Center, @-350, "cg/bg/l/bg0603311半田明神_境内_雪ライブ_l.jpg");
//	Zoom("背景", 0, 1500, 1500, null, true);
//	Request("@背景", Smooting);
//	SetShade("背景", SEMIHEAVY);

	CreateTextureSP("BG", 10, Center, -380, "cg/bg/l/bg0603311半田明神_境内_雪ライブ_l.jpg");
	DrawDelete("上背景", 300, 100, null, "slide_01_00_1", true);

/*
//窓1準備
	CreateWindow("絵窓", 1500, 0, 0, 300, 600, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 0, 1000, null, true);
	CreateColorSP("絵窓/絵色", 1500, YELLOW);

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1600, @-150, middle, "cg/bu/buミヅハ_通常_smile.png");
	CreateTextureEX("絵窓/絵演立絵02", 1600, @-150, middle, "cg/bu/buノーコb_通常_rage.png");
	CreateTextureEX("絵窓/絵演立絵03", 1600, @-50, middle, "cg/bu/bu歌門_通常_pride.png");


//窓2準備

	CreateWindow("絵窓02", 1500, 724, 0, 300, 600, false);
	SetAlias("絵窓02","絵窓02");
	Zoom("絵窓02", 0, 0, 1000, null, true);
	CreateColorSP("絵窓02/絵色", 1500, YELLOW);

//キャラ準備
	CreateTextureEX("絵窓02/絵演立絵", 1600, @450, middle, "cg/bu/bu似鳥_通常_happy.png");
	CreateTextureEX("絵窓02/絵演立絵02", 1600, @650, middle, "cg/bu/bu貫太_横向き_normal.png");
*/

//あきゅん「修正指示：カウントダウン、勢いつけて。場面の切り替えで行う」
//inc久保田　修整しました


{	St("C",700, @0,@0,"buロクローa_通常_pride");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/d24/020100010rkr">
「それじゃあみんな、カウントダウン――」

{	DeleteSt("C",200,true);
	St("C",700, @0,@200,"bu鈴_通常_happy");
	Move("@StNameC/C*", 200, @0, @-200, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d24/020100020fjr">
「いってみよー！！」

{	SoundPlay("@xbgm17",0,600,true);
	CreateSE("歓声", "seガヤ_大歓声_l");
	MusicStart("歓声", 1400, 400, 0, 1000, Axl3,true);

	CountDownSE("10", 800, 0);
	St("C",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d24/020100030fjr">
「１０！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	CreatePlainSP("揺用", 2005);
	DeleteAllSt(0,true);
	St("ML",700, @-60,@0,"buミヅハ_通常_smile");
	FadeSt("ML",0,true);
	St("MR",700, @60,@0,"bu歌門_通常_smile");
	FadeSt("MR",0,true);
//	OnBG(10,"bg0607100半田明神_拝殿_通常");
//	FadeBG(0,true);
	CreateTextureSP("絵歳末背景", 10, 0, -576, "cg/bg/l/bg0603311半田明神_境内_雪ライブ_l.jpg");

	Fade("揺用", 100, 0, null, true);
	Delete("揺用");}

	CountDownSE("09", 800, 0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011a]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/d24/020100040mzh">
「９！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
{
	CreateMaskAXLSP("絵マ", 3800, 0, 0, "ciスラッシュ_06_01", true, "ciスラッシュ_06_01z");
	CreateColorSP("絵マ/色", 100, "#999900");//952
	CreateTextureSP("絵マ/絵背景", 3700, 0, 0, "cg/bg/l/bg0603311半田明神_境内_雪ライブ_l.jpg");
	CreateTextureSP("絵マ/絵立11", 3750, 134, -4, "cg/bu/bu鈴_通常_smile.png");
	Move("絵マ/絵立11", 0, @-100, @0, Dxl1, false);
	Move("絵マ/絵立11", 300, @400, @0, Dxl1, false);
}

	CountDownSE("08", 800, 0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011b]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d24/020100050fjr">
「８！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
{

	Move("絵マ/絵立11", 100, @100, @0, Dxl1, false);
	Zoom("絵マ*", 100, 0, 1000, null, true);
	Delete("絵マ*");

	CreatePlainSP("揺用", 2005);
	DeleteAllSt(0,true);
	St("L",700, @0,@0,"buノーコb_幽霊_normal");
	FadeSt("L",0,true);
	St("R",700, @0,@0,"bu似鳥_背張る_happy");
	FadeSt("R",0,true);
	OnBG(10,"bg0605300半田明神_屋根_雪");
	FadeBG(0,true);
	Fade("揺用", 100, 0, null, true);
	Delete("揺用");
}

	CountDownSE("07", 800, 0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021a]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d24/020100060nki">
「７！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
{
	CreateMaskAXLSP("絵マ", 3800, 0, 0, "ciスラッシュ_07_01", true, "ciスラッシュ_07_01z");
	Zoom("絵マ*", 0, 0, 1000, null, true);
	CreateColorSP("絵マ/色", 100, "#999900");//952
	CreateTextureSP("絵マ/絵背景", 3700, 0, 0, "cg/bg/l/bg0603311半田明神_境内_雪ライブ_l.jpg");
	CreateTextureSP("絵マ/絵立11", 3750, 134, -4, "cg/bu/bu鈴_シリアス_smile.png");
	Move("絵マ/絵立11", 0, @-100, @0, Dxl1, false);
	Move("絵マ/絵立11", 500, 345, 192, Dxl1, false);
	Zoom("絵マ*", 300, 1000, 1000, null, false);
	CreateTextureEX("絵マ/絵立12", 3750,  217, 158, "cg/bu/bu鈴_通常_happy.png");
}

	CountDownSE("06", 800, 0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021b]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d24/020100070fjr">
「６！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{
	St("L",700, @0,@0,"buノーコb_通常_rage");
	FadeSt("L",200,true);}

	CountDownSE("05", 800, 0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021c]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d24/020100080nko">
「５」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
{
//	Move("絵マ/絵立11", 0, @-100, @0, Dxl1, false);
//	Move("絵マ/絵立11", 500, 217, 158, Dxl1, false);
	Fade("絵マ/絵立11", 200, 0, null, false);
	Fade("絵マ/絵立12", 200, 1000, null, true);
//	Fade("絵マ/絵立12", 100, 0, null, true);
}
	CountDownSE("04", 800, 0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021d]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d24/020100090fjr">
「４！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	Move("絵マ/絵立11", 100, @100, @0, Dxl1, false);
	Zoom("絵マ*", 100, 0, 1000, null, true);
	Delete("絵マ*");

	CreatePlainSP("揺用", 2005);
	DeleteAllSt(0,true);
	Delete("絵背景100");
	St("MR",700, @0,@0,"bu貫太_横向き_normal");
	FadeSt("MR",0,true);
	OnBG(10,"bg0107300秋葉原_遠景_雪");
	FadeBG(0,true);
	Fade("揺用", 100, 0, null, true);
	Delete("揺用");}

	CountDownSE("03", 400, 0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021e]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/d24/020100100okt">
「３」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	CreateMaskAXLSP("絵マ", 3800, 0, 0, "ciスラッシュ_06_00", true, "ciスラッシュ_06_00z");
	Zoom("絵マ*", 0, 0, 1000, null, true);
	CreateColorSP("絵マ/色", 100, "#999900");//952
	CreateTextureSP("絵マ/絵背景", 3700, 0, 0, "cg/bg/l/bg0603311半田明神_境内_雪ライブ_l.jpg");
	CreateTextureSP("絵マ/絵立11", 3750, 134, -4, "cg/bu/bu鈴_通常_happy.png");
	Move("絵マ/絵立11", 0, @-100, @0, Dxl1, false);
	Move("絵マ/絵立11", 300, @100, @0, Dxl1, false);
	Zoom("絵マ*", 300, 1000, 1000, null, false);}

	CountDownSE("02", 800, 0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d24/020100110fjr">
「２！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{
	Move("絵マ/絵立11", 100, @100, @0, Dxl1, false);
	Zoom("絵マ*", 100, 0, 1000, null, true);
	Delete("絵マ*");

	CreatePlainSP("揺用", 2005);
	DeleteAllSt(0,true);
	St("L",700, @0,@0,"buミヅハ_フラット_happy");
	FadeSt("L",0,true);
	St("R",700, @0,@0,"bu歌門_通常_smile");
	FadeSt("R",0,true);
//	OnBG(10,"bg0607100半田明神_拝殿_通常");
//	FadeBG(0,true);
	CreateTextureSP("絵歳末背景", 10, 0, -576, "cg/bg/l/bg0603311半田明神_境内_雪ライブ_l.jpg");
	Fade("揺用", 100, 0, null, true);
	Delete("揺用");}

	CountDownSE("01", 800, 0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031a]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/d24/020100120kms">
「――１」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);

	DeleteAllSt(0,true);
{	St("C",700, @0,@0,"bu似鳥_背張る_shout");
	FadeSt("C",0,true);}

	OnBG(10,"bg0605300半田明神_屋根_雪");
	FadeBG(0,true);

	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031b]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d24/020100130nki">
「いっけ――――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2400);}

/*
{	CreateSE("花火音", "se環境_花火打ち上げ");
	MusicStart("花火音", 300, 700, 0, 1000, null,false);

	Wait(1500);
	CreateTextureEXadd("花火", 2500, @0, @0, "cg/data/circle_10_00_1.png");
	CreateColorEXadd("花火色100", 2500, "red");
	CreateColorEXadd("花火色210", 2500, "blue");
	CreateColorEXadd("花火色200", 2500, "green");

	Fade("花火", 100, 1000, Axl1, false);
	Fade("花火色100", 50, 500, Axl1, true);
	Fade("花火色210", 50, 200, Axl1, true);
	Fade("花火色200", 50, 200, Axl1, true);
	Delete("花火色2*");
	Fade("花火", 1000, 0, Axl1, false);
	FadeDelete("花火色100", 1500, null, false);
	CreateSE("花火音02", "se環境_花火02");
	MusicStart("花火音02", 0, 700, 0, 1000, null,false);
	MusicStart("歓声", 800, 700, 0, 1000, null,true);
}
*/

	CreatePlainSP("上背景", 20000);

	CreateTextureSP("絵背景50", 50, Center, middle, "cg/bg/bg2401100空_上空_通常.jpg");
	CreateTextureEX("絵背景100", 100, Center, -1064, "cg/img/img花火.jpg");
	Request("絵背景100", Smoothing);
	Fade("絵背景100", 0, 1000, null, true);
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetBlur("絵背景100", true, 2, 500, 80, false);
	CreateTextureEXadd("絵背景100b", 100, Center, 0, "cg/img/img花火.jpg");
	Request("絵背景100b", Smoothing);
	Zoom("絵背景100b", 0, 1200, 1200, null, true);
	SetBlur("絵背景100b", true, 1, 500, 80, false);

//ライト準備===========================================================
	CreateColorSPadd("絵色ライト1", 1109, "#993355");
	CreateColorSPadd("絵色ライト2", 1109, "#449900");
	CreateColorSPadd("絵色ライト3", 1109, "#005599");
	DrawTransition("絵色ライト1", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("絵色ライト2", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("絵色ライト3", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);


	Fade("絵色ライト1", 0, 0, null, true);
	Fade("絵色ライト2", 0, 0, null, true);
	Fade("絵色ライト3", 0, 0, null, true);

	$ライトナット名１ = @絵色ライト1;
	$ライトナット名２ = @絵色ライト2;
	$ライトナット名３ = @絵色ライト3;
	$ライトタイム = 300;

	CreateProcess("プロセスライト１", 150, 0, 0, "ColorLightLoopLive");
	SetAlias("プロセスライト１","プロセスライト１");

//ライト準備===========================================================


//生成まとめ１=================================================================
//	CreateTextureEX("絵背景BG01", 90, -30, -550, "cg/bg/l/bg0603311半田明神_境内_雪ライブ_l.jpg");
//	CreateTextureEX("絵背景BG02", 90, -512, -550, "cg/bg/l/bg0603311半田明神_境内_雪ライブ_l.jpg");

	CreateColorSPadd("絵色100", 1500, "WHITE");

	CreateTextureEXadd("絵背景EF01", 100, -50, 100, "cg/ef/花火01.jpg");
	CreateTextureEXadd("絵背景EF02", 100, 126, 150, "cg/ef/花火02.jpg");
	CreateTextureEXadd("絵背景EF03", 100, 242, 230, "cg/ef/花火03.jpg");
	CreateTextureEXadd("絵背景EF04", 100, 408, 400, "cg/ef/花火01.jpg");
	CreateTextureEXadd("絵背景EF05", 100, 554, 230, "cg/ef/花火02.jpg");
	CreateTextureEXadd("絵背景EF06", 100, 700, 150, "cg/ef/花火03.jpg");
	CreateTextureEXadd("絵背景EF07", 100, 846, 100, "cg/ef/花火01.jpg");
/*
	CreateTextureEXadd("絵背景EG01", 100, -160, -100, "cg/ef/花火04.jpg");
	CreateTextureEXadd("絵背景EG02", 100, -46, 50, "cg/ef/花火04.jpg");
	CreateTextureEXadd("絵背景EG03", 100, 92, -200, "cg/ef/花火04.jpg");
	CreateTextureEXadd("絵背景EG04", 100, 238, 100, "cg/ef/花火04.jpg");
	CreateTextureEXadd("絵背景EG05", 100, 384, -30, "cg/ef/花火04.jpg");
	CreateTextureEXadd("絵背景EG06", 100, 530, -150, "cg/ef/花火04.jpg");
	CreateTextureEXadd("絵背景EG07", 100, 676, 100, "cg/ef/花火04.jpg");
*/
	CreateSE("SE01","se環境_花火連打01");
	CreateSE("SE02","se環境_花火02");
	CreateSE("SE02b","se環境_花火01");
//	CreateColorEXadd("絵色200", 1500, "WHITE");

//生成まとめ１=================================================================

	SetVolumeEX("SE*", 300, 0, null);
	SetVolumeEX("@xbgm*", 300, 0, null);

	Wait(16);
	MusicStart("SE01",0,1200,0,700,null,false);

//あきゅん「説明：終了後の背景生成」
	CreateTextureSP("BG", 10, Center, -380, "cg/bg/l/bg0603311半田明神_境内_雪ライブ_l.jpg");

	DeleteAllSt(0,true);
	FadeDelete("上背景", 200, null, true);


//	Fade("絵背景EF*", 0, 1000, null, true);
//	Shake("絵背景EF*", 1500, 5, 3, 0, 0, 1000, null, false);
//	Zoom("絵背景EF*", 1000, 1500, 2300, Dxl2, false);
//	Rotate("絵背景EF*", 1500, @0, @15000, @0, null,false);

//	FadeDelete("絵背景EF*", 1200, Axl1,400);

	FadeDelete("絵色100", 300, null,false);

//	Zoom("絵背景EG*", 1500, 1300, 1300, Dxl1, false);
	Rotate("絵背景EF*", 1500, @0, @6000, @0, null,false);
	Zoom("絵背景EF01", 1000, 1500, 3300, Dxl2, false);
	Fade("絵背景EF01", 0, 1000, null, true);
	Wait(100);
	Fade("絵背景EF01", 500, 0, Axl2, false);
	Zoom("絵背景EF05", 1000, 1500, 3300, Dxl2, false);
	Fade("絵背景EF05", 0, 1000, null, true);
	Wait(80);
	Fade("絵背景EF05", 500, 0, Axl2, false);
	Zoom("絵背景EF02", 1000, 1500, 3300, Dxl2, false);
	Fade("絵背景EF02", 0, 1000, null, true);
	Wait(100);
	Fade("絵背景EF02", 500, 0, Axl2, false);
	Zoom("絵背景EF07", 1000, 1500, 3300, Dxl2, false);
	Fade("絵背景EF07", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EF07", 500, 0, Axl2, false);
	Zoom("絵背景EF03", 1000, 1500, 3300, Dxl2, false);
	Fade("絵背景EF03", 0, 1000, null, true);
	Wait(150);
	Fade("絵背景EF03", 500, 0, Axl2, false);
	Zoom("絵背景EF06", 1000, 1500, 3300, Dxl2, false);
	Fade("絵背景EF06", 0, 1000, null, true);
	Wait(100);
	Fade("絵背景EF06", 500, 0, Axl2, false);
	Zoom("絵背景EF04", 1000, 1500, 3300, Dxl2, false);
	Fade("絵背景EF04", 0, 1000, null, true);
	Wait(80);
	Fade("絵背景EF04", 500, 0, Axl2, false);


	SetVolumeEX("SE01", 1500, 0, null);
	Move("絵背景100", 1500, @0, @50, null, true);

	MusicStart("SE02",0,1200,0,700,null,false);
	MusicStart("SE02b",0,1200,0,700,null,false);

	Move("絵背景50", 3000, @0, 0, Dxl1, false);
	Zoom("絵背景100", 2500, 1500, 1500, Dxl1, false);
	Move("絵背景100", 200, @0, 0, Dxl2, true);
	Move("絵背景100", 2300, @0, 60, null, 500);

	Request("プロセスライト１", Start);
	Fade("絵背景100b", 100, 1000, null, false);
	Move("絵背景100b", 2500, @0, @100, Dxl1, false);
	Zoom("絵背景100b", 3500, 1500, 1500, Dxl1, 1300);

//	Wait(500);

	Fade("絵背景100", 1000, 0, null, 500);
	Fade("絵背景100b", 1500, 0, null, 500);

	SetVolumeEX("SE02", 5000, 0, null);

	Wait(1000);


//◆ＥＶ："ev/ev謹賀新年.txt"

	Request("プロセスライト１", Stop);
	Fade("絵色ライト*", 2000, 0, Axl1, false);


	Move("絵背景50", 500, @0, -400, Axl1, 300);
	FadeDelete("絵背景50", 200, null, true);

{	St("C",700, @0,@0,"bu鈴_通常_happy");
	FadeSt("C",200,true);}

	CountDownSE("おめでとうございます", 800, 0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031c]
//◆音声指示：同時
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d24/020100140fjr">
「あけましておめでとうございま――――すッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//あきゅん「修正指示：鈴のセリフは演出に被せる、順序処理はテンポ悪いので調整」
//◆演出指示：会場にソトカンダーが描かれた「謹賀新年」という垂れ幕が落ちる。花火も開く。
//あきゅん「修正指示：ソトカンダー出し方一工夫、もったい付けて」
//inc久保田　修整しました。

/*
//	CreateTextureSP("背景02", 2450, @0, @0, "cg/bg/bg0603811半田明神_境内_雪ノーマル新年新カンダー.jpg");
	MusicStart("歓声", 800, 700, 0, 1000, null,true);
	CreateColorEXadd("白", 2500, "#FFFFFF");
	Fade("白", 200, 600, Axl1, true);
	CreateTextureSP("背景03", 2450, Center, @-350, "cg/bg/l/bg0603811半田明神_境内_雪ノーマル新年新カンダー_l.jpg");
	DrawTransition("背景03", 1000, 0, 1000, 100, Axl2, "cg/data/slide_02_00_0.png", false);
	MusicStart("歓声", 800, 700, 0, 1000, null,true);
	Fade("白", 100, 300, Axl1, true);
	Fade("白", 200, 600, Axl1, true);
	Fade("白", 1000, 0, Axl1, true);
//	Move("背景03", 5000, @0, @150, null, false);
//	Fade("背景03", 1000, 1000, null, false);



	WaitKey(4000);
	MusicStart("歓声", 1500, 0, 0, 1000, null,true);
	CreateColorEX("黒色", 15000, BLACK);
	Fade("黒色", 1500, 1000, null, true);
*/


	Move("@StNameC/C*", 200, @0, @100, Axl1, false);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	DeleteAllSt(0,true);

	CreateSE("SE91","se動作_衣擦れ");
	MusicStart("SE91",0,1200,0,1000,null,false);

	CreateSE("SE30","seガヤ_大歓声_l");

	CloudZoomSmokeSet01("スモークプロセスA",200,"cg/ef/efスモーク.png");
	CloudZoomSmokeSet02("スモークプロセスB",200,"cg/ef/efスモーク.png");


//生成まとめ１=================================================================
//	CreateTextureEX("絵背景BG01", 90, -30, -550, "cg/bg/l/bg0603311半田明神_境内_雪ライブ_l.jpg");
//	CreateTextureEX("絵背景BG02", 90, -512, -550, "cg/bg/l/bg0603311半田明神_境内_雪ライブ_l.jpg");

	CreateColorEXadd("絵色100", 1500, "WHITE");

	CreateTextureEXadd("絵背景EF01", 100, -50, 100, "cg/ef/花火01.jpg");
	CreateTextureEXadd("絵背景EF02", 100, 106, 150, "cg/ef/花火02.jpg");
	CreateTextureEXadd("絵背景EF03", 100, 252, 230, "cg/ef/花火03.jpg");
	CreateTextureEXadd("絵背景EF04", 100, 408, 400, "cg/ef/花火01.jpg");
	CreateTextureEXadd("絵背景EF05", 100, 554, 230, "cg/ef/花火02.jpg");
	CreateTextureEXadd("絵背景EF06", 100, 700, 150, "cg/ef/花火03.jpg");
	CreateTextureEXadd("絵背景EF07", 100, 846, 100, "cg/ef/花火01.jpg");

	CreateTextureEXadd("絵背景EG01", 100, -160, -100, "cg/ef/花火04.jpg");
	CreateTextureEXadd("絵背景EG02", 100, -46, 50, "cg/ef/花火04.jpg");
	CreateTextureEXadd("絵背景EG03", 100, 92, -200, "cg/ef/花火04.jpg");
	CreateTextureEXadd("絵背景EG04", 100, 238, 100, "cg/ef/花火04.jpg");
	CreateTextureEXadd("絵背景EG05", 100, 384, -30, "cg/ef/花火04.jpg");
	CreateTextureEXadd("絵背景EG06", 100, 530, -150, "cg/ef/花火04.jpg");
	CreateTextureEXadd("絵背景EG07", 100, 676, 100, "cg/ef/花火04.jpg");

	CreateSE("SE01","se環境_花火連打01");
	CreateSE("SE02","se動作_布落とす");
	CreateColorEXadd("絵色200", 1500, "WHITE");

//生成まとめ１=================================================================

//生成まとめ２=================================================================

	CreateTextureEXadd("絵背景EH01", 100, 0, 0, "cg/ef/efスモーク.png");
	CreateTextureEXadd("絵背景EH02", 100, 0, 0, "cg/ef/efスモーク.png");
	CreateTextureEXadd("絵背景EH03", 100, 0, 0, "cg/ef/efスモーク.png");
	CreateTextureEXadd("絵背景EH04", 100, 0, 0, "cg/ef/efスモーク.png");
	CreateTextureEXadd("絵背景EH05", 100, 0, 0, "cg/ef/efスモーク.png");
	CreateTextureEXadd("絵背景EH06", 100, 0, 0, "cg/ef/efスモーク.png");
	CreateTextureEXadd("絵背景EH07", 100, 0, 0, "cg/ef/efスモーク.png");


//生成まとめ２=================================================================

	OnBG(10,"bg0605300半田明神_屋根_雪");
	FadeBG(0,true);
	CreateTextureSP("絵背景100b", 80, Center, 0, "cg/bg/l/bg0603811半田明神_境内_雪ノーマル新年新カンダー_l.jpg");
	CreateTextureEX("絵背景100", 80, Center, 0, "cg/bg/l/bg0603811半田明神_境内_雪ノーマル新年新カンダー_l.jpg");
	Request("絵背景100*", Smoothing);
	Zoom("絵背景100*", 0, 2000, 2000, null, true);
	#bg0603800半田明神_境内_雪ノーマル新年新カンダー = true;
	#bg0603811半田明神_境内_雪ノーマル新年新カンダー = true;
	#imgソトカンダー真イラスト = true;
	#imgソトカンダー真イラスト_big = true;

	OnBG(10,"bg0603800半田明神_境内_雪ノーマル新年新カンダー");
	FadeBG(0,true);

//	DrawDelete("絵黒幕", 200, 100, null, "slide_02_01_1", false);

	MusicStart("SE02",0,2000,0,500,null,false);
	Wait(300);
	Fade("絵背景BG02", 0, 1000, null, true);

	Move("絵背景100*", 2000, @0, -350, Dxl1, false);
	FadeDelete("絵黒幕", 500, null, false);
	Move("絵背景BG02", 500, @0, 0, Dxl2, false);


	Wait(2000);

	CloudZoomSmokeStart01(800,25,800,2500,900,100,576,200,100,Dxl1);
	CloudZoomSmokeStart02(800,25,800,2500,900,800,576,700,100,Dxl1);

	MusicStart("SE01",0,1200,0,1000,null,false);
	Fade("絵背景EF*", 0, 1000, null, true);
	Shake("絵背景EF*", 1500, 5, 3, 0, 0, 1000, null, false);
	Zoom("絵背景EF*", 1000, 1500, 2300, Dxl2, false);
	Rotate("絵背景EF*", 1500, @0, @15000, @0, null,false);

	FadeDelete("絵背景EF*", 1200, Axl1,400);

	Zoom("絵背景EG*", 1500, 1300, 1300, Dxl1, false);
	Rotate("絵背景EG*", 1500, @0, @0, @15000, null,false);
	Fade("絵背景EG01", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG01", 300, 0, null, false);
	Fade("絵背景EG02", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG02", 300, 0, null, false);
	Fade("絵背景EG03", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG03", 300, 0, null, false);
	Fade("絵背景EG04", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG04", 300, 0, null, false);
	Fade("絵背景EG05", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG05", 300, 0, null, false);
	Fade("絵背景EG06", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG06", 300, 0, null, false);
	Fade("絵背景EG07", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG07", 300, 0, null, false);

	Wait(1000);

	CloudZoomSmokeDelete02(300);
	CloudZoomSmokeDelete01(300);

	Wait(300);
	MusicStart("SE30",300,700,0,1000,null,true);
	Fade("絵背景100", 300, 1000, null, false);
	Zoom("絵背景100*", 500, 1000, 1000, Dxl2, true);



//	CloudZoomSmokeDelete02(500);
//	CloudZoomSmokeDelete01(500);

	SetVolumeEX("SE01", 2000, 0, null);

	Request("@SE*", Lock);

	Delete("絵背景E*");
	Delete("絵背景100b");


	EndScene();
}
