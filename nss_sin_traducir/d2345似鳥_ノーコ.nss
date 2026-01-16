
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene d2345似鳥_ノーコ.nss_MAIN
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

	if(#RouteName=="d"){
		$GameName="c2357恵那.nss";//★エンディング中（d）
	}else if(#RouteName=="e"){
		$GameName="e2355沙紅羅.nss";//★エンディング中（e）
	}
}


scene d2345似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="350">
////////////header////////////
//file name "d2345似鳥_ノーコ.nss"
//title ""
//previous "2340似鳥.nss"

////////////footer////////////
//next（flkagome4 = false） "c2357恵那.nss"
//next "e2355沙紅羅.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景BG", 50, Center, Middle, "cg/bg/l/bg0607300半田明神_拝殿_布地_l.jpg");
	Request("絵背景BG", Smoothing);
	SetShade("絵背景BG", HEAVY);
	Zoom("絵背景BG", 0, 650, 650, null, true);

//◆場所：半田明神_拝殿_布地
	OnBG(10,"bg0607300半田明神_拝殿_布地");
	FadeBG(0,true);

	$BGMPlayingNow="@xbgm12";
	SoundPlay("$BGMPlayingNow", 0, 450, true);

{	St("C",700, @0,@0,"fu似鳥_通常_sad");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 200, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d23/450100010nki">
「いや……でも……」

{	St("C",700, @0,@0,"fu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d23/450100020nki">
「ここで諦めちゃだめだよな……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//	SetVolumeEX("@xbgm*", 500, 1, null);
	CreateColorSP("黒", 15000, BLACK);
	DrawTransition("黒", 500, 0, 1000, 100, null, "cg/data/turn_01_00_0.png", true);


SetFrequency("$BGMPlayingNow", 2000, 900, Dxl3);


//◆演出指示：時間経過
{	ClockPass(2346);}

	Wait(2000);

	DeleteSt("C",0,false);
	DrawDelete("黒", 500, 100, null, "turn_01_00_1", true);
//	SetVolumeEX($BGMPlayingNow, 500, 450, null);

{	St("C",700, @0,@0,"fu似鳥_通常_worry");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d23/450100030nki">
「諦めちゃ……だめ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//	SetVolumeEX("@xbgm*", 500, 1, null);
	CreateColorSP("黒", 15000, BLACK);
	DrawTransition("黒", 1000, 0, 1000, 100, null, "cg/data/turn_01_00_0.png", true);


SetFrequency("$BGMPlayingNow", 2000, 800, Dxl3);

//◆演出指示：時間経過
{	ClockPass(2349);}

	DeleteSt("C",0,false);

	Wait(2000);

	DeleteSt("C",0,false);
	DrawDelete("黒", 1000, 100, null, "turn_01_00_1", true);
//	SetVolumeEX($BGMPlayingNow, 500, 450, null);

{	St("C",700, @0,@0,"fu似鳥_通常_lost");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d23/450100040nki">
「あきらめ……」

{	St("C",700, @0,@0,"fu似鳥_通常_smile");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d23/450100050nki">
「も、時には肝心……かな……」

{	SetVolume("@xbgm*", 1000, 0, null);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/450100060nko">
「にとり――」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_happy");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d23/450100070nki">
「ん……ああ、ノーコ」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/450100080nko">
「ちょうし、どう？」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d23/450100090nki">
「あははは……
　まあ、見ての通り」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu似鳥_通常_happy");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d23/450100100nki">
「おまえは、上手くいったのか？」


{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/450100110nko">
「うん」

{	DeleteSt("MR",200,true);
	St("MR",700, @0,@0,"buノーコb_幽霊_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/450100120nko">
「いろいろあったけど」

{	St("MR",700, @0,@0,"buノーコb_幽霊_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/450100130nko">
「よそうがいの……こと……おおくて……でも……」

{	St("MR",700, @0,@0,"buノーコb_幽霊_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/450100140nko">
「でも……うん、だいじょうぶ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("MR",700, @0,@0,"buノーコb_幽霊_sad");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/450100150nko">
「ミヅハのねがいは、かなう……」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d23/450100160nki">
「ノーコ」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/450100170nko">
「なに、似鳥？」

{	SoundPlay("@xbgm26",0,450,true);
	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d23/450100180nki">
「辛かったろ？」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buノーコb_幽霊_think");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/450100190nko">
「なにが……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateColorSP("白", 20000, WHITE);
	CreateEffect("モノクロ", 5000, @0, @0, 1024, 576, "Monochrome");

	CreateTextureSP("部屋", 3000, @0, @0, "cg/bg/bg1304100似鳥マンション_リビング_通常.jpg");
	SetShade("部屋", SEMIHEAVY);
	DeleteSt("MR",0,true);
	Fade("白", 300, 0, null, true);

{	ClockPass(2350);}

{	St("ML",19010, @100,@0,"fu似鳥_背張る_normal");
	Move("@StNameML/ML*", 30000, @-200, @0, null, false);
	FadeSt("ML",1000,false);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d23/450100200nki">
「オレは今日までずっと、嘘をついてきた」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d23/450100210nki">
「自分は、いつか世界をひっくり返すだけの才能があるって、自分に言い続けてきた」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d23/450100220nki">
「そうやって自分に嘘をついて、騙し続けて、目を逸らし続けたんだ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d23/450100230nki">
「でももう、そういうのはやめた」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d23/450100240nki">
「ウソはウソだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("白", 300, 1000, null, true);
	Delete("部屋");
	Delete("モノクロ");
	DeleteSt("ML",0,true);
	FadeDelete("白",1000,null,true);



{	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d23/450100250nki">
「でも、そんな自分を見つめたから、もう一歩前に進める」

{	St("ML",700, @0,@0,"bu似鳥_背張る_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d23/450100260nki">
「おまえが妄想の存在であることを認めたから、オレは、おまえが好きになれたんだ」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/450100270nko">
「にとり……」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d23/450100280nki">
「他の誰に言わなくてもいい」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d23/450100290nki">
「もし、おまえが辛かったら――
　オレが、そんなおまえの力になれるなら――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("ML",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d23/450100300nki">
「オレに本当のことを、教えてくれないか？」


{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buノーコb_幽霊_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/450100310nko">
「にとり……にとり……！」

{	St("MR",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/450100320nko">
「あの……あの、ね？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/450100330nko">
「きいて……きいてくれる？」

{	SetVolumeEX("@xbgm*", 3000, 0, null);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/450100340nko">
「フウリは……フウリはね……」

{	Wait(1000);}

{	St("MR",700, @0,@0,"buノーコb_通常_cry");
	FadeStPro("MR", 600, 6000);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/450100350nko">
「きっと、もう、しんでるの」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	AgainSt("MR",700, @0,@0,"buノーコb_通常_cry");

	TextBoxDelete(150);
	EndFileBlackOut(20000,2000);

	EndScene();
}
