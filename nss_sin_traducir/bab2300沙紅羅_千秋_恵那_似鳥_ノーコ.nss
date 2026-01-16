
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene bab2300沙紅羅_千秋_恵那_似鳥_ノーコ.nss_MAIN
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
	$GameName = "bab2330千秋_恵那.nss";//★エンディングへ（bab）
}

scene bab2300沙紅羅_千秋_恵那_似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="780">
////////////header////////////
//file name "bab2300沙紅羅_千秋_恵那_似鳥_ノーコ.nss"
//title "神様はいない"
//previous "ba2300カゴメ.nss"

////////////footer////////////
//next "bab2330千秋_恵那.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2300);}

//あきゅん「修正指示：銃構えと立絵で銃の持ち手が違うので立絵を左右反転してトリミング演出を行うか、使用しないかに調整をお願いします」
//inc久保田　冒頭部分、修整しました

	if($PreGameName == "ba2300カゴメ.nss"){
	MusicStart("@xbgm14",0,450,0,1000,null,true);
	}

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
	MusicStart("SE03",0,700,0,1000,null,false);
	Wait(880);

	//CreateColorSPadd("白", 15000,"WHITE");
	Fade("白", 0, 1000, null, true);
	Wait(1500);
	DeleteSt("C", 0,false);

	Fade("白", 1500, 0, null, true);
	St("C",700, @0,@0,"fu沙紅羅_通常_pinch");
	FadeSt("C",300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/000100010skr">
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

	Wait(500);
	CreateColorEXadd("金1", 15000,"ffff00");
	Fade("金1", 5000, 1000, null, false);
	Fade("赤", 5000, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/bab23/000100020tsr">
「――――――ぁ――ぁ――ぁ――」

//あきゅん「修正指示：ＥＶをきちんと額が焦点の中心になるように」
//inc久保田　修正しました。
　弾丸が、大狸の眉間を撃ち抜いた。

{	CreateTextureEX("絵背景1", 100, Center, Middle, "cg/bg/bg0108400秋葉原_俯瞰_崩壊.jpg");
	CreateColorSPadd("金", 120,"ffff00");
	CreateColorSPadd("白", 110,"WHITE");
	DrawTransition("白", 0, 50, 100, 700, null, "cg/data/circle_02_00_0.png", false);
	DrawTransition("金", 0, 50, 100, 700, null, "cg/data/circle_01_00_0.png", true);
	SetShade("金", HEAVY);
	CreateSE("SE04","se擬音_光り輝く02");
	MusicStart("SE04",0,700,0,1000,null,false);
	Fade("絵背景1", 0, 1000, Dxl3, false);
	Fade("金1", 1000, 0, null, false);
	Fade("タヌキ", 1000, 0, DxlAuto, true);}

　金色の光を放つ、巨体――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//★ inc久保田 pre分けしました

	CreateSE("SE01","se戦闘_爆破水しぶき");

	CreateColorSPadd("白2", 20000,"WHITE");
	MusicStart("SE01",1000,700,0,1200,null,true);
	SetFrequency("SE01", 3000, 1150, DxlAuto);
	DrawTransition("白2", 300, 0, 1000, 1000, null, "cg/data/circle_02_00_0.png", true);

	Delete("赤");
	Delete("タヌキ");
	Delete("金");
	Delete("白");
	Delete("絵背景1");
	Delete("金1");

	Wait(3000);


{	ClockPass(2304);}

//◆場所：スパコン館_裏面_廃墟
	OnBG(10,"bg1101500スパコン館_裏面_廃墟");
	FadeBG(0,true);

	CreateTextureEX("背景アップ", 100, -295, -24,"cg/bg/bg1101500スパコン館_裏面_廃墟.jpg");
	Fade("背景アップ", 0, 1000, DxlAuto, false);
	Zoom("背景アップ", 0, 1600, 1600, null, false);
	Move("背景アップ", 30000, 305, @0, null, false);

	St("L",700, -895,-311,"bu沙紅羅_後ろ向き_hard");
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
[text0012]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/000100030skr">
「…………」

　廃墟の真ん中で――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　沙紅羅は、呆然と立ち尽くしていた。

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/000100040skr">
「ごめん……ごめんな、タヌキ」

{	DeleteSt("L", 3000,false);
	Fade("背景アップ", 3000, 0, DxlAuto, false);
	St("C",150,@0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/000100050skr">
「アタシ、お前のこと、救ってやれなかった」

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_cry");
//	FadeSt("C",200,false);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/000100060skr">
「アタシ、アタシ……！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteSt("C", 200,true);

	WaitKey(1000);

	CreateSE("SE01","se動作_一歩");
	MusicStart("SE01",0,700,0,1000,null,false);

	$SETime = RemainTime("SE01");
	WaitKey($SETime);

	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text9999]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/bab23/000100070ksr">
「よくやったよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	DeleteSt("C", 200,true);
	St("C",700, @0,@0,"bu沙紅羅_放心_lost");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/000100080skr">
「双六さん……？」

{	DeleteSt("C", 200,true);
	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/bab23/000100090ksr">
「ほら、この顔見てみな」

{	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,false);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/bab23/000100100ksr">
「満足げな顔してるぜ」

{	DeleteSt("C", 200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/000100110skr">
「でも、アタシは、こいつを救えなかった」

{	St("C",700, @0,@0,"bu沙紅羅_通常_pain");
	FadeSt("C",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/000100120skr">
「救ってやりたかったんだ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/000100130skr">
「こいつだけは……こいつだけは……」

{	DeleteSt("C", 200,true);
	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/bab23/000100140ksr">
「救われてるよ、きっと」

{	DeleteSt("C", 200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/000100150skr">
「でも――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteSt("C", 200,true);

//★ inc久保田 pre分けしました
	TextBoxDelete(150);

//◆ＳＥ：足音近づく

	CreateSE("SE05","se動作_歩く04_l");
	MusicStart("SE05",0,700,0,1000,null,false);
	Wait(1500);

{	SetVolume("SE05", 1000, 0, NULL);
	St("L",700, @0,@0,"bu平次_通常_normal");
	FadeSt("L",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/bab23/000100160fjh">
「救われたのは、こいつだけじゃねぇぞ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/bab23/000100170fjh">
「オレたちだって、感謝してるんだ」

{	St("L",700, @0,@0,"bu平次_通常_smile");
	FadeSt("L",200,false);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/bab23/000100180fjh">
「誇りに思いな」

{	DeleteSt("L", 200,true);
	St("R",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("R",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/000100190skr">
「誇りに……？」

{	DeleteSt("R", 200,true);
	St("L",700, @0,@0,"bu平次_通常_normal");
	FadeSt("L",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/bab23/000100200fjh">
「今のところ、死んだヤツさえひとりもいない」

{	St("L",700, @0,@0,"bu平次_通常_smile");
	FadeSt("L",200,false);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/bab23/000100210fjh">
「お前のおかげだよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2305);}


	SetVolume("@xbgm26", 1000, 0, NULL);
//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	DeleteSt("L", 200,true);
	St("MR",700, @0,@0,"buみそa_通常_smile");
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/bab23/000100220mso">
「そうです姐さん！」

{	DeleteSt("MR", 200,true);
	St("ML",700, @0,@0,"buブーa_通常_smile");
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/bab23/000100230buu">
「流石姐さん！　日本一！」

{	DeleteSt("ML", 200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/000100240skr">
「みそ、ブー」

{	St("C",700, @0,@0,"bu沙紅羅_放心_lost");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/000100250skr">
「でも、アタシ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteSt("C", 200,false);

	SetVolumeEX("SE*", 3000, 0, null);


	WaitKey(2000);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
{	SoundPlay("@xbgm25",0,450,true);
	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/000100260fje">
「なんだか……思い出すわね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("MR", 200,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("ML",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bab23/000100270kit">
「何を？」

{	DeleteSt("ML", 200,true);
	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/000100280fje">
「小さい頃のこと。覚えてない？
　タヌキ、一緒に柳神社に埋めたでしょ？」

{	DeleteSt("MR", 200,true);
	St("ML",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bab23/000100290kit">
「ん？　そうだっけ？」

{	DeleteSt("ML", 200,true);
	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/000100300fje">
「ホントに覚えてないの？
　タヌキが車に轢かれちゃって、私は呆然としちゃって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/000100310fje">
「アンタが探しに来てくれて。
　一緒にお墓を作ろうって」

{	DeleteSt("ML", 200,true);
	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/000100320fje">
「おたぬき様で有名だから、柳神社に埋めようって。
　帰る頃には暗くなって、すごく怒られたでしょ？」

{	DeleteSt("MR", 200,true);
	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bab23/000100330kit">
「ああ。そういえば、そういうこともあったかも……」

{	DeleteSt("ML", 200,true);
	St("MR",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/000100340fje">
「覚えてない？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	DeleteSt("MR", 200,true);
	St("ML",700, @0,@0,"bu千秋_朗らか_sigh");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bab23/000100350kit">
「覚えてない」

{	DeleteSt("ML", 200,true);
	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/000100360fje">
「……ハァ。信じらんない」

{	DeleteSt("MR", 200,true);
	St("ML",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bab23/000100370kit">
「そ、そんな顔しなくても……」

{	DeleteSt("ML", 200,true);
	St("MR",700, @0,@0,"bu恵那_通常_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/000100380fje">
「いい？　千秋」

{	DeleteSt("ML", 200,true);
	St("MR",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/000100390fje">
「これから忘れたら、承知しないんだからね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	DeleteSt("MR", 200,true);
	St("ML",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bab23/000100400kit">
「は……はい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//★ inc久保田　pre分けしました

	DeleteSt("ML", 200,true);

	TextBoxDelete(150);

{	ClockPass(2306);}


//◆場所：秋葉原_上空

//	DeleteSt("ML", 1000,false);

	CreateWindowEX("左にとり", 100, 0, 242, 576, false);
	CreateTextureEX("左にとり/背景", 200, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");

	CreateWindowEX("右ノーコ", 680, 0, 242, 576, false);
	CreateTextureEX("右ノーコ/背景", 200, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");

//	TextBoxDelete(150);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg0108400秋葉原_俯瞰_崩壊.jpg");
	Zoom("絵背景100", 0, 1500, 1500, null, true);
	Zoom("絵背景100", 50000, 1000, 1000, null, false);
	Fade("絵背景100", 1000, 1000, null, false);

	CreateTextureEX("絵背景50", 90, Center, Middle, "cg/bg/bg0108400秋葉原_俯瞰_崩壊.jpg");
	CreateTextureEX("絵背景100", 100, @-100, Middle, "cg/bg/bg0108400秋葉原_俯瞰_崩壊.jpg");
	Zoom("絵背景100", 0, 1500, 1500, null, true);
	Move("絵背景100", 50000, 200, 0, null, false);
	Fade("絵背景100", 1000, 1000, null, false);

	Fade("左にとり/背景", 1000, 1000, null, false);
	Fade("右ノーコ/背景", 1000, 1000, null, false);

	CreateAXLWindowEX("絵演窓", "X", 2000, 102, 242, false);
	CreateAXLWindowEX("絵演窓２", "X", 2000, 682, 242, false);

	WindowAXLZoom("絵演窓２", "X", 0, 0, null, true);
	WindowAXLZoom("絵演窓", "X", 0, 0, null, true);
	CreateTextureSP("絵演窓/Ｗニトリ", 1050, -969, -310, "cg/bu/bu似鳥堕皇_通常_hard.png");
	CreateTextureSP("絵演窓２/Ｗノーコ", 1050, 366, 4, "cg/bu/buノーコa_カッター_pinch.png");
	Wait(32);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg0108400秋葉原_俯瞰_崩壊.jpg");
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	Fade("絵背景100", 1000, 1000, Dxl3, false);
	Zoom("絵背景100", 1000, 1000, 1000, Dxl3, false);

	WindowAXLZoom("絵演窓", "X", 500, 1000, null, false);
	WindowAXLZoom("絵演窓２", "X", 500, 1000, null, true);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/bab23/000100410nko">
「…………」

{	Fade("左にとり/背景", 300, 1000, null, false);
	Fade("左にとり/にとり", 300, 1000, null, true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/000100420nki">
「落ち込むな」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/bab23/000100430nko">
「でも――わたしは、フウリを、すくえなかった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景200", 100, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");
	Fade("絵背景200", 500, 1000, null, false);

	Fade("絵背景100", 1000, 0, null, false);
	Fade("絵演窓２/Ｗノーコ", 1000, 0, null, false);
	Fade("右ノーコ/背景", 1000, 0, null, false);
	Fade("絵演窓/Ｗニトリ", 1000, 0, null, false);
	Fade("左にとり/背景", 1000, 0, null, false);

	FadeDelete("絵演窓*", 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("C",700, @0,@0,"bu似鳥堕皇_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/000100440nki">
「お前を生み出したのはオレだ」

{	St("C",700, @0,@0,"bu似鳥堕皇_通常_normal");
	FadeSt("C",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/000100450nki">
「お前の苦しみはオレのものだ」

{	St("C",700, @0,@0,"bu似鳥堕皇_通常_pinch");
	FadeSt("C",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/000100460nki">
「だから……そんなに辛い顔、しないでくれ」

{	DeleteSt("C", 200,true);
	St("C",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/bab23/000100470nko">
「にとり……」

{	St("C",700, @0,@0,"buノーコa_通常_cry");
	FadeSt("C",200,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/bab23/000100480nko">
「わたしのきずを、なぐさめて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("C",700, @0,@0,"buノーコa_通常_shy");
	FadeSt("C",200,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/bab23/000100490nko">
「あいのあかしを……わたしに……」

{	DeleteSt("C", 200,true);
	St("C",700, @0,@0,"bu似鳥堕皇_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/000100500nki">
「やっと、出会えたんだ」

{	St("C",700, @0,@0,"bu似鳥堕皇_通常_smile");
	FadeSt("C",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bab23/000100510nki">
「ふたりで、夢を叶えよう」

{	DeleteSt("C", 200,true);
	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/bab23/000100520nko">
「ゆめ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteSt("C", 200,true);

	TextBoxDelete(150);

{	ClockPass(2307);}


//◆場所：スパコン館_裏面_廃墟
	PrintGO("上背景", 5000);
	CreateTextureEX("絵背景300", 100, Center, Middle, "cg/bg/bg1101500スパコン館_裏面_廃墟.jpg");
	Fade("絵背景300", 0, 1000, null, true);
	Wait(16);

	Delete("@左*");
	Delete("@右*");
	Delete("白*");

	Wait(16);
	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("R",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("R",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/bab23/000100530mzh">
「沙紅羅」

{	DeleteSt("R", 200,true);
	St("L",700, @0,@0,"bu沙紅羅_後ろ向き_hard");
	FadeSt("L",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/000100540skr">
「ん……？」

{	DeleteSt("L", 200,true);
	St("R",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/000100550kms">
「アザナエル、返していただけますでしょうか」

{	DeleteSt("R", 200,true);
	St("L",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("L",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/000100560skr">
「あ、ああ。これか」

{	DeleteSt("L", 200,true);
	St("R",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/000100570kms">
「双六さんも、よろしいですね？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	DeleteSt("R", 200,true);
	St("L",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("L",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/bab23/000100580ksr">
「ああ。双一親分から連絡があった」

{	St("L",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("L",200,false);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/bab23/000100590ksr">
「カゴメアソビなんて余興にかまけてる場合じゃないとさ」

{	DeleteSt("L", 200,true);
	St("R",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/000100600kms">
「そうですか。では――」

{	DeleteSt("R", 200,true);
	St("L",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("L",200,true);
	Wait(500);
	Move("@StNameL/L*", 300, @80, @0, null, false);
	DeleteSt("L", 300,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/000100610skr">
「ほら」

{	CreateSE("SE01","se銃_シリンダー装填");
	MusicStart("SE01",0,700,0,1100,null,false);}
　沙紅羅は、歌門にアザナエルを手渡した。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	DeleteSt("L", 200,true);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/bab23/000100620mzh">
「手……大丈夫か？」

{	DeleteSt("MR", 200,true);
	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/000100630skr">
「ん？」

{	DeleteSt("ML", 200,true);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/bab23/000100640mzh">
「震えておるぞ」

{	DeleteSt("MR", 200,true);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/000100650skr">
「……ああ。そうだな」

{	DeleteSt("ML", 200,true);
	St("MR",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/bab23/000100660mzh">
「くるしい？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2308);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	DeleteSt("MR", 200,true);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/000100670skr">
「嘘は、つけねぇな」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/000100680skr">
「救えるはずの命がふたつ――アタシの手で、消えた」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/000100690skr">
「この苦しみ……なくなる日は、来るのか？」

{	DeleteSt("ML", 200,true);
	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/bab23/000100700ksr">
「消えねぇのさ。
　ずっと、苦しめられるんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("C",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("C",200,false);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/bab23/000100710ksr">
「ただ、苦しみに慣れるしかねぇよ」

{	DeleteSt("C", 200,true);
	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/000100720skr">
「でも、慣れなかったら……？」

{	DeleteSt("ML", 200,true);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/bab23/000100730ksr">
「後悔しても、遅い。
　お前は、その道を選んだ」

{	St("MR",700, @0,@0,"bu双六a_通常_smile");
	FadeSt("MR",200,false);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/bab23/000100740ksr">
「オレと一緒に、行こうぜ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

	PrintGO("上背景", 5000);
	DeleteAllSt(0,true);
	CreateTextureSP("絵背景200", 100, Center, 0, "cg/bg/bg2401100空_上空_通常.jpg");
	Move("絵背景200", 600000, @0, -448, DxlAuto, false);
	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{
//	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/000100750skr">
「…………」

{
//	DeleteSt("C", 200,false);
//
}
　沙紅羅は苦しげに唇を噛んで、ぽつりと呟く。

{
//	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_hard");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/000100760skr">
「神様なんて……いないのか」

{
//	St("C",700, @0,@0,"buミヅハ_ダウナー_sad");
//	FadeSt("C",200,true);
}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/bab23/000100770mzh">
「そんなことは――」

　沙紅羅のその呟きで、ミヅハの表情が苦しげに歪む。

{
//	St("C",700, @0,@0,"bu歌門_通常_think");
//	FadeSt("C",200,true);
}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/000100780kms">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　しかし、それに気づいたのは歌門だけだった。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 2500, 0, null);
	CreateColorEX("絵背景", 20000, "BLACK");
	Fade("絵背景", 2500, 1000, null, true);

	Wait(2000);

	Delete("イベント*");
	EndScene();
}
