
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zba2250双六.nss_MAIN
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

scene zba2250双六.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="30">
////////////header////////////
//file name "zba2250双六.nss"
//title "沙紅羅の決意"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2256);}


//◆場所：あにのあな_屋上
	OnBG(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);

	St("L",19010, @0,@0,"fu沙紅羅_後ろ向き_hard");
	Move("@StNameL/L*", 3000, @610, @0, DxlAuto, false);
	FadeSt("L",0,true);

	St("ML",700, @610,@0,"bu双六a_通常_hard");

	CreateSE("SE01","se環境_風低音_l");
	MusicStart("SE01",3000,700,0,300,null,true);

	FadeDelete("上背景", 500, null, true);

	Wait(1500);

	FadeSt("ML",200,false);
	Move("@StNameML/ML*", 3000, @-760, @0, DxlAuto, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zba22/500300010ksr">
（こいつは、全部背負うつもりなんだな……）

{	St("ML",700, @-150,@0,"bu双六a_通常_pride");
	DeleteSt("L", 200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zba22/500300020ksr">
（へっ！　小さな肩、いからせやがってよ）

{	St("ML",700, @-150,@0,"bu双六a_通常_smile");
	FadeSt("ML",200,false);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zba22/500300030ksr">
（……可愛いじゃねぇか）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
