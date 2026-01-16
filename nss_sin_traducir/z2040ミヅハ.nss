
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2040ミヅハ.nss_MAIN
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

scene z2040ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="40">
////////////header////////////
//file name "z2040ミヅハ.nss"
//title "疑念"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：ＵＰ＋_屋外セット
	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

{	ClockPass(2048);}

//	CreateSE("SE01","se環境_燃える_l");
//	MusicStart("SE01",1000,700,0,1000,null,true);

	SoundPlay("@xbgm16_noint",0,450,true);

{	St("C",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z20/400200010mzh">
「おお……！　わらわがおらずとも、ゆるキャラバンは上手くいっておるのか！」

{	St("C",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z20/400200020mzh">
「<RUBY text="ちょうじょう">重畳</RUBY>、<RUBY text="ちょうじょう">重畳</RUBY>」

{	St("C",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z20/400200030mzh">
「ん……しかし……」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z20/400200040mzh">
「あのおなご、何か奇妙な感じが……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
