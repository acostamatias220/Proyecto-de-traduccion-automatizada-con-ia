
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2340ＡＤ.nss_MAIN
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

scene z2340ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="30">
////////////header////////////
//file name "z2340ＡＤ.nss"
//title "舞台完成"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2345);}

//◆場所：半田明神_境内
	OnBG(10,"bg0603311半田明神_境内_雪ライブ");
	FadeBG(0,true);

	CreateSE("SE11","seガヤ_大歓声_l");
	MusicStart("SE11",500,400,0,1000,null,true);

{	St("C",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z23/400100010adi">
「よし！　突貫だけど、舞台は調った！」

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z23/400100020adi">
「後は人さえ揃っちゃえば……」

{	St("C",700, @0,@0,"buＡＤ_通常_pride");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z23/400100030adi">
「今度こそ……念願の、マスコットキャラ発表ね！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
