
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene b2209ノーコ.nss_MAIN
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
	$GameName = "b2210沙紅羅_似鳥_ノーコ.nss";
}

scene b2209ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="190">
////////////header////////////
//file name "b2209ノーコ.nss"
//title "愛の略奪"
//previous "b2208千秋_恵那_ノーコ.nss"

////////////footer////////////

//next "ノーコ" "b2210沙紅羅_似鳥_ノーコ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：秋葉原_上空

	CreateTextureEX("絵背景100", 50, Center, 0, "cg/bg/bg2401100空_上空_通常.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	SetVolumeEX("@x*", 2000, 0, NULL);

	FadeDelete("上背景", 0, null, true);
{	ClockPass(2208);}

	CreateSE("SEL01","se環境_風_l");
	MusicStart("SEL01",2000,700,0,900,null,true);


{	St2("C",19010, @50,@0,"fuノーコa_通常_normal","cg2/",".png");
	Move("@StNameC/C*", 3000, @-50, @0, Dxl2, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/090100010nko">
「アザナエル……てにいれた」

{	St("C",19010, @0,@0,"fuノーコa_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/090100020nko">
「あとは、これをうつだけ」

{	St("C",19010, @0,@0,"fuノーコa_幽霊_smile");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/090100030nko">
「わたしはげんじつのそんざい」

{	St("C",19010, @0,@0,"fuノーコa_幽霊_think");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/090100040nko">
「しっぱいしたら……きっとしぬ」

{	St2("C",19010, @0,@0,"fuノーコa_通常_pain","cg2/",".png");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/090100050nko">
「かくごはできてる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(150,true);

	CreateColorEX("絵色100", 90, "BLACK");
	CreateTextureEX("絵背景200", 100, Center, Middle, "cg/img/imgアザナエルa.png");
	Move("絵背景200", 0, @0, @100, null, true);

	Move("絵背景200", 1000, @0, @-100, Dxl1, false);
	Fade("絵背景200", 300, 1000, null, false);
	Fade("絵色100", 300, 500, null, true);

//	St("C",700, @0,@0,"buノーコa_幽霊_sad");
//	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/090100060nko">
「でも……」

{
//	St("C",700, @0,@0,"buノーコa_幽霊_think");
//	FadeSt("C",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/090100070nko">
「…………」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/090100080nko">
「これであいをかちとっても、いみない？」

{
	Move("絵背景200", 1000, @0, @100, Axl1, false);
	FadeDelete("絵色100", 800, null, false);
	FadeDelete("絵背景200", 1000, null, true);

	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/090100090nko">
「そんなの、わかってる」

{	St("C",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/090100100nko">
「でも……」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/090100110nko">
「わたしには、これしかない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/090100120nko">
「にとりにあいされるには、これしか」

{	St("C",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/090100130nko">
「…………これしか、ないの？」




</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//あきゅん「修正指示：下記、窓枠かマスクで画面演出をお願いします」


//１

	CreateAXLWindowEX("絵窓１", "X",1600, 128,256, false);
	WindowAXLZoom("絵窓１", "X",0, 0, null, true);

	CreateTextureSP("絵窓１/絵背景", 1400, Center, Middle, "cg/bg/bg0103200秋葉原_中央通り_閉店.jpg");
	SetShade("絵窓１/絵背景", HEAVY);

	CreateTexture("絵窓１/キャラ", 1410, Center, InBottom, "cg/bu/bu平次_御用だ_angry.png");
	SetAlias("絵窓１/キャラ","絵窓１/キャラ");
	Move("絵窓１/キャラ", 0, @-310, @96, null, true);

//２

	CreateAXLWindowEX("絵窓２", "X",1600, 640,256, false);
	WindowAXLZoom("絵窓２", "X",0, 0, null, true);
	CreateTextureSP("絵窓２/絵背景", 1400, Center, Middle, "cg/bg/bg0103200秋葉原_中央通り_閉店.jpg");
	SetShade("絵窓２/絵背景", HEAVY);
	CreateTexture("絵窓２/キャラ", 1410, @-200, InBottom, "cg/bu/bu似鳥_通常_shout.png");
	SetAlias("絵窓２/キャラ","絵窓２/キャラ");
	Move("絵窓２/キャラ", 0, @-50, @96, null, true);

//３

	CreateAXLWindowEX("絵窓３", "X",1600, 256,256, false);
	WindowAXLZoom("絵窓３", "X",0, 0, null, true);
	CreateTextureSP("絵窓３/絵背景", 1400, Center, Middle, "cg/bg/bg0103200秋葉原_中央通り_閉店.jpg");
	SetShade("絵窓３/絵背景", HEAVY);
	CreateTexture("絵窓３/キャラ", 1410, Center, InBottom, "cg/bu/bu沙紅羅_通常_shout.png");
	SetAlias("絵窓３/キャラ","絵窓１/キャラ");
	Move("絵窓３/キャラ", 0, @-130, @96, null, true);
//	WindowAXLZoom("絵窓３", "X",300, 1000, Dxl2, true);

//４

	CreateAXLWindowEX("絵窓４", "X",1600, 512,256, false);
	WindowAXLZoom("絵窓４", "X",0, 0, null, true);
	CreateTextureSP("絵窓４/絵背景", 1400, Center, Middle, "cg/bg/bg0103200秋葉原_中央通り_閉店.jpg");
	SetShade("絵窓４/絵背景", HEAVY);
	CreateTexture("絵窓４/キャラ", 1410, @-180, InBottom, "cg/bu/buミリＰb_通常_shock.png");
	SetAlias("絵窓４/キャラ","絵窓２/キャラ");
	Move("絵窓４/キャラ", 0, @-50, @96, null, true);


	WindowAXLZoom("絵窓１", "X",300, 1000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]

//◆音声指示：遠くから

{	DeleteAllSt(200,false);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b22/090100140fjh">
「御用だ御用だあッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{
	WindowAXLZoom("絵窓１", "X",300, 0, Axl2, false);
	WindowAXLZoom("絵窓２", "X",300, 1000, Dxl2, true);
//	Delete("@絵窓１*");
	Shake("@絵窓２/キャラ*", 1000, 3, 10, 0, 0, 500, null, false);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/090100150nki">
「ぎゃああああああ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{
	WindowAXLZoom("絵窓２", "X",300, 0, Axl2, false);
	WindowAXLZoom("絵窓３", "X",300, 1000, Dxl2, true);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/090100160skr">
「おいコラ！　気合い入れて走れ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{
	WindowAXLZoom("絵窓３", "X",300, 0, Axl2, false);
	WindowAXLZoom("絵窓４", "X",300, 1000, Dxl2, true);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b22/090100170mrp">
「え？　ちょっとふたりとも、待ってェ！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	WindowAXLZoom("絵窓４", "X",300, 0, Axl2, true);
	Delete("@絵窓*");

	St("C",700, @-50,@0,"buノーコa_通常_shock");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/090100180nko">
「にとりが、おいかけられてる」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/090100190nko">
「いこう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE02","se戦闘_風切り音03");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 500, 0, 1000, 100, null, "cg/data/slide_03_01_1.png", false);

	Move("@StNameC/C*", 300, @50, @50, Dxl2, false);
	DeleteSt("C",200,true);

	WaitAction("@絵色黒", null);

	TextBoxDelete(150);






	EndScene();
}
