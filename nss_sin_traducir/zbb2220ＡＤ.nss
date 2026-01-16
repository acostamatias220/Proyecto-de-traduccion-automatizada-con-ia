
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zbb2220ＡＤ.nss_MAIN
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

scene zbb2220ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "zbb2220ＡＤ.nss"
//title "絶望"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2220);}

//◆場所：ＵＰ＋_屋外セット
	OnBG(10,"bg1203100ＵＰ＋_セット裏_通常");
	FadeBG(0,true);

{	St("C",700, @0,@0,"buＡＤ_通常_cry");
	FadeSt("C",0,true);}

	CreateSE("SE01","se環境_燃える_l");
	MusicStart("SE01",3000,700,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zbb22/200100010adi">
「ダメだあ……」

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zbb22/200100020adi">
「映っちゃイケナイもの……映っちゃった……」

{	St("C",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("C",200,false);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zbb22/200100030adi">
「う……電話とか……取りたくない……」

{	St("C",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("C",200,false);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zbb22/200100040adi">
「こりゃ始末書っていうか……むしろ辞表モノ、かな？」

{	St("C",700, @0,@0,"buＡＤ_通常_cry");
	FadeSt("C",200,false);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zbb22/200100050adi">
「もう一発逆転のネタとか、ないよね……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
