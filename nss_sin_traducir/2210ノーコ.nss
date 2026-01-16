
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2210ノーコ.nss_MAIN
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
	$GameName = "2220沙紅羅_似鳥_ノーコ.nss";

}

scene 2210ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1620">
////////////header////////////
//file name "2210ノーコ.nss"
//title "じんじゃウォーズ"
//previous "2206ノーコ.nss"

////////////footer////////////
//next "ノーコ" "2220沙紅羅_似鳥_ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2210);}

//◆場所：半田明神_鳥居

	if($PreGameName=="2206ノーコ.nss"){
	Wait(2000);
	OnBG(10,"bg0602100半田明神_鳥居_通常");
	FadeBG(0,true);
	CreateTextureSP("絵背景100", 100, Center, -600, "cg/bg/bg0602100半田明神_鳥居_通常.jpg");

	DrawDelete("上背景", 300, 100, null, "slide_02_01_0", false);

	Move("絵背景100", 800, @0, -850, Dxl1, true);
	CreateSE("SE01","se動作_一歩");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);
	}else{
	OnBG(10,"bg0602100半田明神_鳥居_通常");
	FadeBG(0,true);
	CreateTextureSP("絵背景100", 100, Center, -850, "cg/bg/bg0602100半田明神_鳥居_通常.jpg");

	FadeDelete("上背景", 0, null, true);
	}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100010nko">
「ここ――」

{	DeleteAllSt(200,true);}
　「立入禁止」の綱を乗り越え、境内へと進む。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：ざっざっざっざ　小石を掻き分ける音
	CreateSE("SE01","se動作_歩く04_l");
	MusicStart("SE01",0,700,0,1000,null,false);

	TextBoxDelete(150);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


{	ClockPass(2211);}

	Delete("絵背景100");
//◆場所：半田明神_境内
	OnBG(10,"bg0603100半田明神_境内_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

	SetVolume("SE01", 500, 0, null);
	Wait(400);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"st歌門_通常_normal");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100100020kms">
「お待ちしておりました」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100030nko">
「まっていた？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"st歌門_通常_normal");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100100040kms">
「ええ。あなたの行動程度は、見通しております」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100050nko">
「ころしそこねたくせに」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"st歌門_通常_pride");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100100060kms">
「確かに一生の不覚。
　あの時、祓っておくべきでした」

{	St("C",700, @0,@0,"st歌門_通常_hard");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100100070kms">
「今回は逃がしません！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

//◆演出指定：歌門星、弓をつがえる
	CreateSE("SE01","se戦闘_弓矢_弓しなる");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵背景101", 10000, Center, @-270, "cg/ev/ev0000歌門破魔弓.jpg");
	Move("絵背景101",1000,@0,@90,Dxl1,false);
	Fade("絵背景101",1000, 1000, null, true);
	DeleteSt("C",0,true);

	SoundPlay("@xbgm22",0,450,true);

	SetVolume("SE01", 500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100080nko">
「あいてをしているひまはない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100090nko">
「しね――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵背景BG", 100, Center, -2400, "cg/bg/l/bg0603100半田明神_境内_通常_l.jpg");
	Request("絵背景BG", Smoothing);
	Zoom("絵背景BG", 0, 1000, 5000, null, true);

	CreateTextureEX("EF100", 2000, Center, Middle, "cg/ef/ef破魔矢飛来a.jpg");
	Zoom("EF100", 0, 2000, 2000, Dxl2, true);
	SetBlur("EF100", true, 2, 500, 50, false);

	CreateSE("SE01","se戦闘_弓矢_矢放つ");
	CreateSE("SEP01","se戦闘_弓矢_光の矢");
	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SEP01",0,700,0,1000,null,false);

	Fade("EF100", 200, 1000, null, false);
	Zoom("EF100", 200, 1000, 1000, Dxl2, true);
	Zoom("EF100", 300, 5000, 5000, Axl3, false);
	FadeF4("EF100", 300, 1000, 3000, 0, 0, Axl3, false);

	Delete("絵背景101");

	Wait(200);
	Fade("EF100", 100, 0, null, true);
	Delete("EF100");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100100100kms">
「破ッ！」

{
	CreateSE("SE01","se戦闘_弓矢_刺さる01");
	CreateSE("SE02","se戦闘_切断02");
	MusicStart("SE01",0,1500,0,1000,null,false);
	MusicStart("SE02",0,1500,0,1000,null,false);

	St("C",700, @20,@0,"buノーコa_カッター_angry");
	Move("@StNameC/C*", 200, @-20, @0, Dxl3, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100110nko">
「どこに放って――」

{	St("C",700, @0,@0,"buノーコa_カッター_shock");
	Shake("@StNameC/C*", 200, 5, 0, 0, 0, 500, AxlDxl, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100120nko">
「――なッ！？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100130nko">
「うごけない――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateTextureSP("絵背景PLAIN", 10000, Center, middle, "cg/bg/bg0603100半田明神_境内_通常.jpg");

	CreateStencil("絵マスクノーコ",0,130,0,128,"cg/bu/buノーコa_カッター_pinch.png",false);
//	CreateMask("絵マスクノーコ", 6000, 0, 0, "cg/bu/buノーコa_カッター_pinch.png", false);
	SetAlias("絵マスクノーコ","絵マスクノーコ");
	CreateColorEXmul("絵マスクノーコ/色", 300, "#000000");
	Fade("絵マスクノーコ/色", 0, 800, null, true);
	CreateColorSP("絵色下敷き", 200, "#FFFFFF");


	CreatePlainSP("絵影用", 305);
	Wait(16);
	SetShade("絵影用", HEAVY);
	Request("絵影用", MulRender);

	Delete("絵色下敷き");
	Delete("絵マスクノーコ");

	Fade("絵背景BG", 0, 1000, null, true);


	Move("絵影用", 0, @0, @100, null, true);



	Move("絵影用", 600, @0, @-100, Dxl1, false);
	Move("絵背景BG", 600, @0, @-200, Dxl1, false);
	FadeDelete("絵背景PLAIN", 300, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{
//	St("C",700, @0,@0,"st歌門_通常_hard");
//	FadeSt("C",200,true);
}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100100140kms">
「影縫い――
　この矢は、物の怪をその場に止めることができます」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100100150kms">
「あなたはもう、動けない……」

{
//	DeleteAllSt(200,true);
//	St("C",700, @0,@0,"buノーコa_カッター_shock");
//	FadeSt("C",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100160nko">
「そんな――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2212);}


//	DeleteAllSt(200,true);

//◆演出指定：立て続けに放たれる矢・マシンガン的に速射
	CreateTextureEX("絵背景101", 500, Center, @-270, "cg/ev/ev0000歌門破魔弓.jpg");
	Move("絵背景101",200,@0,@90,Dxl1,false);
	Fade("絵背景101",200, 1000, null, true);
	DeleteSt("C",0,true);

	Fade("絵背景BG", 0, 0, null, true);
	Fade("絵影用", 0, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100100170kms">
「天裂く一の矢！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se戦闘_弓矢_乱射02");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");
	CreateTextureSP("絵背景100", 500, Center, Middle, "cg/ef/ef破魔矢飛来b.jpg");
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	Rotate("絵背景100", 0, @0, @0, -90, null,true);
	Move("絵背景100", 0, @0, @-500, null, true);
	Wait(30);
	Delete("絵背景101");
	Move("絵背景100", 300, @0, @1000, null, false);
	Fade("絵フラッシュ白", 30, 0, null, true);
	Fade("絵フラッシュ白", 30, 1000, null, true);
	Wait(30);
	Fade("絵フラッシュ白", 30, 0, null, true);
	Fade("絵フラッシュ白", 30, 1000, null, true);
	Wait(30);
	Delete("絵背景100");
	FadeDelete("絵フラッシュ白", 50, null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
　歌門星は、天に向けて矢を速射。

{	St("ML",700, @0,@0,"buノーコa_カッター_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100180nko">
「なんのまね――」

{	St("MR",700, @0,@0,"st歌門_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100100190kms">
「すでに勝負は決しました」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100100200kms">
「あなたは身動きは取れず、逃げられない。
　それとも、あの矢の集中砲火から逃れられますか？」

{	St("ML",700, @0,@0,"buノーコa_カッター_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100210nko">
「……あさはか」

{	St("MR",700, @0,@0,"st歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100100220kms">
「何を負け惜しみを――
　その息の根、止めて差し上げましょう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,true);

//◆演出指定：立て続けに放たれる矢・マシンガン的に速射
	CreateTextureEX("絵背景101", 120, Center, @-180, "cg/ev/ev0000歌門破魔弓.jpg");
	Fade("絵背景101",200, 1000, null, true);
	DeleteSt("C",0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100100230kms">
「地這う二の矢！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");

	CreateTextureEX("EF100", 2000, Center, Middle, "cg/ef/ef破魔矢飛来a.jpg");
	Request("EF100", Smoothing);
	Zoom("EF100", 0, 2000, 2000, Dxl2, true);
	SetBlur("EF100", true, 2, 500, 50, false);

	CreateSE("SE01","se戦闘_弓矢_乱射01");
	CreateSE("SE02","se戦闘_風切り音10");

	FadeDelete("絵フラッシュ白", 30, null, false);
	Fade("EF100", 0, 1000, null, true);
	Zoom("EF100", 200, 1100, 1100, Dxl2, false);
	FadeF4("EF100", 300, 1000, 300, 0, 0, Dxl3, false);

//◆演出指定：空から落下する１の矢と星が放つ２の矢の乱射
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(300);
	MusicStart("SE02",0,700,0,1000,null,false);


	Delete("絵背景101");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　天と地――時間差で放たれた矢が、ノーコを目掛ける。

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100100240kms">
「<RUBY text="と">殺</RUBY>った――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100250nko">
「イシュタムのみちびきよ――たて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,false);
	CreateSE("SE13","se戦闘_切断02");
	MusicStart("SE13",0,700,0,1000,null,false);
	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 3000, Center, Middle, "cg/ef/efカッター剣閃b.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);
	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景100");
	Delete("EF100");

	Fade("絵背景BG", 0, 1000, null, true);
	Fade("絵影用", 0, 1000, null, true);


	Fade("絵色100", 500, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100100260kms">
「な――！？」

{	DeleteAllSt(200,true);}
　指先から伸びる刃は、迫る矢ではなく足元へ。

　石畳に伸びる自らの影を撫で――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2213);}


	TextBoxDelete(150);

	CreateSE("SE01","se戦闘_刃物02");
	CreateSE("SE02","se戦闘_氷砕ける");
	MusicStart("SE01",0,700,0,1000,null,false);

	DrawTransition("絵影用", 1000, 1000, 500, 100, null, "cg/ef/efカッター剣閃b.jpg", true);
	MusicStart("SE02",0,1000,0,1000,null,false);
	DrawTransition("絵影用", 1000, 500, 0, 100, null, "cg/ef/efカッター剣閃b.jpg", true);

	CreateTextureSP("絵背景キャラ", 400, Center, 1100, "cg/bu/l/buノーコa_通常_normal_x02.png");
	Request("絵背景キャラ", Smoothing);
	Zoom("絵背景キャラ", 0, 2000, 2000, null, true);

	Delete("絵影用");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100100270kms">
「影が、切れた！？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100280nko">
「このやいばにきれないものは、ない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE11","se動作_空飛ぶ02");
	CreateSE("SE12","se戦闘_風切り音10");

	MusicStart("SE11",0,700,0,1000,null,false);
	MusicStart("SE12",0,700,0,1000,null,false);
	Move("絵背景キャラ", 1000, @0, -1000, Dxl2, false);
	Zoom("絵背景キャラ", 1000, 500, 500, Dxl2, false);
	Zoom("絵背景BG", 1000, 1000, 1000, Dxl2, false);
	Move("絵背景BG", 1000, @0, 0, Dxl2, false);
//	Move("絵影用", 1000, @0, 1500, Dxl2, false);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
　自由になったノーコの身体が、闇に踊る。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	CreateSE("SE01a","se戦闘_切断02");
	CreateSE("SE01b","se戦闘_切断02");
	CreateSE("SE01c","se戦闘_切断02");
	CreateSE("SE01d","se戦闘_切断02");

	CreateSE("SE01","se戦闘_弓矢_刺さる01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(50);
	MusicStart("SE01a",0,500,0,1000,null,false);
	Wait(200);
	CreateSE("SE02","se戦闘_弓矢_刺さる01");
	MusicStart("SE02",0,700,0,1000,null,false);
	MusicStart("SE01b",0,500,0,1000,null,false);

	Wait(50);
	MusicStart("SE01c",0,500,0,1000,null,false);
	Wait(50);
	MusicStart("SE01d",0,500,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　一の矢、二の矢が無人の境内を突き刺して――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE11", 500, 0, null);
	St("ML",700, @0,@-100,"fuノーコa_カッター_smile");
	DeleteAllSt(200,false);
	Move("絵背景BG", 400, @0, -288, AxlDxl, 200);
	Move("@StNameML/ML*", 200, @0, @100, Dxl1, false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100290nko">
「さようなら」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
	CreateSE("SE11","se戦闘_切断01");
	MusicStart("SE11",0,700,0,1000,null,false);
	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 3000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);
	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景100");
	Fade("絵色100", 500, 0, null, false);
	Wait(200);
	CreateSE("SE13","se戦闘_切断02");
	MusicStart("SE13",0,700,0,1000,null,false);
	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 3000, Center, Middle, "cg/ef/efカッター剣閃b.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);
	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景100");
	Fade("絵色100", 500, 0, null, false);
	Wait(200);
	CreateSE("SE12","se戦闘_金属衝突01");
	MusicStart("SE12",0,700,0,1000,null,false);

	St("MR",700, @-80,@0,"bu歌門_威圧_pinch");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @80, @0, Dxl3, false);
	Shake("@StNameMR/MR*", 200, 0, 5, 0, 0, 500, Dxl3, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100100300kms">
「――っ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_破壊02");
	CreateSE("SE02","se戦闘_打撃音07");
	CreateSE("SE03","se戦闘_風切り音05");
	MusicStart("SE03",0,700,0,1000,null,false);

	Move("@StNameMR/MR*", 200, @-60, @60, Dxl3, false);
	Shake("@StNameMR/MR*", 200, 5, 10, 0, 0, 500, Dxl3, false);
	DeleteAllSt(200,false);

	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);

	Shake("絵背景BG", 500, 20, 10, 0, 0, 1000, Dxl2, false);
	Zoom("絵背景BG", 300, 500, 500, null, true);

	Wait(200);

	FadeDelete("絵背景BG", 200, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100100310kms">
「く……がはっ！」

　歌門は咄嗟に破魔弓で受け止めたが、勢いは殺すことができず、そのまま背後の社務所に吹き飛ばされる。

{	St("MR",700, @20,@20,"bu歌門_威圧_pinch");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @-20, @-20, Dxl1, false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100100320kms">
「ま……待ちなさいッ！！」

{	St("ML",700, @30,@0,"buノーコa_幽霊_normal");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @-30, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100330nko">
「うるさい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	TextBoxDelete(150);
	Move("@StNameML/ML*", 200, @-40, @0, Axl1, false);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


{	ClockPass(2214);}

//◆場所：半田明神_拝殿
	OnBG(10,"bg0607100半田明神_拝殿_通常");
	FadeBG(0,true);

//◆ＳＥ：足音が続いて、止まる
	CreateSE("SE01","se動作_歩く01_l");
	MusicStart("SE01",0,700,0,1000,null,false);

	DrawDelete("絵黒幕", 300, 100, null, "blind_01_00_1", true);

	Wait(2500);
	SetVolume("SE01", 500, 0, null);



	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100340nko">
「けっかい……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE02","se動作_走る01_l");
	MusicStart("SE02",0,700,0,1000,null,false);
	SetVolume("SE02", 700, 0, null);
	St("MR",700, @30,@0,"bu歌門_威圧_hard");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @-30, @0, Dxl3, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100100350kms">
「その通り」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100100360kms">
「先代繁御爺様が残された、結界符……」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100100370kms">
「地下殿は力ずくで破壊されたようですが、貴方のような青二才に破れるものではありません」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100100380kms">
「アザナエルの弾丸は……絶対に手に入らない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateSE("SE01","se戦闘_カッター_刃出す03遅いa");

	CreateTextureEX("絵背景BG", 100, Center, Middle, "cg/bg/bg0607100半田明神_拝殿_通常.jpg");
	SetShade("絵背景BG", MIDEUM);
	Zoom("絵背景BG", 0, 2000, 2000, null, true);

	St("C",700, @20,@0,"fuノーコa_カッター_angry");
	Move("@StNameC/C*", 200, @-20, @0, Dxl1, false);
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeSt("C",200,false);
	Fade("絵背景BG", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100390nko">
「わたしのやいばに」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100400nko">
「きれないものはない」

{	St("C",700, @0,@0,"fuノーコa_カッター_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100410nko">
「――きれろ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 500, 0, null);
	TextBoxDelete(150);

	CreateTextureEX("絵背景BG02", 100, Center, Middle, "cg/bg/l/bg0607100半田明神_拝殿_通常_l.jpg");
	Request("絵背景BG02", Smoothing);

	Fade("絵背景BG02", 200, 1000, null, false);
	DeleteAllSt(200,true);
	Delete("絵背景BG");


//◆演出指定：シャキーン・結界消える
	CreateSE("SE15","se擬音_結界消滅");
	CreateSE("SE13","se戦闘_風切り音10");
	MusicStart("SE13",0,700,0,1000,null,false);
	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 3000, Center, Middle, "cg/ef/efカッター剣閃b.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);
	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景100");
	Fade("絵色100", 500, 0, null, false);

	CreateTextureEXadd("絵色100", 2000, Center, Middle, "cg/ef/ef029_物理限界速度域.jpg");
	CreateSE("SE01","se戦闘_切断04");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵色100", 200, 600, null, true);
	Fade("絵色100", 1000, 0, null, true);

	MusicStart("SE15",0,700,0,1000,null,false);

	CreatePlainEX("揺用", 2005);


	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef034_精神汚染.jpg", false);

	Zoom("絵背景BG02", 3000, 500, 500, AxlDxl, false);
	Fade("揺用", 0, 500, null, true);
	DrawEffect("揺用", 1800, "HardSplit", 0, 1000, null);


	Wait(3000);
	Fade("絵背景BG02", 500, 0, null, true);

	Delete("揺用");

{	St("MR",700, @30,@0,"bu歌門_通常_pinch");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100100420kms">
「そんな……馬鹿な……」

{	St("C",700, @40,@0,"fuノーコa_幽霊_normal");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 500, @-40, @0, Dxl1, false);
	FadeSt("C",300,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100430nko">
「にとりがくれたちから」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100440nko">
「にとりのためにつかう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//移動してないので除外
/*
	TextBoxDelete(150);
	Move("@StNameC/C*", 200, @-40, @0, Dxl1, false);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);




//◆場所：半田明神_拝殿
	OnBG(10,"bg0607100半田明神_拝殿_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "blind_01_00_1", true);
*/



{	ClockPass(2215);}

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/obj/objアザナエル弾丸.png");
	Move("絵背景100", 0, @0, @100, null, true);

	Move("絵背景100", 300, @0, @-100, Dxl1, false);
	Fade("絵背景100", 300, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100450nko">
「アザナエルの、たま……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100460nko">
「すぐ……そこに……」

{
	Move("絵背景100", 300, @0, @100, Axl1, false);
	FadeDelete("絵背景100", 300, null, true);

	St("C",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100100470mzh">
「待て、ノーコよ！」

{	DeleteAllSt(200,true);
	St2("C",700, @0,@0,"fuノーコa_通常_sad","cg2/",".png");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100480nko">
「……ミヅハ」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100100490mzh">
「わらわには、助けねばならぬ者がいる！」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100100500mzh">
「わらわには、果たさねばならぬ責務がある！」

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100100510mzh">
「この弾丸――」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100100520mzh">
「おぬしに渡すわけには行かぬッ！！」

{	DeleteAllSt(200,true);
	St2("C",700, @0,@0,"fuノーコa_通常_normal","cg2/",".png");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100530nko">
「それは――わたしもおなじ」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100100540mzh">
「みそブー！　行くのじゃ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

/*
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/100100550mso">
「おう！」

//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/100100560buu">
「おう！」
*/

//◆場所：半田明神_拝殿
////	OnBG(10,"bg0607100半田明神_拝殿_通常");
////	FadeBG(0,true);
	DeleteAllSt(200,true);
	St("L",701, @-80,@0,"buみそa_通常_shout");
	St("R",700, @80,@0,"buブーa_通常_shout");
	Move("@StNameL/L*", 200, @80, @0, Dxl1, false);
	Move("@StNameR/R*", 200, @-80, @0, Dxl1, false);
	FadeSt("L",200,false);
	FadeSt("R",200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/100100550mso">
「おう！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/22/100100560buu">
//「おう！」

</PRE>
	SetText();
	AddText(1,"「おう！","みそ","22/100100550mso",false,false,1000);
	AddText(2,"「おう！","ブー","22/100100560buu",true,true,1700);
	TypeBeginD();//―――――――――――――――――――――――――――

	SoundPlay("@xbgm05",0,450,true);


	TextBoxDelete(150);

//◆演出指定：モデルガン発射・ペイント弾飛ぶ

	DeleteAllSt(200,true);

	CreateSE("SE11","se戦闘_ペイント弾直撃複数_16発");
	MusicStart("SE11",0,700,0,1000,null,false);

	EffectZoomadd(10000, 200, 150, "cg/ef/efペイント弾飛来.jpg", false);

	MFlash(30, 8);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("L",700, @0,@0,"buみそa_オラオラ_angry");
	Move("@StNameL/L*", 200, @300, @0, Dxl3, false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/100100570mso">
「でりゃりゃりゃりゃりゃ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	CreateSE("SE12","se戦闘_ペイント弾直撃複数_12発");
	MusicStart("SE12",0,700,0,1000,null,false);
	EffectZoomadd(10000, 200, 150, "cg/ef/efペイント弾飛来.jpg", false);
	MFlash(30, 6);
	St("R",700, @0,@0,"buブーa_オラオラ_angry");
	Move("@StNameR/R*", 200, @-300, @0, Dxl3, false);
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/100100580buu">
「どりゃりゃりゃりゃりゃ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆演出指定：ノーコの刃が迎撃

	DeleteAllSt(200,true);

	CreateSE("SE01","se戦闘_切断01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 3000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);
	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景100");
	Fade("絵色100", 500, 0, null, false);

	Wait(200);

	CreateSE("SE02","se戦闘_切断02");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 3000, Center, Middle, "cg/ef/efカッター剣閃b.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);
	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景100");
	Fade("絵色100", 500, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("C",700, @0,@0,"fuノーコa_カッター_angry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100590nko">
「じゃま」

{	DeleteAllSt(200,true);}
　飛来するペイント弾を、刃が恐ろしい精度で断ち――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",700, @0,@0,"fuノーコa_カッター_shock");
	CreateSE("SE01","se戦闘_ペイント弾直撃");

	EffectZoomadd(10000, 200, 150, "cg/ef/efペイント弾飛来.jpg", false);
	MusicStart("SE01",0,500,0,1000,null,false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100600nko">
「――――！？」

{	DeleteAllSt(200,true);}
　黄色い顔料が、ノーコの腕を襲った。

{	St("C",700, @0,@0,"fuノーコa_カッター_rage");
	Shake("@StNameC/C*", 200, 0, 5, 0, 0, 500, Dxl3, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100610nko">
「――――ッ！？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100620nko">
「いた……いたいいたいいたいいたい……
　なに、これ？　しみて……いたいよ……！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100630nko">
「これは……カレー……？」

{	St("ML",700, @0,@0,"buみそa_オラオラ_pride");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @-50, @0, Dxl3, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/100100640mso">
「へっへー！　ご名答！」

//【みそ】
<voice name="みそ" class="みそ" src="voice/22/100100650mso">
「いや、ミヅハの脅しに使った銃だけどよ。
　ただのペイント弾じゃないなんてな！」

{	St("MR",700, @0,@0,"buブーa_オラオラ_normal");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @50, @0, Dxl3, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/100100660buu">
「おーよ！　ミヅハちゃんが指摘してくれなかったら、どうなってたことか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 3000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St2("C",700, @0,@0,"fuノーコa_通常_pain","cg2/",".png");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 200, 0, 10, 0, 0, 500, Dxl3, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100670nko">
「く……かっ、あ……しみて……いたい……
　う……うう……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100680nko">
「インドじん……
　せいなる……スパイスって……こういうこと……？」

{	St("C",700, @30,@0,"buミヅハ_通常_sad");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 200, @-30, @0, Dxl3, false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100100690mzh">
「だまし討ちのようで、すまん。
　本来ならば、このようなことはしたくないのじゃが」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateSE("SE01","se動作_銃渡す");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEX("絵色100", 90, "BLACK");
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/img/imgアザナエルa.png");
	Move("絵背景100", 0, @0, @100, null, true);

	Move("絵背景100", 300, @0, @-100, Dxl1, false);
	Fade("絵背景100", 300, 1000, null, false);
	Fade("絵色100", 300, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180a]
　ミヅハはノーコから、アザナエルを取り戻す。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	Move("絵背景100", 300, @0, @100, Axl1, false);
	FadeDelete("絵色100", 300, null, false);
	FadeDelete("絵背景100", 300, null, true);

	SoundPlay("@xbgm15",0,450,true);


	St("C",700, @-30,@30,"buミヅハ_通常_hard");
	Move("@StNameC/C*", 200, @30, @-30, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180b]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100100700mzh">
「アザナエルを、おぬしに渡すわけにはいかぬ」

{	St2("C",700, @0,@0,"fuノーコa_通常_pain","cg2/",".png");
	DeleteAllSt(200,true);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100710nko">
「いや……」

{	St2("C",700, @0,@0,"fuノーコa_通常_sad","cg2/",".png");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100720nko">
「わたしは……アザナエルで……ねがいをかなえる！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100730nko">
「それで、にとりを――」

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,true);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100100740mzh">
「似鳥の気持ちを、変えるのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100100750mzh">
「おぬしはそれで、本当に幸せになれるのか？」

{	St2("C",700, @0,@0,"fuノーコa_通常_sad","cg2/",".png");
	DeleteAllSt(200,true);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100760nko">
「ほんとうに……しあわせに？」

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,true);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100100770mzh">
「ノーコよ、わらわはおぬしを、まだ友達と思っておる」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100100780mzh">
「だから、友達として忠告するのじゃ」

{	St("C",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100100790mzh">
「自分の愛は、自分の力で掴め！」

{	St2("C",700, @0,@0,"fuノーコa_通常_sad","cg2/",".png");
	DeleteAllSt(200,true);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100100800nko">
「じぶんのちからで……？」

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,true);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100100810mzh">
「――みそブー、行くぞ！
　スパコン館へ戻るのじゃ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

/*
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/100100820mso">
「おう！」

//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/100100830buu">
「おう！」
*/
	Move("@StNameC/C*", 200, @40, @0, Dxl3, false);
	DeleteAllSt(200,true);

	St("L",701, @0,@30,"buみそa_通常_pride");
	St("R",700, @0,@30,"buブーa_通常_smile");
	Move("@StNameL/L*", 200, @0, @-30, Dxl3, false);
	Move("@StNameR/R*", 200, @0, @-30, Dxl3, false);
	FadeSt("L",200,false);
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/100100820mso">
「おう！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/22/100100830buu">
//「おう！」

</PRE>
	SetText();
	AddText(1,"「おう！」","みそ","22/100100820mso",false,false,1000);
	AddText(2,"「おう！」","ブー","22/100100830buu",true,true,1700);
	TypeBeginD();//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

{	ClockPass(2216);}

//◆場所：半田明神_境内
	OnBG(10,"bg0603100半田明神_境内_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	St("C",700, @0,@0,"st歌門_通常_normal");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100100840kms">
「お待ち下さい」

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,true);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100100850mzh">
「む――？」

{	St("C",700, @0,@0,"st歌門_通常_normal");
	DeleteAllSt(200,true);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100100860kms">
「休戦はここまで」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100100870kms">
「ここから先は、私の言葉に従っていただきます」

{	St("C",700, @0,@0,"buミヅハ_手構え_hard");
	DeleteAllSt(200,true);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100100880mzh">
「断る。
　わらわには、助けねばならぬ友達がおるのじゃ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	St("C",700, @0,@0,"st歌門_通常_hard");
	DeleteAllSt(200,true);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100100890kms">
「ならば実力行使で」

{	St("C",700, @0,@0,"buミヅハ_手構え_hard");
	DeleteAllSt(200,true);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100100900mzh">
「実力……じゃと？」

{	St("C",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100100910mzh">
「おぬし、神であるわらわに――」

{	St("C",700, @0,@0,"st歌門_通常_pride");
	DeleteAllSt(200,true);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100100920kms">
「逆らいます」

{	St("C",700, @0,@0,"st歌門_通常_hard");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100100930kms">
「それが、ミヅハ様のためなのです」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	St("C",700, @0,@0,"st歌門_通常_normal");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100100940kms">
「わかってくれますね？」

{	St("C",700, @0,@0,"buミヅハ_通常_sad");
	DeleteAllSt(200,true);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100100950mzh">
「星……」

{	St("C",700, @0,@0,"st歌門_通常_normal");
	DeleteAllSt(200,true);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100100960kms">
「それとも……」

{	St("C",700, @0,@0,"st歌門_通常_hard");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100100970kms">
「おしりペンペン、してさしあげましょうか？」

{	St("C",700, @0,@40,"buミヅハ_通常_sigh");
	DeleteAllSt(200,true);
	FadeT("@StNameC/C*",0,0,200,0,-40,Dxl1,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100100980mzh">
「ひぇっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	St("ML",700, @0,@0,"buみそa_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/100100990mso">
「ちょ！　待てミヅハ！」

{	St("MR",700, @0,@0,"buブーa_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/100101000buu">
「そうだ！　暴力に屈服するんじゃねぇ！」

{	St("C",700, @0,@0,"buミヅハ_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100101010mzh">
「や……でも、やっぱり星はこわい……」

{	St("C",700, @0,@0,"st歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100101020kms">
「さあ、ミヅハ様。大人しくその銃をお渡し下さい」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100101030kms">
「ミヅハ様が本来の姿として顕現するためなら、たかが物の怪ダヌキ一匹の命など――」

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100101040mzh">
「たかが――一匹？」

{	St("C",700, @0,@0,"st歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100101050kms">
「左様です」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100101060kms">
「アザナエルを封じることで、いったいどれだけの人の命が救われることか――」

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100101070mzh">
「ふ……ふ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

/*
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/100101080mso">
「ふざけるんじゃねぇぞっ！」

//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/100101090buu">
「ふざけるんじゃねぇぞっ！」
*/
	SetVolumeEX("@xbgm*", 1000, 0, null);

	St("L",700, @0,@50,"buみそa_オラオラ_angry");
	St("R",700, @0,@50,"buブーa_オラオラ_angry");
	DeleteAllSt(200,false);
	Move("@StNameL/L*", 200, @0, @-50, Dxl3, false);
	Shake("@StNameL/L*", 200, 5, 0, 0, 0, 500, Dxl3, false);
	Move("@StNameR/R*", 200, @0, @-50, Dxl3, false);
	Shake("@StNameR/R*", 200, 5, 0, 0, 0, 500, Dxl3, false);
	FadeSt("L",200,false);
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/100101080">
「「ふざけるんじゃねぇぞっ！」」

{
	SoundPlay("@xbgm25",0,450,true);
	St("ML",700, @-20,@0,"buみそa_オラオラ_angry");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @20, @0, Dxl3, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/100101100mso">
「オケラだって！　タヌキだって！　不良だって！
　オレたちゃみんな生きてんだッ！！　友達だ！」

{	St("MR",700, @20,@0,"buブーa_オラオラ_angry");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @-20, @0, Dxl3, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/100101110buu">
「てめぇみてーな潔癖女に、オレたちの命の軽重、勝手に測られてたまるかっつーの！！」

{
	St("C",700, @0,@0,"bu歌門_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100101120kms">
「私が苦しんでいないとでも！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
{	St("C",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100101130kms">
「……誰かを不幸にしたいわけではありません」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100101140kms">
「最大多数の最大幸福を求めた場合、私は、非情な判断を下さねばならない」

{	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	DeleteAllSt(200,true);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100101150mzh">
「しかし――」

{	St("C",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,true);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100101160kms">
「私の祖父は、それで命を落としました」

{	St("C",700, @0,@0,"buミヅハ_通常_sad");
	DeleteAllSt(200,true);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100101170mzh">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{	St("C",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,true);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100101180kms">
「わがままはなりません」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100101190kms">
「ここでアザナエルを封じねば、更に死者が増える」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100101200kms">
「貴方たちは、誰かが死んでから、その責任を負うことができるのですか？」

{	St("C",700, @0,@0,"buミヅハ_通常_sad");
	DeleteAllSt(200,true);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100101210mzh">
「…………」

{	St("ML",700, @0,@0,"buみそa_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/100101220mso">
「…………」

{	St("MR",700, @0,@0,"buブーa_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/100101230buu">
「…………」

{	St("C",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100101240kms">
「私はあなたに、そのような重荷を負わせたくない！」

{	St("C",700, @0,@0,"bu歌門_通常_think");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100101250kms">
「さあ、地下ムロへと行き、アザナエルの呪いを――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	SetVolumeEX("@xbgm*", 500, 0, null);


	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆演出指定：刃が撓る

	CreateSE("SE01","se戦闘_風切り音01");
	CreateSE("SE02","se戦闘_風切り音02");
	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 3000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);
	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景100");

	CreateSE("SE02","se戦闘_金属弾く02");
	MusicStart("SE02",0,800,0,1000,null,false);

	Fade("絵色100", 200, 0, null, true);

	St("C",700, @30,@0,"buミヅハ_通常_sigh");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 200, @-30, @0, Dxl1, false);
	Shake("@StNameC/C*", 200, 0, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100101260mzh">
「ぬおっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);
	St("C",700, @-20,@0,"bu歌門_威圧_angry");
	Move("@StNameC/C*", 200, @20, @0, Dxl3, false);
	FadeSt("C",200,true);
	Move("@StNameC/C*", 200, @40, @0, Dxl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100101270kms">
「ミヅハ様！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateColorEX("絵色100", 1500, "BLACK");
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg0603100半田明神_境内_通常.jpg");
	CreateTextureEX("絵背景200", 100, Center, Middle, "cg/img/imgアザナエルa.png");
	SetBlur("絵背景200", true, 2, 500, 30, false);
	SetShade("絵背景100", MIDEUM);
	Zoom("絵背景100", 0, 3000, 3000, null, true);

	Move("絵背景100", 0, @0, @-100, null, true);
	Move("絵背景200", 0, @0, @100, null, true);

	CreateSE("SE01","se戦闘_風切り音07");
	MusicStart("SE01",0,400,0,600,null,true);
	SetFrequency("SE01", 3000, 400, AxlDxl);


	Fade("絵背景100", 200, 1000, null, false);
	Fade("絵背景200", 200, 1000, null, false);
	Rotate("絵背景200", 5000, @0, @0, @-820, Dxl1,false);
//	Move("絵背景200", 1000, @-50, @-100, Dxl1, false);
//	Move("絵背景100", 1000, @100, @300, Dxl1, true);
//	Move("絵背景200", 1000, @-50, @100, Axl2, false);
//	Move("絵背景100", 1000, @100, @-300, Axl2, 500);
	BezierMove("絵背景100", 2100, (-500,-288){-400,0}{-150,160}(50,160){220,160}{420,0}(600,-288), null, false);
//	BezierMove("絵背景200", 2000, (-500,-288){-400,-200}{-300,-100}(0,200){200,-100}{400,-200}(500,-288), null, false);
	Move("絵背景200", 1000, @-50, @-100, Dxl1, true);
	Move("絵背景200", 1000, @-50, @100, Axl2, false);
	Wait(500);
	Fade("絵色100", 500, 1000, null, true);
	SetVolumeEX("SE*", 500, 0, null);

	Delete("絵背景*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0301]
　銀の刃が月の光に撓り、ミヅハの手からアザナエルが弾け飛ぶ。

　その落下する先は――

{	FadeDelete("絵色100", 300, null, true);
	CreateSE("SE01","se動作_銃渡す");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("C",700, @0,@40,"stノーコa_通常_normal");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 200, @0, @-40, Dxl1, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100101280nko">
「ありがとう」

{	DeleteAllSt(200,true);}
　ノーコの手のひらだった。

{
	SoundPlay("@xbgm09",0,450,true);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/100101290mso">
「ノーコ！？」

{	St("MR",700, @0,@0,"buブーa_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/100101300buu">
「おまえ、いつの間に！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
{	St("C",700, @0,@0,"stノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100101310nko">
「おうきゅうしょちにてまどった」

{	St("ML",700, @0,@0,"buミヅハ_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100101320mzh">
「応急処置……？」

{	St("C",700, @0,@0,"stノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100101330nko">
「かわごときりおとした」

{	St("MR",700, @0,@0,"bu歌門_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100101340kms">
「なんと――！？」

{	St("C",700, @0,@0,"stノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100101350nko">
「きりきずには、なれてる」

{	St("C",700, @0,@0,"stノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100101360nko">
「さようなら」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se動作_空飛ぶ02");
	MusicStart("SE01",0,700,0,1000,null,false);

	TextBoxDelete(150);
	Move("@StNameC/C*", 200, @0, @-20, Axl1, false);
	DeleteAllSt(200,true);

//◆演出指定：ノーコの身体が宙へ
	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

{	ClockPass(2217);}

//◆場所：半田明神_屋根
	OnBG(10,"bg0605100半田明神_屋根_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_02_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100101370mzh">
「ノーコ！　待て！」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100101380kms">
「チィッ！！」

{	CreateSE("SE11","se戦闘_ペイント弾直撃複数_16発");
	MusicStart("SE11",0,700,0,1000,null,false);
	MFlash(30, 8);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/100101390mso">
「どらららららららら！！」

{	CreateSE("SE12","se戦闘_ペイント弾直撃複数_12発");
	MusicStart("SE12",0,700,0,1000,null,false);
	MFlash(30, 6);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/100101400buu">
「ヒャッホ――――イ！！」

{	CreateSE("SE01","se戦闘_弓矢_乱射02");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");
	Wait(30);
	Delete("絵背景101");
	Fade("絵フラッシュ白", 30, 0, null, true);
	Fade("絵フラッシュ白", 30, 1000, null, true);
	Wait(30);
	Fade("絵フラッシュ白", 30, 0, null, true);
	Fade("絵フラッシュ白", 30, 1000, null, true);
	Wait(30);
	FadeDelete("絵フラッシュ白", 30, null,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100101410kms">
「破ッ！！」

{	St("C",700, @0,@-50,"stノーコa_通常_normal");
	Move("@StNameC/C*", 400, @0, @50, Dxl1, false);
	FadeSt("C",300,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100101420nko">
「おなじてはくわない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se動作_空飛ぶ02");
	MusicStart("SE01",0,700,0,1000,null,false);

	TextBoxDelete(150);
	Move("@StNameC/C*", 200, @-50, @-50, Axl1, false);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

//◆場所：半田明神_鳥居
	OnBG(10,"bg0602211半田明神_鳥居_ペンキ");
	FadeBG(0,true);

//あきゅん「演出：10/12/17パッチで調整。この場ではまだ撃ってないので通常にしました」
//	CreateTextureSP("絵背景100", 100, Center, -850, "cg/bg/bg0602200半田明神_鳥居_ペンキ.jpg");
	CreateTextureSP("絵背景100", 100, Center, -850, "cg/bg/bg0602100半田明神_鳥居_通常.jpg");
	SetShade("絵背景100", MIDEUM);

	DrawDelete("絵黒幕", 300, 100, null, "slide_02_01_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
{	St("C",700, @0,@-50,"stノーコa_通常_normal");
	Move("@StNameC/C*", 400, @0, @50, Dxl1, false);
	FadeSt("C",300,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100101430nko">
「どこをねらっているの？」

{	St("MR",700, @-50,@0,"bu歌門_威圧_pinch");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @50, @0, Dxl3, false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100101440kms">
「くっ！　私たちを、弄んで――」

{	St("ML",700, @20,@0,"buみそa_オラオラ_angry");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @-20, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/100101450mso">
「待て――――い！」

{	St("MR",700, @-20,@0,"buブーa_オラオラ_angry");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @20, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/100101460buu">
「逃がすか――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	CreateSE("SE11","se戦闘_ペイント弾直撃複数_16発");
	MusicStart("SE11",0,700,0,1000,null,false);

	EffectZoomadd(10000, 200, 150, "cg/ef/efペイント弾飛来.jpg", false);

	MFlash(30, 8);

	Wait(800);

	CreateSE("SE12","se戦闘_ペイント弾直撃複数_12発");
	MusicStart("SE12",0,700,0,1000,null,false);
	EffectZoomadd(10000, 200, 150, "cg/ef/efペイント弾飛来.jpg", false);

	MFlash(30, 6);

	Wait(800);

	CreateColorSP("絵色白白", 2000, "#FFFFFF");
	Wait(50);

	CreateTextureSP("絵背景100", 100, Center, -850, "cg/bg/bg0602200半田明神_鳥居_ペンキ.jpg");
	SetShade("絵背景100", MIDEUM);

	FadeDelete("絵色白白", 200, null, true);


{	St("C",700, @0,@0,"stノーコa_通常_smile");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0345]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100101470nko">
「さようなら――」

{	CreateSE("SE01","se動作_空飛ぶ02");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("@xbgm*", 1500, 0, null);

	Move("@StNameC/C*", 300, @-50, @-50, Axl2, false);
	DeleteAllSt(200,false);}
　嘲るように輪を描いて、ノーコの姿が夜空に消える。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("ML",700, @-20,@0,"buミヅハ_通常_sigh");
	Move("@StNameML/ML*", 200, @20, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100101480mzh">
「ふ――不覚！　逃げられてしまうとは――！」

{	St("ML",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100101490mzh">
「皆の者、追いかけ――」

{	St("ML",700, @0,@0,"buミヅハ_手構え_other");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100101500mzh">
「ん？」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/100101510mzh">
「どうした、星よ」

{	St("MR",700, @0,@0,"bu歌門_口覆い_fear");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 200, 0, 5, 0, 0, 500, Dxl3, false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100101520kms">
「な、な……」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100101530kms">
「なんてこと――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se擬音_ギャグ_ガーン01");
	CreateSE("SE02","se擬音_ギャグ_ガーン01");
	CreateSE("SE03","se擬音_ギャグ_ガーン01");
	CreateSE("SE04","se擬音_ギャグ_ガーン01");


	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteAllSt(0,true);
	Delete("絵背景100");
//◆場所：半田明神_屋根_ペンキ
	OnBG(10,"bg0605200半田明神_屋根_ペンキ");
	FadeBG(10,true);

	DrawDelete("絵黒幕", 150, 100, null, "slide_01_01_1", true);

	MusicStart("SE01",0,700,0,1000,null,false);

	WaitKey(1000);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

//◆場所：半田明神_境内_ペンキ
	OnBG(10,"bg0603200半田明神_境内_ペンキ");
	FadeBG(10,true);

	DrawDelete("絵黒幕", 150, 100, null, "slide_01_01_1", true);

	MusicStart("SE02",0,700,0,1000,null,false);

	WaitKey(1000);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

//◆場所：半田明神_鳥居_ペンキ
	OnBG(10,"bg0602211半田明神_鳥居_ペンキ");
	FadeBG(10,true);
	CreateTextureSP("絵背景100", 100, Center, 0, "cg/bg/bg0602200半田明神_鳥居_ペンキ.jpg");

	DrawDelete("絵黒幕", 150, 100, null, "slide_01_01_1", true);

	MusicStart("SE03",0,700,0,1000,null,false);

	Wait(120);

	MusicStart("SE04",0,700,0,1000,null,false);

	Move("絵背景100", 2000, @0, -850, AxlDxl, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
{	St("C",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/100101540kms">
「お社が……真っ黄色に…………！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 500, 1000, null, true);

{	ClockPass(2218);}

//◆場所：秋葉原_上空
	OnBG(10,"bg2401100空_上空_通常");
	FadeBG(0,true);
	Delete("絵背景100");
	Wait(1000);

	CreateSE("SE20","se環境_風_l");
	CreateSE("SE21","se環境_風低音_l");
	MusicStart("SE20",5000,1200,0,1000,null,true);
	MusicStart("SE21",5000,1000,0,1000,null,true);

	Fade("絵色黒", 1000, 0, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100101550nko">
「……わたしがねがいをかなえるばしょ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100101560nko">
「それは、きまってる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se動作_空飛ぶ02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

{	ClockPass(2219);}

//◆場所：あにのあな_屋上
	OnBG(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);
	Wait(1000);


	DrawDelete("絵黒幕", 1000, 100, null, "slide_02_01_0", true);

	Wait(1000);

	St2("C",700, @0,@-80,"fuノーコa_通常_normal","cg2/",".png");
	Move("@StNameC/C*", 800, @0, @80, Dxl1, false);
	FadeSt("C",800,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0375]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100101570nko">
「…………」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100101580nko">
「すべてはここから、はじまった」

{	Move("@StNameC/C*", 800, @0, @30, Dxl1, false);
	DeleteAllSt(200,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100101590nko">
「だから――」

{	CreateSE("SE01","se銃_構える");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("C",700, @0,@30,"fuノーコa_銃構え_normal");
	Move("@StNameC/C*", 800, @0, @-30, Dxl1, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/100101600nko">
「もういちど、ここから、はじめよう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(400,true);

//◆演出指定：アザナエルを手にするノーコ

//◆ＳＥ：扉がバタンと開く
	CreateSE("SE02","se動作_ドア蹴破る");
	MusicStart("SE02",0,1200,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
{	St("C",700, @0,@50,"bu似鳥_通常_shout");
	Shake("@StNameC/C*", 200, 5, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100101610nki">
「まてッ！！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100101620nki">
「ノーコ、待て！　待つんだッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_カッター_刃出す03遅いa");
	MusicStart("SE01",0,2000,0,500,null,false);

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	SetVolumeEX("SE*", 3000, 0, null);


	EndScene();
}
