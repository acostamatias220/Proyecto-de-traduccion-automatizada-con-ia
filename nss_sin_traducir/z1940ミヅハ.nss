
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1940ミヅハ.nss_MAIN
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

scene z1940ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="40">
////////////header////////////
//file name "z1940ミヅハ.nss"
//title "鈴への気持ち"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1940);}

//◆場所：あにのあな_正面_停電
	OnBG(10,"bg0301211あにのあな_正面_停電");
	Move("@OnBG*", 0, @0, -1150, null, true);
	FadeBG(0,true);

	CreateSE("SE01","seガヤ_街中_l");
	MusicStart("SE01",500,700,0,1000,null,true);
	CreateSE("SE02","seガヤ_交通_l");
	MusicStart("SE02",500,700,0,1000,null,true);

	St("C",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("C",0,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z19/400200010mzh">
「あれ？　遠くから……なにか……」

//◆ＳＥ：耳を「きいいいいい」
{	CreateSE("SE01","se戦闘_カッター_窓擦る");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z19/400200020mzh">
「この音は……あ……あ……ああ……」

{	St("C",700, @0,@0,"buミヅハ_通常_sad");
	Shake("@StNameC/C*", 200, 0, 10, 0, 0, 500, Dxl3, false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z19/400200030mzh">
「うう……ううううう……ッ！！」

{	St("C",700, @0,@0,"buミヅハ_通常_angry");
	Shake("@StNameC/C*", 500, 0, 20, 0, 0, 500, Dxl3, false);
	FadeSt("C",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z19/400200040mzh">
「うぎゃあああああああああッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
