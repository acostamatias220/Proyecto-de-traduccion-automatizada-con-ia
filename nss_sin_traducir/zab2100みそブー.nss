
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zab2100みそブー.nss_MAIN
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

scene zab2100みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="90">
////////////header////////////
//file name "zab2100みそブー.nss"
//title "みそブー、パンツ所持発覚で逮捕"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2106);}

//◆場所：スパコン館_通路
	OnBG(10,"bg1103100スパコン館_店内_通常");
	FadeBG(0,true);

{	St("L",700, @0,@0,"buみそa_通常_hard");
	FadeSt("L",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【みそ】
<voice name="みそ" class="みそ" src="voice/zab21/000100010mso">
「なあ、ブー」

{	DeleteSt("L",200,false);
	St("R",700, @0,@0,"buブーa_通常_normal");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zab21/000100020buu">
「なんだ、みそ」

{	DeleteSt("R",200,false);
	St("L",700, @0,@0,"buみそa_通常_hard");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/zab21/000100030mso">
「パンツ泥棒で捕まったら……どうなる？」

{	DeleteSt("L",200,false);
	St("R",700, @0,@0,"buブーa_通常_shout");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zab21/000100040buu">
「パンツ泥棒なら、まだマシだ！」

{	DeleteSt("R",200,false);
	St("L",700, @0,@0,"buみそa_通常_shout");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/zab21/000100050mso">
「何でだよ！？　まるで変態じゃないか！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	DeleteSt("L",200,false);
	St("R",700, @0,@0,"buブーa_通常_shout");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zab21/000100060buu">
「オレなんて、女児パンツ泥棒だぞ！」

//【ブー】
<voice name="ブー" class="ブー" src="voice/zab21/000100070buu">
「オレはロリコンの変態かッ！？」

{	DeleteSt("R",200,false);
	St("L",700, @0,@0,"buみそa_オラオラ_shock");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/zab21/000100080mso">
「……正解じゃねーか」

{	DeleteSt("L",200,false);
	St("R",700, @0,@0,"buブーa_通常_shock");
	CreateSE("SE01","se擬音_ギャグ_ガーン01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("@StNameR/R*", 300, 0, 8, 0, 0, 500, null, false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zab21/000100090buu">
「何ッ！？　そうだったのか！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
