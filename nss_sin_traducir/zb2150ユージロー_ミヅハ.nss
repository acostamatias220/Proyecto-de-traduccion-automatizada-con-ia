
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zb2150ユージロー_ミヅハ.nss_MAIN
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

scene zb2150ユージロー_ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="80">
////////////header////////////
//file name "zb2150ユージロー_ミヅハ.nss"
//title "傷ついたタヌキ"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2159);}

//◆場所：スパコン館_通路
	OnBG(10,"bg1102100スパコン館_通路_通常");
	FadeBG(0,true);

	MusicStart("@xbgm03",0,450,0,1000,null,true);

	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",500,700,0,0,null,false);
	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @200,@0,"bu平次_御用だ_shout");
	Move("@StNameC/C*", 200, @-200, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/zb21/500100010fjh">
「待てって言ってるだろうが！」

{	Move("@StNameC/C*", 300, @-200, @0, Dxl1, false);
	DeleteSt("C", 200,false);
	MusicStart("SE01",200,0,0,1000,null,false);
	Wait(250);
	St("C",700, @-250,@0,"buミヅハ_通常_sigh");
	CreateSE("SE01","se動作_足踏み");
	MusicStart("SE01",0,700,0,0,null,false);
	Move("@StNameC/C*", 300, @250, @0, Dxl1, false);
	FadeSt("C",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zb21/500100020mzh">
「だから、ここで捕まるわけには――」

{	Move("@StNameC/C*", 300, @150, @0, Dxl1, false);
	DeleteSt("C", 200,true);
	Wait(150);	
	St("C",700, @-200,@0,"buユージローa_通常_normal");
	Move("@StNameC/C*", 300, @100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zb21/500100030ujr">
「ハッハッハ！！」


//※下倉注：ここ、星に修正 2010/11/13

{	Move("@StNameC/C*", 50, @100, @100, Dxl1, false);
	DeleteSt("C", 50,true);
	Wait(50);
	St("C",700, @0,@100,"bu歌門_口覆い_fear");
	Move("@StNameC/C*", 300, @200, @-100, Dxl1, false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/zb21/500100040kms">
「獣め！　やめなさい！　やめなさいって――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆場所：スパコン館_店内


	TextBoxDelete(150);

	CreateColorSP("黒", 15000,"BLACK");
	DrawTransition("黒", 500, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);
	DeleteSt("C", 0,true);
	OnBG(10,"bg1103100スパコン館_店内_通常");
	FadeBG(0,true);

	DrawTransition("黒", 500, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @150,@0,"buミヅハ_通常_hard");
	Move("@StNameC/C*", 200, @-150, @0, Dxl1, false);
	FadeSt("C",200,true);
	Wait(10);
	CreateSE("SE01","se動作_足踏み");
	MusicStart("SE01",0,700,0,0,null,false);
	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	Shake("@StNameC/C*", 100, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zb21/500100050mzh">
「ひゃあっ！」

{	DeleteSt("C", 200,true);
	St("C",700, @200,@0,"buユージローa_通常_hard");
	Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zb21/500100060ujr">
「あ……あれは！？」

{	DeleteSt("C", 200,true);
	St("C",700, @-200,@0,"bu平次_通常_shock");
	Move("@StNameC/C*", 200, @50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/zb21/500100070fjh">
「タヌキが、倒れてやがる……？」


//※下倉注：ここ、星に修正 2010/11/13

{	DeleteSt("C", 200,true);
	St("C",700, @0,@0,"bu歌門_威圧_hard");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/zb21/500100080kms">
「あ……あのタヌキ、もしや――！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
//	DeleteSt("C", 200,false);
//	SetVolumeEX("@xbgm*", 1000, 0, null);

	EndScene();
}
