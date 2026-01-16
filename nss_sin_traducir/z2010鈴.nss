
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2010鈴.nss_MAIN
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

scene z2010鈴.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="90">
////////////header////////////
//file name "z2010鈴.nss"
//title "鈴の曲がった情熱"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2010);}

//◆場所：スーパーノヴァ_正面_ガラス割れ
	OnBG(10,"bg0501200スーパーノヴァ_正面_ガラス割れ");
	FadeBG(0,true);

	St("ML",700, @0,@0,"bu歌門_通常_shout");
	FadeSt("ML",0,true);

	MusicStart("@xbgm20",1000,350,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/z20/101000010kms">
「わ、私にはやらねばならぬことが――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z20/101000020fjr">
「へえ！
　歌門家の跡取りが、そんな態度でいいのかなあ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/z20/101000030kms">
「良くはありませんけど、私には急用が――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z20/101000040fjr">
「私にだって急用があるの！
　フウリちゃんとの、大事な大事な約束がッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z20/101000050fjr">
「星ちゃんがやってきたせいで、逃げ出しちゃったの」

{	St("MR",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z20/101000060fjr">
「その埋め合わせは、力尽くでもしてもらうからね……」

{	St("MR",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z20/101000070fjr">
「それとも……あのことを、バラされたいのかなあ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu歌門_口覆い_shy");
	Shake("@StNameML/ML*", 1000, 0, 20, 0, 0, 500, Dxl3, false);
	FadeSt("ML",200,false);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/z20/101000080kms">
「ひええええええ……」

{	St("ML",700, @0,@0,"bu歌門_通常_shy");
	FadeSt("ML",200,false);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/z20/101000090kms">
「な……なぜ私が、このような目に……！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
