
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zba2230ミヅハ.nss_MAIN
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

scene zba2230ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="130">
////////////header////////////
//file name "zba2230ミヅハ.nss"
//title "最悪の事態"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2230);}

//◆場所：半田明神_男坂

//※下倉注：ここ、場所は「秋葉原_遠景」だが、まだ狸は暴れ始めたばかり。街は破壊されていない。よってこの場所の前に狸のみのＥＶとかをだしていただけると……

	MusicStart("@xbgm19",0,450,0,1000,null,true);
	CreateSE("SE01","se環境_地鳴り03");
	MusicStart("SE01",0,700,0,0,null,false);
	CreateTextureEX("絵背景100", 100, Center, InBottom, "cg/ev/ev2220太四郎ビル大破壊.jpg");
	Zoom("絵背景100", 0, 1700, 1700, null, true);
	SetBlur("絵背景100", true, 2, 200, 100);

	CreateVOICE("その他男声","ba22/300100010tsr");
	MusicStart("その他男声",0,700,0,1000,null,false);

	Zoom("絵背景100", 300, 1000, 1000, null, false);
	Fade("絵背景100", 0, 1000, null, true);
	FadeDelete("上背景", 500, null, true);

	$SETime = RemainTime("その他男声")-300;
	WaitKey($SETime);

	Wait(1300);

	CreateTextureEX("絵背景200", 100, Center, 0, "cg/bg/bg0107200秋葉原_遠景_閉店.jpg");
	Move("絵背景200", 1500, @0, -650, DxlAuto, false);
	Fade("絵背景200", 1500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zba22/300200010mzh">
「あれは……さっきの、タヌキ！？」

{	DeleteSt("C", 200,true);
	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zba22/300200020mzh">
「悲しみに泣きむせび、理性を失っている……
　失敗したのか？」

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zba22/300200030mzh">
「…………」

{	St("C",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zba22/300200040mzh">
「わらわが、助けに行かねば――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteSt("C", 200,true);

{	St("C",700, @-400,@0,"bu歌門_威圧_shout");
	CreateSE("SE01","se動作_足踏み");
	MusicStart("SE01",0,700,0,0,null,false);
	Move("@StNameC/C*", 200, @400, @0, Dxl1, false);
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/zba22/300200050kms">
「お待ちください！」

{	DeleteSt("C", 200,true);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zba22/300200060mzh">
「星……」

{	DeleteSt("MR", 200,true);
	St("ML",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/zba22/300200070kms">
「あなたが力を使えば、封印は――」

{	DeleteSt("ML", 200,true);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zba22/300200080mzh">
「今回の出来事は、我が落ち度。
　ならば、落とし前をつけねば――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteSt("MR", 200,true);
	St("ML",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/zba22/300200090kms">
「しかしそれでは……余りに、ミヅハ様が……」

{	DeleteSt("ML", 200,true);
	St("MR",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zba22/300200100mzh">
「わらわがどうなろうと、構わん！
　街をこれ以上破壊されるわけには――」

{	DeleteSt("MR", 200,true);
	St("ML",700, @0,@0,"bu歌門_通常_shy");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/zba22/300200110kms">
「ミヅハ様……ミヅハ様……」

{	DeleteSt("ML", 200,true);
	St("C",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zba22/300200120mzh">
「ええいっ、泣くな！　泣いてくれるな、歌門――ん？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteSt("C", 100,true);
//	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 1000, 0, null);

	St("C",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("C",100,true);
	Wait(500);
	Move("絵背景200", 1500, @0, @650, DxlAuto, false);
	Move("@StNameC/C*", 1500, @0, @650, null, false);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zba22/300200130mzh">
「あの……向こうに見えるのは……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
