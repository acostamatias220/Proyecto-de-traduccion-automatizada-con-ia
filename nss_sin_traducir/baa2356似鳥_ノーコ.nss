
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene baa2356似鳥_ノーコ.nss_MAIN
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
	$GameName = "baa2357似鳥_ノーコ.nss";//★エンディング中（baa）
}

scene baa2356似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="100">
////////////header////////////
//file name "baa2356似鳥_ノーコ.nss"
//title "新しい未来へ……"
//previous "baa2355沙紅羅.nss"

////////////footer////////////
//next "baa2357似鳥_ノーコ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
//	FadeDelete("上背景", 0, null, true);

//◆場所：秋葉原_ガード下_破壊
/*
	OnBG(10,"bg0102300秋葉原_ガード下_破壊");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);
	Wait(1000);
*/

{	ClockPass(2357);}

//◆場所：あにのあな_屋上
	//CreateColorEX("上背景", 5000, "#000000");
	//Fade("上背景", 1000, 1000, null, true);

	OnBG(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);

	CreateMovie("絵動画煙", 1000, Center, InBottom, true, true, "dx/mvk100.ngs");
	SetAlias("絵動画煙","絵動画煙");
	SetVertex("絵動画煙", center, bottom);
	Zoom("絵動画煙", 0, 2560, 2000, null, true);

	CreateSE("SE01","se環境_風_l");
	MusicStart("SE01",2000,700,0,800,null,true);

	FadeDelete("上背景", 1500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("MR",700, @0,@0,"buノーコa_幽霊_think");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/560100010nko">
「かわらやすごろくのことばを、しんじるなら……」

{	St("MR",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("MR",200,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/560100020nko">
「かわらやぐみくみちょう――
　かわらやそういちは、まぼろし」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥堕皇_通常_sigh");
	FadeSt("ML",200,true);
	}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/560100030nki">
「……そうか」

{	St("ML",700, @0,@0,"bu似鳥堕皇_通常_normal");
	FadeSt("ML",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/560100040nki">
「だから、殺せなかったんだな」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/560100050nko">
「ごめんなさい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/560100060nko">
「にとりをくるしめたばつ――あたえられなかった」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥堕皇_通常_sigh");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/560100070nki">
「いや……いいんだ」

{	St("ML",700, @0,@0,"bu似鳥堕皇_通常_normal");
	FadeSt("ML",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/560100080nki">
「前からなんとなく、そんな気がしてた」

{	St("ML",700, @0,@0,"bu似鳥堕皇_通常_sigh");
	FadeSt("ML",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/560100090nki">
「宙を浮いてる感じっていうか……
　幻みたいな感じっていうか……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/560100100nko">
「まぼろし……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	Fade("絵動画煙", 500, 0, null, true);
//	CreateColorEX("絵背景", 5000, "BLACK");
//	Fade("絵背景", 2500, 1000, null, true);

	Request("SE*", Lock);

	EndScene();
}
//next "baa2357似鳥_ノーコ.nss"
