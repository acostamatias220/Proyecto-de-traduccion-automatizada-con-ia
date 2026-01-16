
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1942沙紅羅_ノーコ.nss_MAIN
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

	if($CharaName=="沙紅羅"){
		$GameName = "1943沙紅羅.nss";
	}else if($CharaName=="ノーコ"){
		$GameName = "1943ノーコ.nss";
	}else{
		$GameName = "1943ノーコ.nss";
	}
}

scene 1942沙紅羅_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="160">
////////////header////////////
//file name "1942沙紅羅_ノーコ.nss"
//title "突入せよ！　あにのあな！"
//previous "1930沙紅羅.nss"
//previous "1940ノーコ.nss"

////////////footer////////////
//next "沙紅羅" "1943沙紅羅.nss"
//next "沙紅羅" "1943ノーコ.nss"



////////////body////////////

//■再定義定型文
	PrintGO("上背景", 30000);

{	ClockPass(1942);}


//◆場所：あにのあな_正面_停電
	CreateTextureEX("絵背景１", 10, 0, -1152, "cg/bg/bg0301211あにのあな_正面_停電.jpg");
	Fade("絵背景１", 0, 1000, null, true);


//	MusicStart("@xbgm01",0,450,0,1000,null,true);
	SoundPlay("@xbgm03",0,450,true);


	FadeDelete("上背景", 200, null, true);

	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/420100010skr">
「ちぇっ！　どこだよロッカー！」

{	St("R",700, @0,@0,"buミヅハ_通常_surprise");
	DeleteSt("ML",200,false);
	FadeSt("R",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/420100020mzh">
「あー！　でた！　沙紅羅じゃな！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteSt("R",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/420100030skr">
「な、なんだてめー？
　なんでアタシの名前を？」

{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	DeleteSt("ML",200,false);
	MoveEX($MR_次, 200, -20, 0, Dxl1, false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/420100040mzh">
「わらわの名前はミヅハじゃ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/420100050skr">
「ミヅハ？　そんな知り合いいたっけ……？」

{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/420100060mzh">
「違う。わらわはみそとブーの付き添いで来たのじゃが、奴らはおぬしと行き違いに――」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_think");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/420100070skr">
「うーん……あれ？　えーと、誰だ……？
　いたかな……いたような……いないような……」

{	St("MR",700, @0,@0,"buミヅハ_通常_sigh");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/420100080mzh">
「おい沙紅羅？　聞いておるのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/420100090skr">
「あーっ！　思い出せねー！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/420100100skr">
「思い出せねーけど、とりあえず預けた！」

{	St("MR",700, @0,@0,"buミヅハ_フラット_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/420100110mzh">
「へ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：カバン手渡すＳＥ
	//★徒歩：ＳＥ
	CreateSE("SE01","se動作_バッグ渡す");

	CreateTextureEX("絵演物袋", 1500, Center, Middle, "cg/obj/objエコバッグ.png");
	Move("絵演物袋", 0, @-120, @0, null, true);

	Fade("絵演物袋", 300, 1000, null, false);
	Move("絵演物袋", 300, @120, @0, Dxl2, true);

	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵演物袋", 300, 4, 0, 0, 0, 500, null, true);

	Move("絵演物袋", 300, @120, @0, Axl2, false);
	FadeDelete("絵演物袋", 300, null, true);

	St("MR",700, @0,@0,"buミヅハ_通常_surprise");
	FadeF("@StNameMR/MR*",0,0,500,0,0,Dxl1,false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/420100120mzh">
「うわっ！」

{	St("ML",700, @0,@0,"bu沙紅羅_後ろ向き_shout");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/420100130skr">
「後で取りに来るから、ソレ持っててくれ！」

{	St("MR",700, @0,@0,"buミヅハ_通常_angry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/420100140mzh">
「そ、そんな身勝手な！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//★徒歩：ＳＥ
	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
{	DeleteSt("MR",300,false);
	Move($MR_今, 1000, @0, @1000, Dxl1, false);
	Move("絵背景１", 1000, @0, 0, Dxl1, true);
	SetVolume("SE01", 3000, 0, NULL);}
//◆音声指示：遠くへ
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/420100150skr">
「よろしく頼んだぞッ！」

//◆音声指示：遠くから
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/420100160mzh">
「おいコラ待て！　待たんかぁっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("@xbgm*", 1500, 0, null);


	EndScene();
}
