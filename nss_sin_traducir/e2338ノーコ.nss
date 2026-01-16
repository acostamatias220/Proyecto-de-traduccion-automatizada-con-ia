
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene e2338ノーコ.nss_MAIN
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
	$GameName = "2348ノーコ_フウリ.nss";//★エンディングへ（e）
}

scene e2338ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="90">
////////////header////////////
//file name "e2338ノーコ.nss"
//title "どちらをとるか"
//previous "2330ノーコ.nss"

////////////footer////////////
//next "ノーコ" "2348ノーコ_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：秋葉原_万世橋_雪

{	ClockPass(2338);}


	OnBG(10,"bg0104300秋葉原_万世橋_雪");
	FadeBG(0,true);

	St("C",700, @0,@0,"buノーコb_幽霊_normal");
	FadeSt("C",0,true);

	FadeDelete("上背景", 200, null, true);

	SetVolumeEX("@xbgm*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/e23/380100010nko">
「あとで、ごうりゅ――」

//◆ＳＥ：ドン！
{	DeleteSt("C",200,true);
	CreatePlainSP("揺用", 20);
	CreateSE("爆発", "se戦闘_爆破水しぶき");
	MusicStart("爆発", 0, 1000, 0, 1000, null,false);
	Shake("揺用", 300, 12, 12, 0, 0, 1000, Dxl1, true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/e23/380100020nko">
「え――！？」

{	DeleteSt("C",200,false);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/e23/380100030ntn">
「のわっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指定：爆発で川の氷が割れる
//あきゅん「修正指示：画面の振動とか入れて緊迫感を」

//★inc櫻井　氷の真ん中に穴。

	TextBoxDelete(150);

	SceneOut(5000, 200, "slide_03_01_1");
	Delete("揺用");
	CreateTextureSP("背景", 10, @0, @0, "cg/ef/ef凍結した神田川.jpg");

	CreatePlainSP("雑用01", 30);

	CreateSE("SE01","se戦闘_氷砕ける");
	MusicStart("SE01",0,700,0,800,null,false);
	Shake("雑用01", 4000, 20, 50, 0, 0, 300, null, false);
	Zoom("雑用01", 4000, 1500, 1500, Axl1, false);
	SetBlur("雑用01", true, 1, 500, 100, false);

	SceneIn(200, "slide_03_01_0");

	CreateColorEXadd("黒", 35, "#FFFFFF");

	CreateSE("SE02L","se環境_水流_l");
	MusicStart("SE02L",500,700,0,100,null,true);

	Fade("黒", 3000, 1000, null, false);
	DrawTransition("黒", 1500, 0, 1000, 100, Axl2, "cg/data/zzex_circle_01_00_0.png", false);
//吸い込む音

	CreateSE("波", "se環境_波");
	MusicStart("波",0,700,0,1000,null,false);

	SoundPlay("@xbgm22",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　突然弾ける、川の氷。

　その割れ目に、狸たちが吸い込まれる。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SceneOut(5000, 200, "slide_02_01_0");
	Delete("黒");
	Delete("背景");
	Delete("雑用01");
	OnBG(10,"bg0104300秋葉原_万世橋_雪");
	FadeBG(0,true);

	SetVolumeEX("SE*", 2000, 0, null);

	SceneIn(200, "slide_02_01_1");



{	St("C",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/e23/380100040nko">
「たしろう――――っ！？」

　呼びかけるが、水底から返答はない。


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/e23/380100050nko">
「どうしてきゅうに――！？」

{	St("C",700, @0,@0,"buノーコb_通常_rage");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/e23/380100060nko">
「ううん、まようひまない」

{	St("C",700, @0,@0,"buノーコb_幽霊_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/e23/380100070nko">
「フウリは、だいじ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteSt("C",200,true);
	TextBoxDelete(150);

{	St("L",700, @0,@0,"fuノーコb_通常_rage");
	FadeSt("L",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040a]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/e23/380100080nko">
「でも――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	CreateSE("SE01","se動作_空飛ぶ02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameL/L*", 300, @0, @-70, Dxl2, false);
	DeleteSt("L",200,false);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040b]
　ノーコは踵を返すと、ふわりと宙へと浮き上がる。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SceneOut(5000, 100, "slide_02_01_0");

	OnBG(10,"bg2401100空_上空_通常");
	Move("@OnBG*", 0, @0, -448, null, true);
	FadeBG(0,true);
	Move("@OnBG*", 30000, @0, -60, null, false);

//	St("C",700, @0,@80,"buノーコb_通常_rage");
//	SetBlur("@StNameC/C*", true, 1, 400, 100, true);
//	Move("@StNameC/C*", 600, @0, @-80, DxlAuto, false);
//	FadeSt("C",200,true);

//あきゅん「修正指示：氷を割る雰囲気や迫力を入れてください」
//inc久保田　演出強化

	CreateTextureEX("絵演鋸影", 61, Center, 1700, "cg/st/l/stノーコb_通常_s全身シルエット.png");
	CreateTextureEX("絵演鋸", 60, Center, 1700, "cg/st/l/stノーコb_通常_normal_s全身.png");
	Fade("絵演鋸影", 0, 1000, null, true);
	Request("絵演鋸*", Smoothing);
	Zoom("絵演鋸*", 0, 6000, 6000, null, true);

	CreateSE("SE001","se戦闘_風切り音10");

	CreateSE("SE00L","se環境_風_l");
	MusicStart("SE00L",500,700,0,1000,null,true);

	Move("絵演鋸*", 10000, @0, 0, null, false);
	FadeDelete("@絵色演出黒", 500, null, true);

	Wait(250);

	SetVolumeEX("SE00L", 300, 0, null);
	MusicStart("SE001",0,700,0,1200,null,false);
	Fade("絵演鋸影", 400, 0, Dxl1, false);
	Fade("絵演鋸", 0, 1000, Axl3, false);
	Move("絵演鋸*", 400, @0, -60, Dxl3, false);
	Zoom("絵演鋸*", 400,800, 800, Dxl3, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/e23/380100090nko">
「あの４にんは、みすてられない！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateSE("SE02","se戦闘_カッター_GOC");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreateTextureSP("絵演全画面", 1000, 0, -210, "cg/ev/l/ev0000ノーコカッターa_l.jpg");
	SetBlur("絵演全画面", true, 2, 500, 80, false);
	Move("絵演全画面", 300, -860, -130, Dxl1, true);

	CreateColorSPadd("絵色白", 3000, "#FFFFFF");
	Wait(16);

	CreateSE("きる１", "se戦闘_切断04");
	CreateTextureEXadd("かったー１", 3700, 0, 0, "cg/ef/efカッター剣閃a.jpg");

	CreateSE("きる３", "se戦闘_切断04");
	CreateTextureEXadd("かったー３", 3700, 60, 0, "cg/ef/efカッター剣閃a.jpg");
	Rotate("かったー３", 0, @0, @0, 180, null, true);

	CreateSE("きる５", "se戦闘_切断04");
	CreateTextureEXadd("かったー５", 3700, 46, -46, "cg/ef/efカッター剣閃a.jpg");
	Rotate("かったー５", 0, @0, @0, 60, null, true);

	CreateSE("きる２", "se戦闘_切断04");
	CreateTextureEXadd("かったー２", 3750, 150, -4, "cg/ef/efカッター剣閃b.jpg");

	CreateSE("きる５", "se戦闘_切断04");
	CreateTextureEXadd("かったー６", 3750, 0, -24, "cg/ef/efカッター剣閃b.jpg");
	Rotate("かったー６", 0, @0, @180, @0, null, true);

	CreateSE("きる７", "se戦闘_切断04");
	CreateTextureEXadd("かったー７", 3750, 0, 0, "cg/ef/efカッター剣閃b.jpg");
	Rotate("かったー７", 0, @0, @0, 180, null, true);

	CreateSE("SE03","se戦闘_カッター_GOC");

	CreateTextureSP("絵演全画面", 1000, -477, -300, "cg/ev/ev0000ノーコカッターb_big.jpg");
	Move("絵演全画面", 3000, 0, @0, Dxl1, false);

	MusicStart("SE03",0,1000,0,800,null,false);
	Fade("絵色白", 1000, 0, null, false);
	DrawDelete("絵色白", 300, 100, null, "slide_08_00_0", true);

	MusicStart("きる１", 0, 1200, 0, 1000, null);
	Shake("かったー１", 100, 0, 4, 0, 0, 500, null, false);
	Fade("かったー１", 0, 1000, null, true);

	Wait(80);

	MusicStart("きる２", 0, 1200, 0, 1000, null);
	Shake("かったー２", 100, 0, 4, 0, 0, 500, null, false);
	Fade("かったー２", 0, 1000, null, true);

	Wait(80);

	MusicStart("きる３", 0, 1200, 0, 1000, null);
	Shake("かったー３", 100, 0, 4, 0, 0, 500, null, false);
	Fade("かったー３", 0, 1000, null, true);

	Wait(80);

	MusicStart("きる５", 0, 1200, 0, 1000, null);
	Shake("かったー５", 100, 0, 4, 0, 0, 500, null, false);
	Fade("かったー５", 0, 1000, null, true);

	Wait(80);

	MusicStart("きる５", 0, 1200, 0, 1000, null);
	Shake("かったー６", 100, 0, 4, 0, 0, 500, null, false);
	Fade("かったー６", 0, 1000, null, true);

	Wait(80);

	MusicStart("きる７", 0, 1200, 0, 1000, null);
	Shake("かったー７", 100, 0, 4, 0, 0, 500, null, false);
	Fade("かったー７", 0, 1000, null, true);

	CreateSE("われる", "se戦闘_氷砕ける");
	WaitKey(500);

	MusicStart("われる", 0, 1200, 0, 1000, null);
	CreateColorSPadd("しろ", 2000, WHITE);

	WaitKey(1500);

	Delete("@OnBG*");
	Delete("絵演*");
	Delete("かったー*");

	SetVolumeEX("@xbgm*", 300, 0, null);


	Fade("しろ", 3000, 0, null, false);
	Delete("かったー*");

//ノーコ急降下
//カッターの刃が何個も連続で現れる。
//ef凍結した神田川の背景を一瞬表示し、砕く。
//ゆっくりノーコのカッターCG表示

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]	
　伸びたナイフが、川の厚い氷を割った。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	ClearWaitAll(2000, 2000);

	Delete("しろ");

	EndScene();
}
