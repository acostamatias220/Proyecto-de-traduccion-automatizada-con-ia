
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zbaa2300ミヅハ.nss_MAIN
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

scene zbaa2300ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="60">
////////////header////////////
//file name "zbaa2300ミヅハ.nss"
//title "ゼロから始める"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2300);}

//◆場所：スパコン館_裏面_廃墟
	OnBG(10,"bg0107400秋葉原_遠景_破壊");
	FadeBG(0,true);

{	St("MR",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("MR",0,true);}

	CreateSE("SE01","se環境_風低音_l");
	MusicStart("SE01",3000,700,0,300,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zbaa23/000300010mzh">
「全て……壊れてしもうたの」

{	St("ML",700, @0,@0,"bu歌門_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/zbaa23/000300020kms">
「全くです！」

{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zbaa23/000300030mzh">
「じゃが……不思議と、嫌な気分はせん」

{	St("MR",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("MR",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zbaa23/000300040mzh">
「そうは思わんか？」

{	St("ML",700, @0,@0,"bu歌門_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/zbaa23/000300050kms">
「…………確かに」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//inc久保田　↓はミズハでよろしいのでしょうか？
//※下倉注：その通りです。 2010/11/18
	St("ML",700, @0,@0,"bu歌門_通常_smile");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/zbaa23/000300060kms">
「そうかも、しれませんね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
