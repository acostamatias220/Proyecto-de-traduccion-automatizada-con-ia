
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zab2210ミヅハ.nss_MAIN
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

scene zab2210ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="60">
////////////header////////////
//file name "zab2210ミヅハ.nss"
//title "願いを託す"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2210);}

//◆場所：半田明神_境内
	OnBG(10,"bg0603111半田明神_境内_通常");
	FadeBG(0,true);

{	St("R",700, @0,@0,"bu歌門_通常_think");
	FadeSt("R",0,true);}

	SoundPlay("@xbgm15",0,450,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/zab22/100300010kms">
「ミヅハ様……」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/zab22/100300020kms">
「なぜ、あのような者に、未来を預けようと？」

{	DeleteSt("R",200,false);
	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zab22/100300030mzh">
「わらわは、たくさんの人々と会った」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zab22/100300040mzh">
「たくさんの人々に、親切にしてもらった」


{	St("C",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zab22/100300050mzh">
「わらわは……人を、信じたいのじゃ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zab22/100300060mzh">
「沙紅羅……頼んだぞ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
