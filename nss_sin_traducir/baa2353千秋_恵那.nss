
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene baa2353千秋_恵那.nss_MAIN
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
//	$GameName = "";
//	$GameCircle=false;

	//★徒歩：フラグ修正
	if(#RouteName=="baa"){
		$GameName="baa2354千秋_恵那.nss";//★エンディング中（baa）
	}else if(#RouteName=="bab"){
		$GameName="bab2354千秋_恵那.nss";//★エンディング中（bab）
	}
}

scene baa2353千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="200">
////////////header////////////
//file name "baa2353千秋_恵那.nss"
//title ""
//previous "baa2352千秋_恵那.nss"
//previous "bab2352千秋_恵那.nss"

////////////footer////////////
//next （"flkagome2b" = false） "bab2354千秋_恵那.nss"
//next "baa2354千秋_恵那.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景101", 11, Center, 0, "cg/bg/bg0602112半田明神_鳥居_通常.jpg");
	Move("絵背景101", 0, @0, @-900, null, true);

	Request("@SE*", UnLock);

	if($PreGameName == "baa2352千秋_恵那.nss"){
	St("MR",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("MR",0,true);
	DeleteAllSt(200,false);

	}else{
	
	St("ML",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("ML",0,true);
	
	}
	FadeDelete("上背景", 50, null, true);

	SetVolumeEX("@SE*", 1000, 0, null);
	SoundPlay("@xbgm18",0,450,true);

//◆場所：半田明神_鳥居
//	OnBG(10,"bg0602112半田明神_鳥居_通常");
//	FadeBG(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("ML",700, @0,@0,"bu恵那_感動_happy");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/530100010fje">
「明けまして、おめでとうございます！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_朗らか_happy");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/baa23/530100020kit">
「おめでとうございます」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_happy");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/530100030fje">
「今年こそ、よろしくお願いいたします」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_think");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/baa23/530100040kit">
「ん……？　今年こそ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_smile");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/530100050fje">
「さ、行きましょ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	ClockPass(2401);}

	Request("@SE01", UnLock);
	SetVolumeEX("SE*", 2000, 0, null);

//◆場所：半田明神_境内_ノーマル新年
	SceneOut(5000, 1000, "blind_01_00_0");
	Delete("絵背景101");
	OnBG(10,"bg0603411半田明神_境内_ノーマル新年");
	DeleteAllSt(0,true);
	FadeBG(0,true);

	#bg0603400半田明神_境内_ノーマル新年 = true;

	SceneIn(1000, "blind_01_00_1");
	CreateSE("SE01","seガヤ_半田明神01_l");
	MusicStart("SE01",0,700,0,1000,null,true);

	CreatePlainSP("絵板写", 5000);
	CreateAXLWindowEX("絵演窓", "Y", 2000, 60, 345, false);
	WindowAXLZoom("絵演窓", "Y", 0, 0, null, true);
	CreateTextureSP("絵演窓/絵演外神", 1000, Center, -310, "cg/bg/l/bg0603411半田明神_境内_ノーマル新年_l.jpg");
	Wait(32);
	Delete("絵板写");

	Move("@絵演窓/絵演外神", 3000, @0, @-60, DxlAuto, false);
	WindowAXLZoom("絵演窓", "Y", 500, 1000, null, true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{
//	St("MR",700, @0,@0,"bu千秋_通常_fear");
//	FadeSt("MR",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/baa23/530100060kit">
「げ……あのキャラクター……」

{
//	DeleteAllSt(200,false);
//	St("ML",700, @0,@0,"bu恵那_一休_sigh");
//	FadeSt("ML",200,true);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/530100070fje">
「あ、そっか。
　ゆるキャラバン、メチャクチャになっちゃったもんね」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	WindowAXLZoom("絵演窓", "Y", 500, 0, null, true);
	Delete("@絵演窓*");

	St("ML",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/530100080fje">
「ここに来てる人、何が何だかわかんないだろうなー」


//◆音声指示：小声
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	Move("@StNameMR/MR*", 300, @40, @0, DxlAuto, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/baa23/530100090kit">
「あのエコバッグさえなけりゃ、オレは――」

//◆音声指示：小声
{	St("MR",700, @40,@0,"bu千秋_通常_worry");
	FadeSt("MR",200,false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/baa23/530100100kit">
「……ってか、あのブルマーどこに行ったんだ？」

//◆音声指示：小声
{	St("MR",700, @40,@0,"bu千秋_通常_think");
	FadeSt("MR",200,false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/baa23/530100110kit">
「確か……ユージローの首輪だっけ？」

{	SetVolumeEX("SE*", 500, 0, null);
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/530100120fje">
「ん？　なんか言った？」

{	DeleteAllSt(200,false);
	St("MR",700, @40,@0,"bu千秋_驚天_shock");
	Move("@StNameMR/MR*", 300, @-40, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/baa23/530100130kit">
「なんでもない！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/530100140fje">
「怪しい……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/baa23/530100150kit">
「怪しくなんてないし！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/530100160fje">
「ってかさ、大体なんでそんな格好なの？
　恥ずかしくないの？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_shy");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/baa23/530100170kit">
「は、恥ずかしいけどさ！
　しょうがないだろ時間もなかったし！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/530100180fje">
「クセになっちゃったら――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/baa23/530100190kit">
「ならねーし！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/530100200fje">
「ホントに……？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);



	EndScene();
}
