
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1800双六.nss_MAIN
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

scene z1800双六.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "z1800双六.nss"
//title "悩み"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：パチンコ屋_店内
	OnBG(10,"bg2302111パチンコ屋_店内_通常", "path");
	FadeBG(0,true);

{	ClockPass(1805);}

	CreateSE("SE01","seガヤ_パチンコ屋店内_l");
	MusicStart("SE01",500,700,0,1000,null,true);

	St("C",700, @0,@0,"bu双六a_横向き_sigh");
	FadeSt("C",0,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z18/000500010ksr">
「……あー、どうすっかなー」

{	St("C",700, @0,@0,"bu双六a_横向き_sad");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z18/000500020ksr">
「今日が最後のチャンスってのは、わかってんだ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z18/000500030ksr">
「わかってんだけど……
　ホントにオレ、信じていいのか？」

{	St("C",700, @0,@0,"bu双六a_横向き_sigh");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z18/000500040ksr">
「なんかいまいち、気が進まねぇ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z18/000500050ksr">
「ん？　なんだ、あのふたり組？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
