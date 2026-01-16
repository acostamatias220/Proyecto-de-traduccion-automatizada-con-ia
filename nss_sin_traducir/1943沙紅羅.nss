
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1943沙紅羅.nss_MAIN
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
	$GameName = "1948沙紅羅_ノーコ.nss";

}

scene 1943沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1180">
////////////header////////////
//file name "1943沙紅羅.nss"
//title "突入せよ！　あにのあな！"
//previous "1942沙紅羅_ノーコ.nss"

////////////footer////////////
//next "沙紅羅" "1948沙紅羅_ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1943);}

	CreateColorSP("フラッシュ黒", 15000, "BLACK");
	DrawDelete("上背景", 300, 100, null, "blind_01_00_1", true);
	CreateColorSPmul("絵停電色", 2999, "BLUE");
	Fade("絵停電色", 0, 300, null, true);

	CreateColorSP("絵色黒幕２", 1500, "BLACK");
	CreateColorSP("絵色黒幕３", 1500, "BLACK");
	DrawTransition("絵色黒幕２", 0, 400, 400, 250, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("絵色黒幕３", 0, 400, 400, 250, null, "cg/data/slide_06_00_0.png", true);
	Fade("絵色黒幕３", 0, 500, null, true);
	Fade("絵色黒幕２", 0, 900, null, true);

	CreateTextureSP("絵背景1", 1, Center, Middle, "cg/bg/bg0302211あにのあな_店内_停電.jpg");
//◆場所：あにのあな_店内_停電
	OnBG(100,"bg0302211あにのあな_店内_停電");
	FadeBG(0,true);
	CreateTextureSP("絵背景BG", 100, Center, -200, "cg/bg/l/bg0302211あにのあな_店内_停電_l.jpg");
	Request("絵背景BG", Smoothing);
	Zoom("絵背景BG", 0, 700, 700, null, true);



	CreateColorEX("フラッシュ白", 15000, "WHITE");

	CreateSE("SE01","seガヤ_合戦_l");
	CreateSE("SE03","seガヤ_客暴動_l");


	SoundPlay("@xbgm07",0,450,true);


	MusicStart("SE01",1000,400,0,1000,null,true);
	MusicStart("SE03",1000,400,0,1000,null,true);
	Wait(500);

	DrawDelete("フラッシュ黒", 300, 100, null, "blind_01_00_1", true);

	Wait(500);

	St("C",2001, @-100,@0,"bu沙紅羅_通常_hard");
	Move("@StNameC/C*", 200, @+100, @0, Dxl2, false);
	FadeSt("C",200,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200010skr">
「さて……と」

{	St("C",2001, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200020skr">
「さっきの借り、返してやるぜ！」

{	DeleteAllSt(200,true);}
　沙紅羅は片手に懐中電灯、片手に木刀を握りしめ――

{	St("C",2001, @0,@0,"fu沙紅羅_木刀_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200030skr">
「だらああああああッ！！」

{
	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetBlur("@StNameC/C*", true, 3, 500, 50, false);
	Zoom("@StNameC/C*", 200, 1500, 1500, null, false);
	DeleteSt("C",200,true);
	Fade("フラッシュ白",0,1000,null,true);
	DeleteAllSt(0,true);

	CreateSE("SE02","se戦闘_打撃音06");
	MusicStart("SE02",0,700,0,1000,null,false);

	Shake("@絵背景BG*", 500, 1, 3, 0, 0, 1000, null, false);
	Fade("フラッシュ白",300,0,null,true);}
//【オタクＥ】
<voice name="オタクＥ" class="その他男声" src="voice/19/430200040e09">
「ぎゃふんっ！」

{	St("C",2001, @+100,@0,"fu沙紅羅_木刀_angry");
	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200050skr">
「オラオラオラオラオラ！　邪魔だ退けッ！！」

{
	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("@StNameC/C*", 200, @+100, @0, Dxl1, false);
	DeleteSt("C",200,true);
	Fade("フラッシュ白",0,1000,null,true);
	DeleteAllSt(0,true);

	CreateSE("SE02","se戦闘_打撃音07");
	MusicStart("SE02",0,700,0,1000,null,false);

	Shake("@絵背景BG*", 500, 1, 3, 0, 0, 1000, null, false);
	Fade("フラッシュ白",300,0,null,true);}
//【オタクＦ】
<voice name="オタクＦ" class="その他男声" src="voice/19/430200060e10">
「ぬふぅっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
{	St("ML",2001, @-100,@0,"fu沙紅羅_通常_angry");
	Move("@StNameML/ML*", 200, @+100, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200070skr">
「アタシの先を邪魔するヤツは、誰だろうと許さねー！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_風切り音05");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,false);
	St("MR",700, @+100,@0,"buみそa_通常_happy");
	Move("@StNameMR/MR*", 200, @-100, @0, Dxl1, false);
	FadeSt("MR",200,true);

	Fade("フラッシュ白",0,1000,null,true);
	St("MR",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("MR",0,true);
	CreateSE("SE02","se戦闘_打撃音03");
	MusicStart("SE02",0,1200,0,1000,null,false);

	Shake("@絵背景BG*", 300, 1, 3, 0, 0, 1000, null, false);
	Shake("@StNameMR/MR*", 500, 5, 0, 0, 0, 500, null, false);
	Fade("フラッシュ白",300,0,null,false);
	Move("@StNameMR/MR*", 200, @+300, @0, Dxl1, false);
	DeleteSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011b]
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/430200080mso">
「あねさ……ふんがっ！」

{	St("MR",2001, @+100,@0,"fu沙紅羅_木刀_angry");
	Move("@StNameMR/MR*", 200, @-100, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200090skr">
「どっからでもいいからかかってこいやぁッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	CreateSE("SE01","se戦闘_風切り音05");
	CreateSE("SE02","se戦闘_打撃音03");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,false);
	St("ML",700, @-100,@0,"buブーa_通常_pinch");
	Move("@StNameML/ML*", 200, @+100, @0, Dxl1, false);
	FadeSt("ML",200,true);

	Fade("フラッシュ白",0,1000,null,true);
	St("ML",700, @0,@0,"buブーa_通常_shock");
	FadeSt("ML",0,true);
	MusicStart("SE02",0,1200,0,1000,null,false);

	Fade("フラッシュ白",300,0,null,false);
	Shake("@絵背景BG*", 300, 1, 3, 0, 0, 1000, null, false);
	Shake("@StNameML/ML*", 500, 5, 0, 0, 0, 500, null, false);
	Move("@StNameML/ML*", 200, @-300, @0, Dxl1, false);
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011c]
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/430200100buu">
「オレたちゃみかた……ふぎゃっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
{	St("C",2001, @0,@+50,"bu沙紅羅_木刀_pride");
	Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200110skr">
「どーだ？　わかったか？」

{	St("C",2001, @0,@0,"bu沙紅羅_木刀_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200120skr">
「このフロアは、アタシの<RUBY text="シマ">領地</RUBY>だッ！」

{	St("C",2001, @0,@0,"bu沙紅羅_木刀_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200130skr">
「福島最強！　月下に誇る狂い咲き！」

{	St("C",2001, @0,@0,"bu沙紅羅_木刀_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200140skr">
「暴走集団百野殺駆<RUBY text="ヘッド">頭</RUBY>・月夜乃沙紅羅」

{	St("C",2001, @0,@0,"bu沙紅羅_木刀_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200150skr">
「夜露死苦ぅッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 500, 0, null);
	SetVolumeEX("@xbgm*", 500, 0, null);

	TextBoxDelete(150);

	DeleteSt("C",200,true);

	CreateSE("SE01","se擬音_ギャグ_寒い風");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1500);

//◆演出指定：シーン――

	St("C",2001, @0,@0,"fu沙紅羅_木刀_pride");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200160skr">
（ん……決まった！）

{	St("C",2001, @0,@0,"fu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200170skr">
（って……アレ？）

{	St("C",2001, @0,@0,"fu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200180skr">
（そういやアタシ、なんでここにいるんだっけ？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1944);}
	Fade("絵色黒幕３", 500, 700, null, true);

	DeleteAllSt(200,true);
	SoundPlay("@xbgm22",0,450,true);
	St("MR",700, @+5,@0,"bu似鳥_眼鏡上げ_angry");
	Move("@StNameMR/MR*", 200, @-5, @0, Dxl1, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/430200190nki">
「おい、そこ……」

{	St("ML",2001, @0,@0,"fu沙紅羅_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200200skr">
「んぁ？」

{	St("ML",2001, @0,@0,"fu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200210skr">
「ナンダァ？　アタシがいい気分に浸ってるのに――」

{	St("MR",700, @0,@0,"bu似鳥_通常_angry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/430200220nki">
「そこ、邪魔だ」

{	St("ML",2001, @0,@0,"fu沙紅羅_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200230skr">
「なんだと？」

{	St("MR",700, @0,@0,"bu似鳥_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/430200240nki">
「邪魔だから退けって言ってんだ」

{	St("ML",2001, @0,@0,"fu沙紅羅_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200250skr">
「……いい根性してるじゃねーか」

{	St("ML",2001, @0,@0,"fu沙紅羅_木刀_pride");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200260skr">
「だが、勝手に通すワケには――」

{	St("MR",700, @0,@0,"bu似鳥_ラッパー_rage");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/430200270nki">
「いいから退けよおっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se戦闘_打撃音04");
	MusicStart("SE01",0,1200,0,1000,null,false);

	Move("@StNameMR/MR*", 200, @-200, @0, Dxl1, false);
	DeleteSt("MR",200,true);

//◆演出指定：つかみかかられる
	CreateSE("SE02","se人体_倒れる04");
	MusicStart("SE02",0,1200,0,1000,null,false);

{	St("C",2001, @0,@0,"fu沙紅羅_通常_surprise");
	Shake("@StNameC/C*", 500, 0, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200280skr">
「ぐわっ！　ちょ！」

{	St("C",700, @0,@0,"bu似鳥_通常_pain");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/430200290nki">
「こっちは、こっちはな！」

{	St("C",700, @0,@0,"bu似鳥_ラッパー_rage");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/430200300nki">
「オレの命がかかってるんだあああッ！」

{
	DeleteAllSt(200,true);

	St("C",2001, @0,@0,"fu沙紅羅_木刀_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200310skr">
「うっせー！　知るかあッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：木刀バキッ！！

	CreateSE("SE01","se戦闘_風切り音05");
	CreateSE("SE02","se戦闘_打撃音07");

	CreateTextureEXadd("揺用", 5000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	Rotate("揺用", 0, @180, @0, @0, null,true);
	Zoom("揺用", 0, 1200, 1200, null, true);

	CreateTextureEX("絵背景100", 3000, Center, Middle, "cg/ef/ef木刀剣閃a.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	DeleteSt("C",0,true);

	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Wait(200);

	MusicStart("SE02",0,700,0,1000,null,false);

	Fade("絵背景100", 100, 0, null, false);
	Fade("揺用", 0, 1000, null, true);
	FadeF4("揺用", 500, 1000, 3000, 0, 0, Dxl1, false);
	Shake("揺用", 500, 5, 15, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 350, 0, null, true);


	Move("@StNameC/C*", 200, @80, @50, Dxl1, false);
	FadeSt("C",200,true);

	Delete("絵背景100");


	St("MR",700, @-100,@0,"bu似鳥_通常_pain");
	FadeSt("MR",0,true);
	Shake("@StNameMR/MR*", 200, 15, 8, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 200, @80, @50, Dxl1, false);
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/430200320nki">
「んがッ！」

{	St("ML",2001, @0,@0,"fu沙紅羅_木刀_angry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200330skr">
「こっちだってなぁ！」

{	St("ML",2001, @0,@0,"fu沙紅羅_木刀_rage");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200340skr">
「血を分けた、弟の命がかかってんだよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);


	CreateSE("SE01","se戦闘_風切り音05");
	CreateSE("SE02","se戦闘_打撃音07");

	CreateTextureEXadd("揺用", 5000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	Rotate("揺用", 0, @180, @180, @0, null,true);
	Zoom("揺用", 0, 1200, 1200, null, true);

	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/ef木刀剣閃a.jpg");
	Rotate("絵背景100", 0, @0, @180, @0, null,true);
	Fade("絵背景100", 0, 1000, null, true);

	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Wait(200);

	MusicStart("SE02",0,700,0,1000,null,false);

	Fade("絵背景100", 100, 0, null, false);
	Fade("揺用", 0, 1000, null, true);
	FadeF4("揺用", 500, 1000, 3000, 0, 0, Dxl1, false);
	Shake("揺用", 500, 5, 15, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 350, 0, null, true);

	St("ML",700, @80,@0,"bu似鳥_通常_shock");
	Move("@StNameML/ML*", 200, @-80, @0, Dxl1, false);
	Shake("@StNameML/ML*", 200, 15, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("ML",200,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/430200350nki">
「どわっは！」

{	St("ML",700, @0,@0,"bu似鳥_通常_pain");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/430200360nki">
「イデデデデ……」

{	DeleteSt("ML",200,true);
	St("C",2001, @-50,@0,"fu沙紅羅_木刀_shout");
	Move("@StNameC/C*", 200, @+50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200370skr">
「おいてめー！
　どーじんしってのは、どこで売ってる？」

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/430200380nki">
「…………」

{	St("C",2001, @0,@0,"fu沙紅羅_木刀_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200390skr">
「どこで売ってっかって訊いてんだよ！」

{	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_angry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/430200400nki">
「４階から……７階だ」

{	St("C",2001, @0,@0,"fu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200410skr">
「いよっしゃ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 2000, 0, null);

	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",0,700,0,1000,null,true);

	Move("@StNameC/C*", 200, @+200, @0, Dxl1, false);
	DeleteAllSt(200,true);

	CreateColorSP("黒幕１", 1600, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　エレベーターに乗るのももどかしい。

　３段抜かしで階段を駈け上がる。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("SE*", 1500, 0, null);


	DrawDelete("黒幕１", 500, 100, null, "slide_01_01_1", true);

	Wait(300);

	SoundPlay("@xbgm07_noint",0,450,true);

	St("C",2001, @-100,@0,"fu沙紅羅_木刀_shout");
	Move("@StNameC/C*", 200, @+100, @0, Dxl2, false);
	FadeSt("C",200,true);

{	ClockPass(1945);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200420skr">
「邪魔だ！」

{
	CreateSE("SE01","se戦闘_風切り音05");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteSt("C",200,true);}
//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/19/430200430e07">
「ひぇっ！」

{	St("C",2001, @0,@0,"fu沙紅羅_木刀_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200440skr">
「退けぇっ！」

{
	CreateSE("SE01","se戦闘_風切り音07");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteSt("C",200,true);}
//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/19/430200450e08">
「わわわわッ！！」

{
	CreateSE("SE02","se戦闘_打撃音06");
	MusicStart("SE02",0,700,0,1000,null,false);
}
　驚くほど狭い道。

{
	CreateSE("SE03","se人体_倒れる04");
	MusicStart("SE03",0,700,0,1000,null,false);
}
　途中何度も客とぶつかり、何人かは紙袋を落とす。

{	St("C",2001, @0,@0,"fu沙紅羅_通常_pinch");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200460skr">
（く……なんか暑くなってきたな）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200470skr">
（まるで夏の熱気だ……）

{	St("C",2001, @0,@0,"fu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200480skr">
（しかも……なんか酸っぱい匂いが）

{	St("C",2001, @0,@0,"fu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200490skr">
（なんだ？　いったい上では、何が――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("@StNameC/C*", 200, @+300, @0,Axl1, false);
	DeleteSt("C",200,true);

//◆演出指定：暗闇の中で行われる死闘ＳＥ。銃声とか血しぶきとかゴジラとかガンダム音とか色々。
	CreateColorSP("黒幕１", 1600, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Wait(500);

	CreateSE("SE10","seガヤ_客暴動_l");
	CreateSE("SE11","seガヤ_合戦_l");
	MusicStart("SE10",1000,700,0,1000,null,true);
	MusicStart("SE11",1000,700,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//◆音声指示：銃撃戦
//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/19/430200500e07">
「撃ぇッ！　撃ぇッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//◆音声指示：狼男
//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/19/430200510e08">
「わお――――ん！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//◆音声指示：司馬懿
//【オタクＥ】
<voice name="オタクＥ" class="その他男声" src="voice/19/430200520e09">
「げぇ！　孔明！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//◆音声指示：必殺技っぽく
//【オタクＦ】
<voice name="オタクＦ" class="その他男声" src="voice/19/430200530e10">
「ハンド・オブ・グローリー！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("SE*", 2000, 500, null);

	DrawDelete("黒幕１", 500, 100, null, "slide_01_01_1", true);

	Wait(300);

	St("C",2001, @0,@50,"bu沙紅羅_頭かき_sigh");
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200540skr">
（な……なんだこりゃあ……）

{	St("C",2001, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200550skr">
（盆とシューカツが一緒に来て、なおかつオバマ上陸作戦と狼男と三国志と女湯覗きと――）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200560skr">
（なんか、そういうのが一遍に来ちまった感じ……）

{	St("C",2001, @0,@0,"bu沙紅羅_後ろ向き_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200570skr">
「ふふ……ふふふふ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1946);}


{	St("C",2001, @0,@0,"fu沙紅羅_通常_happy");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200580skr">
「いよっしゃ！　燃えてきた！」

{	St("C",2001, @0,@0,"fu沙紅羅_木刀_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200590skr">
「一気に行くぜ！」

{	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameC/C*", 200, @+300, @0, Dxl1, false);
	DeleteSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200600skr">
「どらああああああああああ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",0,700,0,1000,null,true);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	St("C",2001, @-200,@0,"bu沙紅羅_木刀_shout");
	FadeSt("C",0,true);

	Wait(500);

	Move("@StNameC/C*", 200, @+200, @0, Dxl1, false);
	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200610skr">
「どこだどこだ！？　ツーバードの新刊をよこせ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateSE("SE01","se戦闘_殴打連続01");
	CreateSE("SE01","se戦闘_殴打連続02");
	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE01",0,700,0,1000,null,false);


	Shake("@絵背景BG*", 500, 2, 8, 0, 0, 500, null, false);

	Wait(300);
	Shake("@絵背景BG*", 300, 5, 3, 0, 0, 500, null, false);

	Wait(200);
	Shake("@絵背景BG*", 300, 2, 10, 0, 0, 500, null, false);

	Wait(400);
	Shake("@絵背景BG*", 500, 12, 13, 0, 0, 500, null, false);

	SetVolumeEX("SE*", 1000, 0, Axl1);

	Wait(300);

//◆演出指定：今までの台詞をループなどして、戦場で戦ってるバックで回想シーン

{	St("C",2001, @0,@50,"bu沙紅羅_木刀_pinch");

	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200620skr">
「チィッ！　次だ次！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：階段駈け上がる

	St("C",2001, @0,@0,"bu沙紅羅_木刀_shout");
	FadeSt("C",0,true);
	Move("@StNameC/C*", 200, @+300, @0, Axl1, false);
	DeleteSt("C",200,true);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	St("C",2001, @-200,@0,"bu沙紅羅_木刀_shout");
	FadeSt("C",0,true);

	Wait(500);

	Move("@StNameC/C*", 200, @+200, @0, Dxl1, false);
	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200630skr">
「５階ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：今までの台詞をループなどして、戦場で戦ってるバックで回想シーン
	DeleteAllSt(200,true);

	CreateSE("SE01","se戦闘_殴打連続01");
	CreateSE("SE01","se戦闘_殴打連続02");
	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE01",0,700,0,1000,null,false);


	Shake("@絵背景BG*", 500, 2, 8, 0, 0, 500, null, false);

	Wait(300);
	Shake("@絵背景BG*", 300, 5, 3, 0, 0, 500, null, false);

	Wait(200);
	Shake("@絵背景BG*", 300, 2, 10, 0, 0, 500, null, false);

	Wait(400);
	Shake("@絵背景BG*", 500, 12, 13, 0, 0, 500, null, false);

	SetVolumeEX("SE*", 1000, 0, Axl1);

	Wait(300);

{	St("C",2001, @0,@50,"bu沙紅羅_木刀_pinch");
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200640skr">
「ここもダメ、か……」

{	St("C",2001, @0,@0,"bu沙紅羅_木刀_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200650skr">
「しゃーねー、６階だあ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：今までの台詞をループなどして、戦場で戦ってるバックで回想シーン

	Move("@StNameC/C*", 200, @+300, @0, Dxl1, false);
	DeleteSt("C",200,true);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


	Wait(500);

	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);

	DeleteAllSt(200,true);

	CreateSE("SE01","se戦闘_殴打連続01");
	CreateSE("SE01","se戦闘_殴打連続02");
	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE01",0,700,0,1000,null,false);


	Shake("@絵背景BG*", 500, 2, 8, 0, 0, 500, null, false);

	Wait(300);
	Shake("@絵背景BG*", 300, 5, 3, 0, 0, 500, null, false);

	Wait(200);
	Shake("@絵背景BG*", 300, 2, 10, 0, 0, 500, null, false);

	Wait(400);
	Shake("@絵背景BG*", 500, 12, 13, 0, 0, 500, null, false);

	SetVolumeEX("SE*", 1000, 0, Axl1);

	Wait(300);

	St("C",2001, @-100,@0,"bu沙紅羅_木刀_pinch");
	Move("@StNameC/C*", 200, @100, @0, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200660skr">
「クソッ！　ここにもねーのかよ！」

{	St("C",2001, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200670skr">
「あとは……７階か……」

{	St("C",2001, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200680skr">
「頼む！　見つかってくれ――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("@StNameC/C*", 200, @100, @0, Axl1, false);
	DeleteSt("C",200,true);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	SetVolumeEX("@xbgm*", 2000, 0, null);

	Wait(1000);
	OnBG(100,"bg0302200あにのあな_店内_停電");
	FadeBG(0,true);

	CreateSE("SE01","seガヤ_客暴動_l");
	MusicStart("SE01",3000,200,0,1000,null,true);


	St("C",2001, @-100,@50,"bu沙紅羅_通常_surprise");

	DrawDelete("黒幕１", 1000, 100, null, "slide_01_01_1", true);

	Wait(500);

	Move("@StNameC/C*", 200, @100, @-50, Dxl1, false);
	FadeSt("C",200,true);

{	ClockPass(1947);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200690skr">
「…………え」

{	St("C",2001, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200700skr">
「なんか、この階だけ……比較的静か……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200710skr">
「中古――フロア？」

{	St("C",2001, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200720skr">
（今日発売されたばっかりの本だぞ！？）

{	St("C",2001, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200730skr">
（そんなの、ここにあるはずが……）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200740skr">
（…………）

{	St("C",2001, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200750skr">
（いや、弱音なんてダセぇぞ！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200760skr">
（可能性がある限り、諦めねー！
　それが、アタシの信条――）

{	St("C",2001, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200770skr">
（ツーバードの新刊！　絶対に手に入れて――）

{	DeleteSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/430200780nki">
「２ｂｉｒｄって知らないんですか！？」

{	St("C",700, @0,@0,"bu似鳥_通常_pride");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/430200790nki">
「ほら、半年前によつばちゃんねるで有名になった――
　<RUBY text="ピクシー">ＰＩＸＩ</RUBY>でも知る人ぞ知る！」

{	St("C",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/430200800nki">
「だからチャンスなんですよ！」

{	St("C",700, @0,@0,"bu似鳥_通常_pride");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/430200810nki">
「最新刊！　『ＮＯ　ＣＯＮＴＲＯＬ』の１１！
　コレを逃すと機会なんてないんです！」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/430200820e13">
「いや、でもこちらにも色々規則がありまして……」

{	St("C",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/430200830nki">
「バカ言わないでください！
　そういうのって損なんですよ！　わかります？」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/430200840e13">
「…………」

{	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_angry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/430200850nki">
「聞いてます？　黙ってないで、なんか話してく――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE01", 1000, 0, null);

	TextBoxDelete(150);

	DeleteAllSt(200,true);


{	St("C",2001, @0,@0,"fu沙紅羅_通常_shout");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200860skr">
「ちょっと待ったあああああ！！」

{	St("C",2001, @0,@0,"fu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200870skr">
「おまえ、ツーバードのどーじんしつったな？」

{	SoundPlay("@xbgm24",0,450,true);
	DeleteAllSt(200,true);

	St("MR",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/430200880nki">
「あ、その声――」

{	St("ML",2001, @0,@0,"bu沙紅羅_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200890skr">
「頼む！　ツーバードのどーじんし！　売ってくれ！」

{	St("MR",700, @0,@0,"bu似鳥_眼鏡上げ_pride");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/430200900nki">
「へえ、探してたのか……売って欲しい？」

{	St("ML",2001, @0,@0,"bu沙紅羅_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200910skr">
「売って欲しい！　頼む！　この通り！」

{	St("MR",700, @0,@0,"bu似鳥_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/430200920nki">
「どうしても、売って欲しい？」

{	St("ML",2001, @0,@0,"bu沙紅羅_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200930skr">
「どうしても、売って欲しい！」

{	St("MR",700, @0,@0,"bu似鳥_眼鏡上げ_pride");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/430200940nki">
「いくら出す？」

{	St("ML",2001, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200950skr">
「いくらって……？」

{	St("ML",2001, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200960skr">
（ヤバイ！）

{	St("ML",2001, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200970skr">
（アタシは今、無一文で……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("MR",700, @0,@0,"bu似鳥_眼鏡上げ_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/430200980nki">
「ただで貰えると思ってるわけじゃねーだろ？」

{	St("ML",2001, @0,@0,"bu沙紅羅_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430200990skr">
「うぐ、うぐぐぐぐぐぐ……」

{	St("MR",700, @0,@0,"bu似鳥_眼鏡上げ_pride");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/430201000nki">
「しかもこの本は、市場では流通してない激レア物だ」


{	St("ML",2001, @0,@0,"bu沙紅羅_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430201010skr">
「ぐぐぐ、ぐぐぐぐぐぐ……」

{	St("MR",700, @0,@0,"bu似鳥_ラッパー_pride");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/430201020nki">
「どーしても欲しいっつーんなら……」

{	St("ML",2001, @0,@0,"bu沙紅羅_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430201030skr">
「ふんぐ、ふぐぐぐぐぐ……」

{	St("MR",700, @0,@0,"bu似鳥_ラッパー_rage");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/430201040nki">
「あんたの覚悟、見せてもらおうじゃねーの！」

{	St("ML",2001, @0,@0,"bu沙紅羅_頭かき_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430201050skr">
「うがががががががががああああッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

{	St("C",2001, @0,@0,"fu沙紅羅_通常_hard");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430201060skr">
（そうだ……）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430201070skr">
（アタシは、何に代えても、弟の望みを叶えてやるって、腹ァ括ったじゃねーか！）

{	St("C",2001, @0,@0,"fu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430201080skr">
（確かに仁義は大事だ。
　人として曲がったことはやっちゃいけねぇ！）

{	St("C",2001, @0,@0,"fu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430201090skr">
（けど――）

{	St("C",2001, @0,@0,"fu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430201100skr">
（人の道を外れて泥水被ってでも――）

{	St("C",2001, @0,@0,"fu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430201110skr">
（貫かなきゃならねぇ覚悟ってのがあんだよッ！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolumeEX("@xbgm*", 1000, 0, null);

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

{	St("ML",2001, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}

	CreateColorEX("黒幕１", 1600, "BLACK");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430201120skr">
「あと２分！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430201130skr">
「２分だけ、待っててくれ！」

{	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/430201140nki">
「え？　おいちょっと――」

{	Fade("黒幕１", 0, 1000, null, false);
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	DeleteSt("MR",0,true);}
　一方的に言い放ち、沙紅羅は慌てて階段を駆け下りた。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("C",2000, @0,@0,"fu沙紅羅_通常_think");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430201150skr">
（すまねぇ！　本当に、すまねぇ！）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430201160skr">
（けど――今のアタシには、金がねぇ）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430201170skr">
（暴陀羅号をなくしたら帰れねぇし……
　今、アタシにある金目の物と言えば――）

{	St("C",2000, @0,@0,"fu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/430201180skr">
（もう、あれだけなんだッ！！）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵停電色");
	Delete("黒幕１");
	Delete("揺用");
	Wait(500);

	EndScene();


}
