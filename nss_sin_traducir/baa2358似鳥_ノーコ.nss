
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene baa2358似鳥_ノーコ.nss_MAIN
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
	$GameName = "baa2359フウリ.nss";//★エンディング中（baa）
}

scene baa2358似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="40">
////////////header////////////
//file name "baa2358似鳥_ノーコ.nss"
//title "新しい未来へ……"
//previous "baa2357似鳥_ノーコ.nss"

////////////footer////////////
//next "baa2359フウリ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	SoundPlay("@xbgm09",0, 450,true);
	St("MR",700, @0,@0,"buノーコa_通常_smile");
	FadeSt("MR",0,false);


//◆場所：あにのあな_屋上
	OnBG(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);
	FadeDelete("上背景", 0, null, true);

	CreateWindowEX("左にとり", 0, 0, 340, 576, false);
	Zoom("右にとり", 0, 0, 1000, null, true);
	CreateTextureEX("左にとり/背景", 200, Center, Middle, "cg/bg/bg0303100あにのあな_屋上_通常.jpg");


	CreateWindowEX("右ノーコ", 684, 0, 340, 576, false);
	Zoom("右ノーコ", 0, 0, 1000, null, true);
	CreateTextureEX("右ノーコ/背景", 200, Center, Middle, "cg/bg/bg0303100あにのあな_屋上_通常.jpg");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥堕皇_通常_pride");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/580100010nki">
「ああ。一緒に来てくれるな？」

{	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"buノーコa_通常_shy");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/580100020nko">
「……うん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//★ inc久保田　pre分けしました。

	TextBoxDelete(150);


//◆演出指示：空へと飛び立つ似鳥ノーコ
//あきゅん「指示：窓枠内の位置がみすぼらしいので決まる位置に移動。あと枠付けてください」
//inc久保田　修整しました。

	DeleteSt("MR", 200,false);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg0108400秋葉原_俯瞰_崩壊.jpg");

	Fade("絵背景100", 1000, 1000, null, true);

	CreateMaskAXLEX("絵マ", 800, 0, 0, "ciスラッシュ_03_01", true, "ciスラッシュ_03_01z");
	CreateTextureEX("絵マ/絵背景", 100, 0, 0, "cg/bg/bg0303100あにのあな_屋上_通常.jpg");
	Zoom("絵マ/絵背景", 0, 1700, 1700, null, true);
	SetShade("絵マ/絵背景", SEMIHEAVY);

	Fade("絵マ/絵背景", 1000, 1000, null, false);
	Fade("絵マ*", 1000, 1000, null, true);

	CreateSE("SE01","se動作_空飛ぶ02");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureEX("絵マ/絵立11", 101, -750, -125, "cg/bu/bu似鳥堕皇_通常_sigh.png");
	CreateTextureEX("絵マ/絵立21", 100, 160, -110, "cg/bu/buノーコa_幽霊_normal.png");

	Move("絵マ/絵背景", 10000, 0, @200, null, false);
	Move("絵マ/絵立11", 3000, @0, @-125, AxlAuto, false);
	Fade("絵マ/絵立11", 1000, 1000, null, true);

	WaitKey(1000);
	Move("絵マ/絵立11", 200, @0, @-225, AxlAuto, false);
	Fade("絵マ/絵立11", 200, 0, null, true);
	Move("絵マ/絵立21", 3000, @125, @-135, AxlAuto, false);
	Fade("絵マ/絵立21", 1000, 1000, null, true);
	WaitKey(1000);

	Fade("絵マ/絵立21", 200, 0, null, false);
	Move("絵マ/絵立21", 200, @90, @-125, AxlAuto, false);

	FadeDelete("絵マ*",1000,null,false);
//	Delete("絵マ*");
	CreateTextureEX("絵背景150", 100, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");
	Fade("絵背景150", 1000, 1000, null, false);

	SetVolume("@xbgm*", 5000, 0, NULL);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/580100030nki">
「そう、これが……オレの夢だったんだ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/580100040nko">
「これが……わたしのたどりついた、ゆめ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorEX("絵色100", 20000, "BLACK");
	Fade("絵色100", 2000, 1000, null, true);

	Wait(1500);


	EndScene();
}
