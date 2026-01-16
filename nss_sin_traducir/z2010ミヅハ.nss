
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2010ミヅハ.nss_MAIN
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

scene z2010ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="80">
////////////header////////////
//file name "z2010ミヅハ.nss"
//title "雷落とし"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2019);}


//◆場所：秋葉原_裏通り
	OnBG(10,"bg0101200秋葉原_裏通り_閉店");
	FadeBG(0,true);

	CreateSE("SEL01","seガヤ_交通少_l");
	MusicStart("SEL01",500,400,0,1000,null,true);

	St("ML",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("ML",0,true);

	FadeDelete("上背景", 500, null, true);

	Shake("@StNameML/ML*", 1000, 15, 0, 0, 0, 500, Dxl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z20/100700010mzh">
「こらー！　放せモジャモジャ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu平次_通常_happy");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/z20/100700020fjh">
「がっはっはっは！
　そんなにおしりペンペンが怖いのか？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z20/100700030mzh">
「こわい！」

{	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z20/100700040mzh">
「こわいが……しかし、それだけではない！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("ML",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z20/100700050mzh">
「ゆるキャラバンに雷が落ちたのはわらわのせいじゃ！」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z20/100700060mzh">
「だからわらわはその詫びに、あやつらに手助けを――」

{	St("MR",700, @0,@0,"bu平次_通常_cool");
	St("MR",700, @0,@0,"bu平次_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("MR", 200, 2000);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/z20/100700070fjh">
「言い訳無用！　がっはっはっは！」

{	AgainSt("MR",700, @0,@0,"bu平次_通常_happy");
	St("ML",700, @0,@0,"buミヅハ_通常_sigh");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 1000, 0, 15, 0, 0, 500, Dxl3, false);
	FadeSt("ML",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z20/100700080mzh">
「うわああああん！
　モジャモジャが気持ち悪いよう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
