
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene za2030ミヅハ.nss_MAIN
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

scene za2030ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="70">
////////////header////////////
//file name "za2030ミヅハ.nss"
//title "脱出口がない"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2030);}

//◆場所：半田明神_境内
	OnBG(10,"bg0603111半田明神_境内_通常");
	FadeBG(0,true);

	CreateSE("SEL01", "seガヤ_交通少_l");
	MusicStart("SEL01", 500, 350, 0, 1000, null,true);

	FadeDelete("上背景", 500, null, true);

//★inc櫻井　ミヅハは平次と離れているものと想定しています。なので平次の立ち絵は表示していません。

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/za20/300100010fjh">
「星さ――――ん！」

{	St("C",700, @80,@0,"buミヅハ_通常_hard");
	Move("@StNameC/C*", 200, @-80, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/za20/300100020mzh">
「平次が気を取られてる隙に、逃げ出す――」

{	St("C",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/za20/300100030mzh">
「しかし……うう……」

{	St("C",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/za20/300100040mzh">
「逃げ出すにも、ひとりで裏の森を抜けるのは……」

{	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/za20/300100050mzh">
「誰か、一緒について行ってくれる者はおらんか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/za20/300100060mzh">
「うう……おらん……おらん……」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/za20/300100070mzh">
「ミヅハの望みを聞いてくれる友達は、どこにも……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
