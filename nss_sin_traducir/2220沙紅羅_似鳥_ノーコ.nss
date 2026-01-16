
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2220沙紅羅_似鳥_ノーコ.nss_MAIN
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
	$GameName = "2230カゴメ3.nss";
}

scene 2220沙紅羅_似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1100">
////////////header////////////
//file name "2220沙紅羅_似鳥_ノーコ.nss"
//title "ＮＯ　ＣＯＮＴＲＯＬ"
//previous "2210沙紅羅_似鳥.nss"
//previous "2210ノーコ.nss"

////////////footer////////////





//next "沙紅羅" "2230カゴメアソビ3.nss"
//next "似鳥" "2230カゴメアソビ3.nss"
//next "ノーコ" "2230カゴメアソビ3.nss"

////////////body////////////

//■再定義定型文
	PrintGO("上背景", 30000);

{	ClockPass(2220);}


	CreateSE("SE11","se環境_風_l");
	CreateSE("SE10","se環境_風低音_l");
	MusicStart("SE11",2000,2000,0,1000,null,true);
	MusicStart("SE10",2000,1000,0,1000,null,true);


//◆場所：あにのあな_屋上
	OnBG(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);

//★カメラ設定
	CreateCamera("カメラ１", Center, Middle, 500);
	SetAlias("カメラ１","カメラ１");

	CreateTextureEX("カメラ１/絵背景100a", 600, Center, Middle, "cg/bu/l/buノーコa_銃構え_normal_x01.png");
	CreateTextureEX("カメラ１/絵背景200a", 600, Center, Middle, "cg/bu/l/buノーコa_銃構え_normal_x03.png");
	Request("カメラ１/絵背景100a", Smoothing);
	Request("カメラ１/絵背景200a", Smoothing);
//ぼかし素材に変更
//	SetShade("カメラ１/絵背景200a", MIDEUM);
	Move("カメラ１/絵背景100a", 0, @200, @400, null, true);
	Move("カメラ１/絵背景200a", 0, @200, @400, null, true);

	CreateTextureEX("カメラ１/絵背景100b", 300, center, Middle, "cg/bg/l/bg0303100あにのあな_屋上_通常_l.jpg");
	CreateTextureEX("カメラ１/絵背景200b", 300, 0, Middle, "cg/bg/bg0303100あにのあな_屋上_通常.jpg");
	Zoom("カメラ１/絵背景200b", 0, 2000, 2000, null, true);
	SetShade("カメラ１/絵背景200b", MIDEUM);

	Fade("カメラ１/*", 0, 1000, null, true);
	Fade("カメラ１/絵背景200b", 0, 0, null, true);
	Fade("カメラ１/絵背景100a", 0, 0, null, true);


	CreateMovieEX("ムービー１", 5000, Center, Middle, true, true, "dx/mvk100.ngs");
	Request("ムービー１", AddRender);
	Zoom("ムービー１", 0, 3000, 3000, null, true);
	Fade("ムービー１", 0, 1000, null, true);

	MoveCamera("@カメラ１", 0, -200, 0, @0, null, true);

	MoveFTP1("@カメラ１/*",10000,7,4);

	FadeDelete("上背景", 1000, null, true);

	Wait(500);


//◆演出指定：足音
	CreateSE("SE01","se動作_足踏み");
	MusicStart("SE01",0,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/200200010nko">
「こないで」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/200200020nko">
「それいじょう、ちかづかないで」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	CreateSE("SE01","se銃_構える");


	Move("@カメラ１/絵背景100b", 1000, @0, @1000, AxlDxl, false);
	Move("@カメラ１/絵背景200b", 1000, @0, @1000, AxlDxl, false);
	MoveCamera("@カメラ１", 1000, 205, 1100, @0, AxlDxl, true);

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("カメラ１/絵背景200b", 500, 1000, null, false);
	Fade("カメラ１/絵背景100a", 500, 1000, Dxl2, false);
	Fade("カメラ１/絵背景200a", 500, 0, Axl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/200200030nko">
「ちかづいたら……うつ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//窓準備
	CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 15200, Center, Middle, "cg/bg/bg0303100あにのあな_屋上_通常.jpg");
	SetShade("絵窓/絵演背景", HEAVY);

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 19100, -160, middle, "cg/bu/bu沙紅羅_通常_surprise.png");
	CreateTextureEX("絵窓/絵演立絵2", 19100, 362, middle, "cg/bu/buミリＰa_通常_shock.png");
	Move("絵窓/絵演立絵*", 0, @0, @50, null, true);

	CreateTextureEX("絵背景枠01", 19200, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 19200, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");


//動作
	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 200, @0, 80, Dxl2, false);
	Move("絵背景枠02", 200, @0, 464, Dxl2, false);
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	Move("絵窓/絵演立絵", 200, @-50, @0, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//◆ＳＥ：扉開く
//◆音声指示：遠くから
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/200200040skr">
「え……おい、ノーコ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2221);}

	TextBoxDelete(150);

	Move("絵窓/絵演立絵2", 200, @50, @0, Dxl2, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, true);

//◆音声指示：遠くから
//【ミリＰ】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
<voice name="ミリＰ" class="ミリＰ" src="voice/22/200200050mrp">
「ノーコちゃん！　早まっちゃ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("絵背景枠01", 200, @0, 262, null, false);
	Move("絵背景枠02", 200, @0, 262, null, false);
	Fade("絵背景枠*", 200, 0, null, false);
	Zoom("絵窓", 200, 1000, 0, Axl2, false);
	Move("@カメラ１/絵背景100b", 500, @0, @-1000, AxlDxl, false);
	Move("@カメラ１/絵背景200b", 500, @0, @-1000, AxlDxl, false);
	MoveCamera("@カメラ１", 500, 200, 0, @0, AxlDxl, true);

	Delete("絵背景枠*");
	Delete("絵窓*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/200200060nko">
「しぬつもりは、ない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/200200070nko">
「たまはいっぱつ。ロシアンルーレット」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/200200080nko">
「もし、せいこうすると――わたしのねがいがかなう」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/200200090skr">
「んな馬鹿な――」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200100nki">
「本当だ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2222);}

	TextBoxDelete(150);
	CreateTextureEX("絵背景100", 1520, Center, Middle, "cg/bg/bg0303100あにのあな_屋上_通常.jpg");
	Fade("絵背景100", 500, 1000, null, true);
	MoveFTP1stop();
	Delete("カメラ１*");
	Delete("絵背景100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200110nki">
「アイツはそのおかげで、現実の存在になった」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/200200120skr">
「何の願いを、叶える気だ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);
	DeleteAllSt(200,true);


//マスク準備
	CreateTextureEX("絵マスク枠", 2010, 300, Middle, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureEX("絵マスク/絵演背景", 1520, 300, Middle, "cg/bg/bg0303100あにのあな_屋上_通常.jpg");
	Rotate("絵マスク/絵演背景", 0, @0, @180, @0, null,true);
	Zoom("絵マスク/絵演背景", 0, 1200, 1200, null, true);
	Move("絵マスク/絵演背景", 0, @0, @-50, null, true);
	SetShade("絵マスク/絵演背景", HEAVY);

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buノーコa_銃構え_normal.png");
	Request("絵マスク/絵演立絵", Smoothing);

//動作準備
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵", 0, 512, 200, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);
	Move("絵マスク枠", 0, 1024, 0, null, true);
	Fade("絵マスク枠", 0, 1000, null, true);


//イン動作
	Move("絵マスク", 300, 0, 0, Dxl2, false);
	Move("絵マスク枠", 300, 0, 0, Dxl2, false);
	Fade("絵マスク/絵演立絵", 300, 1000, null, false);
	Move("絵マスク/絵演立絵", 300, 512, middle, Dxl2, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/200200130nko">
「きまってる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/200200140nko">
「にとりの、こころをかえる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/200200150nko">
「カゴメアソビにせいこうすれば」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/200200160nko">
「にとりは、わたしのとりこ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/200200170nko">
「わたしのすきな、にとりに――」

{	St("L",700, @50,@0,"bu沙紅羅_通常_angry");
	FadeSt("L",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/200200180skr">
「んな馬鹿なこと――」

{	DeleteAllSt(200,true);
	St("L",700, @-50,@0,"bu似鳥_通常_normal");
	Move("@StNameL/L*", 200, @50, @0, Dxl1, false);
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200190nki">
「沙紅羅、任せろ」

{	DeleteAllSt(200,true);
	St("L",700, @50,@0,"bu沙紅羅_通常_sad");
	FadeSt("L",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/200200200skr">
「でも――」

{	DeleteAllSt(200,true);
	St("L",700, @0,@0,"bu似鳥_通常_rage");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200210nki">
「いいから任せろっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolumeEX("SE*", 10000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("L",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200220nki">
「――――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/200200230nko">
「――――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2223);}


	St("L",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("L",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200240nki">
「なあ、ノーコ」

{	St("L",700, @0,@0,"bu似鳥_通常_happy");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200250nki">
「最初の同人誌も、ここから始まったよな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SoundPlay("@xbgm25",0,450,true);
	TextBoxDelete(150);

	CreateTextureEX("絵背景100", 10000, Center, InBottom, "cg/bg/bg0301100あにのあな_正面_通常.jpg");

	Move("絵背景100", 60000, @0, 0, null, false);
	Fade("絵背景100", 1000, 1000, null, true);
	DeleteAllSt(0,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200260nki">
「ひとり暮らしのマンガ家志望の若者のところに、突然ゴスロリメンヘル少女がやってきて」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200270nki">
「コスプレして」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200280nki">
「セックスして」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200290nki">
「リスカして」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200300nki">
「セックスして」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200310nki">
「鬱になって」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200320nki">
「セックスして」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200330nki">
「ある日、彼女が気付く」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200340nki">
「彼女が、創られた、偽物だって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2224);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200350nki">
「あにのあなの最上階から」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200360nki">
「飛び降りる」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200370nki">
「でも、死なない。
　血は飛び散らない」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200380nki">
「それで、彼女は、自分が死ぬこともできない存在だってことに気付く」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200390nki">
「普通の人間とは違うんだって、気付く」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200400nki">
「それが――ノーコ。おまえだった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);
	St("L",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("L",200,true);

	Fade("絵背景100", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/200200410nko">
「そのときとはちがう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/200200420nko">
「わたしはいま、にんげんになった」

{	St("L",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200430nki">
「偽物じゃないって、信じられるのか？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/200200440nko">
「…………」

{	St("L",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200450nki">
「初めておまえがオレの前に現れたとき」

{	St("L",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200460nki">
「おまえは、能子さんの代わりだった」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/200200470nko">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2225);}

	CreateTextureEX("絵背景300a", 10300, 512, Middle, "cg/bu/bu沙紅羅_通常_normal.png");
	CreateTextureEX("絵背景300b", 10200, 1312, Middle, "cg/bu/buミリＰa_通常_hard.png");
	CreateTextureEX("絵背景300c", 10000, 512, Middle, "cg/bg/bg0303100あにのあな_屋上_通常.jpg");
	Zoom("絵背景300c", 0, 2000, 2000, null, true);
	SetShade("絵背景300c", HEAVY);


	Move("絵背景300a", 125000, -1412, @0, null, false);
	Move("絵背景300b", 125000, -612, @0, null, false);
	Move("絵背景300c", 125000, -512, @0, null, false);

	Fade("絵背景300a", 1500, 1000, null, false);
	Fade("絵背景300b", 1500, 1000, null, false);
	Fade("絵背景300c", 1500, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200480nki">
「オレと能子さんは、化学部で。
　クラスでは変わり者扱いされてて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200490nki">
「オレはもちろん厨二病の夢見がちなオタク少年だったし、彼女は前世を信じるメンヘル目の女の子だった」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200500nki">
「でもふたりとも、マンガが好きだった」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200510nki">
「部活は特にやることもなかったし、ふたりでマンガを描き始めた」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200520nki">
「厨二病の夢見がちなオタク少年と、前世を信じるメンヘル目の女の子の、ラブコメだった」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200530nki">
「今見れば笑えるくらいやり過ぎだけど。
　当時のオレたちは真剣だった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200540nki">
「オレは将来、プロのマンガ家になるんだって。
　能子さんにだけはこっそり打ち明けて」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200550nki">
「でも、マンガなんて結局逃げ場でしかなかった」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200560nki">
「オレは告白もできないままで、能子さんはクラスから浮いて、成績もどんどん落ちて、いじめ受けて」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200570nki">
「学校にゴスロリ服で来てみたり、リスカを繰り返したり。
　カバンの中に、漬け物石と包丁だけが入ってたり」


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200580nki">
「でもオレは、なんにも彼女の力になれなくて」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200590nki">
「できることはマンガを描くことだけだとか、自分の力のなさを正当化して」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200600nki">
「オレのマンガには、彼女を笑わせる力があるって、信じようとして、でも、信じられるわけもなくて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2226);}

	Delete("絵マスク*");
	DeleteAllSt(0,true);


	CreateTextureEX("絵背景100", 16020, Center, Middle, "cg/bg/bg0303100あにのあな_屋上_通常.jpg");
	Fade("絵背景100", 500, 1000, null, true);
	Delete("絵背景300*");
	Delete("絵背景100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200610nki">
「で、ある日」

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200620nki">
「能子さんは、とうとう学校の屋上に忍び込んで、自殺騒ぎを起こした」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200630nki">
「もしも本当に２万年後の現代に転生した超形而上学的存在だったら、命の危機で能力が目覚める――」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200640nki">
「はずだった」

{	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200650nki">
「飛び降りられなかった」

{	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200660nki">
「彼女だって、心の底から信じられたわけじゃない」

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200670nki">
「能子さんは退学」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200680nki">
「交換してたマンガが見つかって、オレもその事件の引き金だって判定されて」

{	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200690nki">
「ふたりは離ればなれで、連絡も取れなくなって、オレは石みたいに教室の隅っこで丸くなって過ごした」

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200700nki">
「卒業までの数ヶ月、ただ勉強して、ただ時が過ぎるのを待ってた」

{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200710nki">
「上京して、大学に入った」

{	St("C",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200720nki">
「新しい環境だ。
　過去を全部捨てて、新しい生活ができると思った」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2227);}




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("C",700, @0,@0,"bu似鳥_通常_angry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200730nki">
「マンガを描こうと思った。
　たくさん、たくさん、マンガが描けると思った」

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200740nki">
「けど――だめだった。
　どんなマンガを描こうとしても、納得がいかなかった」

{	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200750nki">
「オレが創りたいのは、こんなじゃない。
　なにか、もっと違うものが、描けるはずだ――」

{	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200760nki">
「苦しんで、苦しんで、苦しんで――」

{	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200770nki">
「オレの中にある本当のものを、一生懸命掻き集めて――」

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200780nki">
「それで、やっと、最初の同人誌ができたんだ」

{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200790nki">
「それが『ＮＯ　ＣＯＮＴＲＯＬ』だ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	CreatePlainSP("上背景", 15005);
	DeleteAllSt(0,true);

//★カメラ設定
	CreateCamera("カメラ１", Center, Middle, 500);
	SetAlias("カメラ１","カメラ１");

	CreateTextureEX("カメラ１/絵背景100a", 600, Center, Middle, "cg/bu/l/buノーコa_銃構え_normal_x01.png");
//	CreateTextureEX("カメラ１/絵背景200a", 600, Center, Middle, "cg/bu/l/buノーコa_銃構え_normal_x01.png");
	Request("カメラ１/絵背景100a", Smoothing);
//	Request("カメラ１/絵背景200a", Smoothing);
//	SetShade("カメラ１/絵背景200a", HEAVY);
	Move("カメラ１/絵背景100a", 0, @-160, @170, null, true);
//	Move("カメラ１/絵背景200a", 0, @200, @400, null, true);

//	CreateTextureEX("カメラ１/絵背景100b", 300, center, Middle, "cg/bg/l/bg0303100あにのあな_屋上_通常_l.jpg");
	CreateTextureEX("カメラ１/絵背景200b", 300, 0, Middle, "cg/bg/bg0303100あにのあな_屋上_通常.jpg");
	Zoom("カメラ１/絵背景200b", 0, 2000, 2000, null, true);
	SetShade("カメラ１/絵背景200b", HEAVY);

	Fade("カメラ１/*", 0, 1000, null, true);
	MoveCamera("@カメラ１", 0, @200, @0, @0, null, true);


	MoveFTP1("@カメラ１/*",65000,15,17);

	FadeDelete("上背景", 300, null, true);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/200200800nko">
「よしこのかわりのノーコ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/200200810nko">
「それは――わたしは、にせもの」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200820nki">
「でも、おまえは知ってた！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200830nki">
「その時のオレには、ノーコがどうしても必要だった」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200840nki">
「能子の代わりのノーコが、本当に、必要だった」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200850nki">
「『ＮＯ　ＣＯＮＴＲＯＬ』は、オレにとって、大切な、大切な本物で――！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200860nki">
「だからそれがなくなって、おまえはショックを受けた」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/200200870nko">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2228);}


	TextBoxDelete(150);
	CreateTextureEX("絵背景100", 1520, Center, Middle, "cg/bg/bg0303100あにのあな_屋上_通常.jpg");
	Fade("絵背景100", 500, 1000, null, true);
	MoveFTP1stop();
	Delete("カメラ１*");
	Delete("絵背景100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200880nki">
「オレも、そうだった」

{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200890nki">
「『ＮＯ　ＣＯＮＴＲＯＬ』が、オレにとってどれだけ大切なものか、やっとわかったんだ」

{	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200900nki">
「オレは、昔の自分が恥ずかしかった」

{	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200910nki">
「現実とは戦わずに、妄想に逃げ込んで、それが隠すべきことだと思ってた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200920nki">
「そんな自分を、情けなく思ってた」

{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200930nki">
「でも、今なら、わかる」

{	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200940nki">
「オレは、そんな情けない人間なんだ」

{	St("C",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200950nki">
「弱さだって、認めなきゃ駄目なんだ。
　全部ひっくるめて、オレを引き受けなきゃならない！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);
	DeleteAllSt(200,true);


	CreatePlainSP("上背景", 15005);
//	DeleteAllSt(0,true);

//★カメラ設定
	CreateCamera("カメラ１", Center, Middle, 500);
	SetAlias("カメラ１","カメラ１");

	CreateTextureEX("カメラ１/絵背景100a", 500, Center, Middle, "cg/bu/l/bu似鳥_通常_normal_x01.png");
//おがみ：β要演出箇所：優先度Ａ　表情差分完成後に素材をつくり差し替え
	CreateTextureEX("カメラ１/絵背景100b", 500, Center, Middle, "cg/bu/l/bu似鳥_通常_shout_x01.png");
	Request("カメラ１/絵背景100*", Smoothing);
	Zoom("カメラ１/絵背景100*", 0, 800, 800, null, true);
	Move("カメラ１/絵背景100*", 0, @0, @200, null, true);

	CreateTextureEX("カメラ１/絵背景200b", 300, 0, Middle, "cg/bg/bg0303100あにのあな_屋上_通常.jpg");
	Zoom("カメラ１/絵背景200b", 0, 2000, 2000, null, true);
	SetShade("カメラ１/絵背景200b", HEAVY);

	Fade("カメラ１/*", 0, 1000, null, true);
	Fade("カメラ１/絵背景100b", 0, 0, null, true);
	MoveCamera("@カメラ１", 0, @150, @0, @0, null, true);


	MoveFTP1("@カメラ１/*",60000,15,17);

	FadeDelete("上背景", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200960nki">
「ノーコ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200970nki">
「みんなが見てる前で、オレはハッキリ言う」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200980nki">
「オレは、おまえを愛してる」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200200990nki">
「だから――怖がらずに、おまえの声を聞かせてくれ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200201000nki">
「自分が、偽物じゃないって」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200201010nki">
「愛されるだけの価値がある、創作から生まれた本物だって、自分を認めて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fade("カメラ１/絵背景100b", 200, 1000, null, false);
	Fade("カメラ１/絵背景100a", 300, 0, Axl2, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200201020nki">
「本当の気持ちを、伝えてくれ！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200201030nki">
「オレを――愛してるって、言ってくれ――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2229);}

	TextBoxDelete(150);
	CreateTextureEX("絵背景100", 1520, Center, Middle, "cg/bg/bg0303100あにのあな_屋上_通常.jpg");

	Fade("ムービー１", 1000, 0, null, false);
	Fade("絵背景100", 1000, 1000, null, true);
	MoveFTP1stop();
	Delete("カメラ１*");
	Delete("絵背景100");
	Delete("ムービー１");

//おがみ：ここは立ち絵出さないほうがいいかな
/*
	St("L",700, @0,@0,"bu沙紅羅_通常_surprise");
	St("R",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("L",200,false);
	FadeSt("R",200,true);
*/
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0221]
//◆音声指示：遠くから
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/200201040skr">
「お……お……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

/*
//◆音声指示：同時
//◆音声指示：遠くから
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/200201050skr">
「おお…………！！」

//◆音声指示：同時
//◆音声指示：遠くから
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/200201060mrp">
「おお…………！！」
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//◆音声指示：同時
//◆音声指示：遠くから
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/200201050skr">
「おお…………！！」
{WaitAddText();}<BR>

//◆音声指示：同時
//◆音声指示：遠くから
//【ミリＰ】
//<voice name="ミリＰ" class="ミリＰ" src="voice/22/200201060mrp">
//「おお…………！！」

</PRE>
	SetText();
	AddText(1,"「おお…………！！」","沙紅羅","22/200201050skr",false,false,1000);
	AddText(2,"「おお…………！！」","ミリＰ","22/200201060mrp",true,true,1400);
	TypeBeginD();//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：拍手パチパチパチ
	CreateSE("SE01","se動作_拍手02_l");
	CreateSE("SE02","se動作_拍手02_l");
	MusicStart("SE01",0,1200,0,900,null,false);
	Wait(100);
	MusicStart("SE02",0,1200,0,1000,null,false);


//おがみ：β要演出箇所：優先度Ａ　音とめて、テキストとノーコの泣き声だけにする予定

	Wait(2000);

	SetVolumeEX("SE*", 1000, 0, null);
	SetVolumeEX("@xbgm*", 1000, 0, null);
	Wait(2000);

//◆演出指定：周囲と温度差のある感じ



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0231]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/200201070nko">
「ぅ……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/200201080nko">
「ひぐっ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＥＶ："ev/ev2230カゴメアソビ3.txt"
	CreateTextureEX("絵背景100", 2000, -812, -1700, "cg/ev/l/ev2230カゴメアソビ3_l.jpg");
	Request("絵背景100", Smoothing);

	Fade("絵背景100", 700, 1000, null, false);
	Move("絵背景100", 3500, -654, -341, AxlDxl, true);

	CreateTextureSP("絵背景50", 50, Center, Middle, "cg/ev/ev2230カゴメアソビ3.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/200201090nko">
「う……う、ううう……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/200201100nki">
「え……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
