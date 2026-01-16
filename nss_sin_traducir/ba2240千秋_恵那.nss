
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ba2240千秋_恵那.nss_MAIN
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

	if($CharaName=="千秋"){
		$GameName = "ba2250沙紅羅_千秋_恵那_似鳥_ノーコ.nss";
	}else if($CharaName=="恵那"){
		$GameName = "ba2250沙紅羅_千秋_恵那_似鳥_ノーコ.nss";
	}else{
		$GameName = "ba2250沙紅羅_千秋_恵那_似鳥_ノーコ.nss";

}

}

scene ba2240千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1580">
////////////header////////////
//file name "ba2240千秋_恵那.nss"
//title "大狸対策本部"
//previous "ba2236千秋_恵那.nss"

////////////footer////////////
//next "千秋" "ba2250沙紅羅_千秋_恵那_似鳥_ノーコ.nss"
//next "恵那" "ba2250沙紅羅_千秋_恵那_似鳥_ノーコ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//あきゅん「修正指示：似鳥顔アップの時はfuなど綺麗な素材でお願いします」
//★ wam井野 修正いたしました。10/11/20

{	ClockPass(2240);}

//あきゅん「演出：開始時の画面がおかしくなるので修正」
/*
	OnBG(10,"bg1101500スパコン館_裏面_廃墟");
	FadeBG(0,true);

	CreatePlainSP("絵板写", 5000);
	Wait(16);
	CreateTextureSP("絵背景千秋", 770, 54, 74, "cg/bu/bu千秋_朗らか_shock.png");
	CreateTextureSP("絵背景権藤", 760, 535, 66, "cg/bu/buＡＤ_通常_shock.png");
	CreateTextureSP("絵背景恵那", 750, 289, 75, "cg/bu/bu恵那_哀愁_worry.png");
	SetVertex("絵背景*", center, bottom);
	Zoom("絵背景*", 0, 900, 900, null, true);

	Request("絵背景*", Smoothing);

	CreateTextureSP("絵背景平次", 740, -369, -70, "cg/bu/bu平次_落ち込み_shock.png");
	CreateTextureSP("絵背景美里", 730, 21, 7, "cg/bu/buミリＰb_通常_shock.png");
	CreateTextureSP("絵背景半田", 720, 591, -41, "cg/bu/buブーa_通常_sad.png");
	CreateTextureSP("絵背景三田", 710, 365, -31, "cg/bu/buみそa_通常_fear.png");

	FadeDelete("絵板写", 0, null, true);

	FadeDelete("上背景", 0, null, true);
	Delete("絵背景*");
	Delete("絵板写");
*/

//◆場所：スパコン館_裏面
//	OnBG(10,"bg1101500スパコン館_裏面_廃墟");
//	FadeBG(0,true);

	SetVolumeEX("@x*", 2000, 0, NULL);

/*
	CreateTextureEX("絵背景１", 1600, center, -570, "cg/ev/l/ev2230似鳥堕皇降臨a_l.jpg");
	CreateTextureEX("絵背景２", 1500, 0, 0, "cg/ev/ev2230似鳥堕皇降臨a.jpg");
	Fade("絵背景２", 0, 1000, null, true);
	Request("絵背景１", Smoothing);
*/

	CreatePlainSP("絵板写", 5000);
	Wait(16);

//左窓準備EX
	CreateAXLWindowEX("絵窓", "X", 1600, 100, 300, false);
	WindowAXLZoom("絵窓", "X", 0, 0, null, false);
	CreateTextureSP("絵窓/絵演背景", 1520, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");
	Zoom("絵窓/絵演背景", 0, 1500, 1500, Dxl2, true);
	SetShade("絵窓/絵演背景", heavy);


//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1530, center, middle, "cg2/fu/fuノーコa_通常_fear.png");
	Move("絵窓/絵演立*", 0, @-182, @-150, null, true);

	Delete("絵板写");


	OnBG(10,"bg2401100空_上空_通常");
	FadeBG(0,true);

	St("C",700, @0,@0,"fu似鳥堕皇_通常_pride");
	FadeSt("C",0,true);

	if($PreGameName=="ba2236千秋_恵那.nss"){
	DrawDelete("上背景", 300, 10, null, "turn_01_00_1", true);
	}else{
	FadeDelete("上背景", 300, null, true);
	}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400300010nki">
「ふはは、ふはははははは！
　<RUBY text="カイザー・オブ・ダークネス">堕皇</RUBY>ルシフェルの前に、ひれ伏せタヌキッ！！」

{
//動作
	Fade("絵窓/絵演立絵", 200, 1000, null, false);
	WindowAXLZoom("絵窓", "X", 200, 1000, Dxl2, true);

}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400300020nko">
「にとり……おもいだしたの？　ぜんせのきおく」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{

//収納
	WindowAXLZoom("絵窓", "X",200, 0, Axl2, true);
	Delete("@絵窓*");

	MusicStart("@xbgm31",0,400,0,1000,null,true);
//	Zoom("絵背景１", 0, 3000, 3000, null, true);
//	Move("絵背景１", 0, -482, 356, Dxl2, false);
//	Move("絵背景１", 3000, @0, @20, Dxl2, false);
//	Fade("絵背景１", 500, 1000, null, true);

	St("C",700, @0,@0,"fu似鳥堕皇_通常_sigh");
	FadeSt("C",200,true);

	CreateSE("SE01","se擬音_ギャグ_キラーン01");
	MusicStart("SE01",0,700,0,1000,null,false);
	WaitPlay("SE01", 4000);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400300030nki">
「ああ。待たせたな」


{
	St("C",700, @0,@0,"fu似鳥堕皇_通常_angry");
	FadeSt("C",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400300040nki">
「もうおまえを泣かせたりはしない！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	CreatePlainSP("絵板写", 5000);
	Wait(16);

	FadeDelete("絵板写", 300, null, true);

	CreateColorEXadd("絵額100", 1500, "WHITE");
	CreateColorEXadd("絵額200", 1500, "WHITE");
	Zoom("絵額100", 0, 20, 3000, null, true);
	Zoom("絵額200", 0, 3000, 20, null, true);
	Move("絵額*", 0, @-20, @-100, null, true);


	CreateMovieEX("絵オムービー１", 1000, Center, Middle, true, true, "dx/mv_集中線白a1.ngs");
	Request("絵オムービー１", AddRender);

	Zoom("絵オムービー１", 0, 3250, 2500, null, true);
	Fade("絵オムービー１", 0, 300, null, false);

	CreateTextureEXadd("絵背景EF", 1000, 39, 256, "cg/ef/bu宮本G_変化_風呂_目光.png");
	Zoom("絵背景EF", 0, 2000, 2000, null, true);

	CreateSE("SE01","se戦闘_風切り音10");
	CreateSE("SE01a","se戦闘_弓矢_光の矢");
	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,2000,null,false);

	St("C",700, @0,@0,"fu似鳥堕皇_通常_rage");
	Rotate("絵額*", 700, @0, @0, @1800, Axl2,false);

	Fade("絵額*", 100, 1000, null, false);
	Fade("絵背景EF", 100, 1000, null, false);
	FadeSt("C",200,true);

	FadeDelete("絵額*", 500, null, false);

	FadeDelete("絵背景EF", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400300050nki">
「行くぞっ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

/*
//収納
	WindowAXLZoom("絵窓", "Y",200, 0, Axl2, true);
	Delete("@絵窓*");
*/

	WindowAXLZoom("絵窓", "Y",200, 0, Axl2, true);
	Delete("@絵窓*");

	CreateSE("SE01","se戦闘_鎖02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("白フラ", 15000, "WHITE");


	Zoom("@StNameC/C*", 150, 1100, 1100, Dxl2, false);
	Fade("白フラ", 150, 1000, null, true);


	Delete("絵オムービー１");

	CreateTextureEX("絵背景１", 1600, -521,-180, "cg/ev/l/ev2230似鳥堕皇降臨b_l.jpg");
	Request("絵背景１", Smoothing);
	SetBlur("絵背景１", false, 3, 500, 100, false);
	Zoom("絵背景１", 0, 1500, 1500, null, false);
	Fade("絵背景１", 0, 1000, null, true);

	#ev2230似鳥堕皇降臨b = true;

	Zoom("絵背景１", 1000, 1000, 1000, Dxl2, false);

	Fade("白フラ", 500, 0, null, false);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400300060nki">
「シュヴァルツシルト・チェイン！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆演出指示：ネビュラチェーン

	CreateColorEX("黒幕１", 25000, "BLACK");

	CreateSE("SE06","se戦闘_鎖03");
	MusicStart("SE06",0,700,0,1000,null,false);

	BezierMove("絵背景１", 1000, (-521,-180){-932,-18}{-1220, -720}{-80, -600}(-50, -20), AxlAuto, 800);

	Fade("黒幕１", 0, 1000, null, true);
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/circle_11_00_0.png", true);

	DeleteAllSt(0,false);
	Fade("絵背景*", 0, 0, null, true);

	CreateTextureEXadd("絵色100", 2100, Center, Middle, "cg/ef/ef029_物理限界速度域.jpg");
	CreateTextureEX("絵背景100", 2050, Center, Middle, "cg/ef/ef鎖飛来b.jpg");
	CreateTextureEX("絵背景200", 2000, Center, Middle, "cg/ef/ef鎖飛来c.jpg");
	Zoom("絵背景*", 0, 2500, 2500, Dxl2, false);
	CreateTextureEX("タヌ", 1500, -500, -60, "cg/ev/l/ev2220太四郎ビル大破壊_l.jpg");

	CreateColorEXadd("白フラ", 15000, "WHITE");

	CreateSE("SE01","se戦闘_金属弾く02");
	CreateSE("SE02","se戦闘_切断02");
	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);

	Zoom("絵背景100", 300, 1000, 1000, Dxl2, false);
	Fade("絵背景100", 0, 1000, null, true);

	DrawDelete("黒幕１", 200, 100, null, "circle_11_00_1", true);

	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Move("絵背景100", 300, @-220, @120, Dxl2, false);
	SetBlur("絵背景100", false, 3, 800, 100, false);

	Zoom("絵背景100", 300, 1500, 1500, Dxl2, false);

	CreateSE("SE01a","se戦闘_金属弾く04");
	CreateSE("SE02a","se戦闘_切断02");
	MusicStart("SE01a",0,700,0,1000,null,false);
	MusicStart("SE02a",0,700,0,1000,null,false);

	Fade("絵色100", 200, 1000, null, true);
	Fade("絵背景200", 0, 1000, null, true);
	Zoom("絵背景200", 300, 1000, 1000, Dxl2, false);
	FadeDelete("絵背景100",100,null,false);
	Fade("絵色100", 300, 0, null, true);

	Shake("絵背景200", 300, 5, 8, 0, 0, 1000, Axl1, false);
	SetBlur("絵背景200", false, 3, 800, 100, false);
	Zoom("絵背景200", 300, 1500, 1500, Dxl2, false);

	Fade("絵色100", 200, 1000, null, true);
	FadeDelete("絵背景200",100,null,false);
	Fade("タヌ", 100, 1000, null, true);
	Fade("絵色100", 1000, 0, null, false);

	CreateSE("SE03","se戦闘_金属弾く05");
	CreateSE("SE07","se戦闘_倒壊02");
	MusicStart("SE03",0,700,0,1000,null,false);
	MusicStart("SE07",0,700,0,1000,null,false);

	Move("タヌ", 3000, @200, @40, Dxl2, false);

	Shake("タヌ", 3000, 15, 8, 0, 0, 500, AxlDxl, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]




//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/400300070tsr">
「ぐおおおおおおおおお！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@*", 2000, 0, NULL);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	OnBG(10,"bg1101500スパコン館_裏面_廃墟");
	FadeBG(0,true);

	Fade("タヌ", 0, 0, null, false);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//★ wam井野 この一連は同時ではなくて良いのでしょうか？
//◆音声指示：呆然
{	St("L",700, @0,@0,"buみそa_通常_fear");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/400300080mso">
「…………」

//◆音声指示：呆然
{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_sad");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/400300090buu">
「…………」

//◆音声指示：呆然
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu平次_落ち込み_shock");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/400300100fjh">
「…………」

/*
//※下倉注：この台詞、カット 2010/10/27

//◆音声指示：呆然
{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400300110nki">
「…………」

*/

//◆音声指示：呆然
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/400300120fje">
「…………」


//◆音声指示：同時
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/400300130mrp">
「…………」


{
	CreateSE("SE01","se擬音_ギャグ_ドーン");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("C",700, @0,@0,"buミリＰb_ショータイム_pinch");
	Shake("@StNameC/C*", 300, 5, 10, 0, 0, 500, null, false);
	FadeSt("C",200,true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/400300140mrp">
「なんなのよ、アレ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu平次_落ち込み_sad");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/400300150fjh">
「さあ……？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/400300160fje">
「いや、でもとにかくこれは幸運よ！」

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/400300170fje">
「みんなの避難は済んだわ！
　私たちもここを離れましょう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);





//◆場所：半田明神_男坂
	SceneOut(20000, 300, "blind_01_00_0");

//◆時間：ジャンプ
{	ClockPass(2243);}
	Wait(1000);

	DeleteAllSt(0,false);

//	OnBG(10,"bg0107400秋葉原_遠景_破壊");
//	FadeBG(0,true);

	CreateTextureEX("絵背景400", 100, Center, 0, "cg/bg/bg0107400秋葉原_遠景_破壊.jpg");
	Fade("絵背景400", 0, 1000, null, true);

	SceneIn(300, "blind_01_00_1");



//◆演出指示：遠くから戦闘音が聞こえる

	CreateSE("SE05","se環境_地鳴り03");
	MusicStart("SE05",0,500,0,1000,null,false);

	CreateSE("SE01a","se戦闘_風切り音複数_l");
	CreateSE("SE01","se戦闘_金属弾く02");
	CreateSE("SE02","se戦闘_切断02");
	MusicStart("SE01",0,300,0,1000,null,false);
	MusicStart("SE01a",0,300,0,1000,null,false);


	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);
	Fade("フラッシュ白",500,0,null,true);

	MusicStart("SE02",0,300,0,1000,null,false);

	SetVolumeEX("SE01a", 1000, 0, null);

	Fade("フラッシュ白",100,1000,null,true);
	FadeDelete("フラッシュ白",500,null,false);


	WaitKey(2000);

	Move("絵背景400", 3000, @0, @-650, AxlDxl, false);

	WaitKey(3000);

	Move("絵背景400", 0, @0, -650, null, false);

	CreateSE("SE01","se環境_風_l");
	MusicStart("SE01",4000,700,0,1000,null,true);



{	St("MR",700, @50,@0,"bu恵那_一休_surprise");
	Move("@StNameMR/MR*", 300, @-50, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/400300180fje">
「すごい……たったふたりで、タヌキを！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/400300190kit">
「なんであのメガネが突然、あんなカッコに？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/400300200mrp">
「アザナエルの力よ」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/400300210mrp">
「ノーコちゃんの願いは、似鳥君の心を書き換えることじゃない」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/400300220mrp">
「彼に、自らと同じ能力を植え付けること」



{	St("C",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/400300230mrp">
「同じ境遇に立ったからこそ、今あのふたりは、互いに背中を預け合って戦える……」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/400300240kit">
「そういうもんか……？」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//	TextBoxDelete(150);

//マスク準備
	CreateMask("絵マスク左", 6000, 0, 0, "cg/mask/ciスラッシュ_05_00.png", false);
	CreateTextureEX("絵マスク枠", 6010, 0, 0, "cg/mask/ciスラッシュ_05_00z.png");
	CreateColorEX("絵マスク左/絵演色", 1510, "#990000");
	CreateTextureEXadd("絵マスク左/絵演背景", 1520, 0, 0, "cg/ef/ef002_汎用移動.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク左/絵演立絵", 1530, center, middle, "cg/bu/bu恵那_哀愁_fear.png");
	Request("絵マスク左/絵演立絵", Smoothing);

//動作準備
	Move("絵マスク*", 0, -1024, 0, null, true);
	Move("絵マスク左/絵演立絵", 0, -512, 200, null, true);
	Fade("絵マスク左/絵演背景", 0, 1000, null, true);
	Fade("絵マスク左/絵演色", 0, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ba22/400300250kms">
「しかし――」

//◆演出指示：ここで歌門登場


{
	SetVolumeEX("SE*", 4000, 0, null);
	SoundPlay("@xbgm24",0,450,true);

	St("C",700, @50,@0,"bu歌門_通常_pride");
	Move("@StNameC/C*", 1000, @-50, @0, Dxl2, false);
	FadeSt("C",200,true);

	WaitKey(500);

//動作
	Move("絵マスク*", 200, -200, 0, Dxl3, false);
	Fade("絵マスク*", 200, 1000, null, false);
	Fade("絵マスク左/絵演立絵", 200, 1000, null, false);
	Move("絵マスク左/絵演立絵", 200, -100, middle, Dxl1, true);
}

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/400300260fje">
「星さん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("絵マスク*", 200, -1024, 0, Axl3, false);
	Move("絵マスク左/絵演立絵", 200, -512, 200, Axl1, false);
	Fade("絵マスク左/絵演立絵", 200, 0, null, false);


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]

{	St("C",700, @0,@0,"bu歌門_通常_think");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ba22/400300270kms">
「大狸は未だ力を失っていない。
　到底、勝てるようには思えません」


{	St("C",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ba22/400300280kms">
「禍福を糾えるカゴメアソビ――」

{	St("C",700, @0,@0,"bu歌門_通常_think");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ba22/400300290kms">
「それが現代に蘇ったツケが、これです。
　我々はただ、甘んじてその罰を受けるのみ――」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_オラオラ_pinch");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/400300300mso">
「なんだと！？　ふざけんじゃねぇ！
　オレたちは勝つ！　勝って――」

{	St("L",700, @0,@0,"buみそa_オラオラ_angry");
	Shake("@StNameL/L*", 300, 5, 10, 0, 0, 500, null, false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/400300310mso">
「勝って、姐さんの仇をとるんだ！
　なあ、ブー！」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_オラオラ_angry");
	FadeSt("R",200,false);
	Zoom("@StNameR/R*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameR/R*", 100, 1000, 1000, Axl2, true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/400300320buu">
「おうよッ！
　こんなところで引き下がってたまるかッ！！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/400300330fjh">
「今回ばかりは、同感だ。
　オレたちの手で、この街を守ってやる！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu歌門_通常_think");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ba22/400300340kms">
「平次様。あなたひとりが気張っても、限度が……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//	SetVolumeEX("@x*", 2000, 0, NULL);

	CreateSE("SE01","se擬音_ギャグ_エロセンサー");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,false);
	St("C",700, @0,@50,"buブーa_オラオラ_shout");
	Move("@StNameC/C*", 300, @0, @-50, Dxl2, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/400300350buu">
「弱点だッ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/400300360fjh">
「弱点？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buブーa_オラオラ_shout");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/400300370buu">
「まともに相手にしたって、あのデカさだ。
　きっと、何か弱いところがあるはず！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_オラオラ_happy");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/400300380mso">
「おお……さすがブー！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]

{	SetVolumeEX("@xbgm06", 1000, 0, null);
	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu平次_通常_cool");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/400300390fjh">
「で、タヌキはなにに弱いんだ？」

{
	CreateSE("SE02","se擬音_ギャグ_寒い風");
	MusicStart("SE02",0,700,0,1000,null,false);
	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_オラオラ_hard");
	FadeSt("MR",200,true);
	WaitKey(500);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/400300400buu">
「…………」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/400300410mso">
「…………」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buミリＰa_通常_pinch");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/400300420mrp">
「…………」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/400300430kit">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@*", 1000, 0, NULL);

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	CreateSE("SE01","se擬音_ギャグ_ドカーン");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu平次_御用だ_shout");
	FadeSt("C",200,false);
	Zoom("@StNameC/C*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameC/C*", 100, 1000, 1000, Axl2, true);}

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/400300440fjh">
「ったく、てんでダメじゃねぇか！　バーロー！」


{
	DeleteAllSt(200,false);
	St("C",19010, @50,@0,"fu恵那_ハルヒ_shout");
	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	MusicStart("@xbgm08_noint",0,240,0,1000,null,true);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/400300450fje">
「待って！」


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/400300460fje">
「千秋、さっき戻しちゃったわよね！
　その前になに、食べたの？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/400300470kit">
「え……なにって、クリマンと……」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/400300480fje">
「クリマンと……？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/400300490kit">
「こんにゃく」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/400300500fje">
「で、そのコンニャクを嫌がるみたいに、あの巨大タヌキはそれを避けた……」


{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ba22/400300510kms">
「偶然ではないのですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/400300520mrp">
「さっきのタヌキ……フウリちゃんだったのよね？」

{	St("C",700, @0,@0,"buミリＰb_通常_hard");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/400300530mrp">
「彼女はゆるキャラバンで、唯一コンニャクが食べられなかった」

{	St("C",700, @0,@0,"buミリＰb_ショータイム_normal");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/400300540mrp">
「だから、アッキーちゃんがバトンタッチしたわけ」


{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu平次_通常_hard");
	FadeSt("L",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/400300550fjh">
「でもなんで、タヌキがコンニャクを？」


{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/400300560fje">
「タヌキ汁……ってあるでしょ？」

{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/400300570fje">
「タヌキの肉を使った汁物――ってイメージがあるけど、肉の代わりにコンニャクの炒め物を使うこともあるの」


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/400300580fje">
「獣肉が食べられなかった頃の代用品だったわけ。
　きっと、その時のことが関係してるんじゃないかしら？」


{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_オラオラ_happy");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/400300590mso">
「おおお……さすがは探偵だ！」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu平次_通常_cool");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/400300600fjh">
「コンニャク……だな？」


{	St("ML",700, @0,@0,"bu平次_通常_shout");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/400300610fjh">
「よっしゃ、みんな！
　手分けしてコンニャクを探す――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]



{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ba22/400300620kms">
「こんな時間――しかも、大晦日です。
　ほとんどの店は閉まっているでしょう」


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ba22/400300630kms">
「いったいどこから、それほど多くのコンニャクを？」

{	SetVolumeEX("@x*", 3000, 0, NULL);
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu平次_落ち込み_pain");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/400300640fjh">
「それは……」

{	SoundPlay("@xbgm02",0,450,true);
	DeleteAllSt(200,false);
}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ba22/400300650msi">
「私にお任せ下さいッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]

{	St("ML",700, @0,@0,"bu平次_通常_cool");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/400300660fjh">
「この声……」

{	DeleteAllSt(200,false);
	St("C",700, @50,@0,"bu村崎_通常_pinch");
	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	FadeSt("C",200,true);
}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ba22/400300670msi">
「私に出来る、せめてもの罪滅ぼし。
　どうか私にも、協力させてやって下さい」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_ハルヒ_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/400300680fje">
「あ！　そういえば、村崎さん――」


{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ba22/400300690msi">
「はい。
　皆さん、おでん缶をご存じでしょうか？」


//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ba22/400300700msi">
「遡ること数年前、秋葉原ブームの先駆けとして報じられた名物です」

{	St("C",700, @0,@0,"bu村崎_通常_ero");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ba22/400300710msi">
「無論流行に乗り遅れるわけには参りません！
　我々もおでん缶に対抗する新名物の作成に取りかかった」

{	St("C",700, @0,@0,"bu村崎_通常_cry");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ba22/400300720msi">
「しかし二番煎じが通用するような甘い世の中ではない」

{	St("C",700, @0,@0,"bu村崎_通常_pinch");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ba22/400300730msi">
「そこで、我々はかねてからのダイエットブームに乗じる戦略をとりました」


//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ba22/400300740msi">
「我々の開発した新製品！
　それは――ノーカロリーコンニャク！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//あきゅん「素材：objノーカロリーコンニャク」

	DeleteAllSt(200,true);

	CreateSE("SE01","se擬音_ギャグ_じゃじゃーん");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵オブ", 100, Center, Middle, "cg/obj/objノーカロリーコンニャク.png");
	Move("絵オブ", 0, @0, @100, null, true);

	Move("絵オブ", 300, @0, @-100, DxlAuto, false);
	Fade("絵オブ", 300, 1000, null, true);

//	St("C",700, @0,@0,"bu村崎_通常_happy");
//	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ba22/400300750msi">
「略して、ロリコン！」



{
	Move("絵オブ", 500, @0, @100, DxlAuto, false);
	Fade("絵オブ", 500, 0, null, true);
	Delete("絵オブ");



	CreateSE("SE02","se擬音_ギャグ_ドッキーン");
	MusicStart("SE02",0,700,0,1000,null,false);
	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_オラオラ_happy");
	FadeSt("R",200,true);
	Shake("@StNameR/R*", 300, 10, 0, 0, 0, 500, null, false);}

//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/400300760buu">
「おおおおおおおおおおッ！　感動」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_sad");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/400300770mso">
「え？　感動するところか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2244);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]


{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ba22/400300780msi">
「しかし、その努力は水泡に帰しました……」


{
	CreateSE("SE03","se擬音_ギャグ_寒い風");
	MusicStart("SE03",0,700,0,1000,null,false);

	St("C",700, @0,@0,"bu村崎_通常_cry");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ba22/400300790msi">
「今でも段ボールんー十箱分のコンニャクが、倉庫に眠っているんです」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu平次_通常_cool");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/400300800fjh">
「それをもらっていいんだな？」


{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ba22/400300810msi">
「ええ！　この非常時ですから、格安でお譲り――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteStC(300,false);

//	TextBoxDelete(150);

//	SetVolumeEX("@xbgm*", 300, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ba22/400300820fjr">
「もらって、いいのよねェ？」

{	St("C",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("C",200,true);
}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ba22/400300830msi">
「ひえ！　こ、この声は――」

{	St("C",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, null, false);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ba22/400300840msi">
「鈴さん！」

{	DeleteAllSt(200,false);
	St("MR",700, @50,@0,"bu鈴_シリアス_normal");
	Move("@StNameMR/MR*", 300, @-50, @0, Dxl2, false);
	FadeSt("MR",200,true);
//	SoundPlay("@xbgm20_noeff",0,450,true);
}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ba22/400300850fjr">
「ウチの窓ガラスの件、忘れてないわよね？」

{	DeleteAllSt(200,false);
	St("ML",700, @50,@0,"bu村崎_通常_pinch");
	Move("@StNameML/ML*", 500, @-50, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ba22/400300860msi">
「いえ！　でももう、お店自体がタヌキに潰されて――」

{	St("MR",690, @0,@0,"bu鈴_シリアス_smile");
	Move("@StNameMR/MR*", 800, @-20, @0, null, false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ba22/400300870fjr">
「わ・す・れ・て・な・い・わ・よ・ね？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{
//	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu村崎_通常_cry");
	FadeSt("ML",200,false);
	Zoom("@StNameML/ML*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameML/ML*", 100, 1000, 1000, Axl2, true);
	SetVolumeEX("@xbgm*", 3000, 0, null);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ba22/400300880msi">
「はいいっ！　ただで提供させていただきます！」



{
	SoundPlay("@xbgm30",0,550,true);

	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu鈴_通常_happy");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ba22/400300890fjr">
「ＯＫ！　それじゃ、バイトのみんな！
　みんなでコンニャク缶、運ぶわよ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu平次_通常_shout");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/400300900fjh">
「オレは後輩を片っ端から呼び寄せてやる！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミリＰb_ショータイム_happy");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/400300910mrp">
「アタシも今すぐ局のスタッフに連絡するわ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]

{	St("R",700, @50,@0,"buミヅハ_手構え_other");
	Move("@StNameR/R*", 300, @-50, @0, Dxl2, false);
	FadeSt("R",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ba22/400300920mzh">
「おい鈴！　吉報だ！」

{	St("R",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("R",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ba22/400300930mzh">
「河原屋双一から連絡が！
　避難誘導に組員をよこすそうじゃ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ba22/400300940fjr">
「双一から……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]


{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_オラオラ_happy");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/400300950mso">
「いよっしゃ！」


{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_オラオラ_happy");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/400300960buu">
「オレたちも――」


{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu平次_通常_shout");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/400300970fjh">
「おまえたちは一緒に来い！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_オラオラ_shock");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/400300980mso">
「え？　なんで？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu平次_通常_hard");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/400300990fjh">
「金閣寺の仇をとりてぇんだろ？
　おまえらに、うってつけの仕事がある！」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_sad");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/400301000buu">
「オレたちにうってつけの仕事？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	SceneOut(5000, 300, "slide_01_01_0");

	DeleteAllSt(0,false);

//あきゅん「修正指示：迫力のある破砕系の音と、それに合わせた演出をお願いします」

//★wam井野 修正いたしました。 10/11/20

	CreateTextureEX("タヌ", 1500, -1024, -512, "cg/ev/l/ev2220太四郎ビル大破壊_l.jpg");
	Fade("タヌ", 0, 1000, null, false);
	Request("タヌ", Smoothing);

	CreateSE("SE07","se戦闘_破壊01");
	MusicStart("SE07",0,700,0,1000,null,false);
	CreateSE("SE08","se戦闘_倒壊03");
	MusicStart("SE08",0,800,0,1000,null,false);
	CreateSE("SE09","se戦闘_爆発01");
	MusicStart("SE09",0,300,0,1000,null,false);

	Zoom("タヌ", 5000, 1500, 1500, Dxl2, false);
	BezierMove("タヌ", 8000, (-1024, -512){256,-512}{0,-512}(-512,-256){-1024,0}{-256, 0}(-600, 256), Dxl2, false);
	Shake("タヌ", 10000, 15, 13, 0, 0, 500, Dxl2, false);

	SceneIn(300, "slide_01_01_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/400301010tsr">
「ぐおおおおおおおおお！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SceneOut(5000, 300, "slide_01_01_1");

	Fade("タヌ", 0, 0, null, false);

	SceneIn(300, "slide_01_01_0");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0245]

{

	St("C",700, @-50,@0,"bu平次_通常_shout");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/400301020fjh">
「よぉし、みんな！」

{	St("C",700, @0,@0,"bu平次_御用だ_angry");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/400301030fjh">
「ぼんやりしてると、オレたちの街を跡形もなく壊されちまうぞ！」

{	St("C",700, @0,@0,"bu平次_御用だ_shout");
	FadeSt("C",200,true);

	Zoom("@StNameMR/MR*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameMR/MR*", 100, 1000, 1000, Axl2, true);

}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/400301040fjh">
「さあ、行動だッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

	TextBoxDelete(150);

//	St("C",700, @0,@0,"bu村崎_通常_happy");
//	St("C",700, @0,@0,"bu鈴_通常_happy");
//	St("C",700, @0,@0,"buミリＰb_ショータイム_happy");
//	St("C",700, @0,@0,"buミヅハ_手構え_hard");
//	St("C",700, @0,@0,"buみそa_オラオラ_shout");
//	St("C",700, @0,@0,"buブーa_オラオラ_shout");
//	St("C",700, @0,@0,"buユージローa_通常_hard");

	CreateWindow("win01", 2000, 0, 0, 256, 268, false);
	CreateWindow("win02", 2000, 256, 0, 256, 268, false);
	CreateWindow("win03", 2000, 512, 0, 256, 268, false);
	CreateWindow("win04", 2000, 768, 0, 256, 268, false);
	CreateWindow("win05", 2000, 0, 268, 256, 328, false);
	CreateWindow("win06", 2000, 256, 268, 512, 328, false);
	CreateWindow("win08", 2000, 768, 268, 256, 328, false);

	CreateColorEX("win01/絵色100", 1500, "BLUE");
	CreateColorEX("win02/絵色200", 1500, "RED");
	CreateColorEX("win03/絵色300", 1500, "BLUE");
	CreateColorEX("win04/絵色400", 1500, "RED");
	CreateColorEX("win05/絵色500", 1500, "RED");
	CreateColorEX("win06/絵色600", 1500, "YELLOW");
	CreateColorEX("win08/絵色800", 1500, "BLUE");

	CreateTextureSPadd("win01/絵背景", 1600, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	CreateTextureSPadd("win02/絵背景", 1600, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	CreateTextureSPadd("win03/絵背景", 1600, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	CreateTextureSPadd("win04/絵背景", 1600, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	CreateTextureSPadd("win05/絵背景", 1600, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	CreateTextureSPadd("win06/絵背景", 1600, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	CreateTextureSPadd("win08/絵背景", 1600, Center, Middle, "cg/ef/ef002_汎用移動.jpg");

	CreateTextureEX("win01/絵背景100", 1800, -90, -60, "cg/bu/bu村崎_通常_happy.png");
	CreateTextureEX("win02/絵背景200", 1800, 100, -70, "cg/bu/bu鈴_通常_happy.png");
	CreateTextureEX("win03/絵背景300", 1800, 300, -20, "cg/bu/buミリＰb_ショータイム_happy.png");
	CreateTextureEX("win04/絵背景400", 1800, 600, -90, "cg/bu/buミヅハ_通常_smile.png");
	CreateTextureEX("win05/絵背景500", 1800, -280, 0, "cg/bu/buみそa_オラオラ_shout.png");
	CreateTextureEX("win06/絵背景600", 1800, 110, 230, "cg/bu/buユージローa_通常_hard.png");
	CreateTextureEX("win08/絵背景800", 1800, 500, 140, "cg/bu/buブーa_オラオラ_shout.png");

	Move("win01", 0, @-200, @-200, null, true);
	Move("win02", 0, @-100, @-200, null, true);
	Move("win03", 0, @+100, @-200, null, true);
	Move("win04", 0, @+200, @-200, null, true);
	Move("win05", 0, @-200, @+200, null, true);
	Move("win06", 0, @0, @+200, null, true);
	Move("win08", 0, @+200, @+200, null, true);

	Move("win01/*", 0, @-200, @-200, null, true);
	Move("win02/*", 0, @-100, @-200, null, true);
	Move("win03/*", 0, @+100, @-200, null, true);
	Move("win04/*", 0, @+200, @-200, null, true);
	Move("win05/*", 0, @-200, @+200, null, true);
	Move("win06/*", 0, @0, @+200, null, true);
	Move("win08/*", 0, @+200, @+200, null, true);

	Move("win01", 500, @+200, @+200, Dxl2, false);
	Move("win02", 500, @+100, @+200, Dxl2, false);
	Move("win03", 500, @-100, @+200, Dxl2, false);
	Move("win04", 500, @-200, @+200, Dxl2, false);
	Move("win05", 500, @+200, @-200, Dxl2, false);
	Move("win06", 500, @0, @-200, Dxl2, false);
	Move("win08", 500, @-200, @-200, Dxl2, false);

	Move("win01/*", 500, @+200, @+200, Dxl2, false);
	Move("win02/*", 500, @+100, @+200, Dxl2, false);
	Move("win03/*", 500, @-100, @+200, Dxl2, false);
	Move("win04/*", 500, @-200, @+200, Dxl2, false);
	Move("win05/*", 500, @+200, @-200, Dxl2, false);
	Move("win06/*", 500, @0, @-200, Dxl2, false);
	Move("win08/*", 500, @-200, @-200, Dxl2, false);

	Fade("win01/*", 500, 1000, null, false);
	Fade("win02/*", 500, 1000, null, false);
	Fade("win03/*", 500, 1000, null, false);
	Fade("win04/*", 500, 1000, null, false);
	Fade("win05/*", 500, 1000, null, false);
	Fade("win06/*", 500, 1000, null, false);
	Fade("win08/*", 500, 1000, null, true);

	CreateColorEXadd("白フラ", 15000, "WHITE");
	Fade("白フラ", 0, 1000, null, true);
	Fade("白フラ", 700, 0, null, false);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250a]

//★ wam井野 ：音声：同時再生　７人　★音声加工

//◆音声指示：同時
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ba22/400301050msi">
//◆音声指示：同時
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ba22/400301060fjr">
//◆音声指示：同時
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/400301070mrp">
//◆音声指示：同時
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ba22/400301080mzh">
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/400301090mso">
//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/400301100buu">
//◆音声指示：同時
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ba22/400301110ujr">
「おう――ッ！！」「おう――ッ！！」「おう――ッ！！」「おう――ッ！！」
「おう――ッ！！」「わう――んっ！！」「おう――ッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250b]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ba22/400301050">
「「「「「「「おう――――――ッ！！」」」」」」」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	Move("win01", 500, @+200, @0, Axl2, false);
	Move("win02", 500, @+200, @0, Axl2, false);
	Move("win03", 500, @+200, @0, Axl2, false);
	Move("win04", 500, @+200, @0, Axl2, false);
	Move("win05", 500, @-200, @0, Axl2, false);
	Move("win06", 500, @-200, @0, Axl2, false);
	Move("win08", 500, @-200, @0, Axl2, false);

	Move("win01/*", 500, @+200, @0, Axl2, false);
	Move("win02/*", 500, @+200, @0, Axl2, false);
	Move("win03/*", 500, @+200, @0, Axl2, false);
	Move("win04/*", 500, @+200, @0, Axl2, false);
	Move("win05/*", 500, @-200, @0, Axl2, false);
	Move("win06/*", 500, @-200, @0, Axl2, false);
	Move("win08/*", 500, @-200, @0, Axl2, false);

	Fade("win01/*", 500, 0, null, false);
	Fade("win02/*", 500, 0, null, false);
	Fade("win03/*", 500, 0, null, false);
	Fade("win04/*", 500, 0, null, false);
	Fade("win05/*", 500, 0, null, false);
	Fade("win06/*", 500, 0, null, false);
	Fade("win08/*", 500, 0, null, true);


	SceneOut(5000, 300, "slide_01_01_0");

	Delete("win*/*");
	Delete("win*");

	Fade("絵背景400", 0, 0, null, true);

//◆場所：半田明神_鳥居

{	ClockPass(2245);}

//	OnBG(10,"bg0602100半田明神_鳥居_通常");
//	FadeBG(0,true);

	CreateTextureSP("絵背景100", 20, Center, -780, "cg/bg/bg0602100半田明神_鳥居_通常.jpg");


	SceneIn(300, "slide_01_01_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	St("C",700, @50,@0,"bu村崎_通常_normal");
	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	FadeSt("C",200,true);
}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ba22/400301120msi">
「こっちです！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	CreateSE("SE01","se動作_集団走る");
	MusicStart("SE01",0,700,0,1000,null,true);

	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	DeleteAllSt(200,false);

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　村崎の先導で、皆が走る。

　巨大なタヌキの出現に、慌てて出店を畳もうとしていた人々も、事情を聞き村崎の後についた。



{	St("ML",700, @50,@0,"bu千秋_朗らか_smile");
	Move("@StNameML/ML*", 300, @-50, @0, Dxl2, false);

	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/400301130kit">
「倉庫、近くにあって良かったな」

{
	SetVolumeEX("@S*", 2000, 0, NULL);

	DeleteAllSt(200,false);
	St("MR",700, @50,@0,"bu恵那_通常_shy");
	Move("@StNameMR/MR*", 300, @-50, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/400301140fje">
「うん……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/400301150kit">
「ん、恵那？　どした？」

{	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/400301160kit">
「なんか……泣いてる？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_shy");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/400301170fje">
「ううん、なんでもないの――ただ」

{
	St("MR",700, @0,@0,"bu恵那_通常_happy");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/400301180fje">
「こんなにみんながまとまるのって、すごいなって」

{	St("MR",700, @0,@0,"bu恵那_一休_shy");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/400301190fje">
「父さんって――
　ホントは、ちょっとかっこいいのかもって」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_pride");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/400301200kit">
「うん。地震の瞬間もそうだったけど、やっぱり恵那のオヤジさん、カッコイイよ。警官！　って感じ」


{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/400301210kit">
「でも――オレは絶対、オヤジさんに認められてやる」

{	St("ML",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/400301220kit">
「恵那の側にいて恥ずかしくない男に、絶対なるんだ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_感動_happy");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/400301230fje">
「千秋……」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	SetVolumeEX("@x*", 2000, 0, NULL);

	TextBoxDelete(150);

	SceneOut(20000, 300, "blind_01_01_0");

//	OnBG(10,"bg0601100半田明神_男坂_通常");
//	FadeBG(0,true);

	Delete("絵背景100");

	CreateTextureSP("絵背景400", 100, Center, -650, "cg/bg/bg0107400秋葉原_遠景_破壊.jpg");


//◆時間：ジャンプ
{	ClockPass(2247);}
	Wait(1000);

//◆場所：半田明神_男坂　→　秋葉原_遠景_破壊
	OnBG(10,"bg0107400秋葉原_遠景_破壊");
	FadeBG(0,true);

	DeleteAllSt(0,true);
	SceneIn(300, "blind_01_01_1");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]


{	St("ML",700, @0,@0,"bu千秋_朗らか_pride");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/400301240kit">
「オヤジさん、これ！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu平次_通常_smile");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/400301250fjh">
「おう！」

　次々と積まれていくコンニャク缶を見ながら、平次は満足げに頷いた。

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/400301260fje">
「あとは、これをどうやってアイツに当てるか――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu平次_御用だ_happy");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/400301270fjh">
「任せとけ。みそブーが準備、進めてる。なあ？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,false);

	St("L",700, @0,@50,"buみそa_オラオラ_pride");
	St("R",700, @0,@50,"buブーa_オラオラ_hard");
	Move("@StNameL/L*", 300, @0, @-50, Dxl2, false);
	Move("@StNameR/R*", 300, @0, @-50, Dxl2, false);
	Shake("@StNameL/L*", 300, 10, 0, 0, 0, 500, null, false);
	Shake("@StNameR/R*", 300, 10, 0, 0, 0, 500, null, false);
	FadeSt("L",200,false);
	FadeSt("R",200,true);

/*
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/400301280mso">
「押忍！」
//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/400301290buu">
「押忍！」
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/400301280">
「「押忍！」」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]


{	St("C",700, @0,@0,"bu平次_通常_hard");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/400301300fjh">
「本当は年越しの瞬間に――ってつもりだったんだが。
　この際しゃぁねぇな」



{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/400301310kit">
「準備？　いったいなにを――」



{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu平次_通常_cool");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/400301320fjh">
「けどまあ……猶予、なくなってるみてぇだな」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/400301330fje">
「猶予？」

{	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/400301340fje">
「あ――」




</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	SceneOut(5000, 300, "slide_01_01_0");

//	SoundPlay("@xbgm22_onint",0,450,true);
//◆演出指示：ビルがちょっとずつ壊れていく

//◆ＳＥ：めきめきめき・ガシャーン！


	CreateTextureEX("タヌ", 2000, Center, Middle, "cg/ev/l/ev2220太四郎ビル大破壊b_l.jpg");
	Zoom("タヌ", 0, 550, 550, null, true);
	DeleteAllSt(0,false);
	Fade("タヌ", 0, 1000, null, false);
	DeleteAllSt(0,false);
	#ev2220太四郎ビル大破壊b = true;


	SceneIn(300, "slide_01_01_1");

	CreateSE("SE03","se戦闘_倒壊02");
	MusicStart("SE03",0,700,0,1000,null,false);
	Shake("タヌ", 2000, 3, 2, 0, 0, 500, null, false);
	Zoom("タヌ", 4000, 600, 600, Dxl1, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
{
//	St("C",700, @0,@0,"bu千秋_驚天_shock");
//	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/400301350kit">
「な――なんだありゃ！？」

{
//	St("C",700, @0,@0,"bu平次_落ち込み_pain");
//	FadeSt("C",200,true);
}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/400301360fjh">
「ちょっとずつ、大きくなってる」

{
//	St("C",700, @0,@0,"bu恵那_ハルヒ_sigh");
//	FadeSt("C",200,true);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/400301370fje">
「動かないんだったら、似鳥さんが――」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//◆音声指示：遠くから
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400301380nki">
「でりゃああああああッ」


//◆ＳＥ：ぷにょ――――ん


{
	CreateTextureEXadd("絵色100", 2000, Center, Middle, "cg/ef/ef029_物理限界速度域.jpg");
	CreateSE("SE01","se戦闘_金属弾く04");
	CreateSE("SE02","se戦闘_切断02");
	MusicStart("SE01",0,500,0,1000,null,false);
	MusicStart("SE02",0,500,0,1000,null,false);

	Fade("絵色100", 200, 600, null, true);
	Fade("絵色100", 1000, 0, null, true);
//	WaitKey(1500);

	CreateSE("SE03","se擬音_ギャグ_ぷにょーん");
	MusicStart("SE03",0,500,0,1000,null,false);

}


//◆音声指示：遠くから
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400301390nki">
「ぎゃっ！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	SceneOut(5000, 300, "slide_01_01_0");

	Fade("タヌ", 0, 0, null, false);

	CreateTextureSP("絵背景400", 100, Center, -650, "cg/bg/bg0107400秋葉原_遠景_破壊.jpg");

	SceneIn(300, "slide_01_01_1");



{	St("C",700, @0,@0,"bu平次_通常_cool");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/400301400fjh">
「見ての通り」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/400301410fjh">
「覆ってる皮には、傷ひとつつかない」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/400301420fje">
「そんな……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_驚天_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/400301430kit">
「まずいよ！　すぐそこまで来てる」

{	St("ML",700, @0,@0,"bu千秋_朗らか_cry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/400301440kit">
「このままじゃ、秋葉原が――！」


{	ClockPass(2248);}

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_sad");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/400301450buu">
「あれ？　なんか――」

//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/400301460buu">
「ノーコが、誰かと話してる？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/400301470fje">
「あにのあなの……屋上？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("@StNameMR/MR*", 300, @0, @50, Dxl2, false);
	DeleteAllSt(200,false);

	Move("絵背景400", 1500, @0, -450, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]


{	DeleteAllSt(200,false);
	St("ML",700, @0,@100,"bu千秋_朗らか_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/400301480kit">
「いや、さすがにこの距離じゃ――」


{
	SetVolumeEX("@x*", 2000, 0, NULL);

	DeleteAllSt(200,false);
	St("L",700, @0,@50,"buみそa_オラオラ_shock");
//	Move("@StNameL/L*", 300, @0, @-30, Dxl2, false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/400301490mso">
「姐さんだ……」

{	DeleteAllSt(200,false);
	St("R",700, @0,@50,"buブーa_通常_shock");
	FadeSt("R",200,true);
	Shake("@StNameR/R*", 300, 10, 0, 0, 0, 500, null, false);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/400301500buu">
「え？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@50,"buみそa_オラオラ_happy");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/400301510mso">
「姐さんが、銃を構えて屋上に！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2249);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@100,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/400301520fje">
「嘘！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@100,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/400301530kit">
「生きてたのか……？」

{	DeleteAllSt(200,false);
	St("R",700, @0,@50,"buブーa_通常_cry");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/400301540buu">
「姐さん……」

{	DeleteAllSt(200,false);
	St("L",700, @0,@50,"buみそa_オラオラ_pride");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/400301550mso">
「しかも、後ろには双六さんが――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@50,"bu平次_通常_hard");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/400301560fjh">
「双六――！？」


//◆ＳＥ：電話
{

	CreateSE("SE01","seメカ_携帯_メール着信_平次_l");
	MusicStart("SE01",0,700,0,1000,null,true);
	WaitKey(2000);

	Move("@StNameC/C*", 200, @0, @-50, Dxl2, false);
	Move("絵背景400", 200, @0, -650, Dxl2, true);

	St("C",700, @0,@0,"bu平次_落ち込み_pain");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/400301570fjh">
「ちぃっ！　こんなときに――」

{	DeleteAllSt(200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/400301580fjh">
「双六から、電話！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SceneOut(5000, 300, "blind_01_01_0");

	Wait(300);

	WaitAction("@SE01", null);

//	ClearWaitAll(0, 0);

	EndScene();
}
