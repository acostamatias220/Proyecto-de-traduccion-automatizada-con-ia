
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ba2235似鳥.nss_MAIN
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

scene ba2235似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="730">
////////////header////////////
//file name "ba2235似鳥.nss"
//title "臨死体験"
//previous "ba2230沙紅羅_似鳥.nss"

////////////footer////////////
//next "似鳥" "ba2239似鳥_ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	Request("@SE*", UnLock);

{	ClockPass(2233);}


//◆場所：スパコン館_通路_半崩壊
	OnBG(10,"bg1102200スパコン館_通路_半崩壊");
	FadeBG(0,true);




//◆ＳＥ：地鳴りが大きく


	OnBG(10,"bg1102200スパコン館_通路_半崩壊");
	FadeBG(0,true);
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg1102200スパコン館_通路_半崩壊.jpg");

	Shake("絵背景100", 30000, 20, 10, 0, 0, 500, AxlDxl, false);
	Fade("絵背景100", 0, 500, null, false);
	DrawDelete("上背景", 500, 100, null, "slide_01_02_1", true);

	CreateSE("SE04","se戦闘_倒壊04");
	MusicStart("SE04",0,700,0,1000,null,false);

	SoundPlay("@xbgm23",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200010nki">
（そう、思い出せオレ――）


{	St("C",700, @-50,@0,"bu似鳥_通常_angry");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	Shake("@StNameC/C*", 1000, 5, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);
}

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200020nki">
（昔――大昔、オレはなんだった？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);

	SceneOut(5000, 300, "slide_01_01_0");
	DeleteAllSt(0,true);

	Shake("絵背景100", 0, 0, 0, 0, 0, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]

{
	St("C",19010, @0,@0,"fu似鳥_通常_pinch");
	FadeSt("C",200,true);
}

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200030nki">
（初めて出した同人誌――
　オレはノーコのパートナーだった）

{
//	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_angry");
//	FadeSt("C",200,true);

}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200040nki">
（黒炎纏いて黒翼広げ、大地を統べたかつての<RUBY text="カイザー・オブ・ダークネス">堕皇</RUBY>ルシフェル――その転生体が、オレだ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
	TextBoxDelete(150);


	St("C",700, @-50,@0,"bu似鳥_通常_angry");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",0,false);
	SceneIn(300, "slide_01_01_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200050nki">
（反逆の濡れ衣を着せられたオレは、<RUBY text="スラッシャー・ワン">切裂闇使</RUBY>ノーコと共に生死と自分の矜恃を賭けて戦った）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2234);}


	TextBoxDelete(150);

	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	SceneOut(5000, 300, "slide_01_01_0");

	St("C",19010, @0,@0,"fu似鳥_通常_smile");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200060nki">
（だが……もしかしたらその頃の自分が、一番喜びに満ちた日々を送っていたのかもしれない）

{	St("C",19010, @0,@0,"fu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200070nki">
（辛くても……苦しくても……心が折れかけても……
　オレの側には、ノーコがいた）

{	St("C",19010, @0,@0,"fu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200080nki">
（ノーコがいたから……オレは戦うことが出来た）

{
//	St("C",700, @0,@0,"bu似鳥_通常_hard");
//	FadeSt("C",200,true);
//	DeleteAllSt(0,false);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200090nki">
（もしノーコがいなければ、きっとオレは――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,false);
	TextBoxDelete(150);

	SceneIn(300, "slide_01_01_1");
	St("C",700, @-50,@0,"bu似鳥_通常_angry");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200100nki">
（だが――！）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200110nki">
（運命は、オレたちを切り裂いた！）

{	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200120nki">
（天使に捕まったノーコ！
　戦場から遙か遠い最果ての地で彼女は処刑された）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2235);}

	TextBoxDelete(150);

	SetVolumeEX("@x*", 2000, 0, NULL);

	CreateColorEX("上背景", 5000, "#000000");
	Fade("上背景", 500, 1000, null, true);

	DeleteAllSt(0,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]

{
//	St("C",700, @0,@0,"bu似鳥_通常_angry");
//	FadeSt("C",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200130nki">
（オレたちは共に死ぬことさえ許されなかったのだ！）

{
//	St("C",700, @0,@0,"bu似鳥_通常_pinch");
//	FadeSt("C",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200140nki">
（絶望……
　オレは絶望のあまり、自ら刃を胸に突き立てた）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//	St("C",700, @0,@0,"bu似鳥_通常_sad");
//	FadeSt("C",200,true);

	TextBoxDelete(150);

	CreateColorEX("赤フラ", 5000, "#FF0000");
	Fade("赤フラ", 0, 1000, null, true);
	Wait(300);
	Fade("赤フラ", 2000, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200150nki">
（<RUBY text="カイザー・オブ・ダークネス">堕皇</RUBY>ルシフェルは、その短い生涯を終えたのだ……）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200160nki">
（だが――互いの強い想いが、神意さえねじ曲げる！）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200170nki">
（２万年の贖罪を終え、２１世紀の日本に蘇った<RUBY text="カイザー・オブ・ダークネス">堕皇</RUBY>ルシフェル――即ちオレ！）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200180nki">
（その側には、まるで運命の糸を断ち切るかのように、かつてのパートナー、ノーコが――ッ！！）

{
	CreateSE("SE01L","se戦闘_倒壊03");
	MusicStart("SE01L",0,400,0,1000,null,false);

	Fade("上背景", 300, 0, null, true);
	St("MR",710, @-50,@0,"bu似鳥_通常_shout");
	Move("@StNameMR/MR*", 300, @50, @0, Dxl2, false);
	FadeSt("MR",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200190nki">
「沙紅羅！」

{	St("ML",700, @-50,@0,"bu沙紅羅_通常_rage");
	Move("@StNameML/ML*", 300, @50, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350200200skr">
「ここか！」

{	St("MR",710, @0,@0,"bu似鳥_通常_rage");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200210nki">
「ああ、行くぞ！！」

//▼シナリオ整合により修正
{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350200220skr">
「おうっ！！　覚悟――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 1000, 0, null);

	SetVolumeEX("@x*", 1000, 0, NULL);

	TextBoxDelete(150);

	SceneOut(5000, 300, "slide_01_01_0");

	DeleteAllSt(0,false);

	OnBG(10,"bg1103200スパコン館_店内_半崩壊");
	FadeBG(0,true);
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg1103200スパコン館_店内_半崩壊.jpg");
	Fade("絵背景100", 0, 500, null, false);

	Wait(500);

	Shake("絵背景100", 30000, 10, 5, 0, 0, 500, AxlDxl, false);

	SceneIn(300, "slide_01_01_1");


	CreateTextureEX("絵背景EV01", 100, 0, -555, "cg/ev/l/ev2220太四郎ビル大破壊_l.jpg");
	Shake("絵背景EV01", 2000, 5, 5, 0, 0, 1000, null, false);

//◆ＳＥ：大破壊
	CreateSE("SE01a","se戦闘_破壊01");
	CreateSE("SE01","se戦闘_倒壊01");
	CreateSE("SE02","se戦闘_倒壊04");

	MusicStart("SE01a",0,700,0,1000,null,false);
	Fade("絵背景EV01", 0, 1000, null, false);
	FadeF4("絵背景EV01", 1000, 1000, 1000, 0, 0, Dxl1, false);
	Zoom("絵背景EV01", 1000, 1500, 1500, Dxl2, 900);

	FadeDelete("絵背景EV01", 200, null, false);
	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,1500,0,1000,null,false);

	CreateVOICE("その他男声","ba22/350200230tsr");
	MusicStart("その他男声",0,700,0,1000,null,false);


//◆演出指示：扉開けて部屋に入った途端？？
//◆演出指示：一際大きな振動

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060a]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/350200230tsr">
「ぐおおおおおおおお――――っ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060b]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200240nki">
「な――――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指示：ビル崩壊
	SetVolume("その他男声", 4000, 0, null);

	Shake("絵背景100", 30000, 30, 20, 0, 0, 500, AxlDxl, false);

	CreateSE("SE01","se戦闘_倒壊03");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,false);
	CreateColorEX("上背景", 20000, "#000000");
	Fade("上背景", 2000, 1000, null, true);

	ClockDelete(0,true);

	Shake("C", 3000, 30, 30, 0, 0, 500, AxlDxl, false);
	Shake("絵背景100", 3000, 30, 30, 0, 0, 500, AxlDxl, false);

	Wait(3000);


//◆演出指示：暗闇に光の天国演出
	Shake("絵背景100", 0, 0, 0, 0, 0, 500, AxlDxl, false);

	Wait(2000);

	SetVolumeEX("SE01", 1000, 0, NULL);

	CreateColorSP("黒背景", 500, "Black");
	CreateColorEXadd("フラッシュ白", 15000, "WHITE");

	Fade("黒背景",0,1000,null,true);


	Fade("上背景", 2000, 0, null, true);

	SetVolumeEX("SE*", 3000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200250nki">
（あれ……なんだ……？）

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200260nki">
（ここは……どこ？）

{	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200270nki">
（ん……アレは……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);


	Fade("フラッシュ白",2000,1000,null,false);
	DrawTransition("フラッシュ白", 2000, 0, 500, 100, Dxl1, "cg/data/circle_01_00_0.png", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200280nki">
（光……？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE06","se擬音_光り輝く01");
	MusicStart("SE06",1000,500,0,1000,null,true);

//	Fade("フラッシュ白",3000,1000,null,false);
	DrawTransition("フラッシュ白", 3000, 500, 1000, 100, Axl1, "cg/data/circle_01_00_0.png", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200290nki">
（どんどん……身体が引き寄せられて……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SoundPlay("@xbgm25",0,450,true);


//◆ＥＶ："ev/ev2230似鳥臨死体験.txt"

//あきゅん「修正指示：現在似鳥のズームから広がっていく感じに」
//あきゅん「修正指示：ズームやムーブを駆使して描写に合わせて見せてください」
	CreateTextureEX("絵背景１", 2000, 0, 0, "cg/ev/ev2230似鳥臨死体験.jpg");
	CreateTextureEX("絵背景２", 1000, -1966, -1040, "cg/ev/ex/ev2230似鳥臨死体験_ex_ogm.jpg");
	Fade("絵背景２", 1000, 1000, null, true);

//	Lens_Set($プロセスレンズ名,優先度,X座標,Y座標,X幅,Y幅);
	Lens_Set("レンズ１",1100,-300,-300,1550,1550);
//	Lens_Start(速度);
	Lens_Start(3000);


//	MoveFTP3("@絵背景２", 8000, 4, 5);
//	MoveFTP3stop();

	Fade("フラッシュ白",2000,0,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200300nki">
（ん？　あの光は……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("絵背景２", 1500, -1566, -1240, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080a]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200310nki">
（赤ん坊……？）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200320nki">
（どんどん……大きくなって……）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200330nki">
（あれ？　あの顔、どこかで……）


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200340nki">
（もしかして……オレ？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("絵背景２", 2500, -1900, -50, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080b]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200350nki">
（幼稚園……小学校……どんどん大きくなって……）


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200360nki">
（……やっぱり、この先は見ないでおくか）


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200370nki">
（っていっても、ダメ？）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolumeEX("SE06", 3000, 0, NULL);


//	MusicStart("@xbgm12",0,700,0,1000,null,true);

	Move("絵背景２", 1500, -1300, -450, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{
//	St("C",19010, @0,@0,"fu似鳥_通常_shock");
//	FadeSt("C",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200380nki">
（ゲ！　ちょっと！
　よりによって新年度の自己紹介とか――）

{
//	DeleteAllSt(200,true);
}
//【似鳥戴斗（中二）】
<voice name="似鳥戴斗（中二）" class="似鳥戴斗" src="voice/ba22/350200390nt2">
「黒炎纏いて黒翼広げ、大地を統べたかつての<RUBY text="カイザー・オブ・ダークネス">堕皇</RUBY>ルシフェル――その転生体が、オレだ」

{
//	St("C",19010, @0,@0,"fu似鳥_通常_rage");
//	FadeSt("C",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200400nki">
（ぎゃ――！！　やめて！　やめて！　死にたい！）

{
//	DeleteAllSt(200,false);
}
//【似鳥戴斗（中二）】
<voice name="似鳥戴斗（中二）" class="似鳥戴斗" src="voice/ba22/350200410nt2">
「マラトンを駆けるエウクレスの脚とも呼ばれた我が脚も、戦場で負った古傷が疼いては要をなさん！」

{
//	St("C",19010, @0,@0,"fu似鳥_眼鏡上げ_mad");
//	FadeSt("C",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200420nki">
（ただの運動会じゃんそれ！　ケガとかしてねーし！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	DeleteAllSt(200,false);
	TextBoxDelete(150);

	Move("絵背景２", 2000, -50, -1130, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【似鳥戴斗（中三）】
<voice name="似鳥戴斗（中三）" class="似鳥戴斗" src="voice/ba22/350200430nt3">
「疼く……疼くぞ……この木刀、ただの土産物ではない！
　かつて共に戦場を薙いだ、ブラッディカリバーン！」

{
//	St("C",19010, @0,@0,"fu似鳥_通常_shock");
//	FadeSt("C",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200440nki">
（修学旅行でやめて！　そのネーミングセンス！）

{
//	DeleteAllSt(200,false);
}
//【似鳥戴斗（中三）】
<voice name="似鳥戴斗（中三）" class="似鳥戴斗" src="voice/ba22/350200450nt3">
「受験？　この<RUBY text="カイザー・オブ・ダークネス">堕皇</RUBY>を侮辱するか？　所詮人間界の浮き世事――我をそのような物差しで測るでないッ！！」

{
//	St("C",19010, @0,@0,"fu似鳥_通常_rage");
//	FadeSt("C",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200460nki">
（受験失敗してるんだから、強がるなよ！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	DeleteAllSt(200,false);
	TextBoxDelete(150);

	Move("絵背景２", 1500, -100, -530, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110a]
//【似鳥戴斗（高一）】
<voice name="似鳥戴斗（高一）" class="似鳥戴斗" src="voice/ba22/350200470nk1">
「ここが、新たな戦場……？
　邪気に満ちた場所だ……」


{
//	St("C",19010, @0,@0,"fu似鳥_通常_smile");
//	FadeSt("C",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200480nki">
（滑り止めだしなあ……）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	DeleteAllSt(200,false);
	TextBoxDelete(150);
	Move("絵背景２", 1500, -500, -50, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【似鳥戴斗（高一）】
<voice name="似鳥戴斗（高一）" class="似鳥戴斗" src="voice/ba22/350200490nk1">
「なんだ……やめろ……ッ！！
　オープン・フィンガー・グローブを外すと<RUBY text="スティグマ">聖痕</RUBY>が！！」

//【似鳥戴斗（高一）】
<voice name="似鳥戴斗（高一）" class="似鳥戴斗" src="voice/ba22/350200500nk1">
「<RUBY text="フォールン・トゥエルブ">１２闇使</RUBY>の封印が解ける！
　まだ時期には早い――ふがッ！」

{
//	St("C",19010, @0,@0,"fu似鳥_通常_sigh");
//	FadeSt("C",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200510nki">
（あーあ。いきなりそんなカッコで来るから……
　ってかグローブの下油性マジックの落書きでしょ）

{
//	DeleteAllSt(200,false);
}
//【似鳥戴斗（高一）】
<voice name="似鳥戴斗（高一）" class="似鳥戴斗" src="voice/ba22/350200520nk1">
「がッ！　うがッ！　げふっげふっ……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("絵背景１", 1000, 1000, null, true);

	Lens_Delete("レンズ１");
	Delete("絵背景２");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{
//	St("C",19010, @0,@0,"fu似鳥_通常_lost");
//	FadeSt("C",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200530nki">
（…………）

{
//	St("C",19010, @0,@0,"fu似鳥_通常_sad");
//	FadeSt("C",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200540nki">
（……バカだなあ）

{
//	St("C",19010, @0,@0,"fu似鳥_通常_sigh");
//	FadeSt("C",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200550nki">
（なんでもうちょっと、普通に出来ねぇんだよおまえ）

{
//	St("C",19010, @0,@0,"fu似鳥_通常_smile");
//	FadeSt("C",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200560nki">
（そんなんだから――そんなんだから――）

{
//	St("C",19010, @0,@0,"fu似鳥_通常_sad");
//	FadeSt("C",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200570nki">
（運命とか、感じちまうんだよ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	DeleteAllSt(200,false);

	TextBoxDelete(150);
	Fade("絵背景１", 700, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【似鳥戴斗（高一）】
<voice name="似鳥戴斗（高一）" class="似鳥戴斗" src="voice/ba22/350200580nk1">
「斎藤……さん？」

//【似鳥戴斗（高一）】
<voice name="似鳥戴斗（高一）" class="似鳥戴斗" src="voice/ba22/350200590nk1">
「君も、物理部に？」

//【似鳥戴斗（高一）】
<voice name="似鳥戴斗（高一）" class="似鳥戴斗" src="voice/ba22/350200600nk1">
「よろしくね」

{
	St("C",19010, @0,@0,"fu似鳥_通常_smile");
	FadeSt("C",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200610nki">
（物理部は、爪弾きにされたオタクの逃げ場所で――）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200620nki">
（ふたりともクラスになじめなくて、逃げるように部活に行くから、当然一緒に過ごす時間は多くなって……）

{
	DeleteAllSt(200,false);
}
//【似鳥戴斗（高一）】
<voice name="似鳥戴斗（高一）" class="似鳥戴斗" src="voice/ba22/350200630nk1">
「マンガとか描くんだ」

//【似鳥戴斗（高一）】
<voice name="似鳥戴斗（高一）" class="似鳥戴斗" src="voice/ba22/350200640nk1">
「オレ……あんまり上手くないよ」

//【似鳥戴斗（高一）】
<voice name="似鳥戴斗（高一）" class="似鳥戴斗" src="voice/ba22/350200650nk1">
「同人誌――？」

{
	St("C",19010, @0,@0,"fu似鳥_通常_sigh");
	FadeSt("C",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200660nki">
（同人誌とか、描き始める）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@x*", 1000, 0, NULL);

	St("C",19010, @0,@0,"fu似鳥_通常_normal");
	FadeSt("C",200,true);
	Wait(200);
	St("C",19010, @0,@0,"fu似鳥_眼鏡上げ_shock");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 5, 0, 0, 0, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200670nki">
（あ……そうか）

{	St("C",19010, @0,@0,"fu似鳥_通常_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200680nki">
（わかった。やっと、わかった）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateColorSP("白背景", 400, "WHITE");
	Fade("黒背景",2000,0,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161]

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200690nki">
（ノーコって……）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200700nki">
（斎藤さんの――斎藤能子のことだったんだ）

{	St("C",19010, @0,@0,"fu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200710nki">
（ああ……そうだ……）

{	St("C",19010, @0,@0,"fu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200720nki">
（オレは、あの時のオレを――）

{	St("C",19010, @0,@0,"fu似鳥_通常_angry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350200730nki">
（認めてやらなきゃ！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 3000, 1000, null, true);
	Delete("上背景");

	EndScene();
}
//next "似鳥" "ba2239似鳥_ノーコ.nss"
