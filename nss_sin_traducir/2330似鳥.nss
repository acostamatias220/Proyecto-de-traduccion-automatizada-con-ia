
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2330似鳥.nss_MAIN
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

	//★徒歩：フラグ修正
	if($myRoute=="トゥルー"){
		$GameName = "2340似鳥.nss";
	}else{

		SetVolumeEX("@xbgm*", 2000, 0, null);
		CreateColorEX("絵色100", 25000, "BLACK");
		Fade("絵色100", 1500, 1000, null, true);

		Delete("@絵背景*");
		Delete("@揺用");
		OnBG(10,"bg0604211半田明神_社務所_雪");
		FadeBG(0,true);
		Wait(1000);
		Fade("絵色100", 1500, 0, null, true);
		Delete("絵色100");

		$GameName = "2348ノーコ_フウリ.nss";//★エンディングへ（e）
	}
}

scene 2330似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="940">
////////////header////////////
//file name "2330似鳥.nss"
//title "死者からの伝言"
//previous "2320似鳥.nss"

////////////footer////////////
//next "似鳥"（"flkagome5" = false） "2348ノーコ_フウリ.nss"
//next "2340似鳥.nss"

////////////body////////////


//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2330);}


//◆場所：半田明神_拝殿_布地
	OnBG(10,"bg0607300半田明神_拝殿_布地");
	FadeBG(0,true);

	FadeDelete("上背景", 200, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400010nki">
「――――」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400020nki">
「ふぅ――――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：ちゃぷちゃぷ
	CreateSE("SE01","se動作_墨汁ひたす");
	MusicStart("SE01",0,700,0,1000,null,false);


	Wait(500);

	SoundPlay("@xbgm25",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"fu似鳥_背張る_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400030nki">
（書き直しなんて、できない）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400040nki">
（正真正銘、一発勝負）

{	St("C",700, @0,@0,"fu似鳥_通常_smile");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400050nki">
（はは……足が震えてる）

{	ClockPass(2331);}


{	DeleteAllSt(200,true);
	St("MR",700, @0,@30,"buミリＰa_通常_normal");
	Move("@StNameMR/MR*", 200, @0, @-30, Dxl1, false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/300400060mrp">
「怖い？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400070nki">
「ああ。怖いよ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/300400080mrp">
「そう聞いて安心したわ。
　恐怖はきっと、あなたの味方」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400090nki">
「ミリＰさん」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/300400100mrp">
「なに？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400110nki">
「オレ、あなたが嫌いでした」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400120nki">
「数字を取ることに命懸けてます、って感じで、視聴者を騙せればそれでＯＫとか言って」

{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400130nki">
「オレとは絶対ウマの合わない感じだった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/300400140mrp">
「そう……確かに、そうかもしれないわね」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400150nki">
「でも――今は、違います」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400160nki">
「オレだから、生み出せるもの――
　オレが、生きてきた証――」

{	St("ML",700, @0,@0,"bu似鳥_通常_happy");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400170nki">
「それを出せって、言ってくれました」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2332);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/300400180mrp">
「確かに、アタシらしくない物言いだったかもね」

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/300400190mrp">
「でも、思ったのよ」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/300400200mrp">
「時には沙紅羅ちゃんみたいに、なりふり構わず計算もなく、思いっきり前に踏み出すことも必要なんじゃないか」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400210nki">
「――ありがとうございます」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/300400220mrp">
「お礼なら、沙紅羅ちゃんに言いなさい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400230nki">
「ですね……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/300400240mrp">
「いい？　似鳥君。
　自分に良く言い聞かせなさい」

{	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/300400250mrp">
「時間が足りないなんて、言い訳はナシよ」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/300400260mrp">
「今、この場で出来ないものは、一生かかっても出来ない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("MR",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/300400270mrp">
「この瞬間、この一瞬に――
　あなたの持つ全てをぶつけなさい」

{	St("MR",700, @0,@0,"buミリＰa_通常_happy");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/300400280mrp">
「悔いが、残らないようにね！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_shout");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400290nki">
「――はい！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_ショータイム_happy");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/300400300mrp">
「さ、外は大雪！　準備は万端よ。
　アタシもそろそろ、向こうの相手をしなくちゃね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 1000, 0, null);

	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("@StNameMR/MR*", 200, @100, @0, Axl1, false);
	DeleteAllSt(200,true);

	Wait(1000);

	SetVolumeEX("SE*", 1000, 0, null);

{	ClockPass(2333);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　照れたように言って、ミリＰはその場を出た。

{	St("C",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400310nki">
「――――」

{	St("C",700, @0,@0,"bu似鳥_背張る_shout");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400320nki">
「――――よしッ！！」

{	St("C",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400330nki">
「行くぞ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2334);}


	TextBoxDelete(150);


	Move("@StNameC/C*", 400, @0, @100, Axl1, false);
	DeleteAllSt(400,true);

	SoundPlay("@xbgm01_noint",0,600,true);


//◆ＥＶ："ev/ev2330似鳥お絵かきタイム.txt"

//◆ＳＥ：巨大毛筆で絵を描く

	CreateColorEX("絵色100", 1500, "BLACK");
	CreateColorEX("絵色白", 2500, "WHITE");
	Fade("絵色100", 1000, 1000, null, true);

	CreateTextureEX("絵背景", 100, -1000, -10, "cg/ev/l/ev2330似鳥お絵かきタイム_l.jpg");
	SetBlur("絵背景", true, 2, 500, 100, false);
	CreateTextureEX("絵背景200", 100, Center, Middle, "cg/ev/ev2330似鳥お絵かきタイム.jpg");
	Zoom("絵背景200", 0, 2000, 2000, null, true);
	SetBlur("絵背景200", true, 2, 500, 50, false);

	CreateTextureEX("絵背景筆01", 3000, Center, Middle, "cg/ef/ef筆字04.png");
	Zoom("絵背景筆01", 0, 800, 800, null, true);
	SetBlur("絵背景筆01", true, 2, 500, 100, false);
	CreateTextureEX("絵背景筆02", 3000, Center, Middle, "cg/ef/ef筆字03.png");
	Zoom("絵背景筆02", 0, 800, 800, null, true);
	SetBlur("絵背景筆02", true, 2, 500, 100, false);
	CreateTextureEX("絵背景筆03", 3000, Center, Middle, "cg/ef/ef筆字02.png");
	Zoom("絵背景筆03", 0, 800, 800, null, true);
	SetBlur("絵背景筆03", true, 2, 500, 100, false);

//	CreateTextureEX("絵背景筆しぶき01", 3000, Center, Middle, "cg/ef/ef筆雫02.png");
//	CreateTextureEX("絵背景筆しぶき02", 3000, Center, Middle, "cg/ef/ef筆雫03.png");


	Fade("絵背景", 0, 1000, null, true);

	MoveFTP3("@絵背景", 2000, 12, 3);



	Wait(500);

	CreateSE("SE01","se環境_水に落ちる");
	CreateSE("SE02","se戦闘_ペイント弾直撃");
	CreateSE("SE11","se動作_毛筆書き");
	MusicStart("SE01",0,500,0,4000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE11",0,700,0,1000,null,false);

	EffectZoom(10000, 2000, 400, "cg/ef/ef筆雫01.png", false);

	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);


	Move("絵背景筆01", 1100, @100, @100, Dxl2, false);
	Zoom("絵背景筆01", 500, 1000, 1000, Dxl1, false);

	Fade("絵背景筆01", 0, 1000, null, true);
	DrawTransition("絵背景筆01", 80, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", true);

	Fade("絵背景筆01", 1000, 0, null, false);
	Wait(200);
	Fade("絵色白", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400340nki">
「――――ふんっ！」

{
	Fade("絵色100", 500, 1000, null, true);
	Move("絵背景", 0, -10, -560, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400350nki">
（失敗は怖い）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se環境_水に落ちる");
	MusicStart("SE01",0,700,0,3000,null,false);


	EffectZoom(10000, 2000, 400, "cg/ef/ef筆雫02.png", false);

	SetBlur("絵背景筆01", false, 2, 500, 100, false);
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);
	Rotate("絵背景筆01", 0, @0, @180, @0, null,true);
	Zoom("絵背景筆01", 0, 800, 800, null, true);
	SetBlur("絵背景筆01", true, 2, 500, 100, false);


	Move("絵背景筆01", 1100, @-200, @100, Dxl2, false);
	Zoom("絵背景筆01", 500, 1000, 1000, Dxl1, false);

	Fade("絵背景筆01", 0, 1000, null, true);
	DrawTransition("絵背景筆01", 80, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", true);

	Fade("絵背景筆01", 1000, 0, null, false);
	Wait(200);
	Fade("絵色白", 500, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400360nki">
「ん――ん――んん――！」

{
	Fade("絵色100", 500, 1000, null, true);
	Move("絵背景", 0, -512, -288, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400370nki">
（背伸びだってしたい）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se環境_水に落ちる");
	CreateSE("SE02","se戦闘_ペイント弾直撃");
	CreateSE("SE11","se動作_毛筆書き");
	MusicStart("SE01",0,500,0,4000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE11",0,700,0,1000,null,false);

	EffectZoom(10000, 2000, 400, "cg/ef/ef筆雫03.png", false);
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);


	Move("絵背景筆03", 1100, @100, @0, Dxl2, false);
	Zoom("絵背景筆03", 500, 900, 900, Dxl1, false);

	Fade("絵背景筆03", 0, 1000, null, true);
	DrawTransition("絵背景筆03", 80, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", true);

	Fade("絵背景筆03", 1000, 0, null, false);
	Wait(200);
	Fade("絵色白", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400380nki">
「だあっ！！」

{
	Fade("絵色100", 500, 1000, null, true);
	Move("絵背景", 0, -898, -22, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400390nki">
（指さされて笑われたくない）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se環境_水に落ちる");
	CreateSE("SE02","se戦闘_ペイント弾直撃");
	CreateSE("SE11","se動作_毛筆書き");
	MusicStart("SE01",0,500,0,4000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE11",0,700,0,1000,null,false);

	EffectZoom(10000, 2000, 400, "cg/ef/ef筆雫04.png", false);

	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);


	Move("絵背景筆02", 1100, @-100, @-50, Dxl2, false);
	Zoom("絵背景筆02", 500, 1000, 1000, Dxl1, false);

	Fade("絵背景筆02", 0, 1000, null, true);
	DrawTransition("絵背景筆02", 80, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", true);

	Fade("絵背景筆02", 1000, 0, null, false);
	Wait(200);
	Fade("絵色白", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400400nki">
「ん、ん、や――おおおおおお――」

{
	Fade("絵色100", 500, 1000, null, true);
	Move("絵背景", 0, -10, -560, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400410nki">
（でも、そんな情けないことを考えるのも、オレ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2335);}


	TextBoxDelete(150);


	SetBlur("絵背景筆01", false, 2, 500, 100, false);
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);
	Rotate("絵背景筆01", 0, @0, @180, @0, null,true);
	Zoom("絵背景筆01", 0, 800, 800, null, true);
	SetBlur("絵背景筆01", true, 2, 500, 100, false);

	CreateSE("SE01","se環境_水に落ちる");
	CreateSE("SE02","se戦闘_ペイント弾直撃");
	CreateSE("SE11","se動作_毛筆書き");
	MusicStart("SE01",0,500,0,4000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE11",0,700,0,1000,null,false);

	EffectZoom(10000, 2000, 400, "cg/ef/ef筆雫06.png", false);

	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);


	Move("絵背景筆01", 1100, @100, @100, Dxl2, false);
	Zoom("絵背景筆01", 500, 1000, 1000, Dxl1, false);

	Fade("絵背景筆01", 0, 1000, null, true);
	DrawTransition("絵背景筆01", 80, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", true);

	Fade("絵背景筆01", 1000, 0, null, false);
	Wait(200);
	Fade("絵色白", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400420nki">
「せいっ！！」

{
	Fade("絵色100", 500, 1000, null, true);
	Move("絵背景", 0, -710, -112, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400430nki">
（そして、そのオレが生み出せる、精一杯のものを――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetBlur("絵背景筆03", false, 2, 500, 100, false);
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);
	Rotate("絵背景筆03", 0, @0, @180, @0, null,true);
	Zoom("絵背景筆03", 0, 800, 800, null, true);
	SetBlur("絵背景筆03", true, 2, 500, 100, false);

	CreateSE("SE01","se環境_水に落ちる");
	CreateSE("SE02","se戦闘_ペイント弾直撃");
	CreateSE("SE11","se動作_毛筆書き");
	MusicStart("SE01",0,500,0,4000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE11",0,700,0,1000,null,false);

	EffectZoom(10000, 2000, 400, "cg/ef/ef筆雫03.png", false);
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);


	Move("絵背景筆03", 1100, @100, @0, Dxl2, false);
	Zoom("絵背景筆03", 500, 900, 900, Dxl1, false);

	Fade("絵背景筆03", 0, 1000, null, true);
	DrawTransition("絵背景筆03", 80, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", true);

	Fade("絵背景筆03", 1000, 0, null, false);
	Wait(200);
	Fade("絵色白", 500, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400440nki">
「っ！　んぐ――んぐ――んぐぐぐぐぐ――！！」

{
	Fade("絵色100", 500, 1000, null, true);
	Move("絵背景", 0, -512, -288, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400450nki">
（全力で、描いてやるッ！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 1000, 0, null);

	TextBoxDelete(150);
	MoveFTP3stop();
	Delete("絵背景");
	Delete("絵筆*");
	Fade("絵色100", 100, 0, null, false);
	Fade("絵背景200", 200, 1000, null, false);
	Zoom("絵背景200", 400, 1000, 1000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400460nki">
「だあああああああああッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se環境_水に落ちる");
	CreateSE("SE02","se戦闘_ペイント弾直撃");
	CreateSE("SE01a","se環境_水に落ちる");
	CreateSE("SE02a","se戦闘_ペイント弾直撃");
	CreateSE("SE01b","se環境_水に落ちる");
	CreateSE("SE02b","se戦闘_ペイント弾直撃");
	CreateSE("SE01c","se環境_水に落ちる");
	CreateSE("SE02c","se戦闘_ペイント弾直撃");

/*
	CreateSE("SE01d","se環境_水に落ちる");
	CreateSE("SE02d","se戦闘_ペイント弾直撃");
*/
	CreateTextureEX("絵背景筆雫01", 5100, Center, Middle, "cg/ef/ef筆字03.png");
	CreateTextureEX("絵背景筆雫02", 5100, Center, Middle, "cg/ef/ef筆字02.png");
	Rotate("絵背景筆雫02", 0, @0, @180, @0, null,true);
	CreateTextureEX("絵背景筆雫03", 5100, Center, Middle, "cg/ef/ef筆字04.png");

/*
	CreateTextureEX("絵背景筆雫04", 5100, Center, Middle, "cg/ef/ef筆字03.png");
	CreateTextureEX("絵背景筆雫05", 5100, Center, Middle, "cg/ef/ef筆雫06.png");
*/
	Zoom("絵背景筆雫*", 0, 900, 900, null, false);


	Zoom("絵背景200", 200, 3000, 3000, Axl1, false);
	Wait(200);
	Fade("絵色白", 0, 1000, null, true);

	Zoom("絵背景筆雫01", 200, 1300, 1300, Dxl1, false);
	MusicStart("SE01",0,700,0,2500,null,false);
	MusicStart("SE02",0,1200,0,800,null,false);
	Fade("絵背景筆雫01", 0, 1000, null, true);
	Wait(200);

	Zoom("絵背景筆雫02", 200, 1300, 1300, Dxl1, false);
	MusicStart("SE01a",0,700,0,4500,null,false);
	MusicStart("SE02a",0,1200,0,1200,null,false);
	Fade("絵背景筆雫02", 0, 1000, null, true);
	Wait(200);

	Zoom("絵背景筆雫03", 200, 1300, 1300, Dxl1, false);
	MusicStart("SE01b",0,700,0,3500,null,false);
	MusicStart("SE02b",0,1200,0,1300,null,false);
	Fade("絵背景筆雫02", 0, 0, null, true);
	Fade("絵背景筆雫03", 0, 1000, null, true);
	Wait(200);

/*
	MusicStart("SE01c",0,700,0,4500,null,false);
	MusicStart("SE02c",0,1200,0,1000,null,false);
	Fade("絵背景筆雫03", 0, 0, null, true);
	Fade("絵背景筆雫04", 0, 1000, null, true);
	Wait(100);

	MusicStart("SE01d",0,700,0,2500,null,false);
	MusicStart("SE02d",0,1200,0,800,null,false);
	Fade("絵背景筆雫04", 0, 0, null, true);
	Fade("絵背景筆雫05", 0, 1000, null, true);
	Wait(100);
*/
	MusicStart("SE01c",0,700,0,4500,null,false);
	MusicStart("SE02c",0,1200,0,1000,null,false);

	CreateColorSP("黒幕１", 15000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 300, Axl1, "cg/data/zzex_circle_01_00_0.png", true);

	Delete("絵背景筆*");
	Delete("絵背景200");
	Delete("絵色白");



	Wait(1500);


	CreateTextureSP("絵背景BG", 50, Center, Middle, "cg/bg/l/bg0607300半田明神_拝殿_布地_l.jpg");
	Request("絵背景BG", Smoothing);
//	SetShade("絵背景BG", HEAVY);
	Zoom("絵背景BG", 0, 650, 650, null, true);


	Fade("黒幕１", 1000, 0, null, true);
	Delete("黒幕１");

	Wait(500);


{	ClockPass(2336);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400470nki">
「――はぁ――はぁ――はぁ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400480nki">
「……よし！」

{	St("C",700, @0,@100,"fu似鳥_背張る_normal");
	Move("@StNameC/C*", 300, @0, @-100, Dxl1, false);
	FadeSt("C",300,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400490nki">
「悪くない！」

{	St("C",700, @0,@0,"fu似鳥_背張る_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400500nki">
「悪くないはずだ――！」

{	St("C",700, @0,@0,"fu似鳥_背張る_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400510nki">
「次は――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 1500, 0, null);


	DeleteAllSt(200,true);

//◆ＳＥ：携帯バイブ → 着信
	CreateSE("SE01","seメカ_携帯_メール着信_似鳥_l");
	MusicStart("SE01",0,700,0,1000,null,false);

/*
	Wait(1000);
	SetVolumeEX("SE01", 0, 1, null);

	SetVolumeEX("SE01", 0, 1000, null);
	Wait(1000);

	SetVolumeEX("SE01", 0, 1, null);
	Wait(1000);

	SetVolumeEX("SE01", 0, 1000, null);
	Wait(1000);

	SetVolumeEX("SE01", 0, 1, null);
*/

{	ClockPass(2337);}


	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
{	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400520nki">
「ん？」

{	SetVolume("SE*", 10, 0, null);
	CreateSE("SE02","seメカ_携帯_電子音01");
	MusicStart("SE02",0,700,0,1000,null,false);

	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400530nki">
「なんだ？　メール？
　誰だよ、このタイミング――でぇっ？」

/*
//▼べー：カットにつき非表示編集しました
//※下倉注：以下の台詞、カットで 2010/10/16
{	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400540nki">
（あれ……差出人が……）
*/

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 1000, 0, null);


//あきゅん「素材：obj携帯メール_似鳥2330」
	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateSE("SE01","se擬音_フラッシュバック");


	CreateAXLPhWindowEX("絵演窓", "Y", 2000, 192, 192, false);
	PhWindowAXLZoom("絵演窓", "Y", 0, 0, null, true);

	CreateTextureSP("絵演窓/絵背景100", 1100, Center, Middle, "cg/obj/obj携帯メール_似鳥2330.png");

	MusicStart("SE01",0,2000,0,2000,null,false);
	PhWindowAXLZoom("絵演窓", "Y", 500, 1000, null, true);

	Wait(3000);

	PhWindowAXLZoom("絵演窓", "Y", 500, 0, null, true);
	Delete("@絵演窓*");


	SoundPlay("@xbgm24",0,450,true);


{	St("C",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400550nki">
「大刀刃那？？」

{	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400560nki">
（い、いや！　ちょっと待て）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400570nki">
（大刀刃那って、死んだんだよな）

{	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_mad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400580nki">
（いやいや、待て待て待て待て！
　コレはどういうことだ？）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400590nki">
（ってか、オレさっきアイツとメールやりとりしたし！
　なんで死者とメールやりとりしてるの！？）

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400600nki">
（ええと、つまり……大刀刃那が死んでないって事は、沙紅羅の弟が死んだって言うのはガセネタ？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("C",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400610nki">
（河原屋双一は、沙紅羅を騙してカゴメアソビを――）

{	St("C",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400620nki">
（……いいや、違う）

{	St("C",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400630nki">
（確か双六が、双一に内緒で動いたって言ってた）

{	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400640nki">
（双六は、嘘をついてまでカゴメアソビを？
　なんでそんなことをする必要が？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2338);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_angry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400650nki">
（ん？　んん？）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400660nki">
（もしかして、コレって……）

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400670nki">
（やっぱりもう、大刀刃那が死んだって考えた方が、スッキリするんじゃないか……？）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400680nki">
（つまり、このメールは……）

{	St("C",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400690nki">
（死者からのメールッ！？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400700nki">
「――――ひ」

{	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_mad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400710nki">
（いやいやいやいや、ない！　ない！）

{	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_angry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400720nki">
（ない！　ないよ……）

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400730nki">
（ない……よな？）

{	St("C",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400740nki">
（まあとにかく、メールの中味を――ん？　ＵＲＬ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 1000, 0, null);

	TextBoxDelete(150);
	DeleteAllSt(200,true);



//◆ＳＥ：ぽちっ、ネットに繋がる
	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);


	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400750nki">
「…………え？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);


//◆演出指定：画面上に2chのスレッド
//おがみ：β要演出箇所：優先度Ａ　携帯２ちゃんねる画面演出
//あきゅん「素材：img2chシーン似鳥2330」

/*

//【2bird大先生のゴスロリ脳内彼女降臨 19羽】

1：名無しさん＠ぬぬー 2010/12/31(金) 22:20:34
とうとう脳内彼女が秋葉原に顕現した！
全国ゆるキャラバンで生まれたスーパーキャラクター、
ヤンデレノーコちゃんについて
かたらないと
ほふる

226：名無しさん＠ぬぬー 2010/12/31(金) 22:30:34
http【ＵＲＬ乗せる】
ＨＤの奧に埋もれてた

227：名無しさん＠ぬぬー 2010/12/31(金) 22:30:38
２ｂｉｒｄって、ニトリ？
お値段以上だな

228：名無しさん＠ぬぬー[2bird] 2010/12/31(金) 22:31:13
脳内彼女とかいうやつホントにいたんだ
究極の自家発電

229：名無しさん＠ぬぬー 2010/12/31(金) 22:31:20
まさかこんなことになるとは夢にも思っていなかった
じっとしてられない
でんしゃが止まってるとか言うけど、オレが行けば
きっと愛のパワーで動く
もう我慢できない
いって来るわアキバ

230：名無しさん＠ぬぬー 2010/12/31(金) 22:32:07
ノーコってなんだよ。能子か。ヨシコちゃんか

231：名無しさん＠ぬぬー 2010/12/31(金) 22:32:20
>>226 gj

232：名無しさん＠ぬぬー 2010/12/31(金) 22:31:23
パスくれ

233：名無しさん＠ぬぬー 2010/12/31(金) 22:31:54
>>226 こりゃねーわ

234：名無しさん＠ぬぬー 2010/12/31(金) 22:32:04
>>232 メル欄

235：名無しさん＠ぬぬー 2010/12/31(金) 22:33:30
チンコ萎えた

236：名無しさん＠ぬぬー 2010/12/31(金) 22:33:31
情熱だけじゃどうしようもないことってのはあるんだよ

237：名無しさん＠ぬぬー 2010/12/31(金) 22:34:43
っていうかこの人才能ないよね。
キャラも可愛くないし、
デッサンも出来てないし、
それより何よりまずエロくないｗ
こんなのでデザイナーとか舐めてんの？

*/

	CreateTextureEX("絵背景100", 120, Center, 0, "cg/img/img2chシーン似鳥2330.jpg");
	Fade("絵背景100", 1000, 1000, null, true);

	WaitKey(1500);

	Move("絵背景100", 15000, @0, -576, null, false);

	WaitKey(15000);

	SoundPlay("@xbgm12",0,450,true);

	Fade("絵背景100", 1000, 0, null, true);
	Delete("絵背景100");


	CreatePlainEX("揺用", 100);
	SetShade("揺用", HEAVY);
	Fade("揺用", 1000, 1000, null, true);

//	SetShade("絵背景BG", HEAVY);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	St("C",700, @0,@0,"fu似鳥_通常_smile");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400760nki">
「……ですよねー」

{	St("C",700, @0,@0,"fu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400770nki">
（いや、まあ、こうなるとは思ってたけどさ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2339);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	St("C",700, @0,@0,"fu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400780nki">
（そりゃ、オレごときが注目浴びたら、笑いものだよ）

{	St("C",700, @0,@0,"fu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400790nki">
（うん、もしオレがテレビ見てても、同じことするもん）

{	St("C",700, @0,@0,"fu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400800nki">
（なんつーか、普通のことで……）

{	St("C",700, @0,@0,"fu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400810nki">
（普通で、だから大したこと、ないし）

{	St("C",700, @0,@0,"fu似鳥_通常_lost");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400820nki">
「はぁ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	St("C",700, @0,@0,"fu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400830nki">
「はぁぁ……」

{	St("C",700, @0,@0,"fu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400840nki">
「はぁぁぁぁ…………」

{	St("C",700, @0,@0,"fu似鳥_通常_shout");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400850nki">
「はぁぁぁぁぁぁぁぁ………………」

{	St("C",700, @0,@0,"fu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400860nki">
（ってかさ、わけわかんねーし）

{	St("C",700, @0,@0,"fu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400870nki">
（なんで大刀刃那がこんなＵＲＬ送ってくるわけ？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	St("C",700, @0,@0,"fu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400880nki">
（っつーか、プレッシャー？　嫌がらせ？
　んで、オレを鬱にさせておいて――）

{	St("C",700, @0,@0,"fu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400890nki">
「自殺させる……」

{	St("C",700, @0,@0,"fu似鳥_眼鏡上げ_mad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400900nki">
「いやいやいやいや！　ないでしょ！　ないない！」

{	St("C",700, @0,@0,"fu似鳥_眼鏡上げ_angry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400910nki">
「ホントに死者からのメールとか、そういうの信じないし」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	St("C",700, @0,@0,"fu似鳥_ラッパー_rage");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400920nki">
「オレは描く！
　ちゃんと、マスコットキャラ描いて――」

{	St("C",700, @0,@0,"fu似鳥_通常_shout");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400930nki">
「描いて――かいて……」

{	St("C",700, @0,@0,"fu似鳥_通常_lost");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/300400940nki">
「うう……死にたひ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);




	EndScene();
}
