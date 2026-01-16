
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1810みそブー_双六.nss_MAIN
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

scene z1810みそブー_双六.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="120">
////////////header////////////
//file name "z1810みそブー_双六.nss"
//title "ケンカの結末"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1811);}

//◆場所：パチンコ屋_正面
	OnBG(10,"bg2301111パチンコ屋_正面_通常");
	FadeBG(0,true);

	CreateSE("SE01","seガヤ_交通少_l");
	MusicStart("SE01",500,700,0,1000,null,true);
	CreateSE("SE02","seガヤ_パチンコ屋店内_l");
	MusicStart("SE02",1000,300,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

	St("ML",700, @0,@0,"buみそa_通常_pinch");
	Shake("@StNameML/ML*", 200, 5, 20, 0, 0, 500, Axl3, false);
	Move("@StNameML/ML*", 200, @-100, @20, Dxl3, false);
	CreateSE("SE03","se戦闘_打撃音02");
	MusicStart("SE03",0,700,0,1000,null,false);
	FadeSt("ML",200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【みそ】
<voice name="みそ" class="みそ" src="voice/z18/100200010mso">
「ガハッ！！」

{	St("MR",700, @0,@0,"buブーa_通常_pinch");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 200, 20, 5, 0, 0, 500, Axl3, false);
	Move("@StNameMR/MR*", 200, @100, @40, Dxl2, false);
	CreateSE("SE04","se戦闘_打撃音07");
	MusicStart("SE04",0,700,0,1000,null,false);
	FadeSt("MR",200,false);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z18/100200020buu">
「ふげッ！！」

{	St("ML",700, @-100,@20,"buみそa_通常_pinch");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 1000, @100, @-20, AxlDxl, false);
	FadeSt("ML",200,false);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z18/100200030mso">
「な……なんだ、コイツ」

//【みそ】
<voice name="みそ" class="みそ" src="voice/z18/100200040mso">
「非常識に……つぇえぞ」

{	St("C",700, @0,@0,"bu双六a_横向き_sigh");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z18/100200050ksr">
「なあ、てめぇら」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"bu双六a_横向き_sad");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z18/100200060ksr">
「なんで、そんな格好なんだ？
　全然、だせぇんだけど」

{	St("MR",700, @100,@40,"buブーa_通常_pinch");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 400, @0, @-40, Dxl3, false);
	FadeSt("MR",200,false);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z18/100200070buu">
「う……うるせぇ！　時代遅れがなんだ！」

{	St("MR",700, @100,@0,"buブーa_オラオラ_pinch");
	Move("@StNameMR/MR*", 300, @-100, @0, Dxl3, false);
	FadeSt("MR",200,false);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z18/100200080buu">
「自分たちのスタイルを貫く！」

{	St("ML",700, @-100,@0,"buみそa_オラオラ_pinch");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 300, @100, @0, Dxl3, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z18/100200090mso">
「ソレがオレたち、百野殺駆の生き様よ――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("C",700, @0,@0,"bu双六a_横向き_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z18/100200100ksr">
「へぇ。良いこと言うじゃねぇか」

{	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z18/100200110ksr">
「……おまえら、ついてこい」

{	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z18/100200120ksr">
「無礼を詫びる、チャンスをやるよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
