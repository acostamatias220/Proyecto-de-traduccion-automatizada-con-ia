
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ba2220沙紅羅_似鳥_ノーコ.nss_MAIN
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

	if($CharaName=="沙紅羅"){
		$GameName = "ba2230沙紅羅_似鳥.nss";
	}else if($CharaName=="似鳥"){
		$GameName = "ba2230沙紅羅_似鳥.nss";
	}else if($CharaName=="ノーコ"){
		$GameName = "ba2230ノーコ.nss";
	}else{
		$GameName = "ba2230沙紅羅_似鳥.nss";
	}

}

scene ba2220沙紅羅_似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="720">
////////////header////////////
//file name "ba2220沙紅羅_似鳥_ノーコ.nss"
//title "でけえ"
//previous "b2213沙紅羅.nss"
//previous "b2220カゴメアソビ.nss"

////////////footer////////////
//next "沙紅羅" "ba2230沙紅羅_似鳥.nss"
//next "似鳥" "ba2230似鳥_似鳥.nss"
//next "ノーコ" "ba2230ノーコ.nss"

////////////body////////////



//■再定義定型文
	PrintBG("上背景", 30000);
//	FadeDelete("上背景", 0, null, true);

{	ClockPass(2220);}

	Kagome_AllEffect_Set(3000);

	OnBG(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);



//使用箇所001：先んじて定義================================

//マスク準備
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureEX("スラッシュ", 1620, 600, Middle, "cg/mask/ciスラッシュ_05_01z.png");
	CreateTextureEX("絵マスク/絵演背景", 1520, 300, Middle, "cg/bg/m/bg0303100あにのあな_屋上_通常_m.jpg");
	SetShade("絵マスク/絵演背景", MIDEUM);


//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵1", 1530, 450, middle, "cg/bu/buノーコa_通常_shock.png");
	CreateTextureEX("絵マスク/絵演立絵2", 1530, 450, middle, "cg/bu/buノーコa_通常_pain.png");
	CreateTextureEX("絵マスク/絵演立絵3", 1530, 450, middle, "cg/bu/buノーコa_通常_sad.png");
	CreateTextureEX("絵マスク/絵演立絵4", 1530, 450, middle, "cg/bu/buノーコa_通常_fear.png");

//==========================================================

	CreateMovieEX("ムービー１", 5000, Center, Middle, true, true, "dx/mvk100.ngs");
	Request("ムービー１", AddRender);
	Zoom("ムービー１", 0, 3000, 3000, null, true);
	Fade("ムービー１", 0, 1000, null, true);

	DrawDelete("上背景", 300, 5, null, "slide_01_01_1", true);

	CreateWindow("絵窓", 1500, 0, 0, 1024, 576, false);

//◆ＳＥ：屋上の扉を開ける

	CreateSE("SE01","se動作_屋上ドア開ける");
	MusicStart("SE01",0,700,0,1000,null,false);

//	CreateSE("SEL01","se環境_風_l");
//	MusicStart("SEL01",6000,500,0,1000,null,true);


	St("R",700, @50,@0,"bu沙紅羅_通常_rage");
	Move("@StNameR/R*", 300, @-50, @0, Dxl2, false);
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/200100010skr">
「ノーコッ！！　似鳥ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：カゴメアソビ成功

	DeleteAllSt(200,true);

	Kagome_AllEffect_Set(3000);

	Kagome_AllEffect_Start();

	SetVolume("@xbgm*", 1500, 0, null);

	Wait(2500);

	Kagome_AllEffect_Delete(2000);

	Wait(3000);


//あきゅん「修正指示：メインルートの成功演出を真似るような感じでお願いします」
//メインルートとは 2230沙紅羅_似鳥_ノーコ.nss のことでしょうか？
//あきゅん「演出：成功演出組込みました」



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010c]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/200100020nko">
「…………」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/200100030nki">
「…………」

{	ClockPass(2221);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/200100040nko">
「あは……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/200100050nko">
「あは、あははは……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

	CreateTextureEX("絵背景", 13, Center, Middle, "cg/bg/m/bg0303100あにのあな_屋上_通常_m.jpg");
	SetShade("絵背景", MIDEUM);
	Fade("絵背景", 500, 1000, null, false);


	St("C",700, @0,@50,"buノーコa_幽霊_smile");
	Move("@StNameC/C*", 600, @0, @-50, Dxl2, false);
	FadeSt("C",600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/200100060nko">
「せいこう……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/200100070nko">
「せいこうした……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/200100080nko">
「カゴメアソビが……せいこう」

{	St("C",700, @0,@0,"buノーコa_通常_smile");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/200100090nko">
「これでにとりは、わたしをすきに……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	CreateAXLWindowEX("絵窓", "Y", 1600, 160, 256, false);
	SetAlias("絵窓","絵窓");
	WindowAXLZoom("絵窓", "Y", 0, 0, null, true);
	CreateColorSP("絵窓/絵演色", 1510, "#990000");
	CreateTextureSP("絵窓/絵演背景", 1520, Center, Middle, "cg/bg/bg0303100あにのあな_屋上_通常.jpg");

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1530, center, middle, "cg/bu/bu似鳥_通常_rage.png");
	Move("絵窓/絵演立絵*", 0, @0, @100, Dxl2, false);

//動作
	Shake("@絵窓/絵演立絵*", 300, 10, 0, 0, 0, 500, null, false);
	Fade("絵窓/絵演立絵", 0, 1000, null, true);
	WindowAXLZoom("絵窓", "Y", 300, 1000, Dxl2, true);


	MusicStart("@xbgm24",1000,300,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/200100100nki">
「バカ野郎ッ！！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/200100110nki">
「なんで、こんなことするんだよッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
	FadeDelete("絵背景", 200, null, false);
	WindowAXLZoom("絵窓", "Y", 200, 0, Dxl2, true);
	Delete("@絵窓*");

	St("L",700, @0,@0,"bu似鳥_通常_angry");
	St("L",700, @0,@0,"bu似鳥_通常_worry");
//	FadeSt("ML",200,true);
	FadeStPro("L", 200, 1400);

//	St("ML",700, @0,@0,"bu似鳥_通常_angry");
	FadeSt("L",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/200100120nki">
「せっかくもらった命を、一歩間違ったらおまえは――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	AgainSt("L",700, @0,@0,"bu似鳥_通常_worry");
//	DeleteAllSt(200,false);

//使用箇所001：動作
//動作準備
	Move("絵マスク", 0, 1024, 0, null, true);
	Fade("スラッシュ", 200, 1000, null, false);
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク/絵演立絵*", 0, 450, InBottom, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);

	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵1", 200, 1000, null, false);
	Move("絵マスク/絵演立絵1", 200, 450, InBottom, Dxl1, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/200100130nko">
「にとり……？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/200100140nko">
「くるしいの？　ないてるの？」

{
	Fade("絵マスク/絵演立絵1", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵2", 200, 1000, Dxl1, false);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/200100150nko">
「わたしが、すべてのくるしみを、のぞいてあげた――」

{
	St("L",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/200100160nki">
「オレの心は、おまえに操られてなんかいない」

{
	Fade("絵マスク/絵演立絵2", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵1", 200, 1000, Dxl1, false);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/200100170nko">
「え……？」

{
	Fade("絵マスク/絵演立絵1", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵4", 200, 1000, Dxl1, false);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/200100180nko">
「にとりは、わたしが、きらい？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2222);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("L",700, @0,@0,"bu似鳥_通常_happy");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/200100190nki">
「好きだよ」

{	St("L",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/200100200nki">
「でも……好きだって言う度に、心が苦しい」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/200100210nki">
「なにもかも、忘れたワケじゃない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/200100220nko">
「そんな……どうして？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buミリＰb_通常_sad");
	FadeSt("L",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/200100230mrp">
「あなたは、アザナエルを使って似鳥君の心をねじ曲げることを、本当は望んでいなかった」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/200100240mrp">
「だから、その偽物の好意を心から願えなかった」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/200100250nko">
「うそ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	SetVolumeEX("@x*", 2000, 0, NULL);


	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Fade("スラッシュ", 200, 0, null, false);
	Move("スラッシュ", 200, 1024, 0, Axl3, false);
	DeleteAllSt(200,true);
	St("C",700, @50,@0,"bu沙紅羅_頭かき_sigh");
	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	FadeSt("C",200,true);

	Delete("絵マスク*");
	Delete("絵マスク/絵演立絵*");
	Delete("絵マスク/絵演背景*");
	Delete("スラッシュ");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/200100260skr">
「ええと……ちょっといいかな？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/200100270skr">
「まあ、そこら辺のまとめも大事だけどよ！
　ちょっと急ぎの用事があるんだ！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/200100280nki">
「急ぎの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2223);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/200100290skr">
「フウリが今……腹を切られて、死にかけてる」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰb_通常_shock");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/200100300mrp">
「フウリって……あのフウリちゃん！？
　なんで、ワケわかんない！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/200100310nko">
「わたしのせい……
　わたしが、フウリをきずつけたから」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/200100320nki">
「ノーコ……？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/200100330skr">
「普通の医者には治せねぇ！
　こいつを使うしかねぇんだ！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/200100340skr">
「頼む！　アザナエルを貸してくれ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/200100350nko">
「わかった。そのかわり――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/200100360nko">
「ばしょを、おしえて」

{	St("ML",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/200100370nko">
「わたしも、いかなきゃ」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



//◆場所：秋葉原_中央通り
	SetVolumeEX("SE*", 600, 0, null);

	SceneOut(20000, 300, "slide_01_01_0");

//◆時間：ジャンプ
{	ClockPass(2226);}
	Wait(1000);

	Fade("ムービー１", 0, 0, null, true);
	Delete("ムービー１");

	DeleteAllSt(0,false);
	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);

	SceneIn(300, "slide_01_01_1");

//	SoundPlay("@xbgm24",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("C",700, @-50,@0,"bu沙紅羅_後ろ向き_shout");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/200100380skr">
「こっちだ！」

{	St("MR",700, @0,@0,"buミリＰb_ショータイム_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/200100390mrp">
「ええいっ！　あっちこっち！
　行ったり来たり！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/200100400skr">
「もう少し――もう少しだぞ――」

{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/200100410skr">
「待ってろ、待ってろよフウリ――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);




{	ClockPass(2227);}



//◆場所：スパコン館_裏面

	SceneOut(5000, 300, "slide_01_01_0");

	DeleteAllSt(0,false);
	OnBG(10,"bg1101300スパコン館_裏面_電柱折れ");
	FadeBG(0,true);

	SceneIn(300, "slide_01_01_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("C",700, @50,@0,"bu沙紅羅_後ろ向き_rage");
	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/200100420skr">
「ここっ！」

{	CreateSE("SE05","se戦闘_倒壊04");
	MusicStart("SE05",0,300,0,1000,null,false);
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg1101300スパコン館_裏面_電柱折れ.jpg");
	Fade("絵背景100", 0, 1000, null, false);
	Shake("絵背景100", 3000, 0, 1, 0, 0, 500, AxlDxl, false);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/200100430skr">
「この中に、フウリが――」


{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/200100440skr">
「ん？」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("R",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/200100450nki">
「なんだ？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buノーコa_幽霊_think");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/200100460nko">
「じなり？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2228);}

	TextBoxDelete(150);
	DeleteAllSt(200,true);


//煙プロセス
	CloudZoomSmokeSubSet01EX("スモークプロセスA",2000,"cg/ef/efスモーク.png");
//	CloudZoomSmokeSubStart01EX(速度,間隔,濃度,開始拡大度,終了拡大度,角度,開始X,開始Y,移動X,移動Y,テンポ)


	SetVolumeEX("@xbgm*", 1500, 0, null);

	CreateTextureEX("絵背景EV01", 100, 0, -555, "cg/ev/l/ev2220太四郎ビル大破壊_l.jpg");
	CreateTextureEX("絵背景破壊01", 100, -824, -150, "cg/bg/l/bg1101400スパコン館_裏面_半廃墟_l.jpg");
	Rotate("絵背景破壊*", 0, @0, @0, 20, null,true);
	Zoom("絵背景破壊*", 0, 3000, 3000, null, true);

//◆ＳＥ：大破壊
	CreateSE("SE01a","se戦闘_破壊01");
	CreateSE("SE01","se戦闘_倒壊01");
	CreateSE("SE02","se戦闘_倒壊04");

	MusicStart("SE01a",0,700,0,1000,null,false);
	Fade("絵背景EV01", 0, 1000, null, false);
	FadeF4("絵背景EV01", 1000, 1000, 1000, 0, 0, Dxl1, false);
	Zoom("絵背景EV01", 1000, 1500, 1500, Dxl2, 900);

	MusicStart("SE01",0,700,0,1000,null,false);

	Rotate("絵背景破壊*", 3000, @0, @0, 0, Axl1,false);
	Move("絵背景破壊*", 3000, -512, -570, Axl1, false);
	Shake("絵背景破壊01", 3000, 50, 0, 10, 0, 500, Dxl1, false);
	Zoom("絵背景破壊*", 3000, 1000, 1000, Axl3, false);

	Fade("絵背景破壊01", 0, 1000, null, true);
	DrawTransition("絵背景破壊01", 100, 0, 1000, 100, null, "cg/data/zzex_circle_01_00_0.png", false);

	CloudZoomSmokeSubStart01EX(2500,25,50,6500,10000,900,400,200,760,-100,Dxl1);

//	Fade("絵背景破壊02", 2000, 0, Axl1, false);
//	DrawTransition("絵背景破壊02", 3000, 1000, 0, 200, Axl2, "cg/data/worm_01_00_0.png", false);

	Wait(2700);
	MusicStart("SE02",0,1500,0,1000,null,false);
	Wait(100);
	Fade("絵背景破壊01", 0, 1000, null, true);
	Shake("絵背景破壊01", 3000, 15, 5, 0, 0, 1000, Dxl1, false);
	FadeF4("絵背景破壊01", 3000, 1000, 3000, 0, 0, Dxl1, true);

	OnBG(10,"bg1101400スパコン館_裏面_半廃墟");
	FadeBG(0,true);


	Wait(1000);

	CloudZoomSmokeSubDelete01EX(2000);
	Move("絵背景破壊01", 1000, -512, -288, AxlDxl, false);
	Zoom("絵背景破壊01", 1000, 500, 500, AxlDxl, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("C",700, @-50,@0,"bu沙紅羅_通常_surprise");
	Move("@StNameC/C*", 200, @50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/200100470skr">
「え――？」

{	St("R",690, @50,@0,"bu似鳥_通常_shock");
	Move("@StNameR/R*", 200, @-50, @0, Dxl2, false);
	FadeSt("R",200,true);
	Delete("絵背景100");}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/200100480nki">
「うそォ――」

{	St("L",600, @-50,@0,"buノーコa_通常_shock");
	Move("@StNameL/L*", 200, @50, @0, Dxl2, false);
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/200100490nko">
「た――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

/*
//◆音声指示：同時
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/200100500skr">
「タヌキぃぃッッ！？」

//◆音声指示：同時
//【似鳥戴斗】
//<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/200100510nki">
//「タヌキぃぃッッ！？」

//◆音声指示：同時
//【ノーコ】
//<voice name="ノーコ" class="ノーコ" src="voice/ba22/200100520nko">
//「タヌキぃぃッッ！？」

//【ミリＰ】
//<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/200100530mrp">
//「タヌキぃぃッッ！？」
*/

	CreateMovieEX("ムービー１", 5000, Center, Middle, true, true, "dx/mvk100.ngs");
	Request("ムービー１", AddRender);
	Zoom("ムービー１", 0, 3000, 3000, null, true);


//あきゅん「修正指示：タヌキの登場、もっともったいぶってひっぱる感じに」

//◆ＥＶ："ev/ev2220太四郎ビル大破壊.txt"
//◆ＥＶ："ev/ev2220太四郎ビル大破壊.txt"
	CreateTextureEX("絵背景１", 2000, Center, @-400, "cg/ev/l/ev2220太四郎ビル大破壊_l.jpg");
	CreateTextureEX("絵背景３", 2010, Center, @-400, "cg/ev/l/ev2220太四郎ビル大破壊_l.jpg");
	CreateTextureEX("絵背景２", 2020, Center, @0, "cg/ev/ev2220太四郎ビル大破壊.jpg");
	Move("絵背景１", 0, @400, @-150, Dxl2, false);
	Move("絵背景３", 0, @0, @-150, Dxl2, false);
//	Zoom("絵背景１", 0,1000, 1000, Dxl2, false);
//	Move("絵背景１", 5000, @0, @400, Dxl2, false);


//	Fade("ムービー１", 200, 1000, null, false);

	Fade("絵背景１", 1000, 1000, null, false);
	Move("絵背景１", 2000, @-400, @0, Dxl2, true);

	Fade("ムービー１", 2000, 1000, null, false);
	Move("絵背景３", 4000, @0, @500, Dxl2, false);
	Fade("絵背景３", 3000, 1000, null, true);
	Wait(1000);
	DeleteAllSt(0,true);

	Shake("@絵背景*", 1000, 0, 10, 0, 0, 500, null, false);

	CreateSE("SE01","se擬音_ギャグ_ガーン01");
	MusicStart("SE01",0,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//◆音声指示：同時
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/200100500">
「タヌキぃぃッッ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetBlur("絵背景３", true, 2, 500, 80, false);

	Fade("ムービー１", 1000, 0, null, false);
	Move("絵背景３", 500, @0, -288, AxlDxl, false);
	Zoom("絵背景３", 500, 500, 500, AxlDxl, true);
	Fade("絵背景２", 200, 1000, null, true);

	Delete("ムービー１");
	Delete("絵背景１");
	Delete("絵背景３");
	Delete("絵背景EV01");
	Delete("絵背景破壊01");

	SoundPlay("@xbgm31",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/200100540nki">
「ってか……でけぇ！」

{
//あきゅん「修正指示：破壊系のＳＥを」
	CreateSE("SE01","se戦闘_倒壊03");
	MusicStart("SE01",0,700,0,1000,null,false);

	BGPlainShake(2020, 1000, 10, 8, 0, 0, 1000, Dxl1, false);
}
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/200100550tsr">
「ぐおおおおおおおおお！！」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/200100560mrp">
「正気を失ってる！？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/200100570skr">
「タヌキってことは、やっぱりフウリ……？」

//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/200100580buu">
「いや、あいつは貫太です」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2229);}


	SetVolumeEX("@SE01*", 1500, 0, null);
	TextBoxDelete(150);

//◆場所：スパコン館_裏面_崩壊

	OnBG(10,"bg1101400スパコン館_裏面_半廃墟");
	FadeBG(0,true);

	St("L",700, @0,@0,"buブーa_通常_pinch");
	St("C",690, @0,@0,"bu平次_通常_hard");
	St("R",700, @0,@0,"buみそa_通常_sad");
	FadeSt("L",0,false);
	FadeSt("C",0,false);
	FadeSt("R",0,true);
	Fade("絵背景２", 300, 0, null, true);
	Wait(1000);

	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/200100590skr">
「ブー！　みそ！　平次も！
　無事だったのか！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu平次_落ち込み_sad");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/200100600fjh">
「オレたちはな。でも――フウリは――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("ML",200,true);
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, null, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/200100610nko">
「――――ッ！！」

{	St("ML",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/200100620nko">
「フウリ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景1", 1500, -100, -100, "cg/ev/l/ev2150ユージロー転倒b_l.jpg");
	Request("絵背景1", Smoothing);
	Rotate("絵背景1", 0, @0, @0, 10, null,true);
//	CreateTextureEXmul("絵背景2", 1510, Center, Middle, "cg/ev/l/ev2150沙紅羅対ノーコ_背景_l.jpg");
	Fade("絵背景1", 1000, 1000, null, false);
//	Fade("絵背景2", 1000, 500, null, true);
	DeleteAllSt(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　みそが抱いているのは、腹を割かれ、真っ赤な血を流す一匹のタヌキの姿――

　しかしその胸は、もう呼吸をやめていた。

{
	Fade("@絵背景*", 1000, 0, null, true);
	St("MR",700, @0,@0,"buみそa_通常_hard");
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/200100630mso">
「結局、貫太の治療は間に合わなくて、それで……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buノーコa_通常_cry");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/200100640nko">
「フウリ……ごめん……ごめんなさい……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/200100650nki">
「なあ、貫太っていうのは？
　あの大狸……なのか？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/200100660skr">
「ああ。フウリの古い友人だって言ってた」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu平次_落ち込み_sad");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/200100670fjh">
「懸命に治療したんだけど、間に合わなくてな。
　目の前でフウリが命を失って、それで――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/200100680nko">
「――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：空へ
	CreateSE("SE02","se戦闘_風切り音10");
	MusicStart("SE02",0,700,0,1000,null,false);
	Move("@StNameC/*", 200, @0, @-50, Axl2, false);
	DeleteAllSt(200,true);

	St("C",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/200100690nki">
「お――おい、ノーコ？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/200100700nko">
「こうなったのは――わたしのせい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/200100710nko">
「わたしが、おおだぬきを、とめる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@x*", 3000, 0, NULL);



//◆ＳＥ：更に上空へ

//	CreateSE("SE03","se動作_空飛ぶ02");
//	MusicStart("SE03",0,700,0,1000,null,false);


	Move("@StNameMR/MR*", 200, @0, @-50, Dxl2, false);
	DeleteAllSt(200,true);

	CreateTextureSP("絵背景キャラ", 400, Center, 1100, "cg/bu/l/buノーコa_通常_normal_x02.png");
	Request("絵背景キャラ", Smoothing);
	Zoom("絵背景キャラ", 0, 2000, 2000, null, true);

	CreateTextureEX("空", 10, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");

	CreateSE("SE11","se戦闘_風切り音10");
	MusicStart("SE11",0,700,0,1000,null,false);
	Move("@StNameC/*", 200, @0, @-50, Axl2, false);
	DeleteAllSt(200,true);

	SceneOut(5000, 300, "slide_02_01_0");

	CreateSE("SE12","se動作_空飛ぶ02");
	MusicStart("SE12",0,700,0,1000,null,false);

	Move("絵背景100", 0, @0, @-100, null, false);

	Zoom("空", 1000, 1500, 1500, Dxl2, false);
	Fade("空", 0, 1000, null, true);

	SceneIn(300, "slide_02_01_1");

	Move("絵背景キャラ", 700, @0, -1000, Dxl2, false);
	Zoom("絵背景キャラ", 700, 500, 500, Dxl2, false);
	Zoom("絵背景BG", 700, 1000, 1000, Dxl2, false);
	Move("絵背景BG", 700, @0, 0, Dxl2, true);


	Wait(500);


//	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");
//	Move("絵背景100", 1000, @0, @+100, null, false);
//	Fade("絵背景100", 500, 1000, null, true);
//	Wait(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/200100720nki">
「ノーコ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	Delete("絵背景キャラ");
	Delete("絵背景BG");

// 次ファイル状態つなぎ未処理


	EndScene();
}
