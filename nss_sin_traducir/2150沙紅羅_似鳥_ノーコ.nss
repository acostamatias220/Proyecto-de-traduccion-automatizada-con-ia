
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2150沙紅羅_似鳥_ノーコ.nss_MAIN
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
		$GameName = "2200沙紅羅_似鳥.nss";
	}else if($CharaName=="似鳥"){
		$GameName = "2200沙紅羅_似鳥.nss";
	}else{
		$GameName = "2200ノーコ.nss";
	}
//	$GameCircle=false;

}

scene 2150沙紅羅_似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1830">
////////////header////////////
//file name "2150沙紅羅_似鳥_ノーコ.nss"
//title "ノーコＶＳ百野殺駆"
//previous "2140沙紅羅_似鳥.nss"
//previous "2140ノーコ_フウリ.nss"

////////////footer////////////
//next "沙紅羅" "2200沙紅羅_似鳥.nss"
//next "似鳥" "2200沙紅羅_似鳥.nss"
//next "ノーコ" "2200ノーコ.nss"

////////////body////////////

//あきゅん「演出：暗転開始スクリプト」

//■再定義定型文
	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 490, "#000000");
	FadeDelete("上背景", 0, null, true);

{	ClockPass(2150);}

//	SubTitleGo("ノーコＶＳ百野殺駆");

//	CreateTextureSP("絵顔駒１", 700, 20, 15, "cg/sys/icon/キャラアイコン/沙紅羅.png");
//	Request("絵顔駒１", Lock);
//	CreateTextureSP("絵顔駒２", 700, 60, 15, "cg/sys/icon/キャラアイコン/似鳥.png");
//	Request("絵顔駒２", Lock);
//	CreateTextureSP("絵顔駒３", 700, 100, 15, "cg/sys/icon/キャラアイコン/みそa.png");
//	Request("絵顔駒３", Lock);
//	CreateTextureSP("絵顔駒４", 700, 140, 15, "cg/sys/icon/キャラアイコン/ブーa.png");
//	Request("絵顔駒４", Lock);
//	CreateTextureSP("絵顔駒５", 700, 180, 15, "cg/sys/icon/キャラアイコン/ミリＰ.png");
//	Request("絵顔駒５", Lock);

//◆演出指定：ここ、黒バックで

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500300010nko">
「――みつけた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆場所：似鳥マンション_正面
	OnBG(10,"bg1302100似鳥マンション_正面_通常");
	FadeBG(0,true);

//◆ＳＥ：風切り音
	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("絵色黒", 1000, null, true);

//◆演出指定：ゆっくりと着地
//	CreateTextureEX("絵顔駒６", 700, 220, 15, "cg/sys/icon/キャラアイコン/ノーコa.png");
//	Request("絵顔駒６", Lock);
//	Move("絵顔駒６", 0, @40, @0, null, true);

//	Move("絵顔駒６", 300, @-40, @0, null, false);
//	Fade("絵顔駒６", 300, 1000, null, false);

//おがみ：演出調整：ノーコ立ち絵を使用してみる
//	St("C",700, @0,@-60,"buノーコa_幽霊_normal");

	CreateTextureEX("ノーコ100", 100, Center, InBottom, "cg/st/stノーコa_通常_normal.png");
	Request("ノーコ100", Smoothing);

	SoundPlay("@xbgm09",0,450,true);

//	Move("@StNameC/C*", 1000, @0, @60, DxlAuto, false);
//	FadeSt("C",200,true);
	Move("ノーコ100", 1000, @0, @50, Dxl1, false);
	Fade("ノーコ100", 200, 1000, null, true);


	WaitKey(500);
	CreateSE("SE02","SE動作_着地");
	MusicStart("SE02",0,700,0,1000,null,false);

	WaitKey(500);
	SoundPlay("@xbgm00",0,450,true);
	WaitKey(500);
//	DeleteSt("C", 300,true);

	Fade("ノーコ100", 300, 0, null, true);
	Delete("ノーコ100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
{	St("ML",700, @0,@0,"buみそa_通常_pinch");
	Move("@StNameML/ML*", 300, @-60, @0, DxlAuto, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/500300020mso">
「ぅおっ！」

{	Move("@StNameML/ML*", 300, @-60, @0, DxlAuto, false);
	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"buブーa_通常_pinch");
	Move("@StNameMR/MR*", 300, @60, @0, DxlAuto, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/500300030buu">
「でたっ！」

{	Move("@StNameMR/MR*", 300, @60, @0, DxlAuto, false);
	DeleteSt("MR", 200,false);
	St("C",700, @0,@0,"buミリＰb_通常_pinch");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/500300040mrp">
「今……空飛んでこなかった？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_pinch");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500300050skr">
「ったく！　もーそーだかなんだか知らねぇけど、なんでもアリすぎんだろ！」

{	DeleteSt("C", 200,true);
	CreateSE("SE01","se動作_ドア開ける01");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	Move("@StNameML/ML*", 300, @60, @0, DxlAuto, false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/500300060nki">
「沙紅羅……何かあったのか？」

{	DeleteSt("ML", 200,true);
//	St("MR",700, @0,@0,"buノーコa_通常_normal");
//	FadeSt("MR",200,true);
	CreateTextureEX("ノーコ100", 100, Center, InBottom, "cg/st/stノーコa_通常_normal.png");
	Move("ノーコ100", 0, @0, @50, null, true);
	Fade("ノーコ100", 200, 1000, null, true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500300070nko">
「にとり」

{	Fade("ノーコ100", 200, 0, null, true);
//	DeleteSt("MR", 200,true);
	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/500300080nki">
「あ……の、ノーコ……！？」

{	DeleteSt("ML", 200,true);
//	St("MR",700, @0,@0,"buノーコa_通常_normal");
//	FadeSt("MR",200,true);
	CreateTextureEX("ノーコ100", 100, Center, InBottom, "cg/st/stノーコa_通常_normal.png");
	Move("ノーコ100", 0, @0, @50, null, true);
	Fade("ノーコ100", 200, 1000, null, true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500300090nko">
「もう、にげないで」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500300100nko">
「すなおになって」

{	Fade("ノーコ100", 200, 0, null, true);
	Delete("ノーコ100");
//	DeleteSt("MR", 200,true);
	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/500300110nki">
「く……く……」

{	St("C",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/500300120nki">
「来るなっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2151);}

//◆ＳＥ：バタン！　扉閉じられる
	Move("@StNameC/C*", 300, @-60, @0, null, false);
	DeleteSt("C", 200,true);
	WaitKey(300);
	CreateSE("SE01","se動作_ドア閉める02");
	MusicStart("SE01",0,700,0,1000,null,false);

//◆演出指定：以下、扉の向こう側とこっち側で画面が切り替わる演出

//◆場所：似鳥マンション_玄関_カレー
	WaitAction("@時計表示/絵時計", null);

	PrintGO("上背景", 30000);
	OnBG(10,"bg1303200似鳥マンション_玄関_カレー");
	FadeBG(0,true);
	DrawDelete("上背景", 300, 100, null, "slide_01_04_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("L",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/500300130nki">
「沙紅羅！　頼む！」

{	St("L",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("L",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/500300140nki">
「ノーコを――この部屋に、入れないでくれ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆場所：似鳥マンション_正面

	PrintGO("上背景", 30000);
	OnBG(10,"bg1302100似鳥マンション_正面_通常");
	FadeBG(0,true);
	DrawDelete("上背景", 300, 100, null, "slide_01_04_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500300150skr">
「へっ！　いい判断だな。
　最初っから、テメーを部屋ん中に隠そうと思ってたんだ」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500300160skr">
「これで心置きなく戦えるってモンよ！」

{	DeleteAllSt(200,true);
	CreateTextureEX("ノーコ100", 100, Center, InBottom, "cg/st/stノーコa_通常_normal.png");
	Move("ノーコ100", 0, @0, @50, null, true);
	Fade("ノーコ100", 200, 1000, null, true);
//	St("C",700, @0,@0,"buノーコa_幽霊_think");
//	FadeSt("C",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500300170nko">
「あなたは、さっきまけた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	Fade("ノーコ100", 200, 0, null, true);
	Delete("ノーコ100");
	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500300180skr">
「ところがどっこい、今回はひとりじゃない」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500300190skr">
「だろ、おめーら」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 2500, 0, null);

	DeleteSt("C", 200,false);

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/500300200mso">
「応ッ！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/21/500300210buu">
//「応ッ！」

</PRE>
	SetText();
	AddText(1,"「応ッ！」","みそ","21/500300200mso",false,false,1000);
	AddText(2,"「応ッ！」","ブー","21/500300210buu",true,true,1400);
	TypeBeginD();//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SoundPlay("@xbgm07",0,450,true);

	CreateTextureEX("絵背景枠左1", 910, 256, Middle, "cg/mask/ciウィンドウ縦02.png");
	CreateTextureEX("絵背景枠左2", 910, 256, Middle, "cg/mask/ciウィンドウ縦02.png");
	CreateTextureEX("絵背景枠右1", 910, 768, Middle, "cg/mask/ciウィンドウ縦02.png");
	CreateTextureEX("絵背景枠右2", 910, 768, Middle, "cg/mask/ciウィンドウ縦02.png");
	Fade("絵背景枠左1", 0, 1000, null, true);
	Fade("絵背景枠左2", 0, 1000, null, true);


	CreateWindowEX("左みそ", 0, 0, 512, 576, false);
	Zoom("左みそ", 0, 0, 1000, null, true);
	CreateTextureSP("左みそ/絵背景", 211, 0, Middle, "cg/bg/bg1302100似鳥マンション_正面_通常.jpg");
	SetShade("左みそ/絵背景", HEAVY);
	Zoom("左みそ/絵背景", 0, 2000, 2000, null, true);

	CreateWindowEX("右ブー", 512, 0, 512, 576, false);
	Zoom("右ブー", 0, 0, 1000, null, true);
	CreateTextureSP("右ブー/絵背景", 211, -512, Middle, "cg/bg/bg1302100似鳥マンション_正面_通常.jpg");
	SetShade("右ブー/絵背景", HEAVY);
	Zoom("右ブー/絵背景", 0, 2000, 2000, null, true);


//	CreateTextureSP("絵ウィンドウ２/絵背景１",2000,-100,-120,"絵イメージ１");
//	CreateTextureSP("絵ウィンドウ２/絵人物１",2100,Center,87,"cg/bu/bu村崎_通常_cry.png");

//	CreateWindowEX("中沙紅羅", 341, 0, 342, 576, false);
//	Zoom("中沙紅羅", 0, 0, 1000, null, true);
	CreateTextureEX("中沙紅羅絵マスク１", 3000, 0, 0, "cg/mask/ciスラッシュ_07_01z.png");
	Request("中沙紅羅絵マスク１", Smoothing);
	CreateMask("中沙紅羅", 150, 0, 0, "cg/mask/ciスラッシュ_07_01.png", false);
	SetAlias("中沙紅羅", "中沙紅羅");
	Zoom("中沙紅羅", 0, 0, 1000, null, true);

	CreateTextureSP("中沙紅羅/絵背景", 1021, Center, Middle, "cg/bg/bg1302100似鳥マンション_正面_通常.jpg");
	SetShade("中沙紅羅/絵背景", HEAVY);

	CreateTexture("左みそ/みそ", 215, OutRight, InBottom, "cg/bu/buみそa_オラオラ_shout.png");
	SetAlias("左みそ/みそ","左みそ/みそ");
	Move("左みそ/みそ", 0, -201, @96, null, true);

	Move("絵背景枠左1", 300, -30, @0, Dxl2, false);
	Move("絵背景枠左2", 300, 500, @0, Dxl2, false);

	Zoom("左みそ", 300, 1000, 1000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/500300220mso">
「特攻隊長・頑丈のみそ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTexture("右ブー/ブー", 215, OutRight, InBottom, "cg/bu/buブーa_オラオラ_shout.png");
	SetAlias("右ブー/ブー","右ブー/ブー");
	Move("右ブー/ブー", 0, 395, @96, null, true);

	Fade("絵背景枠右1", 0, 1000, null, true);
	Fade("絵背景枠右2", 0, 1000, null, true);
	Move("絵背景枠右1", 300, 500, @0, Dxl2, false);
	Move("絵背景枠右2", 300, 1024, @0, Dxl2, false);
	Zoom("右ブー", 300, 1000, 1000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/500300230buu">
「参謀役・クラッシャー・ブー！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTexture("中沙紅羅/沙紅羅", 1700, Center, InBottom, "cg/bu/bu沙紅羅_通常_shout.png");
	SetAlias("中沙紅羅/沙紅羅","中沙紅羅/沙紅羅");
	Move("中沙紅羅/沙紅羅", 0, @0, @96, null, true);
	Fade("中沙紅羅絵マスク１", 300, 1000, null, false);
	Shake("中沙紅羅絵マスク１", 300, 10, 5, 0, 0, 1000, Dxl2, false);
	Zoom("中沙紅羅絵マスク１", 300, 1200, 1200, Dxl2, false);
	Zoom("中沙紅羅", 300, 1200, 1200, Dxl2, true);

	Delete("絵背景枠*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500300240skr">
「そして<RUBY text="ヘッド">頭</RUBY>・月夜乃沙紅羅！！」

{	CreateTextureEX("中沙紅羅/沙紅羅2", 1700, Center, InBottom, "cg/bu/bu沙紅羅_後ろ向き_normal.png");
	Move("中沙紅羅/沙紅羅2", 0, @0, @96, null, true);
	Fade("中沙紅羅/沙紅羅", 300, 0, Axl2, false);
	Fade("中沙紅羅/沙紅羅2", 200, 1000, null, true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500300250skr">
「我ら郡山に狂い咲く暴走集団<RUBY text="もものせっく">百野殺駆</RUBY>」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);
	CreateSE("SE02","se擬音_百野殺駆登場");
	CreateTextureEX("中沙紅羅/沙紅羅2", 1700, Center, InBottom, "cg/bu/bu沙紅羅_後ろ向き_shout.png");
	Move("中沙紅羅/沙紅羅2", 0, @0, @96, null, true);
	Fade("中沙紅羅/沙紅羅", 0, 0, Axl2, false);
	Fade("中沙紅羅/沙紅羅2", 0, 1000, null, true);
	Wait(16);
	MusicStart("SE02",0,700,0,1000,null,false);
	FadeDelete("絵板写", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500300260skr">
「夜露死苦ぅ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

/*
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/500300270mso">
「夜露死苦ぅ！」

//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/500300280buu">
「夜露死苦ぅ！」
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/500300270">
「「夜露死苦ぅ！」」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆演出指定：廊下なので、キャラの身体が被る感じで
//おがみ：β調整済み
	PrintGO("上背景", 30000);

	OnBG(10,"bg1302100似鳥マンション_正面_通常");
	FadeBG(0,true);

	St("C",710, @0,@0,"bu沙紅羅_後ろ向き_shout");
	St("L",700, @0,@0,"buみそa_オラオラ_shout");
	St("R",700, @0,@0,"buブーa_オラオラ_shout");
	FadeSt("C",0,true);
	FadeSt("L",0,true);
	FadeSt("R",0,true);

	Delete("左みそ*");
	Delete("右ブー*");
	Delete("中沙紅羅*");

	SetVolumeEX("@xbgm07", 3000, 1, null);

	FadeDelete("上背景", 2000, null, true);

{	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500300290skr">
「…………」

{	SetComic(@-50,@-80,17);
	FadeComic();
	St("C",710, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500300300skr">
「ちょっと狭いな……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("L",700, @0,@0,"buみそa_通常_normal");
	St("R",700, @0,@0,"buブーa_通常_normal");
	FadeSt("L",200,false);
	FadeSt("R",200,true);

//	TextBoxDelete(150);
/*
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/500300310mso">
「ウス！」

//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/500300320buu">
「ウス！」
*/


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/500300310">
「「ウス！」」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2152);}
	SetVolumeEX("@xbgm07", 100, 450, null);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500300330nko">
「なかま……ともだち」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500300340nko">
「めざわり」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500300350nko">
「ひつようない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500300360nko">
「まとめて――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	St("C",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500300370nko">
「きえて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	DeleteComic();


//◆演出指定：鞭のように撓って襲いかかるカッターナイフ

//おがみ：β調整済み
	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 1490, Center, Middle, "cg/ef/efカッター剣閃a.jpg");
	CreateTextureEX("絵背景200", 100, -824, -576, "cg/ev/l/ev0000ノーコカッターc_l.jpg");
	CreateTextureEX("絵背景300", 100, Center, Middle, "cg/ev/ev0000ノーコカッターc.jpg");
	Zoom("絵背景300", 0, 2000, 2000, null, true);
	SetBlur("絵背景300", true, 2, 500, 50, false);
	SetBlur("絵背景200", true, 1, 500, 20, false);


//◆ＳＥ：シュパーン！　どごーん！
	CreateSE("SE01","se戦闘_風切り音10");
	CreateSE("SE02","se戦闘_刃物02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵背景200", 300, 1000, null, false);
	BezierMove("絵背景200", 1500, (-824,-576){-1000,-100}{-1000,-100}(-1024,0){0,0}{0,0}(0,-288), Axl2, false);

	Wait(1300);
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("絵背景300", 200, 1000, null, false);
	Zoom("絵背景300", 300, 1000, 1000, Dxl2, true);


	Fade("絵背景100", 0, 1000, null, true);

	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Wait(200);
	Delete("絵背景200");
	Delete("絵背景300");



//◆演出指定：ここから、ミリＰは解説役的に使用する

//マスク準備
	CreateTextureEX("絵マスク枠", 1610, 300, Middle, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureEX("絵マスク/絵演背景", 1520, Center, Middle, "cg/ef/ef_カット汎用01.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buミリＰb_ショータイム_shout.png");
	Request("絵マスク/絵演立絵", Smoothing);
	Move("絵マスク/絵演立絵", 0, @280, @50, null, true);

//動作準備
	Move("絵マスク*", 0, @650, @0, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);
	Move("絵マスク枠", 0, 1024, 200, null, true);
	Fade("絵マスク枠", 0, 1000, null, true);

//動作
	Move("絵マスク枠", 300, 0, 0, Dxl2, false);
	Move("絵マスク", 300, @-650, @0, Dxl2, true);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, @-50, @-50, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/500300380mrp">
『な――！？』

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/500300390mrp">
『カッターナイフが伸びて――刃が鞭のように撓った！』

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/500300400mrp">
『しかもこの狭い場所で、逃げ場なんてないし――』

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/500300410mrp">
『沙紅羅ちゃん、どうするの！？』

{	CreatePlainSP("揺用", 2000);
	Delete("絵背景100");
	Delete("絵マスク*");
	Fade("揺用", 200,0, null, true);
	Delete("揺用");
	St("C",700, @0,@50,"bu沙紅羅_後ろ向き_shout");
	Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500300420skr">
「みそブー！　Ｈ作戦！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteSt("C", 200,false);

	St("L",700, @0,@0,"buみそa_通常_normal");
	St("R",700, @0,@0,"buブーa_通常_normal");
	FadeSt("L",200,false);
	FadeSt("R",200,true);

/*

//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/500300430mso">
「ウス！」

//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/500300440buu">
「ウス！」

*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/500300430">
「「ウス！」」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
{	St("C",700, @-60,@0,"buみそa_オラオラ_angry");
	Move("@StNameC/C*", 300, @60, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/500300450mso">
「リーゼントパチキッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Request("@StNameC/C*", Smoothing);

	Zoom("@StNameC/C*", 200, 1500, 1500, Axl1, false);
	Move("@StNameC/C*", 200, @-50, @150, Axl1, false);

	DeleteAllSt(200,true);

	CreateSE("SE01","se戦闘_風切り音10");

	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");
	CreateColorEXadd("絵色100", 1500, "WHITE");

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵色100", 50, 1000, null, true);

	Fade("絵背景100", 100, 1000, null, true);

	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Wait(200);
	Fade("絵背景100", 100, 0, null, true);
	Delete("絵背景100");

	CreateTextureSPadd("絵背景100", 100, Center, Middle, "cg/ef/ef045_スパーク.jpg");
	Zoom("絵背景100", 0, 1150, 1150, null, true);

//◆ＳＥ：ガキーン！！
	CreateSE("SE01","se戦闘_刃物02");
	MusicStart("SE01",0,700,0,1000,null,false);


	Fade("絵色100", 200, 0, null, false);

	Shake("絵背景100", 300, 5, 5, 0, 0, 1000, Dxl1, false);
	FadeF4("絵背景100", 300, 10.0, 1000, 0, 0, Dxl2, false);
	Zoom("絵背景100", 300, 1050, 1050, null, true);

	Delete("絵色100");
	Fade("絵背景100", 100, 0, null, true);
	Delete("絵背景100");


//	CreateColorSP("絵色白", 710, "#FFFFFF");
//	Wait(50);
//	Delete("絵色白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
{	St("C",700, @0,@0,"buノーコa_カッター_angry");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500300460nko">
「な――！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//マスク準備
	CreateTextureEX("絵マスク枠", 1610, 300, Middle, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureEX("絵マスク/絵演背景", 1520, Center, Middle, "cg/ef/ef_カット汎用01.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buミリＰb_ショータイム_shout.png");
	Request("絵マスク/絵演立絵", Smoothing);
	Move("絵マスク/絵演立絵", 0, @280, @50, null, true);

//動作準備
	Move("絵マスク*", 0, @650, @0, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);
	Move("絵マスク枠", 0, 1024, 200, null, true);
	Fade("絵マスク枠", 0, 1000, null, true);

//動作
	Move("絵マスク枠", 300, 0, 0, Dxl2, false);
	Move("絵マスク", 300, @-650, @0, Dxl2, true);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, @-50, @-50, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/500300470mrp">
『みそ君が、刃を頭突きした！！』

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/500300480mrp">
『あの切れ味抜群の刃が……弾かれた！？』

{	Move("絵マスク*", 200, @650, @0, Axl2, false);
	DeleteAllSt(200,true);
	St("ML",700, @0,@50,"buみそa_オラオラ_pride");
	Move("@StNameML/ML*", 200, @0, @-50, Dxl1, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/500300490mso">
「侠は容易に折れず曲がらず！」

{	St("ML",700, @0,@0,"buみそa_オラオラ_shout");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/500300500mso">
「オレのリーゼントを、舐めるなッ！！」

{	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"buノーコa_カッター_angry");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500300510nko">
「く――」

{	DeleteSt("MR", 200,false);
	St("ML",700, @0,@0,"buみそa_通常_pride");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/500300520mso">
「今だブー！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	DeleteAllSt(200,false);
	St("C",700, @60,@0,"buブーa_オラオラ_pride");
	Move("@StNameC/C*", 300, @-60, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/500300530buu">
「応ッ！！」

{	Move("絵マスク*", 200, @-650, @0, Dxl2, true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/500300540mrp">
『な……今度は、ブーちゃんが自ら刃に突進！？』

{	Move("絵マスク*", 200, @650, @0, Axl2, false);
	St("C",700, @0,@0,"buブーa_オラオラ_shout");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/500300550buu">
「アフロスパイダ――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：ぼにょぼにょ　なんか粘っこい音
	CreateSE("SE01","se擬音_ギャグ_アフロ");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("絵色白", 710, "#FFFFFF");
	Wait(50);
	EffectZoomadd(10000, 400, 300, "cg/ef/ef034_精神汚染.jpg", false);
	DeleteAllSt(0,true);
	FadeDelete("絵色白", 400, null, true);
	Move("絵マスク*", 200, @-650, @0, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text7779]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/500300560mrp">
『巨大化した緑のアフロが刃に当たって――捕らえた！？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("絵マスク*", 200, @650, @0, Axl2, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0741]
{	St("C",700, @0,@0,"buブーa_オラオラ_pride");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/500300570buu">
「洗うことすら躊躇われる、アフロの蟻地獄！！」

//【ブー】
<voice name="ブー" class="ブー" src="voice/21/500300580buu">
「絡め取り、捕まえたものは二度と離さねぇ！」

{	Move("絵マスク*", 200, @-650, @0, Dxl2, true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/500300590mrp">
『な……なんですって！？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("絵マスク*", 200, @650, @0, Axl2, false);
	DeleteAllSt(200,true);


//◆ＳＥ：ガキーン
	CreateSE("SE01","se戦闘_金属弾く01");
	CreateSE("SE02","se人体_骨軋む01");

	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 710, "#FFFFFF");
	Wait(50);
	DeleteAllSt(0,true);
	Delete("絵色白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0148]
{	St("C",700, @0,@0,"buノーコa_カッター_pinch");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500300600nko">
「な！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500300610nko">
「ひっぱれない？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2153);}
	DeleteAllSt(200,true);

/*
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/500300620mso">
「姐さんッ！！」

//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/500300630buu">
「姐さんッ！！」
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/500300620mso">
「姐さんッ！！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/21/500300630buu">
//「姐さんッ！！」

</PRE>
	SetText();
	AddText(1,"「姐さんッ！！」","みそ","21/500300620mso",false,false,1000);
	AddText(2,"「姐さんッ！！」","ブー","21/500300630buu",true,true,1700);
	TypeBeginD();//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("C",700, @-50,@100,"bu沙紅羅_木刀_pride");
	Move("@StNameC/C*", 200, @50, @-100, Dxl2, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500300640skr">
「任せとけッ！！」

{	St("C",700, @0,@0,"bu沙紅羅_木刀_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500300650skr">
「どっせえええええええええい！！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_カッター_angry");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500300660nko">
「バカ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	CreateSE("SE01","se戦闘_カッター_刃折れる");
	CreateColorEXadd("絵色白", 710, "#FFFFFF");



//◆ＳＥ：ぽきっ
	Move("@StNameC/C*", 150, @0, @100, Axl2, false);
	Wait(50);
	Fade("絵色白", 100, 1000, null, true);

	MusicStart("SE01",0,1400,0,1000,null,false);
	Wait(50);
	DeleteAllSt(0,true);

	Fade("絵色白", 500, 0, null, true);
	Delete("絵色白");

	St("L",700, @0,@0,"buみそa_通常_cry");
	St("R",700, @0,@0,"buブーa_通常_cry");
	FadeSt("L",200,false);
	FadeSt("R",200,true);

/*
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/500300670mso">
「なにぃぃぃ――――っ！？」

//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/500300680buu">
「なにぃぃぃ――――っ！？」
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/500300670">
「「なにぃぃぃ――――っ！？」」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	Move("絵マスク*", 200, @-650, @0, Dxl2, true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/500300690mrp">
『掴んだ刃を、折られた――！？』

{	Move("絵マスク*", 200, @650, @0, Axl2, false);
	DeleteAllSt(200,true);
	CreateSE("SE01","se戦闘_風切り音05");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",700, @0,@100,"buノーコa_カッター_angry");
	Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500300700nko">
「かくご」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_木刀_pain");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500300710skr">
「南無三ッ！！」

{	Move("絵マスク*", 200, @-650, @0, Dxl2, true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/500300720mrp">
『それでも沙紅羅ちゃんは、ノーコちゃんへ迫る！』

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/500300730mrp">
『打ち下ろされる木刀と、迎え撃つ刃の鞭！』

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/500300740mrp">
『打ち勝つのは――――！？』

{	Move("絵マスク*", 200, @650, @0, Axl2, true);
	FadeQ($C_次,0,0,200,0,50,Dxl1,false);
	Zoom("$C_次", 200, 2000, 2000, Axl1, false);
	DeleteAllSt(200,true);
	Delete("絵マスク*");
	St("MR",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500300750nko">
（むだ。いちどあなたはうちまけている）

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500300760nko">
（にとりといっしょににげるなんて、ゆるせない）

{	St("MR",700, @0,@0,"buノーコa_カッター_shock");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500300770nko">
（こんどこそとどめ）

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_木刀_angry");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500300780skr">
（無理なんて百も承知！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("ML",700, @0,@0,"bu沙紅羅_木刀_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500300790skr">
（けど、ここまで来て引き下がれるかッ！）

{	St("ML",700, @0,@0,"bu沙紅羅_木刀_rage");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500300800skr">
（てめーの目、覚ましてやるよッ！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);


//◆ＳＥ：ガキィッ！　と沙紅羅の木刀がぶつかる
	CreateSE("SE01","se戦闘_金属弾く02");
	CreateSE("SE02","se戦闘_木刀_激突");

	CreateColorEXadd("絵色100", 7500, "WHITE");
	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ev/ev0000ノーコカッターc.jpg");
	CreateTextureEX("絵背景200", 2000, Center, Middle, "cg/ev/ev0000沙紅羅木刀アタック.jpg");
	CreateTextureEX("絵背景ライン", 5000, Center, Middle, "cg/mask/ciウィンドウ縦01.png");
//	Rotate("絵背景ライン", 0, @0, @0, 90, null,true);
	Zoom("絵背景ライン", 0, 1000, 2000, null, true);

	Fade("絵背景100", 100, 1000, null, false);

	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Dxl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Wait(200);

	Fade("絵背景200", 100, 1000, null, false);

	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("絵背景200", 300, 5, 8, 0, 0, 1000, Dxl1, false);
	Zoom("絵背景200", 300, 1200, 1200, Dxl2, false);

	Wait(200);


	Delete("絵背景100");
	Fade("絵色100", 100, 1000, null, true);
	Zoom("絵背景200", 0, 1000, 1000, null, true);
	Fade("EF100", 0, 1000, null, true);

	CreateWindow("絵窓右", 4000, 512, 0, 512, 576, false);
	SetAlias("絵窓右","絵窓右");
	CreateTextureSP("絵窓右/絵演背景", 2000, Center, Middle, "cg/ev/ev0000ノーコカッターc.jpg");
//	Move("絵窓右/絵演背景", 0, -512, 0, null, true);
	Move("絵背景200", 0, -100, 0, null, true);
	CreateTextureSP("絵背景ライン", 5000, Center, Middle, "cg/mask/ciウィンドウ縦01.png");

	Fade("絵色100", 100, 0, null, true);

	CreateTextureSP("絵背景100a", 150, Center, Middle, "cg/ev/ev2150沙紅羅対ノーコ_背景.jpg");
	CreateTextureSP("絵背景100b", 150, Center, Middle, "cg/ev/ev2150沙紅羅対ノーコ_ノーコ.png");
	CreateTextureSP("絵背景100c", 150, Center, Middle, "cg/ev/ev2150沙紅羅対ノーコ_沙紅羅.png");
	CreateTextureEX("絵背景100", 150, Center, Middle, "cg/ev/ev2150沙紅羅対ノーコ.jpg");
	Request("絵背景100*", Smoothing);

	Zoom("絵背景100a", 0, 1500, 1500, null, true);
	Zoom("絵背景100b", 0, 3000, 3000, null, true);
	Zoom("絵背景100c", 0, 3000, 3000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0191]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500300810skr">
「でやああああああ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	CreateColorEXadd("絵色100", 1500, "WHITE");

	SetVolumeEX("@xbgm*", 1000, 0, null);

	TextBoxDelete(150);

	MusicStart("SE02",0,700,0,1000,null,false);
	CreatePlainSP("揺用", 5005);
	SetBlur("揺用", true, 2, 500, 50, false);


	Zoom("揺用", 200, 2000, 2000, Axl2, false);
	Shake("揺用", 200, 15, 5, 0, 0, 1000, Axl2, false);
	Fade("絵色100", 200, 1000, Axl1, true);

	Delete("絵背景ライン");
	Delete("絵背景200");
	Delete("絵窓右*");
	Delete("揺用");

	Wait(1000);

//◆ＥＶ："ev/ev2150沙紅羅対ノーコ.txt"
	CreateTextureSP("絵背景破片01", 200, 47, 95, "cg/ev/ev2150沙紅羅対ノーコ_破片a.png");
	CreateTextureSP("絵背景破片02", 200, 55, 78, "cg/ev/ev2150沙紅羅対ノーコ_破片b.png");
	CreateTextureSP("絵背景破片03", 200, -4, -18, "cg/ev/ev2150沙紅羅対ノーコ_破片c.png");
	CreateTextureSP("絵背景破片04", 200, -70, -228, "cg/ev/ev2150沙紅羅対ノーコ_破片d.png");
	CreateTextureSP("絵背景破片05", 200, 14, -370, "cg/ev/ev2150沙紅羅対ノーコ_破片e.png");
	CreateTextureSP("絵背景破片06", 200, 368, 138, "cg/ev/ev2150沙紅羅対ノーコ_破片f.png");
	CreateTextureSP("絵背景破片07", 200, 362, -99, "cg/ev/ev2150沙紅羅対ノーコ_破片g.png");
	CreateTextureSP("絵背景破片08", 200, 523, -2, "cg/ev/ev2150沙紅羅対ノーコ_破片h.png");
	CreateTextureSP("絵背景破片09", 200, 428, -332, "cg/ev/ev2150沙紅羅対ノーコ_破片i.png");
//	SetBlur("絵背景破片*", true, 1, 500, 150, false);

//	Zoom("絵背景破片*", 0, 500, 500, null, true);
//	Rotate("絵背景破片*", 0, @0, @0, 180, null,true);

	CreateColorSPadd("絵色200", 150, "WHITE");



//◆ＳＥ：パキィッ！
	CreateSE("SE01","se戦闘_金属弾く04");
	MusicStart("SE01",0,700,0,1000,null,false);

//	Rotate("絵背景破片*", 1500, @0, @0, 0, Dxl1,false);
	Move("絵背景破片*", 1500, 0, 0, Dxl1, false);
//	Zoom("絵背景破片*", 1500, 1000, 1000, Dxl1, false);
	Zoom("絵背景100*", 1500, 1000, 1000, Dxl1, false);
	FadeDelete("絵色200", 1000, null, false);
	Fade("絵色100", 500, 0, Axl1, true);

	Wait(1000);
	Fade("絵背景100", 200, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0194]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500300820nko">
「え――！？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500300830skr">
「行けぇッ！！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500300840nko">
「きゃっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Zoom("絵背景破片*", 250, 6000, 6000, Axl1, false);
	Zoom("絵背景100", 250, 2000, 2000, Axl1, false);
	Fade("絵色100", 250, 1000, Axl1, true);
	Delete("絵背景100*");
	Delete("絵背景破片*");

//おがみ：ＳＥがきぃいいいいん
	CreateSE("SE00","se戦闘_木刀_激突");
	MusicStart("SE00",0,700,0,1000,null,false);

	Wait(500);
	Fade("絵色100", 300, 0, null, true);
	Delete("絵色100");

//◆ＳＥ：どさっ！
	CreateSE("SE01","se人体_倒れる01");
	CreatePlainSP("揺用", 2005);

	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("揺用", 1000, 15, 5, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 1000, 0, null, true);
	Delete("揺用");


{	St("C",700, @0,@0,"bu沙紅羅_木刀_rage");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0197]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500300850skr">
「ど――どうだァッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	St("L",700, @0,@0,"buみそa_通常_happy");
	St("R",700, @0,@0,"buブーa_通常_happy");
	FadeSt("L",200,false);
	FadeSt("R",200,true);

/*
{	St("C",700, @0,@0,"buみそa_通常_normal");
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/500300860mso">
「さすが姐さんッ！！」

//◆音声指示：同時
{	St("C",700, @0,@0,"buブーa_通常_normal");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/500300870buu">
「さすが姐さんッ！！」
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/500300860mso">
「さすが姐さんッ！！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/21/500300870buu">
//「さすが姐さんッ！！」

</PRE>
	SetText();
	AddText(1,"「さすが姐さんッ！！」","みそ","21/500300860mso",false,false,1000);
	AddText(2,"「さすが姐さんッ！！」","ブー","21/500300870buu",true,true,1700);
	TypeBeginD();//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//マスク準備
	CreateTextureEX("絵マスク枠", 2010, 300, Middle, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureEX("絵マスク/絵演背景", 1520, Center, Middle, "cg/ef/ef_カット汎用01.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buミリＰb_ショータイム_shout.png");
	Request("絵マスク/絵演立絵", Smoothing);
	Move("絵マスク/絵演立絵", 0, @280, @50, null, true);

//動作準備
	Move("絵マスク*", 0, @650, @0, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);
	Move("絵マスク枠", 0, 1024, 0, null, true);
	Fade("絵マスク枠", 0, 1000, null, true);

//動作
	Move("絵マスク枠", 200, 0, 0, Dxl2, false);
	Move("絵マスク", 300, @-650, @0, Dxl2, true);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, @-50, @-50, Dxl2, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0211]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/500300880mrp">
『ああっ、なんてことでしょうッ！？』

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/500300890mrp">
『まさか沙紅羅ちゃんの木刀が――』

{	St("L",700, @0,@0,"bu沙紅羅_木刀_shout");
	FadeQ($L_次,0,0,200,0,50,Dxl1,false);
	FadeSt("L",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500300900skr">
「京都土産の名刀、『喝雄不死』だ！」

{	CreateTextureEX("絵マスク/絵演立絵表情2", 1530, center, middle, "cg/bu/buミリＰb_ショータイム_normal.png");
	Request("絵マスク/絵演立絵表情2", Smoothing);
	Move("絵マスク/絵演立絵表情2", 0, @230, @0, null, true);
	Fade("絵マスク/絵演立絵", 300, 0, Axl2, false);
	Fade("絵マスク/絵演立絵表情2", 200, 1000, null, true);
	Delete("絵マスク/絵演立絵");}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/500300910mrp">
『「喝雄不死」が、ノーコちゃんの刃の鞭を――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//◆場所：似鳥マンション_玄関_カレー
	CreatePlainSP("上背景", 1405);
	DeleteAllSt(0,true);

	OnBG(10,"bg1303200似鳥マンション_玄関_カレー");
	FadeBG(0,true);
	DrawDelete("上背景", 200, 100, null, "slide_01_04_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	St("L",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/500300920nki">
「『イシュタムの導き』だ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//おがみ：以下、少しテンポ悪いので背景戻さない演出にしました。
//◆場所：似鳥マンション_正面
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buミリＰb_ショータイム_pinch.png");
	Request("絵マスク/絵演立絵", Smoothing);
	Move("絵マスク/絵演立絵", 0, @230, @0, null, true);
	Fade("絵マスク/絵演立絵表情2", 300, 0, Axl2, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, true);
	Delete("絵マスク/絵演立絵表情2");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0221]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/500300930mrp">
『は？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//◆場所：似鳥マンション_玄関_カレー

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0222]
{	St("L",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/500300940nki">
「一応……そういう設定に、なってる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(2154);}

//◆場所：似鳥マンション_正面
	CreatePlainSP("上背景", 1405);
	DeleteAllSt(0,true);
	OnBG(10,"bg1302100似鳥マンション_正面_通常");
	FadeBG(0,true);
	DrawDelete("上背景", 200, 100, null, "slide_01_04_0", true);

	CreateTextureEX("絵マスク/絵演立絵表情2", 1530, center, middle, "cg/bu/buミリＰb_通常_hard.png");
	Request("絵マスク/絵演立絵表情2", Smoothing);
	Move("絵マスク/絵演立絵表情2", 0, @230, @0, null, true);
	Fade("絵マスク/絵演立絵", 300, 0, Axl2, false);
	Fade("絵マスク/絵演立絵表情2", 200, 1000, null, true);
	Delete("絵マスク/絵演立絵");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/500300950mrp">
『えーと……まあ、いいとして……』

{	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buミリＰb_ショータイム_shout.png");
	Request("絵マスク/絵演立絵", Smoothing);
	Move("絵マスク/絵演立絵", 0, @280, @50, null, true);
	Fade("絵マスク/絵演立絵表情2", 300, 0, Axl2, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, true);
	Delete("絵マスク/絵演立絵表情2");}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/500300960mrp">
『「喝雄不死」が、「イシュタムの導き」を破ったああああああッ！！』

//※北原メモ：→どう破ったのかが描写不足でややストレス。ＥＶ希望。→解決
{	CreatePlainSP("揺用", 3000);
	Delete("絵マスク*");
	Fade("揺用", 200,0, null, true);
	Delete("揺用");
	St("C",700, @0,@0,"bu沙紅羅_通常_pinch");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500300970skr">
「ふぅ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SoundPlay("@xbgm28",0,450,true);


	TextBoxDelete(150);

	DeleteAllSt(200,true);
	St("L",700, @0,@0,"buみそa_通常_happy");
	St("R",700, @0,@0,"buブーa_通常_ero");
	FadeSt("L",200,false);
	FadeSt("R",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0232]
//以下、同時再生の指示間違いだったので修正しました。（下倉確認済み）
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/500300980mso">
「姐さん！　格好良かったです！
　マジ<RUBY text="おとこ">侠</RUBY>らしいっス！　感動しました！」

//【ブー】
<voice name="ブー" class="ブー" src="voice/21/500300990buu">
「戦闘美少女の艶やかさ！　感服です！
　一生ついていきます！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500301000skr">
「アタシだけじゃない」

{	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500301010skr">
「おまえらがいたからこそ、勝てたんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,false);

	St("L",700, @0,@0,"buみそa_通常_cry");
	St("R",700, @0,@0,"buブーa_通常_cry");
	FadeSt("L",200,false);
	FadeSt("R",200,true);

/*
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/500301020mso">
「姐さんッ！！」

//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/500301030buu">
「姐さんッ！！」
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0242]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/500301020mso">
「姐さんッ！！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/21/500301030buu">
//「姐さんッ！！」

</PRE>
	SetText();
	AddText(1,"「姐さんッ！！」","みそ","21/500301020mso",false,false,1000);
	AddText(2,"「姐さんッ！！」","ブー","21/500301030buu",true,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――



	DeleteAllSt(200,true);


//◆演出指定：以下、アドリブで背後ループ的に
/*
{	St("C",700, @0,@0,"buみそa_通常_normal");
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/500301040mso">
「うおーいおいおいおいおい……
　うおーいおいおいおいおい……」

{	St("C",700, @0,@0,"buブーa_通常_normal");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/500301050buu">
「ひぐっ、うっ、うわーん……
　うわーんわんわんわんわん……」
*/

	CreateSound("みそボイスループ", VOICE, "voice/21/500301040mso.ogg");
	CreateSound("ブーボイスループ", VOICE, "voice/21/500301050buu.ogg");
	SetAlias("みそボイスループ","みそボイスループ");
	SetAlias("ブーボイスループ","ブーボイスループ");

	SetVolume("みそボイスループ", 0, 350, null);
	SetVolume("ブーボイスループ", 0, 350, null);

	Request("みそボイスループ",Disused);
	Request("ブーボイスループ",Disused);


	Request("みそボイスループ", Play);
	Request("ブーボイスループ", Play);


{	ClockPass(2155);}

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500301060skr">
「ふぅ……やれやれ」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500301070skr">
「しかし、さっきは折れたのに、なんで今回は……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolume("みそボイスループ", 2000, 0, null);
	SetVolume("ブーボイスループ", 2000, 0, null);

	CreateTextureEX("ノーコ100", 100, Center, InBottom, "cg/st/stノーコa_通常_fear.png");
	Request("ノーコ100", Smoothing);
	Move("ノーコ100", 0, @0, @100, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	St("C",700, @0,@0,"bu沙紅羅_乙女_shy");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500301080skr">
「まさか、アタシとタカの愛の証……！？」

{
	SetVolumeEX("@xbgm*", 1000, 0, null);

	DeleteAllSt(200,true);
	Fade("ノーコ100", 200, 1000, null, false);
	Move("ノーコ100", 500, @0, @-50, Dxl1, true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301090nko">
「ん……く……」

{	Fade("ノーコ100", 200, 0, null, true);
	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500301100skr">
「なんだ？　まだやる気か？」

{	DeleteAllSt(200,true);
	SoundPlay("@xbgm09",0,450,true);

	CreateTextureEX("ノーコ100", 100, Center, InBottom, "cg/st/stノーコa_通常_shock.png");
	Request("ノーコ100", Smoothing);
	Move("ノーコ100", 0, @0, @50, null, true);
	Fade("ノーコ100", 200, 1000, null, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301110nko">
「げせない」

{	Fade("ノーコ100", 200, 0, null, true);
	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500301120skr">
「はッ！　理屈がどうだろうと関係あっか！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500301130skr">
「てめぇはアタシに、負けたんだ」

{	DeleteAllSt(200,true);
	CreateTextureEX("ノーコ100", 100, Center, InBottom, "cg/st/stノーコa_通常_normal.png");
	Request("ノーコ100", Smoothing);
	Move("ノーコ100", 0, @0, @50, null, true);
	Fade("ノーコ100", 200, 1000, null, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301140nko">
「それが、どうしたの？」

{	Fade("ノーコ100", 200, 0, null, true);
	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500301150skr">
「どうしたって――」

{	DeleteAllSt(200,true);
	CreateTextureEX("ノーコ100", 100, Center, InBottom, "cg/st/stノーコa_通常_normal.png");
	Request("ノーコ100", Smoothing);
	Move("ノーコ100", 0, @0, @50, null, true);
	Fade("ノーコ100", 200, 1000, null, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301160nko">
「しずかにさせようとおもったけど」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301170nko">
「もう、いい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("ノーコ100", 200, 0, null, true);
	Delete("ノーコ100");


//◆ＳＥ：ジャキーン！
	CreateSE("SE01","se戦闘_破壊01");
	CreateSE("SE02","se戦闘_風切り音10");

	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");
	CreateTextureEX("絵背景300", 100, Center, Middle, "cg/ev/ev0000ノーコカッターc.jpg");
	Zoom("絵背景300", 0, 2000, 2000, null, true);
	SetBlur("絵背景300", true, 2, 500, 50, false);


	Fade("絵背景300", 150, 1000, null, false);
	Zoom("絵背景300", 200, 1000, 1000, Dxl2, true);


	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("絵背景100", 0, 1000, null, false);

	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Wait(200);

//◆演出指定：電柱が崩れ落ちる
	OnBG(10,"bg1302200似鳥マンション_正面_亀裂");
	FadeBG(0,true);

	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景100");
	Delete("絵背景200");
	Delete("絵背景300");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg1302200似鳥マンション_正面_亀裂.jpg");
	Zoom("絵背景100", 0, 1100, 1100, null, true);
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵色100", 500, 0, null, false);

	Shake("絵背景100", 300, 5, 5, 0, 0, 1000, Dxl1, false);
	FadeF4("絵背景100", 500, 1000, 1000, 0, 0, Dxl2, false);
	Zoom("絵背景100", 500, 1000, 1000, null, true);

	Wait(600);

	Delete("絵背景100");
	Delete("絵色100");





//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500301180skr">
「………………え？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/500301190mso">
「壁が……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_shock");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/500301200buu">
「切れた？」

{	DeleteAllSt(200,true);
	CreateTextureEX("ノーコ100", 100, Center, InBottom, "cg/st/stノーコa_通常_shock.png");
	Request("ノーコ100", Smoothing);
	Move("ノーコ100", 0, @0, @50, null, true);
	Fade("ノーコ100", 200, 1000, null, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301210nko">
「さよなら」


{	Move("ノーコ100", 200, @-30, @0, null, false);
	Fade("ノーコ100", 200, 0, null, true);
	St("C",700, @0,@0,"bu沙紅羅_木刀_pinch");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500301220skr">
「ちぃっ！！　逃がすかっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	CreateTextureEX("ノーコ100", 100, Center, InBottom, "cg/st/stノーコa_通常_shock.png");
	Request("ノーコ100", Smoothing);
	Move("ノーコ100", 0, @-158, @50, null, true);

	Move("ノーコ100", 200, @30, @0, DxlAuto, false);
	Fade("ノーコ100", 200, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301230nko">
「こないで」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fade("ノーコ100", 200, 0, null, true);

//◆ＳＥ：ダダダダダッ！！
	CreateSE("SE01","se動作_集団走る");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(800);


	CreateSE("SE02","se戦闘_カッター_GOC");
	SetVolumeEX("SE01", 1000, 0, null);

	CreateColorEXadd("絵色100", 3500, "WHITE");
	Fade("絵色100", 0, 1000, null, true);
	CreatePlainSP("揺用", 1500);

	MusicStart("SE02",0,700,0,1000,null,false);

	OnBG(10,"bg1302300似鳥マンション_正面_亀裂補修");
	FadeBG(0,true);

	Fade("絵色100", 500, 0, null, false);
	Shake("揺用", 500, 12, 12, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 200, 0, null, true);
	Fade("揺用", 0, 1000, null, true);
	Fade("揺用", 200, 0, null, true);
	Fade("揺用", 100, 1000, null, true);
	Fade("揺用", 200, 0, null, true);
	Delete("揺用");
	Delete("絵色100");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0291]
{	St("C",700, @0,@0,"bu沙紅羅_木刀_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500301240skr">
「ぬおっ！！」

{	DeleteAllSt(200,true);}
　ノーコに続き、コンクリートの裂け目に身体を突っ込もうとした沙紅羅。

　しかしその直前で、ノーコの手から放たれたカッターナイフの刃が、その隙間を埋めてしまう。

{	St("C",700, @0,@0,"bu沙紅羅_木刀_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500301250skr">
「くそっ！！　おいコラ！　なんなんだよそれ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500301260skr">
「電柱切ったり、マンション切ったり、高架を切ったり、人間業じゃねぇぞ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);


//◆場所：似鳥マンション_玄関
	PrintGO("上背景", 30000);
	OnBG(10,"bg1303200似鳥マンション_玄関_カレー");
	FadeBG(0,true);
	DrawDelete("上背景", 300, 100, null, "slide_01_04_1", true);

//マスク準備
	CreateTextureEX("絵マスク枠", 2010, 300, Middle, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureEX("絵マスク/絵演背景", 1520, Center, Middle, "cg/bg/bg1302300似鳥マンション_正面_亀裂補修.jpg");
	SetShade("絵マスク/絵演背景", MIDEUM);
	Zoom("絵マスク/絵演背景", 0, 2000, 2000, null, true);

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/bu沙紅羅_頭かき_think.png");
	Request("絵マスク/絵演立絵", Smoothing);
	Move("絵マスク/絵演立絵", 0, @280, @50, null, true);

//動作準備
	Move("絵マスク*", 0, @650, @0, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);
	Move("絵マスク枠", 0, 1024, 0, null, true);
	Fade("絵マスク枠", 0, 1000, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
{	St("L",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/500301270nki">
「だって――
　この世に切れないものは存在しないって設定――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("絵マスク", 200, @-650, @0, Dxl2, false);
	Move("絵マスク枠", 200, 0, 0, Dxl2, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, @-50, @-50, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0301]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500301280skr">
「なんでそんなモンを！？」

{	St("L",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/500301290nki">
「しょうがないだろ！
　創ったときは厨二病で――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("絵マスク*", 200, @650, @0, Axl2, false);
	Move("絵マスク枠", 200, 650, 0, Axl2, false);
	DeleteAllSt(200,true);

	Delete("絵マスク*");


//◆演出指定：剣線走る


	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");

//◆ＳＥ：シャキーン
	CreateSE("SE01","se戦闘_刃物02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵背景100", 100, 1000, null, true);

	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Wait(200);
	Fade("絵背景100", 100, 0, null, true);
	Delete("絵背景100");

	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
{	St("C",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/500301300nki">
「あ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2156);}

//◆場所：似鳥マンション_玄関

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0311]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500301310skr">
「どうした、似鳥ッ！！」

{	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/500301320nki">
「今……バスルームから、ノーコが……」

{	DeleteAllSt(200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301330nko">
「にとり」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301340nko">
「わたしは、もうだめ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301350nko">
「フウリも、きずつけて」

{	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301360nko">
「もう、ばらばらになりそう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301370nko">
「だから……おねがい」

{	St("C",700, @0,@0,"buノーコa_通常_smile");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301380nko">
「ほんとのきもち、きかせて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆場所：似鳥マンション_正面
	PrintGO("上背景", 30000);
	OnBG(10,"bg1302300似鳥マンション_正面_亀裂補修");

	FadeBG(0,true);
	DeleteAllSt(0,true);
	DrawDelete("上背景", 300, 100, null, "slide_01_04_0", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//◆音声指示：扉越し
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/500301390nki">
「お……おい、来るな！　来るなって！」

//◆音声指示：扉越し
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301400nko">
「しってるよ。みんなうそ。
　はずかしくて、くちにだせないだけ」

//◆音声指示：扉越し
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/500301410nki">
「こっちは駄目！　こっちの部屋は――！！」

//◆音声指示：扉越し
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301420nko">
「ツンデレ。ほんとうはわたしがすき。
　すきだから、はずかしくて、そういうことをする」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//◆音声指示：扉越し
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/500301430nki">
「やめて――やめてくれって！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301440nko">
「いって。あいしてるって。
　あいしあって、それで――おわらせよう」

//◆音声指示：扉越し
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/500301450nki">
「頼む……頼むから……！！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301460nko">
「あいしあいながら……えいえんになろう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301470nko">
「いっしょにしのう」

//◆音声指示：扉越し
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/500301480nki">
「だめだあああああああああああああああッッ！！」

{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500301490skr">
「やべ！　ノーコが中に！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_shout");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/500301500mso">
「ブー！　アレを！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_shout");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/500301510buu">
「おうッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//おがみ：β調整済み

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
{	St("MR",700, @0,@0,"buブーa_通常_happy");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/500301520buu">
「デデデデッデデー！　扉破壊装置ッ！！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミリＰb_通常_sad");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/500301530mrp">
「ただの斧でしょ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_happy");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/500301540buu">
「脱便のとき、ＡＤに買ってきてもらった！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミリＰb_通常_hard");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/500301550mrp">
「……色々聞きたいけど後にしとくわ！
　それより――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//おがみ：ＳＥ斧を振り下ろして破壊する音
	CreateSE("SE00","se戦闘_破壊02");
	CreateSE("SE01","se戦闘_破壊02");
	CreateSE("SE02","se戦闘_破壊02");
	CreateSE("SE03","se戦闘_破壊02");
	MusicStart("SE00",0,700,0,1000,null,false);

	CreatePlainSP("揺用", 3000);
	Shake("揺用", 300, 12, 12, 0, 0, 1000, Dxl1, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/500301560mso">
「どりゃあああああ！！」

{
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("揺用", 300, 12, 12, 0, 0, 1000, Dxl1, false);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/500301570mso">
「ふんっ！」

{
	MusicStart("SE02",0,700,0,1000,null,false);
	Shake("揺用", 300, 12, 12, 0, 0, 1000, Dxl1, false);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/500301580mso">
「ふんっ！」

{
	MusicStart("SE03",0,700,0,1000,null,false);
	Shake("揺用", 300, 12, 12, 0, 0, 1000, Dxl1, false);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/500301590mso">
「どっせええええええええい！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//おがみ：β要演出箇所：優先度Ａ　壊れた扉差分とかあるのか？
//◆ＳＥ：バキィッ！！
	CreateSE("SE01","se戦闘_破壊03");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("揺用", 1000, 12, 12, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 1000, 0, null, true);
	Delete("揺用");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
{	St("C",700, @0,@0,"buブーa_通常_shout");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/500301600buu">
「開いたッ！」

{	St("C",700, @0,@0,"bu沙紅羅_木刀_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500301610skr">
「似鳥――――ッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	SetVolumeEX("@xbgm*", 1000, 0, null);


{	ClockPass(2157);}

//◆ＳＥ：足音駆け込む
	CreateSE("SE01","se動作_集団走る");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

//◆場所：似鳥マンション_リビング_掃除後
	OnBG(10,"bg1304300似鳥マンション_リビング_掃除後");
	FadeBG(0,true);

	Wait(500);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

//おがみ：β調整済み

	SetVolumeEX("SE*", 1000, 0, null);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text3799]
{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500301620skr">
「似鳥……？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/500301630nki">
「…………」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/500301640skr">
「無事……なのか……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301650nko">
「うそ……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301660nko">
「なんで……？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301670nko">
「にとりと……わたしの……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301680nko">
「どうじんしが……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
{	St("C",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301690nko">
「ぜんぶ、きえた」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301700nko">
「どうじんし……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301710nko">
「わたしと、にとりの、おもいで……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301720nko">
「わたしとにとりが、いきたあかし……！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301730nko">
「なんで？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SoundPlay("@xbgm26",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
{	St("C",700, @0,@0,"buノーコa_通常_rage");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301740nko">
「なんですてたの？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/500301750nki">
「オレが捨てたんじゃなくて――！」

//◆音声指示：以下、涙
{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_通常_cry");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301760nko">
「わたしが……ほんとうに……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301770nko">
「いらないんだ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301780nko">
「ツンデレじゃないんだ……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301790nko">
「わたしをきらってるんだ……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301800nko">
「わたし、もう……」

{	St("C",700, @0,@0,"buノーコa_発狂_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/500301810nko">
「いみがないんだ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：がしゃーん！
	CreateSE("SE01","se戦闘_ガラス割れる02");

	CreateColorEXadd("絵色100", 6500, "WHITE");

	CreatePlainSP("揺用", 5000);
	SetBlur("揺用", true, 2, 500, 50, false);
	Zoom("揺用", 300, 2000, 2000, Axl2, false);
	Fade("絵色100", 300, 1000, null, true);

	MusicStart("SE01",0,700,0,1000,null,false);
	Delete("揺用");
	DeleteAllSt(0,true);


	Wait(500);

	CreateTextureEX("絵背景100", 100, Center, -512, "cg/bg/bg2401100空_上空_通常.jpg");
	Fade("絵背景100", 0, 1000, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/500301820nki">
「ノーコッ！？　ノーコ――」

//◆演出指定：夜空を映す感じ
{
	Fade("絵色100", 300, 0, null, false);
	Move("絵背景100", 3000, @0, 0, Dxl2, false);
	Wait(500);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/500301830nki">
「ノーコ――――――――――ッ！！！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Wait(500);

	SetVolumeEX("@xbgm*", 2000, 0, null);

	CreateColorEX("絵色100", 20000, "BLACK");
	Fade("絵色100", 2000, 1000, null, true);


//◆演出指定：ゆっくり黒フェードのイメージで

{	ClockPass(2158);}

//	WaitAction("@時計表示/絵時計", null);

{	ClockPass(2159);}

//	WaitAction("@時計表示/絵時計", null);

	WaitAction("@絵色100", null);

	Wait(1500);


	EndScene();
}
