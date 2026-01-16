
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene e2400似鳥_ノーコ.nss_MAIN
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
	$GameName = "e2404沙紅羅.nss";//★エンディング中（e）
}

scene e2400似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="520">
////////////header////////////
//file name "e2400似鳥_ノーコ.nss"
//title "年越し"
//previous "e2355沙紅羅.nss"

////////////footer////////////
//next "e2404沙紅羅.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

	Request("@ライブ音源01", UnLock);
	Request("@ライブ音源02", UnLock);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/l/bg0603311半田明神_境内_雪ライブ_l.jpg");

//	FadeDelete("上背景", 0, null, true);


	CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 1520, Center, Middle, "cg/bg/bg0603311半田明神_境内_雪ライブ.jpg");
	SetShade("絵窓/絵演背景", MIDEUM);
	Zoom("絵窓/絵演背景", 0, 3000, 3000, null, true);

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1910, center, middle, "cg/bu/bu鈴_通常_smile.png");
	Move("絵窓/絵演立絵", 0, @200, @0, null, true);


//マスク準備
	CreateTextureEX("絵マスク枠", 7010, center, middle, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureSP("絵マスク/絵演背景", 6520, Center, -188, "cg/bg/bg0603311半田明神_境内_雪ライブ.jpg");
	SetShade("絵マスク/絵演背景", MIDEUM);
	Zoom("絵マスク/絵演背景", 0, 2000, 2000, null, true);

	CreateTextureEX("絵背景枠01", 2200, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 2200, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");

//マスク準備
	CreateTextureEX("絵マスク左枠", 7010, 300, 0, "cg/mask/ciスラッシュ_05_01z.png");
	CreateMask("絵マスク左", 6000, 0, 0, "cg/mask/ciスラッシュ_05_00.png", false);
	SetAlias("絵マスク左","絵マスク左");
	CreateTextureSP("絵マスク左/絵演背景", 6520, Center, -188, "cg/bg/bg0603311半田明神_境内_雪ライブ.jpg");
	SetShade("絵マスク左/絵演背景", MIDEUM);
	Zoom("絵マスク左/絵演背景", 0, 2000, 2000, null, true);


//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 6530, center, middle, "cg/bu/buそに子_通常_normal.png");
	Request("絵マスク/絵演立絵", Smoothing);

//立ち絵準備
	CreateTextureEX("絵マスク左/絵演立絵", 6530, center, middle, "cg/bu/buフウリ_通常_normal.png");
	Request("絵マスク左/絵演立絵", Smoothing);

//キャラ表情差分準備
	CreateTextureEX("絵窓/絵演立絵2", 1910, center, middle, "cg/bu/bu鈴_シリアス_angry.png");
	CreateTextureEX("絵マスク/絵演立絵2", 6530, center, middle, "cg/bu/buそに子_通常_smile.png");
	CreateTextureEX("絵マスク左/絵演立絵2", 6530, center, middle, "cg/bu/buフウリ_通常_smile.png");

//動作準備
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク枠", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵", 0, 712, 200, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);
	Fade("絵マスク枠", 0, 1000, null, true);

//動作準備
	Move("絵マスク左", 0, -1024, 0, null, true);
	Move("絵マスク左枠", 0, -1024, 0, null, true);
	Move("絵マスク左/絵演立絵", 0, -512, 200, null, true);
	Fade("絵マスク左/絵演背景", 0, 1000, null, true);
	Fade("絵マスク左/絵演色", 0, 1000, null, true);
	Fade("絵マスク左枠", 0, 1000, null, true);



	CreateSE("SE01","seガヤ_大歓声_l");
	MusicStart("SE01",300,1400,0,1000,null,true);

	SetVolumeEX("@ライブ音源*", 3000, 0, null);
	FadeDelete("上背景", 2000, null, true);

{	ClockPass(2359);}

//◆演出指定：ステージに視点が戻る

	WaitPlay("@x*", null);

	SoundPlay("@xbgm17",0,600,true);

	SetVolumeEX("SE*", 3000, 400, null);

//動作
	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 200, @0, 80, Dxl2, false);
	Move("絵背景枠02", 200, @0, 464, Dxl2, false);
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	Move("絵窓/絵演立絵", 200, @-200, @0, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/e24/000100010fjr">
「ニコちゃん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//イン動作
	Move("絵マスク", 200, 200, 0, Dxl3, false);
	Move("絵マスク枠", 200, 200, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵*", 200, 550, middle, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
//【そに子】
<voice name="そに子" class="そに子" src="voice/e24/000100020snk">
「はい！」


//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/e24/000100030fjr">
「フウリちゃん！」

//【太四郎（綿抜フウリ）】

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//イン動作
	Move("絵マスク左", 200, -200, 0, Dxl3, false);
	Move("絵マスク左枠", 200, -200, 0, Dxl3, false);
	Fade("絵マスク左/絵演立絵", 200, 1000, null, false);
	Move("絵マスク左/絵演立絵*", 200, -250, middle, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
<voice name="太四郎（綿抜フウリ）" class="綿抜フウリ" src="voice/e24/000100040wft">
「はいー！」

//【太四郎（綿抜フウリ）】
<voice name="太四郎（綿抜フウリ）" class="綿抜フウリ" src="voice/e24/000100050wft">
「準備、オッケーです！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020a]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/e24/000100060fjr">
「よーし！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fade("絵窓/絵演立絵", 300, 0, Axl1, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020b]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/e24/000100070fjr">
「それじゃ、カウントダウン――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 1000, 700, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//◆音声指示：同時
//【そに子】
<voice name="そに子" class="そに子" src="voice/e24/000100080snk">
「「いってみよ――――ッ」」

/*

//◆音声指示：同時
//【太四郎（綿抜フウリ）】
<voice name="太四郎（綿抜フウリ）" class="綿抜フウリ" src="voice/e24/000100090wft">
「いってみよ――――ッ」

*/

</PRE>
	SetText();
	AddText(1,"「いってみよ――――ッ」","そに子","e24/000100080snk",false,false,1000);
	AddText(2,"「いってみよ――――ッ」","綿抜フウリ","e24/000100090wft",false,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Fade("絵背景枠01", 100, 0, null, false);
	Fade("絵背景枠02", 100, 0, null, false);
	Move("絵背景枠01", 200, @0, 250, Axl2, false);
	Move("絵背景枠02", 200, @0, 250, Axl2, false);
	Zoom("絵窓", 200, 1000, 0, Axl2, false);

//アウト動作
	Move("絵マスク枠", 200, 1024, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵*", 200, 1024, 200, Axl1, false);
	Fade("絵マスク/絵演立絵*", 200, 0, null, false);

//アウト動作
	Move("絵マスク左枠", 200, -1024, 0, Axl3, false);
	Move("絵マスク左", 200, -1024, 0, Axl3, false);
	Move("絵マスク左/絵演立絵*", 200, -512, 200, Axl1, false);
	Fade("絵マスク左/絵演立絵*", 200, 0, null, true);


	Delete("絵マスク*");
	Delete("絵窓*");

	CreateTextureEX("絵演背景", 100, Center, -570, "cg/bg/l/bg0603311半田明神_境内_雪ライブ_l.jpg");
	SetShade("絵演背景", MIDEUM);
	Zoom("絵演背景", 0, 2000, 2000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【太四郎（綿抜フウリ）】
<voice name="太四郎（綿抜フウリ）" class="綿抜フウリ" src="voice/e24/000100100wft">
「せーのっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//※ここ、全員分カウントダウン＋明けましておめでとうございます！の声が欲しい
//◆演出指定：ステージ上

	CreatePlainSP("揺用", 2005);
	DeleteAllSt(0,true);
	Fade("絵演背景", 0, 1000, null, true);
	St("L",700, @0,@200,"buフウリ_通常_smile");
	FadeSt("L",0,true);
	Move("@StNameL/L*", 100, @0, @-200, Dxl1, false);
	Fade("揺用", 100, 0, null, true);
	Delete("揺用");

{	CountDownSE("10", 1000, 0);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031a]
//◆音声指示：同時
//【太四郎（綿抜フウリ）】
<voice name="太四郎（綿抜フウリ）" class="綿抜フウリ" src="voice/e24/000100110wft">
「１０！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",750, @-10,@200,"bu鈴_通常_happy");
	Move("@StNameC/C*", 100, @0, @-200, Dxl1, false);
	FadeSt("C",100,true);

{	CountDownSE("09", 1000, 0);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031b]
//◆音声指示：同時
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/e24/000100120fjr">
「９！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("R",700, @0,@200,"buそに子_通常_happy");
	Move("@StNameR/R*", 100, @0, @-200, Dxl1, false);
	FadeSt("R",100,true);

{	CountDownSE("08", 1000, 0);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031c]
//◆音声指示：同時
//【そに子】
<voice name="そに子" class="そに子" src="voice/e24/000100130snk">
「８！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆演出指示：屋根の上
	CreatePlainSP("揺用", 2005);
	DeleteAllSt(0,true);
	Delete("絵演背景");
	Fade("絵背景", 0, 0, null, true);
	St("L",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("L",0,true);
	St("R",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("R",0,true);
	OnBG(10,"bg0605300半田明神_屋根_雪");
	FadeBG(0,true);
	Fade("揺用", 100, 0, null, true);
	Delete("揺用");

{	CountDownSE("07", 1000, 0);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//◆音声指示：同時
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/e24/000100140nko">
「７――」

{	CountDownSE("06", 1000, 0);}
//◆音声指示：同時
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/e24/000100150nki">
「６！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指示：裏方
	CreatePlainSP("揺用", 2005);
	DeleteAllSt(0,true);
	OnBG(10,"bg0602311半田明神_鳥居_雪");
	FadeBG(0,true);
	#bg0602300半田明神_鳥居_雪 = true;
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/l/bg0607100半田明神_拝殿_通常_l.jpg");
	Move("絵背景100", 0, @0, @-300, null, true);

	St("ML",700, @0,@0,"buミリＰb_通常_smile");
	FadeSt("ML",0,true);

	St("MR",700, @0,@0,"buＡＤ_通常_smile");
	FadeSt("MR",0,true);

	Fade("揺用", 100, 0, null, true);
	Delete("揺用");

{	CountDownSE("05", 1000, 0);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//◆音声指示：同時
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/e24/000100160mrp">
「５！」

{	CountDownSE("04", 1000, 0);}
//◆音声指示：同時
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/e24/000100170adi">
「４！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指示：社務所かな？
	CreatePlainSP("揺用", 2005);
	Fade("絵背景*", 0, 0, null, true);
	DeleteAllSt(0,true);
	St("L",700, @0,@0,"buみそa_通常_happy");
	FadeSt("L",0,true);
	St("R",700, @0,@0,"buブーa_通常_happy");
	FadeSt("R",0,true);
	OnBG(10,"bg0604212半田明神_社務所_雪");
	FadeBG(0,true);
	Fade("揺用", 100, 0, null, true);
	Delete("揺用");

{	CountDownSE("03", 1000, 0);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/e24/000100180mso">
「３！」

{	CountDownSE("02", 1000, 0);}
//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/e24/000100190buu">
「２！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆場所：地下_祭壇
	CreatePlainSP("揺用", 2005);
	DeleteAllSt(0,true);
	OnBG(10,"bg0702100地下_祭壇_通常");
	Move("@OnBG*", 0, @0, -150, null, true);
	FadeBG(0,true);
	Fade("揺用", 100, 0, null, true);

	SetVolumeEX("SE01", 100, 0, null);

	Delete("揺用");

{	CountDownSE("01", 100, 0);}
{	St("C",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//◆音声指示：同時
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/e24/000100200mzh">
「１！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	PrintGO("上背景", 10000);

//◆演出指示：花火がぽん！
	OnBG(10,"bg0603311半田明神_境内_雪ライブ");
	FadeBG(0,true);

	CreateTextureSP("絵背景被", 20, Center, Middle, "cg/bg/l/bg0603311半田明神_境内_雪ライブ_l.jpg");


//◆演出指示：花火がぽん！
//あきゅん「素材：img花火」
	CreateTextureSP("絵背景50", 50, Center, middle, "cg/bg/bg2401100空_上空_通常.jpg");
	CreateTextureEX("絵背景100", 100, Center, -1064, "cg/img/img花火.jpg");
	Request("絵背景100", Smoothing);
	Fade("絵背景100", 0, 1000, null, true);
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetBlur("絵背景100", true, 2, 500, 80, false);
	CreateTextureEXadd("絵背景100b", 100, center, middle, "cg/ef/ef花火_m.png");
	Move("絵背景100b", 0, @0, @-200, null, true);
	Request("絵背景100b", Smoothing);
	Zoom("絵背景100b", 0, 200, 200, null, true);
	SetBlur("絵背景100b", true, 1, 500, 200, false);

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

	CreateTextureEXadd("絵背景EG01", 100, -60, -100, "cg/ef/ef花火_ms_ogm.png");
	CreateTextureEXadd("絵背景EG02", 100, 46, 50, "cg/ef/ef花火_ms_ogm.png");
	CreateTextureEXadd("絵背景EG03", 100, 182, -200, "cg/ef/ef花火_ms_ogm.png");
	CreateTextureEXadd("絵背景EG04", 100, 338, 100, "cg/ef/ef花火_ms_ogm.png");
	CreateTextureEXadd("絵背景EG05", 100, 484, -30, "cg/ef/ef花火_ms_ogm.png");
	CreateTextureEXadd("絵背景EG06", 100, 600, -150, "cg/ef/ef花火_ms_ogm.png");
	CreateTextureEXadd("絵背景EG07", 100, 776, 100, "cg/ef/ef花火_ms_ogm.png");
	Zoom("絵背景EG*", 0, 500, 500, null, true);



	CreateSE("SE01","se環境_花火連打01");
	CreateSE("SE02","se環境_花火02");
	CreateSE("SE02b","se環境_花火01");
//	CreateColorEXadd("絵色200", 1500, "WHITE");

//生成まとめ１=================================================================


{	ClockPass(2400);}

	MusicStart("SE01",0,1200,0,700,null,false);

	DeleteAllSt(0,true);
	FadeDelete("上背景", 200, null, true);


//	Fade("絵背景EF*", 0, 1000, null, true);
//	Shake("絵背景EF*", 1500, 5, 3, 0, 0, 1000, null, false);
//	Zoom("絵背景EF*", 1000, 1500, 2300, Dxl2, false);
//	Rotate("絵背景EF*", 1500, @0, @15000, @0, null,false);

//	FadeDelete("絵背景EF*", 1200, Axl1,400);

	FadeDelete("絵色100", 300, null,false);

	Rotate("絵背景EF*", 1500, @0, @3000, @0, null,false);
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
	Zoom("絵背景100", 2500, 2500, 2500, Dxl1, false);
	Move("絵背景100", 200, @0, 0, AxlDxl, true);


	Zoom("絵背景EG01", 3000, 3000, 3000, Dxl2, false);
//	Rotate("絵背景EG*", 5000, @0, @0, @15000, null,false);
	Fade("絵背景EG01", 0, 1000, null, true);
	Move("絵背景100", 2300, @0, 150, null, false);
	Wait(50);
	Fade("絵背景EG01", 2333, 0, Axl1, false);
	Zoom("絵背景EG02", 3000, 2000, 2000, Dxl2, false);
	Fade("絵背景EG02", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG02", 2333, 0, Axl1, false);
	Zoom("絵背景EG03", 3000, 2000, 2000, Dxl2, false);
	Fade("絵背景EG03", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG03", 2333, 0, Axl1, false);
	Zoom("絵背景EG04", 3000, 3000, 3000, Dxl2, false);
	Fade("絵背景EG04", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG04", 2333, 0, Axl1, false);
	Zoom("絵背景EG05", 3000, 2500, 2500, Dxl2, false);
	Fade("絵背景EG05", 0, 1000, null, true);
	Wait(100);
	Fade("絵背景EG05", 2333, 0, null, false);
	Zoom("絵背景EG06", 3000, 3500, 3500, Dxl2, false);
	Fade("絵背景EG06", 0, 1000, null, true);
	Wait(100);
	Fade("絵背景EG06", 2333, 0, Axl1, false);
	Zoom("絵背景EG07", 3000, 2000, 2000, Dxl2, false);
	Fade("絵背景EG07", 0, 1000, null, true);
	Wait(100);
	Fade("絵背景EG07", 2333, 0, Axl1, false);
	Request("プロセスライト１", Start);
	Fade("絵背景100b", 100, 1000, null, false);
	Move("絵背景100b", 2500, @0, @100, Dxl1, false);
	Zoom("絵背景100b", 3500, 1000, 1000, Dxl1, 300);



//	Wait(500);

	SoundPlay("@xbgm17",0,450,true);


	Fade("絵背景100", 1000, 0, null, 500);
	Fade("絵背景100b", 800, 0, null, 500);

	SetVolumeEX("SE02", 5000, 0, null);

	Wait(1000);




//◆ＥＶ："ev/ev謹賀新年.txt"

	Request("プロセスライト１", Stop);
	Fade("絵色ライト*", 2000, 0, Axl1, false);


	Move("絵背景50", 500, @0, -400, Axl1, 300);
	FadeDelete("絵背景50", 200, null, true);

	CountDownSE("おめでとうございます", 1000, 0);
{	St("C",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080a]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/e24/000100210fjr">
「あけまして――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	DeleteSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080b]
//◆音声指示：同時
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/e24/000100220">
「おめでとうございます――――っ！！」

/*

//◆音声指示：同時
{	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);}
//【太四郎（綿抜フウリ）】
<voice name="太四郎（綿抜フウリ）" class="綿抜フウリ" src="voice/e24/000100230wft">
「おめでとうございます――――っ！！」

//◆音声指示：同時
{	St("C",700, @0,@0,"buそに子_通常_normal");
	FadeSt("C",200,true);}
//【そに子】
<voice name="そに子" class="そに子" src="voice/e24/000100240snk">
「おめでとうございます――――っ！！」

//◆音声指示：同時
{	St("C",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/e24/000100250mrp">
「おめでとうございます――――っ！！」

//◆音声指示：同時
{	St("C",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/e24/000100260adi">
「おめでとうございます――――っ！！」

//◆音声指示：同時
{	St("C",700, @0,@0,"buみそa_通常_normal");
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/e24/000100270mso">
「おめでとうございます――――っ！！」

//◆音声指示：同時
{	St("C",700, @0,@0,"buブーa_通常_normal");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/e24/000100280buu">
「おめでとうございます――――っ！！」

*/

</PRE>
	SetText();
	AddText(1,"「おめでとうございます――――っ！！」","富士見鈴","e24/000100220fjr",false,false,1000);
	AddText(2,"「おめでとうございます――――っ！！」","綿抜フウリ","e24/000100230wft",false,false,1000);
	AddText(3,"「おめでとうございます――――っ！！」","そに子","e24/000100240snk",false,false,1000);
	AddText(4,"「おめでとうございます――――っ！！」","ミリＰ","e24/000100250mrp",false,false,1000);
	AddText(5,"「おめでとうございます――――っ！！」","ＡＤ","e24/000100260adi",false,false,1000);
	AddText(6,"「おめでとうございます――――っ！！」","みそ","e24/000100270mso",false,false,1000);
	AddText(7,"「おめでとうございます――――っ！！」","ブー","e24/000100280buu",false,false,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//あきゅん「修正指示：ソトカンダー魅せるところ無駄に激しく」

//◆場所：半田明神_境内_雪ノーマル新年

//◆演出指示：ソトカンダーの描かれた「謹賀新年」の垂れ幕が落ちてくる


	CreateTextureEX("背景02", 2500, Center, @-350, "cg/bg/l/bg0603311半田明神_境内_雪ライブ_l.jpg");
	Fade("背景02", 1000, 1000, null, true);


//
	CreateSE("SE03","se人体_倒れる01");
	MusicStart("SE03",0,700,0,1200,null,false);

	CreateTextureEX("背景03", 2500, -507, 068, "cg/bg/l/bg0603811半田明神_境内_雪ノーマル新年新カンダー_l.jpg");
	Request("背景03", Smoothing);
	Zoom("背景03", 0, 2000, 2000, null, false);
	Move("背景03", 1000, @0, -494, Axl1, false);
	Fade("背景03", 1000, 800, null, true);
	#bg0603811半田明神_境内_雪ノーマル新年新カンダー = true;
	#imgソトカンダー真イラスト = true;
	#imgソトカンダー真イラスト_big = true;
//
	CreateSE("SE03","se人体_倒れる01");
	MusicStart("SE03",0,700,0,1200,null,false);

	Delete("背景02");
	CreateTextureEX("背景04", 2500, -779, -369, "cg/bg/l/bg0603811半田明神_境内_雪ノーマル新年新カンダー_l.jpg");
	Zoom("背景04", 0, 2000, 2000, null, false);
	Request("背景04", Smoothing);

	Zoom("背景04", 200, 1200, 1200, null, false);
	Move("背景04", 200, -500, -371, Axl1, false);
	Fade("背景04", 200, 1000, null, false);
	Shake("背景04", 800, 8, 8, 0, 0, 1000, AxlAuto, true);

//
	CreateSE("SE03","se人体_倒れる01");
	MusicStart("SE03",0,700,0,1200,null,false);

	CreateTextureEX("背景05", 2500, -237, -369, "cg/bg/l/bg0603811半田明神_境内_雪ノーマル新年新カンダー_l.jpg");
	Zoom("背景05", 0, 2000, 2000, null, false);
	Request("背景05", Smoothing);

	Zoom("背景05", 200, 1200, 1200, null, false);
	Move("背景05", 200, -500, -371, Axl1, false);
	Fade("背景05", 200, 1000, null, false);
	Shake("背景05", 800, 8, 8, 0, 0, 1000, AxlAuto, true);

Wait(200);
//
	CreateSE("SE01","se擬音_ギャグ_リーゼント");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("背景06", 2500, -500, -371, "cg/bg/l/bg0603811半田明神_境内_雪ノーマル新年新カンダー_l.jpg");
	Zoom("背景06", 0, 2000, 2000, null, false);
	Request("背景06", Smoothing);

	Zoom("背景06", 300, 1200, 1200, null, false);
	Move("背景06", 300, -500, -371, Axl1, false);
	Fade("背景06", 300, 1000, null, false);
	Shake("背景06", 800, 12, 12, 0, 0, 1000, AxlAuto, true);


	Delete("背景03");
	Delete("背景04");
	Delete("背景05");


// それが終わると歓声とモッシュ
	CreateTextureEX("背景07", 2500, -500, -371, "cg/bg/l/bg0603811半田明神_境内_雪ノーマル新年新カンダー_l.jpg");
	Zoom("背景07", 0, 2000, 2000, null, false);
	Request("背景07", Smoothing);
	CreatePlainSP("揺用", 2600);

	CreateSE("SE", "seガヤ_大歓声_l");
	MusicStart("SE", 1000, 700, 0, 1000, null,true);
	SetBlur("揺用", true, 1, 500, 100, false);
	MoveFTP1("@揺用",2500,8,4);


//


	Wait(3000);
//◆場所：半田明神_屋根_雪

	OnBG(600,"bg0605300半田明神_屋根_雪");
	FadeBG(1000,true);
	Delete("背景*");
	Delete("揺用");

	SetVolumeEX("SE*", 1000, 400, null);

	MoveFTP1stop();

//あきゅん「修正指示：枠不要、はみ出てますよ、調整お願いします」

	Delete("絵背景*");
	Delete("プロセスライト１");
	Delete("絵色ライト*");

	St("MR",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("MR",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/e24/000100290nko">
「にとり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/e24/000100300nko">
「これで、よかったのかな？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/e24/000100310nko">
「たくさんのひとを、だまして」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/e24/000100320nko">
「そのしあわせに、いみはあるのかな？」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/e24/000100330nki">
「おまえは……昔、ニセモノだった」


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/e24/000100340nki">
「オレは、おまえの存在を認められなかった」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/e24/000100350nki">
「けど、オレは幸せで……」

{	St("ML",700, @0,@0,"bu似鳥_背張る_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/e24/000100360nki">
「その幸せがあったから、今のオレがいる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/e24/000100370nki">
「今の、本物の、ノーコがいる」

{	St("ML",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/e24/000100380nki">
「嘘をつくのは、辛くて、苦しい。
　逃げ出したくなる。けど――」

{	St("ML",700, @0,@0,"bu似鳥_背張る_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/e24/000100390nki">
「ちゃんと、意味はある」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/e24/000100400nko">
「にとり……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/e24/000100410nko">
「でも、わたしは、くるしい」

{	St("ML",700, @0,@0,"bu似鳥_背張る_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/e24/000100420nki">
「その時のために、オレがいるんだ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/e24/000100430nko">
「そばにいて……だきしめてくれる？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/e24/000100440nki">
「条件がある」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/e24/000100450nki">
「オレ、これから本気でプロの漫画家になる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/e24/000100460nki">
「プロになって、自分の力で夢を叶えて、大声で笑ってやる」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/e24/000100470nki">
「でも……もし、万が一、途中で苦しくなって、逃げ出したくなったら……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/e24/000100480nki">
「そのときは、側にいてくれるか？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/e24/000100490nko">
「にとり……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_happy");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/e24/000100500nki">
「一緒に、来てくれるか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,false);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("MR",700, @0,@0,"buノーコb_通常_smile");
	FadeSt("MR",200,true);}

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/e24/000100510nko">
「もちろん」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/e24/000100520nko">
「ずっと、ずっと、そばにいるよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	ClearWaitAll(2000, 1000);

	EndScene();
}
