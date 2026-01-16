
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene c2402沙紅羅.nss_MAIN
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
	$GameName = "c2403沙紅羅_似鳥_フウリ.nss";//★エンディング中（c）
}

scene c2402沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="80">
////////////header////////////
//file name "c2402沙紅羅.nss"
//title "厭覇薔薇"
//previous "c2357恵那.nss"

////////////footer////////////
//next "似鳥" "c2403沙紅羅_似鳥_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2359);}



//	OnBG(10, "bg0603711半田明神_境内_厭覇薔薇新年");
//	FadeBG(0, true);

	CreateTextureSP("境内01", 10, Center, Middle, "cg/bg/l/bg0603711半田明神_境内_厭覇薔薇新年_l.jpg");
	SetBlur("境内01", true, 1, 500, 100, false);


	CreateSE("歓声", "seガヤ_大歓声_l");
	MusicStart("歓声", 1000, 1000, 0, 1000, null,true);

	FadeDelete("上背景", 0, null, true);


	MoveFTP1("@境内01",2500,8,3);

//あきゅん「修正指示：最初はこの背景で盛り上がりを表現して、沙紅羅との会話が始まる時に社務所に」
//★inc櫻井　修正

	Wait(3000);

	SceneOut(5000, 1000, "blind_01_00_0");

	OnBG(10,"bg0604111半田明神_社務所_通常");
	FadeBG(0,true);

//★inc櫻井　歓声遠くでも聞こえるという意図です。

	MusicStart("歓声", 500, 200, 0, 1000, null,true);


	SceneIn(1000, "blind_01_00_1");

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c24/020100010mzh">
「のう、沙紅羅よ」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c24/020100020skr">
「なんだ、ミヅハ」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c24/020100030mzh">
「世話になったな」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c24/020100040mzh">
「それで……いいんじゃな？」

//★inc櫻井　このあたりでSEを止めます。
{	SetVolume("歓声", 2000, 0, null);
	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c24/020100050skr">
「ああ。それでいい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c24/020100060skr">
「自分の正しいと思ったことを、真っ直ぐやればいいんだ」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c24/020100070skr">
「間違ったら、やり直せばいい」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c24/020100080skr">
「ただ、それだけのこと……さ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("境内*");
	Delete("NutFT*");

	EndScene();
}
