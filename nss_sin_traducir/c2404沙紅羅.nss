
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene c2404沙紅羅.nss_MAIN
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
	if(#RouteName=="c"){
		$GameName="c2405フウリ.nss";//★エンディング中（c）
	}else if(#RouteName=="d"){
		$GameName="d2404沙紅羅.nss";//★エンディング中（d）
	}
}


scene c2404沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="400">
////////////header////////////
//file name "c2404沙紅羅.nss"
//title ""
//previous "c2403沙紅羅_似鳥_フウリ.nss"
//previous "d2403似鳥_ノーコ.nss"

////////////footer////////////
//next （"flkagome3" = false）"c2405フウリ.nss"
//next （"flkagome4" = false）"d2404沙紅羅.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);


//◆場所：半田明神_社務所

	CreateTextureSP("背景", 10, @0, @0, "cg/img/img花火.jpg");
	CreatePlainSP("揺用", 50);

	CreateSE("SE", "seガヤ_大歓声_l");
	MusicStart("SE", 1000, 600, 0, 1000, null,true);

	CreateSE("SE02", "se環境_花火02");
	MusicStart("SE02", 0, 700, 0, 1000, null,true);

//	SetBlur("揺用", true, 1, 500, 100, false);

	MoveFTP1("@揺用",2500,8,4);

	fireworks_set(300);

	DrawDelete("上背景", 300, 100, null, "slide_02_01_0", true);


//あきゅん「修正指示：新年感だして、盛り上がりなど」
//あきゅん「修正指示：背景は花火」
//★inc櫻井　修正

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c24/040100010skr">
「うおおお……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c24/040100020skr">
「すごく……綺麗な……花火だ！
　なあ、ミヅハ？　見てるか？」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c24/040100030skr">
「おい、ミヅハってば！」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/c24/040100040mhn">
「うむ、もちろん――見ておるぞ」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c24/040100050skr">
「ん？　今のはミヅハの声――？」

//あきゅん「修正指示：ここでミヅハだしてしまうのはやぼ」
//★inc櫻井　修正

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/c24/040100060mhn">
「正確には、ミヅハノメ……じゃ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//あきゅん「修正指示：上までパンし過ぎ、調整」
//★inc櫻井　修正
//★　inc櫻井　サクラがじろじろとミヅハノメを見ている、と想定して。


//	SoundPlay("@xbgm15", 1000, 450, true);

	SoundPlay("@xbgm18", 1000, 450, true);

	SetVolumeEX("SE*", 2000, 0, null);

	SceneOut(6000, 500, "slide_02_01_0");

	//★徒歩：フラグ修正
	if(#RouteName=="d"){
		OnBG(10, "bg0604212半田明神_社務所_雪");
	}else{
		OnBG(10, "bg0604112半田明神_社務所_通常");
	}

	FadeBG(0, true);
	Delete("揺用");
	Delete("@NutFTP1");

	fireworks_Delete(0,true);

	St("C",700, @0, @0,"l/stミヅハノメ_通常_normal_l");
	Zoom("@StNameC/C*", 0, 1000, 1000, null, false);
	Request("@StNameC/C*", Smoothing);


	//★徒歩：フラグ修正
	if(#RouteName=="d"){
		CreateTextureEX("背景アップ３", 100, @-400, @-600, "cg/bg/l/bg0604200半田明神_社務所_雪_l.jpg");
		#bg0604200半田明神_社務所_雪 = true;
	}else{
		CreateTextureEX("背景アップ３", 100, @-400, @-600, "cg/bg/l/bg0604100半田明神_社務所_通常_l.jpg");
	}

	SetShade("背景３", SEMIHEAVY);
	Request("背景アップ３", Smoothing);
	Fade("背景アップ３", 0, 1000, DxlAuto, false);
	Delete("揺用");

	Wait(16);

	Move("背景アップ３", 6500, @0, 56, Dxl1, false);
	Move("@StNameC/C*", 6500, @0, 0, null, false);
	FadeSt("C",0,true);

	St("R",50, 175, @0,"stミヅハノメ_通常_normal");
	FadeSt("R",0,true);

	SceneIn(500, "slide_02_01_1");
	Fade("白2", 500, 0, DxlAuto, true);

	Wait(3000);
	Fade("背景アップ３", 3500, 0, DxlAuto, false);
	DeleteSt("C", 3500,true);





//★inc櫻井　別れ前の静かなシーンなのでガヤ音音量少なめで
//※下倉注：もう少しミヅハノメ登場シーンのインパクトが必要なのでここから一連エンディングＢＧＭで

//	CreateSE("静ガヤ", "seガヤ_交通少_l");
//	MusicStart("静ガヤ", 1000, 0, 0, 1000, null,true);




//★inc櫻井　少し待つ
	Wait(1500);


{	ClockPass(2401);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c24/040100070skr">
「す、すげえ！
　ほ……ホントに、大人になってる！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c24/040100080skr">
「っていうか……スタイルいいなあ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	DeleteSt("R", 200,true);}

	FadeDelete("背景",1000,null,false);
	FadeDelete("立ち絵",1000,null,true);

{	St("MR",700, @0,@0,"buミヅハノメ_通常_smile");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/c24/040100090mhn">
「はっはっは！　神の力を甘く見るでない！」

{	DeleteSt("MR",200,false);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c24/040100100kms">
「ミヅハノメ様……」

{	St("ML",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c24/040100110kms">
「帰って……いらっしゃったのですね……」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/c24/040100120mhn">
「うむ。アザナエルの呪いも無事に解けた。
　これでわらわもようやく、任を解かれる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu歌門_通常_think");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c24/040100130kms">
「ということは、とうとう……？」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/c24/040100140mhn">
「星よ。世話になったの」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu歌門_通常_think");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c24/040100150kms">
「いえ、そんな……私の方こそ、ご無礼を――」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミヅハノメ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/c24/040100160mhn">
「今、この瞬間になってようやくわかったよ。
　おぬしがわらわを人間に近づけさせなかった理由がな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("MR",700, @0,@0,"buミヅハノメ_通常_sad");
	GodFadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/c24/040100170mhn">
「人との別れとは、辛いものなのじゃのう……」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/c24/040100180mhn">
「おぬしとの別れだけでも、胸が張り裂けんばかりだというのに」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c24/040100190kms">
「そんな……身に余る、お言葉……」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c24/040100200skr">
「でもよ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c24/040100210skr">
「人は、人を好きになることを、やめられない。
　例えその先に、悲しみが待っていても」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c24/040100220skr">
「そういうもんなんだよ」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buミヅハノメ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/c24/040100230mhn">
「そういう……ものなんじゃな」

{	St("MR",700, @0,@0,"buミヅハノメ_通常_normal");
	GodFadeSt("MR",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/c24/040100240mhn">
「……沙紅羅、ありがとう」

{	St("MR",700, @0,@0,"buミヅハノメ_通常_smile");
	GodFadeSt("MR",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/c24/040100250mhn">
「わらわは、おぬしらに会えて本当によかった」

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c24/040100260skr">
「アタシもだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//背景・キャラ拡大
//★inc櫻井　修正　こちら、ジャギ等出ない程度に拡大していますが
//ジャギ感は個人差後があるかと思われますので、可能でしたら後ほど大きめの画像に差し替えていただけますでしょうか。

	SetVolume("静ガヤ", 1000, 0, null);

//	SoundPlay("@xbgm15", 1000, 450, true);

	//★徒歩：フラグ修正
	if(#RouteName=="d"){
		CreateTextureEX("背景", 100, -1500, -336, "cg/bg/l/bg0604200半田明神_社務所_雪_l.jpg");
		#bg0604200半田明神_社務所_雪 = true;
	}else{
		CreateTextureEX("背景", 100, -1500, -336, "cg/bg/l/bg0604100半田明神_社務所_通常_l.jpg");
	}

	Zoom("背景", 0, 1500, 1500, null, true);
	SetShade("背景", SEMIHEAVY);
	CreateTextureEX("立ち絵01", 2500, -264, -518, "cg/fu/fuミヅハノメ_通常_normal.png");
	Fade("背景", 1000, 1000, null, false);
	Fade("立ち絵01", 1000, 1000, null, true);
	DeleteSt("C",0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/c24/040100270mhn">
「どれ……そろそろ時間じゃの」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c24/040100280skr">
「そうか……
　向こうに行っても、達者で暮らせよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

	CreatePlainSP("消し", 2600);

	CreateTextureEX("立ち絵02", 2500, -264, -518, "cg/fu/fuミヅハノメ_通常_smile.png");
	Fade("立ち絵02", 0, 1000, null, true);
	FadeDelete("立ち絵01",0,Axl2,true);

	FadeDelete("消し", 300, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/c24/040100290mhn">
「うむ！」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c24/040100300kms">
「ミヅハノメ様っ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

	CreateTextureEX("立ち絵03", 2500, 250, -75, "cg/fu/fu歌門_通常_think.png");
	CreateTextureEX("立ち絵04", 2500, -264, -518, "cg/fu/fuミヅハノメ_通常_sad.png");

	Move("立ち絵03", 0, -524, @0, null, true);

	Move("立ち絵02", 1000, 512, @0, Dxl3, false);
	Move("背景", 1000, -800, @0, Dxl3, false);
	Move("立ち絵03", 1000, 250, @0, Dxl3, false);
	Fade("立ち絵03", 500, 1000, null, false);
	FadeDelete("立ち絵02",500,null,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c24/040100310kms">
「どうか……どうか……」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c24/040100320kms">
「向こうへ行っても、私といたことを、忘れずに――」


{	Move("立ち絵04", 0, 524, @0, null, true);
	Move("立ち絵03", 1000, -512, @0, Dxl3, false);
	Move("背景", 1000, -1500, @0, Dxl3, false);
	Move("立ち絵04", 1000, -264, @0, Dxl3, false);
	Fade("立ち絵04", 500, 1000, null, false);
	FadeDelete("立ち絵03",500,null,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/c24/040100330mhn">
「忘れるものか！」


//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/c24/040100340mhn">
「忘れて……忘れて、なるものか……」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/c24/040100350mhn">
「おぬしは……わらわの、最愛の者じゃ……！」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c24/040100360kms">
「ミヅハノメ様……」

{	FadeDelete("立ち絵*",500,null,false);
	FadeDelete("背景*",500,null,true);
	St("C",700, @0, @0,"stミヅハノメ_通常_normal");
	FadeSt("C",200,true);
	}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/c24/040100370mhn">
「では、さらばじゃ皆の衆！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//あきゅん「修正指示：ミヅハノメの退場をもっと心象的に迫力付けて」

	DeleteAllSt(200,true);

	CreateTextureEX("絵st100", 1000, -198, -206, "cg/st/l/stミヅハノメ_通常_normal_l.png");

//	St("C",700, @0, @600,"l/stミヅハノメ_通常_normal_l");
//	Zoom("@StNameC/C*", 0, 1000, 1000, null, false);
//	Request("@StNameC/C*", Smoothing);

	//★徒歩：フラグ修正
	if(#RouteName=="d"){
		CreateTextureEX("背景アップ３", 100, @-400, @0, "cg/bg/l/bg0604200半田明神_社務所_雪_l.jpg");
		#bg0604200半田明神_社務所_雪 = true;
	}else{
		CreateTextureEX("背景アップ３", 100, @-400, @0, "cg/bg/l/bg0604100半田明神_社務所_通常_l.jpg");
	}

	SetShade("背景３", SEMIHEAVY);
	Request("背景アップ３", Smoothing);
	Fade("背景アップ３", 1000, 1000, DxlAuto, false);

	Wait(16);

	Move("背景アップ３", 30000, @0, -56, Dxl1, false);
	Move("絵st100", 1000, @0, -266, Dxl1, false);
	Fade("絵st100", 1000, 1000, null, true);

	mizuha_flash();

//	CreateColorEXadd("白", 15000, WHITE);
//	Fade("白", 15000, 600, null, false);

	CreateSE("消滅", "se擬音_光り輝く01");
	MusicStart("消滅", 400, 400, 0, 1000, null,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/c24/040100380mhn">
「わらわはいつでも、おぬしらを空から見守っておるぞ！」


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c24/040100390kms">
「さようなら――ミヅハノメ様！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	CreateColorEXadd("フラッシュ白", 15000, "WHITE");


	SetVolume("消滅", 500, 700, null);

	Fade("フラッシュ白",300,1000,null,false);
	DrawTransition("フラッシュ白", 500, 0, 1000, 100, null, "cg/data/zzex_circle_01_00_1.png", true);

	Delete("絵st100");
	mizuha_flashDelete();

	CreateTextureEXadd("絵背景100", 300, Center, Middle, "cg/ef/ef044_火花c.png");
	Fade("絵背景100", 0, 1000, null, true);
	Request("絵背景100", Smoothing);


	CreateSE("SE01","se擬音_光迸る");

	SetVolume("消滅", 500, 0, null);
	MusicStart("SE01",0,700,0,1000,null,false);

	Rotate("絵背景100", 3500, @0, @0, 500000, null,false);

	DrawTransition("フラッシュ白", 500, 1000, 0, 100, null, "cg/data/zzex_circle_01_00_0.png", true);

	Wait(1000);

	Zoom("絵背景100", 1000, 3000, 3000, Axl1, false);

	Wait(300);

//ここでパン
//さくらの立ち絵は表示せず
	CreateColorSP("絵白幕", 5000, "WHITE");
	DrawTransition("絵白幕", 300, 0, 1000, 100, Dxl1, "cg/data/slide_03_01_1.png", true);
	Delete("フラッシュ白");
	Delete("絵背景100");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c24/040100400skr">
「あばよ！　ミヅハッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//★inc櫻井　ミヅハノメが空に帰る。


	SetVolume("SE*", 1000, 0, null);
//	SetVolume("@xbgm*", 1000, 0, null);

	Delete("背景アップ３");
	Delete("立ち絵*");
	Delete("背景");
	Delete("白");

	CreateTextureEX("背景", 10, @0, @0, "cg/img/img花火.jpg");
	Fade("背景", 0, 1000, null, true);

	CreateSE("花火02", "se環境_花火02");

	Wait(1000);

	MusicStart("花火02", 0, 700, 0, 1000, null,false);
	fireworks_set(300);
	FadeDelete("絵白幕",1000,null,true);

	Wait(1500);

	SetVolume("花火02", 1000, 0, null);

	CreateColorEX("絵黒", 30000, "WHITE");
	Fade("絵黒",1000,1000,null,true);

	fireworks_Delete(0,true);
	Delete("背景*");

	EndScene();

}
