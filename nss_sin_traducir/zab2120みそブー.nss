
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zab2120みそブー.nss_MAIN
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

scene zab2120みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="60">
////////////header////////////
//file name "zab2120みそブー.nss"
//title "一難去ってまた一難"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2127);}

//◆場所：スパコン館_裏面
	OnBG(10,"bg1101200スパコン館_裏面_閉店");
	FadeBG(0,true);

{	St("R",700, @0,@0,"buブーa_通常_sad");
	FadeSt("R",0,true);}

	CreateSE("SE01","seガヤ_ざわざわ02_l");
	CreateSE("SE02","seガヤ_交通少_l");
	MusicStart("SE01",4000,400,0,1000,null,true);
	MusicStart("SE02",2000,500,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ブー】
<voice name="ブー" class="ブー" src="voice/zab21/200100010buu">
「あのふたり……結局、何だったんだろうな？」

{	DeleteSt("R",200,false);
	St("L",700, @0,@0,"buみそa_通常_normal");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/zab21/200100020mso">
「まあ、別に細けぇことはいいじゃねぇか――ん？」

{	St("L",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/zab21/200100030mso">
「な、これ見ろ！」

{	DeleteSt("L",200,false);
	St("R",700, @0,@0,"buブーa_通常_hard");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zab21/200100040buu">
「え？　なんか――このテレビ、ヤバくね？」

{	DeleteSt("R",200,false);
	St("L",700, @0,@0,"buみそa_通常_shout");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/zab21/200100050mso">
「姐さんッ！」

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
<voice name="ブー" class="ブー" src="voice/zab21/200100060buu">
「そ、そうだ！　姐さんを助けに行かなきゃ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
