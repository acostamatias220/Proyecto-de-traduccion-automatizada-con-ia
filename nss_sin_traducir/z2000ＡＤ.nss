
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2000ＡＤ.nss_MAIN
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

scene z2000ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="90">
////////////header////////////
//file name "z2000ＡＤ.nss"
//title "感動"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2004);}

//◆場所：ＵＰ＋_屋外セット
	OnBG(10,"bg1201111ＵＰ＋_屋外セット_通常");
	FadeBG(0,true);

	St("C",700, @0,@0,"buＡＤ_通常_angry");
	FadeSt("C",0,true);

	SoundPlay("@xbgm16",0,450,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z20/000100010adi">
「災い転じて福と成すとはこのこと！」

{	St("C",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z20/000100020adi">
「若原Ｄの気持ちを受け継いで……
　ゆるキャラバンの準備、がんばろう！」


/*
//※下倉注：これ以下の台詞、カット 2010/11/12

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z20/000100030mrp">
「あ、ちょっといい？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z20/000100040adi">
「はい、なんでしょう」
*/

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

/*
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("ML",200,true);
//【ミリＰ】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
<voice name="ミリＰ" class="ミリＰ" src="voice/z20/000100050mrp">
「大食いだけじゃ、もしかしたら引っ張りきれないかもしれないの」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z20/000100060mrp">
「だからできれば、マスコットキャラの発表だけは、なんとかしたいんだけど――」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z20/000100070mrp">
「ソトカンダーのデザイナーって、捕まる？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z20/000100080adi">
「な、なんとか探してみます！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z20/000100090mrp">
「ヨロシクねッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

*/

	EndScene();
}
