
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene y1750ノーコ.nss_MAIN
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
	$GameName = "1800ノーコ.nss";

	#START_FLAG=true;
	$SYSTEM_backselect_lock=false;
}

scene y1750ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="640">
////////////header////////////
//file name "y1750ノーコ.nss"
//title "ＮＯ　ＣＯＮＴＲＯＬ　０１"

////////////footer////////////
//next "ノーコ" "1800ノーコ.nss"

////////////body////////////

//あきゅん「演出：暗転開始スクリプト」

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1740);}


//◆場所：似鳥マンション_リビング
	OnBG(10,"bg1304100似鳥マンション_リビング_通常");
	FadeBG(0,true);

	CreateColorSP("絵色黒", 3000, "#000000");

	FadeDelete("上背景", 0, null, true);

//◆ＳＥ：キリキリ
	CreateSE("SE01","se戦闘_カッター_刃出す03遅いb");
	MusicStart("SE01",0,700,0,1000,null,false);

//【ノーコ】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100010nko">
「こない」

{	CreateSE("SE01","se戦闘_カッター_刃出す03遅いa");
	MusicStart("SE01",0,700,0,1000,null,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100020nko">
「にとりが」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100030nko">
「かえって」

{	CreateSE("SE01","se戦闘_カッター_刃出す03遅いb");
	MusicStart("SE01",0,700,0,1000,null,false);}

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100040nko">
「こない」

{	CreateSE("SE01","se戦闘_カッター_刃出す01普通a");
	MusicStart("SE01",0,700,0,1000,null,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100050nko">
「ごじに」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

//【ノーコ】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100060nko">
「かえるって」

{	CreateSE("SE01","se戦闘_カッター_刃出す01普通b");
	MusicStart("SE01",0,700,0,1000,null,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100070nko">
「やくそく」

{	CreateSE("SE01","se戦闘_カッター_刃出す02早いa");
	MusicStart("SE01",0,700,0,1000,null,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100080nko">
「ほんはすぐうりきれて」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100090nko">
「へいかいをまたずにかえる」

{	CreateSE("SE01","se戦闘_カッター_刃出す02早いb");
	MusicStart("SE01",0,700,0,1000,null,false);}

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100100nko">
「そういった。なのに……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

	CreateSE("SE01","se戦闘_カッター_刃出す02早いa");
	MusicStart("SE01",0,700,0,1000,null,false);

	WaitKey(2000);

//◆ＳＥ：ぴちゃ……ぴちゃ……リストカット
//あきゅん「素材：imgノーコリスカイメージa」
	CreateTextureSP("絵演", 2010, Center, Middle, "cg/img/imgノーコリスカイメージa.jpg");
	DrawDelete("絵色黒", 4000, 100, null, "slide_02_00_1", true);

//【ノーコ】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100110nko">
「こない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100120nko">
「にとりは」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100130nko">
「わたしがきらい？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100140nko">
「いらない？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100150nko">
「しんだほうがいい？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

	CreatePlainSP("絵板写", 2019);

//あきゅん「素材：imgノーコリスカイメージb」
	CreateTextureSP("絵演", 2020, Center, Middle, "cg/img/imgノーコリスカイメージb.jpg");
	DrawTransition("絵演", 20000, 0, 1000, 50, null, "cg/data/slide_02_00_0.png", false);

	WaitKey(2000);

	CreateSE("SE01","se環境_水滴02");
	MusicStart("SE01",0,700,0,1000,null,false);

//【ノーコ】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100160nko">
「ち」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100170nko">
「ちが、でる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100180nko">
「ふふ……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100190nko">
「このまま、ちが、ながれて……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100200nko">
「しんでしまう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1741);}


	//TextBoxDelete(150);

//【ノーコ】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100210nko">
「わたしなんて」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100220nko">
「いないほうが」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100230nko">
「いい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100240nko">
「そうなの？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100250nko">
「にとり……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

//【ノーコ】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100260nko">
「わたし……しんで……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100270nko">
「きえたほうがいいの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//◆演出指示：同人誌を切りまくる・で、ビリビリ同人誌が切り刻まれる
	CreateSE("SE01","se動作_同人探す_l");
	MusicStart("SE01",0,1400,0,1000,null,false);

	CreateColorSP("絵色白", 5000, "#FFFFFF");
	Delete("絵演");
	Delete("絵板写");

	WaitKey(500);

	SetVolumeEX("SE*", 100, 0, null);
	FadeDelete("絵色白", 300, null, true);

	CreateSE("SE11","se戦闘_刃物01");
	MusicStart("SE11",0,700,0,1000,null,false);
	CreateTextureSPover("絵演剣閃", 2000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");
	FadeDelete("絵演剣閃", 200, null, false);

	CreateSE("SE02","se日常_冊子崩れる");
	MusicStart("SE02",0,700,0,1000,null,false);
	FadeFFR4("@OnBG*",0,1000,200,@0,@0,20,Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100280nko">
「うそっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE12","se戦闘_刃物02");
	MusicStart("SE12",0,700,0,1000,null,false);
	CreateTextureSPover("絵演剣閃", 2000, Center, Middle, "cg/ef/efカッター剣閃b.jpg");
	FadeDelete("絵演剣閃", 200, null, false);

	CreateSE("SE03","se日常_冊子崩れる");
	MusicStart("SE03",0,700,0,1000,null,false);
	FadeFFR4("@OnBG*",0,1000,200,@0,@0,30,Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0066]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100290nko">
「うそっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE11a","se戦闘_刃物02");
	MusicStart("SE11a",0,700,0,1000,null,false);
	CreateTextureSPover("絵演剣閃", 2000, Center, Middle, "cg/ef/efカッター剣閃b.jpg");
	FadeDelete("絵演剣閃", 200, null, false);

	CreateSE("SE02a","se日常_冊子崩れる");
	MusicStart("SE02b",0,700,0,1000,null,false);
	FadeFFR4("@OnBG*",0,1000,200,@0,@0,40,Dxl2, true);

	CreateSE("SE11b","se戦闘_刃物01");
	MusicStart("SE11b",0,700,0,1000,null,false);
	CreateTextureSPover("絵演剣閃", 2000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");
	FadeDelete("絵演剣閃", 200, null, false);

	CreateSE("SE02b","se日常_冊子崩れる");
	MusicStart("SE02b",0,700,0,1000,null,false);
	FadeFFR4("@OnBG*",0,1000,200,@0,@0,40,Dxl2, true);

{	St("C",700, @0,@0,"buノーコa_カッター_pinch");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100300nko">
「うそっ！　うそっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("C",700, @0,@0,"buノーコa_発狂_normal");
	FadeSt("C",200,false);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100310nko">
「にとりは……ずっと、そばにいる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100320nko">
「わたしを、はなしたりしない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100330nko">
「そう、だよね……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100340nko">
「そう……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

	DeleteAllSt(200,true);


{	ClockPass(1742);}





//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080a]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100350nko">
「あ……」
</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1743);}

//◆演出指示：ノーコントロールの一巻
//あきゅん「素材：imgノーコントロール01」
	CreateTextureEX("絵背景", 2010, Center, Middle, "cg/img/imgノーコントロール01.jpg");
	Fade("絵背景", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080b]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100360nko">
「このほん……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100370nko">
「にとりの、どうじんし」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100380nko">
「わたしの、どうじんし」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	FadeDelete("絵背景", 1000, null, true);

	//TextBoxDelete(150);

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100390nko">
「ふたりの、いちばんたいせつなほん」

{	St("C",700, @0,@0,"buノーコa_通常_smile");
	FadeSt("C",200,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100400nko">
「わたしたちの、はじまりのひ」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1744);}

	SetVolumeEX("SE*", 0, 0, null);
	CreateSE("SE01","se動作_紙めくる");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEX("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 3000, 0, 1000, 10, null, "cg/data/slide_01_00_0.png", false);
	Fade("絵色黒", 3000, 1000, null, true);

	ClockDelete(0,true);

//あきゅん「演出：重いのでここでまとめ定義」
	CreateTextureEX("絵闇士壱", 1100, 0, 220, "cg/ef/efst闇士01.png");
	CreateTextureEX("絵闇士弐", 1100, 120, 70, "cg/ef/efst闇士02.png");
	CreateTextureEX("絵闇士参", 1100, 130, 270, "cg/ef/efst闇士03.png");
	CreateTextureEX("絵闇士四", 1100, 300, 110, "cg/ef/efst闇士04.png");
	CreateTextureEX("絵闇士五", 1100, 390, 210, "cg/ef/efst闇士05.png");
	CreateTextureEX("絵闇士六", 1100, 470, 90, "cg/ef/efst闇士06.png");
	CreateTextureEX("絵闇士七", 1100, 580, 200, "cg/ef/efst闇士07.png");
	CreateTextureEX("絵闇士八", 1100, 650, 145, "cg/ef/efst闇士08.png");
	CreateTextureEX("絵闇士九", 1100, 740, 210, "cg/ef/efst闇士09.png");
	CreateTextureEX("絵闇士十", 1100, 760, 90, "cg/ef/efst闇士10.png");
	CreateTextureEX("絵闇士十一", 1100, 840, 210, "cg/ef/efst闇士11.png");
	CreateTextureEX("絵闇士十二", 1100, Center, 240, "cg/ef/efst闇士12.png");

	WaitKey(2000);
	DeleteAllSt(0,true);

	SoundPlay("@xbgm26",0,450,true);

//◆演出指示：ノーコントロール、マンガ内

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092a]
　今から２万年前。

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

	CreateTextureSP("絵演", 900, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星c.jpg");
	SetTone("絵演", Monochrome);

	FadeDelete("絵色黒", 1500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092ba]
　原始の世界――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092bb]
　<RUBY text="ケイオス">混沌</RUBY>の中から生まれた原罪という名の泡――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092bc]
　<RUBY text="ウロボロス">冥界</RUBY>。

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);

	CreateStencil("マスク",0,center,Middle,128,"cg/st/l/st似鳥堕皇_通常_normal_s全身.png",false);
	Zoom("マスク", 0, 750, 750, null, true);
	CreateColorSP("マスク/色黒", 910, "#000000");
	Fade("マスク/色黒", 0, 600, null, true);

	FadeDelete("絵板写", 1500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092ca]
　そして、その盟主たる<RUBY text="カイザー・オブ・ダークネス">堕皇</RUBY>――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092cb]
　ルシフェル。

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

	CreateTextureSP("絵演下", 899, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星d.jpg");
	SetTone("絵演下", Monochrome);
	FadeDelete("絵演", 1000, null, false);

	Move("マスク", 1000, @0, @-120, DxlAuto, false);
	Zoom("マスク", 1000, 350, 350, DxlAuto, true);

	Fade("絵闇士壱", 500, 600, null, true);
	Fade("絵闇士弐", 500, 600, null, true);
	Fade("絵闇士参", 500, 600, null, true);
	Fade("絵闇士四", 500, 600, null, true);
	Fade("絵闇士五", 500, 600, null, true);
	Fade("絵闇士六", 500, 600, null, true);
	Fade("絵闇士七", 500, 600, null, true);
	Fade("絵闇士八", 500, 600, null, true);
	Fade("絵闇士九", 500, 600, null, true);
	Fade("絵闇士十", 500, 600, null, true);
	Fade("絵闇士十一", 500, 600, null, true);
	Fade("絵闇士十二", 500, 600, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092da]
　世界を手中に収めるため<RUBY text="フォールン・トゥエルブ">１２闇使</RUBY>を率い――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092db]
　正皇と永きに渡り<RUBY text="ジ・ハード">聖冥戦</RUBY>を繰り広げた。

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

	FadeDelete("マスク/色黒", 1000, null, true);
	Delete("マスク");

	WaitKey(500);

	FadeDelete("絵闇士五", 600, null, false);
	Wait(300);
	FadeDelete("絵闇士九", 600, null, false);
	Wait(300);
	FadeDelete("絵闇士六", 600, null, false);
	Wait(300);
	FadeDelete("絵闇士十", 600, null, false);
	Wait(300);
	FadeDelete("絵闇士弐", 600, null, false);
	Wait(300);
	FadeDelete("絵闇士四", 600, null, false);
	Wait(300);
	FadeDelete("絵闇士八", 600, null, false);
	Wait(300);
	FadeDelete("絵闇士七", 600, null, false);
	Wait(300);
	FadeDelete("絵闇士十二", 600, null, false);
	Wait(300);
	FadeDelete("絵闇士壱", 600, null, false);
	Wait(300);
	FadeDelete("絵闇士十一", 600, null, false);
	Wait(300);
	FadeDelete("絵闇士参", 600, null, true);

	CreateTextureEX("絵演", 900, Center, Middle, "cg/ef/ef039_時間移動.jpg");
	SetTone("絵演", Monochrome);
	Fade("絵演", 1000, 1000, null, true);
	Delete("絵演下");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092ea]
　だがついに<RUBY text="カイザー・オブ・ダークネス">堕皇</RUBY>は戦いに敗れる。

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092eb]
　１２闇使も、身体に聖痕を刻まれ、封印されたのだ――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

	PrintGO("上背景", 5000);
	CreateColorSP("絵色黒", 2000, "#000000");
	FadeDelete("上背景", 2000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092f]
　時は流れ、２１世紀の日本。

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

	CreateTextureSP("絵演", 900, Center, Middle, "cg/bg/bg0201112秋葉原駅_正面_通常.jpg");
	SetTone("絵演", Monochrome);
	FadeDelete("絵色黒", 1000, null, true);

	CreateTextureEX("絵演立絵", 1010, Center, InBottom, "cg/bu/buノーコa_通常_normal.png");
	Move("絵演立絵", 0, @0, @100, null, true);
	Fade("絵演立絵", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100aa]
　１２闇使のうちのひとり、<RUBY text="スラッシャー・ワン">切裂闇使</RUBY>の転生体――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100ab]
　ノーコは幼い頃から、悪夢に悩まされていた。

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100ac]
　それは、前世の記憶の残り香――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);

	CreateStencil("マスク",0,center,InBottom,128,"cg/bu/buノーコa_通常_normal.png",false);
	Move("マスク", 0, @0, @100, null, true);

	CreateStencil("マスク/絵他人格",0,center,InBottom,128,"cg/ef/efst切裂闇使a.png",false);
	CreateColorSPmul("マスク/絵他人格/絵色赤", 1200, "#CC0000");
	Move("マスク/絵他人格", 0, @0, @200, null, true);

	FadeDelete("絵板写", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100ba]
　彼女は二重人格であり、しばしば無意識のうちに――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100bb]
　近所の動物を虐待していた。

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);

	CreateColorSP("マスク/絵色白", 1300, "#FFFFFF");
	Move("マスク/絵色白", 0, @512, @0, null, true);

	FadeDelete("絵板写", 1000, null, true);

	CreateColorEX("マスク/絵色黒", 1100, "#000000");
	Move("マスク/絵色黒", 0, @-512, @0, null, true);
	Fade("マスク/絵色黒", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100ca]
（二重人格は光と闇に別れる前の混沌の象徴）

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100cb]
（そのため片目が闇に浸食され、真っ黒だった）

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);
	Wait(32);
	CreateTextureEX("絵演上立絵", 2000, Center, Middle, "cg/fu/fuノーコa_銃構え_normal.png");
	SetVertex("絵演上立絵", 920, 646);
	Move("絵演上立絵", 0, -415, -400, null, true);
	Request("絵演上立絵", Smoothing);
	Zoom("絵演上立絵", 0, 10000, 10000, null, true);
	Fade("絵演上立絵", 0, 1000, null, true);
	FadeDelete("絵板写", 1000, null, true);

	Zoom("絵演上立絵", 10000, 2000, 2000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100d]
（生まれたときから眼帯でそれを隠している）

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

	CreatePlainSP("絵板写", 5000);
	Delete("絵演*");
	Delete("絵色黒");
	Delete("マスク");

	CreateTextureSP("絵演", 1010, Center, Middle, "cg/ef/ef041_青い波動b.jpg");
	SetTone("絵演", Monochrome);
	CreateColorSPover("絵色赤", 1100, "#CC0000");

	FadeDelete("絵板写", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100ea]
　だが１２の夏の夜、彼女は初潮を迎え闇の力が目覚める。

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100eb]
（眼帯に隠されていた瞳に血の梵字が浮き上がる）

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

	CreateStencil("マスク",0,center,Middle,128,"cg/ef/efst切裂闇使a.png",false);
	Zoom("マスク", 0, 10000, 10000, null, true);

	CreateTextureSP("マスク/絵演", 1100, Center, Middle, "cg/ef/ef029_物理限界速度域.jpg");
	DrawTransition("マスク/絵演", 1000, 0, 1000, 100, Dxl1, "cg/data/circle_01_00_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100f]
　力を抑えようと光り出す、前世で刻まれた聖痕。

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100g]
　だがノーコは、それが覚醒を妨げるものであると理解。

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

	Zoom("マスク", 3000, 500, 500, DxlAuto, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100ha]
　聖痕を自らカッターナイフでえぐり取り――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100hb]
　腕に包帯を巻き付ける。

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

	CreateColorSP("マスク/絵色黒", 1090, "#000000");
	FadeDelete("マスク/絵演", 1000, null, true);


	CreateColorEX("絵色血面", 1080, "#CC0000");
	Fade("絵色血面", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100i]
　その日以来、切裂闇使であることに気付いたノーコ。

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);
	Delete("マスク");
	Delete("絵演*");

	CreateColorSP("絵色黒", 2000, "#000000");
	Delete("絵板写");
	SetVolumeEX("@xbgm*", 100, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100j]
　だが――そんな彼女の言葉を信じる者は、誰もいない。

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100k]
　誰も、彼女の相手をしようとはしない。

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100l]
　彼女が語る真実を、頭のおかしな少女の戯言と断じ――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100m]
　やがてそれは、彼女への排斥へ――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100n]
　戦いで負けるのならば、良かったのだ。

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100o]
　身を切り裂くような痛みでも、折れぬ心は持っていた。

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100pa]
　だが現代に、彼女の心を支える戦いはない。

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100pb]
　敵はいない。

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100q]
　あるのはただ、静かな排斥。村八分。

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100ra]
　平和で安穏な現代社会の中――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100rb]
　彼女は過去の幻影を見続けたまま、やがて――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100s]
　　<RUBY text="いま">日常生活</RUBY>に、耐えられなくなる。

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

//◆演出指示：ev1800ノーコ雨風に濡れる.txtのラフ的な絵
	CreateSE("SE01","se環境_雷01");

	CreateTextureSP("絵演", 1990, 440, 300, "cg/ev/l/ev1800ノーコ雨風に濡れる_l.jpg");
	Zoom("絵演", 0, 2000, 2000, null, true);
	SetTone("絵演", NegaPosi);

	MusicStart("SE01",0,800,0,1000,null,false);
	Wait(16);
	Fade("絵色黒", 0, 0, null, true);
	Wait(32);
	Fade("絵色黒", 0, 1000, null, true);

	Wait(32);

	Delete("絵演");
	Delete("絵色赤");
	Delete("絵色血面");

	CreateCamera("Ｃ", 0, 0, 1000);
	SetAlias("Ｃ","Ｃ");

	CreateTextureSP("Ｃ/絵演", 10, -170, -490, "cg/ev/l/ev1800ノーコ雨風に濡れる_l.jpg");
	SetTone("Ｃ/絵演", Monochrome);
	MoveFFP1("@Ｃ/絵演",100000);

	CreateSE("SEL01","se環境_雨_l");
	MusicStart("SEL01",4000,700,0,1000,null,true);

	FadeDelete("絵色黒", 2000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100410nko">
「せかいは、わたしをきらっていた」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100420nko">
「だから、わたしはせかいをきらいになった」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100430nko">
「みんなが、わたしにしねといった」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100440nko">
「だから、わたしがみんなをころすことにした」


{	MusicStart("SEL01",4000,1200,0,1000,null,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100450nko">
「そうだ。おわりだ。すべてのおわりだ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100460nko">
「わたしがおわれば、せかいがおわる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100470nko">
「わたしがしねば、みんなしぬ」

{	MusicStart("SEL01",4000,2000,0,1000,null,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100480nko">
「これは、わたしのふくしゅう――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100490nko">
「さようなら――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指示：飛び降りる
	SetVolumeEX("SE*", 300, 0, null);

	CreateColorSP("絵色黒", 5000, "#000000");
	Delete("絵演*");
	Delete("Ｃ");
	MoveFFP1stop();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/500100500nki">
「待てッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1745);}

	//TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100510nko">
「え……？」


　大地に追突する直前――ノーコの身体はふわりと浮いた。


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100520nko">
「まさか……その、こえは……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/500100530nki">
「おまえの終わりが世界の終わりなら――」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/500100540nki">
「オレが、おまえの終わりを始まりにしてやろう。
　今日のこの日を、世界の始まりにしてやろう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100550nko">
「その、こえは……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

	CreateTextureSP("絵演背景", 100, Center, InBottom, "cg/bg/bg2401100空_上空_通常.jpg");

	CreateStencil("マスク",0,center,Middle,128,"cg/st/l/st似鳥堕皇_通常_normal_s全身.png",false);
	Zoom("マスク", 0, 400, 400, null, true);
	Move("マスク", 0, @0, @-576, null, true);
	CreateColorSP("マスク/絵色黒", 700, "#000000");

	Wait(32);

	Move("マスク", 300, @0, @496, Dxl1, false);
	Move("絵演背景", 300, @0, 0, Dxl1, false);
	FadeDelete("絵色黒", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150a]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/500100560nki">
「待たせたな！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1746);}

	CreateSE("SE01","se環境_雷01");
	MusicStart("SE01",0,800,0,1000,null,false);
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	Delete("マスク");

	CreateTextureSP("絵演立絵", 700, Center, InBottom, "cg/fu/fu似鳥_背張る_shout.png");
	Move("絵演立絵", 0, @0, @100, null, true);

	FadeDelete("絵色白", 2000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150b]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/500100570nki">
「黒炎纏いて黒翼広げ、大地を統べたかつての<RUBY text="カイザー・オブ・ダークネス">堕皇</RUBY>ルシフェル――その転生体が、オレだ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	CreatePlainSP("絵場面転換", 5000);
	CreatePlainSP("絵板写", 3000);
	SetTone("絵板写", Monochrome);

	CreateTextureSP("絵演文字", 3010, 1024, 0, "cg/ef/ef吹き出し.png");
	$XWideSet = 1024 - ImageHorizon("絵演文字");
	Move("絵演文字", 0, $XWideSet, @0, null, true);

	FadeDelete("絵場面転換", 2000, null, true);

	WaitKey(1000);

	SetVolumeEX("SE*", 0, 0, null);
	CreateSE("SE01","se動作_紙めくる");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色黒", 5000, "#000000");
	DrawTransition("絵色黒", 1000, 0, 1000, 10, null, "cg/data/slide_01_00_0.png", true);


	PrintGO("上背景", 20000);


//◆時間：ジャンプ
{	ClockPass(1747);}


//◆場所：似鳥マンション_リビング
	OnBG(10,"bg1304100似鳥マンション_リビング_通常");
	FadeBG(0,true);

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 2000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150c]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100580nko">
「にとりは、わたしを、みすてたりしない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

{	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100590nko">
「さがしにいこう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100600nko">
「むかえにいこう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100610nko">
「いなかったら……」

{	St("C",700, @0,@0,"buノーコa_幽霊_think");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100620nko">
「にげられたら……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100630nko">
「………………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

{	St("C",700, @0,@0,"buノーコa_通常_smile");
	FadeSt("C",200,true);}
//【ノーコ】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
<voice name="ノーコ" class="ノーコ" src="voice/y17/500100640nko">
「しのう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);


	EndFileBlackOut(20010, 3000);
	EndScene();
}
