
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene baa2300沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss_MAIN
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
	$GameName = "baa2330似鳥_ノーコ_h.nss";//★エンディングへ（baa）
}

scene baa2300沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="990">
////////////header////////////
//file name "baa2300沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss"
//title "全員集合！"
//previous "ba2300カゴメアソビ.nss"
//previous "ab2210フウリ.nss"


////////////footer////////////
//next "baa2330似鳥_ノーコ_h.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2300);}

//◆場所：あにのあな_屋上

	CreateTextureSP("サクラ", 160, Center, Middle, "cg/ev/ev2250沙紅羅銃構え.jpg");

	OnBG(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);

	CreateSE("SE心臓音","se人体_鼓動_l");
	MusicStart("SE心臓音",0,1500,0,1000,null,true);


	CreateTextureSP("背景アップ用", 150, 0, 0, "cg/BG/bg0303100あにのあな_屋上_通常.jpg");
	Zoom("背景アップ用", 0, 1400, 1400, null, false);
//	Fade("背景アップ用", 0, 1000, null, true);
	FadeDelete("上背景", 0, null, true);

	Wait(500);


//◆演出指示：成功演出

//★ wam井野 bab2300沙紅羅_千秋_恵那_似鳥_ノーコ.nss の冒頭スクリプトをコピーしています。

	if($PreGameName == "ba2300カゴメ.nss"){
	MusicStart("@xbgm14",0,450,0,1000,null,true);
	}

//◆場所：あにのあな_屋上

	CreateTextureSP("サクラ", 2000, Center, Middle, "cg/ev/ev2250沙紅羅銃構え.jpg");

	OnBG(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);

	CreateTextureSP("背景アップ用", 100, 0, 0, "cg/BG/bg0303100あにのあな_屋上_通常.jpg");
	Zoom("背景アップ用", 0, 1400, 1400, null, false);
//	Fade("背景アップ用", 0, 1000, null, true);
	FadeDelete("上背景", 0, null, true);

	Wait(500);

//◆演出指示：失敗演出


	CreateWindowEX("左サクラ", 0, 0, 512, 576, false);
	Zoom("左サクラ", 0, 0, 1000, null, true);
	CreateTextureEX("左サクラ/背景", 200, Center, Middle, "cg/ev/ev2250沙紅羅銃構え.jpg");

	CreateWindowEX("右タヌキ", 512, 0, 512, 576, false);
	Zoom("右タヌキ", 0, 0, 1000, null, true);
	CreateTextureEX("右タヌキ/背景", 200, Center, Middle, "cg/ev/ev2220太四郎ビル大破壊d.jpg");

	SetAlias("左サクラ/サクラ","左サクラ/サクラ");
	SetAlias("右タヌキ/タヌキ","右タヌキ/タヌキ");

	Move("左サクラ/サクラ", 0, 0, 0, null, true);
	Move("右タヌキ/タヌキ", 0, 0, 0, null, true);
	Zoom("右タヌキ", 0, 1000, 1000, null, true);
	Zoom("左サクラ", 0, 1000, 1000, null, true);

	SetBlur("左サクラ/背景", true, 2, 200, 100);
	Request("左サクラ/背景", Smoothing);

//あきゅん「演出：↓動作を安定させるために少し待ちます」
	Wait(16);

	Move("サクラ", 200, -500, @0, AxlDxl, false);
	Move("左サクラ/背景", 200, -636, 178, AxlDxl, false);
	Move("右タヌキ/背景", 200, 280, @0, AxlDxl, false);
	Zoom("左サクラ/背景", 200, 1700, 1700, AxlDxl, false);

	Fade("サクラ", 250, 0, DxlAuto, false);
	Fade("左サクラ/背景", 300, 1000, DxlAuto, false);
	Fade("右タヌキ/背景", 300, 1000, DxlAuto, true);
	Delete("サクラ");

	Wait(500);

//	CreateClipTexture("絵イベント１", 200, 0, 0, 0, 0, 1024, 576, "SCREEN");
	CreatePlainEX("絵イベント１", 200);
	SetAlias("絵イベント１","絵イベント１");
//	KagomeColorSet("絵カゴメカラー",300,"fdf202");
//	Fade("絵カゴメカラー", 300, 1000, null, false);
	SetShade("絵イベント１", SEMIHEAVY);
//	SetTone("絵イベント１", Monochrome);

	St("C",19010, 800, -1039,"fu沙紅羅_銃構え");
	Rotate("@StNameC/C*", 0, @0, @180, @0, null, true);
	Zoom("@StNameC/C*", 0, 1700, 1700, AxlAuto, true);
	Request("@StNameC/C*", Smoothing);

	CreateSE("SE03","se銃_銃声01");
	CreateColorEXadd("白", 20000,"WHITE");

//あきゅん「演出：↓動作を安定させるために少し待ちます」
	Wait(16);

	Fade("絵イベント１", 500, 1000, null, false);
	Move("@StNameC/C*", 1300, -1053, -1039, AxlDxl, false);
	FadeSt("C",1300,true);

	Delete("左サクラ/背景");
	Delete("右タヌキ/背景");

	Wait(1500);

//	Fade("絵カゴメカラー", 300, 0, null, false);
	Fade("絵イベント１", 300, 0, null, false);
	Zoom("@StNameC/C*", 300, 600, 600, null, false);
	Move("@StNameC/C*", 300, -1015, -387, null, false);
	Zoom("背景アップ用", 300, 1000, 1000, null, false);

	Wait(1000);
	//CreateSE("SE03","se銃_銃声01");

//あきゅん「β演出：サウンドエコーカット」
	SetVolumeEX("@xbgm*", 300, 0, null);
	SetVolumeEX("SE心臓音", 1000, 0, null);
	MusicStart("SE03",0,1200,0,1000,null,false);
	Wait(880);

	//CreateColorSPadd("白", 15000,"WHITE");
	Fade("白", 0, 1000, null, true);
	Wait(1500);
	DeleteSt("C", 0,false);

	Fade("白", 1500, 0, null, true);
	St("C",19010, @0,@0,"fu沙紅羅_通常_pinch");
	FadeSt("C",300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/000100010skr">
「――――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//★ inc久保田 pre分けしました

	TextBoxDelete(150);

	CreateColorEXadd("赤", 15000,"RED");
	CreateTextureEX("タヌキ", 200, Center, Middle, "cg/ev/ev2220太四郎ビル大破壊d.jpg");

	CreateSE("SE03","se動物_タヌキ_化ける03");
	CreateSE("SE03a","se擬音_光迸る");

	MusicStart("SE03",0,700,0,1000,null,false);
	MusicStart("SE03a",0,700,0,1000,null,false);
	Zoom("タヌキ", 0, 2500, 2500, null, true);
	Request("タヌキ", Smoothing);
	Move("タヌキ", 0, @0, -385, Dxl1, true);
	Shake("タヌキ", 3400, 5, 0, 0, 0, 500, Dxl1, false);
	Move("タヌキ", 3400, @0, 250, Dxl1, false);
	DeleteSt("C", 300,false);
	Fade("タヌキ", 1500, 1000, DxlAuto, false);
	Fade("赤", 3400, 1000, null, true);

	Fade("背景アップ用", 0, 0, null, true);

	SetVolumeEX("SE*", 1000, 0, null);

	Wait(500);
	CreateColorEXadd("金1", 15000,"ffff00");
	Fade("金1", 5000, 1000, null, false);
	Fade("赤", 5000, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/baa23/000100020tsr">
「――――――ぁ――ぁ――ぁ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Kagome_AllEffect_Set(3000);

	CreateTextureEX("絵背景1", 100, Center, Middle, "cg/bg/bg0108400秋葉原_俯瞰_崩壊.jpg");
	CreateColorSPadd("金", 120,"ffff00");
	CreateColorSPadd("白", 110,"WHITE");
	DrawTransition("白", 0, 50, 100, 700, null, "cg/data/circle_02_00_0.png", false);
	DrawTransition("金", 0, 50, 100, 700, null, "cg/data/circle_01_00_0.png", true);
	SetShade("金", HEAVY);
	CreateSE("SE04","se擬音_光り輝く02");
	MusicStart("SE04",0,700,0,1000,null,false);
	Fade("絵背景1", 0, 1000, Dxl3, false);
	Fade("金1", 1000, 0, null, false);
	Fade("タヌキ", 1000, 0, DxlAuto, true);


	Wait(2000);

	CreateSE("SE01","se戦闘_爆破水しぶき");
//	CreateSE("SE00","se擬音_カゴメアソビ成功");
//	MusicStart("SE00",0,1400,0,1000,null,false);
	Kagome_AllEffect_Start();
	Wait(3000);


	CreateColorEXadd("白2", 20000,"WHITE");
	MusicStart("SE01",1000,700,0,1200,null,false);
	SetFrequency("SE01", 3000, 1150, DxlAuto);

	Kagome_AllEffect_Delete(3000);

	Wait(2000);

	Fade("白2", 0, 1000, null, true);
	DrawTransition("白2", 300, 0, 1000, 1000, null, "cg/data/circle_02_00_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011a]
　願いが、眉間を撃ち抜いた。

　大狸は金色の光を放ち、消えた。


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	Delete("赤");
	Delete("タヌキ");
	Delete("金");
	Delete("白");
	Delete("絵背景1");
	Delete("金1");

	Wait(3000);


//◆時間：ジャンプ
{	ClockPass(2304);}

//◆場所：スパコン館_裏面_廃墟
	OnBG(10,"bg1101500スパコン館_裏面_廃墟");
	FadeBG(0,true);

	CreateTextureEX("背景アップ", 100, -295, -24,"cg/bg/bg1101500スパコン館_裏面_廃墟.jpg");
	Fade("背景アップ", 0, 1000, DxlAuto, false);
	Zoom("背景アップ", 0, 1600, 1600, null, false);
	Move("背景アップ", 30000, 305, @0, null, false);

	St("L",700, -895,-270,"bu貫太_通常_lost");
	Zoom("@StNameL/L*", 0, 1600, 1600, null, false);
	FadeSt("L",0,true);
	Move("@StNameL/L*", 30000, 305, @0, null, false);

	Request("@StNameL/L*", Smoothing);
	Request("背景アップ", Smoothing);

	SetVolumeEX("SE*", 3000, 0, null);

	CreateSE("SEL01","se環境_風_l");
	MusicStart("SEL01",2000,700,0,1000,null,true);

	Fade("白2", 1000, 0, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]



//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/000100030okt">
「………………」

　廃墟の瓦礫の真ん中で――


　男は、呆然と立ち尽くしている。



//◆ＳＥ：足音が近づく




{
//	DeleteAllSt(200,false);
	
	CreateSE("SE01","se動作_歩く04_l");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(3000);

	SetVolumeEX("SE01", 100, 0, NULL);

//	St("ML",700, @-50,@0,"bu沙紅羅_通常_sad");
//	Move("@StNameML/ML*", 500, @50, @0, Dxl2, false);
//	FadeSt("ML",500,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/000100040skr">
「辛かったな」

{
//	St("ML",150,@0,@0,"bu沙紅羅_通常_sad");
//	FadeSt("ML",0,true);
	DeleteSt("L", 3000,false);
	Fade("背景アップ", 3000, 0, DxlAuto, false);

	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_横向き_sad");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/000100050okt">
「君が――」

{	St("MR",700, @0,@0,"bu貫太_通常_sad");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/000100060okt">
「――救ってくれたのか？」

{	DeleteAllSt(200,false);
	St("ML",700, @-80,@0,"bu沙紅羅_通常_normal");
	Move("@StNameML/ML*", 2000, @80, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/000100070skr">
「もしもアンタが救われたなら」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/000100080skr">
「それは、アンタが救われたいと願ったからだ」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/000100090skr">
「それに、まだ救われたとは限らねぇぞ。
　むしろ、辛いのはこれからだ」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_横向き_sad");
	FadeSt("MR",200,true);
}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/000100100okt">
「…………」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/000100110skr">
「おいおい、そんな顔すんなって！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_通常_sad");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/000100120okt">
「自分の本性が出ると、こうなんだ」


//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/000100130okt">
「だから、いつも誰かの真似をして。
　自分をひた隠しにし続けてきたんだけど――」


//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/000100140okt">
「今回は、ダメだった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]

{	DeleteAllSt(200,false);
	St("ML",700, @-50,@0,"bu双六a_通常_pinch");
	Move("@StNameML/ML*", 1000, @50, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/baa23/000100150ksr">
「しかし、大したことをしてくれたもんだぜ」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_通常_sad");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/000100160okt">
「……すみません」


//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/000100170okt">
「この借りは、一生かけてでも――」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/baa23/000100180ksr">
「よかったんじゃねぇの？」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_通常_lost");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/000100190okt">
「え……？」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_smile");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/baa23/000100200ksr">
「きっとこの街に、必要なことだったんだよ。これが」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2305);}

//	TextBoxDelete(150);
	SetVolumeEX("SE03", 2000, 0, NULL);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	DeleteAllSt(200,false);
	St("L",700, @-50,@0,"buみそa_オラオラ_happy");
	Move("@StNameL/L*", 300, @50, @0, Dxl2, false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/baa23/000100210mso">
「そうですよ姐さん！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/000100220skr">
「みそ、ブー」

{	DeleteAllSt(200,false);
	St("R",700, @50,@0,"buブーa_オラオラ_happy");
	Move("@StNameR/R*", 300, @-50, @0, Dxl2, false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/baa23/000100230buu">
「これも天のお導きってやつです！
　オレたちには理解できない、深ーい理由が……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	DeleteAllSt(200,false);
	St("ML",700, @-50,@0,"bu平次_通常_angry");
	Move("@StNameML/ML*", 300, @50, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/baa23/000100240fjh">
「オレは、そうは思わねぇぞ」


{	SetVolumeEX("@SE*", 2000, 0, NULL);
	MusicStart("@xbgm25",0,450,0,1000,null,true);

	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/baa23/000100250fjh">
「てめぇのせいでどれだけの被害が出たと思ってる？」

{	St("ML",700, @0,@0,"bu平次_通常_cool");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/baa23/000100260fjh">
「不幸中の幸いは、避難が済んで、死者がひとりも出なかったってことくらいか――」

{	DeleteAllSt(200,false);
	St("ML",700, @-50,@0,"bu恵那_哀愁_shock");
	Move("@StNameML/ML*", 300, @50, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/000100270fje">
「え？　え？　え？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_横向き_normal");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/000100280okt">
「ん……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]


{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/baa23/000100290kit">
「貫太さん……？」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_ハルヒ_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/000100300fje">
「貫太さんだったんですか！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_通常_normal");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/000100310okt">
「ああ」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/000100320fje">
「そうか……そうだったんですか……」

{	St("ML",700, @0,@0,"bu恵那_一休_shy");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/000100330fje">
「あの……その、ええと……
　ってことは貫太さんはタヌキってことで……」



{	St("ML",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/000100340fje">
「あの時私を救ってくれたのは、やっぱり貫太さん！？」




{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_通常_lost");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/000100350okt">
「ああ……そうか」

{	St("MR",700, @0,@0,"bu貫太_通常_normal");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/000100360okt">
「うん。そうだったかな」



{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu平次_通常_angry");
	Shake("@StNameL/L*", 300, 10, 0, 0, 0, 500, null, false);
	FadeSt("L",200,true);
}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/baa23/000100370fjh">
「オイ！　なにごちゃごちゃ言ってやがんだ！」

{	St("L",700, @0,@0,"bu平次_御用だ_angry");
	FadeSt("L",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/baa23/000100380fjh">
「悪いが貫太。
　おまえには、しばらく塀の中で――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2306);}


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]


{	DeleteAllSt(200,false);
	St("MR",700, @50,@0,"bu村崎_通常_cry");
	Move("@StNameMR/MR*", 300, @-50, @0, Dxl2, false);
	FadeSt("MR",200,false);
	Zoom("@StNameMR/MR*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameMR/MR*", 100, 1000, 1000, Axl2, true);
}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/baa23/000100390msi">
「そそ、そんな殺生な！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu平次_通常_cool");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/baa23/000100400fjh">
「村崎――？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu村崎_通常_cry");
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/baa23/000100410msi">
「織田君！
　私と一緒にもう一度、商売しましょう！」


//【村崎勇】
{	St("MR",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("MR",200,true);}
<voice name="村崎勇" class="村崎勇" src="voice/baa23/000100420msi">
「確かにあなたは大変なことをしましたが、なあに、人を殺したワケじゃない」

{	St("MR",700, @0,@0,"bu村崎_通常_pinch");
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/baa23/000100430msi">
「これから、私と一緒に秋葉原復興を――」



{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu平次_落ち込み_sad");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/baa23/000100440fjh">
「ああ、おまえら昔の知り合いだもんな」

{	St("ML",700, @0,@0,"bu平次_通常_cool");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/baa23/000100450fjh">
「けど、罪は罪。わかるだろ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]


{	DeleteAllSt(200,false);
	St("MR",700, @50,@0,"buミヅハ_手構え_hard");
	Move("@StNameMR/MR*", 300, @-50, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/baa23/000100460mzh">
「やめてくれ！　わらわが全ての元凶なのじゃ！」

{	St("MR",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/baa23/000100470mzh">
「アザナエルは欲望をもたらし、破滅を招く。
　常人には到底捌けぬ代物じゃ」


{	St("MR",700, @0,@0,"buミヅハ_ダウナー_sad");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/baa23/000100480mzh">
「世に出してしまったわらわこそ、今回の事件の元凶」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu平次_落ち込み_sad");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/baa23/000100490fjh">
「ミヅハ……」

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/baa23/000100500fjh">
「気持ちはわかるが、オレも警官だ。
　見逃すわけにはいかねぇんだよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteAllSt(200,false);
	St2("L",700, @0,@0,"bu恵那_哀愁_disco","cg2/",".png");
	FadeSt("L",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/000100510fje">
「貫太さんは……私の命の恩人なの」


{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu平次_通常_hard");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/baa23/000100520fjh">
「恩人……？　ああ、そうか……」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("L",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/000100530fje">
「小さいころ、車に轢かれそうになった私を助けてくれたのが、貫太さんだもの」


{	St("L",700, @0,@0,"bu恵那_哀愁_fear");
	FadeSt("L",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/000100540fje">
「お願いこの通り！
　私の恩人を、助けてあげて！」


{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu平次_落ち込み_pain");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/baa23/000100550fjh">
「ああ、なんなんだよ！　みんなして！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2307);}


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]

{	St("C",700, @0,@0,"bu平次_通常_pain");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/baa23/000100560fjh">
「こればっかりは、いくらおまえに嫌われても、曲げるわけにはいかねぇ」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/baa23/000100570fjh">
「仕事に、私情を挟むわけにはいかねぇんだ！」

{	SetVolumeEX("@x*", 2000, 0, NULL);
	DeleteAllSt(200,false);
	St("C",19010, @0,@0,"fu恵那_哀愁_worry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/000100580fje">
「…………」

{
	SetVolumeEX("SE*", 1000, 0, null);
	SoundPlay("@xbgm08_noint",0,450,true);

	St("C",19010, @0,@0,"fu恵那_一休_pride");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/000100590fje">
「……ふふふ、ふふふふふふ！」

{	St("C",19010, @0,@0,"fu恵那_一休_surprise");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/000100600fje">
「仕事内容に反さなきゃ、見逃しても問題ないわけね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu平次_通常_cool");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/baa23/000100610fjh">
「は？　どういう意味だ？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("L",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/000100620fje">
「だから、父さんの仕事はあくまでも人間の犯罪者を捕まえることでしょ」

{	St("L",700, @0,@0,"bu恵那_通常_smile");
	FadeSt("L",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/000100630fje">
「タヌキを捕まえるのは、父さんの仕事じゃない」

{	St("L",700, @0,@0,"bu恵那_通常_think");
	FadeSt("L",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/000100640fje">
「それともタヌキを、裁判にかける？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu平次_通常_hard");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/baa23/000100650fjh">
「…………むぅ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolumeEX("@x*", 2000, 0, NULL);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]

{	St("C",700, @0,@0,"bu平次_通常_pain");
	FadeSt("C",200,true);
}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/baa23/000100660fjh">
「ああ、ったく！
　てめぇらがそこまで言うなら、しょうがねぇ！！」

{	St("C",700, @0,@0,"bu平次_通常_cool");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/baa23/000100670fjh">
「いいか、貫太。
　これからちゃーんと、復興で恩返しするんだぞ」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"bu貫太_通常_lost");
	FadeSt("R",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/000100680okt">
「本当に……いいのか？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu平次_通常_smile");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/baa23/000100690fjh">
「いいに決まってんだろ！」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/baa23/000100700fjh">
「あそこで弾が出なくて、おまえの願いが叶ったってことは、たぶん、神様が許してくれたってことだろうよ」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"bu貫太_横向き_sad");
	FadeSt("R",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/000100710okt">
「――僕の、願い」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2308);}


//	TextBoxDelete(150);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/000100720wfu">
「――えへ」

{


//収納
	WindowAXLZoom("絵窓", "Y",200, 0, Axl2, true);
	Delete("@絵窓*");

	DeleteAllSt(200,false);
	St("R",700, @0,@0,"bu貫太_通常_lost");
	FadeSt("R",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/000100730okt">
「あ、この声――」

{	DeleteAllSt(200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/000100740wfu">
「夢を、見ました」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	CreateTextureEX("絵背景100", 1000, -800, -180, "cg/bg/l/bg2201100屋島_古戦場_通常_l.jpg");
	CreateColorEXadd("白", 15000,"WHITE");

	Move("絵背景100", 60000, 0, @0, Dxl2, false);
	Fade("白", 1000, 1000, null, true);
	Fade("絵背景100", 0, 1000, null, true);
	Fade("白", 3000, 0, null, false);
	MusicStart("@xbgm28",0,450,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]


//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/000100750wfu">
「遠く……遠く……」


//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/000100760wfu">
「ふるさとの村で、古戦場から海を見下ろして」

{
//	St("ML",700, @0,@0,"buフウリ_胸手_shy");
//	FadeSt("ML",200,true);
}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/000100770wfu">
「私はどこまでも、あなたについていくって誓いました」


{
	Fade("白", 1000, 1000, null, true);
	Fade("絵背景100", 0, 0, null, true);
	Fade("白", 2000, 0, null, false);

	CreateSE("SE01","se動作_足踏み");
	MusicStart("SE01",0,700,0,1000,null,false);


	St("C",19010, @-100,@0,"fuフウリ_通常_angry");
	Move("@StNameC/C*", 500, @100, @0, Dxl2, false);
	FadeSt("C",1000,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/000100780wfu">
「だから――もう、離しません！」

{	St("C",19010, @0,@0,"fuフウリ_前のめり_hard");
	FadeSt("C",500,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/000100790wfu">
「貫太さん！」

{
	DeleteAllSt(1000,false);
	Fade("白", 1000, 0, null, false);

//	St("ML",710, @0,@0,"buフウリ_胸手_shy");
//	St("MR",700, @0,@0,"bu貫太_通常_smile");
//	FadeSt("ML",200,false);
//	FadeSt("MR",200,true);

}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/000100800okt">
「フウリ……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//★ wam井野 ここもbab2300沙紅羅_千秋_恵那_似鳥_ノーコ.nssからいただいています。

//◆場所：秋葉原_上空


	Wait(2000);


	CreateColorEX("黒２", 5000,"BLACK");
	Fade("黒２", 2000, 1000, null, true);



//	ClearWaitAll(2000, 1000);
	Wait(1000);

	CreateColorEX("黒", 15000,"BLACK");

	Fade("黒", 0, 1000, null, true);

//	SetVolumeEX("@x*", 2000, 0, NULL);

	Delete("黒２");

	DeleteAllSt(200,false);
	CreateTextureEX("空", 10, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");
	Fade("空", 0, 1000, null, true);

	CreateWindowEX("左にとり", 100, 0, 242, 576, false);
	CreateTextureEX("左にとり/背景", 200, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");

	CreateWindowEX("右ノーコ", 680, 0, 242, 576, false);
	CreateTextureEX("右ノーコ/背景", 200, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");

	Fade("左にとり/背景", 1000, 1000, null, false);
	Fade("右ノーコ/背景", 1000, 1000, null, false);

	CreateAXLWindowEX("絵演窓", "X", 2000, 102, 242, false);
	CreateAXLWindowEX("絵演窓２", "X", 2000, 682, 242, false);

	WindowAXLZoom("絵演窓２", "X", 0, 0, null, true);
	WindowAXLZoom("絵演窓", "X", 0, 0, null, true);
	CreateTextureSP("絵演窓/Ｗニトリ", 1050, -969, -310, "cg/bu/bu似鳥堕皇_通常_normal.png");
	CreateTextureSP("絵演窓２/Ｗノーコ", 1050, 475, 4, "cg/bu/buノーコa_通常_normal.png");
	Wait(32);


	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg0108400秋葉原_俯瞰_崩壊.jpg");
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	Request("絵背景100", Smoothing);
	Fade("絵背景100", 0, 1000, Dxl3, true);
	Fade("黒", 2000, 0, null, false);
	Zoom("絵背景100", 10000, 1000, 1000, Dxl3, false);

	WindowAXLZoom("絵演窓", "X", 500, 1000, null, false);
	WindowAXLZoom("絵演窓２", "X", 500, 1000, null, true);


{	ClockPass(2309);}

	Wait(1000);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]


{
//	St("MR",700, @0,@0,"buノーコa_通常_normal");
//	FadeSt("MR",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/000100810nko">
「よかった……」


{
//	DeleteAllSt(200,false);
//	St("ML",700, @0,@0,"bu似鳥堕皇_通常_normal");
//	FadeSt("ML",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/000100820nki">
「ああ。無事、生き返ったもんな」

{
//	DeleteAllSt(200,false);
//	St("MR",700, @0,@0,"buノーコa_通常_normal");
//	FadeSt("MR",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/000100830nko">
「……うん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("絵背景100", 1000, 0, null, false);
	Fade("絵演窓２/Ｗノーコ", 1000, 0, null, false);
	Fade("右ノーコ/背景", 1000, 0, null, false);
	Fade("絵演窓/Ｗニトリ", 1000, 0, null, false);
	Fade("左にとり/背景", 1000, 0, null, false);

	FadeDelete("絵演窓*", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥堕皇_通常_hard");
	FadeSt("ML",500,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/000100840nki">
「挨拶、していくか？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/000100850nko">
「あわせるかおがない」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥堕皇_通常_sigh");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/000100860nki">
「オレもだ」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//	MusicStart("@xbgm27",0,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]


{	St("ML",700, @0,@0,"bu似鳥堕皇_通常_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/000100870nki">
「行くか、ノーコ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/000100880nko">
「どこに？」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥堕皇_通常_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/000100890nki">
「そうだな……」

{	St("ML",700, @0,@0,"bu似鳥堕皇_通常_sigh");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/000100900nki">
「……こんなオレに、もう行き場所なんてないか」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/000100910nko">
「どこでもいいよ」


{	St("MR",700, @0,@0,"buノーコa_通常_smile");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/000100920nko">
「となりには、わたしがいるから」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥堕皇_通常_sigh");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/000100930nki">
「そうだよな……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/000100940nki">
「やっとオレたち……本当の姿で、会えたんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]


{	St("ML",700, @0,@0,"bu似鳥堕皇_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/000100950nki">
「なあ……ノーコ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_通常_shy");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/000100960nko">
「うん。にとり」


{	St("MR",700, @30,@0,"buノーコa_幽霊_smile");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/000100970nko">
「にまんねんぶん……」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/000100980nko">
「いっぱい……いっぱい……」


{	St("ML",690, @-30,@0,"bu似鳥堕皇_通常_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/000100990nki">
「愛し合おう」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	ClearWaitAll(2000, 2000);
	SetVolumeEX("@xbgm*", 3000, 0, null);
	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

	Wait(2000);

	EndScene();
}
