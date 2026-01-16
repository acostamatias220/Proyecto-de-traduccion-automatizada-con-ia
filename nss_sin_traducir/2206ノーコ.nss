
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2206ノーコ.nss_MAIN
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
	$GameName = "2210ノーコ.nss";
}

scene 2206ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="680">
////////////header////////////
//file name "2206ノーコ.nss"
//title "ワン・モア・チャンス"
//previous "2200ノーコ.nss"

////////////footer////////////
//next "ノーコ" "2210ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2206);}

	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 0, 1000, null, true);

//◆場所：あにのあな_正面
	CreateTextureEX("絵背景２", 10, 0, -1150, "cg/bg/bg0301111あにのあな_正面_通常.jpg");
	Fade("絵背景２", 0, 1000, null, true);

	CreateTextureEX("絵背景１", 11, 0, InBottom, "cg/bg/bg0301111あにのあな_正面_通常.jpg");
	Fade("絵背景１", 0, 1000, null, true);


	FadeDelete("上背景", 0, null, true);


	CreateWindow("win01", 1500, 256, 0, 512, 576, false);
	Zoom("win01", 0, 0, 1000, null, true);
	CreateTextureEX("win01/絵背景100", 1200, Center, InBottom, "cg/ef/ef003_汎用移動.jpg");
	CreateTextureEX("win01/絵st1000", 1500, center, -1550, "cg/bu/l/buノーコa_通常_normal_x03.png");
//	Zoom("win01/絵st1000", 0, 1500, 1500, null, true);
	Request("win01/絵st1000", Smoothing);
	Rotate("win01/絵st1000", 0, @0, @0, @180, null,true);

	CreateTextureEX("絵マスク枠", 15000, center, middle, "cg/mask/ci縦ライン_00_00z.png");
	Request("絵マスク枠", Smoothing);
	Zoom("絵マスク枠", 0, 0, 1000, null, true);

//	Fade("絵色黒", 200, 0, null, true);
	DrawDelete("絵色黒", 150, 100, null, "slide_02_01_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @0,@0,"bu双六a_通常_shout");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/060100010ksr">
「待て――――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);


//	Shake("win01/絵st*", 10000, 0, 1, 0, 0, 1000, null, false);
	Zoom("絵マスク枠", 200, 1450, 1000, Dxl1, false);
	Zoom("win01", 200, 1000, 1000, Dxl1, false);
	Move("win01/絵st1000", 200, @0, @200, Dxl1, false);
	Fade("win01/絵*", 200, 1000, null, false);
	Fade("絵マスク枠", 200, 1000, null, false);
	DrawTransition("win01/絵*", 200, 0, 1000, 100, Dxl2, "cg/data/slide_06_00_1.png", true);


//	St("C",700, @0,@-20,"stノーコa_通常_normal");
//	DeleteAllSt(200,false);
//	Move("@StNameC/C*", 500, @0, @20, Dxl1, false);
//	FadeSt("C",300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100020nko">
「え――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	Zoom("絵マスク枠", 200, 0, 1000, Axl1, false);
	Zoom("win01", 200, 0, 1000, Axl1, true);
	Delete("win01/*");
	Delete("win01*");
	Delete("絵マスク枠");

{	St("C",700, @0,@0,"bu双六a_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/060100030ksr">
「早まるな、ノーコ！！　コレがあるッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100040nko">
「…………」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100050nko">
「かわらやすごろくと――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreatePlainEX("絵板写", 20);
	SetShade("絵板写", MEDIUM);

	CreateTextureEX("絵演物", 1010, Center, Middle, "cg/img/imgアザナエルa.png");
	Move("絵演物", 0, @0, @120, null, true);

	Fade("絵板写", 300, 1000, null, true);
	Move("絵演物", 300, @0, @-120, Dxl1, false);
	Fade("絵演物", 300, 1000, null, true);

	CreateTextureEX("絵st1000", 130, center, -550, "cg/bu/l/buノーコa_通常_normal_x01.png");
	Request("絵st1000", Smoothing);
	Rotate("絵st1000", 0, @0, @0, 180, null,true);
	Zoom("絵st1000", 0, 200, 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100060nko">
「アザナエル！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	FadeDelete("絵板写", 500, null, false);
	FadeDelete("絵演物", 500, null, true);

	CreateSE("SE01","se戦闘_風切り音10");
	CreateSE("SE02","se動作_ジャンプ");

	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵背景１", 500, @0, -215, AxlDxl, false);
	Fade("絵st1000", 200, 1000, null, false);
	Zoom("絵st1000", 1500, 1000, 1000, Dxl1, false);
	Move("絵st1000", 1000, @0, 20, Dxl1, 200);
	MusicStart("SE02",0,700,0,1000,null,false);
	Rotate("絵st1000", 800, @0, @0, 0, AxlDxl,true);
	Zoom("絵st1000", 600, 900, 900, AxlDxl, false);
	Move("絵st1000", 500, @0, 0, AxlDxl, true);
	SetBlur("絵st1000", true, 2, 500, 100, false);
	MoveFTP2("@絵st1000", 8300, 4, 3);

	SoundPlay("@xbgm31",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
　墜落する直前、ノーコの身体が見えない腕につままれでもしたかのように、宙に浮く。

　道行く人の驚愕にも構わず、ノーコは訊ねた。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	CreateTextureEX("絵マスク枠", 1610, center, Middle, "cg/mask/ciスラッシュ_05_01z.png");
	CreateTextureEX("絵演背景ぼかし", 500, 300, -1212, "cg/bg/bg0301111あにのあな_正面_通常.jpg");
	SetShade("絵演背景ぼかし", MEDIUM);
	Zoom("絵演背景ぼかし", 0, 2000, 2000, null, true);

	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureEX("絵マスク/絵演背景", 1520, 300, 200, "cg/bg/bg0301111あにのあな_正面_通常.jpg");
//	Rotate("絵マスク/絵演背景", 0, @0, @180, @0, null,true);
	Zoom("絵マスク/絵演背景", 0, 1200, 1200, null, true);
	Move("絵マスク/絵演背景", 0, @0, @-50, null, true);
	SetShade("絵マスク/絵演背景", MEDIUM);

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buノーコa_通常_sad.png");
	Request("絵マスク/絵演立絵", Smoothing);

//動作準備
	Move("絵マスク枠", 0, 1024, 0, null, true);
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵", 0, 512, 200, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);
	Fade("絵マスク枠", 0, 1000, null, false);

//イン動作
	Move("絵マスク", 300, 0, 0, Axl2, false);
	Move("絵マスク枠", 300, 0, 0, Axl2, false);
	Fade("絵マスク/絵演立絵", 300, 1000, null, false);
	Fade("絵演背景ぼかし", 300, 1000, null, false);
	Move("絵マスク/絵演立絵", 300, 512, middle, Dxl1, true);

	MoveFTP2stop();
	Delete("絵st*");

	MoveFTP2("@絵マスク/絵演立絵", 5300, 6, 2);
	MoveFTP3("@絵マスク/絵演背景", 4300, 4, 3);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0026]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100070nko">
「なんのつもり？」

{
	St("L",700, @0,@0,"bu双六a_通常_hard");
//	DeleteAllSt(200,false);
	FadeSt("L",200,true);
}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/060100080ksr">
「電話、とれ。双一親分が、てめぇに話がある」

{
//	St("C",700, @0,@0,"stノーコa_通常_normal");
//	DeleteAllSt(200,false);
//	FadeSt("C",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100090nko">
「わたしは、ない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{
	St("L",700, @0,@0,"bu双六a_通常_angry");
//	DeleteAllSt(200,false);
	FadeSt("L",200,true);
}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/060100100ksr">
「似鳥を、取り戻したいんだろ！？」

{
//	St("C",700, @0,@0,"stノーコa_通常_sad");
//	DeleteAllSt(200,false);
//	FadeSt("C",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100110nko">
「…………」

{	St("L",700, @0,@0,"bu双六a_通常_hard");
//	DeleteAllSt(200,false);
	FadeSt("L",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/060100120ksr">
「双一親分は、この街のことならなんでもお見通しだ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/060100130ksr">
「おまえが今まさに絶望のあまり、折角もらった命を絶とうとしてるってこともな」

{
//	St("L",700, @0,@0,"stノーコa_通常_sad");
//	DeleteAllSt(200,false);
//	FadeSt("L",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100140nko">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("L",700, @0,@0,"bu双六a_通常_normal");
//	DeleteAllSt(200,false);
	FadeSt("L",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/060100150ksr">
「だが、てめぇの本当の望みはそうじゃないだろ？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/060100160ksr">
「今なら、たったひとつだけ、望みを叶える方法がある」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/060100170ksr">
「それが、カゴメアソビだ」

{
//	St("C",700, @0,@0,"stノーコa_通常_pain");
//	DeleteAllSt(200,false);
//	FadeSt("C",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100180nko">
「…………」

{
//	St("C",700, @0,@0,"stノーコa_通常_sad");
//	FadeSt("C",200,true);
//	Move("@StNameC/C*", 400, @0, @50, Axl1, false);
//	DeleteAllSt(300,false);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100190nko">
「きくだけ、きく」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	DeleteAllSt(0,true);


	CreateSE("SE01","se動作_空飛ぶ02");
	CreateSE("SE02","se動作_一歩");
	MusicStart("SE01",0,700,0,1000,null,false);


	MoveFTP2stop();
	MoveFTP3stop();
	Delete("絵演*");
	Delete("絵背景２");
	Delete("絵マスク*");
	Fade("絵背景１", 0, 1000, null, true);
	DrawDelete("絵黒幕", 300, 100, null, "slide_02_01_0", false);
	Move("絵背景１", 500, @0, @-935, Dxl1, false);

//◆演出指示：携帯電話受け取る

	SetVolume("SE01", 500, 0, null);

	Wait(800);
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(500);

	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);

	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100200nko">
「もしもし」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100210nko">
「……なんのようじ？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/22/060100220ksi">
『双六が言ったとおりだよ』

//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/22/060100230ksi">
『てめぇにもう一度、カゴメアソビをさせてやろうと思ってな』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100240nko">
「……わたしのねがいは、いちどかなった」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/22/060100250ksi">
『オレは、人の運命を見通すのが趣味でな。
　今日のカゴメアソビも、随分前から仕込んでた』

//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/22/060100260ksi">
『けどな、いくつか全然想定してないことも起こったんだ』

//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/22/060100270ksi">
『そいつは例えば、へんなヤンキー女だったりな。
　アイツのせいで、皆が妙に希望を持ったり……』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2207);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/22/060100280ksi">
『なにもないはずの場所から、突然てめぇが生まれたり』

{	St("C",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100290nko">
「…………」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/22/060100300ksi">
『てめぇは似鳥の同人誌が実体化した姿だな』

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100310nko">
「……なぜ、わかるの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/22/060100320ksi">
『運命と運命が交差して、折り重なり、一枚の布になる。
　織りなす幾何学模様を鑑賞するのが、オレの生き甲斐だ』

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100330nko">
「……わたしはいちど、ゆめがかなった」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100340nko">
「だからもう、にとりのきもちをひきもどすことは――」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/22/060100350ksi">
『確かに、カゴメアソビでトリガーを引けるのは一度』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/22/060100360ksi">
『だが、願いは何度でも叶う』

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100370nko">
「え……？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/22/060100380ksi">
『前は似鳥に撃たれたんだろ？
　おまえ自身は、トリガーに触れてないわけだ』

//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/22/060100390ksi">
『ってぇことはつまり――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100400nko">
「わたしが、じぶんにあざなえるをうてば……？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/22/060100410ksi">
『６分の５で、願いが叶う』

//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/22/060100420ksi">
『絶望して死ぬよりは、よっぽどいいだろう』

{	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100430nko">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100440nko">
「どうして、わたしにそんなはなしを？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100450nko">
「うんめいがおりなすいとなら」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100460nko">
「あなたはそのさきに、どんなかんせいずを？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/22/060100470ksi">
『そのシリンダ、見るんだな』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateColorEX("絵色100", 9100, "BLACK");
	CreateTextureEX("絵背景100", 10000, Center, Middle, "cg/img/imgアザナエルマズル弾なし.png");
	Zoom("絵背景100", 0, 800, 800, null, true);

	Move("絵背景100", 0, @-100, @0, null, true);
	Move("絵背景100", 500, @100, @0, Dxl1, false);
	Fade("絵背景100", 500, 1000, null, false);
	Fade("絵色100", 500, 500, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100480nko">
「…………から？」

//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/22/060100490ksi">
『カゴメアソビに失敗したヤツがいてな。
　特殊な弾で、すぐに用意できるモンじゃねぇ』

//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/22/060100500ksi">
『けどな、あと一発だけ、あるんだよ。
　前のカゴメアソビの余りが、半田明神の本殿にな』

//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/22/060100510ksi">
『確か……前に撃ち損ねた奴が、奉納したんだったか』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	FadeDelete("絵背景100", 500, null, false);
	FadeDelete("絵色100", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100520nko">
「ほんでん……」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/22/060100530ksi">
『あそこは、ミヅハと歌門星が護る聖域だ。
　オレたちには手出しできねぇ』

//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/22/060100540ksi">
『だが、ノーコ。
　おまえは力を持っている』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100550nko">
「わたしに……とってきてほしい？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/22/060100560ksi">
『そうだ』

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100570nko">
「…………」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/22/060100580ksi">
『どうだ、ノーコ？
　このギャンブル、乗る気はねぇか？』

{	St("C",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100590nko">
「だれかのてのひらでおどるのは、しゃく」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100600nko">
「でも――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指示：空へと飛び上がるノーコ
	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);
	Move("@StNameC/C*", 500, @50, @-50, Axl1, false);
	DeleteAllSt(300,false);
	CreateSE("SE03","se動作_空飛ぶ02");
	MusicStart("SE03",0,700,0,1000,null,false);

	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100610nko">
「それで、にとりのあいがえられるなら」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/22/060100620ksi">
『そうこなくっちゃ――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE03", 1000, 0, null);

//◆ＳＥ：ピッ！
	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,1200,0,1000,null,false);

	Wait(800);

//◆ＳＥ：携帯放り投げる
	CreateSE("SE02","se動作_投げる");
	MusicStart("SE02",0,1200,0,1000,null,false);

	Wait(400);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("C",700, @0,@0,"bu双六a_通常_angry");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/060100630ksr">
「おいコラ！　双一親分の電話切るとか！
　ってか投げんな！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolumeEX("@xbgm*", 1500, 0, null);

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆ＳＥ：空を飛ぶ
	CreateSE("SE01","se動作_空飛ぶ02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

{	ClockPass(2208);}

//◆場所：秋葉原_上空
	OnBG(10,"bg2401100空_上空_通常");
	FadeBG(0,true);
	Delete("絵背景１");
	CreateTextureEX("絵ＢＧ100", 100, Center, -400, "cg/bg/bg2401100空_上空_通常.jpg");
	Fade("絵ＢＧ100", 0, 1000, null, true);
	CreateSE("SE10","se環境_風_l");
	MusicStart("SE10",1000,1000,0,1000,null,true);


	Move("絵ＢＧ100", 2000, @0, 0, Dxl2, false);
	DrawDelete("絵黒幕", 300, 100, null, "slide_02_01_1", true);

	SetVolume("SE01", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100640nko">
「いまさらすてるものなんてない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100650nko">
「どんなひきょうなてでもつかう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100660nko">
「わたしはわたしのしあわせのために」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100670nko">
「にとりの、こころをかえる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/060100680nko">
「にとりをかえたいと、こころから、ねがう！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("SE*", 2000, 0, null);

	Move("絵ＢＧ100", 300, @0, -200, Axl2, false);
	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);


//あきゅん「演出：10/12/17パッチで調整しました」
//	Wait(2000);
//	OnBG(10,"bg0602100半田明神_鳥居_通常");
//	FadeBG(0,true);
//	CreateTextureSP("絵背景100", 100, Center, -600, "cg/bg/bg0602100半田明神_鳥居_通常.jpg");

//	DrawDelete("絵黒幕", 300, 100, null, "slide_02_01_0", false);

//	Move("絵背景100", 800, @0, -850, Dxl1, true);
//	CreateSE("SE01","se動作_一歩");
//	MusicStart("SE01",0,700,0,1000,null,false);

//	Wait(1000);

	EndScene();
}
