
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1920恵那.nss_MAIN
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
	$GameName = "1930恵那.nss";
	//$GameCircle=false;

}

scene 1920恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1000">
////////////header////////////
//file name "1920恵那.nss"
//title "巫女説得交渉"
//previous "1910恵那.nss"

////////////footer////////////
//next "恵那" "1930恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);

//事件定義
	KoreJikenSet();


//◆場所：秋葉原_中央通り

	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);

	SoundPlay("@xbgm02",0,450,true);

	//FadeDelete("上背景", 1000, null, true);
	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);


{	ClockPass(1920);}

//	CreateSE("SE01","seガヤ_交通_l");
//	MusicStart("SE01",1000,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]

{	St("C",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400010mzh">
「なんと！　すごい人だかりじゃの！」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400020fje">
「あ……ほんとだ」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400030fje">
「あにのあなはわかるんだけど、なんでドンガがこんなに混んでるの？」

{	St("C",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400040fje">
「ま、まさか……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	SetVolume("SE*", 1000, 0, null);

//◆ＥＶ："ev/ev0000恵那これは事件！？.txt"
//◆ＳＥ：パララー！

	KoreJikenStart();
	DeleteAllSt(0,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400050fje">
「これは事件！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

{	ClockPass(1921);}

//	CreateSE("SE01","seガヤ_交通_l");
//	MusicStart("SE01",1000,700,0,1000,null,false);

	KoreJikenFade(true);

{	St("C",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("C",200,true);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400060mzh">
「……なんじゃそれは？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400070fje">
「う、うるさいわね！
　私だってね、忙しいんだから！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400080fje">
「早くアイスを――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("ML",700, @50,@0,"buミヅハ_通常_normal");
	DeleteAllSt(200,false);
Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400090mzh">
「アレはなんじゃ！？」

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400100fje">
「え？　アレって――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//	SetVolume("SE*", 1000, 0, null);

{	ClockPass(1922);}

//◆場所：アキバスポット_正面_修復後
//あきゅん「演出：この時に村崎は車で出ているので車を表示してはいけない」
	OnBG(10,"bg0401300アキバスポット_正面_修復後");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 11, 0, -220, "cg/bg/m/bg0401300アキバスポット_正面_修復後_m.jpg");

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//	SetVolume("@xbgm13", 1000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
{	St("C",700, @0,@50,"buミヅハ_フラット_shock");
Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400110mzh">
「く、り、ま、ん？」

{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400120fje">
「あれはやめましょう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("C",700, @-50,@0,"buミヅハ_通常_angry");
	DeleteAllSt(200,false);
//Move("@StNameC/C*", 200, @50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400130mzh">
「なぜじゃ！？　クリマン！」

{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400140fje">
「あれは食べ物じゃないわ」

{	St("C",700, @0,@0,"buミヅハ_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400150mzh">
「嘘をつくでない！　わらわは気付いたぞ！
　クリマンのマンとは、まんじゅうの意味であろ？」

{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400160fje">
「そうだけど……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("C",700, @0,@0,"buミヅハ_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400170mzh">
「はっはっは！　やはりそうであろ！
　わらわだって、まんじゅうぐらいは知っておる！」

//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400180mzh">
「クリのまんじゅう……是非是非、胃の腑に収めたい！」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400190fje">
「でもほら、アイスクリームって約束だったし……」

{	St("C",700, @0,@0,"buミヅハ_通常_angry");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 300, 30, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400200mzh">
「いやじゃいやじゃいやじゃ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("MR",700, @0,@0,"bu恵那_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400210fje">
「だめ！　いくらそんな顔でお願いしても、コレばっかりは――」

{	St("C",700, @0,@0,"buミヅハ_フラット_happy");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 300, 20, 0, 10, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400220mzh">
「クリマンクリマンクリマンクリマンクーリーマーン！」


{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 300, 5, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400230fje">
「いい加減に――あれ？
　村崎さんがいない？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	CreateTextureEX("絵演背景", 100, -230, -576, "cg/bg/l/bg0401300アキバスポット_正面_修復後_l.jpg");
	Move("絵演背景", 300, @30, @0, AxlDxl, false);
	Fade("絵演背景", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400240fje">
「ってかなんで饅頭がエコバッグに入って売られてるの？」

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
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400250fje">
「まさか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	FadeDelete("絵演背景", 500, null, true);

	TextBoxDelete(150);

{	ClockPass(1923);}

//	SetVolume("@xbgm*", 1000, 0, null);

//	SetVolume("SE*", 1000, 0, null);

//◆ＥＶ："ev/ev0000恵那これは事件！？.txt"

//◆ＳＥ：パララー！

	KoreJikenStart();
	DeleteAllSt(0,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400260fje">
「これは事件！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

//	CreateSE("SE01","seガヤ_交通_l");
//	MusicStart("SE01",1000,700,0,1000,null,false);


	KoreJikenEnd(true);

	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",200,true);


//	SoundPlay("@xbgm13",2000,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400270mzh">
「ふ……ふむ。店主がおらんのか？」

{	St("C",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400280mzh">
「ならば、仕方ないか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400290mzh">
「ん？　くんくん……」

//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400300mzh">
「な……なんじゃ、この匂いは？」

{	DeleteAllSt(200,true);}
{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400310fje">
「匂いなんてする？」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400320mzh">
「うむ！　なにやら、甘い香りが……こっちじゃ！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	DeleteAllSt(200,true);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


{	ClockPass(1924);}

//◆場所：秋葉原_裏通り
	OnBG(10,"bg0101111秋葉原_裏通り_通常");
	FadeBG(0,true);

	Delete("絵背景");
	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("C",700, @0,@50,"buミヅハ_通常_normal");
Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400330mzh">
「あれじゃ！」

{	DeleteAllSt(200,true);}

　ミヅハが指さす先には、大きな熊の人形が踊っていた。

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400340fje">
「ベアカステラ、か。よく匂い嗅げたわね」


{	St("ML",700, @0,@0,"buミヅハ_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400350mzh">
「えっへん！」

{	St("ML",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400360mzh">
「ほれ、ベアアイスというのもあるぞ！
　それならば、約束通りであろ？」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400370fje">
「はいはい、わかったわかった」





</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);



//◆演出指定：時間経過

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
WaitKey(1000);
	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]


{	St("MR",700, @50,@0,"bu恵那_通常_normal");
Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400380fje">
「はい、ベアアイス」

{	St("C",700, @-50,@0,"buミヅハ_通常_happy");
	DeleteAllSt(200,false);
Move("@StNameC/C*", 200, @50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400390mzh">
「おおおおおお！」

//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400400mzh">
「これが、ベアアイス！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("C",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400410mzh">
「いただきます！」

{	St("C",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400420mzh">
「はむ！　あむ！　はむ！　あむ！」

//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
{	Shake("@StNameC/C*", 300, 20, 0, 0, 0, 500, null, false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400430mzh">
「んんんん――――っ！」

{	St("C",700, @0,@60,"buミヅハ_通常_happy");
	Move("@StNameC/C*", 300, @0, @-90, Dxl3, false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400440mzh">
「ちべた――――い！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu恵那_通常_happy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400450fje">
「お味は？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buミヅハ_通常_smile");

	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400460mzh">
「美味い！　美味すぎる！」

//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400470mzh">
「ちべたくてあまーいソフトクリームと、てっぺんのふわふわのベアカステラが、お互いに引き立て合って――」

{	St("C",700, @0,@0,"buミヅハ_通常_happy");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400480mzh">
「さらにこのブルーベリーの蜜がすこぶる良い！
　愛おしき食感だ！　なんという美味さ！」



{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu恵那_通常_happy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400490fje">
「はは……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	ClockPass(1925);}

	SetVolume("@xbgm*", 3000, 0, null);
	CreateSE("SE10","seガヤ_交通少_l");
	MusicStart("SE10",3000,400,0,1000,null,true);


	CreateTextureEX("絵ゆれ", 100, Center, Middle, "cg/bg/bg0101111秋葉原_裏通り_通常.jpg");
	SetShade("絵ゆれ",MEDIUM);
	Zoom("絵ゆれ", 0, 2000, 2000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("C",19700, @0,@0,"fu恵那_一休_angry");
	Fade("絵ゆれ", 200, 1000, null, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400500fje">
（でも、改めてみると不思議な子だな……
　アイスもホントに食べたことがないみたいだし）

{	St("C",19700, @0,@0,"fu恵那_一休_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400510fje">
（そんな田舎って、今日本に存在するの？）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400520fje">
（っていうか、星さんが「様」づけで呼ぶくらいだから、やっぱりものすごい格式の高い家の出身とか……？）

{	St("C",19700, @0,@0,"fu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400530fje">
（自分を「神様」とか呼んでたりするし……
　まさか本当に神様だったりして――！）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400540fje">
（あれ……そういえば、確か半田明神には……）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	FadeDelete("絵ゆれ", 200, null, false);
	DeleteAllSt(200,true);

//	CreateSE("SE01","seガヤ_交通_l");
//	MusicStart("SE01",1000,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400550mzh">
「…………」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400560fje">
「どしたの？　寒い？」

{	St("ML",700, @0,@0,"buミヅハ_通常_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400570mzh">
「みなで食べた方が、うまいのじゃ」

//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400580mzh">
「みそブーと一緒に食べたかったなあ……と思っての」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400590fje">
「…………そっか」

{	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400600mzh">
「のう、恵那。
　みそブーは、あそこに閉じ込めておるのじゃろ？」

//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400610mzh">
「これからどうするつもりじゃ？」

//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400620mzh">
「警察で逮捕か？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1926);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400630fje">
「ええと、それは……」

{	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400640mzh">
「のう……恵那よ」

//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400650mzh">
「あやつらはわるくないのじゃ」

//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400660mzh">
「みそブーに無理矢理誘拐をさせたのはわらわじゃ。
　あやつらは、わらわの境遇に同情してくれたのじゃ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400670fje">
「え？　河原屋双一の命令だったんじゃ――」

{	St("ML",700, @0,@0,"buミヅハ_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400680mzh">
「みそブーくらい、ひとひねりじゃ。
　誘拐を拒否することなど、いくらでもできた」

{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400690fje">
「本当に？」

{	St("ML",700, @0,@0,"buミヅハ_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400700mzh">
「当然じゃろう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400710mzh">
「じゃが……今日は最後の日じゃ。
　わらわは半田明神を抜けて、街を見たかった」

//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400720mzh">
「それで、あやつらに無理矢理誘拐させたのじゃ。
　けっして、悪いやつらではない」

{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400730fje">
「はぁ……
　被害者からそう言われたんじゃ、しょうがないか」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400740fje">
「わかったわ！
　みそブーは、警察に突き出したりしない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//	St("MR",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400750fje">
「ただしこれからは、星さんを困らせちゃ駄目よ」

{	St("ML",700, @0,@0,"buミヅハ_通常_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400760mzh">
「星を……か」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400770fje">
「なに？　星さんが嫌い？」


{	St("ML",700, @0,@0,"buミヅハ_通常_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400780mzh">
「嫌いではないが……」

{	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400790mzh">
「おぬし、星がわらわを大切にしていると言ったな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1927);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("MR",700, @0,@0,"bu恵那_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400800fje">
「大事にしてるって。
　さっきだって、すごく心配して追いかけてたもん」

{	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400810mzh">
「だから、星を信じろ……か」

{	St("MR",700, @0,@0,"bu恵那_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400820fje">
「そうそう、そういうこと」

{	St("ML",700, @0,@0,"buミヅハ_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400830mzh">
「ふむふむ……フウリの言った通りじゃな……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400840fje">
「納得してくれた？」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400850fje">
「じゃ、一緒に半田明神に――」

{	St("ML",700, @0,@0,"buミヅハ_手構え_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400860mzh">
「……やはり、納得がいかぬ！」

//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400870mzh">
「星は、わらわを大切にしてくれているという。
　だから信じろという」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	St("ML",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400880mzh">
「しかし……星は、わらわを信じておらぬと言った」


{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400890fje">
「そ、それは――」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400900fje">
「ほら、さっきは売り言葉に買い言葉というか……」


{	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400910mzh">
「恵那よ、ならばおぬしはどうじゃ？」

//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400920mzh">
「おぬしも、好きな人のことは信じてやれるのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	St("MR",700, @0,@0,"bu恵那_通常_shy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400930fje">
「好きな人――？」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400940fje">
「あ、当たり前でしょ！」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400950fje">
「好きな人のことだったら、信じてあげる！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400960fje">
「当然のことよ、当然のこと！」

{	St("ML",700, @0,@0,"buミヅハ_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400970mzh">
「そ……そうなのか……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1928);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200400980fje">
「名探偵の言うことが、信じられない？」

{	St("ML",700, @0,@0,"buミヅハ_通常_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/200400990mzh">
「む……むう……」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/200401000fje">
「さ、ほら！
　ベアアイス食べて、おうちに戻りましょ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

WaitKey(500);



	EndScene();
}
