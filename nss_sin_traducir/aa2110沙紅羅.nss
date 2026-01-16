
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene aa2110沙紅羅.nss_MAIN
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
	Wait(2000);
	$GameName = "aa2120沙紅羅.nss";
//	$GameCircle=false;

}

scene aa2110沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1240">
////////////header////////////
//file name "aa2110沙紅羅.nss"
//title "ストライプラヴ"
//previous "aa2100沙紅羅.nss"

////////////footer////////////
//next "沙紅羅" "aa2120沙紅羅.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
{	ClockPass(2110);}

//◆場所：秋葉原_ガード下
	OnBG(10,"bg0102200秋葉原_ガード下_閉店");
	FadeBG(0,true);

	if($PreGameName=="aa2100沙紅羅.nss")
	{
	Wait(2000);
	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);
	}else{
	FadeDelete("上背景", 0, null, true);
	}

//	SoundPlay("@xbgm02",0,450,true);


	CreateSE("SE10","seガヤ_交通少_l");
	MusicStart("SE10",2000,400,0,1000,null,true);

	CreateSE("SE11","seガヤ_エレキセンター内部_l");
	MusicStart("SE11",0,1,0,1000,null,true);

	SoundPlay("@xsong01",0,1,true);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_normal");
	Move("@StNameR/R*", 300, @50, @0, Dxl2, false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/100300010buu">
「ここです」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300020skr">
「なんか、小汚ぇところにあるんだな」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_normal");
	Move("@StNameL/L*", 300, @50, @0, Dxl2, false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/100300030mso">
「床、微妙に傾いてますんで気をつけて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


{	ClockPass(2111);}



	SetVolumeEX("@SE10", 3000, 0, null);
	SetVolumeEX("@SE11", 3000, 450, null);

//◆場所：エレキセンター_廊下
	SceneOut(5000, 1000, "blind_01_00_0");
	DeleteAllSt(0,true);
	OnBG(10,"bg0901200エレキセンター_廊下_閉店");
	FadeBG(0,true);
	SceneIn(1000, "blind_01_00_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300040skr">
「で、どっちだ？」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_sad");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/100300050buu">
「あ……あの奥です」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buジャブル_通常_normal");
	Move("@StNameL/L*", 300, @50, @0, Dxl2, false);
	FadeSt("L",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/aa21/100300060jbr">
「あらら？　お客さんたち！
　また来たデスカ？　さっきは大変デスネ！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300070skr">
「お、インド人じゃねぇか！
　なんだなんだ、みんな知り合いか」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_sad");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/100300080mso">
「ええと……知り合いっていうか……なぁ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_normal");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/100300090buu">
「ああ。モデルガン用意してもらったりしました」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300100skr">
「モデルガン？」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_sad");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/100300110buu">
「まあ、話せば長くなるっていうか。
　河原屋双六ってヤツがいて……」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buジャブル_通常_smile");
	FadeSt("L",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/aa21/100300120jbr">
「ねえねえ、ところでお客さん！」

{	St("L",700, @0,@0,"buジャブル_通常_happy");
	FadeSt("L",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/aa21/100300130jbr">
「カレーいらない？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300140skr">
「ンダとォ？　しばらく食い物の話は……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：恐怖演出で



//	CreateMask("絵マスク", 6000, 0, 0, "cg/data/slide_05_00_1.png", false);
//	SetAlias("絵マスク","絵マスク");
//	CreateColorEX("絵マスク/絵演色", 1510, "#000000");
//	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
//	FadeSt("C",200,false);
//	Fade("絵マスク/絵演色", 200, 1000, null, true);

	DeleteAllSt(200,false);

//	SetVolumeEX("@xbgm*", 200, 1, null);

//窓準備
	CreateAXLWindowEX("絵窓", "Y", 1600,128, 336, false);
	SetAlias("絵窓","絵窓");
	WindowAXLZoom("絵窓", "Y", 0, 0, null, true);
	CreateColorSP("絵窓/絵演色", 1510, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
//	CreateColorSP("絵窓/絵演背景", 1520, "#FFFFFF");
	CreateSE("SE01","se動物_トラ_鳴き声");

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1530, center, middle, "cg/bu/bu沙紅羅_通常_rage.png");
	Move("絵窓/絵演立絵", 0, @0, @100, null, true);
	Zoom("絵窓/絵演立絵", 0, 1500, 1500, Dxl2, true);
//	CreateTextureEX("絵窓/絵演立絵2", 1540, center, middle, "cg/bu/bu双六a_通常_shout.png");
//	Move("絵窓/絵演立絵2", 0, @0, @200, null, true);
	Request("絵窓/絵演立絵", Smoothing);
	Fade("絵窓/絵演立絵", 0, 1000, null, true);

//動作
	MusicStart("SE01",0,1200,0,1000,null,false);
//	Move("絵窓/絵演立絵*", 200, @0, @-100, Dxl2, false);
	WindowAXLZoom("絵窓", "Y", 200, 1000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300150skr">
「すんな！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	WindowAXLZoom("絵窓", "Y", 200, 0, Axl2, true);
	Delete("@絵窓*");

//	FadeDelete("絵マスク/絵演色", 200, null, false);
	St("L",700, @0,@0,"buジャブル_通常_shock");
	FadeSt("L",200,true);
	Shake("@StNameL/L*", 300, 0, 10, 0, 0, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/aa21/100300160jbr">
「おー！
　スミマセン！　ゴメンナサイ！　カタジケナイ！」

{
	CreateSE("SE01","se擬音_ギャグ_逃げる");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameL/L*", 250, @-1200, @0, null, false);
	DeleteAllSt(200,true);
}

{
//	SetVolumeEX("@xbgm02", 4000, 450, null);
	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】

<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300170skr">
「畜生！　こっちは満腹で死にそうだってのに……」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_happy");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/100300180mso">
「おお、あのウザい謎のインド人を一言で！」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_happy");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/100300190buu">
「さすがは姐さんだ！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300200skr">
「オラ、ふたりとも！　行くぞ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_shout");
	St("R",700, @0,@0,"buブーa_通常_shout");
	FadeSt("L",200,false);
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/100300210mso">
「はい！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/aa21/100300220buu">
//「はい！」

</PRE>
	SetText();
	AddText(1,"「はい！」","みそ","aa21/100300210mso",false,false,1000);
	AddText(2,"「はい！」","ブー","aa21/100300220buu",true,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

{	ClockPass(2112);}

	TextBoxDelete(150);

//◆場所：バックギャモン_正面


	SetVolumeEX("@SE11", 3000, 0, null);
	SetVolumeEX("@xsong01", 3000, 300, null);

//	SetVolumeEX("@xbgm*", 1000, 0, null);
	SceneOut(5000, 1000, "blind_01_00_0");
	DeleteAllSt(0,true);
	OnBG(10,"bg1001100バックギャモン_正面_通常");
	FadeBG(0,true);
	SceneIn(1000, "blind_01_00_1");
//	SoundPlay("@xsong01",0,200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_sad");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/100300230mso">
「姐さん……？
　なんか、顔が真っ赤――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300240skr">
「大丈夫だッ！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300250skr">
「ただ、ちょっと、熱があるだけ――」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_sad");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/100300260mso">
「それは大丈夫じゃないんじゃ……」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_hard");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/100300270buu">
「もしかしてこの感情は――」

{	St("R",700, @0,@0,"buブーa_通常_shock");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/100300280buu">
「恥じらい！？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 0, 10, 0, 0, 500, null, false);
	}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300290skr">
「恥ずかしいわけあるかッ！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300300skr">
「ただ、ちょっと、こういういかがわしい店に入るのが初めてだから――」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_smile");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/100300310buu">
「緊張してるんですね」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300320skr">
「ち、ちげぇよ！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shy");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300330skr">
「え、ええと――」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300340skr">
「邪魔するぜぇっ！！」

//◆音声指示：小声
{
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	DeleteAllSt(200,true);
	St("L",700, @0,@0,"buみそa_通常_sad");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/100300350mso">
「あ……入っちまった……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	SetVolumeEX("@xbgm*", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//◆音声指示：小声
{	St("R",700, @0,@0,"buブーa_通常_normal");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/100300360buu">
「姐さん、大丈夫かな……」

//◆音声指示：可愛い声で
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300370skr">
「こ」

//◆音声指示：可愛い声で
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300380skr">
「こ――ッ」

{	SetVolumeEX("@x*", 100, 0, null);}
//◆音声指示：可愛い声で
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300390skr">
「こん……にちは……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreatePlainSP("絵板写", 5000);
	Wait(16);
	St("L",710, @0,@0,"buみそa_通常_fear");
	St("R",700, @0,@0,"buブーa_通常_shock");
	FadeSt("L",0,false);
	FadeSt("R",0,true);
	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100a]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/100300400mso">
「え？」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/aa21/100300410buu">
//「え？」


</PRE>
	SetText();
	AddText(1,"「え？」","みそ","aa21/100300400mso",false,false,1000);
	AddText(2,"「え？」","ブー","aa21/100300410buu",true,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100b]
//◆音声指示：可愛い声で
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300420skr">
「あ……あの……アタシ、沙紅羅っていいます」

{	CreateSE("SE01","se擬音_ギャグ_ガーン01");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("L",710, @0,@0,"buみそa_オラオラ_shock");
	Shake("@StNameL/L*", 300, 0, 6, 0, 0, 500, null, false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/100300430mso">
「誰だよこの声！？」

{	St("R",700, @0,@0,"buブーa_オラオラ_pinch");
	Shake("@StNameR/R*", 300, 0, 6, 0, 0, 500, null, false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/100300440buu">
「中でなにが起こってんだッ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(2113);}

//◆場所：バックギャモン_店内
	SceneOut(5000, 1000, "blind_01_00_0");
	DeleteAllSt(0,true);
	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);
	SceneIn(1000, "blind_01_00_1");

	SoundPlay("@xbgm27",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//◆音声指示：可愛い声で
{	St("ML",700, @0,@0,"bu沙紅羅_乙女_shy");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300450skr">
「あの……このお店って……」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_shout");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/100300460mso">
「姐さんの声だった！」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/100300470buu">
「腹話術とかじゃないのか！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aa21/100300480ksr">
「なんだ、知らないで入ったのか？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_sad");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/100300490mso">
「ってアレ？　何で双六さんが？」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_sad");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/100300500buu">
「ここ……双六の店？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_smile");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aa21/100300510ksr">
「いいか嬢ちゃん。
　ここは、アダルトグッズショップだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130a]
//◆音声指示：可愛い声で
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_乙女_shy2");
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 300, 0, 3, 0, 0, 500, null, false);
	}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300520skr">
「きゃっ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_shout");
	St("R",700, @0,@0,"buブーa_通常_shout");
	Shake("@StNameL/L*", 300, 0, 8, 0, 0, 500, Dxl1, false);
	Shake("@StNameR/R*", 300, 0, 8, 0, 0, 500, Dxl1, false);
	FadeSt("L",200,false);
	FadeSt("R",200,true);}

	CreateSE("SE01","se擬音_ギャグ_ガーン01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130b]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/100300530mso">
「姐さんが『きゃっ』とか言ってるッ！！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/aa21/100300540buu">
//「姐さんが『きゃっ』とか言ってるッ！！」


</PRE>
	SetText();
	AddText(1,"「姐さんが『きゃっ』とか言ってるッ！！」","みそ","aa21/100300530mso",false,false,1000);
	AddText(2,"「姐さんが『きゃっ』とか言ってるッ！！」","ブー","aa21/100300540buu",true,true,1400);
	TypeBeginD();//―――――――――――――――――――――――――――

	St("L",700, @0,@0,"buみそa_通常_fear");
	FadeSt("L",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130c]
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/100300550mso">
「お……おかしいぞ、ブー。全部おかしい！」

{	St("R",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/100300560buu">
「どうやらオレたちは、トワイライトゾーンへと迷い込んじまったらしいぜ……」

//◆音声指示：可愛い声で
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_乙女_shy");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300570skr">
「アダルトグッズショップって、それはつまり……」

//◆音声指示：可愛い声で
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300580skr">
「……エッチな、おもちゃを、売ってるところ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aa21/100300590ksr">
「そうだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//◆音声指示：可愛い声で
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_乙女_shy2");
	Shake("@ML", 300, 8, 0, 0, 0, 500, Dxl1, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300600skr">
「そんな……やだ！　うそ……！」

//◆音声指示：可愛い声で
{	St("ML",700, @0,@0,"bu沙紅羅_乙女_shout");
	Shake("@ML", 300, 8, 0, 0, 0, 500, Dxl1, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300610skr">
「ブーちゃん！　どうして教えてくれなかったの！」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_shock");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/100300620buu">
「え……？」

//◆音声指示：可愛い声で
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_乙女_shy");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300630skr">
「こんなお店だってわかってたら、アタシ――」

//◆音声指示：可愛い声で
{	St("ML",700, @0,@0,"bu沙紅羅_乙女_shy2");
	Shake("@ML", 300, 8, 0, 0, 0, 500, Dxl1, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300640skr">
「うう……恥ずかしい……」

//◆音声指示：独り言
{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/100300650buu">
「萌えている……？
　オレ、姐さんに萌えているのか……ッ！？」

//◆音声指示：独り言
{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_cry");
	FadeSt("L",200,true);
	Shake("@StNameL/L*", 300, 0, 3, 0, 0, 500, null, false);
	}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/100300660mso">
「ウソだッ！　返せ！
　オレたちの姐さんを、返せッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2114);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aa21/100300670ksr">
「ん？　そこにいんのは……ああ、みそブーか」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_乙女_shy");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300680skr">
「え……？　どうしてふたりの名前を？」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_sad");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/100300690buu">
「知り合いというか……パシリというか……
　ボコボコにされて、無理矢理誘拐を命令されて……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_乙女_shy");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300700skr">
「つまり、お友達なのね」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_sad");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/100300710buu">
「違います」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_乙女_shy");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300720skr">
「あの……双六さん、でしたっけ？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300730skr">
「これ、ふたりが間違って持って行っちゃったんです」

　頭を下げて、沙紅羅は縞パンと女児パンツを手渡す。

{	St("ML",700, @0,@0,"bu沙紅羅_乙女_shy2");
	Shake("@StNameML/ML*", 300, 0, 3, 0, 0, 500, Dxl1, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300740skr">
「本当にごめんなさい……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aa21/100300750ksr">
「あいや、そんなに気にしなくても――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_shy");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300760skr">
「あ、あ、あ、あ、あのですねっ！」

{	St("ML",700, @0,@0,"bu沙紅羅_乙女_shy2");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300770skr">
「実はアタシ今日、メールで、すごい占いがあって、それで、あの、運命の人で、ストライプがラッキーだって！」

{	St("ML",700, @0,@0,"bu沙紅羅_乙女_shy");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300780skr">
「だから、もしかしたらコレも運命の出会い……！？
　っていう感じがして。普段は全然しないんですけど！」

{	St("ML",700, @0,@0,"bu沙紅羅_乙女_shy2");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300790skr">
「あの……だから、その……
　お願いが……あるん……です」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aa21/100300800ksr">
「なんだ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300810skr">
「あの、あの、あの……！」

{
	St("ML",700, @0,@0,"bu沙紅羅_乙女_shy2");
	St("ML",700, @0,@0,"bu沙紅羅_乙女_shout");
	FadeSt("ML",200,true);
	FadeStPro("ML", 200, 2500);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300820skr">
「わ、わたしと、アドレス交換してくださいッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{
	AgainSt("ML",700, @0,@0,"bu沙紅羅_乙女_shout");
	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/100300830mso">
「…………」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_shout");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/100300840buu">
「…………」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aa21/100300850ksr">
「…………」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_sad");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/100300860mso">
「どゆこと？」

{
	St("R",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/100300870buu">
「ま、まさか……」

{	St("L",710, @0,@0,"buみそa_通常_shout");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/100300880mso">
「知っているのか、ブー！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//窓準備
	CreateAXLWindowEX("絵窓", "Y",1600, 96, 384, false);
	SetAlias("絵窓","絵窓");
	WindowAXLZoom("絵窓", "Y", 0, 0, null, true);
	CreateColorSP("絵窓/絵演色", 1510, "#000000");
//	CreateTextureSPmul("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

	CreateColorEX("絵窓/絵演色2", 1520, "#993399");
	CreateTextureEXadd("絵窓/絵演背景", 1530, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
//	CreateColorSP("絵窓/絵演背景", 1520, "#FFFFFF");

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1540, center, middle, "cg/bu/buブーa_通常_hard.png");
	CreateTextureEX("絵窓/絵演立絵2", 1550, center, middle, "cg/bu/buブーa_通常_shout.png");
	Fade("絵窓/絵演背景", 0, 1000, null, true);
	Move("絵窓/絵演立絵", 0, @-200, @0, null, true);
	Request("絵窓/絵演立絵", Smoothing);

//動作
	WindowAXLZoom("絵窓", "Y", 200, 1000, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, false);
	Move("絵窓/絵演立絵", 1000, @200, @0, Dxl2, true);





//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0231]

{	St("R",700, @0,@0,"buブーa_通常_hard");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/100300890buu">
「ああ……オレの記憶が確かなら……」

{
	CreateSE("SE01","se擬音_ギャグ_きゃるーん");
	MusicStart("SE01",0,700,0,1000,null,false);
//	Fade("絵窓/絵演色", 300, 0, null, false);
	Fade("絵窓/絵演色2", 300, 1000, null, false);
	Fade("絵窓/絵演立絵2", 300, 1000, null, true);
//	St("R",700, @0,@0,"buブーa_通常_shout");
//	FadeSt("R",200,true);
	}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/100300900buu">
「この感情は……恋……！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2115);}


	WindowAXLZoom("絵窓", "Y", 200, 0, Dxl2, true);
	St("L",710, @0,@0,"buみそa_オラオラ_shock");
	FadeSt("L",200,true);
	Shake("@StNameL/L*", 500, 0, 10, 0, 0, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0237]
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/100300910mso">
「ななななな、なんだって――――！！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_乙女_shy");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300920skr">
「ダメ……ですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aa21/100300930ksr">
「断る」

{	DeleteAllSt(200,false);
	CreateSE("SE01","se擬音_ギャグ_リーゼント");
	St("L",700, @-80,@576,"buみそa_オラオラ_hard");
	Move("@StNameL/L*", 300, @80, @-576, Dxl1, false);
	FadeSt("L",200,true);
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("@StNameL/L*", 300, 0, 6, 0, 0, 500, null, false);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/100300940mso">
「ンダとぉッ！？」

//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/100300950mso">
「てめぇッ！　姐さんの誘いを断って――」

//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/100300960mso">
「前はやられたから、大人しくしてやったけどな！
　姐さんのこととなっちゃ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aa21/100300970ksr">
「あー、そっか。
　彼女が、おまえたちの言ってた『姐さん』か」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_乙女_shout");
	Shake("@StNameML/ML*", 300, 0, 8, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300980skr">
「アタシのこと、聞いたんですか！？」

//◆音声指示：素に戻って
{	St("MR",700, @0,@0,"fu沙紅羅_後ろ向き_rage");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);
	SetVolumeEX("@xbgm27", 100, 1, null);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100300990skr">
「……ふたりとも、変なこと言ってねぇだろうな」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_fear");
	CreateSE("SE01","se擬音_ギャグ_ガーン01");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/100301000mso">
「そ、そんな！」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_shock");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/100301010buu">
「滅相もない！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_smile");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aa21/100301020ksr">
「しかしまあ、噂に違わぬいい女、だな」

{	DeleteAllSt(200,false);
	SetVolumeEX("@xbgm27", 2000, 450, null);
	St("ML",700, @0,@0,"bu沙紅羅_乙女_shy2");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100301030skr">
「ほ、本当ですか！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aa21/100301040ksr">
「幸せになりなよ」

{	CreateSE("SE01","se動作_歩く01_l");
	MusicStart("SE01",0,700,0,1000,null,true);
	Move("@StNameMR/MR*", 300, @50, @0, Dxl2, false);
	DeleteAllSt(200,true);
	SetVolumeEX("SE*", 4000, 0, null);
	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100301050skr">
「え、ちょっと――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


{	ClockPass(2116);}

	SetVolumeEX("SE*", 300, 0, null);
//◆場所：バックギャモン_正面
	SceneOut(5000, 1000, "blind_01_00_0");
	DeleteAllSt(0,true);
	OnBG(10,"bg1001100バックギャモン_正面_通常");
	FadeBG(0,true);
	SceneIn(1000, "blind_01_00_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	St("ML",700, @-50,@0,"bu沙紅羅_通常_shout");
	Move("@StNameML/ML*", 300, @50, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100301060skr">
「待って！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aa21/100301070ksr">
「ん……？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_乙女_shy");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100301080skr">
「アタシ――ついていきますッ！！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aa21/100301090ksr">
「やめとけ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_乙女_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100301100skr">
「嫌」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aa21/100301110ksr">
「嫌って――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_乙女_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100301120skr">
「だってこれ、運命のお告げです！」

{	St("ML",700, @0,@0,"bu沙紅羅_乙女_shy2");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100301130skr">
「今、ここであなたを離したら、もう二度と捕まらない」

{	St("ML",700, @0,@0,"bu沙紅羅_乙女_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100301140skr">
「そんな気がするんですッ！！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aa21/100301150ksr">
「ふ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{	St("C",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 0, 10, 0, 0, 500, null, false);
	}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aa21/100301160ksr">
「ふはははははは！！」

{	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aa21/100301170ksr">
「おい、みそブー！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/100301180mso">
「お、おう」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/100301190buu">
「なんだよ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aa21/100301200ksr">
「おまえらの言うとおり、やっぱり、いい女だな！
　はははははは！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_乙女_shy");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100301210skr">
「お願いします……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/100301220skr">
「アタシも一緒に、連れて行ってください……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aa21/100301230ksr">
「そうか……そうだな」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aa21/100301240ksr">
「んじゃあひとつ、頼みごとを聞いてくれっかな？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndFileBlackOut(20000,2000);

	EndScene();
}
//next "沙紅羅" "aa2120沙紅羅.nss"
