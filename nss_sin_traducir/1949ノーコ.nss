
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1949ノーコ.nss_MAIN
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
	$GameName = "1950ノーコ.nss";
}

scene 1949ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="40">
////////////header////////////
//file name "1949ノーコ.nss"
//title "共感"
//previous "1948沙紅羅_ノーコ.nss"

////////////footer////////////
//next "ノーコ" "1950ノーコ.nss"

////////////body////////////

//■再定義定型文

//◆演出指定：以下、1930沙紅羅.nssと同じ

{	ClockPass(1949);}

//◆場所：あにのあな_正面_停電
	PrintGO("上背景", 30000);

//おがみ：前ファイル引継ぎのため曲オフ
	SetVolume("@xbgm*", 1000, 0, null);


//◆場所：あにのあな_正面
	CreateTextureEX("絵背景１", 10, 0, -1152, "cg/bg/bg0301211あにのあな_正面_停電.jpg");
	Fade("絵背景１", 0, 1000, null, true);


//	MusicStart("@xbgm01",0,450,0,1000,null,true);

	FadeDelete("上背景", 200, null, true);

	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/490100010nko">
「……また？」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/490100020mzh">
「うう……まったく、忙しいやつじゃ！」

{	St("MR",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/490100030mzh">
「ん？　あれ？　あれれ？」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/490100040mzh">
「あやつのバッグ、あれが正しかったのかのう……？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
