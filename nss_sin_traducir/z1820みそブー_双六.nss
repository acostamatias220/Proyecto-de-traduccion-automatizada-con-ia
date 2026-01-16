
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1820みそブー_双六.nss_MAIN
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

scene z1820みそブー_双六.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="130">
////////////header////////////
//file name "z1820みそブー_双六.nss"
//title "誘拐のススメ"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1820);}

//◆場所：スパコン館_通路
	OnBG(10,"bg1102100スパコン館_通路_通常");
	FadeBG(0,true);

	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",0,true);

	SoundPlay("@xbgm04",0,450,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ブー】
<voice name="ブー" class="ブー" src="voice/z18/200200010buu">
「こ……これは！？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_shout");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z18/200200020mso">
「鉄砲！？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z18/200200030ksr">
「と、見間違うほど精巧に作られた、ジャブル特製モデルガンだ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z18/200200040ksr">
「中にはペイント弾が入ってる」

{	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z18/200200050ksr">
「といってもそいつは特殊なヤツで――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("ML",700, @0,@80,"buみそa_オラオラ_happy");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @0, @-80, Dxl3, false);
	Shake("@StNameML/ML*", 500, 15, 0, 0, 0, 500, Axl1, false);
	FadeSt("ML",200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【みそ】
<voice name="みそ" class="みそ" src="voice/z18/200200060mso">
「すげー！　すげー！　かっけー！！
　バーン！　バーン！　バキューン！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_hard");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z18/200200070buu">
「…………で？」

//【ブー】
<voice name="ブー" class="ブー" src="voice/z18/200200080buu">
「おまえは、オレに、なにをさせたいんだ？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z18/200200090ksr">
「あるひとりの子供を、誘拐してきて欲しい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("ML",700, @-40,@40,"buみそa_オラオラ_hard");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @40, @-40, Dxl3, false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【みそ】
<voice name="みそ" class="みそ" src="voice/z18/200200100mso">
「誘拐！？　ふざけんなッ！！
　オレたち百野殺駆が、そんな犯罪行為に手を――」

{	St("MR",700, @0,@0,"buブーa_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z18/200200110buu">
「性別は？」

{	St("C",700, @0,@0,"bu双六a_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z18/200200120ksr">
「女」

{	St("MR",700, @40,@0,"buブーa_オラオラ_happy");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @-40, @0, Dxl3, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z18/200200130buu">
「ＯＫ、ボス！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
