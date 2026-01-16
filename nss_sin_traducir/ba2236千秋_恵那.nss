
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ba2236千秋_恵那.nss_MAIN
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
		$GameName = "ba2240千秋_恵那.nss";
	}else if($CharaName=="恵那"){
		$GameName = "ba2240千秋_恵那.nss";
	}else{
		$GameName = "ba2240千秋_恵那.nss";
	}


}

scene ba2236千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="660">
////////////header////////////
//file name "ba2236千秋_恵那.nss"
//title "弱点を推理せよ！"
//previous "ba2235千秋_恵那_ノーコ.nss"

////////////footer////////////
//next "千秋" "ba2240千秋_恵那.nss"
//next "恵那" "ba2240千秋_恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

	Request("@SE*", UnLock);

{	ClockPass(2236);}


	OnBG(10,"bg1101400スパコン館_裏面_半廃墟");

//一際大きな破壊音。
//スパコン館がぶっ壊れ、煙がモクモク

	CreateSE("SE01","se戦闘_倒壊04");
	MusicStart("SE01",0,700,0,1000,null,false);


	CreateTextureSP("絵背景1000", 1000, 0, -400, "cg/bg/bg1101400スパコン館_裏面_半廃墟.jpg");
	CreateColorSPadd("絵色100", 1250, "White");
	SetShade("@OnBG", HEAVY);

	Fade("絵色100", 0, 500, null, true);
	FadeBG(0,true);


	Shake("@OnBG*", 300, 30, 20, 0, 0, 500, null, false);

	FadeDelete("上背景", 200, null, false);
	Zoom("絵背景1000", 0, 2000, 2000, null, true);
	Move("絵背景1000", 0, 0, -200, null, false);

	Fade("絵色100", 3000, 800, null, false);
	Zoom("絵背景1000", 2000, 3000, 3000, Dxl2, false);

	CreateMovie("ムービー１", 1200, 227, 151, true, true, "dx/mvk100.ngs");
	SetAlias("ムービー１","ムービー１");
	Zoom("ムービー１", 0, 3000, 3000, null, true);

	CreateMovie("ムービー２", 1200, 227, 151, true, true, "dx/mvk100.ngs");
	SetAlias("ムービー２","ムービー２");

	Rotate("ムービー２", 0, @0,180,@0, null,true);
	Zoom("ムービー２", 0, 3000, 3000, null, true);

	Shake("絵背景1000", 5000, 0, 40, 0, 0, 1000, null, false);
	Move("絵背景1000", 1000, 0, @500, null, false);
	Zoom("ムービー１", 1500, 40000, 3000, Dxl1, false);
	Zoom("ムービー２", 1500, 30000, 3000, Axl1, false);

	Wait(1000);


//窓準備
	CreateAXLWindowEX("絵窓", "Y", 1600, 96, 288, false);
	WindowAXLZoom("絵窓", "Y", 0, 0, null, true);
	CreateColorSP("絵窓/絵演色", 1510, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	Move("絵窓/絵演背景", 0, @0, @0, null, true);

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1530, center, middle, "cg/bu/buＡＤ_通常_sad.png");
	Move("絵窓/絵演立絵", 0, @0, @50, null, true);

//動作
	Fade("絵窓/絵演立絵", 200, 1000, null, false);
	WindowAXLZoom("絵窓", "Y", 200, 1000, Dxl2, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]

{
//	St("ML",700, @0,@0,"buＡＤ_通常_sad");
//	FadeSt("ML",200,true);
}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ba22/360200010adi">
「きゃあああああッ！！」

{
	CreateTextureEX("絵窓/絵演立絵2", 1520, center, middle, "cg/bu/buミリＰb_通常_shock.png");
	Move("絵窓/絵演立絵2", 0, @-100, @50, null, true);
	Request("絵窓/絵演立絵2", Smoothing);
	Move("絵窓/絵演立絵*", 200, @100, @0, Dxl2, false);
	Fade("絵窓/絵演立絵", 300, 0, Axl2, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, true);

//	DeleteAllSt(200,false);
//	St("C",700, @0,@0,"buミリＰb_通常_shock");
//	FadeSt("C",200,true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/360200020mrp">
「な、なんということでしょうっ！！」

{
	CreateTextureEX("絵窓/絵演立絵", 1520, center, middle, "cg/bu/buミリＰb_通常_pinch.png");
	Move("絵窓/絵演立絵", 0, @0, @50, null, true);
	Request("絵窓/絵演立絵", Smoothing);
	Fade("絵窓/絵演立絵*", 300, 0, Axl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);

//	St("C",700, @0,@0,"buミリＰb_通常_pinch");
//	FadeSt("C",200,true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/360200030mrp">
「私たちを守ったノーコちゃんが、大狸に弾かれた！」

{
	CreateTextureEX("絵窓/絵演立絵2", 1520, center, middle, "cg/bu/buミリＰb_ショータイム_pinch.png");
	Move("絵窓/絵演立絵2", 0, @0, @50, null, true);
	Request("絵窓/絵演立絵2", Smoothing);
	Fade("絵窓/絵演立絵*", 300, 0, Axl2, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, true);

//	St("C",700, @0,@0,"buミリＰb_ショータイム_pinch");
//	FadeSt("C",200,true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/360200040mrp">
「そしてそのまま、スパコン館に飛び込んで――」

{
	CreateTextureEX("絵窓/絵演立絵", 1520, center, middle, "cg/bu/buミリＰb_通常_sad.png");
	Move("絵窓/絵演立絵", 0, @0, @50, null, true);
	Request("絵窓/絵演立絵", Smoothing);
	Fade("絵窓/絵演立絵*", 200, 0, Axl1, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);
//	St("C",700, @0,@0,"buミリＰb_通常_sad");
//	FadeSt("C",200,true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/360200050mrp">
「ど、どうなったの！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//収納
	WindowAXLZoom("絵窓", "Y",200, 0, Axl2, true);
	Delete("@絵窓*");


	DeleteAllSt(200,false);
	TextBoxDelete(150);

	SceneOut(5000, 300, "slide_01_01_0");

	CreateTextureEX("スラッシュ", 4000, Center, Middle, "cg/mask/ciスラッシュ_05_01z.png");

//	CreateMask("マスク右", 2000, center,Middle, "cg/mask/ciスラッシュ_05_01.png", false);

	CreateStencil("マスク右",3000,center,Middle,128,"cg/mask/ciスラッシュ_05_01.png",false);
//	CreateTextureEX("マスク右/絵背景右", 2000, Center, Middle, "cg/mask/ciスラッシュ_05_01z.png");
//	Zoom("スラッシュ", 0, 0, 1000, null, true);

	CreateColorSP("マスク右/絵演色右", 1450, "#DDDDDD");
	CreateTextureSPmul("マスク右/絵演背景", 1460, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	CreateTextureEX("マスク右/キャラ恵那", 1470, 482, 100, "cg/bu/bu恵那_哀愁_fear.png");

//	Zoom("スラッシュ", 0, 1000, 1000, null, false);
	Fade("スラッシュ", 0, 1000, null, false);

	SceneIn(300, "slide_01_01_1");

	Move("マスク右/キャラ恵那", 300, @50, @-100, Dxl1, false);

	Fade("マスク右/絵背景右", 300, 1000, null, false);
	Fade("マスク右/キャラ恵那", 300, 1000, null, true);

{	ClockPass(2237);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/360200060fje">
「千秋！　大丈夫？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("キャラ千秋", 1370, 100, 50, "cg/bu/bu千秋_通常_pain.png");
	CreateColorEX("絵演色左", 1300, "#DDDDDD");
	CreateTextureEXmul("絵背景100", 1350, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	Zoom("絵背景100", 0, 1500, 1500, null, true);
	Move("絵背景100", 0, @-400, @0, null, true);
	CreateTextureEX("キャラ千秋2", 1370, 100, 50, "cg/bu/bu千秋_通常_fear.png");

	Fade("絵演色左", 200, 1000, null, false);
	Fade("絵背景100", 300, 1000, null, true);
	Fade("キャラ千秋", 300, 1000, null, true);

//	St("C",700, @0,@0,"bu千秋_通常_pain");
//	FadeSt("C",200,true);
	Move("キャラ千秋", 70, @0, @30, Dxl1, true);
	Move("キャラ千秋", 70, @0, @-30, Axl1, true);
	Wait(50);
	Move("キャラ千秋", 70, @0, @30, Dxl1, true);
	Move("キャラ千秋", 70, @0, @-30, Axl1, false);

	Fade("キャラ千秋", 300, 0, Axl2, false);
	Fade("キャラ千秋2", 200, 1000, null, true);


//	St("C",700, @0,@0,"bu千秋_通常_fear");
//	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020a]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/360200070kit">
「けほっけほっ！　う……うん、なんとか――」

{
	CreateTextureEX("キャラ千秋", 1370, 100, 50, "cg/bu/bu千秋_通常_worry.png");

	Fade("キャラ千秋*", 300, 0, Axl2, false);
	Fade("キャラ千秋", 200, 1000, null, true);


//	St("C",700, @0,@0,"bu千秋_通常_worry");
//	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/360200080kit">
「でも、この煙って……」

{
	CreateTextureEX("マスク右/キャラ恵那2", 1470, 532, 0, "cg/bu/bu恵那_哀愁_sad.png");

	Fade("マスク右/キャラ恵那*", 300, 0, Axl2, false);
	Fade("マスク右/キャラ恵那2", 200, 1000, null, true);


//	St("C",700, @0,@0,"bu恵那_哀愁_sad");
//	FadeSt("C",200,true);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/360200090fje">
「うん。たぶん、スパコン館の――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	CreateTextureEX("タヌ", 1500, -500, -105, "cg/ev/l/ev2220太四郎ビル大破壊_l.jpg");
	Request("タヌ", Smoothing);

	Zoom("タヌ", 0, 1000, 1000, null, true);

	Fade("スラッシュ", 500, 0, null, false);
	Fade("タヌ", 500, 1000, null, true);
	DeleteAllSt(0,false);
	Fade("絵背景1000", 0, 0, null, true);
	Fade("マスク右/絵背景右", 0, 0, null, false);
	Fade("マスク右/キャラ恵那*", 0, 0, null, false);
	Fade("絵背景100", 0, 0, null, true);
	Fade("キャラ千秋*", 0, 0, null, true);
	Fade("絵演色*", 0, 0, null, true);


	Delete("スラ*");
	Delete("マスク*");
	Delete("キャラ*");
	Delete("絵背景*");
	Delete("絵演色*");

//	CreateMovieEX("ムービー１", 11000, Center, Middle, true, true, "dx/mvk100.ngs");
//	Request("ムービー１", AddRender);
//	Zoom("ムービー１", 0, 3000, 3000, null, true);
//	Fade("ムービー１", 0, 1000, null, true);

	CreateSE("SE01x","se戦闘_倒壊01");
	MusicStart("SE01x",0,700,0,1000,null,false);


	Move("タヌ", 2000, @0, @100, Dxl2, false);
	Shake("タヌ", 2000, 3, 3, 0, 0, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/360200100tsr">
「ぐおおおおお……ぐおおおお……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//窓準備
	CreatePlainSP("絵板写", 5000);
	Wait(16);
	CreateAXLWindowEX("絵窓", "Y", 1600, 96, 288, false);
	WindowAXLZoom("絵窓", "Y", 0, 0, null, true);
	CreateColorSP("絵窓/絵演色", 1510, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	Move("絵窓/絵演背景", 0, @0, @0, null, true);

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1520, center, middle, "cg/bu/buミリＰb_ショータイム_angry.png");
	Move("絵窓/絵演立絵", 0, @-100, @50, null, true);
	Delete("絵板写");


//動作
	Move("絵窓/絵演立絵", 300, @100, @0, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, false);
	WindowAXLZoom("絵窓", "Y", 200, 1000, Dxl2, true);

	CreateTextureEX("絵窓/絵演立絵2", 1520, center, middle, "cg/bu/buミリＰb_ショータイム_pinch.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030a]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/360200110mrp">
「勝利の雄叫びのように、うなり声をあげる大狸」

{
	Move("絵窓/絵演立絵2", 0, @0, @50, null, true);
	Fade("絵窓/絵演立絵*", 300, 0, Axl2, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/360200120mrp">
「風が吹き、煙の向こうから現れたのは――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 1000, 0, null);


	TextBoxDelete(150);

//収納
	WindowAXLZoom("絵窓", "Y",200, 0, Axl2, true);
	Fade("絵窓/絵演立絵*", 0, 0, null, false);


	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	DeleteAllSt(200,false);

//◆演出指示：モヤが晴れる

	OnBG(10,"bg1101500スパコン館_裏面_廃墟");
	Zoom("@OnBG*", 0, 2000, 2000, null, true);
	SetShade("@OnBG", null);
	FadeBG(0,true);

//	CreateTextureEX("衝撃", 100, Center, Middle, "cg/bg/bg1101500スパコン館_裏面_廃墟.jpg");
//	Fade("衝撃", 0, 500, null, false);
//	Shake("衝撃", 1000, 5, 2, 0, 0, 500, AxlDxl, false);


	Move("タヌ", 3000, @0, @-100, Dxl2, false);
	Fade("タヌ", 2000, 0, null, false);

	CreateSE("SEL02","se環境_風_l");
	MusicStart("SEL02",0,900,0,1000,null,true);


	FadeDelete("ムービー１", 2000, null, false);
	FadeDelete("ムービー２", 2500, null, false);
	Fade("絵色100", 5000, 0, null, false);

//	Move("@OnBG*", 2000, @0, @100, null, false);
	Zoom("@OnBG*", 4000, 1000, 1000, AxlDxl, true);

	Delete("ムービー*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("L",700, @-50,@0,"buＡＤ_通常_sad");
	Move("@StNameL/L*", 500, @50, @0, Dxl2, false);
	FadeSt("L",1000,true);}
//★ 声無し 10/11/19
//※下倉注：台詞差し替えで修正 2010/11/21
//【ＡＤ】
 <voice name="ＡＤ" class="ＡＤ" src="voice/21/200100090adi">
「ひ…………」

{	SetVolumeEX("SEL02", 5000, 0, NULL);
	DeleteAllSt(200,false);
	St("MR",700, @50,@0,"buブーa_通常_sad");
	Move("@StNameMR/MR*", 500, @-50, @0, Dxl2, false);
	FadeSt("MR",500,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/360200140buu">
「そんな……嘘だろ……」

{	DeleteAllSt(200,false);
	St("ML",700, @-50,@0,"buみそa_通常_pinch");
	Move("@StNameML/ML*", 500, @50, @0, Dxl2, false);
	FadeSt("ML",500,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/360200150mso">
「あ――姐さんっ！」

{
	ClockPass(2238);
	DeleteAllSt(200,false);
	St("C",700, @-50,@0,"buノーコa_発狂_normal");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360200160nko">
「よくも――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360200170nko">
「よくも、にとりを――」

{	St("C",700, @0,@0,"buノーコa_通常_rage");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360200180nko">
「ゆるさない！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//あきゅん「修正指示：ノーコの攻撃演出を」
//★ wam井野 追加いたしました。10/11/19

	CreateSE("SE05","se戦闘_カッター_刃出す02早いa");
	MusicStart("SE05",0,700,0,1000,null,false);
	St("C",700, @0,@0,"buノーコa_カッター_rage");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 2000, 5, 5, 0, 0, 500, null, false);

	WaitKey(1000);

	CreateSE("SE06","se動作_空飛ぶ02");
	CreateSE("SE06a","se戦闘_風切り音03");
	MusicStart("SE06",0,700,0,1000,null,false);
	MusicStart("SE06a",0,700,0,1000,null,false);
	Move("@StNameC/C*", 200, @0, @-150, Dxl2, false);
	DeleteAllSt(100,false);

	SoundPlay("@xbgm19",0,450,true);
	Move("タヌ", 0, @0, @300, null, false);
	Zoom("タヌ", 0, 1500, 1500, null, true);
	Fade("タヌ", 300, 1000, null, true);
	Shake("タヌ", 2000, 10, 0, 0, 0, 500, null, false);

	DeleteAllSt(200,false);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040a]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/360200190tsr">
「ぐおおおおおおおおお！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//★ wam井野 ノーコ攻撃追加 10/11/19
	CreateSE("SE15a","se戦闘_風切り音10");
	CreateSE("SE15b","se戦闘_風切り音05");

	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");
	CreateTextureEX("絵背景200", 1600, -824, -576, "cg/ev/l/ev0000ノーコカッターd_l.jpg");
	CreateTextureEX("絵背景300", 1600, Center, Middle, "cg/ev/ev0000ノーコカッターd.jpg");
	Zoom("絵背景300", 0, 2000, 2000, null, true);
	SetBlur("絵背景300", true, 2, 500, 50, false);
	SetBlur("絵背景200", true, 1, 500, 20, false);

	MusicStart("SE15a",0,700,0,1000,null,false);

	Fade("絵背景200", 300, 1000, null, false);
	BezierMove("絵背景200", 1500, (-824,-576){-1000,-100}{-1000,-100}(-1024,0){0,0}{0,0}(0,-288), Axl2, false);

	Wait(1300);

	MusicStart("SE15b",0,700,0,1000,null,false);

	Fade("絵背景300", 200, 1000, null, false);
	Zoom("絵背景300", 300, 1000, 1000, Dxl2, true);

	CreateSE("SE15","se戦闘_切断04");
	MusicStart("SE15",0,700,0,1000,null,false);


	Fade("絵背景100", 0, 1000, null, true);

	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景100");
	Delete("絵背景200");
	Delete("絵背景300");
	Fade("タヌ", 0, 1000, null, true);
	Shake("タヌ", 3000, 10, 0, 0, 0, 500, null, false);

	CreateSE("SE05","se環境_地鳴り03");
	MusicStart("SE05",0,700,0,1000,null,false);

	Fade("絵色100", 500, 0, null, false);

	WaitKey(1500);

	SceneOut(5000, 300, "slide_01_01_0");
	Move("タヌ", 0, @0, @200, null, false);
	Fade("タヌ", 0, 0, null, true);

	SceneIn(300, "slide_01_01_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("ML",700, @-50,@0,"bu平次_御用だ_angry");
	Move("@StNameML/ML*", 300, @50, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/360200200fjh">
「おいコラおまえら！　何やってる！」


{	St("ML",700, @0,@0,"bu平次_通常_angry");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/360200210fjh">
「大体避難は終わった！　さっさと離れろ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buみそa_通常_cry");
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/360200220mso">
「でも――でも、姐さんが！」

{	St("MR",700, @0,@0,"buブーa_通常_cry");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/360200230buu">
「瓦礫の中に、埋もれて――」

//◆音声指示：唇を噛み締める
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu平次_落ち込み_pain");
	Shake("@StNameML/ML*", 300, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/360200240fjh">
「――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,false);

/*
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/360200250tsr">
「ぐおおおおおおおおお！！」

*/
	CreateVOICE("その他男声","ba22/360200250tsr");
	MusicStart("その他男声",0,1100,0,1000,null,false);

	CreateSE("SE04","se環境_地鳴り02_l");
	MusicStart("SE04",0,500,0,1000,null,false);

	CreatePlainSP("揺用", 1500);
	Shake("揺用", 3000, 5, 8, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 500, 0, null, true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text9999]
{	Delete("揺用");
	St("C",700, @0,@0,"bu恵那_哀愁_fear");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/360200260fje">
「父さん、なんなのあいつ！？」

//★ wam井野 前シーンでフウリ狸を抱いていたのはみその気がします
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu平次_落ち込み_sad");
	FadeSt("ML",200,true);}
//【富士見平次】
//「さっき、オレが抱いてたタヌキいただろ？」
//あきゅん「修正：シナリオ整合性のため修正しましたby下倉」
<voice name="富士見平次" class="富士見平次" src="voice/ba22/360200270fjh">
「さっき、タヌキいただろ？」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/360200280fjh">
「フウリって言ってな。
　アイツも、人間に化けてたタヌキだったんだ」


{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/360200290kit">
「え？　フウリさんって、あの――！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/360200300fje">
「鈴姉のバンドの、メンバー？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu平次_落ち込み_sad");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/360200310fjh">
「ああ。あのでかいタヌキは、フウリに恋してたらしい」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/360200320fjh">
「けどフウリが死んじまって、アイツはショックで――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/360200330fje">
「それで、街を……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SceneOut(5000, 300, "slide_04_01_0");

	DeleteAllSt(0,false);

	OnBG(10,"bg2401100空_上空_通常");
	FadeBG(0,true);

	CreateTextureEX("空", 10, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");
	Fade("空", 0, 1000, null, true);

	Shake("空", 1000, 5, 8, 0, 0, 1000, Axl1, false);
	SceneIn(300, "slide_04_01_1");

	CreateSE("SE04","se環境_地鳴り02_l");
	MusicStart("SE04",0,500,0,1000,null,false);

	CreateTextureEX("絵立絵", 700, Center, Middle, "cg/bu/buノーコa_カッター_pinch.png");
	Request("絵立絵", Smoothing);
	Zoom("絵立絵", 0, 2000, 2000, null, true);
	Rotate("絵立絵", 0, @0, @0, @-45, null, true);
	Move("絵立絵", 0, @1150, @-900, Dxl2, false);
	Fade("絵立絵", 0, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/360200340tsr">
「ぐおおおおおおおおお！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//※下倉注：ここから下の注釈まで、他ファイルとの整合性を取るために、ノーコが踏みつぶされそうになる ba2236ノーコ.nss に合わせて修正よろしくお願いいたします。
//★ wam井野 修正いたしました。10/11/19

	CreateColorEXadd("絵色100", 15000, "WHITE");

	Fade("絵色100", 20, 1000, null, true);
	Fade("絵色100", 500, 0, null, false);

	CreateSE("SE16","se戦闘_カッター_刃折れる");
	MusicStart("SE16",0,700,0,1000,null,false);

	CreateSE("SE11","se戦闘_風切り音03");
	MusicStart("SE11",0,700,0,1000,null,false);

	CreateSE("SE01","se戦闘_衝撃_衝突01");
	CreateSE("SE02","se戦闘_風切り音10");
	CreateSE("SE03","se戦闘_爆発01");
	MusicStart("SE01",0,700,0,1200,null,false);
	Wait(500);
	MusicStart("SE02",0,700,0,1000,null,false);
	MusicStart("SE03",0,700,0,1000,null,false);

	Move("絵立絵", 600, @-1500, @1200, Dxl2, false);
	Fade("絵立絵", 600, 0, null, false);

	Wait(1000);

	CreateSE("SE12","se戦闘_破壊03");
	MusicStart("SE12",0,700,0,1000,null,false);

	CreateColorEXadd("赤フラ", 5000, "#FF0000");

	Fade("赤フラ", 100, 1000, null, true);
	Fade("赤フラ", 200, 0, null, true);
	Fade("赤フラ", 100, 1000, null, true);
	Fade("赤フラ", 500, 0, null, false);

	CreateSE("SE17","se戦闘_カッター_転がる");
	MusicStart("SE17",0,700,0,1000,null,false);
	CreateSE("SE13","se人体_倒れる01");
	MusicStart("SE13",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080a]
//★ 声無し 10/11/20
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360200350nko">
「きゃっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵窓/絵演立絵", 1520, center, middle, "cg/bu/buミリＰb_通常_shock.png");
	Move("絵窓/絵演立絵", 0, @-100, @50, null, true);

	Move("絵窓/絵演立絵", 200, @100, @0, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, false);
	WindowAXLZoom("絵窓", "Y", 200, 1000, Dxl2, true);

//	St("C",700, @0,@0,"buミリＰb_通常_shock");
//	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080b]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/360200360mrp">
「おおっと！　ノーコちゃんが、また捕まった！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	CreateSE("SE14","se戦闘_絞める");
//	MusicStart("SE14",0,700,0,1000,null,false);
	CreateTextureEX("絵窓/絵演立絵2", 1520, center, middle, "cg/bu/buミリＰb_ショータイム_pinch.png");
	Move("絵窓/絵演立絵2", 0, @0, @50, null, true);
	Request("絵窓/絵演立絵2", Smoothing);
	Fade("絵窓/絵演立絵*", 200, 0, null, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, true);

//	St("C",700, @0,@0,"buミリＰb_ショータイム_pinch");
//	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080c]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/360200370mrp">
「今度は――ああっ！　すごい圧力をかけて――
　大狸、潰してしまう気よ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//※下倉注：上の注釈からここまで、他ファイルとの整合性を取るために、ノーコが踏みつぶされそうになる ba2236ノーコ.nss に合わせて修正よろしくお願いいたします。


//収納
	WindowAXLZoom("絵窓", "Y",200, 0, Axl2, true);
	Delete("@絵窓*");

	TextBoxDelete(150);

	SceneOut(5000, 300, "slide_04_01_0");

	DeleteAllSt(0,false);

	OnBG(10,"bg1101500スパコン館_裏面_廃墟");
	FadeBG(0,true);

	SceneIn(300, "slide_04_01_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("C",700, @0,@0,"bu千秋_気合い_hard");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/360200380kit">
「だめだ……ノーコさん助けないと！！
　なんか弱点はないのかよ！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/360200390fje">
「弱点……？」

{	St("MR",700, @0,@0,"bu恵那_一休_think");
	FadeSt("MR",200,true);
	WaitKey(1500);
	CreateSE("SE03","se擬音_恵那閃く");
	MusicStart("SE03",0,700,0,1000,null,false);
	St("MR",700, @0,@0,"bu恵那_ハルヒ_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/360200400fje">
「そうか、弱点！　弱点よ！」

{	St("MR",700, @0,@0,"bu恵那_一休_surprise");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/360200410fje">
「さっきのゲロで、タヌキの力が緩んだでしょ！
　それで、ノーコさんが助かった！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/360200420kit">
「汚いのが苦手なのか……？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/360200430fje">
「いえ、たぶん違うわ。
　私の推理が正しければ、昔、タヌキ汁に――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
	TextBoxDelete(150);

	CreateSE("SE05","se環境_地鳴り03");
	MusicStart("SE05",0,800,0,1000,null,false);
	Move("タヌ", 0, 512, 0, Dxl2, true);

	Move("タヌ", 3000, 0, -512, Dxl2, false);
	Shake("タヌ", 3000, 10, 10, 0, 0, 500, null, false);
	Fade("タヌ", 300, 1000, null, true);
//	CreateSE("SE14","se戦闘_絞める");
//	MusicStart("SE14",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/360200440tsr">
「ぐおおおおおおおおお！！」

{	Fade("タヌ", 300, 0, null, true);

	St("C",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, null, false);
}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ba22/360200450adi">
「ああっ！　だめ！　潰されちゃう――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	Shake("@StNameMR/MR*", 500, 5, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("MR",200,true);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/360200460fje">
「ああっ！　説明してる暇ないわ！
　ほら！　ゲロ！」

{	DeleteAllSt(200,false);
	SetComic(@-240,@-200,10);
	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("ML",200,true);
	CreateSE("SE08","se擬音_ギャグ_ぴょこ");
	MusicStart("SE08",0,700,0,1000,null,false);
	FadeComic();
	}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/360200470kit">
「ゲロ？」

{	DeleteComic();
	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/360200480fje">
「アンタのゲロだけが、ノーコさんを救えるの！
　だからゲロって！　ほら！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/360200490kit">
「いやいや、ゲロれと言われてももう出ない――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

//	TextBoxDelete(150);

{
	CreateSE("SE01","se擬音_ギャグ_アフロ");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("MR",700, @50,@0,"buブーa_オラオラ_angry");
	Move("@StNameMR/MR*", 300, @-50, @0, Dxl2, false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/360200500buu">
「ゲロならオレたちに任せなッ！！」

{	DeleteAllSt(200,false);
	CreateSE("SE06","se擬音_ギャグ_リーゼント");
	MusicStart("SE06",0,700,0,1000,null,false);

	St("ML",700, @-50,@0,"buみそa_オラオラ_angry");
	Move("@StNameML/ML*", 300, @50, @0, Dxl2, false);
	FadeSt("ML",200,true);

}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/360200510mso">
「腹を殴れば一発よッ！！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_驚天_shy");
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, null, false);
	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/360200520kit">
「え？　ちょ！　ウソォ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu平次_通常_pain");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/360200530fjh">
「って、漫才やってる場合じゃ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2239);}

	SetVolumeEX("@x*", 2000, 0, NULL);

	TextBoxDelete(150);

	DeleteAllSt(200,true);


	CreateTextureEXadd("絵色100", 2000, Center, Middle, "cg/ef/ef029_物理限界速度域.jpg");
	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/ef鎖飛来a.jpg");

	CreateColorEXadd("絵色フラッシュ", 15000, "WHITE");


	CreateSE("SE14","se戦闘_金属弾く04");
	CreateSE("SE15","se戦闘_切断02");
	MusicStart("SE14",0,700,0,1000,null,false);
	MusicStart("SE15",0,700,0,1000,null,false);


	Fade("絵色フラッシュ", 100, 1000, null, true);

	Fade("絵背景100", 0, 1000, null, true);

	DeleteAllSt(0,true);
	OnBG(10,"bg2401100空_上空_通常");
	FadeBG(0,true);

	FadeDelete("絵色フラッシュ", 200, null, false);

	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景100");
	Fade("絵色100", 1000, 0, null, true);

	CreateTextureEX("空２", 1000, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");
	Fade("空２", 0, 500, null, false);
	Shake("空２", 3000, 5, 2, 0, 0, 500, AxlDxl, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/360200540tsr">
「ぐおおおおおおおおお！！」

{	MusicStart("@xbgm09",0,450,0,1000,null,true);}
　虚空の鎖が瓦礫を弾き、タヌキの皮を切り裂いた。

　夜空を浮遊するその背には、虚空を刳り抜く翼。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

/*
	CreateColorSP("黒幕１", 15000, "BLACK");
//	CreateColorEXadd("フラ白", 15000, "WHITE");

	CreateTextureEX("絵背景１", 2000, center, -570, "cg/ev/l/ev2230似鳥堕皇降臨a_l.jpg");
	CreateTextureEXadd("絵背景２", 2010, 0, 0, "cg/ev/ev2230似鳥堕皇降臨a.jpg");

	Request("絵背景１", Smoothing);
	Request("絵背景２", Smoothing);

	Fade("絵背景１", 0, 1000, null, true);
	Move("絵背景１", 2000, @0, @50, Dxl2, false);
	Fade("黒幕１", 1000, 0, null, false);

	Fade("空２", 0, 0, null, false);

*/


//◆ＥＶ："ev/ev2230似鳥堕皇降臨.txt"

//おがみ：以降の演出、ba2239似鳥_ノーコ　を調整したのであわせました

	CreateColorEX("黒幕１", 15000, "BLACK");
	CreateColorEXadd("赤フラ", 5000, "#FF0000");

	CreateTextureEX("絵背景１", 2000, center, -570, "cg/ev/l/ev2230似鳥堕皇降臨a_l.jpg");
	CreateTextureEXadd("絵背景２", 2010, 0, 0, "cg/ev/ev2230似鳥堕皇降臨a.jpg");

	Request("絵背景*", Smoothing);

	CloudZoomSmokeSubSet01EX("スモークプロセスA",2500,"cg/ef/天使の羽big.png");
	CloudZoomSmokeSubSet02EX("スモークプロセスB",2500,"cg/ef/天使の羽big.png");


	Fade("黒幕１", 200, 1000, null, true);

	CloudZoomSmokeSubStart01EX(3800,1000,500,1000,2500,900,-300,576,-100,-100,Dxl1);
	CloudZoomSmokeSubStart02EX(3500,1000,500,1000,2500,900,1044,576,824,-100,Dxl1);

	Wait(16);

	Fade("絵背景１", 200, 1000, null, true);
	Move("絵背景１", 2000, @0, @50, Dxl2, false);
	Fade("黒幕１", 1000, 0, null, false);

	Fade("空２", 0, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130a]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/360200550nki">
「ずっと、ずっと、恥ずかしくて逃げてた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


/*
	Fade("黒幕１", 0, 1000, null, true);
	Zoom("絵背景１", 0, 2000, 2000, null, true);
	Move("絵背景１", 0, 110, -180, Dxl2, true);
	Move("絵背景１", 2000, 110, -150, Dxl2, false);
	Fade("黒幕１", 1000, 0, null, false);
*/
	Fade("黒幕１", 200, 1000, null, true);
	Zoom("絵背景１", 0, 2000, 2000, null, true);
	Move("絵背景１", 0, 110, -180, Dxl2, true);
	Move("絵背景１", 2000, 110, -150, Dxl2, false);
	Fade("黒幕１", 1000, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130b]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/360200560nki">
「忘れたことにしようとしてた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


/*
	Fade("黒幕１", 0, 1000, null, true);
	Move("絵背景１", 0, -800, -280, Dxl2, true);
	Move("絵背景１", 2000, @0, @50, Dxl2, false);
	Fade("黒幕１", 1000, 0, null, false);

*/
	Fade("黒幕１", 200, 1000, null, true);
	Move("絵背景１", 0, -800, -280, Dxl2, true);
	Move("絵背景１", 2000, @0, @50, Dxl2, false);
	Fade("黒幕１", 1000, 0, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130c]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/360200570nki">
「けど、あの時確かに彼女はノーコだった。
　忘れちゃいけないことだったんだ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//あきゅん「修正指示：ジャギが激しいので似鳥の顔アップの際にはfu素材をお使いください」
//★ wam井野 了解いたしました。ba2240千秋_恵那.nss ba2239似鳥_ノーコ.nss ba2240似鳥_ノーコ.nssも同様にいたしました。 10/11/19

/*

	Fade("黒幕１", 0, 1000, null, true);
	Fade("絵背景１", 0, 0, null, true);

	St("C",700, @0,@160,"fu似鳥堕皇_通常_angry");
	Zoom("@StNameC/C*", 0, 800, 800, null, true);
	Request("@StNameC/C*", Smoothing);

	Move("@StNameC/C*", 2000, @0, @-100, Dxl2, false);
	FadeSt("C",200,false);

//	Zoom("絵背景１", 0, 3000, 3000, null, true);
//	Move("絵背景１", 0, -512, 256, Dxl2, false);
//	Move("絵背景１", 2000, @0, @50, Dxl2, false);
	Fade("黒幕１", 1000, 0, null, false);
*/

	Fade("黒幕１", 200, 1000, null, true);
	Fade("絵背景１", 0, 0, null, true);


	CreateTextureEX("絵背景追加", 2000, center, -570, "cg/st/l/st似鳥戴斗_堕皇_pride_ex01ogm.png");
	Fade("絵背景追加", 0, 1000, null, true);
	Move("絵背景追加", 2000, @0, @150, Dxl2, false);

	Fade("黒幕１", 1000, 0, null, false);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130d]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/360200580nki">
「だから今、オレはここに宣言するッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

/*
	CreateSE("SE10","se擬音_堕皇変身");
	MusicStart("SE10",0,700,0,1000,null,false);

	Fade("黒幕１", 0, 1000, null, true);

	St("C",700, @0,@0,"fu似鳥堕皇_通常_rage");
	Zoom("@StNameC/C*", 0, 900, 900, null, true);
	FadeSt("C",0,true);
	Request("@StNameC/C*", Smoothing);

	Zoom("@StNameC/C*", 10000, 1000, 1000, Dxl2, false);

//	Zoom("絵背景１", 0, 1000, 1000, null, true);
//	Move("絵背景１", 0, -482, 356, Dxl2, false);
//	Zoom("絵背景１", 3000, 500, 500, Dxl2, false);

//	Wait(1000);

//	Fade("フラ赤", 20, 1000, null, false);

	Fade("黒幕１", 1000, 0, null, false);
//	Wait(200);
//	Fade("フラ赤", 600, 0, null, false);
//	Wait(3000);
//	Fade("絵背景２", 20, 1000, null, true);
//	Move("絵背景２", 1000, @0, @-70, Dxl2, false);
//	Zoom("絵背景２", 1000, 1500, 1500, Dxl2, false);
//	Fade("絵背景２", 1000, 0, null, false);

//	Fade("フラ白", 20, 1000, null, true);
//	Fade("フラ白", 700, 0, null, false);
*/


	CreateSE("SE10","se擬音_堕皇変身");
	MusicStart("SE10",0,700,0,1000,null,false);

	Fade("黒幕１", 200, 1000, null, true);
	Delete("絵背景追加");

	St("C",700, @0,@0,"fu似鳥堕皇_通常_rage");
	Zoom("@StNameC/C*", 0, 900, 900, null, true);
	FadeSt("C",0,true);
	Request("@StNameC/C*", Smoothing);

	Zoom("@StNameC/C*", 10000, 1000, 1000, Dxl2, false);


	Fade("黒幕１", 1000, 0, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130e]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/360200590nki">
「黒炎纏いて黒翼広げ、大地を統べたかつての<RUBY text="カイザー・オブ・ダークネス">堕皇</RUBY>ルシフェル――その転生体が、オレだッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE11","se擬音_百野殺駆登場");
	MusicStart("SE11",0,700,0,1400,null,false);

	CreatePlainSP("絵板写", 2000);

	CloudZoomSmokeSubDelete01EX(300);
	CloudZoomSmokeSubDelete02EX(300);

	Request("絵板写", AddRender);
	Zoom("絵板写", 3000, 1200, 1200, Dxl2, false);
	Shake("絵板写", 3000, 5, 15, 0, 0, 500, null, false);
	FadeDelete("絵板写", 300, null, true);

	Wait(2000);

	SetVolumeEX("SE*", 1000, 0, null);

	SceneOut(5000, 300, "turn_01_00_0");

	DeleteAllSt(0,false);

	FadeDelete("絵背景１", 0, null, false);
	FadeDelete("絵背景２", 0, null, false);

	SetVolumeEX("@x*", 10, 0, NULL);

	OnBG(10,"bg1101500スパコン館_裏面_廃墟");
	FadeBG(0,true);

	SceneIn(300, "turn_01_00_1");

/*
//-- ここからカットino


	CreatePlainSP("絵板写", 5000);
	Wait(16);
	St("L",720, @-30,@0,"buみそa_通常_fear");
	St("ML",700, @20,@0,"buブーa_通常_sad");
	St("MR",730, @0,@0,"bu平次_落ち込み_shock");
	St("R",740, @120,@0,"buＡＤ_通常_shock");
	FadeSt("L",0,false);
	FadeSt("ML",0,false);
	FadeSt("MR",0,false);
	FadeSt("R",0,true);
	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/360200600mso">
「え…………？」
//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/360200610buu">
「え…………？」

//◆音声指示：同時
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/360200620fjh">
「え…………？」
//◆音声指示：同時
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ba22/360200630adi">
「え…………？」

{
	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu千秋_朗らか_shock");
	St("C",720, @0,@0,"bu恵那_哀愁_worry");
	St("R",710, @0,@0,"buミリＰb_通常_shock");
	FadeSt("L",200,false);
	FadeSt("C",200,false);
	FadeSt("R",200,true);
}

//▼べー：似鳥→千秋へ修正。
//◆音声指示：同時
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/360200640kit">
「え…………？」

//◆音声指示：同時
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/360200650fje">
「え…………？」

//◆音声指示：同時
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/360200660mrp">
「え…………？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//-- ここまで

*/

//あきゅん「演出：同時音声用の特別組み合わせです」

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

	FadeDelete("絵板写", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/360200600">
「「「「「「「え…………？」」」」」」」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	SceneOut(5000, 300, "turn_01_00_0");

	EndScene();
}
