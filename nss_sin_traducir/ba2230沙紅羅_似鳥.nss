
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ba2230沙紅羅_似鳥.nss_MAIN
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

	//★徒歩：フラグ修正
	if($CharaName=="沙紅羅"){
		if(Substr($myRoute,0,2)=="ba"){
			$GameName="ba2235沙紅羅.nss";
		}else{
			$GameName="bb2235沙紅羅_似鳥.nss";
		}
	}else if($CharaName=="似鳥"){
		if(Substr($myRoute,0,2)=="ba"){
			$GameName="ba2235似鳥.nss";
		}else{
			$GameName="bb2235沙紅羅_似鳥.nss";
		}
	}
}

scene ba2230沙紅羅_似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="330">
////////////header////////////
//file name "ba2230沙紅羅_似鳥.nss"
//title ""
//previous "ba2220沙紅羅_似鳥_ノーコ.nss"

////////////footer////////////
//next "沙紅羅"（"flkagome2a" = true） "ba2235沙紅羅.nss"
//next "似鳥"（"flkagome2a" = true） "ba2235似鳥.nss"

//next "沙紅羅"（"flkagome2a" = false） "bb2235沙紅羅_似鳥.nss"
//next "似鳥"（"flkagome2a" = false） "bb2235沙紅羅_似鳥.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2230);}

//	SoundPlay("@xbgm19",0,450,true);

	OnBG(10,"bg1101400スパコン館_裏面_半廃墟");
	FadeBG(0,true);

	SetVolumeEX("@xbgm*", 2000, 0, null);

	FadeDelete("上背景", 300, null, true);

	TakeRatePic();//あきゅん「演出：スクリーン希望箇所」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/300100010skr">
「おい似鳥！　ボサッとしてる場合じゃ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	CreateSE("SE05","se環境_地鳴り03");
//	CreateSE("SE05","se戦闘_倒壊04");
	MusicStart("SE05",0,700,0,1000,null,false);

	CreateTextureEX("絵背景１", 2000, Center, @-400, "cg/ev/l/ev2220太四郎ビル大破壊_l.jpg");
//	Move("絵背景１", 0, @0, @0, Dxl2, true);

	Shake("絵背景１", 300, 5, 2, 0, 0, 500, AxlDxl, false);
	Move("絵背景１", 300, @0, @380, Dxl2, false);
	Fade("絵背景１", 300, 1000, null, true);
	DeleteAllSt(0,true);
	Shake("絵背景１", 1000, 5, 2, 0, 0, 500, AxlDxl, false);

//	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg1101400スパコン館_裏面_半廃墟.jpg");
//	Fade("絵背景100", 0, 500, null, false);
//	Shake("絵背景100", 3000, 5, 2, 0, 0, 500, AxlDxl, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/300100020tsr">
「ぐおおおおおおおおお！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



//◆ＳＥ：パラパラパラ、瓦礫崩れる

	Fade("絵背景１", 300, 0, null, false);
	Shake("@OnBG*", 3000, 5, 2, 0, 0, 500, AxlDxl, false);
	CreateSE("SE01","se戦闘_倒壊03");
	MusicStart("SE01",0,700,0,1000,null,false);

	SoundPlay("@xbgm22",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
{	St("MR",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("MR",200,true);
	Shake("@StNameMR/MR*", 300, 10, 5, 0, 0, 500, null, false);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/300100030mrp">
「きゃああっ！！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@50,"bu平次_御用だ_angry");
	Move("@StNameML/ML*", 200, @0, @-50, Dxl2, false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/300100040fjh">
「ちぃっ！　ここは危ねぇ！
　みんな、逃げるんだッ！！」

{	DeleteAllSt(200,false);
	St("ML",700, @-50,@0,"buみそa_オラオラ_pinch");
	Move("@StNameML/ML*", 300, @50, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/300100050mso">
「姐さんも、早く！！」

{	DeleteAllSt(200,false);
	St("MR",700, @50,@0,"buブーa_オラオラ_pinch");
	Move("@StNameMR/MR*", 300, @-50, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/300100060buu">
「こんなところにいたら、命がいくらあっても――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/300100070skr">
「おまえらは、平次と一緒に逃げろ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_オラオラ_shock");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/300100080mso">
「姐さんッ！！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_オラオラ_shock");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/300100090buu">
「なに言ってるんですかッ！！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/300100100skr">
「ノーコだけに、任せてられねえ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,false);

	CreateColorEX("絵色100", 1500, "BLACK");

	CreateSE("SE01a","se銃_構える");
	MusicStart("SE01a",0,700,0,1000,null,false);
	CreateTextureEX("イベント1", 10000, Center, @0, "cg/img/imgアザナエルa.png");

	Fade("絵色100", 500, 300, null, false);
	Fade("イベント1", 500, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/300100110skr">
「それにアタシたちには、これがある――」

{
	Fade("絵色100", 500, 0, null, false);
	Fade("イベント1", 500, 0, null, true);
//	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buミリＰb_通常_shock");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/300100120mrp">
「アザナエル――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2231);}

	Delete("絵色100");
	Delete("イベント1");
//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/300100130skr">
「この銃は、撃たれた奴の願いを叶える」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/300100140skr">
「アイツは……目の前で、愛する仲間を失ったんだ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/300100150skr">
「おまえらには心配かけて悪いが……
　どうしても、救ってやりてーんだよ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_sad");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/300100160mso">
「姐さん……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_sad");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/300100170buu">
「もしかして、タカ兄のこと……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

	TextBoxDelete(150);


	CreateSE("SE05","se環境_地鳴り03");
	MusicStart("SE05",0,500,0,1000,null,false);

	CreateTextureEX("絵背景１", 2000, Center, @-400, "cg/ev/l/ev2220太四郎ビル大破壊_l.jpg");
	Move("絵背景１", 0, @0, @400, Dxl2, true);

	DeleteAllSt(0,true);
	Shake("絵背景１", 1000, 5, 2, 0, 0, 500, AxlDxl, false);
	Fade("絵背景１", 300, 1000, null, true);



	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/300100180tsr">
「ぐおおおおおおおおお！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

	TextBoxDelete(150);

	Fade("絵背景１", 300, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]


{	St("C",700, @-50,@0,"bu平次_通常_shout");
	Move("@StNameC/C*", 200, @50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/300100190fjh">
「てめぇら、早く――」


{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/300100200skr">
「んじゃ、よろしく頼むぜ！」

{
	Move("@StNameC/C*", 300, @-50, @0, Axl2, false);
	DeleteAllSt(200,true);
	SetVolumeEX("SE*", 300, 0, null);
	SetVolumeEX("@xbgm*", 300, 0, null);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/300100210nki">
「待ってくれ！」

{	DeleteAllSt(200,false);
	St("ML",700, @-60,@0,"bu沙紅羅_後ろ向き_normal");
	Move("@StNameML/ML*", 200, @60, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/300100220skr">
「ん？」

{	SetVolumeEX("@x*", 2000, 0, NULL);
	DeleteAllSt(200,true);
	St("C",19010, @0,@0,"fu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/300100230nki">
「オレも行く！」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/300100240skr">
「似鳥……おまえ、本気か？」


{	DeleteAllSt(200,true);
	St("C",19010, @0,@0,"fu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/300100250nki">
「オレ……今まで色んなものから逃げ続けて……
　その結果が、今のオレだ」

{	St("C",19010, @0,@0,"fu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/300100260nki">
「どこにも行けなくて、なにもできない。
　そのせいで、ノーコにあんなことまでさせて……」

{	St("C",19010, @0,@0,"fu似鳥_通常_rage");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/300100270nki">
「オレは――今の自分が嫌なんだ！
　自分の力で、乗り越えたいんだ！」

{	St("C",19010, @0,@0,"fu似鳥_通常_shout");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/300100280nki">
「何かしないと――変わらないんだッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);

	Wait(2000);

	SoundPlay("@xbgm23",0,450,true);

	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeStPro("C", 200, 400);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0058]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/300100290skr">
「……よく言った」

{	AgainSt("C",700, @0,@0,"bu沙紅羅_通常_smile");
	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_shout");
	Move("@StNameC/C*", 200, @-60, @0, Dxl1, false);
	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/300100300skr">
「よっしゃ！　一緒に来い！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(2232);}


//◆場所：スパコン館_通路_半崩壊
	Move("@StNameC/C*", 200, @-60, @0, Axl1, false);
	SceneOut(5000, 300, "slide_01_01_0");

	DeleteAllSt(0,false);

	OnBG(10,"bg1102200スパコン館_通路_半崩壊");
	FadeBG(0,true);
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/l/bg1102200スパコン館_通路_半崩壊_l.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	Wait(500);

	Shake("絵背景100", 3000, 20, 10, 0, 0, 500, AxlDxl, false);
	SceneIn(300, "slide_01_01_1");

	CreateSE("SE04","se戦闘_倒壊04");
	MusicStart("SE04",0,500,0,1000,null,false);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080a]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/300100310tsr">
「ぐおおおおおおおおお！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
*/
	CreateVOICE("その他男声","ba22/300100310tsr");
	MusicStart("その他男声",0,1000,0,1000,null,false);

//◆演出指示：揺れが激しく

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080b]
{	St("ML",700, @50,@0,"bu沙紅羅_後ろ向き_rage");
	Move("@StNameML/ML*", 300, @-50, @0, Dxl2, false);
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 300, 10, 0, 0, 0, 500, null, false);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/300100320skr">
「だんだん、ビルも傾いてきて――
　クソっ！　行き止まり！？」

{	DeleteAllSt(200,false);
	St("MR",700, @50,@0,"bu似鳥_通常_angry");
	Move("@StNameMR/MR*", 300, @-50, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/300100330nki">
「昔よく来たから知ってる！　こっちだ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("その他男声", 1200, 0, null);

	Move("@StNameMR/MR*", 300, @50, @0, Axl2, false);
	DeleteAllSt(200,true);

	TextBoxDelete(150);

	CreateColorSP("絵色黒", 5000, "#000000");
	DrawTransition("絵色黒", 500, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Wait(500);

	Request("SE*", Lock);

	EndScene();
}
