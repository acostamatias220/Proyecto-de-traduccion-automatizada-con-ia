
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene b2120千秋.nss_MAIN
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
	$GameName = "b2140千秋_恵那.nss";
	//$GameCircle=false;

}

scene b2120千秋.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="820">
////////////header////////////
//file name "b2120千秋.nss"
//title "神様ＴＶ"
//previous "b2115沙紅羅_千秋_フウリ.nss"

////////////footer////////////
//next "千秋" "b2140千秋_恵那.nss"

////////////body////////////

//あきゅん「演出：暗転開始スクリプト」

//■再定義定型文
	PrintBG("上背景", 30000);

	ClockDelete(0,true);

	CreateColorSP("絵色黒", 10, "#000000");
	FadeDelete("上背景", 0, null, true);

//◆音声指示：夢にうなされるように

{	ClockTime(2120);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{
	St("C",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100010kit">
「まんじゅうこわい……」

//◆音声指示：夢にうなされるように
{
	St("C",700, @0,@0,"bu千秋_通常_pain");
	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100020kit">
「まんじゅうこわい……こわいよお……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);






//◆演出指定：スマガリスペクト

//◆場所：天国
	PrintBG("背景０", 300000);
	CreateColorSPadd("絵光", 10000, "WHITE");
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/ef/bg01100_1_天国近景.jpg");
	Delete("背景０");
	Delete("絵色黒");
	DeleteAllSt(0,true);
	FadeDelete("絵光", 2000, null, true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
{
//	St("C",700, @0,@0,"bu千秋_驚天_shy");
//	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100030kit">
「はっ！」

{
//	St("C",700, @0,@0,"bu千秋_朗らか_shock");
//	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100040kit">
「え？　ここは……どこだ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{
//	St("C",700, @0,@0,"buミヅハ_通常_think");
//	FadeSt("C",200,true);
}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/b21/200100050mzh">
「情けないやつじゃのう……」

{	St("C",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100060kit">
「ん？　この声――！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2121);}

	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	CreateCamera("Ｃ", 0, 424, 1000);
	SetAlias("Ｃ","Ｃ");

	CreateColor("絵背面色", 5, 0, 0, 1024, 1000, "#FFFFFF");
	SetAlias("絵背面色","絵背面色");

	CreateTextureSP("Ｃ/絵背景文字", 12, 0, 0, "cg/ef/bg01210_1_天国遠景縦長_アナログ.png");
	CreateTextureSP("Ｃ/絵背景", 10, 0, 0, "cg/ef/bg01210_1_天国遠景縦長.png");
	Fade("Ｃ/絵背景", 0, 1000, null, true);

	CreateTextureEX("Ｃ/絵背景後光一", 11, 0, 1, "cg/ef/bg01210_1_天国遠景縦長_後光a.png");
	CreateTextureEX("Ｃ/絵背景後光二", 11, 0, 1, "cg/ef/bg01210_1_天国遠景縦長_後光b.png");

	CreateTextureEXadd("Ｃ/絵画面模様", 9, 360, 100, "cg/ef/ef_fi_テレビ走査線.png");
	Fade("Ｃ/絵画面模様", 0, 600, null, true);

	HevenCloud(0,true);

	Delete("絵背景");

	Wait(32);
	DrawDelete("絵黒幕", 1000, 100, null, "slide_01_01_0", true);

	WaitKey(1000);

	MoveCamera("Ｃ", 3000, @0, 0, @0, AxlDxl, true);

	CreateSE("SE01","se擬音_ギャグ_ぴょこ");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("C",9, @0,250,"tvミヅハ_通常_normal");
	FadeSt("C",0,true);
	Move("@StNameC/C*", 200, @0, @-130, DxlAuto, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/b21/200100070mzh">
「久しぶりじゃの」

{
//	St("C",700, @0,@0,"bu千秋_朗らか_shock");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100080kit">
「か、神様！？」

{	St("C",9, @0,@-415,"tvミヅハ_フラット_shock");
	FadeSt("C",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/b21/200100090mzh">
「ほう。わらわの正体、良く知っておるの」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

	SoundPlay("@xbgm91",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030a]
{	St("C",9, @0,@-415,"tvミヅハ_手構え_pride");
	FadeSt("C",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/b21/200100100mzh">
「わらわは神様！
　ということはつまり、ここは――！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se擬音_ギャグ_じゃじゃーん");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("C",9, @0,@-415,"tvミヅハ_通常_smile");
	LcPro_b2120chiaki_Gokou();
	FadeSt("C",200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030b]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/b21/200100110mzh">
「天国じゃッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2122);}

	Request("@Pro*", Stop);
	Fade("Ｃ/絵背景後光一", 0, 1000, null, true);
	Delete("Ｃ/絵背景後光二");
	Delete("@Pro*");
	FadeDelete("Ｃ/絵背景後光一", 300, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030c]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100120kit">
「…………」

{	St("C",9, @0,@-415,"tvミヅハ_通常_normal");
	FadeSt("C",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/b21/200100130mzh">
「どうした？　さっきから、そんな難しい顔をして」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{
//	St("C",700, @0,@0,"bu千秋_通常_think");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100140kit">
「いや……なんかこう、既視感があるというか……
　色々無理があるような……」

{	St("C",9, @0,@-415,"tvミヅハ_通常_think");
	FadeSt("C",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/b21/200100150mzh">
「何を言っているのかさっぱりじゃ！」

{	St("C",9, @0,@-415,"tvミヅハ_通常_sigh");
	FadeSt("C",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/b21/200100160mzh">
「そんなことをしていると、すぐにお迎えが来るぞ」

{
//	St("C",700, @0,@0,"bu千秋_通常_worry");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100170kit">
「お迎えって？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("C",9, @0,@-415,"tvミヅハ_通常_normal");
	FadeSt("C",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/b21/200100180mzh">
「ここは天国。おぬしはこれから、あの世行きじゃ」

{
//	St("C",700, @0,@0,"bu千秋_朗らか_shock");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100190kit">
「…………は？」

{
//	St("C",700, @0,@0,"bu千秋_驚天_shock");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100200kit">
「え？　あ！　あ！　ああ！　あ！！」

{
//	St("C",700, @0,@0,"bu千秋_朗らか_shock");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100210kit">
「お……オレ！　死んだの！？
　ホントに！？　なんで！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2123);}

//	//TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("C",9, @0,@-415,"tvミヅハ_通常_think");
	FadeSt("C",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/b21/200100220mzh">
「まさか饅頭をノドに詰まらせて死のうとはのう……」

{
//	St("C",700, @0,@0,"bu千秋_驚天_shock");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100230kit">
「あ！　あれ？　アレで！？　ウソだろ！？」

{
//	St("C",700, @0,@0,"bu千秋_通常_pinch");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100240kit">
「そ……そんなのって……
　そんなのってないよおおおおお！！！」

{
//	St("C",700, @0,@0,"bu千秋_通常_pain");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100250kit">
「うわああああああああああん…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	//TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("C",9, @0,@-415,"tvミヅハ_通常_sigh");
	FadeSt("C",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/b21/200100260mzh">
「やれやれ……女々しいヤツじゃのう」

{
//	St("C",700, @0,@0,"bu千秋_通常_pinch");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100270kit">
「女々しいとかゆーなッ！　オレは男だ！」

{
//	St("C",700, @0,@0,"bu千秋_通常_cry");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100280kit">
「くそうッ！！　オレ、あんなことで……？」

{
//	St("C",700, @0,@0,"bu千秋_朗らか_cry");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100290kit">
「ってかやっぱりあの饅頭、おかしかったよな？」

{
//	St("C",700, @0,@0,"bu千秋_朗らか_shock");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100300kit">
「なんかこう、食い物の味じゃないどころか、人類に非友好的な味が――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2124);}

	//TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
{	St("C",9, @0,@-415,"tvミヅハ_フラット_shock");
	FadeSt("C",200,false);}
//【ミヅハ】
[text0080]
<voice name="ミヅハ" class="ミヅハ" src="voice/b21/200100310mzh">
「お、そろそろお迎えの時間じゃな」

{
//	St("C",700, @0,@0,"bu千秋_驚天_shock");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100320kit">
「な！　いや！　ちょっと待って！」

{	St("C",9, @0,@-415,"tvミヅハ_通常_hard");
	FadeSt("C",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/b21/200100330mzh">
「待つ？　おぬし、何かやり残したことでも？」

{
//	St("C",700, @0,@0,"bu千秋_通常_fear");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100340kit">
「ある！　ある！　いっぱいある！」

{	St("C",9, @0,@-415,"tvミヅハ_通常_normal");
	FadeSt("C",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/b21/200100350mzh">
「なにをやり残したというのじゃ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{
//	St("C",700, @0,@0,"bu千秋_朗らか_shock");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100360kit">
「ええと……ホラ！　お年玉！
　せっかく年越しなのに、お年玉もらってないし！」

{
//	St("C",700, @0,@0,"bu千秋_通常_pinch");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100370kit">
「後は新春初笑いも見たいし、ってか冬休み満喫したい！
　鈴姉は旅行に行くらしいからお土産も楽しみだし！」

{
//	St("C",700, @0,@0,"bu千秋_通常_cry");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100380kit">
「あとゲーム！　下田に借りたゲームも返さなきゃ行けないし、あと……そうだ！　ブルマーも返さないと！」

{	St("C",9, @0,@-415,"tvミヅハ_通常_sigh");
	FadeSt("C",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/b21/200100390mzh">
「大したことのない悩みじゃのう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2125);}

//	//TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{
//	St("C",700, @0,@0,"bu千秋_通常_shy");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100400kit">
「そんなこと言うなよう！！」

{	St("C",9, @0,@-415,"tvミヅハ_通常_sigh");
	FadeSt("C",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/b21/200100410mzh">
「もうちょっとこう、身につまされるような悩みは？」

{
//	St("C",700, @0,@0,"bu千秋_通常_worry");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100420kit">
「身につまされるような……悩み？」

{
//	St("C",700, @0,@0,"bu千秋_朗らか_sad");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100430kit">
「なんだ？　なにか……何かあったか？」

{	St("C",9, @0,@-415,"tvミヅハ_通常_think");
	FadeSt("C",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/b21/200100440mzh">
「……ないようじゃのう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	//TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("C",9, @0,@-415,"tvミヅハ_通常_normal");
	FadeSt("C",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/b21/200100450mzh">
「では、わらわはそろそろ行くとするか」

{
//	St("C",700, @0,@0,"bu千秋_驚天_shock");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100460kit">
「やだ！　ちょっと待って！」

{
//	St("C",700, @0,@0,"bu千秋_通常_cry");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100470kit">
「思い出せ！　思い出すんだ、オレ！」

{
//	St("C",700, @0,@0,"bu千秋_通常_fear");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100480kit">
「なにか……生き返らなきゃならない理由が――」

{	St("C",9, @0,@-415,"tvミヅハ_フラット_happy");
	FadeSt("C",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/b21/200100490mzh">
「さらばじゃ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2126);}

//	//TextBoxDelete(150);

//◆ＳＥ：テレビの電源が切れる
	CreateSE("SE01","seメカ_テレビ_テレビ消す");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(0,true);
	Fade("Ｃ/絵背景文字", 0, 0, null, true);
	Fade("Ｃ/絵画面模様", 0, 0, null, true);
	Fade("絵背面色", 0, 0, null, true);

	SetVolumeEX("@xbgm91", 0, 1, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{
//	St("C",700, @0,@0,"bu千秋_驚天_shock");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100500kit">
「そ……そんなあ……」

{
//	St("C",700, @0,@0,"bu千秋_通常_fear");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100510kit">
「これで……終わり……？」

{
//	St("C",700, @0,@0,"bu千秋_朗らか_shock");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100520kit">
「オレ……このまま、死んじゃうのか？」

{
//	St("C",700, @0,@0,"bu千秋_朗らか_sad");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100530kit">
「このまま……このまま？」

{
//	St("C",700, @0,@0,"bu千秋_朗らか_shock");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100540kit">
「あ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{
//	St("C",700, @0,@0,"bu千秋_通常_fear");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100550kit">
「か、神様ッ！！　聞いてくれ！」

{
//	St("C",700, @0,@0,"bu千秋_通常_pinch");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100560kit">
「わかった！　オレ！　思い出した！」

{
//	St("C",700, @0,@0,"bu千秋_朗らか_shock");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100570kit">
「オレがこのまま、死んじゃいけない理由！」

{
//	St("C",700, @0,@0,"bu千秋_朗らか_shy");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100580kit">
「オレは……オレは……」

{
//	St("C",700, @0,@0,"bu千秋_通常_fear");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100590kit">
「男らしく、生きたいんだ！　だから！」

{
//	St("C",700, @0,@0,"bu千秋_頭突き_rage");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100600kit">
「こんな格好で死ぬのは、嫌だ――――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);


{	ClockTime(2127);}




//◆演出指定：ブチン！　テレビがつく
	CreateSE("SE01","seメカ_テレビ_テレビ点ける");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵背面色", 0, 1000, null, true);
	Wait(100);
	Fade("Ｃ/絵背景文字", 300, 1000, null, true);
	Fade("Ｃ/絵画面模様", 300, 500, null, true);

	SetVolumeEX("@xbgm91", 0, 450, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("C",9, @0,@-410,"tvユージローa_通常_sad");
	FadeSt("C",200,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/b21/200100610ujr">
「おまえなぁ」

{
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100620kit">
「ユージロー？」

{	St("C",9, @0,@-410,"tvユージローa_通常_hard");
	FadeSt("C",200,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/b21/200100630ujr">
「もうちょっとまともな理由、あるだろ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	//TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{
//	St("C",700, @0,@0,"bu千秋_朗らか_sad");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100640kit">
「まともな理由……？」

{
//	St("C",700, @0,@0,"bu千秋_通常_sad");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100650kit">
「ブルマー返すとか？」

{	St("C",9, @0,@-410,"tvユージローa_通常_sad");
	FadeSt("C",200,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/b21/200100660ujr">
「ねーよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：テレビの電源が切れる
	CreateSE("SE01","seメカ_テレビ_テレビ消す");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(0,true);
	Fade("Ｃ/絵背景文字", 0, 0, null, true);
	Fade("Ｃ/絵画面模様", 0, 0, null, true);
	Fade("絵背面色", 0, 0, null, true);

	SetVolumeEX("@xbgm91", 0, 1, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0154]
{
//	St("C",700, @0,@0,"bu千秋_通常_pain");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100670kit">
「うわあああああああん！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	//TextBoxDelete(150);

{	ClockTime(2128);}

//◆演出指定：ブチン！　テレビがつく
	CreateSE("SE01","seメカ_テレビ_テレビ点ける");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵背面色", 0, 1000, null, true);
	Wait(100);
	Fade("Ｃ/絵背景文字", 300, 1000, null, true);
	Fade("Ｃ/絵画面模様", 300, 500, null, true);

	SetVolumeEX("@xbgm91", 0, 450, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("C",9, @0,@-410,"tvユージローa_通常_normal");
	FadeSt("C",200,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/b21/200100680ujr">
「あ、ちなみにブルマー、オレの首輪にあるから」

{
//	St("C",700, @0,@0,"bu千秋_通常_pinch");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100690kit">
「首輪？」

{	St("C",9, @0,@-410,"tvユージローa_通常_normal");
	FadeSt("C",200,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/b21/200100700ujr">
「これで、おまえの願い叶ったからな。
　カゴメアソビで。ブルマーの場所を知りたいって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	//TextBoxDelete(150);








//◆ＳＥ：テレビの電源が切れる
	CreateSE("SE01","seメカ_テレビ_テレビ消す");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(0,true);
	Fade("Ｃ/絵背景文字", 0, 0, null, true);
	Fade("Ｃ/絵画面模様", 0, 0, null, true);
	Fade("絵背面色", 0, 0, null, true);

	SetVolumeEX("@xbgm91", 0, 1, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{
//	St("C",700, @0,@0,"bu千秋_朗らか_shock");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100710kit">
「叶ったって……え？」

{
//	St("C",700, @0,@0,"bu千秋_朗らか_shock");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100720kit">
「カゴメアソビの願いとか……
　オレの願い、命懸けで……それ？」

{
//	St("C",700, @0,@0,"bu千秋_驚天_shock");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100730kit">
「っていうか、それ……ええええええええ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2129);}

//◆演出指定：お迎えやってくる
	CreateSE("SE01","se擬音_虚空蠢く");
	MusicStart("SE01",0,400,0,1000,null,false);

	WaitKey(2000);

	CreateTextureEX("絵背景", 100, Center, Middle, "cg/ef/bg01140_1_天国近景黒渦.jpg");

	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_00_0.png", true);

	Delete("Ｃ*");
	Delete("絵背面");
	HevenCloudEnd(0,true);

	Fade("絵背景", 0, 1000, null, true);

	SetVolumeEX("SE*", 2000, 700, null);
	DrawDelete("絵黒幕", 200, 100, null, "slide_01_00_1", true);


	CreateTextureEX("絵背景上", 110, Center, Middle, "cg/ef/bg01141_1_天国近景黒渦.jpg");
	Fade("絵背景上", 10000, 1000, null, false);
	DrawTransition("絵背景上", 20000, 0, 1000, 100, null, "cg/data/spiral_01_00_1.png", false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0174]
{
//	St("C",700, @0,@0,"bu千秋_驚天_shy");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100740kit">
「いや！　ちょ！　だめ！
　それが来ると――」

{
//	St("C",700, @0,@0,"bu千秋_通常_fear");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100750kit">
「助け――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

	Zoom("絵背景上", 10000, 5000, 5000, null, false);

{
//	St("C",700, @0,@0,"bu千秋_驚天_shock");
//	FadeSt("C",200,false);
}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100760kit">
「助けて――――――――――ッ！！」

{
//	St("C",700, @0,@0,"bu千秋_朗らか_shock");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100770kit">
「まだ死にたくな――ん！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指示：と思ったら身体を掴むのは触手だった
	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);
	WaitKey(2000);

	Delete("絵背景*");

	CreateTextureSP("絵演触手迫", 3000, Center, Middle, "cg/ef/ef_ef_悪魔触手攻撃a.jpg");
	Zoom("絵演触手迫", 0, 2000, 2000, null, true);

	CreateTextureSP("絵演触手", 2000, Center, Middle, "cg/ef/ef_ef_悪魔触手構えa.jpg");
	Zoom("絵演触手", 0, 10000, 10000, null, true);

	CreateTextureEX("絵演触手上", 2010, Center, Middle, "cg/ef/ef_ef_悪魔触手構えb.jpg");
	Zoom("絵演触手上", 0, 1250, 1250, null, true);

	CreateSE("SE02","se戦闘_ゾディアック触手01");
	Wait(32);
	MusicStart("SE02",0,700,0,1000,null,false);

	SetVolumeEX("SE01", 2000, 0, null);
	Zoom("絵演触手", 500, 1250, 1250, null, false);
	FadeDelete("絵色黒", 500, null, false);

	LcPro_b2120_Syokusyu("@絵演触手", "@絵演触手上");

	CreateTextureSP("絵演千秋", 2100, -400, -290, "cg/ev/l/ev1920千秋しまぱんa_l_千秋のみ.png");

	CreateTextureSP("絵演触手掴", 2110, -190, 110, "cg/ef/ef_ct_悪魔触手構えa.png");

	Wait(32);
	MoveFFP1("@絵演千秋",5000);
	MoveFFP2("@絵演触手掴",5000);

	CreateTextureSP("絵演触手掴弐", 2090, 120, 30, "cg/ef/ef_ct_悪魔触手構えb.png");

	$ループムーブナット名 = "@絵演触手掴弐";
	$ループムーブタイム = 5000;
	CreateProcessEX("プロセスショクシュ", "FlyMovingXXX");
	Request("プロセスショクシュ", Start);


	CreateTextureSP("絵演触手掴参", 2110, 480, -290, "cg/ef/ef_ct_悪魔触手構えc01.png");

	$ループムーブナット名２ = "@絵演触手掴参";
	$ループムーブタイム２ = 20000;
	CreateProcessEX("プロセスショクシュサン", "FlyMovingXXX2");
	Request("プロセスショクシュサン", Start);

	CreateSE("SE01","se戦闘_ゾディアック触手02");
	MusicStart("SE01",2000,700,0,1000,null,true);
	Zoom("絵演触手迫", 500, 1000, 1000, null, false);
	FadeDelete("絵演触手迫", 500, null, true);


{
//	St("C",700, @0,@0,"bu千秋_驚天_shock");
//	FadeSt("C",200,false);
}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0183]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100780kit">
「いやっ！　なんか！　身体掴んで！
　ぬふっ！　ちょ！」

{
//	St("C",700, @0,@0,"bu千秋_驚天_shy");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100790kit">
「え？　嫌だ！　服脱がしたり！　手と足掴んだり！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 5000, 1000, null, false);

	//TextBoxDelete(150);

{
//	St("C",700, @0,@0,"bu千秋_通常_pinch");
//	FadeSt("C",200,false);
}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100800kit">
「ぬはっ、バカ！　離せ！
　いやっ、そこ、スカートの中！　男の子の大事な！」

{
//	St("C",700, @0,@0,"bu千秋_朗らか_cry");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100810kit">
「いやっ！　ばかあっ！　さ、触っちゃ――」

{
//	St("C",700, @0,@0,"bu千秋_通常_pain");
//	FadeSt("C",200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/200100820kit">
「らめえええええッ！！」
</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

	CreateColorEX("絵色黒上", 5010, "#000000");
	Fade("絵色黒上", 1000, 1000, null, false);

	Request("プロセス*", Stop);
	Delete("プロセス*");
	Delete("絵演*");
	Delete("Pro*");

	MoveFFP1stop();
	MoveFFP2stop();

	EndScene();
}
