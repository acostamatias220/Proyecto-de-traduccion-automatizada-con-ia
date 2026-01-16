
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene a2040千秋.nss_MAIN
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
	$LFlag_NowFile = "a2040千秋.nss";
	$GameName = "a2050カゴメ.nss";
	//$GameName = "aa2050千秋_恵那.nss";
}

scene a2040千秋.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1030">
////////////header////////////
//file name "a2040千秋.nss"
//title "ヘンタイを追え！"
//previous "2030千秋_恵那.nss"

////////////footer////////////
//next "千秋" "aa2050千秋_恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2040);}

	SoundPlay("@xsong01",0,1,true);

//◆場所：エレキセンター_廊下
	//CreateColorSP("絵色演出黒", 5000, "#000000");
	OnBG(10,"bg0901100エレキセンター_廊下_通常");
	FadeBG(0,true);
	//FadeDelete("上背景", 0, null, true);

	if($PreGameName == "2030千秋_恵那.nss")
	{
	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);
	}else{
	FadeDelete("上背景", 0, null, true);
	}

	CreateSE("SE10","seガヤ_エレキセンター内部_l");
	MusicStart("SE10",0,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("L",700, @0,@0,"buジャブル_通常_normal");
	FadeSt("L",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/a20/400300010jbr">
「おお、おかえりデス」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("R",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300020kit">
「誰も来なかったか！？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buジャブル_通常_normal");
	FadeSt("L",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/a20/400300030jbr">
「あたりまえだのくらっか！」

{	St("L",700, @0,@0,"buジャブル_通常_hard");
	FadeSt("L",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/a20/400300040jbr">
「でもなにがいるデスカ？」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("R",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300050kit">
「なにがって？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buジャブル_通常_normal");
	FadeSt("L",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/a20/400300060jbr">
「奧から声したデスネ」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("R",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300070kit">
「…………え？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buジャブル_通常_normal");
	FadeSt("L",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/a20/400300080jbr">
「男の悲鳴、フタツデス」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"bu千秋_通常_think");
	FadeSt("R",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300090kit">
「…………」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300100kit">
（オレたちが入ったときから、中に人が潜んでた？）

{	St("R",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("R",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300110kit">
（ってか……そいつが犯人じゃね？）

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300120kit">
（ホントに犯人だったら、オレの手には――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆演出指示：回想開始：1910沙紅羅_千秋.nss

	SetVolumeEX("@SE1*", 500, 0, null);
	CreateSE("SE02","se擬音_フラッシュバック");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorEXadd("フラッシュ白", 4900, "WHITE");
	Fade("フラッシュ白",500,1000,null,true);
	PrintGO("上背景", 5000);
	DeleteSt("C",0,true);
	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	St("C",700, @0,@0,"bu沙紅羅_木刀_angry");
	FadeSt("C",0,true);
	FadeBG(0,true);
	SetTone("@OnBG*",Sepia);
	SetTone("@StNameC/C*",Sepia);

	Fade("絵色", 0, 200, null, true);
	Delete("フラッシュ白");
	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/a20/400300130skr">
「逃げるんじゃねぇッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：回想終了

	CreateColorEXadd("フラッシュ白", 4900, "WHITE");
	Fade("フラッシュ白",500,1000,null,true);
	PrintGO("上背景", 5000);
	DeleteSt("C",0,true);
	OnBG(10,"bg0901100エレキセンター_廊下_通常");
	FadeBG(0,true);
	SetTone("@OnBG*",null);
	SetTone("@StNameC/C*",null);
	St("C",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("C",0,true);
	Delete("フラッシュ白");
	FadeDelete("上背景", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300140kit">
「あ……」

{	DeleteAllSt(200,true);
	St("C",19010, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300150kit">
（そうだ……
　オレが無罪を証明するって、恵那に約束したんだ）

{	St("C",19010, @0,@0,"fu千秋_通常_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300160kit">
（こんなところで、誰かの手を借りるわけに行くかッ！）


{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300170kit">
「インド人！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300180kit">
「モデルガン……あったよな？　貸してくれ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	SetVolumeEX("@SE*", 1500, 0, null);
	CreateColorEX("絵背景", 5000, "BLACK");
	Fade("絵背景", 2500, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);
	}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300190kit">
「ふぅ……」

　千秋は薄暗いバックギャモンを見据えて、深呼吸。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	SetVolumeEX("@xsong01", 4000, 300, null);

	CreateSE("SE01","se動作_歩く03_l");
	MusicStart("SE01",0,700,0,1000,null,true);

//	Fade("@OnBG*", 1000, 0, null, true);

//◆演出指示：たっぷり時間をかけて移動

//	SceneOut(5000, 3000, "blind_01_00_0");

//◆ＳＥ：かすかな足音。靴と堅い床。軋む系の音ではなく、リノリウムとか。


{	ClockPass(2041);}



//◆場所：バックギャモン_正面

	CreateColorSP("絵色演出黒", 5000, "#000000");
	DeleteAllSt(0,true);
	Delete("絵背景");
	OnBG(10,"bg1001100バックギャモン_正面_通常");
	FadeBG(0,true);
	SceneIn(5000, "blind_01_00_1");
	SetVolumeEX("@SE01*", 500, 0, null);

//	CreateSE("SEL01","seガヤ_AV_l");
//	MusicStart("SEL01",0,350,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
{	St("C",19010, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300200kit">
（男の気配がふたつって言ってたけど……特に感じない）

{
//	St("C",19010, @0,@0,"fu千秋_通常_normal");
//	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300210kit">
（……うん）

{	St("C",19010, @0,@0,"fu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300220kit">
（大丈夫……大丈夫……）

{	St("C",19010, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300230kit">
（怖くない、怖くない……）

{
//	St("C",19010, @0,@0,"fu千秋_通常_normal");
//	FadeSt("C",200,true);
	}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300240kit">
（恵那のために、オレは――――！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：びゅん！　とか、あと勢いよくすだれを開ける音とか
	DeleteAllSt(200,true);



	CreateColorEX("絵色黒", 5000, "#000000");
	CreatePlainSP("絵板写", 1000);
	CreateSE("SE01","se動作_カーテン開ける");


	Wait(16);
	Zoom("絵板写", 3000, 2000, 2000, null, false);
	Wait(2500);
	Fade("絵色黒", 0, 1000, null, true);

	SetVolumeEX("@xsong01", 500, 450, null);

//	SetVolumeEX("@x*", 2000, 0, null);

	MusicStart("SE01",0,700,0,1100,null,false);
	DrawTransition("絵色黒", 300, 0, 1000, 100, null, "cg/data/slide_01_04_0.png", true);


//	St("C",700, @0,@0,"bu千秋_通常_fear");
//	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0056]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300250kit">
「――――ッッ！！！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆場所：バックギャモン_店内
	DeleteAllSt(0,true);

	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);



	Delete("絵板写");
	DrawDelete("絵色黒", 300, 100, null, "slide_01_04_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("C",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300260kit">
「う、動くな――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,true);
	TextBoxDelete(150);

//◆演出指定：ヘンタイ三兄弟：女児パンツとブルマーとしまぱんを被った三人組に出くわす
	St("L",700, @1124,@0,"buみそb_通常_shout");
	St("C",710, @1124,@0,"buブーb_通常_shock");
	St("R",720, @1124,@0,"buユージローb_通常_angry");
	FadeSt("L",0,false);
	FadeSt("C",0,false);
	FadeSt("R",0,true);


	SetVolumeEX("@xsong01", 500, 0, null);

	CreateSE("SE01","se擬音_ギャグ_ぴょこ");
	CreateSE("SE02","se擬音_ギャグ_ぴょこ");
	CreateSE("SE03","se擬音_ギャグ_ぴょこ");
	CreateSE("SE04","se擬音_ギャグ_ドーン");
	Wait(16);

	SetVolumeEX("SE*", 200, 0, null);
	MusicStart("SE01",0,700,0,900,null,false);
	Move("@StNameL/L*", 300, @-1124, @0, Dxl1, true);

	MusicStart("SE02",0,700,0,1000,null,false);
	Move("@StNameC/C*", 300, @-1124, @0, Dxl1, true);

	MusicStart("SE03",0,700,0,1100,null,false);
	Move("@StNameR/R*", 300, @-1124, @0, Dxl1, true);

	MusicStart("SE04",0,700,0,1000,null,false);
	Shake("@StNameL/L*", 300, 0, 10, 0, 0, 500, null, false);
	Shake("@StNameC/C*", 300, 0, 10, 0, 0, 500, null, false);
	Shake("@StNameR/R*", 300, 0, 10, 0, 0, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//◆音声指示：同時
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300270">
「どわああああああっ！！」「どわああああああっ！！」「どわああああああっ！！」「きゃうううううんっ！！」

</PRE>
	SetText();
	AddText(1,"「どわああああああっ！！」","小碓千秋","a20/400300270kit",false,false,1000);
	AddText(2,"「どわああああああっ！！」","みそ","a20/400300280mso",false,false,1000);
	AddText(3,"「どわああああああっ！！」","ブー","a20/400300290buu",false,false,1000);
	AddText(4,"「きゃうううううんっ！！」","ユージロー","a20/400300300ujr",false,false,1000);
	TypeBeginD();//―――――――――――――――――――――――――――
	TextBoxDelete(150);

//あきゅん「"みそb_通常_shout"」
//◆音声指示：同時
//【みそ】
//<voice name="みそ" class="みそ" src="voice/a20/400300280mso">
//「どわああああああっ！！」
//あきゅん「"ブーb_通常_shock"」
//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/a20/400300290buu">
//「どわああああああっ！！」
//◆音声指示：同時
//【ユージロー】
//<voice name="ユージロー" class="ユージロー" src="voice/a20/400300300ujr">
//「きゃうううううんっ！！」

//◆場所：バックギャモン_正面
	SceneOut(5000, 150, "circle_02_00_1");
	DeleteAllSt(0,true);
	OnBG(10,"bg1001100バックギャモン_正面_通常");
	FadeBG(0,true);
	St("C",700, @0,@0,"bu千秋_驚天_shock");
	FadeSt("C",0,true);

	CreatePlainSP("絵板写", 2000);
	Zoom("絵板写", 0, 3000, 3000, null, true);

	Zoom("絵板写", 200, 1000, 1000, null, false);
	SceneIn(150, "circle_02_00_0");

	SoundPlay("@xbgm03",0,450,true);

	WaitAction("@絵板写", null);
	Delete("絵板写");

	CreateSE("SE01","se擬音_ギャグ_ガーン01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	Shake("@StNameC/C*", 300, 0, 10, 0, 0, 500, null, false);
	}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300310kit">
「へ、ヘンタイだああああああ――――ッ！！」

//あきゅん「"みそb_通常_hard"」
{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそb_通常_hard");
	FadeSt("L",200,true);
	}
//【みそ】
<voice name="みそ" class="みそ" src="voice/a20/400300320mso">
「に、逃げるぞッ！！」

//あきゅん「"みそb_通常_normal"」
{
	CreateSE("SE01","se擬音_ギャグ_逃げる");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameL/L*", 300, @1024, @0, Dxl2, false);
	DeleteSt("L",200,true);
	St("R",700, @0,@0,"buブーb_通常_normal");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/a20/400300330buu">
「おうっ！！」

{
	CreateSE("SE02","se擬音_ギャグ_逃げる");
	MusicStart("SE02",0,700,0,900,null,false);
	Move("@StNameR/R*", 300, @-1024, @0, Dxl2, false);
	DeleteSt("R",200,true);
	St("C",700, @0,@0,"bu千秋_気合い_hard");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300340kit">
「だ、誰が逃がす――」

{
	DeleteAllSt(200,false);
	St("MR",700, @0,@60,"buユージローb_通常_angry");
	CreateSE("SE03","se擬音_ギャグ_ぴょこ");
	MusicStart("SE03",0,700,0,1000,null,false);
	Move("@StNameMR/MR*", 200, @0, @-60, null, false);
	FadeSt("MR",200,true);
	Shake("@StNameMR/MR*", 300, 0, 3, 0, 0, 500, null, false);
	}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/a20/400300350ujr">
「がうがうがうがうっ！！」

{	DeleteAllSt(200,false);
	St("L",2100, @0,@0,"bu千秋_驚天_shock");
	FadeSt("L",200,true);
	Shake("@StNameL/L*", 300, 0, 3, 0, 0, 500, null, false);
	}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300360kit">
「いででででっ！　コラ噛むな！
　っていうかブルマー越しに――！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreatePlainSP("絵板写", 5000);

	CreateMaskAXLSP("マスク", 2000, 0, 0, "ciスラッシュ_06_01", false, "ciスラッシュ_06_01z");
	CreateTextureSP("マスク/絵演背景", 20, -690, -280, "cg/bg/l/bg0901100エレキセンター_廊下_通常_l.jpg");
	CreateTextureEX("マスク/絵演みそ", 1110, 650, -80, "cg/bu/buみそb_通常_normal.png");

	Wait(16);
	DrawDelete("絵板写", 200, 100, null, "slide_01_03_0", true);

	Fade("マスク/絵演みそ", 200, 1000, null, false);
	Move("マスク/絵演みそ", 200, @-60, @0, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//あきゅん「"みそb_通常_normal"」
{
//	DeleteAllSt(200,false);
//	St("L",700, @0,@0,"buみそb_通常_normal");
//	FadeSt("L",200,true);
}
//【みそ】
<voice name="みそ" class="みそ" src="voice/a20/400300370mso">
「え、えらいぞ、犬っ！！」

//あきゅん「"ブーb_通常_smile"」
{
//	DeleteAllSt(200,false);
//	St("R",700, @0,@0,"buブーb_通常_smile");
//	FadeSt("R",200,true);
	CreateTextureEX("マスク/絵演ブー", 1100, 320, -30, "cg/bu/buブーb_通常_smile.png");
	Fade("マスク/絵演ブー", 200, 1000, null, false);
	Move("マスク/絵演ブー", 200, @-60, @0, DxlAuto, false);
}
//【ブー】
<voice name="ブー" class="ブー" src="voice/a20/400300380buu">
「オレたちを助けてくれるなんて――
　さすがは兄弟だッ！！」

{
//	DeleteAllSt(200,false);
	CreatePlainSP("絵板写", 5000);
	Wait(16);
	Delete("マスク*");
	DrawDelete("絵板写", 200, 100, null, "slide_01_03_1", true);
	St("L",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300390kit">
「な、なにを馬鹿なこと――いでで！！」

{	St("L",700, @0,@0,"bu千秋_頭突き_rage2");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300400kit">
「離せッ！　離せってこのバカ犬ッ！！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buユージローb_通常_angry");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/a20/400300410ujr">
「がうがうっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2042);}

	TextBoxDelete(150);

//◆場所：エレキセンター_廊下

	SceneOut(5000, 300, "slide_01_01_0");
	DeleteAllSt(0,true);
	OnBG(10,"bg0901100エレキセンター_廊下_通常");
	FadeBG(0,true);

	CreateSE("SEL01","se動作_集団走る");
	MusicStart("SEL01",1000,700,0,1000,null,true);

	SceneIn(300, "slide_01_01_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("C",700, @-50,@0,"buみそb_通常_shout");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);
	}
//【みそ】
<voice name="みそ" class="みそ" src="voice/a20/400300420mso">
「にげろおおお――――っ！！」

//あきゅん「"ブーb_通常_shout"」
{
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	DeleteSt("C",200,true);
	St("C",700, @-50,@0,"buブーb_通常_shout");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 0, 10, 0, 0, 500, null, false);
	}
//【ブー】
<voice name="ブー" class="ブー" src="voice/a20/400300430buu">
「うおおおおお――――っ！！」

{
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	DeleteSt("C",200,true);
	St("C",700, @-50,@0,"bu千秋_頭突き_rage2");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);
	}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300440kit">
「逃げるなああ――――っ！！」

{
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	DeleteSt("C",200,true);
	St("C",700, @-50,@0,"buユージローb_通常_angry");
	MusicStart("SEL01",2000,0,0,1100,null,true);
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);
	}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/a20/400300450ujr">
「がうがうがう――――っ！！」


{
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	DeleteSt("C",200,true);
	St("L",700, @0,@0,"buジャブル_通常_normal");
	FadeSt("L",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/a20/400300460jbr">
「……うるさいデスネー」

{	St("L",700, @0,@0,"buジャブル_通常_cool");
	FadeSt("L",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/a20/400300470jbr">
「さてさて、これからどうなることやら……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2043);}

	TextBoxDelete(150);

//◆場所：秋葉原_ガード下

	SceneOut(5000, 150, "circle_02_00_1");
	DeleteAllSt(0,true);
	OnBG(10,"bg0102100秋葉原_ガード下_通常");
	FadeBG(0,true);

	CreateSE("SEL01","se動作_集団走る");
	MusicStart("SEL01",1000,400,0,1000,null,true);

	SceneIn(150, "circle_02_00_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("C",19010, @0,@0,"fu千秋_気合い_hard");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300480kit">
（誰も出入りしてないってことは、つまり、あいつらが双六を殺した犯人ッ！！）

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300490kit">
（絶対、逃がしてたまるもんかッ！！）

{	DeleteAllSt(200,true);
	MusicStart("SEL01",500,700,0,1000,null,true);
	St("C",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300500kit">
「こら待てえっ！　殺人犯ッ！！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_shout");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/a20/400300510mso">
「さ、殺人犯だとォ！？」

//【みそ】
<voice name="みそ" class="みそ" src="voice/a20/400300520mso">
「オレたちゃ、偶然あそこに迷い込んだだけで、なにも悪さはしてね――」

//あきゅん「"ブーb_通常_ero"」
{
	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーb_通常_ero");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/a20/400300530buu">
「ひっひっふー！！」

//※下倉注：ユージローのマスクを外すために追加 2010/11/15
{
	St("L",700, @0,@0,"buユージローb_通常_ero");
	FadeSt("L",200,true);
}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/000300200ujr">
「はっはっはっはっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2044);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("C",690, @0,@80,"buみそa_通常_pinch");
	Move("@StNameC/C*", 200, @0, @-80, Dxl1, false);
	FadeSt("C",200,true);}
//【みそ】
// ここからみその立ち絵パンツなし？
<voice name="みそ" class="みそ" src="voice/a20/400300540mso">
「バッキャロー！　いつまでパンツ被ってんだ！」



{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300550kit">
「ほらやっぱり！　強盗殺人！」

//あきゅん「"ブーb_通常_normal"」
{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーb_通常_normal");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/a20/400300560buu">
「盗んだワケじゃないッ！！」


//※下倉注：ユージローのマスクを外すために追加 ここからユージローもブルマーなし 2010/11/15
{	St("L",700, @0,@0,"buユージローb_通常_hard");
	FadeSt("L",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/000301740ujr">
「わうっ！」


//あきゅん「"ブーb_通常_ero"」
{	St("R",700, @0,@0,"buブーb_通常_ero");
	St("L",700, @0,@0,"buユージローb_通常_ero");
	CreateSE("SE01","se擬音_ギャグ_きゃるーん");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeSt("L",200,false);
	FadeSt("R",200,false);
	Zoom("@StNameL/L*", 100, 1100, 1100, null, false);
	Zoom("@StNameR/R*", 100, 1100, 1100, null, true);
	Zoom("@StNameL/L*", 100, 1000, 1000, null, false);
	Zoom("@StNameR/R*", 100, 1000, 1000, null, true);
}
//【ブー】
<voice name="ブー" class="ブー" src="voice/a20/400300570buu">
「パンツの方が、オレたちの所へ飛び込んできたんだッ！」

//※下倉注：ユージローのマスクを外すために追加 2010/11/15
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/20/300100460ujr">
「わうわうっ！！」


{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300580kit">
「嘘つけええええッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


{	ClockPass(2045);}

//◆場所：秋葉原駅_正面

	SceneOut(5000, 300, "slide_01_01_0");
	DeleteAllSt("C",0,true);
	OnBG(10,"bg0201111秋葉原駅_正面_通常");
	FadeBG(0,true);
	SceneIn(300, "slide_01_01_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("L",700, @-50,@0,"buみそa_通常_shout");
	Move("@StNameL/L*", 300, @50, @0, Dxl2, false);
	FadeSt("L",200,true);
	}
//【みそ】
<voice name="みそ" class="みそ" src="voice/a20/400300590mso">
「明日はどっちだ！？　あっちだな！」

{	DeleteAllSt(200,false);
	St("R",700, @-50,@0,"buブーa_通常_normal");
	Move("@StNameR/R*", 300, @50, @0, Dxl2, false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/a20/400300600buu">
「道、わかるのか？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_shout");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/a20/400300610mso">
「わからん！」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_shock");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/a20/400300620buu">
「そんな――ってうお！　後ろ迫ってる！」

{	DeleteAllSt(200,false);
	St("C",700, @-50,@0,"bu千秋_気合い_shout");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300630kit">
「よっしゃ！　捕まえ――」

{	DeleteAllSt(200,false);
	SetVolumeEX("SE*", 300, 0, null);
	St("ML",700, @0,@0,"buユージローa_通常_ero");
	Move("@StNameML/ML*", 300, @50, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/a20/400300640ujr">
「わうわうっ！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_驚天_shy");
	Shake("@StNameC/C*", 300, 0, 8, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300650kit">
「うぎゃっ！　噛むな！　はなせ！」

{	St("C",700, @0,@0,"bu千秋_通常_pain");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300660kit">
「だ、誰かっ！　前の人を――捕まえてくださいッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("C",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300670kit">
（って言っても、関わりたくないよな、こんな集団――）

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu平次_通常_normal");
	FadeSt("L",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/a20/400300680fjh">
「お嬢ちゃん！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_驚天_shock");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300690kit">
「ひぇっ！　で……出たッ！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300700kit">
（なにも、こんなときに出なくても……
　なんか、またややこしくなりそうな……）

{	St("C",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300710kit">
（ええい！　構ってられるか！
　こうなったら、毒を以て毒を制す！）

{	St("C",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300720kit">
「あ、あの！　お願いです！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300730kit">
「あのふたり組、捕まえてください！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu平次_通常_hard");
	FadeSt("L",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/a20/400300740fjh">
「――悪者か？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2046);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300750kit">
「見たとおりの、悪者です！
　凶悪な強盗殺人犯ですッ！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu平次_通常_angry");
	FadeSt("L",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/a20/400300760fjh">
「強盗殺人犯、だとぉ！？」

{	St("L",700, @0,@0,"bu平次_御用だ_shout");
	FadeSt("L",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/a20/400300770fjh">
「よし来たあッ！」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/a20/400300780fjh">
「八代連綿と受け継がれたこの富士見式捕縛術！
　お目にかけてやろうじゃねぇかっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(2047);}

//◆場所：秋葉原_中央通り
	SceneOut(5000, 300, "slide_01_01_0");

	DeleteAllSt(0,true);
	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);

	CreateSE("SEL01","se動作_集団走る");
	MusicStart("SEL01",1000,700,0,1000,null,true);

	SceneIn(300, "slide_01_01_1");




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("C",700, @0,@0,"bu平次_御用だ_shout");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/a20/400300790fjh">
「御用だ御用だ御用だ御用だっ！！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_angry");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/a20/400300800mso">
「なんだありゃッ！！」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_shock");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/a20/400300810buu">
「変なのが出たッ！！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu平次_御用だ_shout");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/a20/400300820fjh">
「変なのはてめぇらのほうだろっ！！」

{
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300830kit">
「いやまあ、オレも含めてみんな変だけどな……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(2048);}

//◆場所：スーパーノヴァ_正面_ガラス補修
	SceneOut(5000, 300, "slide_01_01_0");

	DeleteAllSt(0,true);
	OnBG(10,"bg0501300スーパーノヴァ_正面_ガラス補修");
	FadeBG(0,true);
	SceneIn(300, "slide_01_01_1");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	St("R",700, @-50,@0,"buブーa_通常_shout");
	Move("@StNameR/R*", 300, @50, @0, Dxl2, false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/a20/400300840buu">
「ひぃ――！　はぁ――！　ふぅ――！」

{	DeleteAllSt(200,false);
	St("L",700, @-50,@0,"buみそa_通常_shout");
	Move("@StNameL/L*", 300, @50, @0, Dxl2, false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/a20/400300850mso">
「ブー！　早く来いッ！！」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_cry");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/a20/400300860buu">
「みそ……オレは、もう……だめだ……」

{	St("R",700, @0,@0,"buブーa_オラオラ_pinch");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/a20/400300870buu">
「オレを置いて……先に行け……！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_shout");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/a20/400300880mso">
「な、なにバカなこと言ってやがる！」

{	St("L",700, @0,@0,"buみそa_オラオラ_pride");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/a20/400300890mso">
「なんかこう、えーと、なんだっけ？　生まれたときは違うけど、死ぬときはみんな一緒的なアレ――」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_オラオラ_angry");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/a20/400300900buu">
「いいから行けよ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300910kit">
「オヤジさん！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu平次_御用だ_shout");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/a20/400300920fjh">
「任しとけぇ！　御用ッ！！」

{
	CreatePlainSP("絵板写", 5000);
	Request("絵板写", Smoothing);
	St("C",700, @0,@0,"bu平次_御用だ_happy");
	FadeSt("C",0,true);
	Wait(16);
	CreatePlainSP("絵板写上", 5010);
	Request("絵板写上", Smoothing);
	Wait(16);
	Zoom("絵板写*", 200, 1500, 1500, Dxl3, false);
	FadeDelete("絵板写上", 200, null, true);
}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/a20/400300930fjh">
「はっはっは――！　捕まえ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆ＳＥ：キキ――――ッ！！
//下明らかにエンジン音が入ってるので、別の音がいいかと思います

	DeleteAllSt(0,true);
	SetVolumeEX("SE*", 200, 0, null);
	CreateSE("SE01","seメカ_車_急ブレーキ");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵板写*", 200, 1000, 1000, Dxl1, true);
	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	St("MR",700, @60,@0,"bu平次_御用だ_shout");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 300, @-60, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/a20/400300940fjh">
「ストップ！！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_驚天_shock");
	CreateSE("SE02","se擬音_ギャグ_頭打つ");
	MusicStart("SE02",0,700,0,1000,null,false);
	Shake("@StNameML/ML*", 300, 8, 0, 0, 0, 1000, Dxl2, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300950kit">
「ふぎゃっ！」

{	St("ML",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300960kit">
「イデデデデデ……
　ちょ！　なんで急に止まるんだよ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/a20/400300970fjh">
「オレは警官だ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2049);}

//	TextBoxDelete(150);

	CreateTextureEX("絵背景", 2010, 0, -576, "cg/bg/l/bg2502300信号機_見上げ_赤標識無_l.jpg");
	Move("絵背景", 300, -580, -350, AxlDxl, false);
	Fade("絵背景", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240a]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/a20/400300980fjh">
「信号は、無視できねぇ――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(0,false);
	St("ML",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("ML",0,true);
	FadeDelete("絵背景", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240b]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400300990kit">
「非常時だろ！　赤信号ぐらい――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@50,"buユージローa_通常_ero");
	Move("@StNameC/C*", 300, @0, @-50, Dxl2, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/a20/400301000ujr">
「わうーんっ！　がぶ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_驚天_shock");
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 300, 0, 10, 0, 0, 500, Dxl1, false);
	}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400301010kit">
「イデえええええッ！」

{	St("ML",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400301020kit">
「く、クソッ！　離せ！　離せ、このバカあッ！」


{	St("ML",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/a20/400301030kit">
「オレは恵那のために、犯人を捕まえなきゃならねぇんだよおおおおおっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	EndScene();
}
//next "千秋" "aa2050千秋_恵那.nss"
