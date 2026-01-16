
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2340ノーコ_フウリ.nss_MAIN
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
	$GameName = "2348ノーコ_フウリ.nss";
}

scene 2340ノーコ_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1020">
////////////header////////////
//file name "2340ノーコ_フウリ.nss"
//title "きゅうせいしゅ"
//previous "2338ノーコ.nss"
//previous "2330フウリ.nss"

////////////footer////////////
//next "ノーコ" "2348ノーコ_フウリ.nss"
//next "フウリ" "2348ノーコ_フウリ.nss"

////////////body////////////

//あきゅん「演出：暗転開始スクリプト」

	PrintGO("上背景", 21000);

	ClockDelete(0,true);
	ClockTime(2340);

	CreateColorSP("フラッシュ白", 20000, "White");
	CreateSE("SE03","se戦闘_切断04");

	CreateTextureSPadd("ライン", 25000, 0, 0, "cg/ef/efカッター剣閃a.jpg");
	MusicStart("SE03",0,700,0,1000,null,false);
	Shake("ライン", 1000, 3, 0, 0, 0, 1000, null, false);

//	Fade("ライン", 0, 1000, null, true);
	Wait(100);

	Fade("フラッシュ白",300,1000,null,true);
	Delete("ライン");
	FadeDelete("上背景", 0, null, true);



//■再定義定型文

	OnBG(10,"bg2201100屋島_古戦場_通常");
	FadeBG(0,true);

	CreateTextureEX("絵背景100", 100, 0, 0, "cg/bg/l/bg2201100屋島_古戦場_通常_l.jpg");
	Fade("絵背景100", 0, 1000, null, true);


	CreateMask("マスク１", 1200, 0, 0, "cg/mask/ci特殊01.png", false);

	CreateColorSPadd("マスク１/絵色100", 1500, "White");

	CreateTextureSP("マスク１/絵背景100", 1200, Center, Middle, "cg/bg/bg1502200柳神社_お墓_雪.jpg");
	CreateTextureSP("マスク１/絵st100", 1250, -110, 0, "cg/bu/buノーコb_通常_fear.png");
	CreateMovieSP("マスク１/絵ムービー１", 1200, Center, Middle, true, true, "dx/mvk100.ngs");
	Request("マスク１/絵ムービー１", AddRender);
	Zoom("マスク１/絵ムービー１", 0, 1500, 2000, null, true);
	Rotate("マスク１/絵ムービー１", 0, @0, @0, 90, null,true);
	Move("マスク１/絵ムービー１", 0, 50, @0, null, true);

	CreateMovieSP("マスク１/絵ムービー２", 1300, Center, Middle, true, true, "dx/mvk100.ngs");
	Request("マスク１/絵ムービー２", AddRender);
	Zoom("マスク１/絵ムービー２", 0, 2000, 1500, null, true);
	Rotate("マスク１/絵ムービー２", 0, 180, @0, 113, null,true);
	Move("マスク１/絵ムービー２", 0, -50, 220, null, true);

	Fade("マスク１/絵ムービー１", 0, 900, null, true);
	Fade("マスク１/絵ムービー２", 0, 850, null, true);

//◆演出指示：背景はこっちとあっちの世界にカッターナイフで亀裂が入ってる

//ＳＥ：べきべきッ！　と空間にひびが入る
	CreateSE("SE01","se擬音_結界消滅");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateMovieSP("ムービー１", 1500, Center, Middle, true, true, "dx/mvk100.ngs");
	Request("ムービー１", AddRender);
	SetAlias("ムービー１","ムービー１");
	Zoom("ムービー１", 0, 3000, 3000, null, true);

	Zoom("ムービー１", 6000, 10000, 3000, AxlDxl, false);
	FadeDelete("マスク１/絵色100", 1200, null, false);
	FadeDelete("ムービー１", 5000, null, false);
	FadeDelete("フラッシュ白", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100010nko">
「フウリ、まって！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	Move("マスク１", 2000, -30, @0, Dxl1, false);
//	Move("マスク１/絵st100", 2000, -140, @0, Dxl1, false);
//	Move("マスク１/絵背景100", 2000, -50, @0, Dxl1, false);
//	Move("絵背景100", 2000, -200, @0, Dxl1, false);
//	Move("絵st100", 2000, 750, @0, Dxl1, false);

//	Move("マスク１", 0, -30, @0, Dxl1, false);
//	Move("マスク１/絵st100", 0, -140, @0, Dxl1, false);
//	Move("マスク１/絵背景100", 0, -50, @0, Dxl1, false);
//	Move("絵背景100", 0, -200, @0, Dxl1, false);
//	Move("絵st100", 1000, 750, @0, Dxl1, false);
//	Fade("絵st100", 500, 1000, null, true);
	CreatePlainSP("一瞬", 2005);
	Delete("マスク１/絵*");
	Delete("マスク１");
	Delete("絵*");

	CreateTextureEX("絵背景織田貫太透過", 101, 0, 0, "cg/bg/bg2201100屋島_古戦場_通常.jpg");

	SetVolume("SE*", 1000, 0, null);

	St("C",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("C",0,true);

	FadeDelete("一瞬", 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100020wfu">
「ノーコちゃん……？」

{	DeleteAllSt(200,true);
	St("MR",100, @0,@0,"bu貫太_通常_normal");
	Fade("絵背景織田貫太透過", 0, 250, null, true);
	FadeSt("MR",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/23/400100030odk">
「やっぱり、来たんだね」

{	DeleteAllSt(200,true);
	Delete("絵背景織田貫太透過");
	St("C",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100040wfu">
「ど、どこから――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);
	Delete("絵背景織田貫太透過");

	St("ML",700, @-100,@-50,"stノーコb_通常_sad");

	CreateSE("SE01","se動作_一歩");

	FadeSt("ML",200,false);
	MusicStart("SE01",0,600,0,1100,null,false);
	Move("@StNameML/ML*", 300, @0, @+60, Dxl1, true);
	Move("@StNameML/ML*", 200, @0, @-10, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100050nko">
「むこうのせかいから」

{	DeleteSt("ML",200,true);
	St("C",700, @-30,@0,"buフウリ_通常_sad");
	Move("@StNameC/C*", 200, @+30, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100060wfu">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	DeleteAllSt(200,true);

//一回目
//	CreateTextureEX("絵背景101", 100, 505, 120, "cg/bg/l/bg2201100屋島_古戦場_通常_l.jpg");
	CreateTextureEX("絵背景101", 100, 505, 120, "cg/bg/bg2201100屋島_古戦場_通常.jpg");
	CreateTextureEX("絵st201", 1000, -2, InBottom, "cg/st/stノーコb_通常_sad.png");
//	Zoom("絵背景101", 0, 2000, 2000, null, true);
	Zoom("絵背景101", 0, 3000, 3000, null, true);
	SetShade("絵背景101", MEDIUM);
	CreateTextureEX("絵st101", 200, 900, 250, "cg/fu/fuフウリ_通常_shock.png");
	Request("絵st101",Smoothing);
	Zoom("絵st101", 0, 1500, 1500, null, true);
	SetShade("絵st101", MEDIUM);
	Rotate("絵st101", 0, @0, 180, @0, null,true);

//二回目
	CreateTextureEX("絵背景1000", 1000, -786, 550, "cg/bg/bg2201100屋島_古戦場_通常.jpg");
	CreateTextureEX("絵st2000", 1000, 607, InBottom, "cg/st/stフウリ_通常_sad.png");
//	Zoom("絵背景1000", 0, 2000, 2000, null, true);
	Zoom("絵背景1000", 0, 3000, 3000, null, true);
	SetShade("絵背景1000", MEDIUM);
	CreateTextureEX("絵st1000", 2000, -1500, -400, "cg/fu/fuノーコb_通常_sad.png");
	Request("絵st1000",Smoothing);
	Zoom("絵st1000", 0, 1500, 1500, null, true);
	Rotate("絵st1000", 0, @0, 180, @0, null,true);
	SetShade("絵st1000", MEDIUM);

//三回目
	St("ML",700, @-50,@0,"fuノーコb_通常_sad");
	CreateTextureEX("絵背景100", 600, 412, 288, "cg/bg/bg2201100屋島_古戦場_通常.jpg");
	Request("絵背景100",Smoothing);
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetShade("絵背景100", MEDIUM);
	CreateMovieEX("ムービー１", 3000, Center, Middle, true, true, "dx/mvk100.ngs");
	Request("ムービー１", AddRender);
	SetAlias("ムービー１","ムービー１");
	Zoom("ムービー１", 0, 3000, 3000, null, true);

	CreateSE("SE10","se環境_風と葉っぱ_l");
	MusicStart("SE10",1000,500,0,1000,null,true);

	Move("絵背景101", 4000, 455, @0, null, false);
	Move("絵st101", 3500, 800, @0, null, false);
	Move("絵st201", 3800, -22, @0, null, false);

	Fade("絵背景101", 1000, 1000, null, false);
	Fade("絵st201", 1000, 1000, null, false);
	Fade("絵st101", 1000, 1000, null, true);

	Wait(2000);

	Move("絵背景1000", 4000, -936, @0, null, false);
	Move("絵st1000", 3500, -1400, @0, null, false);
	Move("絵st2000", 3800, 627, @0, null, false);

	Fade("絵背景1000", 1000, 1000, null, false);
	Fade("絵st2000", 1000, 1000, null, false);
	Fade("絵st1000", 1000, 1000, null, true);

	Delete("絵背景101");
	Delete("絵st101");
	Delete("絵st201");

	Wait(2000);

	Fade("絵背景100", 0, 1000, null, true);
	FadeSt("ML",0,true);

	Move("絵背景100", 2000, 512, @0, Dxl1, false);
	Move("@StNameML/ML*", 2000, @+50, @0, Dxl1, false);

	Fade("ムービー１", 1000, 800, null, false);
	Fade("絵背景1000", 1000, 0, null, false);
	Fade("絵st1000", 1000, 0, null, false);
	Fade("絵st2000", 1000, 0, null, true);
	Delete("絵背景1000");
	Delete("絵st1000");
	Delete("絵st2000");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100070nko">
「…………フウリ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100080nko">
「わたしといっしょに、きて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2341);}

////	TextBoxDelete(150);

	CreatePlainSP("一瞬", 2005);

	DeleteAllSt(0,true);

	Move("絵背景100", 0, -500, @0, Dxl1, true);
	St("MR",700, @0,@0,"fuフウリ_通常_sad");
	FadeSt("MR",0,true);
//	Move("絵背景100", 2000, -500, @0, Dxl1, false);
//	Move("@StNameMR/MR*", 2000, @-50, @0, Dxl1, false);

	Fade("ムービー１", 400, 0, null, false);
	FadeDelete("一瞬", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100090wfu">
「でも私、貫太さんと一緒に――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);
	CreatePlainSP("一瞬", 2005);

	DeleteAllSt(0,true);

	Move("絵背景100", 0, 512, @0, Dxl1, true);
	St("ML",700, @0,@0,"fuノーコb_通常_rage");
	FadeSt("ML",0,true);

	Fade("ムービー１", 400, 800, null, false);
	FadeDelete("一瞬", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100100nko">
「だめ」

{	St("ML",700, @0,@0,"fuノーコb_通常_sad");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100110nko">
「しんでは、だめ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);

	CreatePlainSP("一瞬", 2005);

	DeleteAllSt(0,true);

	Move("絵背景100", 0, -500, @0, Dxl1, true);
	St("MR",700, @0,@0,"fuフウリ_胸手_cry");
	FadeSt("MR",0,true);
//	Move("絵背景100", 2000, -500, @0, Dxl1, false);
//	Move("@StNameMR/MR*", 2000, @-50, @0, Dxl1, false);

	Fade("ムービー１", 400, 0, null, false);
	FadeDelete("一瞬", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100120wfu">
「貫太さんを失って、生きている意味なんて――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2342);}

////	TextBoxDelete(150);
	CreatePlainSP("一瞬", 2005);

	DeleteAllSt(0,true);

	Move("絵背景100", 0, 512, @0, Dxl1, true);
	St("ML",700, @0,@0,"fuノーコb_通常_rage");
	FadeSt("ML",0,true);

	Fade("ムービー１", 400, 800, null, false);
	FadeDelete("一瞬", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100130nko">
「ある」

{	St("ML",700, @0,@0,"fuノーコb_通常_sad");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100140nko">
「たくさん、ある」

{	St("ML",700, @0,@0,"fuノーコb_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100150nko">
「わたしは、しった」

{	St("ML",700, @0,@0,"fuノーコb_通常_sad");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100160nko">
「いままでのせかいは、にとりだけ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100170nko">
「とじて、いごこちがよくて、けど、さびしいせかい」

{	St("ML",700, @0,@0,"fuノーコb_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100180nko">
「でも、そのせかいがかわった」

{	St("ML",700, @0,@0,"fuノーコb_通常_smile");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100190nko">
「フウリにあって、ミヅハにあって、さくらに、えなに、たくさんのひとにあって、かわった」

{	St("ML",700, @0,@0,"fuノーコb_通常_sad");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100200nko">
「かなしいこと、たくさんある」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100210nko">
「まちがいも、たくさんある」

{	St("ML",700, @0,@0,"fuノーコb_幽霊_sad");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100220nko">
「うしなってしまったものも、もちろん、ある」

{	St("ML",700, @0,@0,"fuノーコb_幽霊_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100230nko">
「けど……」

{	St("ML",700, @0,@0,"fuノーコb_幽霊_smile");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100240nko">
「うれしいことも、たくさんある」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100250nko">
「わくわくすることも、たくさんある」

{	St("ML",700, @0,@0,"fuノーコb_通常_smile");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100260nko">
「おともだちも、できる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);

	CreatePlainSP("一瞬", 2005);

	DeleteAllSt(0,true);

	Move("絵背景100", 0, -500, @0, Dxl1, true);
	St("MR",700, @0,@0,"fuフウリ_胸手_sad");
	FadeSt("MR",0,true);
//	Move("絵背景100", 2000, -500, @0, Dxl1, false);
//	Move("@StNameMR/MR*", 2000, @-50, @0, Dxl1, false);

	Fade("ムービー１", 400, 0, null, false);
	FadeDelete("一瞬", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100270wfu">
「おともだち……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);

	CreatePlainSP("一瞬", 2005);

	DeleteAllSt(0,true);

	Move("絵背景100", 0, 512, @0, Dxl1, true);
	St("ML",700, @0,@0,"fuノーコb_通常_normal");
	FadeSt("ML",0,true);

	Fade("ムービー１", 400, 800, null, false);
	FadeDelete("一瞬", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100280nko">
「こんやのライブ、はんだみょうじんでやる」

{	St("ML",700, @0,@0,"fuノーコb_通常_smile");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100290nko">
「みんな、じゅんびをしてまってる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);

	CreatePlainSP("一瞬", 2005);

	DeleteAllSt(0,true);

	Move("絵背景100", 0, -500, @0, Dxl1, true);
	St("MR",700, @0,@0,"fuフウリ_通常_sad");
	FadeSt("MR",0,true);
//	Move("絵背景100", 2000, -500, @0, Dxl1, false);
//	Move("@StNameMR/MR*", 2000, @-50, @0, Dxl1, false);

	Fade("ムービー１", 400, 0, null, false);
	FadeDelete("一瞬", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100300wfu">
「みんな……待ってる……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2343);}

////	TextBoxDelete(150);

	CreatePlainSP("一瞬", 2005);

	DeleteAllSt(0,true);

	Move("絵背景100", 0, 512, @0, Dxl1, true);
	St("ML",700, @0,@0,"fuノーコb_通常_normal");
	FadeSt("ML",0,true);

	Fade("ムービー１", 400, 800, null, false);
	FadeDelete("一瞬", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100310nko">
「フウリ、やくそくした」

{	St("ML",700, @0,@0,"fuノーコb_通常_sad");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100320nko">
「わたしに、ライブをみせるって」

{	St("ML",700, @0,@0,"fuノーコb_通常_cry");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100330nko">
「やくそく、やぶる？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);

	CreatePlainSP("一瞬", 2005);

	DeleteAllSt(0,true);

	Move("絵背景100", 0, -500, @0, Dxl1, true);
	St("MR",700, @0,@0,"fuフウリ_通常_sad");
	FadeSt("MR",0,true);
//	Move("絵背景100", 2000, -500, @0, Dxl1, false);
//	Move("@StNameMR/MR*", 2000, @-50, @0, Dxl1, false);

	Fade("ムービー１", 400, 0, null, false);
	FadeDelete("一瞬", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100340wfu">
「あの、それは、でも――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("SE10", 1000, 0, null);

	CreatePlainSP("一瞬", 2005);

	DeleteAllSt(0,true);

	Delete("絵背景100");
	CreateTextureEX("絵st100", 200, Center, Middle, "cg/bu/bu貫太_通常_normal.png");
	CreateTextureEX("絵st200", 200, Center, Middle, "cg/bu/bu貫太_通常_smile.png");
	CreateTextureEX("絵st300", 200, Center, Middle, "cg/bu/bu貫太_通常_hard.png");

	Fade("絵st200", 0, 750, null, true);

	Fade("ムービー１", 400, 0, null, false);
	FadeDelete("一瞬", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　振り返るフウリに、貫太は消えかけた身体で微笑んだ。

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/23/400100350odk">
「いいんだよ」

//嶋：タグ変更しました
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100360wfu">
「貫太さん……」

//嶋：タグ変更しました
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100370wfu">
「本当に……いいんですか？」

//嶋：タグ変更しました
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100380wfu">
「もう、私の声は――」

{	SoundPlay("@xbgm28",2000,450,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/23/400100390odk">
「どんなに遠く離れても、僕は、君の音を聞いてる」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/23/400100400odk">
「自分がいるべき場所はどこか……君は知ってるはずだ」

//嶋：タグ変更しました
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100410wfu">
「貫太さん――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("絵st200", 500, 0, null, true);

	OnBG(10,"bg2201100屋島_古戦場_通常");
	FadeBG(0,true);

//◆演出指示：古戦場の背景が消えて、現実の世界に統合される
	CreateTextureEX("絵背景10", 1000, Center, Middle, "cg/bg/bg2201100屋島_古戦場_通常.jpg");
	Fade("絵背景10", 0, 1000, null, true);
	CreateTextureEXadd("絵背景100", 200, Center, Middle, "cg/bg/bg2201100屋島_古戦場_通常.jpg");
	Fade("絵背景100", 0, 300, null, true);
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetShade("絵背景100", MEDIUM);
	CreateTextureEX("絵背景200", 99, Center, Middle, "cg/bg/bg2201100屋島_古戦場_通常.jpg");
	Zoom("絵背景200", 0, 2000, 2000, null, true);
	SetShade("絵背景200", MEDIUM);
	Fade("絵背景200", 0, 1000, null, true);

	2340_SlowFade();

	Fade("絵背景10", 1000, 0, null, true);

	Wait(1000);

{	St("C",700, @0,@0,"fuフウリ_胸手_sad");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100420wfu">
「私……私……」

{	St("C",700, @0,@0,"fuフウリ_胸手_shout");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100430wfu">
「たたきます！　たくさん、たくさん！
　タイコを叩きます！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100440wfu">
「だから、貫太さん！」

{	St("C",700, @0,@0,"fuフウリ_胸手_cry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100450wfu">
「ずっと、ずっと、聴いててください！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2344);}

////	TextBoxDelete(150);
//	St("C",700, @0,@0,"bu貫太_通常_normal");
//	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/23/400100460odk">
「ああ。聴いてるよ」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/23/400100470odk">
「それじゃ――」

{	St("C",700, @0,@0,"fuフウリ_通常_fear");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100480wfu">
「貫太さん……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景3000", 2000, Center, 78, "cg/bg/bg2201100屋島_古戦場_通常.jpg");
	Zoom("絵背景3000", 0, 2000, 2000, null, true);
	SetShade("絵背景3000", MEDIUM);
	CreateColorEXadd("絵色100", 2100, "White");
	SetShade("絵背景3001", MEDIUM);
	CreateTextureEX("絵背景4000", 2500, Center, -426, "cg/bu/l/st織田貫太_通常_x03.png");


	CreateTextureEX("絵背景1000", 1000, Center, Middle, "cg/bg/bg2201100屋島_古戦場_通常.jpg");
	CreateTextureEXadd("絵背景2000", 1000, Center, Middle, "cg/bg/bg2201100屋島_古戦場_通常.jpg");

	Fade("絵背景1000", 500, 1000, null, false);
	Fade("絵背景2000", 500, 300, null, true);

	CreateTextureEX("絵st1000", 1200, Center, Middle, "cg/st/st貫太_通常_normal.png");
	Fade("絵st1000", 300, 600, null, true);
	CreateTextureEX("絵st2000", 1200, Center, Middle, "cg/st/st貫太_通常_happy.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/23/400100490odk">
「さよなら、フウリ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("絵背景300*", 2000, @0, 278, Dxl1, false);
	Move("絵背景4000", 2000, @0, -126, Dxl1, false);
	Fade("絵色100", 4000, 300, null, false);
	Fade("絵背景3000", 500, 1000, null, false);
	Fade("絵背景4000", 500, 750, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/23/400100500odk">
「君のことが、ずっと、好きだった」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100510wfu">
「貫太さん……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreatePlainSP("一瞬", 2600);

	Delete("絵背景10");
	Delete("絵背景100");
	Delete("絵背景200");
	Delete("絵背景3000");
	Delete("絵背景3001");
	Delete("絵背景4000");
	Delete("絵st1000");
	Delete("絵色100");
	2340_SlowFadeDelete();

	Fade("絵st2000", 0, 600, null, true);

	FadeDelete("一瞬", 1000, null, true);

	CreateColorEXadd("絵色100", 5000, "White");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
{	Fade("絵色100", 5000, 200, null, false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100520wfu">
「私も――私も――！！」

{	Fade("絵色100", 5000, 500, null, false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100530wfu">
「貫太さん――貫太さんの――ことが――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("@xbgm*", 1000, 0, null);

{	Fade("絵色100", 1000, 1000, null, false);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100540wfu">
「好きでした――――――――――！！！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：最後まで告白できないまま、消えてしまう

//◆演出指定：時間経過
	CreateColorEX("フラッシュ白", 20000, "Black");
	Fade("フラッシュ白",2000,1000,null,true);

	DeleteAllSt(0,true);

	Delete("絵背景1000");
	Delete("絵背景2000");
	Delete("絵st2000");
	Delete("絵色100");
	Delete("絵st100");
	Delete("絵st200");
	Delete("絵st300");
	Delete("ムービー１");

	Wait(3000);

{	ClockPass(2345);}

//◆場所：柳神社_お墓_雪
	OnBG(100,"bg1502200柳神社_お墓_雪");
	FadeBG(0,true);



	Fade("フラッシュ白",2000,0,null,true);
	Delete("フラッシュ白");

{	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100550wfu">
「消え……た……」

{	St("C",700, @0,@0,"buフウリ_胸手_shout");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100560wfu">
「ノーコちゃん……貫太さん……！」

{	St("C",700, @0,@0,"buフウリ_胸手_cry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100570wfu">
「貫太さん、消えちゃったよお…………！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);

	DeleteAllSt(200,true);

{	St("MR",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100580nko">
「フウリ……」

{	CreateSE("SE01","se動作_抱く");
	Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteSt("MR",200,true);}
　崩れ落ちるフウリの身体を、ノーコが抱き留める。

{	St("C",700, @0,@0,"buフウリ_胸手_cry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100590wfu">
「貫太さん……貫太さん……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100600wfu">
「ひぐっ、うきゅ……うきゅううう……」

{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"buノーコb_幽霊_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100610nko">
「だいじょうぶ。だいじょうぶ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);

{	St("C",700, @0,@0,"buノーコb_幽霊_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100620nko">
「アザナエルがかなえるのは、ほんとうのねがい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100630nko">
「いまのねがいは、フウリがのぞんだこと」

{	St("C",700, @0,@0,"buノーコb_幽霊_smile");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100640nko">
「フウリののぞみがかなったことを、きっと、かんたさんも、よろこんでる」

{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100650wfu">
「うん。そうだよね。
　貫太さんも……喜んでくれる……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"buノーコb_通常_smile");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100660nko">
「さあ、いこう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100670nko">
「じかんがない。すずたちがまってる」

{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100680wfu">
「は、はい……そうですね……行かなきゃ……」

{	St("C",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100690wfu">
「でも……も、もうこんな時間ですか！？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100700wfu">
「急がないと、間に合わな――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2346);}

////	TextBoxDelete(150);

	DeleteAllSt(200,true);

//みそ用
	CreateWindow("win01", 1500, 256, 0, 512, 576, false);

	CreateTextureEX("win01/絵背景100", 900, Center, InBottom, "cg/ef/ef003_汎用移動.jpg");
	CreateTextureEX("win01/絵st1000", 1000, 336, 166, "cg/bu/bu沙紅羅_通常_angry.png");
	Zoom("win01/絵st1000", 0, 1500, 1500, null, true);
	Request("win01/絵st1000", Smoothing);
	CreateMovie("win01/絵M1000", 1100, Center, Middle, true, true, "dx/mv_集中線白a1.ngs");
	Fade("win01/絵M1000", 0, 0, null, true);
	SetAlias("win01/絵M1000","win01/絵M1000");
	Zoom("win01/絵M1000", 0, 2000, 2500, null, true);

//◆ＳＥ：ぷっぷー！　クラクション
	CreateSE("SE01","seメカ_車_クラクション_l");
	MusicStart("SE01",0,500,0,1000,null,false);

	Wait(1000);

{	St("MR",700, @0,@0,"buノーコb_通常_shock");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100710nko">
「…………？」

{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100720wfu">
「クラクション？」

{	St("MR",700, @0,@0,"buノーコb_幽霊_think");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100730nko">
「でも、くるまなんて――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateTextureEX("絵背景1000", 2000, -1024, -282, "cg/img/l/imgミリＰ車飛翔_l.jpg");
	SetBlur("絵背景1000", true, 3, 500, 50, false);

	CreateSE("SE02","seメカ_車_走行車外");
	MusicStart("SE02",0,500,0,1000,null,true);

	Shake("絵背景1000", 3000, 0, 8, 0, 0, 1000, null, false);
	Move("絵背景1000", 2000, -200, @0, Dxl1, false);
	Fade("絵背景1000", 300, 1000, null, true);

	SetVolumeEX("SE02", 500, 800, null);
	Wait(1000);
	CreateColorEX("フラッシュ白", 15000, "WHITE");


//◆演出指示：ドカーン！
	CreateSE("SE01","se戦闘_爆発01");

	SetVolume("SE02", 300, 0, null);
	MusicStart("SE01",0,800,0,1000,null,false);
	Fade("フラッシュ白",200,1000,null,true);

	Delete("絵背景1000");

	OnBG(10,"bg1501200柳神社_境内_雪");
	FadeBG(0,true);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg1501200柳神社_境内_雪.jpg");

	Shake("絵背景100", 1000, 5, 8, 0, 0, 1000, null, false);

	Fade("フラッシュ白",1000,0,null,true);
	Delete("フラッシュ白");


{	St("ML",700, @+100,@0,"buフウリ_通常_shock");
	Move("@StNameML/ML*", 200, @-100, @0, Dxl1, false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100740wfu">
「空から――」

{	St("MR",700, @-100,@0,"buノーコb_通常_shock");
	DeleteSt("ML",200,false);
	Move("@StNameMR/MR*", 200, @+100, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100750nko">
「くるまがふってきた……？」

{	DeleteSt("MR",200,true);
	SoundPlay("@xbgm03",500,450,true);
	St("C",700, @0,@+100,"buそに子_通常_shout");
	FadeSt("C",200,false);
	Move("@StNameC/C*", 150, @0, @-110, Dxl1, true);
	Move("@StNameC/C*", 150, @0, @+10, Dxl1, true);}
//【そに子】
<voice name="そに子" class="そに子" src="voice/23/400100760snk">
「フウリちゃん！」

{	DeleteSt("C",200,true);
	St("ML",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100770wfu">
「わー！　ニコちゃん！」

{	DeleteSt("ML",200,true);
	St("MR",700, @+100,@0,"buみそa_オラオラ_shout");
	Move("@StNameMR/MR*", 200, @-100, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/400100780mso">
「さ、早く乗るんだッ！！」

{	St("ML",700, @-100,@0,"buブーa_オラオラ_shout");
	DeleteSt("MR",200,false);
	Move("@StNameML/ML*", 200, @+100, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/23/400100790buu">
「もう時間がねぇぞ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);

	DeleteSt("ML",200,true);

//みそ用
//	CreateWindow("win01", 1500, 256, 0, 512, 576, false);
	CreateAXLWindowEX("win01", "X", 1500, 256, 512, false);
	WindowAXLZoom("win01", "X", 0, 0, null, true);

	CreateTextureEX("win01/絵背景100", 900, Center, InBottom, "cg/ef/ef003_汎用移動.jpg");
	CreateTextureEX("win01/絵st1000", 1000, 87, 0, "cg/bu/buみそa_オラオラ_angry.png");
	Zoom("win01/絵st1000", 0, 1500, 1500, null, true);
	Request("win01/絵st1000", Smoothing);
	CreateMovie("win01/絵M1000", 1100, Center, Middle, true, true, "dx/mv_集中線白a1.ngs");
	Fade("win01/絵M1000", 0, 0, null, true);
	SetAlias("win01/絵M1000","win01/絵M1000");
	Zoom("win01/絵M1000", 0, 2000, 2500, null, true);

{	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100800wfu">
「でも、この車、ミリＰさんの！？
　なんで空を飛べる――」

{	St("MR",700, @0,@0,"buノーコb_通常_rage");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100810nko">
「いいから、はやく！」

{	St("C",700, @0,@0,"buフウリ_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100820wfu">
「は、はい」

{	DeleteSt("C",200,true);}
　促され、フウリとノーコが車に乗り込んだ直後――

{	SetVolume("@SE11", 300, 0, null);
	CreateSE("SE10","se環境_地鳴り01_l");
	MusicStart("SE10",500,400,0,1000,null,true);
	Move("win01/絵st*", 0, 87, -82, null, true);
	Shake("win01/絵st*", 10000, 0, 1, 0, 0, 1000, null, false);
	Fade("win01/絵*", 300, 1000, null, false);
	DrawTransition("win01/絵*", 500, 0, 1000, 100, Dxl1, "cg/data/slide_06_00_1.png", false);
	WindowAXLZoom("win01", "X", 300, 1000, Dxl2, true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/400100830mso">
「うおりゃああああああああああああああッッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2347);}


////	TextBoxDelete(150);

	SetVolume("@SE10", 500, 0, null);

	Fade("win01/絵*", 300, 0, null, false);
	DrawTransition("win01/絵*", 300, 1000, 0, 100, Dxl1, "cg/data/slide_06_00_1.png", false);
	WindowAXLZoom("win01", "X", 300, 0, Dxl2, true);
	Delete("@win01*");

	CreateTextureEX("絵背景100", 5000, Center, -450, "cg/bg/bg2401100空_上空_通常.jpg");
	SetBlur("絵背景100", true, 3, 500, 50, false);

	CreateSE("SE01","se動作_空飛ぶ02");
	MusicStart("SE01",0,700,0,1000,null,false);


	Move("絵背景100", 700, @0, 0, Dxl1, false);
	Fade("絵背景100", 300, 1000, null, true);

	Wait(200);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("win01/絵*");
	Delete("win01");
	Delete("絵背景100");

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/img/imgミリＰ車飛翔.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	CreateTextureEX("絵背景101", 101, Center, Middle, "cg/img/imgミリＰ車飛翔.jpg");
	Fade("絵背景101", 0, 1000, null, true);

	Shake_Loop_shima("@絵背景101","絵シェイク");

//---------------------------------------//
//マスク準備
//	CreateMask("絵マスク", 6000, 0, 144, "cg/mask/ciライン_00_00.png", false);
	CreateWindow("絵マスク", 3000, 0, 100, 1024, 376, false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureEX("絵マスクライン1", 3001, 0, 89, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵マスクライン2", 3001, 0, 460, "cg/mask/ciライン_00_00z_ogm.png");

	CreateTextureEX("絵マスク/絵背景100", 2500, 0, -300, "cg/bg/bg2401100空_上空_通常.jpg");
	Request("絵マスク/絵背景100", Smoothing);
	Zoom("絵マスク/絵背景100", 0, 1500, 1500, null, true);
	SetShade("絵マスク/絵背景100", MEDIUM);

//立ち絵準備
	CreateTextureEX("絵マスク/絵立絵", 3000, 107, 221, "cg/bu/buフウリ_通常_shock.png");
	CreateTextureEX("絵マスク/絵立絵2", 3000, Center, 20, "cg/bu/buそに子_通常_happy.png");
	CreateTextureEX("絵マスク/絵立絵3", 3000, Center, -87, "cg/bu/buフウリ_前のめり_hard.png");
	CreateTextureEX("絵マスク/絵立絵4", 3000, Center, 20, "cg/bu/buノーコb_通常_rage.png");

//---------------------------------------//
//マスク準備
	CreateTextureEX("絵マスク枠2", 5010, 300, 0, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク2", 5000, 0, 0, "cg/mask/ciスラッシュ_05_00.png", false);
	SetAlias("絵マスク2","絵マスク2");
	CreateTextureEX("絵マスク2/絵演背景", 4500, 0, 0, "cg/ef/ef002_汎用移動.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク2/絵演立絵", 5001, center, middle, "cg/bu/buブーa_オラオラ_shout.png");
	Request("絵マスク2/絵演立絵", Smoothing);

//動作準備
	Move("絵マスク枠2", 0, -1024, 0, null, true);
	Move("絵マスク2", 0, -1024, 0, null, true);

	Move("絵マスク2/絵演立絵", 0, 512, 200, null, true);
	Fade("絵マスク2/絵演背景", 0, 1000, null, true);
	Fade("絵マスク2/絵演色", 0, 1000, null, true);

//---------------------------------------//
//マスク準備
	CreateTextureEX("絵マスク枠3", 5010, 300, 0, "cg/mask/ciスラッシュ_05_01z.png");
	CreateMask("絵マスク3", 5000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク3","絵マスク3");
	CreateTextureEX("絵マスク3/絵演背景", 4500, 0, 0, "cg/ef/ef002_汎用移動.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク3/絵演立絵", 5001, center, middle, "cg/bu/buみそa_通常_shout.png");
	Request("絵マスク3/絵演立絵", Smoothing);

//動作準備
	Move("絵マスク枠3", 0, 1024, 0, null, true);
	Move("絵マスク3", 0, 1024, 0, null, true);

	Move("絵マスク3/絵演立絵", 0, 512, 200, null, true);
	Fade("絵マスク3/絵演背景", 0, 1000, null, true);
	Fade("絵マスク3/絵演色", 0, 1000, null, true);
//---------------------------------------//

	CreateSE("SE02","seメカ_車_走行_l");
	MusicStart("SE02",0,400,0,1000,null,true);

	DrawDelete("黒幕１", 300, 100, null, "slide_02_01_1", true);

	Fade("絵マスクライン*", 300, 1000, null, false);
	Fade("絵マスク/絵背景100", 300, 1000, null, false);
	DrawTransition("絵マスク/絵背景100", 300, 0, 1000, 100, null, "cg/data/slide_05_00_1.png", false);
	DrawTransition("絵マスクライン*", 300, 0, 1000, 100, null, "cg/data/slide_05_00_1.png", true);

	SetVolume("SE02", 20000, 0, null);


	Fade("絵マスク/絵立絵", 200, 1000, null, false);
	Move("絵マスク/絵立絵", 200, 107, 20, Dxl1, true);

//あきゅん「素材：imgミリＰ車飛翔」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100840wfu">
「わー！　飛んだ――――！？」

{	Fade("絵マスク/絵立絵",200,0,null,true);
	Fade("絵マスク/絵立絵2",200,1000,null,true);}
//【そに子】
<voice name="そに子" class="そに子" src="voice/23/400100850snk">
「そうなんです！　すごいですよね！」

{	Fade("絵マスク/絵立絵2",200,0,null,true);
	Fade("絵マスク/絵立絵3",200,1000,null,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100860wfu">
「なんというー！　どんな仕組みで？」

{	Move("絵マスク2", 200, 0, 0, Dxl3, false);
	Move("絵マスク枠2", 200, 0, 0, Dxl3, false);
	Fade("絵マスク枠2", 200, 1000, null, false);
	Fade("絵マスク2/絵演立絵", 200, 1000, null, false);
	Move("絵マスク2/絵演立絵", 200, -100, 0, Dxl1, true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/23/400100870buu">
「<RUBY text="オトコギ">任気</RUBY>と、根性で飛ぶ！」

{	Move("絵マスク2", 300, -1024, 0, Dxl3, false);
	Move("絵マスク枠2", 300, -1024, 0, Dxl3, false);
	Fade("絵マスク枠2", 300, 0, null, false);
	Fade("絵マスク2/絵演立絵", 300, 1000, null, false);
	Move("絵マスク2/絵演立絵", 300, -1024, 0, Dxl1, true);
	Fade("絵マスク/絵立絵3",200,0,null,true);
	Fade("絵マスク/絵立絵4",200,1000,null,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100880nko">
「うそつけ」

{	Move("絵マスク3", 200, 0, 0, Dxl3, false);
	Move("絵マスク枠3", 200, 0, 0, Dxl3, false);
	Fade("絵マスク枠3", 200, 1000, null, false);
	Fade("絵マスク3/絵演立絵", 200, 1000, null, false);
	Move("絵マスク3/絵演立絵", 200, 512, 0, Dxl1, true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/400100890mso">
「豆腐屋ドリフト！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);

	Move("絵マスク3", 300, 1024, 0, Dxl3, false);
	Move("絵マスク枠3", 300, 1024, 0, Dxl3, false);
	Fade("絵マスク枠3", 300, 0, null, false);
	Fade("絵マスク3/絵演立絵", 300, 1000, null, false);
	Move("絵マスク3/絵演立絵", 300, -1024, 0, Dxl1, true);

	Fade("絵マスク/絵立絵4", 200, 0, null, true);
	CreateTextureEX("絵マスク/絵立絵5", 3000, 25, 20, "cg/bu/buそに子_通常_shout.png");
	CreateTextureEX("絵マスク/絵立絵6", 3000, 265, 20, "cg/bu/buフウリ_通常_fear.png");
	CreateTextureSP("絵マスク/絵立絵7", 3000, 1024, 20, "cg/bu/buノーコb_通常_shock.png");

	CreateSE("SE05","seメカ_車_急加速");
	MusicStart("SE05",0,700,0,1000,null,false);

	Shake("絵マスク/絵背景100", 2000, 5, 10, 0, 0, 1000, Dxl1, false);
	Move("絵マスク/絵立絵5", 700, -800, @0, Dxl1, false);
	Move("絵マスク/絵立絵6", 700, -1200, @0, Dxl1, false);
	Move("絵マスク/絵立絵7", 700, -700, @0, Dxl1, false);

	Fade("絵マスク/絵立絵5", 300, 1000, null, false);
	Fade("絵マスク/絵立絵6", 300, 1000, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//◆音声指示：同時
//【そに子】
<voice name="そに子" class="そに子" src="voice/23/400100900snk">
「きゃー！！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【綿抜フウリ】
//<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400100910wfu">
//「きゅー！！」

</PRE>
	SetText();
	AddText(1,"「きゃー！！」","そに子","23/400100900snk",false,false,1000);
	AddText(2,"「きゅー！！」","綿抜フウリ","23/400100910wfu",false,true,1400);
	TypeBeginD();//―――――――――――――――――――――――――――

	Fade("絵マスク/絵*", 300, 0, null, false);
	Fade("絵マスクライン1", 300, 0, null, false);
	Fade("絵マスクライン2", 300, 0, null, true);

	CreateSE("SE01","se擬音_ギャグ_ぷに");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵マスク/絵背景100", 500, 0, 10, 0, 0, 1000, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100920nko">
「あむ……」

</PRE>
	SetText();
	TypeBegin();//―――――――――――――――――――――――――――

////	TextBoxDelete(150);

	Delete("絵マスク/絵立*");

//-------------------------//
//マスク準備
	CreateTextureEX("絵マスク枠2", 5010, 300, 0, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク2", 5000, 0, 0, "cg/mask/ciスラッシュ_05_00.png", false);
	SetAlias("絵マスク2","絵マスク2");
	CreateTextureEX("絵マスク2/絵演背景", 4500, 0, 0, "cg/ef/ef002_汎用移動.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク2/絵演立絵", 5001, center, middle, "cg/bu/buブーa_通常_shock.png");
	Request("絵マスク2/絵演立絵", Smoothing);
	CreateTextureEX("絵マスク2/絵演立絵2", 5001, center, middle, "cg/bu/buブーa_通常_ero.png");
	Request("絵マスク2/絵演立絵", Smoothing);


//動作準備
	Move("絵マスク枠2", 0, -1024, 0, null, true);
	Move("絵マスク2", 0, -1024, 0, null, true);

	Move("絵マスク2/絵演立絵", 0, 512, 200, null, true);
	Move("絵マスク2/絵演立絵2", 0, 512, 200, null, true);
	Fade("絵マスク2/絵演背景", 0, 1000, null, true);
	Fade("絵マスク2/絵演色", 0, 1000, null, true);

//-------------------------//

//マスク準備
	CreateTextureEX("絵マスク枠3", 5010, 300, 0, "cg/mask/ciスラッシュ_05_01z.png");
	CreateMask("絵マスク3", 5000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク3","絵マスク3");
	CreateTextureEX("絵マスク3/絵演背景", 4500, 0, 0, "cg/ef/ef002_汎用移動.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク3/絵演立絵", 5001, center, middle, "cg/bu/buみそa_通常_angry.png");
	Request("絵マスク3/絵演立絵", Smoothing);

//動作準備
	Move("絵マスク枠3", 0, 1024, 0, null, true);
	Move("絵マスク3", 0, 1024, 0, null, true);

	Move("絵マスク3/絵演立絵", 0, 512, 200, null, true);
	Fade("絵マスク3/絵演背景", 0, 1000, null, true);
	Fade("絵マスク3/絵演色", 0, 1000, null, true);

//-------------------------//
	CreateTextureEX("絵マスク/絵st100", 3000, Center, 100, "cg/bu/l/buそに子_通常_normal_x01.png");
	CreateTextureEX("絵マスク/絵st200", 3000, -202, 286, "cg/bu/l/buノーコa_通常_normal_x03.png");
	CreateTextureEX("絵マスク/絵st300", 3000, Center, 100, "cg/bu/buノーコa_カッター_angry.png");

//-------------------------//

	Move("絵マスク2", 200, 0, 0, Dxl3, false);
	Move("絵マスク枠2", 200, 0, 0, Dxl3, false);
	Fade("絵マスク枠2", 200, 1000, null, false);
	Fade("絵マスク2/絵演立絵", 200, 1000, null, false);
	Move("絵マスク2/絵演立絵", 200, -100, 0, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0211]
//【ブー】
<voice name="ブー" class="ブー" src="voice/23/400100930buu">
「お、おい！？　後ろ――わ！」

{	Move("絵マスク2", 300, -1024, 0, Dxl3, false);
	Move("絵マスク枠2", 300, -1024, 0, Dxl3, false);
	Fade("絵マスク枠2", 300, 0, null, false);
	Fade("絵マスク2/絵演立絵", 300, 1000, null, false);
	Move("絵マスク2/絵演立絵", 300, -1024, 0, Dxl1, true);
	Fade("絵マスクライン*", 300, 1000, null, false);
	Fade("絵マスク/絵背景100", 300, 1000, null, false);
	DrawTransition("絵マスク/絵背景100", 300, 0, 1000, 100, null, "cg/data/slide_05_00_1.png", false);
	DrawTransition("絵マスクライン*", 300, 0, 1000, 100, null, "cg/data/slide_05_00_1.png", true);
	CreateSE("SE01","se擬音_ギャグ_ぷにょぷにょ");
	MusicStart("SE01",0,600,0,1000,null,false);

	Shake("絵マスク/絵st100", 500, 10, 0, 0, 0, 1000, null, false);
	Fade("絵マスク/絵st100", 300, 1000, null, false);
	Fade("絵マスク/絵st200", 300, 1000, null, true);}
//【そに子】
<voice name="そに子" class="そに子" src="voice/23/400100940snk">
「あわわ、あわわ」

{	Shake("絵マスク/絵st200", 500, 5, 0, 0, 0, 1000, null, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100950nko">
「はらほろひれはれ……」

{	Move("絵マスク2", 200, 0, 0, Dxl3, false);
	Move("絵マスク枠2", 200, 0, 0, Dxl3, false);
	Fade("絵マスク枠2", 200, 1000, null, false);
	Fade("絵マスク2/絵演立絵2", 200, 1000, null, false);
	Move("絵マスク2/絵演立絵2", 200, -100, 0, Dxl1, true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/23/400100960buu">
「ノーコが……おっぱいに埋もれてる……」

{	Move("絵マスク2", 300, -1024, 0, Dxl3, false);
	Move("絵マスク枠2", 300, -1024, 0, Dxl3, false);
	Fade("絵マスク枠2", 300, 0, null, false);
	Fade("絵マスク2/絵演立絵2", 300, 1000, null, false);
	Move("絵マスク2/絵演立絵2", 300, -1024, 0, Dxl1, true);
	Fade("絵マスク/絵st100", 300, 0, null, false);
	Fade("絵マスク/絵st200", 300, 0, null, true);
	CreateSE("SE12","se戦闘_刃物01");
	MusicStart("SE12",0,600,0,1000,null,false);
	Move("絵マスク/絵st300", 300, @0, 0, Dxl1, false);
	Fade("絵マスク/絵st300", 300, 1000, null, true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/400100970nko">
「……きる」

{	Move("絵マスク3/絵演立絵", 0, 512, 200, null, true);
	Move("絵マスク2", 200, 0, 0, Dxl3, false);
	Move("絵マスク枠2", 200, 0, 0, Dxl3, false);
	Fade("絵マスク枠2", 200, 1000, null, false);
	Fade("絵マスク2/絵演立絵", 200, 1000, null, false);
	Move("絵マスク2/絵演立絵", 200, -100, 0, Dxl1, true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/23/400100980buu">
「駄目――ッ！
　貧乳だって希少価値で恥じることは――！」

{	Move("絵マスク2", 300, -1024, 0, Dxl3, false);
	Move("絵マスク枠2", 300, -1024, 0, Dxl3, false);
	Fade("絵マスク枠2", 300, 0, null, false);
	Fade("絵マスク2/絵演立絵", 300, 1000, null, false);
	Move("絵マスク2/絵演立絵", 300, -1024, 0, Dxl1, true);

	Delete("絵マスク2/絵*");
	Delete("絵マスク2");
	Delete("絵マスク枠2");

	Move("絵マスク3", 200, 0, 0, Dxl3, false);
	Move("絵マスク枠3", 200, 0, 0, Dxl3, false);
	Fade("絵マスク枠3", 200, 1000, null, false);
	Fade("絵マスク3/絵演立絵", 200, 1000, null, false);
	Move("絵マスク3/絵演立絵", 200, 512, 0, Dxl1, true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/400100990mso">
「どっせ――――い！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);

	CreateTextureEX("絵背景1000", 7000, Center, -400, "cg/bg/bg2401100空_上空_通常.jpg");

	CreateSE("SE15","seメカ_車_急加速");
	MusicStart("SE15",0,700,0,1000,null,false);

	Move("絵背景1000", 1000, @0, 0, Dxl1, false);
	Fade("絵背景1000", 300, 1000, null, true);

	Delete("絵背景100");
	Delete("絵背景101");
	Delete("絵シェイク");
	Delete("絵マスク/絵*");
	Delete("絵マスク");
	Delete("絵マスクライン*");
	Delete("絵マスク3/絵*");
	Delete("絵マスク3");
	Delete("絵マスク枠");
	Delete("絵マスク*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//◆音声指示：同時
//【そに子】
<voice name="そに子" class="そに子" src="voice/23/400101000snk">
「きゃ――――――ッ！！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【綿抜フウリ】
//<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/400101010wfu">
//「きゅ――――――ッ！！」

</PRE>
	SetText();
	AddText(1,"「きゃ――――――ッ！！」","そに子","23/400101000snk",false,false,1000);
	AddText(2,"「きゅ――――――ッ！！」","綿抜フウリ","23/400101010wfu",false,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――


//あきゅん「音声主間違いだったので削除しました」
/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/400101020mso">
「のわ――――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
*/

////	TextBoxDelete(150);

	SetVolume("SE*", 2000, 0, null);
	SetVolume("@xbgm*", 2000, 0, null);

	CreateColorEX("フラッシュ白", 25000, "Black");
	Fade("フラッシュ白",1000,1000,null,true);

	OnBG(10,"bg0604211半田明神_社務所_雪");
	FadeBG(0,true);

	Delete("絵背景1000");

	Wait(1000);

	FadeDelete("フラッシュ白", 1000, null, true);

	Wait(300);

	EndScene();
}
