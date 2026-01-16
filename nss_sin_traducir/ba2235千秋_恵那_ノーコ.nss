
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ba2235千秋_恵那_ノーコ.nss_MAIN
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

	if($CharaName=="千秋"){
		$GameName = "ba2236千秋_恵那.nss";
	}else if($CharaName=="恵那"){
		$GameName = "ba2236千秋_恵那.nss";
	}else if($CharaName=="ノーコ"){
		$GameName = "ba2236ノーコ.nss";
	}else{
		$GameName = "ba2236千秋_恵那.nss";
	}

}

scene ba2235千秋_恵那_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="130">
////////////header////////////
//file name "ba2235千秋_恵那_ノーコ.nss"
//title ""
//previous "ba2230千秋_恵那.nss"
//previous "ba2230ノーコ.nss"

////////////footer////////////
//next "千秋" "ba2236千秋_恵那.nss"
//next "恵那" "ba2236千秋_恵那.nss"
//next "ノーコ" "ba2236ノーコ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

	Request("@その他男声", UnLock);

{	ClockPass(2235);}

	OnBG(10,"bg1101400スパコン館_裏面_半廃墟");
	FadeBG(0,true);

	SoundPlay("@xbgm19",0,450,true);
	FadeDelete("上背景", 0, null, true);

	CreateSE("SE01a","se戦闘_破壊01");

	CreateTextureEX("空", 10, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");
	CreateTextureEX("空２", 1000, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");

	CreateTextureEX("絵背景EV01", 120, 0, -555, "cg/ev/l/ev2220太四郎ビル大破壊_l.jpg");

	CreateColorEX("黒幕１", 3000, "BLACK");

	MusicStart("SE01a",0,700,0,1000,null,false);
	Fade("絵背景EV01", 0, 100, null, false);
	FadeF4("絵背景EV01", 100, 1000, 1000, 0, 0, Dxl1, false);
	Zoom("絵背景EV01", 1000, 1500, 1500, Dxl2, 800);

	FadeDelete("絵背景EV01", 200, null, true);


	Fade("黒幕１", 1000, 500, null, false);
	St("MR",700, @0,@0,"buミリＰb_通常_shock");
	St("ML",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("MR",200,false);
	FadeSt("ML",200,true);
	Shake("@M*", 300, 10, 0, 0, 0, 500, null, false);

/*
//◆音声指示：同時
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/350300010mrp">
「いやああああああああああッ！！」

//◆音声指示：同時
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ba22/350300020adi">
「きゃああああああああああッ！！」
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//◆音声指示：同時
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/350300010">
「「いやああああああああああッ！！」」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


// ちらつき対策が必要(ino
	SceneOut(6000, 300, "slide_04_01_1");


	DeleteAllSt(0,true);
	Fade("空", 0, 1000, null, true);
	Fade("黒幕１", 0, 0, null, false);

	St("R",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("R",0,true);

	SceneIn(300, "slide_04_01_0");

	SoundPlay("@xbgm19",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/350300030nko">
「く――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//あきゅん「修正指示：ノーコ攻撃演出」
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/ev/ev0000ノーコカッターd_big.jpg");
	Request("絵背景100", Smoothing);
	Zoom("絵背景100", 0, 1500, 1500, null, true);
	Rotate("絵背景100", 0, @0, @0, @-100, null,true);

	CreateColorEXadd("絵色100", 1500, "WHITE");


	CreateSE("SE02","se戦闘_風切り音10");
	CreateSE("SE02a","se戦闘_金属弾く05");


	MusicStart("SE02",0,700,0,1000,null,false);

	Rotate("@StNameR/R*", 400, @0, @0, @-30, Axl2,false);
	Move("@StNameR/R*", 100, @20, @10, Dxl1, true);
	Move("@StNameR/R*", 300, @-200, @50, Axl3, false);


	DeleteAllSt(300,true);


	Rotate("絵背景100", 500, @0, @0, @100, Axl2,false);
	Zoom("絵背景100", 600, 800, 800, Axl2, false);
	Fade("絵背景100", 100, 1000, null, true);
	Wait(500);
	MusicStart("SE02a",0,700,0,1000,null,false);
	Fade("絵色100", 100, 1000, null, true);

	CreateTextureEX("絵背景EV01", 120, center, middle, "cg/ev/ev2220太四郎ビル大破壊.jpg");
	Zoom("絵背景EV01", 0, 1100, 1100, null, true);

	CreateSE("SE01","se戦闘_倒壊02");
	MusicStart("SE01",0,500,0,1000,null,false);


	Shake("絵背景EV01", 1500, 10, 8, 0, 0, 1000, Dxl1, false);
	Fade("絵背景EV01", 100, 1000, null, true);
	FadeDelete("絵色100", 100, null, true);

	Delete("絵背景100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/350300040tsr">
「ぐおおおおおおおおお！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	SceneOut(6000, 300, "slide_04_01_1");

	Wait(500);

	FadeDelete("絵背景EV01", 200, null, true);
	Fade("空", 0, 0, null, true);
	Fade("空２", 0, 0, null, true);
	Fade("黒幕１", 0, 0, null, false);

	DeleteAllSt(0,false);

	SceneIn(300, "slide_04_01_0");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("MR",700, @0,@0,"buミリＰb_通常_shock");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/350300050mrp">
「す……すごい……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ba22/350300060adi">
「助けてくれた……？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@100,"buノーコa_通常_sad");
	Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/350300070nko">
「フウリは、あなたをかばったから――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ba22/350300080adi">
「あ……ありがとうございますッ！！」

{	DeleteAllSt(200,false);
	St("ML",700, @-50,@0,"bu千秋_朗らか_shock");
	Move("@StNameML/ML*", 300, @50, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/350300090kit">
「やっぱり味方だったんだ」

{	DeleteAllSt(200,false);
	St("MR",700, @50,@0,"bu恵那_哀愁_fear");
	Move("@StNameMR/MR*", 300, @-50, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/350300100fje">
「でも――危ないッ！！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/350300110nko">
「え――？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	SetVolumeEX("@xbgm*", 500, 0, null);

	CreateTextureEX("絵背景１", 2000, Center, @-400, "cg/ev/l/ev2220太四郎ビル大破壊_l.jpg");
	CreateTextureEX("絵背景２", 2010, Center, @0, "cg/ev/ev2220太四郎ビル大破壊.jpg");

	CreateSE("SE05","se戦闘_倒壊03");
	MusicStart("SE05",0,500,0,1000,null,false);
//	CreateSE("SE05","se環境_地鳴り03");
//	MusicStart("SE05",0,500,0,1000,null,false);

	Shake("絵背景１", 1000, 5, 2, 0, 0, 500, AxlDxl, false);
	Move("絵背景１", 300, @0, @350, Dxl2, false);
	Fade("絵背景１", 300, 1000, null, true);

	CreateSE("SE03","se戦闘_打撃音07");
//	CreateSE("SE05","se人体_倒れる01");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/350300120tsr">
「ぐおおおおおおおお――――っ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景100", 3100, Center, Middle, "cg/ev/l/ev2220太四郎ビル大破壊_l.jpg");
	SetBlur("絵背景100", true, 2, 500, 120, false);
	Request("絵背景100", Smoothing);

	CreateColorEXadd("絵色100", 15000, "WHITE");

	CreateSE("SE11","se戦闘_玉袋膨張");
	MusicStart("SE11",0,700,0,1000,null,false);

	CreateSE("SE04","se戦闘_玉袋アタック");
	MusicStart("SE04",0,700,0,1000,null,false);

	Fade("絵背景100", 200, 1000, null, false);
	Move("絵背景100", 500, -288, -841, Dxl2, false);
	Zoom("絵背景100", 500, 1500, 1500, Dxl2, 400);

	Fade("絵色100", 100, 1000, null, true);

	Delete("絵背景１");

//	St("C",700, @0,@0,"buノーコa_通常_fear");
//	FadeSt("C",200,true);
//	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/350300130nko">
「きゃあああああああ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指示：玉袋アタックを喰らう


	MusicStart("SE03",0,700,0,1000,null,false);
//	MusicStart("SE05",0,700,0,1000,null,false);


//	Shake("@StNameC/C*", 300, 20, 10, 0, 0, 500, null, false);
//	Move("@StNameC/C*", 300, @300, @0, Dxl2, false);

	Delete("SE01");
	Delete("SE03");
	Request("SE*", Lock);


	EndScene();
}
