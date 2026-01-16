
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2340沙紅羅.nss_MAIN
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
	$GameName = "2350沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss";
	//$GameCircle=false;

}

scene 2340沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1040">
////////////header////////////
//file name "2340沙紅羅_千秋_恵那.nss"
//title "金閣寺浮上"
//previous "2331沙紅羅.nss"

////////////footer////////////
//next "沙紅羅" "2350沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss"


////////////body////////////


//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);

{	ClockPass(2340);}

//◆場所：籠_正面
	OnBG(10,"bg0801200籠_正面_ブラックライト");//背景要確認
	FadeBG(0,true);

//◆ＳＥ：エンジン加速
	CreateSE("SE01","seメカ_バイク_エンジン加速");
	MusicStart("SE01",1000,700,0,1000,null,false);
	Wait(1000);

	FadeDelete("上背景", 1000, null, true);

//背景要確認（２箇所）[text0010]【優先度４】//β版（千代子
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　双六に追い立てられるように、アザナエルを取り戻した沙紅羅は、暴蛇羅号のエンジンをゆっくり加速させた。

{	St("C",700, @0,@0,"fu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200010skr">
（なあ……どうしてだよ……）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200020skr">
（これがアタシの……
　運命の出会いじゃなかったのかよ？）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200030skr">
（やり直せないことなんて……
　ないはずじゃなかったのかよ……）

{	St("C",700, @0,@0,"fu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200040skr">
（なのに……アタシ……）



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2341);}

	TextBoxDelete(150);
	DeleteAllSt(200,true);


//◆ＳＥ：爆発

//	OnBG(10,"bg0801300籠_正面_激流");
//	FadeBG(0,true);

	CreateSE("SE01","se戦闘_爆発03");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("絵ゆれ", 100, Center, Middle, "cg/bg/bg0801200籠_正面_ブラックライト.jpg");//背景要確認
	Shake("絵ゆれ", 300, 20, 50, 20, 0, 500, DxlAuto, true);
	Shake("絵ゆれ", 500, 30, 20, 10, 0, 500, Dxl3, true);
	Shake("絵ゆれ", 1000, 10, 15, , 0, 500, Axl3, true);

	Shake("絵ゆれ", 300, 20, 40, 20, 0, 500, DxlAuto, true);
	Shake("絵ゆれ", 1500, 30, 20, 0, 0, 1000, Dxl3, true);

	Shake("絵ゆれ", 300, 20, 50, 20, 0, 500, DxlAuto, true);
	Shake("絵ゆれ", 2000, 30, 20, 0, 0, 1000, Dxl3, true);

	Delete("絵ゆれ");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_shy");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200050skr">
「え――！？」

{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200060skr">
「ウソだろ？　双六さん――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	PrintGO("上背景", 5000);

	CreateTextureEX("絵背景101", 101, Center, Middle, "cg/bg/l/bg0801200籠_正面_ブラックライト_l.jpg");
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/l/bg0801300籠_正面_激流_l.jpg");
	SetBlur("絵背景100", true, 3, 500, 50, false);
	CreateTextureEX("絵背景10", 12, Center, Middle, "cg/bg/bg0801300籠_正面_激流.jpg");
	CreateTextureEX("絵背景1", 11, Center, Middle, "cg/bg/bg0801300籠_正面_激流.jpg");
	SetBlur("絵背景10", true, 3, 500, 50, false);

	Fade("絵背景101", 0, 1000, null, true);
	Fade("絵背景100", 0, 1000, null, true);

	FadeDelete("上背景", 300, null, true);

	CreateSE("SE02","se環境_地鳴り01_l");
	MusicStart("SE02",3000,500,0,1000,null,true);

	Shake("絵背景101", 1000, 0, 1, 1, 2, 1000, null, true);
	Shake("絵背景101", 2000, 1, 2, 3, 5, 1000, null, true);
	Shake("絵背景101", 3000, 3, 5, 4, 8, 500, null, false);

	Wait(2000);

//◆演出指定：大量の水が流れてくる
	OnBG(10,"bg0801300籠_正面_激流");
	FadeBG(0,true);

	CreateSE("SE01","se戦闘_爆破水しぶき");
	SetVolume("SE02", 200, 0, null);
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("絵背景101", 500, null, false);
	Zoom("絵背景100", 2000, 2000, 2000, null, false);
	Move("絵背景100", 1000, @0, 0, Dxl1, false);

	Wait(500);

	Fade("絵背景1", 0, 1000, null, true);
	Fade("絵背景10", 0, 1000, null, true);

	Zoom("絵背景10", 1500, 2000, 2000, null, false);
	FadeDelete("絵背景10", 1000, Dxl1, false);
	FadeDelete("絵背景100", 500, null, true);

	Shake_Loop_shima("@絵背景1","絵シェイク");

	CreateSE("SE10","se環境_水流_l");
	MusicStart("SE10",1000,500,0,1000,null,true);




//演出指定：大量の水が流れてくる[text0025]～【優先度４】//β版（千代子
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200070skr">
（水――！？　川と繋がったのか？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200080skr">
（なんで……なんでこんなことに？）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200090skr">
（もしかして双六さん、最初からそのつもりで……？）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200100skr">
（もう、希望が絶たれたから――？　そんな！）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200110skr">
「双六さん！　双六さああああ――――んッ！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200120skr">
「なんで――なんでだよぉッ！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200130skr">
「なんで、そんな――
　ひとりで、諦めちまうんだよぉ――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	SetVolumeEX("SE10", 1000, 300, null);


	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateSE("SE11_01","se環境_水流_l");
	CreateSE("SE11_02","se環境_水流_l");
	CreateSE("SE11_03","se環境_水流_l");
	SoundEffect("SE11_02","SEWERPIPE");
	SoundEffect("SE11_03","UNDERWATER");
	CreateSE("SE12_01","seメカ_バイク_走行_l");
	CreateSE("SE12_02","seメカ_バイク_走行_l");
	SoundEffect("SE12_02","SEWERPIPE");


	Delete("絵背景*");
	Delete("@絵シェイク");

	OnBG(100,"bg0701600地下_通路_バックギャモン");
	FadeBG(0,true);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg0701600地下_通路_バックギャモン.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	SetVolumeEX("SE10", 1000, 0, null);
	MusicStart("SE11_01",1000,400,0,1000,null,true);
	MusicStart("SE11_02",1000,400,0,1000,null,true);
	MusicStart("SE11_03",1000,1,0,1000,null,true);
	MusicStart("SE12_01",1000,300,0,1000,null,true);
	MusicStart("SE12_02",1000,300,0,1000,null,true);

	Shake_Loop_shima("@絵背景100","絵シェイク");

	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200140skr">
「く……くそっ！　くそっ！　くそ――」


{	St("C",700, @0,@0,"fu沙紅羅_後ろ向き_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200150skr">
（どっちだよ？　どっちに行けばいいんだよッ！！）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200160skr">
（道が、どっちかわかんねぇ！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200170skr">
（出口はどっちかわかんないし――
　水はどんどんたまってくるし――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	ClockPass(2342);}

//◆演出指定：エンスト

	DeleteAllSt(200,true);

	SetVolume("SE12*", 500, 0, null);
	CreateSE("SE01","seメカ_バイク_エンスト");
	MusicStart("SE01",0,700,0,1000,null,false);

//演出指定：エンスト[text0051]～【優先度４】//β版（千代子
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200180skr">
「な――！？」

{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200190skr">
「暴蛇羅号ッ！！　おいコラッ！！」

{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200200skr">
「止まんな！　動け！　動けってば！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200210skr">
「クソッ！　こんなところで――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//◆演出指定：天井が抜けて大量の水が流入


	SetVolumeEX("SE11_01", 1000, 0, null);
	SetVolumeEX("SE11_02", 500, 0, null);
	SetVolumeEX("SE11_03", 1000, 1000, null);

	CreateSE("SE01_01","se環境_水に落ちる");
	CreateSE("SE01_02","se環境_水に落ちる");
	SoundEffect("SE01_02","UNDERWATER");
	MusicStart("SE01_01",0,700,0,1000,null,false);
	MusicStart("SE01_02",500,700,0,1000,null,false);

	PrintGO("上背景", 5000);
	FadeDelete("上背景", 500, null, true);


//演出指定：天井が抜けて大量の水が流入[text0060]～【優先度４】//β版（千代子
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]

//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200220skr">
「がぁっ！！　たすけ――うぶっ！」

//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200230skr">
「あぷっ、うぶ……ぶくぶくぶく……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：水中

	PrintGO("上背景", 5000);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ef/ef水中絵a.jpg");

	CreateTextureSPadd("絵背景101", 110, 260, -65, "cg/ef/ef水中絵a_x02.jpg");
	Request("絵背景101", Smoothing);

	Fade("絵背景101", 0, 1000, null, true);
	DrawEffect("絵背景101", 500, "Ripple", 0, 700, null);
	Zoom("絵背景101", 0, 4000, 5000, null, true);
	Rotate("絵背景101", 0, -75, @0, @0, null,true);
	DrawTransition("絵背景101", 100, 0, 200, 700, null, "cg/data/slide_02_00_0.png", true);

	CreateColorEX("フラッシュ黒", 2000, "Black");

	CreateTextureEXmul("絵背景200", 100, Center, -200, "cg/img/img金閣寺_煽り.png");

	Rotate("絵背景200", 0, @0, @0, 180, null,true);
	Zoom("絵背景200", 0, 500, 500, null, true);
	SetShade("絵背景200", HEAVY);


	SetVolume("@SE11_03", 10000, 0, null);
	CreateSE("SE01","se環境_水中_l");
	MusicStart("SE01",2000,700,0,1000,null,true);

	FadeDelete("上背景", 1000, null, true);

//演出指定：水中[text0065]【優先度４】//β版（千代子
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200240skr">
（くそっ！　アタシ……泳げねぇんだよ……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200250skr">
（こんなところで……こんな……ところ……で……）

{	SetVolumeEX("SE01", 10000, 500, null);
	Fade("フラッシュ黒",2000,300,null,false);
	DrawTransition("フラッシュ黒", 200, 0, 300, 400, null, "cg/data/circle_13_00_1.png", true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200260skr">
（ああ……だめだ……足が、冷たく……）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200270skr">
（アタシ……ここで、死ぬのかな？）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200280skr">
（地下の水の中で……ずっと……）

{	SetVolumeEX("SE01", 10000, 0, null);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200290skr">
（ああ……そうだ……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2343);}


//	TextBoxDelete(150);
	Fade("フラッシュ黒",3000,700,null,false);
	DrawTransition("フラッシュ黒", 200, 300, 500, 400, null, "cg/data/circle_13_00_1.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200300skr">
（修学旅行で、ケンカして……）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200310skr">
（池の中に突き飛ばされて……）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200320skr">
（アタシ、泳げなくて死にかけたあの時は……）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200330skr">
（タカが、助けてくれたんだった）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200340skr">
（タカ、ごめん）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200350skr">
（アタシも今、アンタの所に――）

{	Fade("絵背景200", 1000, 300, null, false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200360skr">
（え？）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200370skr">
（なんか……水の向こうから……）

//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200380skr">
（アタシを、助けに来てくれてる……？）

//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200390skr">
（と、とにかく掴まって――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

	TextBoxDelete(150);

	CreateColorEXadd("フラッシュ白", 4000, "WHITE");
	Fade("フラッシュ白",0,1000,null,false);
	DrawTransition("フラッシュ白", 500, 0, 1000, 100, Dxl1, "cg/data/circle_01_00_0.png", true);

//◆演出指定：水面に出る

	PrintGO("上背景", 5000);

	Delete("フラッシュ白");
	Delete("フラッシュ黒");

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ef/ef水面絵.jpg");
	CreateTextureSP("絵背景101", 101, Center, Middle, "cg/ef/ef水面絵.jpg");

	CreateSE("SE01","se環境_水に落ちる");
	MusicStart("SE01",0,500,0,1000,null,false);

	CreateSE("SE10_01","se環境_水_l");
	CreateSE("SE10_02","se環境_水_l");
	SoundEffect("SE10_02","SEWERPIPE");

	MusicStart("SE10_01",0,600,0,1000,null,true);
	MusicStart("SE10_02",0,600,0,1000,null,true);

	Shake("絵背景101", 500, 0, 10, 0, 0, 1000, null, false);

	FadeDelete("上背景", 300, null, true);



//演出指定：水面に出る[text0100]【優先度４】//β版（千代子
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200400skr">
「ぷはあっ！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200410skr">
「は……はは、ははははは……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//あきゅん「素材：img金閣寺水面に揺れる」

	PrintGO("上背景", 5000);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/img/img金閣寺水面に揺れる.jpg");

	FadeDelete("上背景", 300, null, true);

//「素材：img金閣寺水面に揺れる」[text0105]【優先度４】//β版（千代子
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0105]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200420skr">
「金閣寺！　金閣寺じゃねぇかッ！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200430skr">
「そうだ、コイツ……
　発泡スチロールで創ったんだった！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2344);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200440skr">
「タカ。
　助けてくれて、ありがとな！」

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/400200450ujr">
「わうわうわうっ！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200460skr">
「え……この声！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//マスク準備
	CreateTextureEX("絵マスク枠", 6010, 300, Middle, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureEX("絵マスク/絵演背景", 1520, 300, Middle, "cg/ef/ef水面絵.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buユージローb_通常_pride.png");
	Request("絵マスク/絵演立絵", Smoothing);

	CreateTextureEX("絵マスク/絵演立絵2", 1540, 350, 80, "cg/bu/buユージローb_通常_hard.png");
	Request("絵マスク/絵演立絵", Smoothing);

//動作準備
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク枠", 0, 1024, 200, null, true);
	Move("絵マスク/絵演立絵", 0, 512, 200, null, true);
	Fade("絵マスク枠", 0, 1000, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);

	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Move("絵マスク枠", 200, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, 350, 80, Dxl1, true);


//ユージロー登場[text0115]【優先度３】//β版（千代子
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0115]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/400200470ujr">
「わうわうわうわうっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200480skr">
「モジャ犬！？」

{	Fade("絵マスク/絵演立絵2", 200, 1000, null, true);
	Fade("絵マスク/絵演立絵", 0, 0, null, false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/400200490ujr">
「わうっ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200500skr">
「あっち……あっちだな！」

{	Fade("絵マスク/絵演立絵", 200, 1000, null, true);
	Fade("絵マスク/絵演立絵2", 0, 0, null, false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/400200510ujr">
「わうっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolume("SE*", 1000, 0, null);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


	Delete("絵背景");
	Delete("絵マスク/絵*");
	Delete("絵マスク");
	Delete("絵マスク枠");

//◆場所：地下_地下鉄
	OnBG(10,"bg0703100地下_地下鉄_通常");
	FadeBG(0,true);


{	ClockPass(2345);}

	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);


	SoundPlay("@xbgm25",1000,450,true);

{	St("MR",700, @0,@0,"buユージローb_通常_normal");
	Shake("@StNameMR/MR*", 300, 0, 5, 0, 0, 500, Axl3, false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/400200520ujr">
「わうわうわう！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200530skr">
「ふぅ、助かった……」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200540skr">
「迎えに来てくれて、ありがとな」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"buユージローb_通常_pride");
	FadeSt("MR",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/400200550ujr">
「わうっ！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200560skr">
「ここまでは、浸水もしてない……か」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("ML",700, @0,@0,"bu沙紅羅_後ろ向き_shy");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200570skr">
「双六さん……」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"buユージローb_通常_hard");
	FadeSt("MR",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/400200580ujr">
「わうわう！　わうわう！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200590skr">
「あ……ああ、そうだな」

//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200600skr">
「時間がねぇし、道案内頼むぜ！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"buユージローb_通常_pride");
	Shake("@StNameMR/MR*", 300, 0, 30, 0, 0, 300, Axl3, false);
	FadeSt("MR",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/400200610ujr">
「わうっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


{	ClockPass(2346);}

//◆場所：バックギャモン_店内
	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);


{	St("C",700, @+100,@0,"bu沙紅羅_通常_angry");
	CreateSE("SE01","se動作_一歩");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200620skr">
「到着――」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200630skr">
「アザナエルは取り戻したけど――クソッ！
　時間がねぇな……」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200640skr">
「こりゃ、タクシーでも借りるしかねぇか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);


	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

//◆場所：エレキセンター_廊下
	OnBG(10,"bg0901200エレキセンター_廊下_閉店");
	FadeBG(0,true);

{	ClockPass(2347);}

	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);

{	St("MR",700, @50,@0,"bu平次_通常_normal");
Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0155]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/400200650fjh">
「おう、金閣寺！　無事だったか！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200660skr">
「なんとかな。弟子と名探偵は？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_normal");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/400200670fjh">
「一足先に、半田明神に向かってる」

{	St("MR",700, @0,@0,"bu平次_通常_cool");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/400200680fjh">
「途中でコイツにちょっと、キモを冷やされたけどな！」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"buジャブル_通常_pinch");
	Shake("@StNameC/C*", 500, 2, 0, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400200690jbr">
「いたいいたい！　暴力反対デス！　黙秘権行使デス！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200700skr">
「インド人？　なんかあったのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_normal");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/400200710fjh">
「ま、それは後でな。
　ところで、アザナエルは？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200720skr">
「ああ。ちゃんとここにあるよ」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_smile");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/400200730fjh">
「そうか。
　んじゃ悪いけどミヅハの所まで、よろしくな！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/000201060skr">
「おうよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"buユージローb_通常_pride");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/400200750ujr">
「わうわうわうっ！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu沙紅羅_後ろ向き_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200760skr">
「モジャ犬も、ありがとなッ！！」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"buジャブル_通常_cool");
	FadeSt("C",200,true);}
//◆音声指示：小声
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400200770jbr">
「ふふふ……計算通り……」

{	St("C",700, @0,@0,"buジャブル_通常_pride");
	FadeSt("C",200,true);}
//◆音声指示：小声
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400200780jbr">
「後は、天に運を任せるだけ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteAllSt(200,false);}
{	St("MR",700, @200,@0,"bu平次_通常_angry");
Move("@StNameMR/MR*", 200, @-200, @0, Dxl1, false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/400200790fjh">
「コラ！　なんか言ったか！？」

{	DeleteAllSt(200,false);}

{	St("C",700, @0,@0,"buジャブル_通常_pinch");
	Shake("@StNameC/C*", 300, 0, 3, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400200800jbr">
「言ってないデス！
　いでで、いでで、暴力反対デスネ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);


	SetVolume("@xbgm*", 1000, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

{	ClockPass(2348);}

//◆場所：秋葉原_ガード下_雪

	OnBG(10,"bg0102400秋葉原_ガード下_雪");
	FadeBG(0,true);

//	SoundPlay("@xbgm07",1500,450,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0195]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200810skr">
「…………」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200820skr">
「やべぇ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200830skr">
「タクシーじゃ、間に合わねぇや」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200840skr">
「暴蛇羅号があれば間に合うんだろうけど、あれはおじゃんだし……」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200850skr">
「ああ、くそっ！　もう時間が――」

{	DeleteAllSt(200,true);}
//【警官Ａ】
<voice name="警官Ａ" class="その他男声" src="voice/23/400200860e16">
「なにか、困ってるのか？」

{	St("ML",700, @100,@0,"bu沙紅羅_通常_angry");
Move("@StNameML/ML*", 200, @-100, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200870skr">
「ゲ！　ブラパン！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	DeleteAllSt(200,true);}
//【警官Ａ】
<voice name="警官Ａ" class="その他男声" src="voice/23/400200880e16">
「ああ、逃げなくていい。
　平次殿の知り合いなら、協力させてもらうぜ」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200890skr">
「あ……そ、そうなのか？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200900skr">
「んじゃ悪いけど、白バイ貸してくれねーか？
　足がなくて……」

{	DeleteAllSt(200,true);}
//【警官Ａ】
<voice name="警官Ａ" class="その他男声" src="voice/23/400200910e16">
「それは駄目だ。
　さすがに警官なんでな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200920skr">
「……やっぱり、そうだよな」

{	DeleteAllSt(200,true);}
//【警官Ａ】
<voice name="警官Ａ" class="その他男声" src="voice/23/400200930e16">
「けど、オレの私物なら貸してやってもいいぞ」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200940skr">
「私物？」

{	DeleteAllSt(200,true);}

//【警官Ａ】
<voice name="警官Ａ" class="その他男声" src="voice/23/400200950e16">
「ほらよッ！」


　放り投げられた鍵を、沙紅羅はがっちり受け取った。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【警官Ａ】
<voice name="警官Ａ" class="その他男声" src="voice/23/400200960e16">
「すぐそこに停めてある。
　一番、目立つヤツだ」

//【警官Ａ】
<voice name="警官Ａ" class="その他男声" src="voice/23/400200970e16">
「オレの愛車だからな。大事に使うんだぞ」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200980skr">
「お……おう！　サンキュー！」





</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

//◆場所：秋葉原駅_正面_雪

	OnBG(10,"bg0201300秋葉原駅_正面_雪");
	FadeBG(0,true);


{	ClockPass(2349);}

	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);

{	St("C",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0235]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400200990skr">
「助かった――これでなんとか、間に合う」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400201000skr">
「問題は、そのバイクがどれかってことだが……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400201010skr">
「一番目立つ奴って言ってたよな？」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400201020skr">
「一番目立つやつって……」

{	SetVolume("@xbgm*", 1000, 0, null);
	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400201030skr">
「あ？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/400201040skr">
「もしかして……これかッ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	PrintGO("上背景", 20010);
	CreateColorSP("絵色黒", 20000, "#000000");
	FadeDelete("上背景", 1000, null, true);

	EndScene();
}
