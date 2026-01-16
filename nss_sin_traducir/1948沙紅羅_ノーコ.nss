
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1948沙紅羅_ノーコ.nss_MAIN
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
		$GameName = "1949沙紅羅.nss";
	}else if($CharaName=="ノーコ"){
		$GameName = "1949ノーコ.nss";
	}else{
		$GameName = "1949ノーコ.nss";
	}
}

scene 1948沙紅羅_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "1948沙紅羅_ノーコ.nss"
//title "突入せよ！　あにのあな！"
//previous "1943沙紅羅.nss"
//previous "1943ノーコ.nss"

////////////footer////////////
//next "沙紅羅" "1949沙紅羅.nss"
//next "ノーコ" "1949ノーコ.nss"


////////////body////////////

//■再定義定型文
	PrintGO("上背景", 30000);

{	ClockPass(1948);}

//◆場所：あにのあな_正面
	CreateTextureEX("絵背景１", 10, 0, -1152, "cg/bg/bg0301211あにのあな_正面_停電.jpg");
	Fade("絵背景１", 0, 1000, null, true);


//	MusicStart("@xbgm01",0,450,0,1000,null,true);
	SoundPlay("@xbgm03",0,450,true);

	FadeDelete("上背景", 300, null, true);

	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/480100010skr">
「お！　いたいた！」

{	St("MR",700, @0,@0,"buミヅハ_通常_surprise");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/480100020mzh">
「さ――沙紅羅！？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/480100030skr">
「バッグ！　返して貰うぜ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵演物袋", 1500, Center, Middle, "cg/obj/objエコバッグ.png");
	Move("絵演物袋", 0, @0, @120, null, true);

	Fade("絵演物袋", 300, 1000, null, false);
	Move("絵演物袋", 300, @0, @-120, Dxl2, true);

	Wait(100);

	Zoom("絵演物袋", 300, 800, 800, null, false);
	FadeDelete("絵演物袋", 300, null, true);


{	St("MR",700, @0,@0,"buミヅハ_通常_surprise");
	St("MR",700, @0,@0,"buミヅハ_通常_angry");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);
	//★徒歩：ＳＥプロセス１
	CreateSE("SE09","se動作_バッグ渡す");
	MusicStartPro("@SE09",0,700,0,1000,null,false,1000);
	//★立ち絵プロセス：開始
	FadeDeleteStPro("MR", 200, 500, 200, 500);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/480100040mzh">
「え？　ちょ――うぎゃっ」

{	//★立ち絵プロセス：再定義
	DustSt("MR");
	//★徒歩：ＳＥプロセス停止（継続するなら必要なし）
	DustMusic("@SE09", 500, 0, NULL);
	//★徒歩：ＳＥプロセス２
	CreateSE("SE09","se動作_走る02_l");
	MusicStartPro2("@SE09",0,700,0,1000,null,true,0,3000,2000);
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//◆音声指示：遠くへ
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/480100050skr">
「サンキュー、ガキンチョ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("SE*", 2000, 0, null);
//	SetVolume("@xbgm*", 2000, 0, null);
	Wait(1000);

	//★徒歩：ＳＥプロセス停止（継続するなら必要なし）
	//DustMusic("@SE09", 1000, 0, NULL);

	EndScene();
}
