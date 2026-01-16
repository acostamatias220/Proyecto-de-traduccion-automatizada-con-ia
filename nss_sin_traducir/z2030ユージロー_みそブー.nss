
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2030ユージロー_みそブー.nss_MAIN
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

scene z2030ユージロー_みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="140">
////////////header////////////
//file name "z2030みそブー.nss"
//title "再び迷子"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2039);}


//◆場所：地下_通路_バックギャモン
	OnBG(10,"bg0701600地下_通路_バックギャモン");
	FadeBG(0,true);

	CreateSE("SE01","se環境_風低音_l");
	MusicStart("SE01",1000,700,0,1000,null,true);

{	St("ML",700, @0,@0,"buみそa_通常_fear");
	FadeSt("ML",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【みそ】
<voice name="みそ" class="みそ" src="voice/z20/300300010mso">
「うう……何だったんだ……今の？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z20/300300020buu">
「わ、わかんねぇ……
　でも……普通の人間じゃ、なかった」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buユージローb_通常_hard");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z20/300300030ujr">
（同感だ）

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z20/300300040buu">
「河原屋双六の、死体もあった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_fear");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【みそ】
<voice name="みそ" class="みそ" src="voice/z20/300300050mso">
「だよな」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_hard");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z20/300300060buu">
「すると……」

{	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z20/300300070buu">
「やっぱりアイツが、殺人犯？」

{	St("ML",700, @0,@0,"buみそa_通常_fear");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 1000, 0, 25, 0, 0, 500, Dxl3, false);
	FadeSt("ML",200,false);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z20/300300080mso">
「ひいいいいっ！」

{	St("ML",700, @0,@0,"buみそa_通常_angry");
	Shake("@StNameML/ML*", 200, 0, 15, 0, 0, 500, Dxl3, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z20/300300090mso">
「ば、バカ！　やめろよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ブー】
<voice name="ブー" class="ブー" src="voice/z20/300300100buu">
「でも、また道に迷ったわけで――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buユージローb_通常_pride");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z20/300300110ujr">
（オレが道、知ってるぜ！）

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z20/300300120ujr">
（こっち来いよ！）

{	Move("@StNameC/C*", 200, @-80, @0, Dxl3, false);
	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buブーa_通常_sad");
	FadeSt("MR",200,false);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z20/300300130buu">
「え……犬？」

{	St("MR",700, @0,@0,"buブーa_通常_shout");
	FadeSt("MR",200,false);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z20/300300140buu">
「道、知ってるのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
