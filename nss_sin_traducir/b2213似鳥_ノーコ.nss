
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene b2213似鳥_ノーコ.nss_MAIN
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
	$GameName="b2220カゴメ.nss";
}

scene b2213似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="350">
////////////header////////////
//file name "b2213似鳥_ノーコ.nss"
//title "じゅんすいなねがい"
//previous "b2210沙紅羅_似鳥_ノーコ.nss"

////////////footer////////////
//next "似鳥" "b2220カゴメアソビ.nss"
//next "ノーコ" "b2220カゴメアソビ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");

//◆場所：秋葉原_中央通り
	OnBG(10,"bg0103200秋葉原_中央通り_閉店");
	FadeBG(0,true);

	SetVertex("@OnBG*", 270, 340);

	CreateSE("SEL01","se動作_集団走る");
	MusicStart("SEL01",500,700,0,1200,null,true);

	Wait(1000);

	Zoom("@OnBG*", 3000, 1200, 1200, null, false);

	FadeDelete("上背景", 0, null, true);
	DrawDelete("黒幕１", 300, 100, null, "slide_01_03_0", true);

{	ClockPass(2213);}

	WaitKey(1000);

//◆演出指示：駆け足

	SceneOut(20000, 300, "circle_01_00_0");

	Wait(500);

//◆時間：ジャンプ
{	ClockPass(2215);}

//◆場所：あにのあな_正面
//	OnBG(10,"bg0301111あにのあな_正面_通常");
//	FadeBG(0,true);

	CreateTextureEX("絵背景１", 10, 0, -1152, "cg/bg/bg0301111あにのあな_正面_通常.jpg");
	Fade("絵背景１", 0, 1000, null, true);

	SetVolumeEX("SE*", 600, 0, null);
	SceneIn(300, "circle_01_00_1");

	Wait(200);
	Move("絵背景１", 1000, @0, @1152, AxlDxl, true);

	WaitKey(2000);

	CreateSE("SEL01","seガヤ_街中_l");
	MusicStart("SEL01",6000,500,0,1000,null,true);

	Move("絵背景１", 6000, @0, @-1152, DxlAuto, true);
	Wait(200);

//	MusicStart("@xbgm05",1000,300,0,1000,null,true);



{	St("MR",700, @50,@0,"buミリＰb_通常_normal");
	Move("@StNameMR/MR*", 300, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b22/130100010mrp">
「この上みたいね」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/130100020nki">
「あれ？　沙紅羅は？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰb_通常_shock");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b22/130100030mrp">
「いつの間にか、はぐれた……？」

{	St("MR",700, @0,@0,"buミリＰb_通常_hard");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b22/130100040mrp">
「でも、構ってる余裕はない。
　ホラ似鳥君！　行くわよ！」

{
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	FadeSt("ML",200,true);
}

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/130100050nki">
「あ……ああ」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆場所：あにのあな_店内

	SetVolumeEX("SE*", 300, 0, null);

	PrintGO("上背景", 5000);
	CreateColorSP("黒幕１", 100, "#000000");
	DrawDelete("上背景", 500, 100, null, "blind_01_00_1", true);

	DeleteAllSt(0,false);
	OnBG(10,"bg0302111あにのあな_店内_通常");
	FadeBG(0,true);

{	ClockPass(2216);}

	DrawTransition("黒幕１", 500, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);

	CreateSE("SE01","seガヤ_ざわざわ02_l");
	MusicStart("SE01",0,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]


{	St("MR",700, @0,@0,"buミリＰb_通常_pinch");
	FadeSt("MR",200,true);
	Shake("@StNameMR/MR*", 300, 10, 0, 0, 0, 500, null, false);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b22/130100060mrp">
「ううっ！　退いて！　退きなさい！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_pain");
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 300, 10, 0, 0, 0, 500, null, false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/130100070nki">
「ノーコ……ノーコ……！」

{	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/130100080nki">
「今、行くから……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

	SetVolumeEX("@SE0*", 500, 0, null);
	SetVolumeEX("@x*", 2000, 0, NULL);

	TextBoxDelete(150);


//◆場所：あにのあな_屋上


//◆演出指定：足音

	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

{	ClockPass(2217);}

	OnBG(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);

	CreateSE("SE01","se動作_階段のぼる");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(2000);

	SetVolumeEX("SE01", 300, 0, null);
	CreateSE("SE02","se動作_屋上ドア開ける");
	MusicStart("SE02",0,700,0,1000,null,false);

	DrawDelete("黒幕１", 500, 100, null, "blind_01_00_1", true);

	CreateSE("SEL01","se環境_風_l");
	MusicStart("SEL01",3000,500,0,800,null,true);

	//★徒歩：「ev2230カゴメアソビ3」はこのファイルでは使用しないで下さい

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b22/130100090mrp">
「ここね――！？」

　似鳥とミリＰが屋上へと飛び込む。

　ノーコは、屋上の端で銃を構えていた。

{	St("MR",700, @0,@0,"buミリＰb_通常_hard");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b22/130100100mrp">
「ノーコちゃん……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buノーコa_銃構え_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/130100110nko">
「こないで」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/130100120nko">
「それいじょう、ちかづかないで」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/130100130nko">
「ちかづいたら……うつ」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_眼鏡上げ_angry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/130100140nki">
「アザナエル……」

{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/130100150nki">
「おまえ、願いを……？」



{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/130100160nko">
「そう」

{	St("C",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/130100170nko">
「わたしは、わたしを、うつ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2218);}

	SetVolumeEX("SE*", 4000, 0, null);
	SoundPlay("@xbgm06",0,450,true);

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"buノーコa_銃構え_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/130100180nko">
「うって、ねがいをかなえる」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/130100190nki">
「なにを……叶えるんだ？」



{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/130100200nko">
「にとりをかえる」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/130100210nko">
「あなたがすきだから」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/130100220nko">
「きらわれたまま、しんでいくのがいやだから」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);

{	St("C",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/130100230nko">
「だから、わたしは、わたしをうつ」


{	St("C",700, @0,@0,"buノーコa_通常_shy");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/130100240nko">
「わたしのねがいがかなえば……」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/130100250nko">
「にとりは、わたしがすきになる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2219);}

//	TextBoxDelete(150);

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_shout");
	FadeSt("MR",200,true);
	Shake("@StNameMR/MR*", 300, 10, 0, 0, 0, 500, null, false);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b22/130100260mrp">
「おバカ！」

{	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b22/130100270mrp">
「人の心を変えて、なんになるの！？」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b22/130100280mrp">
「愛されたいんだったら、自分の努力でなんとかしなさい」

{	St("MR",700, @0,@0,"buミリＰa_通常_shout");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b22/130100290mrp">
「奇跡の力で無理矢理気持ちを歪めたって、そんなもの、これっぽっちも価値なんてないのよ！」


{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buノーコa_通常_rage");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/130100300nko">
「うるさい！　だまれ！」

{	St("C",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/130100310nko">
「かちがなくても、いいの！」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/130100320nko">
「りくつなんて、どうでもいいの！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"buノーコa_通常_cry");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/130100330nko">
「まちがってても、いい」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/130100340nko">
「わたしはただ……」

{	CreateVOICE("演出用","b22/130100350nko");
	$SETime = RemainTime("演出用");
	SetVolumeEX("@xbgm*", $SETime, 0, null);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/130100350nko">
「ただ、にとりといたいだけなの！」
</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Delete("演出用");
	SetVolumeEX("@x*", 2000, 0, NULL);


	TextBoxDelete(150);


	EndScene();
}
