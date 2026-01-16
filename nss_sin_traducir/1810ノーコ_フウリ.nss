
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1810ノーコ_フウリ.nss_MAIN
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

	if($CharaName=="ノーコ"){
		$GameName = "1820ノーコ.nss";
	}else if($CharaName=="フウリ"){
		$GameName = "1820フウリ.nss";
	}else{
		$GameName = "1820ノーコ.nss";
	}
}

scene 1810ノーコ_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="860">
////////////header////////////
//file name "1810ノーコ_フウリ.nss"
//title "はじめて"
//previous "1800ノーコ.nss"
//previous "1800フウリ.nss"

////////////footer////////////
//next "ノーコ" "1820ノーコ.nss"
//next "フウリ" "1820フウリ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1810);}

//◆場所：あにのあな_正面
	CreateTextureEX("絵背景０", 10000, Center, -100, "cg/bg/l/bg0301111あにのあな_正面_通常_l.jpg");
	Fade("絵背景０", 0, 1000, null, true);
	CreateTextureEX("絵背景１", 100, Center, 0, "cg/bg/bg0301111あにのあな_正面_通常.jpg");
	Fade("絵背景１", 0, 1000, null, false);

//◆ＳＥ：雨音
	//★徒歩：ＳＥ
	//CreateSE("SE00","se環境_雨_l");
	//MusicStart("SE00",5000,500,0,1000,null,true);

	$SYSTEM_effect_rain_dencity=32;
	$SYSTEM_effect_rain_speed=128;
	CreateEffect("絵エフェクト１", 10000, 0, 0, 1024, 576, "Rain");
	SetAlias("絵エフェクト１", "絵エフェクト１");

	CreateTextureEX("絵マスク１", 2000, 0, 0, "cg/mask/ciスラッシュ_02_01za.png");
	CreateMask("絵ウィンドウ１", 200, 0, 0, "cg/mask/ciスラッシュ_02_01.png", false);
	SetAlias("絵ウィンドウ１", "絵ウィンドウ１");

	CreateTextureEX("絵ウィンドウ１/絵背景１", 2000, Center, Middle, "cg/bg/l/bg2401100空_上空_通常_l.jpg");
	Move("絵ウィンドウ１/絵背景１", 0, @0, @0, null, true);
	CreateTextureEX("絵ウィンドウ１/絵人物１", 3000, -200, -850, "cg/fu/fuノーコa_幽霊_normal.png");
	Move("絵ウィンドウ１/絵人物１", 0, @0, @0, null, true);
	Rotate("絵ウィンドウ１/絵人物１", 0, @0, @0, 180, null, true);

	CreateColorEX("絵ウィンドウ１/絵色１", 10000, "#FFFFFF");
	Request("絵ウィンドウ１/絵色１", AddRender);

	Zoom("絵マスク１", 0, 0, 1000, Dxl2, true);
	Zoom("絵ウィンドウ１", 0, 0, 1000, Dxl2, true);
	Fade("絵ウィンドウ１/絵背景１", 0, 1000, null, false);
	Fade("絵ウィンドウ１/絵人物１", 0, 1000, null, true);

	St("ML",3700, @-30,@1152,"buフウリ_頬手_shock");
	FadeSt("ML",0,true);

	CreateTextureEX("絵人物１", 10020, 400, 55, "cg/bu/l/buノーコa_通常_normal_x01.png");
	Zoom("絵人物１", 0, 150, 150, Dxl2, true);
	CreateTextureEX("絵人物２", 10020, 400, 60, "cg/bu/l/buノーコa_通常_normal_x01.png");
	Zoom("絵人物２", 0, 153, 150, Dxl2, true);
	Fade("絵人物１", 0, 1000, null, true);
	Fade("絵人物２", 0, 500, null, true);


	MusicStart("@xbgm22",0,450,0,1000,null,true);

	Move("絵人物１", 1000, @0, @75, Dxl1, false);
	Move("絵人物２", 1000, @0, @75, Dxl1, false);
	Move("絵背景０", 1000, @0, @100, Dxl1, false);
	FadeDelete("上背景", 500, null, true);
	Wait(300);

	Move("絵人物１", 500, @0, @-2870, null, false);
	Move("絵人物２", 500, @0, @-2870, null, false);
	Move("絵背景０", 500, @0, @-2870, null, 300);

	Fade("絵背景０", 200, 0, null, false);
	Move($ML_今, 500, @0, @-1152, Dxl2, false);
	Move("絵背景１", 500, @0, @-1152, Dxl2, true);


	Delete("絵人物*");
	Delete("絵背景０");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100010wfu">
「だめッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	//▼シェイク
	MoveSSP1("@絵ウィンドウ１/絵人物１",100000,0,3,0,3,500,null);

	Fade("絵マスク１", 300, 1000, null, false);
	Rotate("絵ウィンドウ１/絵背景１", 10000000, @0, @0, @360000, null, false);
	Move("絵ウィンドウ１/絵人物１", 300, @0, @600, Dxl2, false);
	Zoom("絵マスク１", 300, 1000, 1000, Dxl1, false);
	Zoom("絵ウィンドウ１", 300, 1000, 1000, Dxl1, true);

//	Zoom("絵ウィンドウ１", 300, 10000, 10000, Dxl1, true);
//	Fade("絵ウィンドウ１/絵人物１", 0, 0, null, true);

	Move("@絵ウィンドウ１/絵人物１", 30000, @0, @200, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
　止みかけの雨と共に落下するノーコ。

　フウリは咄嗟に、落下地点へと駆け寄ると――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move($ML_今, 300, @-1000, @1152, Axl1, false);
	DeleteSt("ML",300,false);

	Move("@絵ウィンドウ１/絵人物１", 300, @0, @-1000, Dxl1, false);
	Zoom("絵マスク１", 300, 0, 1000, Dxl1, false);
	Zoom("絵ウィンドウ１", 300, 0, 1000, Dxl1, false);

	Fade("絵エフェクト１", 500, 0, null, false);

	Move("絵背景１", 500, @0, @1152, AxlDxl, false);
	Wait(500);

	Delete("@絵ウィンドウ１");
	Delete("@絵エフェクト１");
	Delete("@絵マスク１");

	//▼シェイク：停止
	MoveSSP1stop();

	PlainShake(10, 500, 0, 10, 0, 0, 500, Dxl1, false);

	//★徒歩：ＳＥ
	CreateSE("SE01","se動作_ビニール漁る02");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100020wfu">
「そりゃああああ！！」

　肉まんの入った袋を頭上に掲げた。

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100030wfu">
「…………」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100040wfu">
「…………」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100050wfu">
「……あれ？」

{	SetVolume("@x*", 1000, 0, NULL);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100100060nko">
「なにをしているの？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100070wfu">
「ありゃ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(1811);}

	TextBoxDelete(150);

//◆演出指示：ノーコ、浮いている

	St("C",700, @0,@-250,"stノーコa_通常_normal");
	Rotate($C_次, 0, @0, @0, @180, null, true);

	MoveEX($C_次, 1000, 0, 30, Dxl1, false);
	FadeSt("C",1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100080wfu">
「う……浮いているっ！？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100090wfu">
「もしやあなたは、超能力者！」

//◆演出指示：ノーコ、フウリをジッとみつめる。
{	St("C",700, @-250,@0,"buノーコa_通常_normal");
	Rotate($C_次, 0, @0, @0, @90, null, true);
	DeleteSt("C",500,true);
	FadeSt("C",500,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100100100nko">
「…………？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100110wfu">
「な、なんですか？　私の顔になにか――」

{	St2("C",700, @100,@100,"fuノーコa_通常_normal","cg2/",".png");
	Request($C_次, Smoothing);
	Rotate($C_次, 0, @0, @0, @-90, null, true);
	DeleteSt("C",500,true);
	FadeSt("C",500,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100100120nko">
「きこえる……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move($C_今, 200, @0, @40, Axl1, false);
	DeleteSt("C",200,true);

	CreateSE("SE10","seガヤ_街中_l");
	MusicStart("SE10",2000,700,0,1000,null,true);

	Move("絵背景１", 500, @0, @-1152, AxlDxl, true);



	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100130wfu">
「聞こえますけど、それがなにか？」

{	St("C",700, @0,@0,"buノーコa_通常_shock");
	DeleteSt("C",200,true);
	MoveEX($C_次, 500, 0, 40, Dxl1, false);
	FadeSt("C",500,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100100140nko">
「…………」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100100150nko">
「きらい」

{	St("C",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("C",200,true);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100160wfu">
「え？」

{	St("MR",700, @0,@0,"buノーコa_通常_normal");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100100170nko">
「どいて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("MR",300,true);

	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100180wfu">
「な！　ちょっと！　待って――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move($C_今, 200, @40, @0, Axl1, false);
	DeleteSt("C",200,true);

	SetVolumeEX("@SE*", 2000, 0, null);



{	ClockPass(1812);}







	CreateSE("SE04","seガヤ_交通少_l");
	MusicStart("SE04",1000,400,0,1000,null,true);


//◆場所：秋葉原_裏通り
	PrintDrawNut("上背景", 1000, 100, "blind_01_00_0", true);

	OnBG(10,"bg0101111秋葉原_裏通り_通常");
	FadeBG(0,true);

{	ClockPass(1813);}

	St("ML",700, @0,@0,"buフウリ_胸手_hard");
	FadeSt("ML",0,true);

	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100190wfu">
「どうして飛び降りなんてしたのですか？」

{	St("MR",700, @0,@0,"buノーコa_幽霊_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100100200nko">
「…………」

{	St("ML",700, @0,@0,"buフウリ_通常_angry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100210wfu">
「苦しいことがあっても、命を粗末にしては――」

{	St("MR",700, @0,@0,"buノーコa_幽霊_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100100220nko">
「してない」

{	St("ML",700, @0,@0,"buフウリ_通常_angry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100230wfu">
「でも、悲しそうな顔――」

{	St("MR",700, @0,@0,"buノーコa_幽霊_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100100240nko">
「うるさい」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100250wfu">
「でも――」

{	St("MR",700, @0,@0,"buノーコa_幽霊_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100100260nko">
「ほうっておいて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆場所：銭形公園_全景
	PrintDrawNut("上背景", 1000, 100, "blind_01_00_0", true);

	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);

//◆時間：ジャンプ
{	ClockPass(1816);}
	Wait(2000);

	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("C",300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100100270nko">
「やっときえた……？」

{	St("C",700, @0,@0,"buフウリ_前のめり_hard");
	DeleteSt("C",200,true);
	FadeTT($C_次,500,0,200,0,-100,Dxl1, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100280wfu">
「やっぱりだめ！」

{	St("C",700, @0,@0,"buフウリ_前のめり_shout");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100290wfu">
「放っておけません……
　辛いときはひとりじゃダメだと思います」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	DeleteSt("C",200,true);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100100300nko">
「いいかげんにしないと」

{	St("C",700, @0,@0,"buフウリ_前のめり_smile");
	DeleteSt("C",200,true);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100310wfu">
「肉まんをおなかいっぱい食べて――」

{	//★徒歩：ＳＥ
	CreateSE("SE01","se戦闘_カッター_刃出す01普通a");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("C",700, @0,@0,"buノーコa_通常_normal");
	DeleteSt("C",200,true);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100100320nko">
「きる」

{	St("C",700, @0,@0,"buフウリ_前のめり_smile");
	DeleteSt("C",200,true);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100330wfu">
「え？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	SetVolume("SE*", 500, 0, null);

//◆ＳＥ：ズシャアッ！！
	//★徒歩：ＳＥ
	CreateSE("SE01","se戦闘_切断01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEX("絵色１", 10000, "#000000");
	Fade("絵色１", 0, 1000, null, true);

	DeleteSt("C",0,true);
	Wait(1000);

	Fade("絵色１", 0, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100340wfu">
「きゅぅぅぅぅ――――っ！！」

{	St("ML",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100100350nko">
「…………え？」

{	St("MR",700, @0,@0,"buフウリ_通常_fear");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100360wfu">
「痛い痛い痛い痛い、痛いです――――ッ！！」

{	St("ML",700, @0,@0,"buノーコa_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100100370nko">
「あれ……？　なんで？　いたい？」

{	St("MR",700, @0,@0,"buフウリ_胸手_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100380wfu">
「痛いに決まっています……
　うう……急に刺すなんて……」

{	ClockPass(1817);}

{	St("MR",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100390wfu">
「ああ、どうしよう。
　この後ライブなのに血が――」

{	St("MR",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100400wfu">
「血が――血が――」

{	St("MR",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100410wfu">
「きゅ？」

{	St("MR",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("MR",200,true);
	CreateSE("SE04","seガヤ_交通少_l");
	MusicStart("SE04",1000,400,0,1000,null,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100420wfu">
「血……出てない？」

{	St("MR",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100430wfu">
「なんで？　私……刺されたのに……」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100100440nko">
「いたいの、きらい？」

{	St("MR",700, @0,@0,"buフウリ_通常_angry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100450wfu">
「当たり前じゃないですか！」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100100460nko">
「でもにとりはよろこぶ」

{	St("MR",700, @0,@0,"buフウリ_胸手_think");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100470wfu">
「それはきっと特殊だと思います……」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100100480nko">
「…………」

{
	St("MR",700, @0,@0,"buフウリ_胸手_think");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100490wfu">
「ええと……」

{	SetVolumeEX("@SE*", 2000, 0, null);
	St("MR",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("MR",200,true);
	MusicStart("@xbgm10",0,450,0,1000,null,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100500wfu">
「私の名前は、フウリです。
　あなたのお名前は？」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100100510nko">
「……ノーコ」

{	St("MR",700, @0,@0,"buフウリ_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100520wfu">
「ノーコちゃん、私と約束してくれませんか？」

{	St("MR",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100530wfu">
「気に食わないからって、ひとを傷つけたりしない」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100100540nko">
「…………」

{	ClockPass(1818);}

{	St("MR",700, @0,@0,"buフウリ_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100550wfu">
「約束、お願いします」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100100560nko">
「どうして？」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100100570nko">
「どうしてやくそくするの？」

{	St("MR",700, @0,@0,"buフウリ_通常_normal");
	St("MR",700, @0,@0,"buフウリ_胸手_smile");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("MR", 200, 4000);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100580wfu">
「どうしてって、それは――お友達だからです」

{	//★立ち絵プロセス：再定義
	AgainSt("MR",700, @0,@0,"buフウリ_胸手_smile");
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100100590nko">
「おともだち……？」

{	St("MR",700, @0,@0,"buフウリ_胸手_smile");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100600wfu">
「もう、たくさんお話ししました」

{	St("MR",700, @0,@0,"buフウリ_頬手_smile");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100610wfu">
「ケンカもして、仲直りもしました」

{	St("MR",700, @0,@0,"buフウリ_通常_smile");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100620wfu">
「だからふたりは、お友達！」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100100630nko">
「はじめて」

{	St("MR",700, @0,@0,"buフウリ_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100640wfu">
「え？」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100100650nko">
「そんなこといわれたの、はじめて」

{	St("MR",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100660wfu">
「そうなんですか……」

{	St("MR",700, @0,@0,"buフウリ_通常_smile");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100670wfu">
「うん、では！」

{	Move($MR_今, 200, @0, @40, Axl1, false);
	DeleteSt("MR",200,true);
	//★徒歩：ＳＥ
	CreateSE("SE01","se動作_ビニール漁る01.ogg");
	MusicStart("SE01",0,700,0,1000,null,false);}
　フウリはしゃがみ、転がった袋から肉まんを取り出す。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1819);}


	St("C",700, @0,@0,"buフウリ_前のめり_smile");
	MoveEX($C_次, 200, 0, -40, Dxl1, false);
	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100680wfu">
「私が初めてのお友達になります」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100100690nko">
「いや」

{	St("MR",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100700wfu">
「え？」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100100710nko">
「いらない」

{	St("MR",700, @0,@0,"buフウリ_通常_fear");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100720wfu">
「きゅぅぅぅぅぅ……！」

{	St("MR",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100730wfu">
「そんなこと、言わないでくださいよぅ」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100100740nko">
「うるさい」

{	St("MR",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100750wfu">
「でも、ひとりっきりは寂しい……」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100100760nko">
「にとりがいる」

{	St("MR",700, @0,@0,"buフウリ_頬手_happy");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100770wfu">
「そのニトリさんって、恋人――」

//◆演出指示：ナイフ構える
{	SetVolume("@x*", 1000, 1, NULL);
	//★徒歩：ＳＥ
	CreateSE("SE01","se戦闘_カッター_刃出す01普通a");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("C",700, @-200,@0,"fuノーコa_カッター_angry");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100100780nko">
「だまれ――」

{	St("C",700, @0,@0,"buフウリ_通常_fear");
	St("C",700, @0,@0,"buフウリ_胸手_think");
	Move("@StNameC/C*", 800, @0, @40, Dxl1, false);
	DeleteSt("C",200,true);
	FadeSt("C",200,true);
	FadeSt("C",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100790wfu">
「きゅぅっ！！」

{	St("C",700, @0,@0,"buノーコa_カッター_angry");
	DeleteSt("C",200,true);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100100800nko">
「――――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("C",300,true);
	Wait(1000);
	DeleteSt("C",500,true);

	St("C",700, @0,@0,"buフウリ_胸手_think");
//	MoveEX($C_次, 300, 0, -30, AxlDxl, false);
	FadeSt("C",300,true);

	CreateSE("SE04","seガヤ_交通少_l");
	MusicStart("SE04",1000,400,0,1000,null,true);

	Wait(2000);

	St("C",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100810wfu">
「――あれ？　無事？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteSt("C",400,true);


//◆演出指示：ノーコの姿、遠くに
	St("ML",700, @0,@0,"stノーコa_通常_sad");
	FadeSt("ML",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100100820nko">
「さよなら」

　フウリが目を開けると、ノーコの姿は既に遠い。

{	SetVolumeEX("@SE*", 2000, 0, null);
	SetVolumeEX("@xbgm10", 3000, 450, NULL);
	St("MR",700, @0,@0,"buフウリ_頬手_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100830wfu">
「ノーコちゃん！　あの――」

{	St("C",700, @0,@0,"fuフウリ_前のめり_shout");
	Move($MR_今, 200, @-20, @0, Axl1, false);
	DeleteSt("MR",200,true);
	MoveEX($C_次, 200, 0, -40, Dxl1, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100840wfu">
「今夜、私のバンドのカウントダウンライブがあります！」

{
//	St("C",700, @0,@0,"fuフウリ_前のめり_shout");
//	FadeSt("C",200,true);
}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100850wfu">
「そこの、スーパーノヴァってお店で行うライブ！
　『スーパー・スーパーノヴァ』！！」

{	St("C",700, @0,@0,"fuフウリ_前のめり_smile");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/100100860wfu">
「もし良かったら、ぜひ、来て下さいねっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("@SE*", 1000, 0, NULL);
	SetVolume("@x*", 3000, 0, NULL);

	CreateColorSP("絵暗転", 20000, "#000000");
	DrawTransition("絵暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	WaitPlay("@x*", null);

	EndScene();
}
