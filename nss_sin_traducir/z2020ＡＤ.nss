
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2020ＡＤ.nss_MAIN
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

scene z2020ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "z2020ＡＤ.nss"
//title "いよいよ開始！"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2024);}

//◆場所：ＵＰ＋_屋外セット
//	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	OnBG(10,"bg1901111ショウビル_正面_通常");
	FadeBG(0,true);

//	CreateSE("SE01","se環境_燃える_l");
//	MusicStart("SE01",1000,700,0,1000,null,true);

	CreateSE("SEL01","seガヤ_街中_l");
	MusicStart("SEL01",500,700,0,1000,null,true);

	St("C",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("C",0,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z20/200100010adi">
（大丈夫――）

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z20/200100020adi">
（私たちなら、きっと――この番組を成功させられる！）

//◆ＳＥ：サイレン
{	CreateSE("SE01","seメカ_車_消防車サイレン_l");
	MusicStart("SE01",1000,700,0,1000,null,true);}
{	St("C",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z20/200100030adi">
「…………あれ？」

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z20/200100040adi">
「この音は――消防車？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("C",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z20/200100050adi">
「そういえばさっき、雷の音がしたけど……
　まさか、落ちた！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
