
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1850みそブー_ミヅハ.nss_MAIN
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

scene z1850みそブー_ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="110">
////////////header////////////
//file name "z1850みそブー_ミヅハ.nss"
//title "約束"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1850);}

//◆場所：銭形公園_全景
//cono：背景変更
//	OnBG(10,"bg1701100銭形公園_全景_通常");
//	FadeBG(0,true);

//	CreateSE("SE01","seガヤ_街中_l");
//	MusicStart("SE01",500,400,0,1000,null,true);

	OnBG(10,"bg0101111秋葉原_裏通り_通常");
	FadeBG(0,true);

	CreateSE("SEL01","seガヤ_交通少_l");
	MusicStart("SEL01",500,400,0,1000,null,true);

	St("C",700, @0,@0,"buミヅハ_通常_pride");
	St("C",700, @0,@0,"buミヅハ_フラット_happy");
	FadeSt("C",0,true);
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 2300);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z18/500200010mzh">
「んんん……んまーい！」

{	AgainSt("C",700, @0,@0,"buミヅハ_フラット_happy");}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z18/500200020mzh">
「このケバブというもの、美味じゃのう……」

{	St("MR",700, @0,@0,"buブーa_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z18/500200030buu">
「初めて食うのか？」

{	St("C",700, @0,@0,"buミヅハ_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z18/500200040mzh">
「うむ。なにせ、街に出るのは初めてじゃからのう」

{	St("ML",700, @0,@0,"buみそa_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z18/500200050mso">
「はじめて……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("C",700, @0,@0,"buミヅハ_通常_surprise");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z18/500200060mzh">
「おお！　アレは何じゃ！？」

{	St("MR",700, @0,@0,"buブーa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z18/500200070buu">
「ああ、アレはアイスクリームっていって――」

{	St("C",700, @0,@0,"buミヅハ_フラット_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z18/500200080mzh">
「美味いのか！？」

{	St("ML",700, @0,@0,"buみそa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z18/500200090mso">
「ああ、わかったわかった。食わせてやるから」

{	St("ML",700, @0,@0,"buみそa_通常_pride");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z18/500200100mso">
「だからほら、まずケバブ食え。な？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("C",700, @0,@0,"buミヅハ_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z18/500200110mzh">
「うむ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
