
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ab2200沙紅羅.nss_MAIN
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
	$GameName = "ab2210沙紅羅_h.nss";
//	$GameCircle=false;

//※↑ab2051ノーコ.nssの飛び方を参考に設定（mngw 10/14）


}

scene ab2200沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1920">
////////////header////////////
//file name "ab2200沙紅羅.nss"
//title "奇跡の代償"
//previous "ab2150沙紅羅_似鳥_ノーコ.nss"

////////////footer////////////
//next "沙紅羅" "ab2210沙紅羅_h.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);


//◆場所：似鳥マンション_正面
	OnBG(10,"bg1302100似鳥マンション_正面_通常");

	CreateTextureEX("絵背景100", 2000, Center, @-100, "cg/bg/l/bg1302100似鳥マンション_正面_通常_l.jpg");

	SoundPlay("@xbgm26",0,450,true);

	FadeBG(0,true);

	if($PreGameName=="ab2150沙紅羅_似鳥_ノーコ.nss"){
	FadeDelete("上背景", 2000, null, true);
{	ClockPass(2200);}
	}else{
	FadeDelete("上背景", 0, null, true);
{	ClockPass(2200);}
	}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("MR",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab22/000200010mrp">
「こんどは……ノーコ……ノーコちゃんが……」


//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab22/000200020mrp">
「血が……首に自らつくった切り傷から……
　血が吹き出して……ああっ、もう嫌ッ！」

{	St("C",19010, @0,@0,"fu沙紅羅_通常_rage");
	DeleteAllSt(200,false);
	Fade("絵背景100", 200, 1000, null, false);
	FadeSt("C",200,true);
	Shake("絵背景100", 500, 5, 5, 0, 0, 500, null, false);
	Shake("@StNameC/C*", 500, 0, 5, 0, 0, 500, null, false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200030skr">
「バッキャロ――ッ！！
　なんで――なんで……そんなこと……！！」

{	St("C",19010, @0,@0,"fu沙紅羅_通常_pinch");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200040skr">
「ノーコ……バカヤロウ……死んだら……なにも……」


{	St("ML",700, @0,@0,"buみそa_オラオラ_pinch");
	FadeDelete("絵背景100", 200, null, false);
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab22/000200050mso">
「なんなんだよくそッ！！　救急車ッ！！」


{	DeleteAllSt(200,true);
	TextBoxDelete(150);}

//◆ＳＥ：遠くから、パトカーの音
{
	CreateSE("SE01","seメカ_車_パトカーサイレン_l");
	MusicStart("SE01",2000,400,0,1000,null,true);
	WaitKey(4000);
	SetVolumeEX("SE*", 3000, 0, null);
}

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]

{	St("ML",700, @0,@0,"buみそa_オラオラ_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab22/000200060mso">
「――の前に、パトカーかっ！
　そういや、ネットで中継してたもんな……」

{	St("MR",700, @0,@0,"buブーa_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab22/000200070buu">
「姐さん……同人誌持って、行って下さい」


//【ブー】
<voice name="ブー" class="ブー" src="voice/ab22/000200080buu">
「向こうの非常階段なら、逃げ切れます」


{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200090skr">
「は？　なにを――」


{	St("MR",700, @0,@0,"buブーa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab22/000200100buu">
「今夜が、弟くんと会えるチャンスなんでしょう？
　約束、したんですよね？　だったら行かなきゃ！」


//【ブー】
<voice name="ブー" class="ブー" src="voice/ab22/000200110buu">
「やっと、同人誌を手に入れたんですよ」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200120skr">
「でも――」


{	St("ML",700, @0,@0,"buみそa_オラオラ_pride");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab22/000200130mso">
「心配しないで下さい！
　こっちは、オレたちがなんとかします」

{	St("ML",700, @0,@0,"buみそa_オラオラ_normal");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab22/000200140mso">
「なあ、ブー？」

{	St("MR",700, @0,@0,"buブーa_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab22/000200150buu">
「おう！　任せて下さい！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200160skr">
「…………でも」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_hard");
	St("R",700, @0,@0,"buブーa_通常_hard");
	FadeSt("R",200,false);
	FadeSt("L",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0038a]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab22/000200170mso">
「姐さんッ！！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/ab22/000200180buu">
//「姐さんッ！！」

</PRE>
	SetText();
	AddText(1,"「姐さんッ！！」","みそ","ab22/000200170mso",false,false,1000);
	AddText(2,"「姐さんッ！！」","ブー","ab22/000200180buu",true,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0038b]
{	St("C",700, @0,@0,"bu沙紅羅_頭かき_think");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200190skr">
「…………ぅっ、うう……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200200skr">
「ふたりとも、悪いッ！！」


{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200210skr">
「また、後で会おうなッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_smile");
	St("R",700, @0,@0,"buブーa_通常_smile");
	FadeSt("L",200,false);
	FadeSt("R",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0069]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab22/000200220mso">
「はい！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/ab22/000200230buu">
//「はい！」

</PRE>
	SetText();
	AddText(1,"「はい！」","みそ","ab22/000200220mso",false,false,1000);
	AddText(2,"「はい！」","ブー","ab22/000200230buu",true,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

//	SetVolumeEX("@xbgm*", 4000, 0, null);

	TextBoxDelete(150);

	CreateSE("SEL1","se動作_走る02_l");
	MusicStart("SEL1",300,700,0,950,null,true);
	SetFrequency("SEL1", 2000, 1000, null);

	SceneOut(5000, 1000, "blind_01_00_0");


{	ClockPass(2202);}

//◆場所：似鳥マンション_エントランス
	OnBG(10,"bg1301100似鳥マンション_エントランス_通常");
	FadeBG(0,true);
	DeleteAllSt(0,true);

	CreateTextureEX("絵背景200", 2000, Center, @-100, "cg/bg/l/bg1301100似鳥マンション_エントランス_通常_l.jpg");

	CreateSE("SE01","seメカ_車_パトカーサイレン_l");
	MusicStart("SE01",1000,300,0,1000,null,false);

	SceneIn(1000, "blind_01_00_1");

	SetVolumeEX("SEL1", 300, 0, null);

//あきゅん「修正指示：パトカーぽいあかりを入れて沙紅羅の顔を入れる、冒頭部分だけ」
//※対応しました（mngw 11/18）

	CreateColorEXadd("回転灯", 15000, "RED");
	Fade("回転灯", 500, 350, Axl3, true);
	Fade("回転灯", 500, 0, Dxl3, true);

	WaitKey(300);

	Fade("回転灯", 300, 350, Axl3, true);
	Fade("回転灯", 300, 0, Dxl3, true);

	WaitKey(300);

	Fade("回転灯", 300, 350, Axl3, true);
	Fade("回転灯", 300, 0, Dxl3, true);

	WaitKey(300);

	Fade("回転灯", 300, 350, Axl3, true);
	Fade("回転灯", 300, 0, Dxl3, true);

	Fade("絵背景200", 500, 1000, null, true);

	Delete("回転灯");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]

{	St("C",19010, @60,@0,"fu沙紅羅_後ろ向き_normal");
	Move("@StNameC/C*", 200, @-60, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200240skr">
（入り口前にパトカー――）


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200250skr">
（間一髪だな）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);
	TextBoxDelete(150);

	CreateSE("SEL01","se動作_走る02_l");
	MusicStart("SEL01",300,700,0,1000,null,true);

	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	SetVolumeEX("SE01", 3000, 0, null);

	OnBG(10,"bg0106100秋葉原_蔵前橋通り_通常");
	FadeBG(0,true);

	Delete("絵背景*");
	Wait(500);
	CreateTextureEX("絵背景200", 2000, Center, @-100, "cg/bg/l/bg1301100似鳥マンション_エントランス_通常_l.jpg");
	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

	SetVolumeEX("SEL01", 300, 0, null);

{	St("C",19010, @0,@0,"fu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0074]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200260skr">
（さて……と）


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200270skr">
（同人誌も手に入ったし）


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200280skr">
（あとは、弟のところに行って――）

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(500,false);
	Fade("絵背景200", 500, 0, null, false);
	FadeSt("ML",500,true);}
{	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200290skr">
「なんて、できるわけねーよな。
　やっぱり――」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200300skr">
（でも……双六さんに……謝る？）

{	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200310skr">
（自分の願いは自分の力で叶えるとか、あんだけ大げさにタンカをきっといて？）

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200320skr">
（…………）

{	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200330skr">
（駄目だ駄目だ！）

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200340skr">
（アタシの力で、何とか……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Fade("絵背景200", 500, 1000, null, false);
{	St("C",19010, @0,@0,"fu沙紅羅_通常_sad");
	FadeSt("C",500,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200350skr">
（…………）

{	St("C",19010, @0,@0,"fu沙紅羅_頭かき_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200360skr">
（なんとか、できるわけねぇだろ）


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200370skr">
「どうすりゃ、いいんだよ……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	SetVolumeEX("@xbgm*", 500, 0, null);

	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

	DeleteAllSt(0,false);
	Fade("絵背景200", 0, 0, null, false);

	CreateTextureEX("絵背景300", 1000, 0, -448, "cg/bg/bg2401100空_上空_通常.jpg");
	Move("絵背景300", 1500, @0, 0, DxlAuto, false);
	Fade("絵背景300", 0, 1000, null, false);

//	OnBG(10,"bg1301100似鳥マンション_エントランス_通常");
//	FadeBG(0,true);

	Shake("絵背景300", 1500, 5, 5, 0, 0, 500, null, false);

	St("ML",700, @0,@0,"bu沙紅羅_後ろ向き_shy");
	FadeSt("ML",0,true);

	Fade("絵色白", 500, 0, null, true);
	Delete("絵色白");

//◆音声指示：遠くから


{	ClockPass(2203);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab22/000200380mzh">
「ぎゃああああ！！」


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ab22/000200390kms">
「逃がしませんッ！！」


{	FadeDelete("絵背景300", 200, null, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200400skr">
「え？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//※下倉注：ここはメインルートと同様背景「bg0106100秋葉原_蔵前橋通り_通常」で


//◆演出指定：夜空を飛来するいくつもの破魔矢
	CreateTextureEX("EF100", 2000, Center, Middle, "cg/ef/ef破魔矢飛来a.jpg");
	Zoom("EF100", 0, 2000, 2000, Dxl2, true);
	SetBlur("EF100", true, 2, 500, 50, false);

	CreateSE("SE01","se戦闘_弓矢_矢放つ");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("EF100", 200, 1000, null, false);
	Zoom("EF100", 200, 1000, 1000, Dxl2, true);
	Zoom("EF100", 300, 5000, 5000, Axl3, false);
	FadeF4("EF100", 300, 1000, 3000, 0, 0, Axl3, false);

	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",0,true);


	Wait(200);
	Fade("EF100", 100, 0, null, true);
	Delete("EF100");

	Wait(200);


//◆ＳＥ：トットット！　アスファルトに突き刺さる
	CreatePlainSP("揺用", 15000);

	CreateSE("SE01","se戦闘_弓矢_乱射02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("揺用", 200, 7, 12, 0, 0, 1000, Dxl1, false);
	Wait(200);
	Shake("揺用", 200, 12, 5, 0, 0, 1000, Dxl1, false);
	Wait(200);
	Shake("揺用", 300, 12, 12, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 300, 0, null, true);
	Delete("揺用");

	SoundPlay("@xbgm22",0,450,true);

	Wait(200);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("MR",710, @60,@0,"buミヅハ_通常_angry");
	Move("@StNameMR/MR*", 200, @-120, @0, DxlAuto, false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab22/000200410mzh">
「うぎゃ！　ぎゃ！　ぎゃ！」


{	St("ML",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200420skr">
「おいこら！　テメー何しやがるッ！！」


{	St("C",700, @-60,@0,"bu歌門_通常_normal");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 500, @60, @0, DxlAuto, false);
	FadeSt("C",500,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ab22/000200430kms">
「なんですかあなたは？」


{	St("ML",700, @0,@0,"bu沙紅羅_通常_angry");
	St("MR",710, @0,@0,"buミヅハ_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200440skr">
「誰だって構わねーだろ！
　こんなガキに矢撃つなんて、頭おかしいぞ！」

{	Shake("@StNameMR/MR*", 100, 5, 5, 0, 0, 500, null, false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab22/000200450mzh">
「そ、そうじゃ！　暴力反対！」


{	St("C",700, @0,@0,"bu歌門_威圧_shout");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ab22/000200460kms">
「黙らっしゃい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("MR",700, @-60,@0,"buミヅハ_通常_sigh");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @60, @0, DxlAuto, false);
	FadeSt("MR",200,true);
	Shake("@StNameMR/MR*", 100, 5, 5, 0, 0, 500, null, false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab22/000200470mzh">
「ひ！」

{	St("C",700, @0,@0,"bu歌門_威圧_angry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ab22/000200480kms">
「化け狸の命を救うために、アザナエルを使おうなどと、軽率もいいところです！」

{	St("MR",700, @0,@0,"buミヅハ_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab22/000200490mzh">
「し……しかし、フウリは我が恩人――
　なのに命の危機を助けられぬなどと……」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200500skr">
「フウリ？　フウリがどうしたんだ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2204);}


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab22/000200510mzh">
「ノーコに傷を負わされて……瀕死の状態らしいのじゃ」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_rage");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200520skr">
「な……なんだとぉッ！？
　それ、本当の話か！？」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab22/000200530mzh">
「モジャモジャの……平次の話じゃ。
　あやつはそのような嘘をつくような男ではない」

{	St("MR",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab22/000200540mzh">
「だからわらわは、いてもたってもいられず……
　アザナエルを使って、フウリの命を救おうと約束した」

{	St("C",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ab22/000200550kms">
「アザナエルの場所もわからないのにですか？」

{	St("C",700, @0,@0,"bu歌門_通常_think");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ab22/000200560kms">
「誰かを救うということは、誰かを救わぬということ。
　しかも、ミヅハ様の力は限られています」

{	St("C",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ab22/000200570kms">
「それでも、フウリ様を救う覚悟がおありですか」

{	St("C",700, @0,@0,"bu歌門_通常_think");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ab22/000200580kms">
「ノーコのように、また裏切られるかもしれないのに？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("MR",700, @0,@0,"buミヅハ_ダウナー_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab22/000200590mzh">
「…………」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200600skr">
「ノーコのように……？」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab22/000200610mzh">
「……ノーコは、わらわの友達じゃ」

{	St("C",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ab22/000200620kms">
「でも、彼女はミヅハ様を傷つけた」

{	St("MR",700, @0,@0,"buミヅハ_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab22/000200630mzh">
「じゃからアレは、一時の気の迷いで――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("C",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ab22/000200640kms">
「一時の気の迷いでも、切りつけますか？」


{	St("ML",700, @0,@0,"bu沙紅羅_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200650skr">
「大丈夫ッ！！」

{	St("MR",700, @0,@0,"buミヅハ_通常_surprise");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab22/000200660mzh">
「え……？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200670skr">
「アタシに、任せとけ！」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200680skr">
「そいつはただの、間違いだ。
　偶然に偶然が重なった、不幸な事故だ」



//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200690skr">
「だからアタシが、最初から全部、やり直させてやる」

{	St("MR",700, @0,@0,"buミヅハ_通常_surprise");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab22/000200700mzh">
「やり直す……？」

{	St("C",700, @0,@0,"bu歌門_通常_think");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ab22/000200710kms">
「馬鹿な。そんなことができるはずが――」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200720skr">
「できるのさ。アザナエルを使ってな」

{	St("MR",700, @0,@0,"buミヅハ_通常_surprise");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab22/000200730mzh">
「おぬし――
　アザナエルがどこにあるのか、知っておるのか！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2205);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200740skr">
「もちろん」

{	St("C",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ab22/000200750kms">
「場所を教えなさい」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200760skr">
「やなこった！」

{	St("C",700, @0,@0,"bu歌門_威圧_shout");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ab22/000200770kms">
「なんですって！？
　アザナエルは、そもそも我々が封じていたもの」


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ab22/000200780kms">
「年が変わるまで、アザナエルを地下に封じれば、あの禍々しい力も消えるのです」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200790skr">
「あの銃が全ての元凶……ってわけだな」

{	St("C",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ab22/000200800kms">
「その通り。ですから私には取り返す義務が――」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200810skr">
「断る」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200820skr">
「これは、アタシがやらなきゃならない。
　アタシにしか、出来ないことなんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("C",700, @0,@0,"bu歌門_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ab22/000200830kms">
「しかし――！」

{	St("MR",700, @0,@0,"buミヅハ_手構え_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab22/000200840mzh">
「星！　しばし黙っておれ！」


{	St("C",700, @0,@0,"bu歌門_通常_think");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ab22/000200850kms">
「…………」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab22/000200860mzh">
「沙紅羅よ。
　やってくれるのじゃな？」


{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200870skr">
「神様に誓ってやる！」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab22/000200880mzh">
「……本当じゃな？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200890skr">
「天地神明に誓って！」

{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab22/000200900mzh">
「沙紅羅……」

{	St("C",700, @0,@0,"bu歌門_威圧_shout");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ab22/000200910kms">
「ミヅハ様！　騙されてはなりません！
　こんなどこの馬の骨とも知れない女――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	St("ML",700, @0,@0,"bu沙紅羅_通常_rage");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200920skr">
「ンダと！？　アタシが嘘つくってのか？」

{	St("C",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ab22/000200930kms">
「その可能性は否定できないと――」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"fu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200940skr">
「この目を見ても、アタシが嘘つきだって！？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu歌門_通常_think");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ab22/000200950kms">
「…………」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"fu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000200960skr">
「…………」


{	DeleteAllSt(200,true);
	SetVolumeEX("@xbgm*", 2000, 0, null);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab22/000200970mzh">
「星よ。
　わらわにもう一度だけ、チャンスをくれぬか？」


//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab22/000200980mzh">
「皆と出会い、皆と話し、皆と苦しみ、皆と喜び――
　わらわは、人を信じることを学んだ」


//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab22/000200990mzh">
「人を信じることなくして、神たる資格があるか？」

{	St("C",700, @0,@0,"bu歌門_通常_think");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ab22/000201000kms">
「しかし、あなたはあれほど裏切られても――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//バックギャモンテーマ準備
	SoundPlay("@xsong01",0,1,true);
	SoundPlay("@xsong01_noeff",0,1,true);


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab22/000201010mzh">
「過ちを許すことこそ、神の果たす役目ではないか？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201020skr">
「ああ……そうか……」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201030skr">
「それが、神様……」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab22/000201040mzh">
「頼む、沙紅羅！」


//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab22/000201050mzh">
「フウリを――皆を、救っておくれ」


{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201060skr">
「おうよ！」

{	SoundPlay("@xbgm30",0,450,true);
	St("ML",700, @0,@0,"bu沙紅羅_後ろ向き_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201070skr">
「暴走集団百野殺駆<RUBY text="ヘッド">頭</RUBY>・月夜乃沙紅羅に、任せとけッ！！」




</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SceneOut(5000, 1000, "blind_01_00_0");

	Wait(2000);

{	ClockPass(2206);}


//◆場所：秋葉原_中央通り

	OnBG(10,"bg0103200秋葉原_中央通り_閉店");
	DeleteAllSt(0,false);
	FadeBG(0,true);

	WaitKey(1000);


	SceneIn(1000, "blind_01_00_1");


	CreateAXLWindowEX("横割り", "Y",18500, 50,384, false);
	WindowAXLZoom("横割り", "Y",0, 0, null, true);
	CreateTextureSP("横割り/絵背景", 1400, 0, Middle, "cg/bg/bg0103200秋葉原_中央通り_閉店.jpg");
	SetShade("横割り/絵背景", HEAVY);
	Zoom("横割り/絵背景", 0, 2000, 2000, null, true);

	CreateTexture("横割り/沙紅羅", 18010, @0, InBottom, "cg/fu/fu沙紅羅_通常_normal.png");
	CreateTexture("横割り/沙紅羅hard", 18010, @0, InBottom, "cg/fu/fu沙紅羅_通常_hard.png");
	Fade("横割り/沙紅羅hard", 0, 0, null, true);
	CreateTexture("横割り/沙紅羅angry", 18010, @0, InBottom, "cg/fu/fu沙紅羅_通常_angry.png");
	Fade("横割り/沙紅羅angry", 0, 0, null, true);
	
	SetAlias("横割り/沙紅羅","横割り/沙紅羅");
	Move("横割り/沙紅羅", 0, @-150, @0, null, true);
	Fade("横割り/沙紅羅", 0, 0, null, true);

	WindowAXLZoom("横割り", "Y",300, 1000, Dxl2, true);

	Move("横割り/沙紅羅", 200, @150, @0, DxlAuto, false);
	Fade("横割り/沙紅羅", 200, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201080skr">
（そうだ……）

{	Move("横割り/沙紅羅hard", 200, @0, @0, null, false);
	Fade("横割り/沙紅羅hard", 200, 1000, null, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201090skr">
（恥ずかしがってなんていられるかッ！）


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201100skr">
（アタシはただの人間だ！
　力のない、ちっぽけな女だ！）

{	Move("横割り/沙紅羅angry", 200, @0, @0, null, false);
	Fade("横割り/沙紅羅hard", 200, 0, null, false);
	Fade("横割り/沙紅羅angry", 200, 1000, null, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201110skr">
（そんなアタシが、身の丈に合わない希望を持つ！）


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201120skr">
（あり得ないことを、起こしたいと強く願う！）


{	Move("横割り/沙紅羅hard", 200, @0, @0, null, false);
	Fade("横割り/沙紅羅angry", 200, 0, null, false);
	Fade("横割り/沙紅羅hard", 200, 1000, null, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201130skr">
（似鳥や、ノーコや、フウリのためじゃない）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201140skr">
（アタシは、誰より――双六さんのために！）


{	Fade("横割り/沙紅羅", 0, 0, null, false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201150skr">
（だから――そのために、アンタがいるんだろ？）


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201160skr">
（なあ、神様……！？）



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	Move("横割り/沙紅羅hard", 200, @150, @0, AxlAuto, false);
	Fade("横割り/沙紅羅hard", 200, 0, null, true);

	WindowAXLZoom("横割り", "Y",300, 0, Dxl2, true);

	TextBoxDelete(150);


	SceneOut(5000, 1000, "blind_01_00_0");

	Wait(2000);

	DeleteAllSt(0,false);


{	ClockPass(2207);}

//◆場所：秋葉原_ガード下

	OnBG(10,"bg0102300秋葉原_ガード下_破壊");
	FadeBG(0,true);

	SceneIn(1000, "blind_01_00_1");

	WaitKey(500);
	PrintGO("上背景", 30000);

{	SetVolumeEX("@xbgm*", 4000, 0, null);}

	SetVolumeEX("@xsong01", 3000, 250, null);

//◆場所：バックギャモン_正面
	OnBG(10,"bg1001100バックギャモン_正面_通常");
	FadeBG(0,true);

	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);
	
	WaitKey(500);
	PrintGO("上背景", 30000);

{	ClockPass(2208);}

//◆場所：バックギャモン_店内
	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);

	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

//あきゅん「修正指示：このシーンＳＥＡＶでお願いします」
//※沙紅羅が電話を取るところまでバックでずっと鳴っている（BGM扱い）ようにしてあります。（mngw 11/18）
//あきゅん「演出：↑バックギャモンのテーマにしました」



//	CreateSE("SE10","seガヤ_AV_l");
//	MusicStart("SE10",2000,500,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]

{	St("MR",700, @60,@0,"bu双六a_横向き_normal");
	Move("@StNameMR/MR*", 500, @-60, @0, DxlAuto, false);
	FadeSt("MR",500,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/000201170ksr">
「――来たか」


{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201180skr">
「はい」

{	St("MR",700, @0,@0,"bu双六a_横向き_pride");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/000201190ksr">
「なんか、欲しい物ができたか？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201200skr">
「はい。だから――」


{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201210skr">
「アザナエルを、撃たせて下さいっ！」

{	St("MR",700, @0,@0,"bu双六a_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/000201220ksr">
「なにが欲しい？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201230skr">
「アタシは――」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201240skr">
「アタシは、全てを、なかったことにしたい」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201250skr">
「アザナエルのせいで起こった出来事を、みんな、消し去りたい」

{	St("MR",700, @0,@0,"bu双六a_横向き_pride");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/000201260ksr">
「他人のために、命を賭ける？
　はっ！　見上げた心意気だな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
{	St("MR",700, @0,@0,"bu双六a_横向き_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/000201270ksr">
「けど……わかってんだろうな？」

{	St("MR",700, @0,@0,"bu双六a_横向き_sigh");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/000201280ksr">
「おまえは一度、忠告を無視した
　オレたちより、クソ野郎と一緒にいることを選んだんだ」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/000201290ksr">
「双一親分が怒るのも、無理ねぇよな」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201300skr">
「……はい」


{	St("MR",700, @0,@0,"bu双六a_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/000201310ksr">
「で、アザナエルを撃たせるためには、条件がある」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201320skr">
「なんですか？」

{	St("MR",700, @0,@0,"bu双六a_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/000201330ksr">
「そいつをこれから、親分に聞くのさ」


　双六は携帯を取り出す。





{	DeleteAllSt(200,true);}

//◆ＳＥ：着信音
{
	CreateSE("SE01","seメカ_携帯_メール着信_双六_l");
	MusicStart("SE01",0,700,0,1000,null,true);
	WaitKey(500);
}


{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201340skr">
（着信――このタイミングで？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
{	St("ML",700, @0,@0,"bu沙紅羅_後ろ向き_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201350skr">
（まさか……見られてるとか）

{	DeleteAllSt(200,true);
	SetVolumeEX("SE01", 0, 0, null);}
{
	CreateSE("SE02","seメカ_携帯_電子音01");
	MusicStart("SE02",0,700,0,1000,null,false);
	WaitKey(500);
	}

{	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/000201360ksr">
「もしもし」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/000201370ksr">
「はい」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/000201380ksr">
「はい、そうです。条件を――」


//◆演出指定：ニヤリと笑う
{	St("MR",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/000201390ksr">
「――――」


{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201400skr">
（なんで……笑う？）

{	St("ML",700, @0,@0,"bu沙紅羅_通常_pinch");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201410skr">
（クソッ！　いくら集中しても……聞こえない）


/*
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201420skr">
（こんなときに、ビデオがうるせえし……！）
*/

{	St("MR",700, @0,@0,"bu双六a_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/000201430ksr">
「わかりました」

{	St("MR",700, @0,@0,"bu双六a_通常_smile");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/000201440ksr">
「代わります」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　双六は、薄ら笑いを浮かべて沙紅羅に手を突き出す。


{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201450skr">
「なんですか？」

{	St("MR",700, @0,@0,"bu双六a_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/000201460ksr">
「ほら、取れよ」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201470skr">
「…………」

{	St("MR",700, @0,@0,"bu双六a_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/000201480ksr">
「恐れ多くも双一親分が、てめぇの話を聞いてやるって言ってんだよ」


{	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/000201490ksr">
「それとも、なにか？
　話を聞く気がねぇってのか？」


{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201500skr">
「河原屋、双一――」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201510skr">
「そいつのたくらみで、アザナエルがこの世に解き放たれたんですね？」

{	St("MR",700, @0,@0,"bu双六a_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/000201520ksr">
「ああ、そうだ」


{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201530skr">
「……わかりました」


//※ここまでＡＶのＳＥ継続（mngw 11/18）

{	DeleteAllSt(200,false);
//	SetVolumeEX("SE10", 4000, 0, null);
	SetVolumeEX("@x*", 2000, 1, null);}



　沙紅羅は小さく息を吸い込んで、携帯電話を耳に当てる。



{	St("C",19010, @-60,@0,"fu沙紅羅_通常_normal");
	Move("@StNameC/C*", 1000, @60, @0, DxlAuto, false);
	FadeSt("C",1000,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201540skr">
「……もしもし」


{	SoundPlay("@xbgm04",0,450,true);}
//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/ab22/000201550ksi">
『沙紅羅だな？』

{	St("C",19010, @0,@0,"fu沙紅羅_通常_rage");
	Shake("@StNameC/C*", 100, 5, 10, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201560skr">
「おいコラ！　聞かせてもらおうじゃねぇか！
　てめぇ、なんでこんなことをしたッ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2209);}


//	TextBoxDelete(150);

//あきゅん「修正指示：双一の言葉で顔を歪める沙紅羅」
//※「隣の恋人」という言葉に反応したようにしましたが、こういう意図でよろしいでしょうか。（mngw 11/18）

	St("C",19010, @0,@0,"fu沙紅羅_通常_pinch");
	FadeStPro("C", 200, 4500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]

//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/ab22/000201570ksi">
『そう怒るな。隣の恋人が驚いてるぞ』

{	St("C",19010, @0,@0,"fu沙紅羅_通常_rage");
	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201580skr">
「うるせぇ！　いいか、もっかい訊くぞ！」

{	St("C",19010, @0,@0,"fu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201590skr">
「おまえ、なんでこんなことをしたんだよッ？」

//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/ab22/000201600ksi">
『そいつは……こっちのセリフだな』


{	St("C",19010, @0,@0,"fu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201610skr">
「ンダとォ？」


//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/ab22/000201620ksi">
『おまえが出しゃばらなきゃ全て上手くいくはずだった。
　オレの予定を狂わせたのは、沙紅羅、おまえだよ』

{	St("C",19010, @0,@0,"fu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201630skr">
「なにが予定だ！？
　てめぇはいったい、何のためにアザナエルを――」

//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/ab22/000201640ksi">
『オレのため――』


//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/ab22/000201650ksi">
『そしてもちろんそこにいる、河原屋双六のためさ』


{	St("C",19010, @0,@0,"fu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201660skr">
「双六さんのため……？」


//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/ab22/000201670ksi">
『沙紅羅、オレは博徒だ』

//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/ab22/000201680ksi">
『だからこれは、オレからおまえに対する、最後の賭けになるだろうな』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
{	St("C",19010, @0,@0,"fu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201690skr">
「どういう意味だ……？」

//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/ab22/000201700ksi">
『おまえが苦しむところ、たっぷり見せてもらう』



//◆ＳＥ：プッ：通話オフ
{	DeleteAllSt(200,false);
	SetVolumeEX("@xbgm*", 1500, 0, null);
	CreateSE("SE03","seメカ_携帯_切れる");
	MusicStart("SE03",0,700,0,1000,null,false);
	WaitKey(500);
}
{
	CreateSE("SE04","seメカ_携帯_電話切れる02_l");
	MusicStart("SE04",0,700,0,1000,null,false);
	WaitKey(1000);
	SetVolumeEX("SE*", 4000, 0, null);
}


//あきゅん「修正指示：ここからはこの曲でＯＫです」
//※了解しました。（mngw 11/18）
{	SoundPlay("@xsong01",3000,250,true);
	St("ML",700, @0,@0,"bu沙紅羅_通常_rage");
	Shake("@StNameML/ML*", 300, 5, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201710skr">
「おいコラ！　待て！
　勝手に切るんじゃねぇっ！　出てこいっ！！」

{	St("MR",700, @0,@0,"bu双六a_通常_normal");
	DeleteSt("ML", 200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/000201720ksr">
「諦めろよ」


{	St("MR",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/000201730ksr">
「ったく、双一親分になんて口ききやがるんだ？
　自分の立場ってモンがわかってねえんだもんな……」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201740skr">
「……別に、アタシの親分じゃないですし」

{	St("MR",700, @0,@0,"bu双六a_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/000201750ksr">
「ハァ……良く言うぜ」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201760skr">
「で、アタシはなにをすればいいんですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
{	St("MR",700, @0,@0,"bu双六a_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/000201770ksr">
「脱げ」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shy");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201780skr">
「え……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201790skr">
「脱ぐんですか？」

{	St("MR",700, @0,@0,"bu双六a_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/000201800ksr">
「ああ。まずは、脱げ」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201810skr">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
{	St("MR",700, @0,@0,"bu双六a_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/000201820ksr">
「どうした？　脱げねぇのか？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201830skr">
「…………」

{	St("MR",700, @0,@0,"bu双六a_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/000201840ksr">
「おまえ、叶えたい願いあるんだろ？」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/000201850ksr">
「命を賭けてでも、やり遂げたいんだろ？」

{	St("MR",700, @0,@0,"bu双六a_通常_smile");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/000201860ksr">
「だったら脱ぐぐらい、どうってことないよな」


{	St("ML",700, @0,@0,"bu沙紅羅_通常_shy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201870skr">
「なんで……アタシが……？」

{	St("MR",700, @0,@0,"bu双六a_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/000201880ksr">
「双一親分の、命令だ」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_rage");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201890skr">
「ふ、ふざけ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);

	DeleteAllSt(200,false);
	TextBoxDelete(150);



//あきゅん「修正指示：アザナエルの裏に黒とか入れてください」
//※黒だと面白味が足りなかったので赤にしてみました。あと叩きつける描写も追加しました（mngw 11/18）

	CreateMask("絵マスク", 6000, 0, 0, "cg/data/slide_05_00_1.png", false);
	CreateColorEX("絵赤色", 1200, "#FF0000");
	SetAlias("絵マスク","絵マスク");
	CreateColorEX("絵マスク/絵演色", 1510, "#000000");
	Fade("絵マスク/絵演色", 300, 1000, null, false);
	Fade("絵赤色", 300, 1000, null, false);
	WaitKey(300);

//◆ＳＥ：ドン！　アザナエルがテーブルに置かれる
	DeleteAllSt(200,false);
	CreateSE("SE05","se日常_物置く");
	MusicStart("SE05",0,700,0,1000,null,false);
	CreateSE("SE06","se戦闘_打撃音06");
	MusicStart("SE06",0,700,0,1000,null,false);

	CreateTextureEX("絵背景100", 7000, Center, Middle, "cg/img/imgアザナエルa.png");
	Zoom("絵背景100", 0, 3000, 3000, null, true);
	Zoom("絵背景100", 200, 1000, 1000, Axl3, false);
	Fade("絵背景100", 200, 1000, null, true);
	Shake("絵背景*", 300, 10, 10, 0, 0, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/000201900ksr">
「コイツ、使いたいんだろ？」


　双六が、テーブルにアザナエルを叩き付けた。



{	FadeDelete("絵背景100", 500, null, false);
	FadeDelete("絵赤色", 500, null, false);
	FadeDelete("絵マスク", 500, null, false);
	FadeDelete("絵マスク/絵演色", 500, null, true);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/000201910ksr">
「さ、嬢ちゃん」


{	St("MR",700, @0,@0,"bu双六a_通常_smile");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/000201920ksr">
「オレの前で、裸になりな」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//下倉注：ここは流しっぱなしで曲を繋いで次のシーンでメイン曲にクロスフェード！

	TextBoxDelete(150);

	DeleteAllSt(300,true);


	EndScene();
}
