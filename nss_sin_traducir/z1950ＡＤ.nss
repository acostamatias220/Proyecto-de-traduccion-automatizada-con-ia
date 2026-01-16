
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1950ＡＤ.nss_MAIN
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

scene z1950ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="110">
////////////header////////////
//file name "z1950ＡＤ.nss"
//title "ミリＰの帰還"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1956);}

//◆場所：ＵＰ＋_屋外セット
	OnBG(10,"bg1201111ＵＰ＋_屋外セット_通常");
	FadeBG(0,true);

	SoundPlay("@xbgm16",2000,450,true);

	St("C",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("C",0,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z19/500100010adi">
「ど……どうしよう……」

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z19/500100020adi">
「結局、ソトカンダーの代わりなんて何も……」

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z19/500100030adi">
「ミリＰさんもどこかに行ったみたいだし――」

{	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z19/500100040mrp">
「大丈夫ッ！！」

{	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z19/500100050adi">
「え……ミリＰさん！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("ML",700, @0,@0,"buミリＰa_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z19/500100060mrp">
「神様は、まだ私たちの味方よ！
　前回までのＶで、２０分は稼げるわね？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z19/500100070adi">
「は……はい、ギリギリですけど……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z19/500100080mrp">
「オッケー！　それじゃその間、別働隊に食べ物を買い集めてもらいなさい！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z19/500100090adi">
「え？　食べ物を？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z19/500100100mrp">
「そう！　ソトカンダーに代わる企画――」

{	St("ML",700, @0,@0,"buミリＰa_通常_shout");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z19/500100110mrp">
「ゆるキャラバンと、大食いキングの、融合よ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
