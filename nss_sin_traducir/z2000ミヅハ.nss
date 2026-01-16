
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2000ミヅハ.nss_MAIN
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

scene z2000ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="40">
////////////header////////////
//file name "z2000ミヅハ.nss"
//title "ひとりじゃない"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2004);}

//◆場所：地下_通路_スパコン館
	OnBG(10,"bg0701500地下_通路_スパコン館");
	FadeBG(0,true);

	CreateSE("SE01","se環境_風低音_l");
	MusicStart("SE01",500,700,0,1000,null,true);

	St("C",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("C",0,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z20/000200010mzh">
（ふふふ……）

{	St("C",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z20/000200020mzh">
（辺りが真っ暗でも、大丈夫）

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z20/000200030mzh">
（わらわの側には、ノーコがいる）

{	St("C",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z20/000200040mzh">
（そしてノーコは……わらわの、友達じゃ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
