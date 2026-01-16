
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1830恵那.nss_MAIN
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
	$GameName = "1850恵那.nss";
	//$GameCircle=false;

}

scene 1830恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1500">
////////////header////////////
//file name "1830恵那.nss"
//title "巫女幼女狂言誘拐！？"
//previous "1820恵那.nss"

////////////footer////////////
//next "恵那" "1850恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);

//事件定義
	KoreJikenSet();


//◆時間：ジャンプ
{	ClockPass(1832);}


//◆場所：半田明神_鳥居
	OnBG(10,"bg0602111半田明神_鳥居_通常");
	FadeBG(0,true);
	Move("@OnBG*", 0, @0, -495, null, true);

	CreateSE("SE10","seガヤ_ざわざわ_l");
	MusicStart("SE10",1500,450,0,1000,null,true);

	if($PreGameName=="1820恵那.nss"){
	Wait(1000);
	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);
	Move("@OnBG*", 4950, @0, -990, DxlAuto, false);
	WaitKey(4950);
	Move("@OnBG*", 0, @0, -990, DxlAuto, true);
	}else{
	Move("@OnBG*", 0, @0, -990, null, true);
	FadeDelete("上背景", 0, null, true);
	}

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200010fje">
（なんかこう……年の瀬って感じがするなあ）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200020fje">
（毎年、御札を納めに来てるわけで）

{	St2("C",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200030fje">
（ああ。今年はひとりで納めるのか）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200040fje">
（隣に千秋がいたらなあ……）

{	St("C",700, @0,@0,"bu恵那_哀愁_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200050fje">
「……いやいや」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("C",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200060fje">
「なんで私が、あんなバカ千秋のこと――」

{	DeleteAllSt(200,true);}
{	St("ML",700, @0,@0,"buユージローa_通常_normal");
	Shake("@StNameML/ML*", 200, 0, 30, 0, 0, 500, Axl3, false);
	FadeSt("ML",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/300200070ujr">
「わうわうわうわうッ！！」

{	CreateSE("SE02","se動物_イヌ_走る_l");
	MusicStart("SE02",0,700,0,1000,null,true);
}

{Move("@StNameML/ML*", 200, @-400, @0, Dxl1, false);
	Shake("@StNameML/ML*", 200, 0, 30, 0, 0, 500, Axl3, false);
	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
{	SetVolume("SE02", 2000, 0, null);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200080fje">
「え？　また走り出した！？」

{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"buユージローa_通常_ero");
//	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/300200090ujr">
「わうわうわうわうッ！！」

//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/300200100mzh">
「ぎゃあああああああ！！」

{	CreateSE("SE01","se人体_倒れる04");
	MusicStart("SE01",0,500,0,1000,null,false);
}
{	St("C",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200110fje">
「どれだけ女好きなのよ！　もう！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


	SetVolumeEX("SE*", 1500, 0, null);
	CreateSE("SE10","seガヤ_ざわざわ02_l");
	MusicStart("SE10",2000,400,0,1000,null,true);


{	ClockPass(1833);}

//◆場所：柳神社_境内 → 半田明神_境内
	OnBG(10,"bg0603111半田明神_境内_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]


{	St("C",700, @100,@0,"bu恵那_通常_angry");
Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200120fje">
「こらユージロー！　なにやって――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);



//◆ＥＶ："ev/ev1830ミヅハ獣姦.txt"
	yurukakuPrepare("yurIF背景03","yurユージローaカクカクミヅハa","yurユージローaカクカクミヅハb");
	yurukakuStart();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]

//	St("C",700, @0,@0,"buユージローa_通常_normal");
//	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/300200130ujr">
「はっはっはっは！」

//◆ＳＥ：腰かくかく。擬音。

　かくかくかくかく。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/300200140mzh">
「だずげでええええ！！　だべられるうううう！！」

//	St("C",700, @0,@0,"buユージローa_通常_normal");
//	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/300200150ujr">
「はっはっはっは――うっ！」

{	yurukakuDelete();}
{	St("C",700, @0,@100,"fu恵那_通常_shy");//fu恵那_ハルヒ_angry");
Move("@StNameC/C*", 200, @0, @-100, Dxl3, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200160fje">
「やめなさ――――――い！！」

//◆ＳＥ：パコーン！
{	CreateSE("SE01","se戦闘_打撃音06");
	MusicStart("SE01",0,700,0,1000,null,false);
}
{	DeleteAllSt(200,true);
}
{	CreateTextureSP("絵ゆれ", 100, Center, Middle, "cg/bg/bg0603111半田明神_境内_通常.jpg");
	Shake("絵ゆれ", 500, 10, 30, 2, 0, 500, null, true);
}
{	CreateSE("SE02","se擬音_ギャグ_落下");
	MusicStart("SE02",0,700,0,1000,null,false);
WaitKey(2000);
	CreateSE("SE01","se人体_倒れる02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("絵ゆれ", 500, 0, 35, 0, 0, 500, null, true);
	Delete("絵ゆれ");
}
//	St("C",700, @0,@0,"buユージローa_通常_normal");
//	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/300200170ujr">
「きゃううぅぅぅぅ――――ん……！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);

//◆ＳＥ：宙を舞う
//◆ＳＥ：ドサッ！

{	ClockPass(1834);}


	SetVolumeEX("SE*", 1500, 0, null);


WaitKey(500);

	SoundPlay("@xbgm13",3000,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("C",700, @0,@50,"buミヅハ_通常_sigh");
Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/300200180mzh">
「た――助かった！？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @50,@0,"bu恵那_通常_normal");
Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200190fje">
「よかった……無事みたいね」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/300200200mzh">
「あの犬はおぬしの連れか？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200210fje">
「え、ええ」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/300200220mzh">
「なんと無礼な！　無礼極まりないッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200230fje">
「ご、ごめんね……」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/300200240mzh">
「全く、久々に顕現したと思えばコレじゃ！
　だから人間というものは……」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_一休_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200250fje">
「けんげん……？」

{	St("MR",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200260fje">
「あの……あなたもしかして、神社の子？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200270fje">
「夜も遅いし、星さん呼んでこようか？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/300200280mzh">
「だだっ、だめじゃっ！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200290fje">
「でも、お世話になってるんでしょ？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/300200300mzh">
「しるか！　あやつは鬼じゃ！」

//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/300200310mzh">
「わらわはただ、フウリとお話ししてただけなのじゃ！
　出ようと思ったわけではない！」

//	St("C",700, @0,@0,"buミヅハ_通常_angry");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/300200320mzh">
「なのに、おしりペンペンするのじゃ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1835);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200330fje">
「叩かれちゃったんだ……」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/300200340mzh">
「星も、他の人間と同じなのじゃ」

//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/300200350mzh">
「用がなくなったら、わらわのことなどすぐに忘れる」

{	St("ML",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/300200360mzh">
「使い捨てなのじゃ！　要らなくなったらポイじゃ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("ML",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/300200370mzh">
「ミヅハを……もう誰も、心配などしてくれぬのだ！」



{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200380fje">
（捨てられた……？）


{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200390fje">
「そんなこと、言わないの」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200400fje">
「星さんは、あなたのこと、絶対に大切にしてるから」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/300200410mzh">
「……おぬしも、星を信じろと言うのじゃな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】

<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200420fje">
「え……？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/300200430mzh">
「しかしわらわには、よくわから――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	DeleteAllSt(200,true);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0103]

{	St("ML",700, @-50,@0,"bu歌門_通常_hard");
Move("@StNameML/ML*", 200, @50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300200440kms">
「ミヅハ様！　こんな所に！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0104]

{	St("C",700, @-50,@0,"buミヅハ_通常_sigh");
Move("@StNameC/C*", 200, @50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/300200450mzh">
「ぬ！　まずい、星が――！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300200460kms">
「拝殿でお待ちくださいと言ったのに」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



{	ClockPass(1836);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300200470kms">
「もしや――ここから逃げだそうとしたのでは？」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/300200480mzh">
「ちがう！　そんなことはないぞ！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300200490kms">
「……本当に、ですか？」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/300200500mzh">
「わらわを信じられぬのか！？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300200510kms">
「信じられません」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――




//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/300200520mzh">
「むむ――――！！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200530fje">
「あちゃー……」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300200540kms">
「さあ、ミヅハ様。本殿にお帰り下さい」


{	St("ML",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300200550kms">
「それともまさか、ご自分の使命を忘れられたのですか？」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/300200560mzh">
「……わかっておる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1838);}


//	TextBoxDelete(150);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/300200570mzh">
「おぬし、名前をなんという？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200580fje">
「富士見恵那」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/300200590mzh">
「ほう、富士見……」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200600fje">
「…………」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/300200610mzh">
「よかろ。憶えておく」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/300200620mzh">
「もう二度と、あのバカ犬は離さぬようにするのだぞ」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200630fje">
「はいはい」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/300200640mzh">
「では、さらばじゃ」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 1000, 0, null);

Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	DeleteAllSt(200,true);


//◆演出指定：ミヅハ移動

//	TextBoxDelete(150);


{	ClockPass(1838);}


WaitKey(200);


	SoundPlay("@xbgm15",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0145]


{	St("ML",700, @-50,@0,"bu歌門_通常_normal");
Move("@StNameML/ML*", 200, @50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300200650kms">
「迷惑をおかけして、すみません」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200660fje">
「いえ、迷惑なんてそんな――」

//	St("MR",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200670fje">
「親戚のお子さんですか？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300200680kms">
「田舎から出たばっかりで。
　あまり東京のことを知らないんです」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300200690kms">
「少し変わっているでしょう？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	ClockPass(1839);}

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200700fje">
「いえ……まあ確かに」

{	St("MR",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200710fje">
（普通じゃないわ。
　どうして親戚の子に、「様」なんてつけるの？）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200720fje">
（もしかして――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＥＶ："ev/ev0000恵那これは事件！？.txt"

//◆ＳＥ：パララー！

	KoreJikenStart();
	DeleteAllSt(0,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0165]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200730fje">
「これは事件！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(1840);}

	KoreJikenFade(true);

{	St("ML",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("ML",200,true);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300200740kms">
「何がですか？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200750fje">
「あ！　いえ、なんでもなくて！」


{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200760fje">
「ええと、そうだ！　御札御札！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300200770kms">
「今年はひとりで？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200780fje">
「そうなんです。
　星さん、信じられますか！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200790fje">
「千秋ったら、突然約束を破って、私ひとりで行けって」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200800fje">
「ろくに理由も説明せずに、おかしいですよね？
　しかも、電話をかけたら鈴ねえの声がするし――」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300200810kms">
「妬いているんですか？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200820fje">
「……どういう意味ですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1841);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300200830kms">
「てっきりふたりは、既に相思相愛の仲だと――」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200840fje">
「ちょっと、冗談でもやめてくださいよ！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300200850kms">
「私は冗談が苦手です。
　お似合いだと思いますけど」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200860fje">
「私と千秋が？　あー、それはない！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu歌門_通常_think");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300200870kms">
「そうですか」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300200880kms">
「半田明神は勝負事には強いのですが。
　縁結びにはどれだけ効くか……」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200890fje">
「自分で言っちゃうんですか……」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300200900kms">
「事実です」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1842);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200910fje">
（相変わらずだなあ……）

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200920fje">
「新年の準備、無事に進んでます？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300200930kms">
「滞りありません。
　ソトカンダー書き初めも、無事に終わりました」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300200940kms">
「２０畳敷きとなると、迫力があります。
　見に行きますか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_happy");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200950fje">
「年越しまで、楽しみに取っておきます」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300200960fje">
「でも、アニメの町興しにのっちゃっていいんですか？
　ゆるキャラバンとか、星さんは嫌いだと思ってました」

{	ClockPass(1843);}


{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300200970kms">
「き……嫌いです！」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300200980kms">
「正直今でも、背中に怖気が走ります」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	St("ML",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300200990kms">
「しかし――背に腹は代えられません！」

{	St("ML",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300201000kms">
「今年はどうしても、多く人を呼ばねばならない！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300201010fje">
「今年は……？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300201020kms">
「テレビも盛り上がっているようですね。
　平次様が音頭を取っただけのことはある」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1844);}

//	TextBoxDelete(150);

	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240a]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300201030fje">
「……調子がいいだけですよ。
　町内会の会長までやらされて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	CreateTextureEX("絵演背景", 100, Center, Middle, "cg/obj/objエコバッグ.png");
	Move("絵演背景", 0, @0, @120, null, true);

	Move("絵演背景", 300, @0, @-120, Dxl1, false);
	Fade("絵演背景", 300, 1000, null, true);

	St("L",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("L",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240b]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300201040kms">
「そのカバンも、平次様の発案では？
　新年から、社務所で頒布させていただきますけど」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("R",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240c]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300201050fje">
「いや、これも酷いんですよ！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300201060fje">
「一桁余計に発注しちゃって、今部屋が段ボールだらけ。
　エコバッグの中で寝てるようなものなんですから！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("絵演背景", 300, @0, @120, Dxl1, false);
	FadeDelete("絵演背景", 300, Axl1, true);

	DeleteAllSt(200,true);

//	TextBoxDelete(150);

{	ClockPass(1845);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	St("ML",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300201070kms">
「テレビ放送を引っ張って来たのも、平次様の力なのでしょう？」


{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
////【富士見恵那】
//<voice name="富士見恵那" class="富士見恵那" src="voice/18/300201080fje">
//「テレビじゃなくて、ネット中継」
//
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300201090fje">
「一応今、ＵＰ＋で準備してるみたいですね。
　既に暗雲立ちこめてるみたいだけど」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu歌門_通常_think");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300201100kms">
「……恵那様」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300201110kms">
「あなたの過去には同情します。
　平次様を恨む気持ちもわかります」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300201120kms">
「しかし、もう少し冷静な目でお父様を見てあげて下さい」

{	ClockPass(1846);}

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300201130fje">
「……私が、冷静じゃない？」

{	St("MR",700, @0,@0,"bu恵那_通常_happy");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300201140fje">
「まさか！　そんなわけ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 1000, 0, null);

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

{	ClockPass(1847);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//◆音声指示：遠くから
//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/300201150mzh">
「ぎゃああああああああああ！！」

{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300201160fje">
「え？」

{	DeleteAllSt(200,false);}

{	St("ML",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300201170kms">
「ミヅハ様！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	SoundPlay("@xbgm03",0,450,true);


//1910恵那.nss[text0120]で回想（千代子
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0275]
{	St("MR",700, @200,@0,"buブーa_通常_shout");
Move("@StNameMR/MR*", 200, @-200, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/18/300201180buu">
「みそ、早く！」

{Move("@StNameMR/MR*", 200, @-200, @0, Dxl1, false);
	DeleteSt("MR", 200,true);
}
{	St("ML",700, @200,@0,"buみそa_オラオラ_pride");
Move("@StNameML/ML*", 200, @-200, @0, Dxl1, false);
	Shake("@StNameML/ML*", 200, 0, 10, 0, 6, 1000, null, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/300201190mso">
「えっさっ、ほいさっ、えっさっ、ほいさっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
Move("@StNameML/ML*", 200, @-200, @0, Dxl1, false);
	Shake("@StNameML/ML*", 200, 0, 10, 0, 6, 1000, null, false);
	DeleteSt("ML", 200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　本殿から出てくる、ふたり組の変な男。

　ふたりとも、手には銃らしきものを持っている。

　背の高い方に担がれているのが――

//◆音声指示：遠くから
//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/300201200mzh">
「だずげで――ッ！！」

//◆音声指示：遠くから
//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/300201210mzh">
「ゆうがいざれる――――ッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//◆ＥＶ："ev/ev0000恵那これは事件！？.txt"

	TextBoxDelete(150);

//◆ＳＥ：パララー！

	KoreJikenStart();


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300201220fje">
「これは事件！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	KoreJikenEnd(true);

	St("C",700, @0,@0,"bu歌門_通常_think");
	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0291]

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300201230kms">
「はぁ……またおかしな狂言を」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300201240fje">
「狂言――？」



{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300201250kms">
「こら、ミヅハ様！　待ちなさいッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//Move("@StNameC/C*", 200, @-200, @0, Dxl1, false);
	DeleteAllSt(200,true);

//	TextBoxDelete(150);

	PrintGO("上背景", 30000);
	OnBG(10,"bg0603111半田明神_境内_通常");
	FadeBG(0,true);

	CreateMaskAXLSP("絵マ", 800, 0, 0, "ciスラッシュ_07_00", true, "ciスラッシュ_07_00z");
	CreateColorSP("絵マ/色", 100, "#cc3300");//952
	CreateTextureSPadd("絵マ/絵背景", 100, 0, 0, "cg/ef/ef003_汎用移動.jpg");
	CreateTextureSP("絵マ/絵立絵", 100, 222, -50, "cg/bu/buミヅハ_手構え_hard.png");//-28

	DrawDelete("上背景", 100, 100, null, "slide_02_01_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/300201260mzh">
「ま、待ちたくても誘拐されているから待てぬのじゃ！」

//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/300201270mzh">
「のう、ふたりとも！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	PrintGO("上背景", 30000);
	OnBG(10,"bg0603111半田明神_境内_通常");
	FadeBG(0,true);
	DrawDelete("上背景", 100, 100, null, "slide_02_01_0", true);



	CreateMaskAXLSP("絵マ", 800, 1024, 0, "ciスラッシュ_05_01", true, "ciスラッシュ_05_01z");

	CreateColorSP("絵マ/色", 100, "#cc3300");//952
	CreateTextureSPadd("絵マ/絵背景", 100, 1024, 0, "cg/ef/ef002_汎用移動.jpg");
	CreateTextureSP("絵マ/絵立絵", 100, 1404, -67, "cg/bu/buブーa_オラオラ_shout.png");

	CreateMaskAXLEX("絵み", 800, -1024, 0, "ciスラッシュ_05_00", true, "ciスラッシュ_05_00z");
	CreateColorSP("絵み/色", 100, "#cc3300");//952
	CreateTextureSPadd("絵み/絵背景", 100, -1024, 0, "cg/ef/ef001_汎用移動.jpg");
	CreateTextureSP("絵み/絵立絵", 100, -1204, -233, "cg/bu/buみそa_オラオラ_pride.png");

	Move("絵マ/絵*", 200, @-1024, @0, DxlAuto, false);
	Move("絵マ*", 200, 0, @0, DxlAuto, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0302]
//	St("R",700, @200,@0,"buブーa_オラオラ_shout");
//Move("@StNameR/R*", 200, @-200, @0, Dxl1, false);
//	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/18/300201280buu">
「お、おう！　その通りだッ！！」

{	Move("絵み/絵*", 200, @1024, @0, DxlAuto, false);
	Move("絵み*", 200, 0, @0, DxlAuto, true);
}
//	St("L",700, @-200,@0,"buみそa_オラオラ_pride");
//Move("@StNameL/L*", 200, @200, @0, Dxl1, false);
//	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/300201290mso">
「おれたちゃ陽気な誘拐犯ッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("絵み/絵*", 300, @-1024, @0, DxlAuto, false);
	Move("絵み*", 300, -1024, @0, DxlAuto, false);

	Move("絵マ/絵*", 300, @1024, @0, DxlAuto, false);
	Move("絵マ*", 300, 1024, @0, DxlAuto, true);
Delete("絵*");

//Move("@StNameR/R*", 200, @600, @0, Dxl3, false);
//	DeleteSt("R", 200,false);
//Move("@StNameL/L*", 200, @-600, @0, Dxl3, false);//
//	DeleteSt("L", 200,true);


{	ClockPass(1848);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0304]

{	St("C",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300201300fje">
「確かになんか、わざとらしいけど――」

{	DeleteAllSt(200,true);}

{	St("C",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/300201310kms">
「こら！　待ちなさい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
//Move("@StNameC/C*", 200, @-200, @0, Dxl1, false);
	DeleteAllSt(200,true);





	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

//◆演出指定：走って追いかける

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
{	St("MR",700, @0,@100,"bu恵那_ハルヒ_angry");
Move("@StNameMR/MR*", 200, @0, @-100, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300201320fje">
「ユージロー！　追うわよ！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buユージローa_通常_hard");
	Shake("@StNameML/ML*", 200, 0, 30, 0, 0, 500, Axl3, false);
	FadeSt("ML",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/300201330ujr">
「わうわうわうわうッ！！」


{Move("@StNameML/ML*", 200, @-200, @0, Dxl1, false);
	Shake("@StNameML/ML*", 200, 0, 30, 0, 0, 500, Axl3, false);
	DeleteAllSt(200,true);}
{	St("MR",700, @0,@0,"bu恵那_ハルヒ_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300201340fje">
「な――！？　ちょっと！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300201350fje">
「そっち、逆方向！」

{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"buユージローa_通常_hard");
//	Shake($C_次, 200, 0, 30, 0, 0, 1000, null, false);
//	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/300201360ujr">
「わうわうわうわうッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DrawDelete("絵黒幕", 200, 100, null, "slide_01_01_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
{	St("C",700, @50,@0,"bu恵那_ハルヒ_shock");
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300201370fje">
「待ちなさい！　待ちなさいってばッ！」

{	St("C",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300201380fje">
「もう！　なんで今日はこんなのばっかり――」




</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 2000, 0, null);

	TextBoxDelete(150);
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	DeleteAllSt(200,true);

WaitKey(500);

{	St("L",700, @0,@50,"st双六a_通常_smile");
	FadeSt("L",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0325]
//◆演出指示：遠くで
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/300201390ksr">
「ふ――上手くいったな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

{	ClockPass(1849);}

//	TextBoxDelete(150);
	CreateTextureEX("絵ゆれ", 100, Center, Middle, "cg/bg/bg0603111半田明神_境内_通常.jpg");
	SetShade("絵ゆれ",MEDIUM);
	Zoom("絵ゆれ", 0, 2000, 2000, null, true);

{	St("C",700, @50,@0,"bu恵那_哀愁_worry");
//Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300201400fje">
「え……？」

{	SoundPlay("@xbgm08_noint",1000,450,true);
	St("C",700, @0,@0,"fu恵那_一休_hard");
	Fade("絵ゆれ", 200, 1000, null, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300201410fje">
（今の……河原屋双六？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}

	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/img/img河原屋双一.jpg");
	CreateTextureEX("絵背景100b", 1000, Center, Middle, "cg/img/img河原屋双一.jpg");
	Request("絵背景100", Smoothing);
	Zoom("絵背景100", 0, 1500, 1500, null, true);
	Move("絵背景100", 0, @100, @0, null, true);

	Move("絵背景100", 10000, @-100, @0, null, false);
	Fade("絵背景100", 500, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330a]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300201420fje">
（秋葉原を仕切る伝説の大親分、河原屋双一――）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300201430fje">
（その縄張りは小さいが、武闘派の代名詞として、戦後の闇世界にその名を轟かせたという）

{
	Fade("絵背景100b", 1000, 1000, null, true);
}
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300201440fje">
（ところが最近は一転して姿を隠し、まるで院政でも敷くかのように、陰から秋葉原を操るようになった）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300201450fje">
（一部では、『秋葉原の現人神』なんて呼ばれたりもして）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	Delete("絵背景100");
	FadeDelete("絵背景100b", 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300201460fje">
（そしてその河原屋双一と入れ替わるように、鳴り物入りでやってきた養子――）


//	St("C",700, @0,@0,"fu恵那_一休_angry");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300201470fje">
（それが、河原屋双六！）

{	St("C",700, @0,@0,"fu恵那_一休_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300201480fje">
（いつもはアダルトショップの店番で、無駄に時間を潰してるって話だけど――何でこんなところに？）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300201490fje">
（見間違い？　いや、でももしかしたら――）

{	St("C",700, @0,@0,"fu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/300201500fje">
「ミヅハちゃんの方は、陽動――！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 2000, 0, null);

	TextBoxDelete(150);
//	DeleteAllSt(200,true);

//	PrintGO("上背景", 5000);
//	DrawDelete("上背景", 300, 100, null, "slide_01_01_1", true);
	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
WaitKey(200);

	EndScene();
}
