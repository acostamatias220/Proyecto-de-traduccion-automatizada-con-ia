
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2020似鳥.nss_MAIN
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
	$GameName = "2030似鳥.nss";
//	$GameCircle=false;

}

scene 2020似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="510">
////////////header////////////
//file name "2020似鳥.nss"
//title "トラブル"
//previous "2020カゴメ1.nss"

////////////footer////////////
//next "似鳥" "2030似鳥.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//定義
	Kagome_AllEffect_Set(3000);

{	ClockPass(2020);}

	CreateColorEXadd("絵色100", 15000, "WHITE");

//◆場所：バックギャモン_店内
	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);

	if($PreGameName=="2020カゴメ1.nss"){
	Fade("絵色100", 0, 1000, null, true);
	FadeDelete("上背景", 200, null, true);
	}else{
	FadeDelete("上背景", 0, null, true);
	Fade("絵色100", 200, 1000, null, true);
	}
/*
	CloudZoomSmokeSet01("スモークプロセスA",200,"cg/ef/天使の羽big.png");
	CloudZoomSmokeSet02("スモークプロセスB",200,"cg/ef/天使の羽big.png");

	CloudZoomSmokeStart01(3800,500,500,2500,900,-300,576,-100,-100,Dxl1);
	CloudZoomSmokeStart02(3500,500,500,2500,900,1044,576,824,-100,Dxl1);


	CreateTextureSPadd("絵背景100", 500, Center, Middle, "cg/ef/ef044_火花c.png");
	Zoom("絵背景100", 0, 1000, 1000, null, true);

	CreateTextureEXadd("雲１", 3000, Center, Middle, "cg/ef/天使の羽big.png");
	CreateTextureEXadd("雲２", 3000, Center, Middle, "cg/ef/天使の羽big.png");
	CreateTextureEXadd("雲２０", 3000, Center, Middle, "cg/ef/天使の羽big.png");
	CreateTextureEXadd("雲３", 3000, Center, InBottom, "cg/ef/天使の羽big.png");
	CreateTextureEXadd("雲小４", 3000, -800, 100, "cg/ef/天使の羽big.png");
	CreateTextureEXadd("雲小５", 3000, -600, -100, "cg/ef/天使の羽big.png");
	CreateTextureEXadd("雲小６", 3000, -1600, 100, "cg/ef/天使の羽big.png");
	CreateTextureEXadd("雲小７", 3000, -800, 130, "cg/ef/天使の羽big.png");
	Rotate("雲１", 0, @0, @0, @-240, null,true);
	Rotate("雲２", 0, @0, @0, @-70, null,true);
	Rotate("雲２０", 0, @0, @0, @120, null,true);
	Rotate("雲３", 0, @0, @0, @-110, null,true);
	Rotate("雲小６", 0, @0, @0, @-180, null,true);
	Rotate("雲小４", 0, @0, @0, @70, null,true);
	Rotate("雲小５", 0, @0, @0, @-150, null,true);

	Zoom("雲小４", 0, 500, 500, null, true);
	Zoom("雲小５", 0, 350, 350, null, true);
	Zoom("雲小６", 0, 600, 600, null, true);
	Zoom("雲小７", 0, 750, 750, null, true);

	FadeF4("EF100", 3000, 1000, 3000, 0, 0, null, false);

	Rotate("絵背景100", 10000, @0, @0, @990000, null,false);
	Zoom("絵背景100", 3000, 1500, 1500, null, false);
	Fade("絵背景100", 3000, 0, Axl2, false);

	Move("雲１", 0, @-800, @-200, null, true);
	Move("雲２", 0, @-800, @+100, null, true);
	Move("雲２０", 0, @-1600, @+100, null, true);
	Move("雲３", 0, @-800, @+130, null, true);

	Fade("雲*", 0, 1000, null, true);

	CreateSE("SE00","se擬音_カゴメアソビ成功");
	CreateSE("SE000","se擬音_光り輝く01");
	MusicStart("SE00",0,1400,0,1000,null,false);
	MusicStart("SE000",0,700,0,1000,null,true);
	SetFrequency("SE000", 2000, 1050, null);

	Rotate("雲*", 6000, @0, @0, @190, Dxl1,false);
	Zoom("雲*", 6000, @-500, @-500, Dxl2, false);

	Move("雲小４", 5500, @+1600, @-100, Dxl1, false);
	Move("雲小５", 5500, @+800, @-100, Dxl1, false);
	Move("雲小６", 5500, @+1600, @-100, Dxl1, false);
	Move("雲小７", 5500, @+2400, @+0, Dxl1, false);

	Move("雲１", 2000, @+1600, @-100, Dxl1, false);
	Move("雲２", 750, @+1600, @-100, Dxl1, false);
	Move("雲３", 1500, @+1600, @-100, Dxl1, false);
	Move("雲２０", 2500, @+2400, @+0, Dxl1, false);
	Request("雲*", Disused);


	Move("絵背景END", 4500, @400, @0, Dxl1, false);

	FadeDelete("雲小*", 4500, null,false);
	FadeDelete("絵色100", 2000, null, false);
	Wait(3500);

	CloudZoomSmokeDelete02(1000);
	CloudZoomSmokeDelete01(1000);

	SetVolumeEX("SE000", 2000, 0, null);


	CreateColorSP("絵色100", 15000, "BLACK");

	CreateTextureEXadd("効果線", 18200, Center, Middle, "cg/data/zoom_01_00_0.png");
	$効果ナット名 = @効果線;
	CreateProcess("プロセス１", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス１","プロセス１");
	Request("プロセス１", Start);
*/

	FadeDelete("絵色100", 1500, Axl2, false);

//動作
	Kagome_AllEffect_Start();
	Wait(3000);

//消去
	Kagome_AllEffect_Delete(3000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200400010nko">
「ぁ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//飛び出した不可視の希望は、目映い羽根を散らして舞い、射線に躍り出たノーコを撃ち抜いて、消えた。→演出でフォロー？？
//おがみ：β調整済み


	St("ML",700, @0,@0,"fu似鳥_通常_rage");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400020nki">
「ノーコッ！」

{	Move("@StNameML/ML*", 200, @0, @100, Axl1, false);
	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/200400030ksr">
「ん――？　まあ、確かにノーコンか」

{	St("MR",700, @0,@0,"bu双六a_通常_pinch");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/200400040ksr">
「けどなんか、途中で消えた気が……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	St("ML",700, @0,@0,"fu似鳥_通常_normal");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400050nki">
「大丈夫、か……？」

{	DeleteAllSt(200,true);}
　問いかけるが、ノーコは倒れたまま反応しない。

　代わりに返答するのは――

{	St("MR",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/200400060ksr">
「大丈夫だ。ピンピンしてるぜ」

{	St("MR",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/200400070ksr">
「ったく、そんなビビんなって」

{
	CreateSE("SE01","se銃_構える");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,true);}
　似鳥に近づくと、その指からアザナエルを奪い取り、自らに向けた。

{	St("MR",700, @0,@0,"bu双六a_通常_shock");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/200400080ksr">
「外さなきゃ、オレの願いが叶ったっていうのによ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	St("MR",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/200400090ksr">
「カゴメアソビっつったってなぁ。
　６分の１だぞ、６分の１」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/200400100ksr">
「テキトーに撃ったって、んな当たるわけ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

//◆ＳＥ：発砲音
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	CreateSE("SE01","se銃_銃声01");

	MusicStart("SE01",0,1500,0,1000,null,false);

	Wait(1000);
	Fade("絵色白", 0, 1000, null, true);


//◆演出指定：唐突にビックリさせる演出。ノーコが倒れていることを忘れさせるような唐突さで。
//おがみ：β調整済み


	Shake("@StNameMR/MR*", 500, 10, 0, 0, 0, 1000, Dxl2, false);

	Wait(50);

	DeleteAllSt(0,true);


	Fade("絵色白", 2000, 0, null, true);

	Wait(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/200400110ksr">
「あ……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	DeleteAllSt(1000,true);

//おがみ：β調整済み

//◆ＳＥ：ドサッ！　双六倒れる
	CreateSE("SE01","se人体_倒れる01");

	Wait(300);

	MusicStart("SE01",0,700,0,1000,null,false);
	CreatePlainSP("揺用", 5000);
	Shake("揺用", 1000, 5, 2, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 1000, 0, null, true);
	Delete("揺用");

	Wait(500);
	CreateTextureEX("絵背景100", 120, Center, Middle, "cg/img/img双六死に手.jpg");
	Fade("絵背景100", 1000, 1000, null, true);

	Wait(1000);

	SoundPlay("@xbgm22",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400120nki">
「ちょっと……なんで？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400130nki">
「唐突に、うそ、だろ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	FadeDelete("絵背景100", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
{	St("C",19010, @0,@0,"fu似鳥_通常_shout");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400140nki">
「警察、警察に――」

{	St("C",19010, @0,@0,"fu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400150nki">
「…………」

{	St("C",19010, @0,@0,"fu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400160nki">
（ダメだ……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2021);}


	St("C",19010, @0,@0,"fu似鳥_通常_pinch");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400170nki">
（オレは借金があって、コイツを殺す動機がある。
　なのにどうやって、状況を説明するんだ？）

{	St("C",19010, @0,@0,"fu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400180nki">
（アイツが突然、自分の頭を狙って撃った？）

{	St("C",19010, @0,@0,"fu似鳥_通常_angry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400190nki">
（全然、説得力ない。
　目撃者もいないし、指紋もついてる）

{	St("C",19010, @0,@0,"fu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400200nki">
（やつらは少しでも怪しかったら、冤罪で逮捕しようとするからな。自白させられて、殺人罪だ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",19010, @0,@0,"fu似鳥_通常_rage");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400210nki">
「やってられるか！　オレは逃げ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆ＥＶ："ev/ev2020河原屋双六死体.txt"
//おがみ：β調整済み
	CreateTextureEX("絵背景100", 120, Center, Middle, "cg/img/img双六死に手.jpg");
	Fade("絵背景100", 300, 1000, null, true);

	Wait(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400220nki">
「う……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400230nki">
「そんな、見るなよ、な？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400240nki">
「――そうだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	FadeDelete("絵背景100", 500, null, true);


//◆ＳＥ：ジッパー開ける
	CreateSE("SE01","se動作_ジッパー閉める01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/obj/obj御札.png");
	Zoom("絵背景100", 0, 0, 1000, null, true);
	Fade("絵背景100", 0, 1000, null, true);
	Zoom("絵背景100", 500, 1000, 1000, Dxl2, false);
	Fade("絵背景100", 500, 1000, null, true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400250nki">
「ホラ、御札！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400260nki">
「成仏してくれよ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400270nki">
「南無阿弥陀仏……南無阿弥陀……」

{
	Move("絵背景100", 300, @0, @100, Axl2, false);
	Fade("絵背景100", 300, 0, null, true);
	Delete("絵背景100");
	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400280nki">
「うし！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

//◆場所：バックギャモン_正面
	OnBG(10,"bg1001100バックギャモン_正面_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);



	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400290nki">
「ゴメンな、ノーコ！　先に行くから！」

{	DeleteAllSt(200,true);}
　店内に囁いて、似鳥は足音を殺し、階段を駆け下りた。


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

{	ClockPass(2022);}

	Wait(500);

//◆場所：エレキセンター_廊下
	OnBG(10,"bg0901100エレキセンター_廊下_通常");
	FadeBG(0,true);

	CreateSE("SEカリー","se動作_煙幕");
	MusicStart("SEカリー",0,500,0,1000,null,false);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);


	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400300nki">
（ん？　カレーの匂い……？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5010);
	Wait(16);

	CreateColorEX("絵色黒", 5020, "#000000");
	CreateColorSP("絵演黒", 5000, "#000000");

	Fade("絵色黒", 0, 1000, null, true);
	DrawTransition("絵色黒", 500, 0, 1000, 100, Dxl1, "cg/data/slide_01_03_0.png", false);
	Move("絵板写", 500, 1024, @0, null, true);

	DeleteAllSt(0,true);
	OnBG(10,"bg0902100エレキセンター_ジャガンナート_通常");
	Move("@OnBG*", 0, -1024, @0, null, true);
	FadeBG(0,true);

	Wait(200);

	Delete("絵演黒");
	Move("@OnBG*", 500, 0, @0, null, false);
	DrawDelete("絵色黒", 500, 100, Axl1, "slide_01_03_1", true);


//	DeleteAllSt(200,true);

	Wait(300);
	St("ML",700, @0,@0,"bu千秋_通常_pain");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200400310kit">
「かはっ！　けほっけほっ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_fear");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200400320fje">
「なんなのよこの辛さ……水……みず……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buジャブル_通常_pinch");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/200400330jbr">
「カライ！　カライ！　インド人もびっくりぃぃ……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200400340fje">
「今よアッキーちゃん！　捕まえましょう！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200400350kit">
「お、おう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateMaskAXLSP("面", 2000, 1024, 0, "ciスラッシュ_00_01", false, "ciスラッシュ_00_01z");
	CreateTextureSP("面/絵背景", 1010, -810, -170, "cg/bg/l/bg0901100エレキセンター_廊下_通常_l.jpg");

	Move("面Line", 400, 0, @0, AxlDxl, false);
	Move("面", 400, 0, @0, AxlDxl, true);

	CreateTextureEX("面/絵演立絵", 1700, 330, 30, "cg/bu/bu似鳥_眼鏡上げ_angry.png");
	Move("面/絵演立絵", 200, @90, @-30, Dxl1, false);
	Fade("面/絵演立絵", 200, 1000, null, true);

//	St("C",700, @0,@0,"bu似鳥_通常_pinch");
//	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400360nki">
（な、なんかわかんねーけど、見つからないように……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreatePlainSP("絵板写", 5000);


{	ClockPass(2023);}

//◆場所：秋葉原_ガード下

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	OnBG(10,"bg0102111秋葉原_ガード下_通常");
	FadeBG(0,true);

	Delete("@面*");
	Delete("絵板写");
	DeleteAllSt(0,true);
	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);


	St("C",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400370nki">
（クソッ。あっちには警察署が――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


{	ClockPass(2024);}

//◆場所：秋葉原駅_正面
	OnBG(10,"bg0201111秋葉原駅_正面_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);


	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400380nki">
（落ち着け……大丈夫。普通にしてれば――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


{	ClockPass(2025);}

//◆場所：ショウビル_正面
	OnBG(10,"bg1901111ショウビル_正面_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);


	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400390nki">
（なるべく人の少ない方を――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2026);}

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

//◆場所：ＵＰ＋_屋外セット_炎上
	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0103]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/200400400mrp">
『全国各地から集まったゆるキャラたち、入場よ！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
//【似鳥戴斗】
[text0110]
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400410nki">
（注目があっちに向かってるうちに――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


{	ClockPass(2027);}

//◆場所：秋葉原_裏通り

	OnBG(10,"bg0101200秋葉原_裏通り_閉店");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);


	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400420nki">
（真っ直ぐ家に……？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


{	ClockPass(2028);}

//◆場所：銭形公園_全景
	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);


	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400430nki">
（いや、駄目だ！　オレインド人に見られてるし！）

{	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400440nki">
（もし身元がバレてたら、警官が家まで――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


{	ClockPass(2029);}

//◆場所：半田明神_男坂
	OnBG(10,"bg0601100半田明神_男坂_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 500, 100, null, "slide_01_01_1", true);


	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400450nki">
（クソ……！　なんでこうなんだ？）

{	St("C",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400460nki">
（最悪だ。今日は、ホントに人生最悪の一日だ……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆場所：半田明神_境内
	OnBG(10,"bg0603111半田明神_境内_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

	Wait(300);

	St("C",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400470nki">
「はは……」

{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400480nki">
（困ったときの神頼み……か）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	St("C",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400490nki">
（まあ、いいや）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400500nki">
（せっかくだし、拝んで――）

{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200400510nki">
「ん？　あれは……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 2000, 0, null);

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);




	EndScene();
}
