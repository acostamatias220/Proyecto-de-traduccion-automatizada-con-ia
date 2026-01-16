
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1940ノーコ.nss_MAIN
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
	$GameName = "1942沙紅羅_ノーコ.nss";
}

scene 1940ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="740">
////////////header////////////
//file name "1940ノーコ.nss"
//title "ひとさがし"
//previous "1930ノーコ.nss"

////////////footer////////////
//next "ノーコ" "1942沙紅羅_ノーコ.nss"

////////////body////////////


//■再定義定型文
	PrintGO("上背景", 30000);

	CreateSE("SE10","seガヤ_交通少_l");
	MusicStart("SE10",2000,700,0,1000,null,true);


{	ClockPass(1940);}

//◆場所：秋葉原_裏通り
	OnBG(10,"bg0101111秋葉原_裏通り_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);




{	St2("C",700, @0,@0,"fuノーコa_通常_normal","cg2/",".png");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/400100010nko">
「ミヅハをしらない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/400100020nko">
「どうやってさがす？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/400100030nko">
「こたえはかんたん」

{	St2("C",700, @0,@0,"fuノーコa_通常_smile","cg2/",".png");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/400100040nko">
「これをつかう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//	DeleteSt("C",200,true);

//◆ＳＥ：カッターナイフ、キリキリ
	//★徒歩：ＳＥ
	CreateSE("SE01","se戦闘_カッター_刃出す02早い");
	MusicStart("SE01",0,700,0,1000,null,false);

{	St("C",700, @0,@0,"fuノーコa_カッター_smile");
	FadeSt("C",400,true);}

	Wait(700);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/400100050nko">
「ミヅハ」

{	St("C",700, @0,@0,"fuノーコa_カッター_angry");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/400100060nko">
「でてきなさい」

　ノーコは呟きと共に、傍らの店の窓ガラスに、カッターナイフの刃を立てた。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move($C_今, 300, @0, @50, Dxl1, false);
	DeleteSt("C",300,true);

//◆ＳＥ：きいいいいいいいいいいい
	//★徒歩：ＳＥ
	CreateSE("SE01","se戦闘_カッター_窓擦る");
	MusicStart("SE01",0,500,0,1000,null,false);

	//Shake($C_今, 400, 0, 10, 0, 0, 500, null, false);
	//Move($C_今, 400, @0, @100, Dxl1, false);
	//DeleteSt("C",400,true);
	//FadeP5("@StNameC/C*",0,1000,200,0,5,Dxl1,false);

	PlainShake(10, 1000, 0, 10, 0, 0, 500, null, false);

	Wait(1000);

	St("C",700, @0,@0,"fuノーコa_カッター_pinch");
	FadeSt("C",300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/400100070nko">
「う……」

{	St2("C",700, @0,@0,"fuノーコa_通常_sad","cg2/",".png");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/400100080nko">
「ちょっと、きつい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/400100090nko">
「でも――」

{	St2("C",700, @0,@0,"fuノーコa_通常_normal","cg2/",".png");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/400100100nko">
「そのくらいはたえる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/400100110nko">
「にとりにけいべつされるよりいい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 2000, 0, null);
	CreateSE("SE11","seガヤ_街中_l");
	MusicStart("SE11",0,700,0,1000,null,true);



	TextBoxDelete(150);

	PrintFadeNut("上背景", 500, true);

	Wait(1000);

//◆場所：秋葉原_中央通り
	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 500, null, true);

	St("C",700, @0,@0,"fuノーコa_カッター_angry");
	MoveEX($C_次, 200, 0, -20, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/400100120nko">
「ミヅハ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/400100130nko">
「はやくでてきて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	//★徒歩：ＳＥ
	CreateSE("SE01","se戦闘_カッター_窓擦る");
	MusicStart("SE01",0,500,0,1000,null,false);

	PlainShake(10, 1000, 0, 10, 0, 0, 500, null, false);

	Shake($C_今, 400, 0, 10, 0, 0, 500, null, false);
	Move($C_今, 400, @0, @100, Dxl1, false);
	DeleteSt("C",400,true);

	Wait(500);

	St("C",700, @0,@0,"fuノーコa_カッター_shock");
	FadeYWW2($C_次,0,0,500,20,-20,Dxl1,false);
	FadeSt("C",500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/400100140nko">
「う――だんだんきもちわるく――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	PlainShake(10, 1000, 0, 10, 0, 0, 500, null, false);

	//★徒歩：ＳＥ
	CreateSE("SE01","se戦闘_カッター_窓擦る");
	MusicStart("SE01",0,500,0,1000,null,false);

	Shake($C_今, 400, 0, 10, 0, 0, 500, null, false);
	Move($C_今, 400, @0, @100, Dxl1, false);
	DeleteSt("C",400,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//★徒歩：声遠くから
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/400100150mzh">
「うきゃあああああ！！」

//★徒歩：声遠くから
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/400100160buu">
「ど、どうしたミヅハちゃん！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	//★徒歩：ＳＥ
	CreateSE("SE01","se戦闘_カッター_窓擦る");
	MusicStart("SE01",0,500,0,1000,null,false);}

	PlainShake(10, 1000, 0, 10, 0, 0, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//★徒歩：声遠くから
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/400100170mzh">
「だだだ、誰じゃ！
　この不愉快な音を止めるのじゃ！」

//★徒歩：声遠くから
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/400100180buu">
「不愉快な音？
　そんなの、どっからも聞こえねぇ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	//★徒歩：ＳＥ
	CreateSE("SE01","se戦闘_カッター_窓擦る");
	MusicStart("SE01",0,500,0,1000,null,false);}

	PlainShake(10, 1000, 0, 10, 0, 0, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
//★徒歩：声遠くから
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/400100190mso">
「ううう……なんか、オレも気持ち悪い……」

//★徒歩：声遠くから
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/400100200buu">
「え、みそも！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	//★徒歩：ＳＥ
	CreateSE("SE01","se戦闘_カッター_窓擦る");
	MusicStart("SE01",0,500,0,1000,null,true);}

	PlainShake(10, 1000, 0, 10, 0, 0, 500, null, false);

	PrintFadeNut("上背景", 500, true);

{	ClockPass(1941);}

//◆場所：あにのあな_正面_停電
	CreateTextureEX("絵背景１", 10, 0, -1152, "cg/bg/bg0301211あにのあな_正面_停電.jpg");
	Fade("絵背景１", 0, 1000, null, true);

	Wait(2000);

	St("C",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("C",0,true);

	CreateTextureEX("絵背景２", 10, 0, -1152, "cg/bg/bg0301211あにのあな_正面_停電.jpg");
	Fade("絵背景２", 0, 1000, null, true);

	#bg0301200あにのあな_正面_停電 = true;

	//▼シェイク
	MoveSSP1("@絵背景２",100000,0,10,0,10,500,null);
	MoveSSP2($C_今,100000,0,10,0,10,500,null);

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/400100210mzh">
「うぎゃあああ！　耳が！　頭が気持ち悪いいい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：ＳＥ止める
	SetVolume("@SE*", 300, 0, NULL);

	DeleteSt("C",300,false);
	Fade("絵背景２", 300, 0, null, true);
	Delete("絵背景２");

	//▼シェイク：停止
	MoveSSP1stop();
	MoveSSP2stop();

	St("ML",700, @0,@0,"buノーコa_通常_smile");
	FadeSt("ML",200,true);

	SoundPlay("@xbgm13",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/400100220nko">
「いた」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/400100230mzh">
「ん……」

{	St("MR",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/400100240mzh">
「き、貴様じゃな！　はた迷惑な音を立ておって！」

{	St("R",700, @0,@0,"buブーa_通常_ero");
	DeleteSt("MR",200,false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/400100250buu">
「ミヅハちゃん！　熱でもあるのか！？
　おおおおお、オデが！　おでことおでこで熱を――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("C",700, @0,@0,"buみそa_オラオラ_pinch");
	DeleteSt("R",200,false);

	FadeTT($C_次,0,0,200,0,-50,Dxl2, false)
	//MoveEX($C_次, 200, 0, -40, Dxl1, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/400100260mso">
「ふんっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",700, @0,@0,"buブーa_通常_shout");
	Move($C_今, 100, @0, @40, Axl1, false);
	DeleteSt("C",100,true);

	//★徒歩：ＳＥ
	CreateSE("SE01","se戦闘_打撃音04");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEX("絵色１", 10000, "#FFFFFF");
	Fade("絵色１", 0, 1000, null, true);
	FadeSt("C",0,true);

	Fade("絵色１", 500, 0, null, false);

	Shake($C_今, 500, 0, 20, 0, 0, 500, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/400100270buu">
「ふがッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreatePlainSP("絵背景２", 10000);
	DeleteSt("C",100,true);
	DrawDelete("絵背景２", 300, 100, null, "slide_02_00_1", true);

	//★徒歩：ＳＥ
	CreateSE("SE01","se人体_倒れる03");
	MusicStart("SE01",0,700,0,1000,null,false);

	PlainShake(10, 1000, 0, 10, 0, 0, 500, null, true);

	St("C",700, @0,@0,"buみそa_通常_hard");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/400100280mso">
「わりぃな兄弟。だが犯罪を見逃すわけには……」

{	St("MR",700, @0,@0,"buミヅハ_フラット_shock");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/400100290mzh">
「はれ……？
　おぬしら、こやつの姿が見えぬのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	DeleteSt("MR",200,true);

	St("R",700, @0,@0,"buみそa_通常_pinch");
	MoveEX($R_次, 200, 40, 0, Dxl1, false);
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/400100300mso">
「や……やっぱり、なにかいるのか！？」

{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	DeleteSt("R",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/400100310mzh">
「おぬしは比較的、霊感が強そうじゃからのう……」

{	St("R",700, @0,@0,"buみそa_通常_fear");
	DeleteSt("MR",200,false);
	FadeSt("R",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/400100320mso">
「ひ、だ、だめだ！」

//【みそ】
<voice name="みそ" class="みそ" src="voice/19/400100330mso">
「やっぱり……なんか、いるんだな？」

{	St("R",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("R",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/400100340mso">
「ブー。おいブー！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("C",700, @0,@0,"buブーa_通常_hard");
	DeleteSt("R",200,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/400100350buu">
「ん……むにゃむにゃ……」

{	St("C",700, @0,@0,"buブーa_通常_sad");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/400100360buu">
「だめだ……先っぽしか……入らないんだブー……」

{	St("R",700, @0,@0,"buみそa_オラオラ_pinch");
	DeleteSt("C",200,false);
	FadeSt("R",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/400100370mso">
「寝ぼけるな！　ブー！　頼む！」

{	St("R",700, @0,@0,"buみそa_オラオラ_angry");
	FadeSt("R",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/400100380mso">
「発明で！　倒せ！　ゴーストをバスターだ！」

{	St("C",700, @0,@0,"buブーa_通常_happy");
	DeleteSt("R",200,false);
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/400100390buu">
「お……おれの股間が……バスターズ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	St("R",700, @0,@0,"buみそa_オラオラ_shock");
	DeleteSt("C",200,false);
	FadeSt("R",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/400100400mso">
「だめだあ！」

{	St("MR",700, @0,@0,"buミヅハ_手構え_other");
	DeleteSt("R",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/400100410mzh">
「……まあおちつけ。
　そやつも悪さをするつもりはなさそうだ」

{	St("R",700, @0,@0,"buみそa_通常_fear");
	DeleteSt("MR",200,false);
	FadeSt("R",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/400100420mso">
「ほ、ホントか！？
　なんかオレ、前にもこの悪寒感じたことあるような……」

{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	DeleteSt("R",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/400100430mzh">
「おぬしら、沙紅羅とやらを追いかけるのだろう？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	St("MR",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("MR",200,true);}
//【ミヅハ】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
<voice name="ミヅハ" class="ミヅハ" src="voice/19/400100440mzh">
「こちらはわらわに任せて、おぬしらは先に行け！」

{	St("R",700, @0,@0,"buみそa_通常_happy");
	DeleteSt("MR",200,false);
	FadeSt("R",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/400100450mso">
「お、おお！　そうだったな！
　うんそうしようそうしよう！」

{	St("R",700, @0,@0,"buみそa_通常_smile");
	FadeSt("R",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/400100460mso">
「荷物とブーを頼む！」

{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	DeleteSt("R",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/400100470mzh">
「うむ……なかなか重いのう……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	St("C",700, @0,@0,"buブーa_通常_pinch");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/400100480buu">
「ま……待ってくれ……みそ……」

{	St("C",700, @0,@0,"buブーa_通常_hard");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/400100490buu">
「オレと……おまえは……いつでも一緒……
　ふたりは……なかよし……むにゃむにゃむにゃ……」

{	St("R",700, @0,@0,"buみそa_通常_sad");
	DeleteSt("C",200,false);
	FadeSt("R",200,true);

	St("R",100, @0,@0,"buみそa_通常_cry");
	//★立ち絵プロセス：開始
	FadeStPro("R", 200, 3000);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/400100500mso">
「ブー……ブーよッ！　すまねぇッ！
　おまえを置いていこうとしたオレを殴れ！」

{	//★立ち絵プロセス：再定義
	AgainSt("R",100, @0,@0,"buみそa_通常_cry");
	St("C",700, @0,@0,"buブーa_通常_ero");
	DeleteSt("R",200,false);
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/400100510buu">
「ちっちゃなあんよが……そんなトコ踏んだら……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("R",700, @0,@0,"buみそa_通常_cry");
	DeleteSt("C",200,false);
	FadeSt("R",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/400100520mso">
「殴れねぇだと！？　ふざけんな！
　てめぇがオレを殴るまで、絶対に離さねぇッ！！」

{	St("R",700, @0,@0,"buみそa_通常_pride");
	FadeSt("R",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/400100530mso">
「行くぞブー！」

{	St("C",700, @0,@0,"buブーa_通常_smile");

	//★徒歩：ＳＥ
	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteSt("R",200,false);
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/400100540buu">
「おうよ……みそ……むにゃむにゃ……」

{	//★徒歩：ＳＥ
	SetVolume("@xbgm*", 2000, 0, null);
	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteSt("C",200,false);
	Wait(2000);
	SetVolume("@SE*", 2000, 0, NULL);
	St("ML",700, @0,@0,"buノーコa_幽霊_think");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/400100550nko">
「へん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE10","seガヤ_街中_l");
	MusicStart("SE10",2000,700,0,1000,null,true);

{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
<voice name="ミヅハ" class="ミヅハ" src="voice/19/400100560mzh">
「まったくじゃ」

{	St("MR",700, @0,@0,"buミヅハ_通常_smile");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/400100570mzh">
「まあしかし、アレはアレで愛しく思えるものでな」

{	St("ML",700, @0,@0,"buノーコa_幽霊_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/400100580nko">
「……わからない」

{

	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/400100590mzh">
「して、おぬしは何者じゃ？
　何の用があって、あのような非道な真似を――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
<voice name="ノーコ" class="ノーコ" src="voice/19/400100600nko">
「みこがさがしてた」

{	St("MR",700, @0,@0,"buミヅハ_通常_surprise");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/400100610mzh">
「巫女……星か！？」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/400100620nko">
「かえってこいって」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/400100630mzh">
「断る」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/400100640nko">
「ちからづくでも――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：ギリギリギリ
	//★徒歩：ＳＥ
	CreateSE("SE01","se戦闘_カッター_刃出す03遅いa");
	MusicStart("SE01",0,700,0,1000,null,false);

{	St("MR",700, @0,@0,"buミヅハ_通常_angry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/400100650mzh">
「そ、それで切りつける気か？
　痛いぞ！　刺されると痛い！」

{	St("MR",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/400100660mzh">
「そのような野蛮な真似はやめるのじゃ！」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/400100670nko">
「ならばいっしょに――」

{	St("R",700, @0,@0,"buミヅハ_通常_angry");
	DeleteSt("C",200,false);
	MoveEX($R_次, 200, 20, -20, Dxl1, false);
	FadeSt("R",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/400100680mzh">
「いやじゃ！」

{	St("C",700, @0,@0,"buノーコa_カッター_angry");
	DeleteSt("R",200,false);
	MoveEX($C_次, 200, 0, -20, Dxl1, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/400100690nko">
「わがままは、ゆるさな――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指示：回想開始

	SetVolume("SE*", 1000, 0, null);

	CreateColorEXadd("絵色１", 20000, "#FFFFFF");
	Fade("絵色１", 300, 1000, null, true);

	ClockDelete(0,true);
	ClockTime(1941);

	DeleteSt("ML",0,true);
	CreateTextureEX_mono("絵背景２", 10, 0, 0, "cg/bg/bg0106100秋葉原_蔵前橋通り_通常.jpg");
	Fade("絵背景２", 0, 1000, null, true);

	St("C",700, @0,@0,"buフウリ_通常_normal");
	SetTone($C_次, Monochrome);
	FadeSt("C",0,true);

	Fade("絵色１", 700, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/400100700wfu">
//★徒歩：前の文章と違います
//「ノーコちゃん、私と約束してください！」
「ノーコちゃん、私と約束してくれませんか？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/400100710wfu">
「気に食わないからって、ひとを傷つけたりしない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指示：回想終了
	Fade("絵色１", 300, 1000, null, true);

	Delete("絵背景２");
	DeleteSt("C",0,true);

	ClockPass(1941);

	St("C",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("C",0,true);

	Fade("絵色１", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/400100720nko">
「――――」

{	St("R",700, @0,@0,"buミヅハ_通常_surprise");
	DeleteSt("C",200,false);
	FadeSt("R",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/400100730mzh">
「…………？」

{	St("R",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("R",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/400100740mzh">
「おぬし、どうした――」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
