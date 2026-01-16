
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2010ＡＤ.nss_MAIN
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

scene z2010ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="100">
////////////header////////////
//file name "z2010ＡＤ.nss"
//title "キャラクターデザイナー捜索依頼"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2010);}

//◆場所：ＵＰ＋_屋外セット
	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",0,true);

	SoundPlay("@xbgm16",0,450,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z20/100600010mrp">
「あ、ちょっといい？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z20/100600020adi">
「はい、なんでしょう」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z20/100600030mrp">
「大食いだけじゃ、もしかしたら引っ張りきれないかもしれないの」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z20/100600040mrp">
「だからできれば、マスコットキャラの発表だけは、なんとかしたいんだけど――」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z20/100600050mrp">
「ソトカンダーのキャラクターデザイナー、捕まらないかしら？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z20/100600060adi">
「い、今からですか！？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z20/100600070mrp">
「お願い！
　番組を成功させるには、どうしても必要なの！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z20/100600080adi">
「番組の、成功のため……」

{	St("MR",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z20/100600090adi">
「…………わかりました。
　なんとか、探してみます！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z20/100600100mrp">
「ありがとうっ！　ヨロシクね！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
