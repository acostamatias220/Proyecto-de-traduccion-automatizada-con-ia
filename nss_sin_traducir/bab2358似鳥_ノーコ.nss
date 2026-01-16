
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene bab2358似鳥_ノーコ.nss_MAIN
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
	$GameName = "bab2359沙紅羅_フウリ.nss";//★エンディング中（bab）
}

scene bab2358似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="550">
////////////header////////////
//file name "bab2358似鳥_ノーコ.nss"
//title "神様の意味"
//previous "baa2357似鳥_ノーコ.nss"

////////////footer////////////
//next "bab2359沙紅羅_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);


//◆場所：あにのあな_屋上
	OnBG(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);

	St("MR",700, @0,@0,"buノーコa_通常_smile");
	FadeSt("MR",0,false);

	SetVolume("@xbgm*", 2000, 0, null);
	FadeDelete("上背景", 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{
	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥堕皇_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100010nki">
「ああ。一緒に――ん？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);
	DeleteAllSt(200,true);


	Kagome_AllEffect_Set(1200);


//◆演出指示：街中に天使の羽根が降り注ぐ！　その未練を撃ち抜け！

//あきゅん「修正指示：修正されていく様にＳＥ付けたり、うすぼんやりと輝かせたりして下さい」


	FeatherDrop(100);

	CreateTextureEX("街中01", 109, @0, @0, "cg/bg/bg0102300秋葉原_ガード下_破壊.jpg");
	Fade("街中01", 1500, 1000, null, true);

//inc久保田　羽が地面に落ちるまでまち
	Wait(3500);



	CreateColorSPadd("白", 15000,"WHITE");
	DrawTransition("白", 500, 50, 200, 400, Dxl1, "cg/data/circle_13_00_0.png", false);
	CreateSE("SE02","se擬音_光り輝く01");
	MusicStart("SE02",1000,700,0,1000,null,true);

	Wait(1000);

	CreateColorEXadd("白2", 15000,"WHITE");
	Fade("白2", 500, 1000, AxlAuto, true);

	CreateTextureSP("街中02", 109, @0, @0, "cg/bg/bg1101500スパコン館_裏面_廃墟.jpg");
	Delete("街中01");
	Delete("白");
	FadeDelete("白*",1000,null,true);

	Wait(1000);

	CreateColorSPadd("白", 15000,"WHITE");
	DrawTransition("白", 500, 50, 300, 700, Dxl1, "cg/data/circle_11_00_0.png", false);

	Wait(1000);

	CreateColorEXadd("白2", 15000,"WHITE");
	Fade("白2", 500, 1000, AxlAuto, true);

	CreateTextureSP("街中03", 109, @0, @0, "cg/bg/bg0108400秋葉原_俯瞰_崩壊.jpg");
	Delete("街中02");
	Delete("白");
	FadeDelete("白*",1000,null,true);

	Wait(1000);

	Kagome_AllEffect_Start();

	Wait(2500);

	CreateColorSPadd("白", 15000,"WHITE");
	DrawTransition("白", 300, 50, 200, 400, Dxl1, "cg/data/circle_02_01_0.png", false);

	Wait(1000);

	CreateColorEXadd("白2", 15000,"WHITE");
	Fade("白2", 500, 1000, AxlAuto, true);

	FadeDelete("街中0*",0,null,true);

	CreateTextureSP("下敷", 10, @0, @0, "cg/bg/bg0303100あにのあな_屋上_通常.jpg");

	Delete("白");
	FadeDelete("白*",1000,null,true);

{	St("C",1220, @0,@0,"bu似鳥堕皇_通常_hard");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100020nki">
「なんだ、あれ？」

{	DeleteSt("C",200,false);
	St("MR",1220, @0,@0,"buノーコa_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/bab23/580100030nko">
「まちが……しろいはねに、つつまれていく」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//inc久保田　preわけしました。

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreatePlainSP("絵板写", 5000);

	CreateTextureEX("街中01Ａ", 100, @-150, @0, "cg/bg/m/bg0102300秋葉原_ガード下_破壊_m.jpg");
	CreateTextureEX("街中01Ｂ", 100, @-150, @0, "cg/bg/m/bg0102200秋葉原_ガード下_閉店_m.jpg");
	CreateTextureEX("街中11", 100, @0, @0, "cg/bg/bg0102200秋葉原_ガード下_閉店.jpg");

	CreateTextureEX("街中02Ａ", 100, @0, @-150, "cg/bg/m/bg1101500スパコン館_裏面_廃墟_m.jpg");
	CreateTextureEX("街中02Ｂ", 100, @0, @-150, "cg/bg/m/bg1101200スパコン館_裏面_閉店_m.jpg");
	CreateTextureEX("街中12", 100, @0, @0, "cg/bg/bg1101200スパコン館_裏面_閉店.jpg");

	CreateTextureEX("街中03Ａ", 100, @0, @0, "cg/bg/bg0108400秋葉原_俯瞰_崩壊.jpg");
	CreateTextureEX("街中03Ｂ", 100, @0, @0, "cg/bg/bg0108200秋葉原_俯瞰_閉店.jpg");

	Move("街中01*", 4600, @150, @0, null, false);
	Fade("街中01Ａ", 0, 1000, null, true);
	FadeDelete("下敷", 0, null, true);
	FadeDelete("絵板写", 1500, null, true);

	Fade("街中01Ｂ", 1500, 1000, null, true);
	Fade("街中11", 1500, 1000, null, true);


	Move("街中02*", 4600, @0, @150, null, false);
	Fade("街中02Ａ", 1500, 1000, null, true);
	Fade("街中02Ｂ", 1500, 1000, null, true);
	Fade("街中12", 1500, 1000, null, true);

	Zoom("街中03*", 0, 2000, 2000, Dxl2, true);
	Zoom("街中03*", 4000, 1000, 1000, Dxl2, false);
	Fade("街中03Ａ", 1500, 1000, null, true);
	Fade("街中03Ｂ", 1500, 1000, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/bab23/580100040nko">
「どんどんはいきょがきえて――もとのまちなみに？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2400);}

	TextBoxDelete(150);


	Kagome_AllEffect_Delete(2000);
	FeatherDropDelete(500);


//◆演出指示：そのまま、似鳥とノーコまでも白い光に包まれる

	CreateSE("SE01","se環境_花火打ち上げ");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("白", 2000, WHITE);
	Fade("白", 2000, 1000, null, true);
	DeleteSt("MR",0,true);
	FeatherDropDelete(100);

	CreateTextureEXadd("花火", 2500, @0, @0, "cg/data/circle_10_00_1.png");
	CreateColorEX("花火色100", 2400, "red");
	CreateColorEX("花火色210", 2400, "blue");
	CreateColorEX("花火色200", 2400, "green");

	Fade("花火", 100, 1000, Axl1, false);
	Fade("花火色100", 50, 500, Axl1, true);
	Fade("花火色210", 50, 200, Axl1, true);
	Fade("花火色200", 50, 200, Axl1, true);
	Delete("花火色2*");
	Fade("花火", 1000, 0, Axl1, false);
	FadeDelete("花火色100", 1500, null, true);
	Delete("街*");

//◆演出指示：半田明神に花火が上がる


	CreateTextureEX("絵背景10", 200, Center, -300, "cg/img/img花火.jpg");
	Zoom("絵背景10", 0, 1100, 1100, null, true);
	SetVolumeEX("SE*", 300, 0, null);
	CreateSE("SE02a","se環境_花火連打02");
//	CreateSE("SE02b","se環境_花火連打02");


	fireworks_set(3500);

	Fade("絵背景10", 0, 1000, null, true);
	Move("絵背景10", 0, @0, @300, null, true);
	MoveFTP3("@絵背景10", 3000, 4, 3);
	FadeDelete("白", 1500, null, false);

	Wait(200);
	MusicStart("SE02a",0,700,0,1000,null,true);

//	Wait(200);
//	MusicStart("SE02b",0,700,0,1000,null,false);
	Wait(1500);

	Delete("花火");

//あきゅん「修正指示：花火の切り替えが引っかかっているので調整」
//inc久保田　修整しました。

//	FadeDelete("絵背景10", 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100050nki">
「…………あ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100060nki">
「花火」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/bab23/580100070nko">
「うん」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/bab23/580100080nko">
「きれい」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100090nki">
「そっか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	FadeDelete("絵背景10", 1500, null,true);
	SetVolumeEX("SE*", 3000, 0, null);
	fireworks_Delete(1500,false);
	Fade("絵背景10", 1500, 0, null, true);

	MoveFTP3stop();
	Delete("絵背景10");

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100100nki">
「いつの間にか、年を越してたんだな」

{	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("ML",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100110nki">
「ん……？　ってことは待てよ！」

{	St("ML",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	FadeSt("ML",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100120nki">
「オレ、河原屋組の取り立てを振り切った？」

{	St("ML",700, @0,@0,"bu似鳥_通常_happy");
	FadeSt("ML",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100130nki">
「すげー！　オレすげー！」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/bab23/580100140nko">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu似鳥_眼鏡上げ_pride");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100150nki">
「よっしゃ！　今夜は祝いだ！　寿司でも――」

{	St("ML",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100160nki">
「いや、でも待てよ。金がねーな……」

{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100170nki">
「うう……困った……！
　正月早々、みそを舐めながらの生活……」

{	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("ML",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100180nki">
「ん？　どした、ノーコ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	SoundPlay("@xbgm25", 0, 450, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buノーコa_幽霊_think");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/bab23/580100190nko">
「ふしぎなかんじ」

{	DeleteSt("MR",200,true);
	St("MR",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("MR",200,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/bab23/580100200nko">
「きゅうに、からだがかるくなったみたい」

{	St("MR",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("MR",200,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/bab23/580100210nko">
「わたしは……たいせつなものを、うしなった？」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100220nki">
「大切なもの？　なんだそりゃ」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/bab23/580100230nko">
「わからない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2401);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_happy");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100240nki">
「ま、それなら大したことじゃないんだって」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/bab23/580100250nko">
「…………」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100260nki">
「そんな顔するなよ」

{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100270nki">
「しかし……ううっ！　寒くなってきたな」

{	St("ML",700, @0,@0,"bu似鳥_通常_happy");
	FadeSt("ML",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100280nki">
「そろそろ、帰ろうか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/bab23/580100290nko">
「うん」


{	DeleteSt("MR",200,false);}
　ノーコは空を滑り、扉に手をかけ――

　指先が、ノブを滑る。


{	St("R",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("R",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/bab23/580100300nko">
「…………」

{	DeleteSt("R",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100310nki">
「どうした？」

{	DeleteSt("ML",200,false);
	St("R",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("R",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/bab23/580100320nko">
「なんでもない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//あきゅん「修正指示：絵を出しきってしまうのは野暮、シルエットで」


	CreateColorSPadd("白", 15000, WHITE);
	DeleteSt("R",0,false);
	CreateColorSP("下白", 1200, WHITE);

/////
	CreateTextureEX("絵ＳＴ100", 2100, Center, InBottom, "cg/bu/bu似鳥堕皇_通常_normal.png");
	CreateStencil("マスク１",2110, Center,InBottom,128,"cg/bu/bu似鳥堕皇_通常_normal.png",false);
	CreateColor("マスク１/色１", 2120, 0, 0, 1024, 576, "BLACK");

	Fade("マスク１/色１", 300, 1000, null, false);
	Fade("絵ＳＴ100", 300, 1000, null, true);

/////
	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",0,true);

	Fade("白", 150, 0, null, true);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/bab23/580100330nko">
「ただちょっと、ゆめをみていただけ……」

{
	Fade("絵ＳＴ100", 1500, 0, null, true);
	Fade("マスク１/色１", 1500, 0, null, true);
	Fade("下白", 1500, 0, null, true);
	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100340nki">
「白昼夢……ってわけでもないよな。この時間だと」

{	St("C",700, @0,@0,"bu似鳥_通常_happy");
	FadeSt("C",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100350nki">
「いい夢だったか？」

{	DeleteSt("C",200,false);
	St("R",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("R",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/bab23/580100360nko">
「めざめるのが、おしいくらい」

{	DeleteSt("R",200,false);
	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100370nki">
「そうか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolume("@xbgm25", 3000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	DeleteSt("C",200,false);
	St("R",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("R",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/bab23/580100380nko">
「ねえ、にとり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/bab23/580100390nko">
「これから、どうする？」

{	DeleteSt("R",200,false);
	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100400nki">
「ん？　そうだなあ」

{	SoundPlay("@xbgm12",0,450,true);
	DeleteSt("C",200,true);
	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_pride");
	FadeSt("C",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100410nki">
「そりゃもちろん、これからはだな」

{	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_angry");
	FadeSt("C",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100420nki">
「在庫は山とあるし……金はないし……
　ってか、結局借金は返せてないし……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"bu似鳥_通常_lost");
	FadeSt("C",200,false);
	SetComic(@-80,@-100,12);
	FadeComic();}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100430nki">
「……だめだ。死にたくなってきた」


{	DeleteComic();
	DeleteSt("C",200,false);
	St("R",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("R",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/bab23/580100440nko">
「……ごめん」


{	DeleteSt("R",200,false);
	St("C",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100450nki">
「まあ、でもいいさ。
　とりあえず家に帰って――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//あきゅん「修正指示：どうせやるなら徹底的にバカ演出入れる」
//inc久保田　演出追加しました

	DeleteSt("C",200,true);
	St("C",700, @0,@0,"fu似鳥_眼鏡上げ_pride");

	FadeSt("C",200,true);

	CreateSE("SE01","se擬音_ギャグ_キラーン01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEXadd("キラーン", 15000, @80, @-150, "cg/ef/ef036_無我の境地.jpg");
	Zoom("キラーン", 200, 500, 0, null, false);
	Fade("キラーン", 0, 1000, null, true);

	Zoom("キラーン", 200, 500, 500, null, false);
	Rotate("キラーン", 1000, @0, @0, @360, Axl1, false);

	FadeDelete("キラーン",1500,null,true);

	CreateColorEXadd("白", 2000, WHITE);
	Fade("白", 100, 1000, null, true);

	WaitKey(100);


	CreateTextureEX("絵背景100", 800, Center, Middle, "cg/img/imgノーコントロール11中身.jpg");

	CreateMaskAXLEX("絵マ", 800, 0, 0, "ciスラッシュ_03_01", true, "ciスラッシュ_03_01z");
	CreateTextureEX("絵マ/絵背景", 800, 0, -150, "cg/ev/m/ev2330ノーコスカートの中の戦争a_m.jpg");

	Fade("絵背景100", 0, 1000, null, false);

	Fade("絵マ/絵背景", 0, 1000, null, false);
	Fade("絵マ*", 0, 1000, null, true);
	DeleteSt("C",0,false);

	Fade("白", 500, 0, null, false);


	Move("絵マ/絵背景", 1000, @0, @100, null, false);

	St("C",900, @360,@0,"bu似鳥_ラッパー_rage2");
	SetBlur("@StNameC/C*", true, 2, 200, 80);
	Move("@StNameC/C*", 1000, -130, @0, Dxl1, false);
	FadeSt("C",200,true);
	WaitKey(300);

//	FadeDelete("絵マ*",1000,null,false);
//	Delete("絵マ*");
//	CreateTextureEX("絵背景150", 100, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");
//	Fade("絵背景150", 1000, 1000, null, false);





//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100460nki">
「姫はじめだッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(150);

{	ClockPass(2401);}

	CreateSE("SE", "se擬音_ギャグ_セクシーボイス");
	MusicStart("SE", 0, 1000, 0, 1000, null,false);
	WaitKey(800);

	CreateColorSPadd("白", 2000, WHITE);
	FadeDelete("絵マ*",0,null,false);
	FadeDelete("絵背景100",0,null,false);
	DeleteSt("C",0,true);

	Fade("白", 300, 0, null, false);
//	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	DeleteSt("C",200,false);
	St("R",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("R",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/bab23/580100470nko">
「……にとり、だめおとこ」

{	DeleteSt("R",200,false);
	St("C",700, @0,@0,"bu似鳥_通常_rage");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100480nki">
「う、うるさい！」

{	DeleteSt("C",200,false);
	St("R",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("R",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/bab23/580100490nko">
「そのうえ、へんたい」

{	DeleteSt("R",200,false);
	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_pride");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100500nki">
「はいはい、そんなの知ってるって！」

{	DeleteSt("C",200,false);
	St("R",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("R",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/bab23/580100510nko">
「でも、わたしは」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("R",700, @0,@0,"buノーコa_通常_smile");
	FadeSt("R",200,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/bab23/580100520nko">
「だめなにとりが、すき」

{	DeleteSt("R",200,true);
	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100530nki">
「――は」

{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100540nki">
「なんか……なんだろ？　泣けてきた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//あきゅん「修正指示：似鳥がこのルートで体験してきたアザナエル事件をフラッシュバックで表示」
//inc　修整しました。

	CreateColorEXadd("回想白", 15000, WHITE);
	Fade("回想白", 200, 1000, null, true);
	DeleteSt("C",0,true);
	CreateTextureSP("おもいで", 2000, -400, -420, "cg/ev/ev2230カゴメアソビ3.jpg");

	Fade("回想白", 200, 0, null, true);
	Wait(1000);
	Fade("回想白", 200, 1000, null, true);
	CreateTextureSP("おもいで２", 2000, @0, @0, "cg/ev/ev2220太四郎ビル大破壊d.jpg");
	Delete("街01");
	Fade("回想白", 200, 0, null, true);
	Wait(1000);
	Fade("回想白", 200, 1000, null, true);
	Delete("おもいで*");
	FadeDelete("回想白", 1500, null, true);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("C",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("C",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/580100550nki">
「オレも、白昼夢見たのかもな」


{	Move("@StNameC/C*", 500, @50, @0, null, false);
	DeleteSt("C",200,true);
	CreateSE("扉開ける", "se動作_屋上ドア開ける");
	MusicStart("扉開ける", 0, 1000, 0, 1000, null, false);}


　呟きながら、似鳥は脳内彼女と一緒に、階段を下りた。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	ClearWaitAll(1500, 1500);
	SetVolumeEX("@xbgm*", 2000, 0, null);
	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 1500, 1000, null, true);

	Wait(2000);

	Delete("マスク*");

	EndScene();
}
