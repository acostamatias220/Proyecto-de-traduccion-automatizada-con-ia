
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ba2236ノーコ.nss_MAIN
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
	$GameName = "ba2239似鳥_ノーコ.nss";
}

scene ba2236ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="400">
////////////header////////////
//file name "ba2236ノーコ.nss"
//title "復讐"
//previous "ba2235千秋_恵那_ノーコ.nss"

////////////footer////////////
//※下倉注：ジャンプ先変更 2010/11/17
//next "ノーコ" "ba2239似鳥_ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	CreateColorSP("白背景", 400, "WHITE");
	CreateTextureEX("絵背景100", 1000, 400, -350, "cg2/fu/fuノーコa_通常_normal.png");

{	ClockPass(2236);}

	Request("@SE*", UnLock);

	FadeDelete("上背景", 0, null, true);

	Wait(2000);

	SetVolumeEX("@SE*", 3000, 0, null);


	Fade("絵背景100", 2000, 300, null, false);
	Move("絵背景100", 50000, -650, @0, Dxl1, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100010nko">
（しろい……）

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100020nko">
（しろい、まっしろなせかい……）

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100030nko">
（まるで……にとりの……げんこうみたい……）

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100040nko">
（このしろいせかいのなかから……）

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100050nko">
（わたしはうまれた……）

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100060nko">
（にとりが、わたしをほっしたから……）

{
	Fade("絵背景100", 3000, 0, null, false);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100070nko">
（にとりが、わたしをひつようとしたから……）

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100080nko">
（そして……わたしは、いま……）

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100090nko">
（いま……どこにいるの？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2237);}


	TextBoxDelete(150);

//	Fade("白背景", 0, 0, null, true);
	Fade("絵背景100", 200, 0, null, true);
	Wait(50);
//	Fade("白背景", 0, 1000, null, true);
	Wait(100);


//◆場所：スパコン館_裏面_廃墟
	OnBG(10,"bg1101500スパコン館_裏面_廃墟");
	FadeBG(0,true);

//煙 もや
	CreateMovieEX("ムービー１", 11000, Center, Middle, true, true, "dx/mvk100.ngs");
	Request("ムービー１", AddRender);
	Zoom("ムービー１", 0, 3000, 3000, null, true);
	Fade("ムービー１", 0, 1000, null, true);

	DrawDelete("白背景", 1000, 500, null, "circle_02_00_1", true);

//◆演出指示：ノーコ、意識が戻る

	CreateSE("SE03","se環境_地鳴り03");
	MusicStart("SE03",0,500,0,1000,null,false);


	CreatePlainSP("揺用", 105);
	Shake("揺用", 3000, 15, 5, 0, 0, 1000, Dxl1, false);
	FadeDelete("揺用", 3000, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/360100100tsr">
「ぐおおおおお……ぐおおおお……」

{	St("C",700, @0,@50,"buノーコa_通常_shock");
	Move("@StNameC/C*", 300, @0, @-50, Dxl2, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100110nko">
「え？　ここは？」

{	St("C",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 5, 0, 0, 0, 500, null, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100120nko">
「どうして……
　どうして、こうなるの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

//	Move("@StNameC/C*", 3000, @-350, @0, AxlDxl, false);
	Move("@OnBG*", 3000, @150, @-100, null, false);
	Zoom("@OnBG*", 3000, 1500, 1500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100130nko">
「にとりが……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100140nko">
「にとりが、がれきのしたに……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100150nko">
「うそ……うそ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2238);}

	TextBoxDelete(150);

//◆演出指示：風がふき、モヤが晴れる


	FadeDelete("ムービー１", 3000, null, false);

	CreateSE("SE02","se環境_風_l");
	MusicStart("SE02",0,700,0,1000,null,false);

	Move("@StNameC/C*", 1000, @-50, @0, Dxl2, false);
	DeleteAllSt(500,false);

	Move("@OnBG*", 3000, @-150, @100, null, false);
	Zoom("@OnBG*", 3000, 1000, 1000, null, true);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040a]
{	St("C",700, @-50,@0,"buノーコa_発狂_normal");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	Shake("@StNameC/C*", 300, 2, 2, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100160nko">
「よくも――」

{
	Shake("@StNameC/C*", 300, 5, 2, 0, 0, 1000, null, false);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100170nko">
「よくも、にとりを――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SoundPlay("@xbgm09_noint",0,600,true);
	CreateColorEXadd("赤フラ", 5000, "#FF0000");
	St("C",19010, @0,@-160,"fuノーコa_通常_rage");

	Fade("赤フラ", 20, 1000, null, false);
//	Zoom("@StNameC/C*", 0, 2000, 2000, null, true);
	Zoom("@OnBG*", 0, 2000, 2000, null, true);
	Move("@StNameC/C*", 0, @0, @100, null, false);
	FadeSt("C",200,false);
	Shake("@StNameC/C*", 300, 5, 10, 0, 0, 500, null, false);
	Wait(200);
	Fade("赤フラ", 400, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040b]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100180nko">
「ゆるさない！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(50);

	SceneOut(25000, 100, "slide_01_01_0");

	CreateTextureEX("絵背景１", 2000, 0, 0, "cg/ev/ev2220太四郎ビル大破壊.jpg");
	CreateTextureEX("絵背景２", 2010, 0, -10, "cg/ev/l/ev2220太四郎ビル大破壊_l.jpg");
	Fade("絵背景１", 300, 1000, null, true);

	DeleteAllSt(0,false);
	Zoom("@OnBG*", 0, 1000, 1000, null, true);

	SceneIn(100, "slide_01_01_1");


	CreateSE("SE04","se環境_地鳴り02_l");
	MusicStart("SE04",0,500,0,1000,null,false);


	Fade("絵背景２", 2000, 1000, null, false);

	Shake("絵背景２", 5000, 10, 2, 0, 0, 500, null, false);
	Move("絵背景２", 5000, @-512, @0, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]

//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/360100190tsr">
「ぐおおおおおおおおお！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("絵背景*", 500, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("C",700, @0,@0,"buノーコa_通常_rage");
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, null, false);
	FadeSt("C",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100200nko">
「あなたは――にとりを――！」

{
	DeleteAllSt(200,false);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100210nko">
「あの――がれきのしたに――！」

{
	CreateSE("SE05","se戦闘_カッター_刃出す02早いa");
	MusicStart("SE05",0,700,0,1000,null,false);
	St("C",700, @0,@0,"buノーコa_カッター_rage");
	Shake("@StNameC/C*", 2000, 5, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100220nko">
「ころす――ころすころすころすころすころすころす」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100230nko">
「いのちにかえても――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100240nko">
「さしちがえてでも――」

{
	Shake("@StNameC/C*", 1000, 10, 5, 0, 0, 500, null, false);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100250nko">
「にとりのかたきを、とる――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//★ wam井野 ここから次の台詞までシナリオが空白でした。


	CreateSE("SE06","se動作_空飛ぶ02");
	MusicStart("SE06",0,700,0,1000,null,false);
	Move("@StNameC/C*", 200, @0, @-100, Dxl2, false);
	DeleteAllSt(100,false);

	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");
	CreateTextureEX("絵背景200", 100, -824, -576, "cg/ev/l/ev0000ノーコカッターc_l.jpg");
	CreateTextureEX("絵背景300", 100, Center, Middle, "cg/ev/ev0000ノーコカッターc.jpg");
	Zoom("絵背景300", 0, 2000, 2000, null, true);
	SetBlur("絵背景300", true, 2, 500, 50, false);
	SetBlur("絵背景200", true, 1, 500, 20, false);

	Fade("絵背景200", 300, 1000, null, false);
	BezierMove("絵背景200", 1500, (-824,-576){-1000,-100}{-1000,-100}(-1024,0){0,0}{0,0}(0,-288), Axl2, false);

	Wait(1300);
	Fade("絵背景300", 200, 1000, null, false);
	Zoom("絵背景300", 300, 1000, 1000, Dxl2, true);

	CreateSE("SE15","se戦闘_切断02");
	MusicStart("SE15",0,700,0,1000,null,false);


	Fade("絵背景100", 0, 1000, null, true);

	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景100");
	Delete("絵背景200");
	Delete("絵背景300");
	CreateTextureEX("空", 10, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");
	Fade("空", 0, 1000, null, true);
	Fade("タヌ", 0, 1000, null, true);
	Shake("タヌ", 3000, 10, 0, 0, 0, 500, null, false);

	Fade("絵色100", 500, 0, null, false);

	Wait(500);

	CreateSE("SE05","se環境_地鳴り03");
//	CreateSE("SE05","se戦闘_倒壊04");
	MusicStart("SE05",0,500,0,1000,null,false);
	CreateTextureEX("衝撃", 100, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");
	Fade("タヌ", 1000, 0, null, true);
	Fade("衝撃", 0, 500, null, false);
	Shake("衝撃", 1000, 5, 2, 0, 0, 500, AxlDxl, false);

	CreateSE("SE01","se戦闘_衝撃_衝突01");
	CreateSE("SE02","se戦闘_風切り音10");
	CreateSE("SE03","se戦闘_爆発01");
	CreateSE("SE06","se戦闘_ガラス割れる01");
	CreateSE("SE07","se戦闘_ガラス割れる02");

	Wait(500);

	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);
	MusicStart("SE03",0,700,0,1000,null,false);

	Shake("@OnBG", 500, 10, 10, 0, 0, 500, AxlDxl, false);

	Zoom("衝撃", 1000, 1500, 1500, null, false);
	Shake("衝撃", 1500, 10, 5, 0, 0, 500, AxlDxl, false);
	Fade("衝撃", 1500, 0, null, false);

	Fade("赤フラ", 200, 1000, null, true);
	Fade("赤フラ", 500, 0, null, false);

	MusicStart("SE06",0,700,0,1000,null,false);
	MusicStart("SE07",0,700,0,1000,null,false);

	Fade("絵色100", 200, 1000, null, true);
	Fade("絵色100", 500, 0, null, false);

	Wait(1000);

	CreateTextureEX("絵立絵", 1100, Center, Middle, "cg/bu/buノーコa_カッター_pinch.png");
	Request("絵立絵", Smoothing);
	Zoom("絵立絵", 0, 2000, 2000, null, true);
	Rotate("絵立絵", 0, @0, @0, @-45, null, true);
	Move("絵立絵", 0, @1150, @-900, Dxl2, false);
	Fade("絵立絵", 0, 1000, null, true);

	Wait(32);

	Zoom("衝撃", 0, 1000, 1000, null, true);
	Fade("衝撃", 0, 800, null, true);
	Shake("衝撃", 500, 20, 20, 0, 0, 500, AxlDxl, false);

	CreateSE("SE16","se戦闘_カッター_刃折れる");
	MusicStart("SE16",0,700,0,1000,null,false);

	CreateSE("SE11","se戦闘_風切り音03");
	MusicStart("SE11",0,700,0,1000,null,false);

	CreateSE("SE01","se戦闘_衝撃_衝突01");
	CreateSE("SE02","se戦闘_風切り音10");
	CreateSE("SE03","se戦闘_爆発01");
	MusicStart("SE01",0,700,0,1200,null,false);
	Wait(500);
	MusicStart("SE02",0,700,0,1000,null,false);
	MusicStart("SE03",0,700,0,1000,null,false);

	Move("絵立絵", 600, @-1500, @1200, Dxl2, false);
	Fade("絵立絵", 600, 0, null, false);

	Wait(1500);

	CreateSE("SE12","se戦闘_破壊03");
	MusicStart("SE12",0,700,0,1000,null,false);

	Shake("衝撃", 200, 20, 20, 0, 0, 500, AxlDxl, false);

	Fade("赤フラ", 100, 1000, null, true);
	Fade("赤フラ", 200, 0, null, true);
	Fade("赤フラ", 100, 1000, null, true);
	Fade("赤フラ", 500, 0, null, false);

	Shake("衝撃", 500, 20, 20, 0, 0, 500, AxlDxl, false);

	SetVolumeEX("@x*", 0, 0, NULL);

	CreateSE("SE17","se戦闘_カッター_転がる");
	MusicStart("SE17",0,700,0,1000,null,false);
	CreateSE("SE13","se人体_倒れる01");
	MusicStart("SE13",0,700,0,1000,null,false);


	CreateColorSP("黒幕", 5000, "#000000");
	Fade("黒幕", 500, 1000, null, true);

	OnBG(10,"bg1101500スパコン館_裏面_廃墟");
	FadeBG(0,true);
	Fade("衝撃", 0, 0, null, false);
	Move("@OnBG*", 0, @150, @-100, null, false);
	Zoom("@OnBG*", 0, 1500, 1500, null, true);

	Wait(3000);






	SetVolumeEX("@*", 2000, 0, NULL);

	FadeDelete("黒幕", 2000, null, true);


//★ wam井野 ここまで ba2236千秋_恵那.nss をみるとつかまってつぶされそうになっていますが。こちらでは踏みつぶされそうなテキストがあるため地面にたたきつけられて動けないような感じにしてあります。
//※下倉注：ご対応ありがとうございます。叩き付けられない描写で正解です。ba2236千秋_恵那.nssもこちらに合わせて修正します 2010/11/12
//★ wam井野 ba2236千秋_恵那.nss の注釈にてこちらにあわせてとコメントがあったため双方再修正いたしました。10/11/20

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100260nko">
「たたなきゃ……だめなのに……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100270nko">
「わたし……わたし……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100280nko">
「ほんとうに、やくたたず……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//窓準備
	CreateAXLWindowEX("絵窓", "Y", 2600, 100, 300, false);
	WindowAXLZoom("絵窓", "Y", 0, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 2520, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");
	SetShade("絵窓/絵演背景", MEDIUM);
	Move("絵窓/絵演背景", 0, @0, @100, null, true);

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 2520, center, middle, "cg2/fu/fuノーコa_通常_fear.png");
	CreateTextureEX("絵窓/絵演立絵2", 2530, center, middle, "cg2/fu/fuノーコa_通常_cry.png");
	Move("絵窓/絵演立*", 0, @0, @-110, null, true);

//動作
	Move("絵窓/絵演立*", 1000, @0, @-30, null, false);
	Fade("絵窓/絵演立絵", 1000, 1000, null, false);
	WindowAXLZoom("絵窓", "Y", 0, 1000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100290nko">
「うごけない……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100300nko">
「わたしは……このまま……ふみつぶされて……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100310nko">
「でも……それでも……いい」

{
//タチ絵スイッチ
	Fade("絵窓/絵演立絵", 300, 0, Axl2, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, false);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100320nko">
「にとりが……いないせかいなら……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100330nko">
「にとりがきえた、せかいなら……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100340nko">
「もう、いみなんてないから」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//収納
	WindowAXLZoom("絵窓", "Y",200, 0, Axl2, true);

	DeleteAllSt(500,false);

	TextBoxDelete(150);

	Fade("絵背景２", 300, 1000, null, false);

	Shake("絵背景２", 5000, 10, 2, 0, 0, 500, null, false);
//	Move("絵背景２", 5000, @-512, @0, Dxl2, false);

	CreateSE("SE03","se環境_地鳴り03");
	MusicStart("SE03",0,500,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/360100350tsr">
「ぐおおおおお……ぐおおおお……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("絵窓/絵演立絵2", 300, 0, null, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100360nko">
「しゅじんをまもれなかった、ばつ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100370nko">
「ごめんなさい、みんな」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100380nko">
「ごめんなさい、にと……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/360100390nki">
「――諦めるには、まだ早い」

{
	WindowAXLZoom("絵窓", "Y",200, 1000, Axl2, true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/360100400nko">
「このこえ――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SceneOut(25000, 300, "slide_03_01_0");

//	ClearWaitAll(0, 0);

/*

	Fade("白背景", 0, 1000, null, true);

	CreateTextureEX("絵背景１", 1600, center, -570, "cg/ev/l/ev2230似鳥堕皇降臨a_l.jpg");
	Fade("絵背景２", 0, 1000, null, true);
	Request("絵背景１", Smoothing);

	Fade("白背景", 500, 1000, null, true);



//窓準備
	CreateAXLWindowEX("絵窓", "Y", 2600, 100, 300, false);
	WindowAXLZoom("絵窓", "Y", 0, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 2520, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");
	SetShade("絵窓/絵演背景", MEDIUM)
	Move("絵窓/絵演背景", 0, @0, @0, null, true);

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 2530, center, middle, "cg/fu/fu似鳥堕皇_通常_rage.png");
	CreateTextureEX("絵窓/絵演立絵2", 2530, center, middle, "cg/fu/fu似鳥堕皇_通常_pride.png");
	Move("絵窓/絵演立*", 0, @0, @-300, null, true);

//動作
	Fade("絵窓/絵演立絵", 0, 1000, null, false);
	WindowAXLZoom("絵窓", "Y", 0, 1000, Dxl2, true);

*/

	EndScene();
}
