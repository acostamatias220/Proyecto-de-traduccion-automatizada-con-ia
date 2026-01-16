
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nss_MAIN
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

//	Message("デバッグ用ウィンドウ",$myRoute,YESNOCANCE,EXCLAMATION);

	//★徒歩：フラグ修正
	if($CharaName=="千秋"){
		if(Substr($myRoute,0,2)=="ab"){
			$GameName = "2130フウリ.nss";
		}
	}else if($CharaName=="恵那"){
		if($myRoute=="トゥルー"){
			$GameName = "2130恵那.nss";
		}else if(Substr($myRoute,0,2)=="ab"){
			$GameName = "2130フウリ.nss";
		}else if(Substr($myRoute,0,1)=="b"){
			$GameName = "b2130恵那.nss";
		}
	}else if($CharaName=="沙紅羅"){
		$GameName = "2130沙紅羅_似鳥_ノーコ.nss";
	}else if($CharaName=="似鳥"){
		$GameName = "2130沙紅羅_似鳥_ノーコ.nss";
	}else if($CharaName=="ノーコ"){
		$GameName = "2130沙紅羅_似鳥_ノーコ.nss";
	}else if($CharaName=="フウリ"){
		$GameName = "2130フウリ.nss";
	}
}

scene 2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1700">
////////////header////////////
//file name "2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nss"
//title "こくはく"
//previous "2115沙紅羅_フウリ.nss"
//previous "2100恵那.nss"
//previous "2110似鳥.nss"
//previous "2110ノーコ.nss"
//previous "ab2110千秋_恵那.nss"
//previous "ab2110ノーコ.nss"
//previous "ab2110似鳥.nss"
//previous "b2115沙紅羅_千秋_フウリ.nss"

////////////footer////////////
//※例外のジャンプ先ファイル
//next "千秋"（"flkagome1a" = true） "2130フウリ.nss"
//next "恵那"（"flkagome1a" = true） "2130フウリ.nss"
//next "恵那"（"flkagome2" = true） "b2130恵那.nss"
//next "沙紅羅" "2130沙紅羅_似鳥_ノーコ.nss"
//next "恵那" "2130恵那.nss"
//next "似鳥" "2130沙紅羅_似鳥_ノーコ.nss"
//next "ノーコ" "2130沙紅羅_似鳥_ノーコ.nss"
//next "フウリ" "2130フウリ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2120);}



//◆場所：ＵＰ＋_屋外セット_暗闇
	OnBG(10,"bg1203200ＵＰ＋_セット裏_暗闇");
	FadeBG(0,true);

	St2("C",700, @0,@0,"fuノーコa_通常_smile","cg2/",".png");
	FadeSt("C",0,true);

	FadeDelete("上背景", 200, null, true);

	CreateSE("SE21","se環境_燃える_l");
	MusicStart("SE21",2000,1000,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100010nko">
「いた……」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200100020nki">
「ノーコ……？」

{	DeleteAllSt(200,true);
	St2("C",700, @-20,@0,"fuノーコa_通常_normal","cg2/",".png");
	Move("@StNameC/C*", 200, @20, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100030nko">
「みえる？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200100040nki">
「え？　見えるって……」

{	St("MR",700, @40,@0,"buＡＤ_通常_angry");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @-40, @0, Dxl3, false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/200100050adi">
「ちょっと！　あなた中に入らないで――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：カッターナイフが呻る
	CreateSE("SE01","se戦闘_風切り音01");
	CreateSE("SE02","se戦闘_風切り音03");
	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 3000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);
	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景100");
	DeleteAllSt(0,false);
	Fade("絵色100", 300, 0, null, true);

	St("MR",700, @0,@0,"buＡＤ_通常_angry");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/200100060adi">
「え――？」

{	St("ML",700, @0,@0,"buノーコa_カッター_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100070nko">
「どいて」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100080nko">
「しにたい？」

{	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	Move("@StNameMR/MR*", 200, @50, @0, Dxl3, false);
	Shake("@StNameMR/MR*", 200, 0, 10, 0, 0, 500, Dxl1, false);
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/200100090adi">
「ひ…………」

{	St("MR",700, @50,@0,"buＡＤ_通常_sad");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/200100100adi">
「こ、こ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("MR",700, @50,@0,"buＡＤ_通常_angry");
	Move("@StNameMR/MR*", 200, @-50, @0, Dxl3, false);
	FadeSt("MR",200,true);}
//◆音声指示：おびえながら
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/200100110adi">
「殺せるもんなら……殺してみてください……ッ！」

//◆音声指示：おびえながら
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/200100120adi">
「私たちは、この番組に、命懸けで――」

{	St("MR",700, @80,@0,"buミリＰa_通常_shout");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @-80, @0, Dxl3, false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/200100130mrp">
「やめなさい！」

{	St("C",700, @40,@0,"buＡＤ_通常_hard");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 200, @-40, @0, Dxl3, false);
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/200100140adi">
「やめろって、でも――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2121);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("MR",700, @0,@0,"buミリＰa_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/200100150mrp">
「いいから！」

{	St("C",700, @0,@0,"buＡＤ_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/200100160adi">
「よくないです！」

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/200100170adi">
「若原Ｄのために、こんなにみんなが頑張って！」

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/200100180adi">
「なのに、こんな理不尽を許しちゃ――」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buノーコa_カッター_angry");
	Move("@StNameML/ML*", 200, @-30, @0, Dxl3, false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100190nko">
「じゃあ、ころす」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	Move("@StNameML/ML*", 200, @100, @0, Dxl3, false);
	DeleteAllSt(200,true);
	St("MR",700, @80,@0,"buフウリ_通常_angry");
	Move("@StNameMR/MR*", 200, @-80, @0, Dxl3, false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/200100200wfu">
「だめ――――――ッ！！」

{	DeleteAllSt(200,true);
	St("ML",700, @60,@0,"buノーコa_カッター_shock");
	Move("@StNameML/ML*", 200, @-30, @0, Dxl3, false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100210nko">
「――フウリ？」

{	Move("@StNameML/ML*", 500, @-30, @0, Dxl1, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100220nko">
「どうしてここに？」

{	DeleteAllSt(200,true);
	St("MR",700, @30,@0,"buフウリ_通常_angry");
	Move("@StNameMR/MR*", 200, @-30, @0, Dxl3, false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/200100230wfu">
「ノーコちゃん！
　人を刺しちゃ、駄目です！」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buノーコa_カッター_shock");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100240nko">
「…………」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100250nko">
「……フウリ」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/200100260wfu">
「ノーコちゃん……あの……！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);


//◆演出指定：ノーコ、カッターしまう
	CreateSE("SE01","se戦闘_カッター_刃出す04単発a");
	CreateSE("SE02","se戦闘_刃物構える");
	MusicStart("SE01",0,1200,0,1000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);

	Wait(500);

	St("ML",700, @-30,@0,"buノーコa_通常_sad");
	Move("@StNameML/ML*", 300, @30, @0, Dxl1, false);
	FadeSt("ML",300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100270nko">
「もう、くちだししないで」

{	St("MR",700, @0,@0,"buフウリ_通常_fear");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 300, @30, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/200100280wfu">
「――――ッ」

{	DeleteAllSt(200,false);}
　唇をかみしめるフウリを横目に、ノーコは似鳥の側へ。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(2122);}

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg1203200ＵＰ＋_セット裏_暗闇.jpg");
	SetShade("絵背景100", MIDEUM);

	Fade("絵背景100", 500, 1000, null, true);


//	CreateColorSP("絵黒幕", 25000, "BLACK");
//	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆場所：ＵＰ＋_セット裏_暗闇
//	OnBG(10,"bg1203200ＵＰ＋_セット裏_暗闇");
//	FadeBG(0,true);

//	DrawDelete("絵黒幕", 300, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St2("C",700, @-50,@0,"fuノーコa_通常_normal","cg2/",".png");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 200, @50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100290nko">
「にとり」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"fu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200100300nki">
「ノーコ……」

{	St("C",700, @0,@0,"fu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200100310nki">
「おまえ、まさか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100320nko">
「うん」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100330nko">
「みんなにみえる」

{	St("ML",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100340nko">
「わたしはそんざいする」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100350nko">
「わたしはいきてる」

{	St("MR",700, @0,@0,"bu似鳥_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200100360nki">
「なんで……だ……？」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100370nko">
「アザナエルのおかげ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100380nko">
「うたれて」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100390nko">
「きづいたら、こう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@SE*", 3000, 0, null);


	TextBoxDelete(150);
	DeleteAllSt(200,true);

	SoundPlay("@xbgm09",0,450,true);

//◆ＥＶ："ev/ev2120ノーコ告白.txt" 差分Ａ
	CreateTextureEX("絵背景2000BIG", 2000, -50, -50, "cg/ev/l/ev2120ノーコ告白a_l.jpg");
	MoveFTP3("@絵背景2000BIG", 10000, 6, 5);
//	MoveFTP3stop();
	Fade("絵背景2000BIG", 800, 1000, null, true);
	#ev2120ノーコ告白a = true;


//	CreateTextureEX("絵背景2000", 2000, 0, 0, "cg/ev/ev2120ノーコ告白a.jpg");
//	Fade("絵背景2000", 800, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100400nko">
「ねえ、にとり」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100410nko">
「わたし、にんげんになった」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100420nko">
「ここに、いる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100430nko">
「だから……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100440nko">
「いいよね」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100450nko">
「にせものじゃないから」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2123);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100460nko">
「ほんものだから」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100470nko">
「だから、にとり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100480nko">
「あなたのきもちをきかせて」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100490nko">
「にとりもわたしを――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆ＥＶ："ev/ev2120ノーコ告白.txt" 差分Ｂ
	CreateTextureEX("絵背景2001aBIG", 2000, -900, -88, "cg/ev/l/ev2120ノーコ告白b_l.jpg");
	CreateTextureEX("絵背景2001bBIG", 2001, -900, -88, "cg/ev/l/ev2120ノーコ告白c_l.jpg");
	CreateTextureEX("絵背景2002", 2001, 0, 0, "cg/ev/ev2120ノーコ告白c.jpg");
	SetBlur("絵背景2002", true, 2, 500, 50, false);

	MoveFTP2("@絵背景2001*", 10000, 6, 5);

	Fade("絵背景2001aBIG", 800, 1000, null, 300);
	#ev2120ノーコ告白b = true;


//	CreateTextureEX("絵背景2001", 2001, 0, 0, "cg/ev/ev2120ノーコ告白b.jpg");
//	Fade("絵背景2001", 300, 1000, null, true);
//	MoveFTP3stop();
//	Delete("絵背景2000BIG");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200100500nki">
「待て」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200100510nki">
「ちょっと、待ってくれ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200100520nki">
「なに？　どういうこと？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200100530nki">
「おまえは……存在する？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200100540nki">
「ってことは、ええと……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200100550nki">
「あの銃が、本当に夢を叶えた？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆ＥＶ："ev/ev2120ノーコ告白.txt" 差分Ｃ
	Fade("絵背景2001bBIG", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200100560nki">
「な……なんで、そうなるんだ？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200100570nki">
「実際現実になるとか……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200100580nki">
「さすがにありえねーだろ……やり過ぎだろ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200100590nki">
「ってか、夢が叶うならそもそもこんなマンガ描く必要ないだろ……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200100600nki">
「どうせなら金とか女とか、そういう方面で……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100610nko">
「わたしがいるよ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200100620nki">
「え？」

{	Fade("絵背景2002", 300, 1000, null, true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100630nko">
「わたしが、ほんとうに、いるから」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	MoveFTP2stop();
	MoveFTP3stop();
	Delete("絵背景2001aBIG");
	Delete("絵背景2001bBIG");


{	ClockPass(2124);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100640nko">
「わたしが、にとりのこいびと」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100650nko">
「えいえんにそばにいる、パートナー」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200100660nki">
「パートナー」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200100670nki">
「って言われても、その……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100680nko">
「…………」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100690nko">
「もしかして……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm09", 100, 1, null);

//◆ＥＶ："ev/ev2120ノーコ告白.txt" 差分Ｄ
	CreateTextureEX("絵背景2003", 2003, 0, 0, "cg/ev/ev2120ノーコ告白d.jpg");
	CreateTextureEX("絵背景2003BIG", 2003, 0, 0, "cg/ev/l/ev2120ノーコ告白d_l.jpg");
	Move("絵背景2002", 300, 512, 288, null, false);
	Move("絵背景2003", 300, 512, 288, null, false);
	Zoom("絵背景2002", 300, 2000, 2000, null, false);
	Zoom("絵背景2003", 300, 2000, 2000, null, false);
	Fade("絵背景2003", 300, 1000, Axl2, true);
	Fade("絵背景2003BIG", 200, 1000, null, true);

	Delete("絵背景2002");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100700nko">
「わたしが」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100710nko">
「きらい？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200100720nki">
「いや、そういうわけじゃ！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200100730nki">
「そういうわけじゃないよ！　ないんだよ！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200100740nki">
「ただちょっと、急なことで驚きすぎて……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆ＥＶ："ev/ev2120ノーコ告白.txt" 差分Ｂ に戻る
	SetVolumeEX("@xbgm09", 2000, 450, null);
	CreateTextureEX("絵背景2003aBIG", 2003, 0, 0, "cg/ev/l/ev2120ノーコ告白b_l.jpg");
	Fade("絵背景2003aBIG", 300, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100750nko">
「すき？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200100760nki">
「え、いや……待て待て。落ち着こう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2125);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200100770nki">
「常識的に考えて、おまえはオレの創作物で、脳内彼女で、現実に存在していても人間とは――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100780nko">
「すき？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100790nko">
「わたしが、すき？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100800nko">
「あいしてる？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100810nko">
「あいして」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100820nko">
「けっこんして」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100830nko">
「たくさん、あいして」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100840nko">
「セックスして」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100850nko">
「いっぱい、いっぱいセックスして」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100860nko">
「わたしに、にとりのこどもをうませて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Delete("絵背景2003");
	Delete("絵背景2003BIG");
	Fade("絵背景*", 400, 0, null, true);

	St("ML",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/200100870wfu">
「赤ちゃん！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_rage");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/200100880skr">
「こッ……子作り宣言だとォっ！？」

{	St("C",700, @0,@0,"buミリＰa_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/200100890mrp">
「っていうかこれオンエアされてるのに――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	CreateTextureEX("絵背景2001", 2000, 0, 0, "cg/ev/ev2120ノーコ告白b.jpg");
	Fade("絵背景2001", 400, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100900nko">
「………………」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200100910nki">
「………………」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100920nko">
「……にとり？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100930nko">
「すきって……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100940nko">
「わたしのことを……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100950nko">
「すきっていって」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200100960nki">
「だ、だから！　急に言われても、オレ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2126);}

//	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 3000, 0, null);

	CreateSE("SE21","se環境_燃える_l");
	MusicStart("SE21",2000,1000,0,1000,null,true);

//◆ＥＶ："ev/ev2120ノーコ告白.txt" 差分Ｄ
	CreateTextureEX("絵背景2003", 2003, 0, 0, "cg/ev/ev2120ノーコ告白d.jpg");
	Fade("絵背景2003", 300, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100970nko">
「そう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200100980nko">
「そうなんだ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200100990nki">
「え？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200101000nko">
「あいしてない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200101010nko">
「きらい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200101020nko">
「きらい。きらい、きらい。きらいって」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200101030nko">
「にとりはわたしがきらいって、いうんだ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200101040nki">
「いやいや、そうは言ってない――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200101050nko">
「うそ。うそうそうそうそ。みんなうそ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200101060nko">
「せっかく、ゆめがかなって」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200101070nko">
「せっかく、げんじつになって」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200101080nko">
「それなのに、そんなことをいうんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 200, 1000, null, true);

//◆ＳＥ：キリキリキリキリ……カッターの音
//	CreateSE("SE01","se戦闘_カッター_刃出す03遅いa");
//	MusicStart("SE01",0,700,0,1000,null,false);

	Delete("絵背景*");


	CreateSE("SE01","se戦闘_カッター_刃出す01普通b");
	$SETime = RemainTime("SE01");

	CreatePlainSP("絵板写", 5000);
	Wait(16);

	CreateColorSP("絵色黒", 2000, "#000000");

//	CreateTextureSP("絵キャラノーコ", 2100, -1400, -2200, "cg/bu/l/buノーコa_カッター_smile_x01.png");
	CreateTextureSP("絵キャラノーコ", 2100, center, middle, "cg/bg/bg1203200ＵＰ＋_セット裏_暗闇.jpg");
	SetShade("絵キャラノーコ", MIDEUM);
	Zoom("絵キャラノーコ", 0, 3000, 3000, null, true);
	Rotate("絵キャラノーコ", 0, @0, @0, -40, null,true);

	CreateTextureSP("絵短刃下", 2100, Center, Middle, "cg/img/imgカッターバラd.png");
	CreateTextureSP("絵短刃上", 2120, Center, Middle, "cg/img/imgカッターバラb.png");

	CreateTextureSP("絵短刃", 2110, 541, -1066, "cg2/img/imgカッターバラc.png");
	SetBlur("絵短刃", true, 2, 500, 60, false);

	MoveFTP3("@絵キャラノーコ", 10000, 12, 3);

	Wait(16);
	FadeDelete("絵板写", 500, null, true);


	MusicStart("SE01",0,1200,0,1000,null,false);
	Move("絵短刃", $SETime, 376, -975, AxlDxl, false);



//◆ＥＶ："ev/ev2120ノーコ告白.txt" 差分Ｅ
//下倉注：ここ、差分無しです

	Fade("絵色黒", 500, 0, null, true);
	Delete("絵色黒");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	St("MR",700, @80,@0,"bu似鳥_通常_shout");
	Move("@StNameMR/MR*", 200, @-80, @0, Dxl3, false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200101090nki">
「バカ！　やめろ！」

{	St("MR",700, @0,@0,"bu似鳥_通常_angry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200101100nki">
「もう、自分を傷つけたり――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//◆ＳＥ：シャキーン！
	CreateSE("SE11","se戦闘_風切り音10");
	MusicStart("SE11",0,700,0,1000,null,false);

	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 3000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);
	Fade("絵色100", 200, 1000, null, true);

	MoveFTP3stop();
	Delete("絵キャラノーコ");
	Delete("絵短刃*");
	Delete("絵背景100");
	DeleteAllSt(0,false);
	Fade("絵色100", 200, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	St("MR",700, @0,@0,"bu似鳥_通常_angry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200101110nki">
「え……」

{	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200101120nki">
「ノーコ……？　ノーコさん？　ちょっと――」

{	St("ML",700, @0,@0,"buノーコa_カッター_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200101130nko">
「うそつき」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2127);}

	SoundPlay("@xbgm22",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	Move("@StNameML/ML*", 1000, @20, @0, Dxl1, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200101140nko">
「どうしてうそつくの？」

{	Move("@StNameML/ML*", 1000, @20, @0, Axl1, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200101150nko">
「うそをついちゃだめだよ」

{	Move("@StNameML/ML*", 1500, @40, @0, Dxl1, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200101160nko">
「わたしをあいしているのに」

{	St("ML",700, @80,@0,"buノーコa_カッター_smile");
	Move("@StNameML/ML*", 1000, @20, @0, Dxl3, false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200101170nko">
「おしおきだ」

{	St("C",700, @100,@0,"buミヅハ_手構え_hard");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 200, @-100, @0, Dxl3, false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/200101180mzh">
「沙悟浄！　九千坊！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@200,"st沙悟浄_通常_normal");
	Shake("@StNameML/ML*", 300, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameML/ML*", 200, @0, @-200, Dxl1, false);
	FadeSt("ML",200,true);}
//【沙悟浄】
<voice name="沙悟浄" class="その他男声" src="voice/21/200101190e01">
「ヒョーヒョー！」

{	St("MR",700, @0,@200,"st九千坊_通常_normal");
	Shake("@StNameMR/MR*", 300, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 200, @0, @-200, Dxl1, false);
	FadeSt("MR",200,true);}
//【九千坊】
<voice name="九千坊" class="その他男声" src="voice/21/200101200e02">
「ガワッガワッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指定：河童が二人現れる
//◆ＳＥ：カキーン
	CreateSE("SE01","se戦闘_金属弾く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");
	DeleteAllSt(0,true);
	Wait(30);
	FadeDelete("絵フラッシュ白", 100, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
{	St("ML",700, @60,@0,"buノーコa_カッター_shock");
	Move("@StNameML/ML*", 200, @-60, @0, Dxl3, false);
	Shake("@StNameML/ML*", 200, 0, 15, 0, 0, 500, Dxl3, false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200101210nko">
「なに？」

{	St("MR",700, @-30,@0,"buミヅハ_手構え_hard");
	Move("@StNameMR/MR*", 200, @30, @0, Dxl1, false);
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/200101220mzh">
「やめるのじゃ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/200101230mzh">
「おぬしは似鳥を傷つけるため、人間になったのか！？」

{	St("ML",700, @0,@0,"buノーコa_カッター_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200101240nko">
「ミヅハ……？」

{	St("MR",700, @0,@0,"buミヅハ_手構え_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/200101250mzh">
「似鳥よ！　まだわからんのか！」

{	St("MR",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/200101260mzh">
「こやつは一歩、前に進んだのだぞ！
　おぬしの進めなかった一歩を、前に！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/200101270mzh">
「そのノーコに、そのような言葉――！」

{	St("R",700, @0,@0,"bu似鳥_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("R",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200101280nki">
「ちょ、ちょっと待てよ！」

{	St("R",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("R",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200101290nki">
「オレ、別に否定してないし！
　ただちょっと、時間が――」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/200101300mzh">
「今すぐ決めよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
{	St("R",700, @0,@0,"bu似鳥_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("R",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200101310nki">
「決めろって、でも――」

{	St("R",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("R",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200101320nki">
「…………」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200101330nki">
「テレビで中継とか、恥ずかしいし」

{	St("MR",700, @0,@0,"buミヅハ_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/200101340mzh">
「似鳥！」

{	St("ML",700, @0,@0,"buノーコa_カッター_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200101350nko">
「わたしがはずかしいんだ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2128);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
{	St("ML",700, @0,@0,"buノーコa_カッター_pinch");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200101360nko">
「はずかしい……はずかしい……」

{	St("ML",700, @0,@0,"buノーコa_カッター_pinch");
	St("ML",700, @0,@0,"buノーコa_カッター_smile");
	FadeSt("ML",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("ML", 200, 3000);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200101370nko">
「なら……ふふふふ」

{	AgainSt("ML",700, @0,@0,"buノーコa_カッター_smile"}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200101380nko">
「まわりがみえないくらい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200101390nko">
「すなおにしてあげる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200101400nko">
「おしおき、おしおき――」

{	St("ML",700, @0,@0,"buノーコa_カッター_shock");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200101410nko">
「おしおき、だよ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	CreateSE("SE01","se戦闘_風切り音10");


	St("C",700, @150,@0,"buミヅハ_手構え_hard");
	Move("@StNameC/C*", 200, @-60, @0, Dxl3, false);
	FadeSt("C",200,true);

	St("MR",700, @50,@0,"bu沙悟浄_通常_normal");
	St("R",700, @50,@0,"bu九千坊_通常_normal");
	FadeSt("MR",200,false);
	FadeSt("R",200,false);

	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameC/C*", 200, @320, @0, Axl1, false);
	DeleteSt("C",200,false);
	Move("@StNameMR/MR*", 600, @-360, @0, Dxl2, false);
	Move("@StNameR/R*", 600, @-280, @0, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0311]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/200101420mzh">
「いかん！　止めるのじゃ！」

{	St("ML",700, @20,@0,"buノーコa_カッター_pinch");
	Move("@StNameML/ML*", 200, @-20, @0, Dxl3, false);
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200101430nko">
「じゃま」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameML/ML*", 200, @80, @0, Axl2, false);
	DeleteAllSt(200,true);

	CreateSE("SE01","se戦闘_風切り音09");
	CreateSE("SE02","se戦闘_金属衝突01");
	CreateSE("SE03","se戦闘_打撃音07");

//◆演出指示：河童二人、はじき飛ばされる
	CreateTextureEX("絵背景100", 3000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵背景100", 0, 1000, null, true);
	Zoom("絵背景100", 200, 1200, 1200, Dxl2, true);

	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");
	Wait(30);
	Delete("絵背景100");
	Wait(300);
	MusicStart("SE02",0,700,0,1000,null,false);
	FadeDelete("絵フラッシュ白", 100, null, true);
	MusicStart("SE03",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
{	St("MR",700, @40,@0,"buミヅハ_通常_angry");
	Move("@StNameMR/MR*", 200, @-40, @0, Dxl3, false);
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/200101440mzh">
「なに！？　二人がやられ――」

{	St("C",700, @20,@0,"buノーコa_カッター_angry");
	Move("@StNameC/C*", 200, @-20, @0, Dxl1, false);
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200101450nko">
「あなたも、めざわり」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 200, 0, null);

	Move("@StNameC/C*", 200, @80, @0, Dxl3, false);
	DeleteAllSt(200,true);


//◆ＳＥ：ミヅハをカッターナイフで刺す
//◆ＳＥ：ミヅハ弾き飛ばされる
	CreateSE("SE01","se戦闘_風切り音05");
	CreateSE("SE02","se動作_刺す02");

	CreateTextureEX("絵背景100", 3000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");
	Rotate("絵背景100", 0, @0, @180, @0, null,true);

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵背景100", 0, 1000, null, true);
	Zoom("絵背景100", 200, 2000, 2000, Dxl2, true);

	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");
	Wait(30);
	Delete("絵背景100");
	Wait(300);
	MusicStart("SE02",0,700,0,1000,null,false);
	FadeDelete("絵フラッシュ白", 100, null, true);



	St("MR",700, @0,@0,"buミヅハ_ダウナー_pinch");
	Move("@StNameMR/MR*", 200, @50, @20, Dxl3, false);
	Shake("@StNameMR/MR*", 200, 0, 10, 0, 0, 500, Dxl3, false);
	FadeSt("MR",200,true);
	Move("@StNameMR/MR*", 200, @0, @50, Dxl1, false);
	DeleteAllSt(200,false);
	CreateSE("SE01","se人体_倒れる03");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/200101460mzh">
「くぅっ！」

{	St("R",700, @0,@0,"buフウリ_通常_fear");
	Move("@StNameR/R*", 200, @30, @0, Dxl3, false);
	Shake("@StNameR/R*", 200, 50, 10, 0, 0, 500, Dxl3, false);
	FadeSt("R",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/200101470wfu">
「うきゅ――――――ッ！！」

{	St("R",700, @30,@0,"buフウリ_通常_angry");
	Move("@StNameR/R*", 200, @-30, @0, Dxl3, false);
	FadeSt("R",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/200101480wfu">
「ミヅハちゃ――――ん！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameR/R*", 200, @-30, @50, Axl1, false);
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　ノーコの指から伸びたカッターナイフが、ミヅハの腹部を切り裂いた。

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/200101490wfu">
「だ、大丈夫ですか、ミヅハちゃん！」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/200101500mzh">
「そ……そんな……」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/200101510mzh">
「うそ、じゃろ……」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/200101520mzh">
「ノーコが……わらわに……手を？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("ML",700, @80,@0,"buノーコa_カッター_shock");
	Move("@StNameML/ML*", 500, @-80, @0, Dxl1, false);
	FadeSt("ML",200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200101530nko">
「にとり」

{	St("MR",700, @0,@00,"fu似鳥_通常_shock");
	Shake("@StNameMR/MR*", 200, 0, 10, 0, 0, 500, Dxl1, false);
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200101540nki">
「ひ……」

{	St("ML",700, @0,@0,"buノーコa_カッター_angry");
	Move("@StNameML/ML*", 200, @40, @0, Dxl1, false);
	DeleteAllSt(200,false);
	CreateSE("SE01","se戦闘_カッター_刃出す03遅いa");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200101550nko">
「いっしょに」

{	St("MR",700, @0,@0,"fu似鳥_通常_worry");
	Move("@StNameMR/MR*", 200, @20, @0, Dxl1, false);
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200101560nki">
「ぃや……」

{	St("ML",700, @40,@0,"buノーコa_カッター_smile");
	Move("@StNameML/ML*", 200, @80, @0, Dxl1, false);
	DeleteAllSt(200,false);
	CreateSE("SE01","se戦闘_カッター_刃出す04単発a");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200101570nko">
「しのう」

{	St("MR",700, @20,@0,"fu似鳥_通常_shout");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 200, 0, 15, 0, 0, 500, Dxl3, false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200101580nki">
「いやだああああッ！！」

{	DeleteAllSt(200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/200101590skr">
「でりゃああッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2129);}

//◆演出指定：沙紅羅、木刀で殴りつける

	St("R",700, @0,@0,"bu沙紅羅_木刀_rage");
	Move("@StNameR/R*", 200, @-100, @0, Dxl3, false);
	FadeSt("R",200,true);

	SoundPlay("@xbgm07_noint",0,450,true);


	CreateTextureEX("木刀", 15000, @0, @0, "cg/ef/ef木刀剣閃a.jpg");
	Zoom("木刀", 0, 1100, 1100, null, true);

	Fade("木刀", 0, 1000, null, true);
	Shake("木刀", 500, 5, 5, 0, 0, 1000, Dxl1, false);
	Rotate("木刀", 0, @0, @180, @0, null,true);
	DrawTransition("木刀", 300, 0, 1000, 1000, null, "cg/data/beam_03_00_1.png", false);
	DeleteSt("R",200,false);
	CreateSE("殴る", "se戦闘_打撃音07");
	MusicStart("殴る", 0, 1000, 0, 1000, null, false);
	Fade("木刀", 500, 0, null, true);

	St("ML",700, @50,@0,"buノーコa_カッター_pinch");
	Move("@StNameML/ML*", 300, @-50, @0, Dxl1, false);
	Shake("@StNameML/ML*", 300, 0, 10, 0, 0, 500, Dxl1, false);
	FadeSt("ML",300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200101600nko">
「――く」

{	St("MR",700, @20,@0,"bu似鳥_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200101610nki">
「え――？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
{	St("C",700, @80,@0,"bu沙紅羅_木刀_shout");
	Move("@StNameC/C*", 200, @-80, @0, Dxl3, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/200101620skr">
「おいテメー！　なに腰抜かしてんだ！
　男だろ！　立てよ！」

{	St("ML",700, @-20,@10,"buノーコa_カッター_shock");
	Move("@StNameML/ML*", 200, @20, @-10, Dxl1, false);
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200101630nko">
「あなた……やるき？」

{	St("C",700, @0,@0,"bu沙紅羅_木刀_pride");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/200101640skr">
「おうおう！　タイマン上等！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/200101650skr">
「愛の狂気に迷い込んだ刃物女がひとり、とくりゃ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",700, @0,@0,"bu沙紅羅_木刀_rage");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/200101660skr">
「逃げるしかねえだろッ！！」

{	St("MR",700, @20,@0,"bu似鳥_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200101670nki">
「ええええええ――！？」

{	St("C",700, @0,@0,"bu沙紅羅_木刀_pride");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 200, @100, @0, Dxl3, false);
	FadeSt("C",200,true);
	Move("@StNameC/C*", 200, @50, @0, Dxl3, false);
	CreateSE("SE01","se動作_ジャンプ");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/200101680skr">
「オラついてこいッ！！」

{	St("MR",700, @20,@0,"bu似鳥_通常_shock");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @20, @0, Dxl3, false);
	FadeSt("MR",200,true);
	St("MR",700, @20,@0,"bu似鳥_通常_pain");
	Move("@StNameMR/MR*", 200, @50, @0, Dxl3, false);
	Shake("@StNameMR/MR*", 500, 0, 5, 0, 0, 500, Dxl1, false);
	CreateSE("SE02","se動作_走る02_l");
	MusicStart("SE02",0,700,0,1000,null,false);
	SetVolume("SE02", 1500, 0, null);
	DeleteAllSt(200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/200101690nki">
「ちょ！　ひ、ひっぱるな！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆音声指示：ピュー！　逃げ足

	St("C",700, @-30,@0,"buノーコa_カッター_shock");
	Move("@StNameC/C*", 200, @30, @0, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/200101700nko">
「…………にがさない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 1000, 0, null);


	TextBoxDelete(150);

//◆演出指定：ノーコ、中空を飛ぶ
	CreateSE("SE01","se動作_空飛ぶ02");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",700, @0,@0,"buノーコa_カッター_shock");
	FadeSt("C",200,true);
	Move("@StNameC/C*", 200, @50, @-50, Axl3, false);
	DeleteAllSt(200,true);

	Wait(1200);



//あきゅん「演出：繋ぎ処理用の分岐です」
	if($CharaName=="千秋"){
		if(Substr($myRoute,0,2)=="ab"){
//			$GameName = "2130フウリ.nss";
//あきゅん「演出：何もしない」
		}
	}else if($CharaName=="恵那"){
		if($myRoute=="トゥルー"){
//			$GameName = "2130恵那.nss";
//あきゅん「演出：何もしない」
		}else if(Substr($myRoute,0,2)=="ab"){
//			$GameName = "2130フウリ.nss";
//あきゅん「演出：何もしない」
		}else if(Substr($myRoute,0,1)=="b"){
//			$GameName = "b2130恵那.nss";
//あきゅん「演出：何もしない」
		}
	}else if($CharaName=="沙紅羅"){
//		$GameName = "2130沙紅羅_似鳥_ノーコ.nss";
		CreateColorSP("絵黒幕", 16000, "BLACK");
		DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	}else if($CharaName=="似鳥"){
//		$GameName = "2130沙紅羅_似鳥_ノーコ.nss";
		CreateColorSP("絵黒幕", 16000, "BLACK");
		DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	}else if($CharaName=="ノーコ"){
//		$GameName = "2130沙紅羅_似鳥_ノーコ.nss";
		CreateColorSP("絵黒幕", 16000, "BLACK");
		DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	}else if($CharaName=="フウリ"){
//		$GameName = "2130フウリ.nss";
//あきゅん「演出：何もしない」
	}

	EndScene();



}
