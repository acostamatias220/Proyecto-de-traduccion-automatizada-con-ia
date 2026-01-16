
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene b2206ノーコ.nss_MAIN
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
	$GameName = "b2208千秋_恵那_ノーコ.nss";
}

scene b2206ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="370">
////////////header////////////
//file name "b2206ノーコ.nss"
//title "愛の略奪"
//previous "2200ノーコ.nss"

////////////footer////////////
//next "ノーコ" "b2208千秋_恵那_ノーコ.nss"

//◆演出指示：前半2200ノーコ.nssと同じ

//■再定義定型文
//	PrintBG("上背景", 30000);

//◆場所：秋葉原_上空
//◆場所：あにのあな_正面
//	OnBG(10,"bg0301111あにのあな_正面_通常");
//	FadeBG(0,true);

//	CreateTextureSP("絵背景１", 10, 0, -1152, "cg/bg/bg0301111あにのあな_正面_通常.jpg");

//	FadeDelete("上背景", 0, null, true);

//あきゅん「修正指示："2206ノーコ.nss"と同じような演出にお願いします」

{	ClockPass(2206);}

	PrintBG("上背景", 30000);



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
{	St("C",700, @0,@0,"bu双六a_通常_angry");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/060100010ksr">
「待て――――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//	Shake("win01/絵st*", 10000, 0, 1, 0, 0, 1000, null, false);
	Zoom("絵マスク枠", 200, 1450, 1000, Dxl1, false);
	Zoom("win01", 200, 1000, 1000, Dxl1, false);
	Move("win01/絵st1000", 200, @0, @200, Dxl1, false);
	Fade("win01/絵*", 200, 1000, null, false);
	Fade("絵マスク枠", 200, 1000, null, false);
	DrawTransition("win01/絵*", 200, 0, 1000, 100, Dxl2, "cg/data/slide_06_00_1.png", true);


//	Move("@StNameC/*", 200, @0, @150, Axl1, false);
//	DeleteSt("C",200,false);

//	Move("絵背景１", 500, @0, @1152, AxlDxl, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/060100020nko">
「え――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Zoom("絵マスク枠", 200, 0, 1000, Axl1, false);
	Zoom("win01", 200, 0, 1000, Axl1, true);
	Delete("win01/*");
	Delete("win01*");
	Delete("絵マスク枠");

	St("C",700, @0,@0,"bu双六a_通常_angry");
//	DeleteAllSt(200,false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b22/060100030ksr">
「早まるな、ノーコ！！
　まだアザナエルがあるッ！」

{
	DeleteAllSt(200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/060100040nko">
「アザナエル……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵st1000", 130, center, -550, "cg/bu/l/buノーコa_通常_normal_x01.png");
	Request("絵st1000", Smoothing);
	Rotate("絵st1000", 0, @0, @0, 180, null,true);
	Zoom("絵st1000", 0, 200, 200, null, true);


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
[text0020]
　墜落する直前、ノーコの身体が見えない腕につままれでもしたかのように、宙に浮く。

{
	CreateSE("SE01","seガヤ_ざわざわ_l");
	MusicStart("SE01",300,700,0,1000,null,true);
}
　道行く人の驚愕にも構わず、ノーコは訊ねた。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

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
	CreateTextureEX("絵マスク/絵演立絵2", 1531, center, middle, "cg/bu/buノーコa_通常_shock.png");
	Request("絵マスク/絵演立絵", Smoothing);
	Request("絵マスク/絵演立絵2", Smoothing);

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
	Move("絵マスク/絵演立絵2", 0, 512, middle, Dxl1, true);

	MoveFTP2stop();
	Delete("絵st*");

	MoveFTP2("@絵マスク/絵演立絵*", 5300, 6, 2);
//	MoveFTP2("@絵マスク/絵演立絵2", 5300, 6, 2);
	MoveFTP3("@絵マスク/絵演背景", 4300, 4, 3);



//	Move("@StNameC/*", 500, @0, @40, Axl1, false);
//	DeleteSt("C",500,true);
//	Move("絵背景１", 700, @0, @-1152, AxlDxl, true);

//	St("L",700, @0,@-100,"buノーコa_通常_normal");
//	Move("@StNameL/*", 500, @0, @100, Dxl1, false);
//	FadeSt("L",500,true);

//	CreateSE("SE02","se動作_着地");
//	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/060100050nko">
「なんのようじ？」

{
	St("L",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("L",200,true);
	}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b22/060100060ksr">
「双一親分は、この街のことならなんでもお見通しだ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b22/060100070ksr">
「てめぇの本当の望みは、そうじゃないだろ？」

{
//	DeleteAllSt(200,false);
//	St("L",700, @0,@0,"buノーコa_通常_sad");
//	FadeSt("L",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/060100080nko">
「…………」

{
//	DeleteAllSt(200,false);
//	SoundPlay("@xbgm31",0,450,true);
//	St("R",700, @0,@0,"bu双六a_通常_pride");
//	FadeSt("R",200,true);
}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b22/060100090ksr">
「今なら、たったひとつだけ、望みを叶える方法がある」

{
	St("L",700, @100,@0,"bu双六a_横向き_pride");
	FadeSt("L",200,true);
}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b22/060100100ksr">
「それが、カゴメアソビだ」

{
//	DeleteAllSt(200,false);
//	St("L",700, @0,@0,"buノーコa_通常_normal");
//	FadeSt("L",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/060100110nko">
「わたしのねがいは、いちどかなった」

{
//	St("L",700, @0,@0,"buノーコa_通常_normal");
//	FadeSt("L",200,true);
	}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/060100120nko">
「だからもう、むり」

{
//	DeleteAllSt(200,false);
	St("L",700, @100,@0,"bu双六a_横向き_sad");
	FadeSt("L",200,true);
	}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b22/060100130ksr">
「なにか、勘違いしてるみたいだな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("L",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("L",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b22/060100140ksr">
「確かに、カゴメアソビでトリガーを引けるのは一度。
　だが――」

{
	St("L",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("L",200,true);
}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b22/060100150ksr">
「願いは何度でも叶う」

{
//	DeleteAllSt(200,false);
//	St("L",700, @0,@0,"buノーコa_通常_shock");
//	FadeSt("L",200,true);
	Fade("絵マスク/絵演立絵2", 200, 1000, Dxl1, false);
	Fade("絵マスク/絵演立絵", 100, 0, Axl1, true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/060100160nko">
「え……？　どういうこと？」


{
//	DeleteAllSt(200,false);
	St("L",700, @100,@0,"bu双六a_横向き_pride");
	FadeSt("L",200,true);
}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b22/060100170ksr">
「他人に撃ってもらえば、何度でもチャンスがあるってことだよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("L",700, @100,@0,"bu双六a_横向き_normal");
	FadeSt("L",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b22/060100180ksr">
「おまえ、前は似鳥に撃たれたんだろ？
　てめぇ自身は、トリガーに触れてないわけだ」

{
//	DeleteAllSt(200,false);
//	St("L",700, @0,@0,"buノーコa_通常_sad");
//	FadeSt("L",200,true);
	Fade("絵マスク/絵演立絵", 200, 1000, Dxl1, false);
	Fade("絵マスク/絵演立絵2", 100, 0, Axl1, true);
	}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/060100190nko">
「つまり、わたしが、じぶんにあざなえるをうてば……」

{
//	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("L",200,true);
}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b22/060100200ksr">
「６分の５で、願いが叶う」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b22/060100210ksr">
「絶望して死ぬよりは、よっぽど建設的だろ？」

{
//	DeleteAllSt(200,false);
//	St("L",700, @0,@0,"buノーコa_幽霊_think");
//	FadeSt("L",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/060100220nko">
「…………」

{
//	St("L",700, @0,@0,"buノーコa_通常_sad");
//	FadeSt("L",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/060100230nko">
「でも、アザナエルのばしょが、わからない」

{
//	DeleteAllSt(200,false);
	St("L",700, @100,@0,"bu双六a_横向き_normal");
	FadeSt("L",200,true);
}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b22/060100240ksr">
「双一親分は何でも知ってる。
　今あいつらの車は、バックギャモン前で立ち往生さ」

{
//	DeleteAllSt(200,false);
//	St("L",700, @0,@0,"buノーコa_通常_sad");
//	FadeSt("L",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/060100250nko">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	ClockPass(2207);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]

{
//	St("L",700, @0,@0,"buノーコa_通常_normal");
//	FadeSt("L",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/060100260nko">
「どうして、わたしにそんなはなしを？」

{
//	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("L",200,true);
}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b22/060100270ksr">
「双一親分はな、好きなんだよ」

{
	St("L",700, @100,@0,"bu双六a_横向き_pride");
	FadeSt("L",200,true);
}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b22/060100280ksr">
「命を捨ててまで、夢を叶えたい――
　そう願うバカ野郎が、カゴメアソビをするのがな」

{
//	DeleteAllSt(200,false);
//	St("L",700, @0,@0,"buノーコa_通常_sad");
//	FadeSt("L",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/060100290nko">
「…………」

{
//	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("L",200,true);
}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b22/060100300ksr">
「どうだ、ノーコ？」

{
	St("L",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("L",200,true);
}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b22/060100310ksr">
「このギャンブル、乗る気はねぇか？」

{
//	DeleteAllSt(200,false);
//	St("L",700, @0,@0,"buノーコa_幽霊_think");
//	FadeSt("L",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/060100320nko">
「だれかのてのひらでおどるのは、しゃく」

{
//	St("L",700, @0,@0,"buノーコa_幽霊_sad");
//	FadeSt("L",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/060100330nko">
「でも――」

//◆演出指示：空へと飛び上がるノーコ

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	St("L",700, @0,@0,"buノーコa_通常_smile");
//	FadeSt("L",200,true);
//	Wait(500);
//	CreateSE("SE01","se動作_空飛ぶ02");
//	CreateSE("SE01","se戦闘_風切り音03");
	
//	MusicStart("SE01",0,700,0,1000,null,false);

//	Move("@StNameL/*", 200, @0, @-50, Axl2, false);
//	DeleteAllSt(200,true);
//	Move("絵背景１", 500, @0, @1152, AxlDxl, true);



//◆ＳＥ：空を飛ぶ
	CreateSE("SE01","se動作_空飛ぶ02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 25000, "BLACK");

	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	MoveFTP2stop();
	MoveFTP3stop();
	Delete("@絵マスク*");
	Delete("@絵背景*");
	Delete("絵演*");
	Delete("@絵ＢＧ*");
	DeleteAllSt(0,true);


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
[text0090]

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/060100340nko">
「それで、にとりのあいがえられるなら」

{
//	St("C",700, @0,@0,"bu双六a_通常_pride");
//	FadeSt("C",200,true);
}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b22/060100350ksr">
「そうこなくっちゃねぇ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 1500, 0, null);

//◆場所：秋葉原_ガード下_破壊


	TextBoxDelete(150);

	SceneOut(5000, 500, "slide_02_01_0");

	Wait(500);
	OnBG(10,"bg0102300秋葉原_ガード下_破壊");
	FadeBG(0,true);
	Delete("@絵ＢＧ*");

	SetVolumeEX("SE10", 1000, 0, null);
	SetFrequency("SE10", 1000, 1500, Dxl3);
	SceneIn(500, "slide_02_01_1");

	St("C",700, @0,@-100,"buノーコa_通常_sad");
	Move("@StNameC/*", 300, @0, @100, Dxl1, false);
	FadeSt("C",200,true);

	CreateSE("SE02","se動作_着地");
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/060100360nko">
「くるま……」

{	St("C",700, @0,@0,"buノーコa_通常_smile");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/060100370nko">
「――みつけた」

　高架線が破壊され、大量の車が立ち往生していた。

　ノーコは音もなく、トラックの側へと近づいていく。



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{
	Move("@StNameC/*", 200, @-50, @0, Axl2, false);
	DeleteAllSt(200,true);
}


	EndScene();
}
