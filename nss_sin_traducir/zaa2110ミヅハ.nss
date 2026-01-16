
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zaa2110ミヅハ.nss_MAIN
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

scene zaa2110ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="80">
////////////header////////////
//file name "zaa2110ミヅハ.nss"
//title "河原屋双一からの電話"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2110);}

//◆場所：半田明神_社務所
	OnBG(10,"bg0604111半田明神_社務所_通常");
	FadeBG(0,true);

	CreateSE("SE01", "seガヤ_交通少_l");
	MusicStart("SE01", 500, 350, 0, 1000, null,true);

{	St("C",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/zaa21/100300010msi">
「ひいいいいいいいい……」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/zaa21/100300020msi">
「スミマセン……神様……神様……」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/zaa21/100300030msi">
「なんまんだぶ……なんまんだぶ……」

{	St("MR",700, @50,@0,"buミヅハ_手構え_other");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zaa21/100300040mzh">
「おぬし……大丈夫か？
　顔を真っ青にして――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("ML",700, @80,@0,"bu村崎_通常_fear");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @-80, @0, Dxl3, false);
	Shake("@StNameML/ML*", 1000, 0, 20, 0, 0, 500, Dxl3, false);
	FadeSt("ML",200,false);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/zaa21/100300050msi">
「ひぃいっ！　そんな！
　なにもありません！」

{	Shake("@StNameML/ML*", 1000, 10, 0, 0, 0, 500, Dxl3, false);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/zaa21/100300060msi">
「私は、人を殺してなんて――」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zaa21/100300070mzh">
「人を殺した……？」

{	St("R",700, @50,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	Move("@StNameR/R*", 200, @-50, @0, Dxl1, false);
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/zaa21/100300080kms">
「その話、じっくり聞かせていただけますか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
