
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene b2213沙紅羅.nss_MAIN
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
	$GameName="b2220カゴメ.nss";
}

scene b2213沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="660">
////////////header////////////
//file name "b2213沙紅羅.nss"
//title "あなへ急げ"
//previous "b2210沙紅羅_似鳥_ノーコ.nss"

////////////footer////////////
//next "沙紅羅"（"flkagome2a" = true） "ba2220沙紅羅_似鳥_ノーコ.nss"
//next "沙紅羅"（"flkagome2a" = false） "bb2220沙紅羅_似鳥.nss"



////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2213);}

//◆場所：パチンコ屋_正面 //前シーン引き継ぎ

	OnBG(10,"bg2301100パチンコ屋_正面_通常");
	FadeBG(0,true);
	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]

{	St("ML",700, @50,@0,"bu沙紅羅_通常_hard");
	Move("@StNameML/ML*", 300, @-50, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/130100010skr">
「うし、アタシも――」


{	DeleteAllSt(200,false);
	St("C",700, @50,@0,"buユージローa_通常_sad");
	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	FadeSt("C",200,true);
	Zoom("@StNameC/C*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameC/C*", 100, 1000, 1000, Axl2, true);
}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/b22/130100020ujr">
「わう――――んっ！！」

{	DeleteAllSt(200,false);
	St("MR",700, @50,@0,"bu平次_通常_shock");
	Move("@StNameMR/MR*", 300, @-50, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b22/130100030fjh">
「待ってくれ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/130100040skr">
「ん……？　モジャモジャ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu平次_落ち込み_sad");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b22/130100050fjh">
「助けてくれ！　フウリが――死にそうなんだ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆場所：スパコン館_裏面
	CreateColorSP("黒幕１", 25000, "BLACK");

	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	OnBG(10,"bg1101300スパコン館_裏面_電柱折れ");
	FadeBG(0,true);
	DeleteAllSt(0,false);

	DrawDelete("黒幕１", 500, 100, null, "blind_01_00_1", true);


//	MusicStart("@xbgm24",1000,300,0,1000,null,true);

	SoundPlay("@xbgm22",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]

{	St("ML",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/130100060skr">
「なんでそういうことを先に言わねぇんだよ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu平次_通常_shout");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b22/130100070fjh">
「言う前に逃げただろうが！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(2214);}


//◆場所：スパコン館_通路


	CreateColorSP("黒幕１", 25000, "BLACK");

	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg1102100スパコン館_通路_通常");
	FadeBG(0,true);
	DeleteAllSt(0,false);

	DrawDelete("黒幕１", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
{
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/130100080skr">
「けど、ひとりで見てられないから来てくれって――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu平次_通常_angry");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b22/130100090fjh">
「誰にだって、得手不得手があんだろ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//	CreateColorSP("黒幕１", 25000, "BLACK");
//	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	SceneOut(5000, 1000, "blind_01_00_0");
	OnBG(10,"bg1103100スパコン館_店内_通常");
	DeleteAllSt(0,true);
	FadeBG(0,true);
	SceneIn(1000, "blind_01_00_1");

//	DrawDelete("黒幕１", 500, 100, null, "blind_01_00_1", true);

//◆場所：スパコン館_店内
//	OnBG(10,"bg1103100スパコン館_店内_通常");
//	FadeBG(0,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]



{	St("ML",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/130100100skr">
「で、フウリはどこだ！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu平次_落ち込み_sad");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b22/130100110fjh">
「それが……その……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/130100120skr">
「なんだよ？　今更なに躊躇ってんだよ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b22/130100130fjh">
「言っとくが、オレは大真面目だぞ」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b22/130100140fjh">
「コイツが、フウリだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	SetVolumeEX("@x*", 2000, 0, NULL);

//	DeleteAllSt(200,false);
//	TextBoxDelete(150);


	SetVolumeEX("@xbgm*", 4000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 5, 0, 0, 0, 500, null, false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/130100150skr">
「こいつが、って――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buユージローa_通常_sad");
	FadeSt("MR",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/b22/130100160ujr">
「くぅぅぅ――ん」

{	DeleteAllSt(200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/b22/130100170wfu">
「――――、――――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2215);}


	TextBoxDelete(150);
	
	CreateTextureEX("絵背景", 1000, Center, Middle, "cg/ev/ev2150ユージロー転倒b.jpg");
	Fade("絵背景", 1000, 1000, null, true);
	DeleteAllSt(0,true);

	SoundPlay("@xbgm24",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{
//	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
//	FadeSt("ML",200,true);
	}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/130100180skr">
「タヌキじゃねぇか」

{
//	DeleteAllSt(200,false);
//	St("MR",700, @0,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b22/130100190fjh">
「そうだ。タヌキだ」

{
//	St("MR",700, @0,@0,"bu平次_落ち込み_sad");
//	FadeSt("MR",200,true);
	}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b22/130100200fjh">
「だから、人を化かしてたんだよ」


//◆音声指示：譫言
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/b22/130100210wfu">
「もう私……こうかいしたくないんです……」

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
//	FadeSt("C",200,true);
//	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, null, false);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/130100220skr">
「フウリの声で、しゃべってる」

{
//	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
//	FadeSt("C",200,true);
	}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/130100230skr">
「ってことは本当に？」

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
//	FadeSt("C",200,true);
	}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/130100240skr">
「おい、なにやってんだ！　医者を――」

{
//	DeleteAllSt(200,false);
//	St("MR",700, @0,@0,"bu平次_落ち込み_sad");
//	FadeSt("MR",200,true);
	}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b22/130100250fjh">
「化けダヌキを診られる医者なんていねぇ」

{
//	DeleteAllSt(200,false);
//	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
//	FadeSt("C",200,true);
	}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/130100260skr">
「それじゃあ――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se動作_ドア開ける01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵背景", 500, 0, null, true);

//◆ＳＥ：扉が開く音
	Wait(500);

//	SoundPlay("@xbgm23",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{
	St("C",700, @50,@0,"bu貫太_通常_hard");
	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/b22/130100270okt">
「待たせたなッ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu平次_通常_shock");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b22/130100280fjh">
「おまえは……織田貫太！？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/130100290skr">
「それに、みそブーも？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_オラオラ_shock");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/b22/130100300mso">
「姐さんッ！？」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_オラオラ_shock");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/b22/130100310buu">
「どうしてここに？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/130100320skr">
「それが色々あって――
　っていうか、おまえらはなんで？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]

{	St("L",700, @0,@0,"buみそa_通常_hard");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/b22/130100330mso">
「ミヅハが半田明神に向かってたの、フウリの傷を治すためだったんです」

{	St("L",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/b22/130100340mso">
「半田明神にはもう一発、アザナエルとかいうヤツの弾が残ってて、それを撃てばフウリのケガを治せるから」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_sad");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/b22/130100350buu">
「姐さんと別れた後、ミヅハちゃんと半田明神に行ったんです。けど、星からものすげぇ反論を喰らって」

//【ブー】
<voice name="ブー" class="ブー" src="voice/b22/130100360buu">
「っていうかそもそも、アザナエルの本体もどこにあるのかわかんないみたいだったし……」

{	St("R",700, @0,@0,"buブーa_通常_hard");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/b22/130100370buu">
「どうすっかと思ってたら、偶然神社にいたこの人が、
『自分ならフウリのケガを治せる』って」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/130100380skr">
「……っていうか何者だ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b22/130100390fjh">
「織田貫太。古い知り合いだ」

// 台詞カット？
/*
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/130100400skr">
「ホントに治せんのか？」


{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu貫太_通常_hard");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b22/130100410fjh">
「任せろ。
　タヌキのことは、タヌキが一番良く知ってる」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/130100420skr">
「ってことはおまえも？」

*/

{
	St("MR",700, @0,@0,"bu平次_通常_shock");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b22/130100430fjh">
「あ……そういえば！」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b22/130100440fjh">
「確か昔、恵那がタヌキがどうのこうの言ってたが……
　まさか本当だったのか？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	SetVolumeEX("@xbgm*", 1500, 0, null);


//	DeleteAllSt(200,false);
	TextBoxDelete(150);


//	MusicStart("@xbgm26",1000,300,0,1000,null,true);

	CreateTextureEX("絵背景", 1000, Center, Middle, "cg/ev/ev2150ユージロー転倒b.jpg");
	Fade("絵背景", 1000, 1000, null, true);
	DeleteAllSt(0,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]


{	
//	St("C",700, @0,@0,"bu貫太_通常_sad");
//	FadeSt("C",200,true);
	}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/b22/130100450okt">
「傷が深い……
　これじゃ、間に合うかどうか――」


//◆音声指示：譫言
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/b22/130100460wfu">
「かんたさんのて……あったかい……」

{
//	St("C",700, @0,@0,"bu貫太_通常_sad");
//	FadeSt("C",200,true);
	}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/b22/130100470okt">
「頼む……フウリ……帰ってきてくれ」

{
//	St("C",700, @0,@0,"bu貫太_通常_sad");
//	FadeSt("C",200,true);
	}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/b22/130100480okt">
「オレが……オレが、悪かったんだ……！」

{
//	DeleteAllSt(200,false);
//	St("MR",700, @0,@0,"bu平次_落ち込み_sad");
//	FadeSt("MR",200,true);
	}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b22/130100490fjh">
「貫太……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	DeleteAllSt(200,false);
	TextBoxDelete(150);
	Fade("絵背景", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]


{	St("C",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/130100500skr">
「――チッ！　見てらんねぇな！」


{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/b22/130100510mso">
「姐さん！？」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/b22/130100520buu">
「どこに！？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/130100530skr">
「おまえらはここで待ってろ！」

{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/130100540skr">
「アザナエル、取ってくる！」


//◆ＳＥ：扉開いて外に

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	SetVolumeEX("@x*", 2000, 0, NULL);

	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	DeleteSt("C",200,false);


	CreateSE("SE01","se動作_ドア蹴破る");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(1000);



//◆場所：スパコン館_裏面



	CreateColorSP("絵黒幕", 16000, "BLACK");

	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	OnBG(10,"bg1101300スパコン館_裏面_電柱折れ");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

	St("C",700, @50,@0,"bu沙紅羅_頭かき_sigh");
	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	FadeSt("C",200,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]



//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/130100550skr">
（と、飛び出したはいいものの、ノーコはどこに――）




{	ClockPass(2216);}


//◆音声指示：テレビ越し
{
	SetVolumeEX("@xbgm*", 1000, 0, null);
	DeleteAllSt(200,false);	
	}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b22/130100560mrp">
『ううっ！　退いて！　退きなさい！』

{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/130100570skr">
「え？　この声って――」



//◆演出指示：b2210似鳥_ノーコ.nssのテレビの中の映像

//◆場所：あにのあな_店内



{
	DeleteAllSt(0,false);
	TextBoxDelete(150);

	CreateTextureEX("絵結果100", 100, Center, Middle, "cg/bg/bg0302111あにのあな_店内_通常.jpg");
	CreateTextureEXadd("絵結果200", 10010, Center, Middle, "cg/ef/efテレビ画面用効果フィルター.jpg");

	Zoom("絵結果100", 0, 1500, 1500, null, true);

	Fade("絵結果100", 300, 1000, null, false);
	Fade("絵結果200", 300, 300, null, false);


	St("C",700, @0,@0,"bu似鳥_通常_pain");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, null, false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/130100580nki">
『ノーコ……ノーコ……！』


{	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/130100590nki">
『今、行くから……』


//◆演出指示：テレビの中の映像ここで終わり


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,false);
	Fade("絵結果100", 300, 0, null, false);
	Fade("絵結果200", 300, 0, null, false);

	MusicStart("@xbgm07",1000,300,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("C",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/130100600skr">
「あの店は……なんだっけ？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 0, 10, 0, 0, 500, null, false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/130100610skr">
「あな！　そう、あなだ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――





//◆場所：秋葉原_中央通り

	TextBoxDelete(150);

	SceneOut(20000, 300, "slide_01_01_0");

	OnBG(10,"bg0103200秋葉原_中央通り_閉店");
	FadeBG(0,true);
	DeleteSt("C",0,true);

//◆時間：ジャンプ
{	ClockPass(2218);}
	Wait(1000);

	SceneIn(300, "slide_01_01_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
{
	St("C",700, @50,@0,"bu沙紅羅_後ろ向き_rage");
	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/130100620skr">
（……もう少し、もう少しだッ！！）

{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/130100630skr">
（フウリ……待っててくれ……）

{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/130100640skr">
（もう少しでアザナエル、届けてやるからな……！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	DeleteSt("C",200,true);

	TextBoxDelete(150);


{	ClockPass(2219);}


//◆場所：あにのあな_正面
//	OnBG(10,"bg0301111あにのあな_正面_通常");
//	FadeBG(0,true);

	SceneOut(5000, 300, "slide_01_01_0");

//	OnBG(10,"bg0301111あにのあな_正面_通常");
//	FadeBG(0,true);


	CreateTextureEX("絵背景１", 11, 0, -1152, "cg/bg/bg0301111あにのあな_正面_通常.jpg");
	Fade("絵背景１", 0, 1000, null, true);
	
	SceneIn(300, "slide_01_01_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("C",700, @50,@0,"bu沙紅羅_通常_hard");
	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/130100650skr">
（だから、ノーコ！）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/130100660skr">
（それまでアザナエル使うの、待っててくれよ！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 1500, 0, null);
	CreateColorEX("絵背景", 5000, "BLACK");
	Fade("絵背景", 2500, 1000, null, true);


	EndScene();
}
