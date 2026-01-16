
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene baa2357似鳥_ノーコ.nss_MAIN
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
	if(#RouteName=="baa"){
		$GameName = "baa2358似鳥_ノーコ.nss";//★エンディング中（baa）
	}else if(#RouteName=="bab"){
		$GameName="bab2358似鳥_ノーコ.nss";//★エンディング中（bab）
	}
}

scene baa2357似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="270">
////////////header////////////
//file name "baa2357似鳥_ノーコ.nss"
//title ""
//previous "baa2356似鳥_ノーコ.nss"
//previous "bab2354千秋_恵那.nss"

////////////footer////////////
//next （"flkagome2b" = false） "bab2358似鳥_ノーコ.nss"
//next "baa2358似鳥_ノーコ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	Request("@SE*", UnLock);
	SetVolumeEX("@SE*", 3000, 0, null);

//◆場所：秋葉原_ガード下_破壊


{	ClockPass(2358);}

	//OnBG(10,"bg0102300秋葉原_ガード下_破壊");
	//FadeBG(0,true);
	//FadeDelete("上背景", 1000, null, true);
	//Wait(1000);


//◆場所：あにのあな_屋上
	OnBG(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);

//	CreateMovieEX("ムービー１", 5000, Center, Middle, true, true, "dx/mvk100.ngs");
//	Request("ムービー１", AddRender);
//	Zoom("ムービー１", 0, 3000, 3000, null, true);
//	Fade("ムービー１", 1500, 1000, null, false);

//2重再生バグ回避の保険
	SetVolumeEX("@xbgm*", 1000, 0, null);

	FadeDelete("上背景", 1000, null, true);


	CreateSE("SE77","se環境_風_l");
	MusicStart("SE77",3000,700,0,1000,null,true);

//あきゅん「修正指示：冒頭から廃墟を見渡すシーンに」
//あきゅん「修正指示：立ち絵が中央寄りなのでMLMRにバラケさせて下さい」
//inc久保田　修正しました。

	WaitKey(500);

//	DeleteSt("ML", 1000,false);

	CreateWindowEX("左にとり", 100, 0, 242, 576, false);
//	Zoom("左にとり", 0, 0, 1000, null, true);
	CreateTextureEX("左にとり/背景", 200, Center, Middle, "cg/bg/bg0303100あにのあな_屋上_通常.jpg");

	CreateWindowEX("右ノーコ", 680, 0, 242, 576, false);
//	Zoom("右ノーコ", 0, 0, 1000, null, true);
	CreateTextureEX("右ノーコ/背景", 200, Center, Middle, "cg/bg/bg0303100あにのあな_屋上_通常.jpg");

//	TextBoxDelete(150);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg0108400秋葉原_俯瞰_崩壊.jpg");
	Zoom("絵背景100", 0, 1500, 1500, null, true);
	Zoom("絵背景100", 50000, 1000, 1000, null, false);
	Fade("絵背景100", 1000, 1000, null, false);

	CreateTextureEX("絵背景50", 90, Center, Middle, "cg/bg/bg0108400秋葉原_俯瞰_崩壊.jpg");
	CreateTextureEX("絵背景100", 100, @-100, Middle, "cg/bg/bg0108400秋葉原_俯瞰_崩壊.jpg");
	Zoom("絵背景100", 0, 1500, 1500, null, true);
//	Zoom("絵背景100", 50000, 1000, 1000, null, false);
	Move("絵背景100", 50000, 200, 0, null, false);
	Fade("絵背景100", 1000, 1000, null, false);

//	CreateTextureEX("左にとり/にとり", 700, -971, -273, "cg/bu/bu似鳥堕皇_通常_sigh.png");
//	SetAlias("左にとり/にとり","左にとり/にとり");
	Fade("左にとり/背景", 1000, 1000, null, false);
//	Fade("左にとり/にとり", 1200, 1000, null, false);
	Fade("右ノーコ/背景", 1000, 1000, null, false);


//	SetAlias("右ノーコ/ノーコ","右ノーコ/ノーコ");

	CreateAXLWindowEX("絵演窓", "X", 2000, 102, 242, false);
	CreateAXLWindowEX("絵演窓２", "X", 2000, 682, 242, false);

	WindowAXLZoom("絵演窓２", "X", 0, 0, null, true);
	WindowAXLZoom("絵演窓", "X", 0, 0, null, true);
	CreateTextureSP("絵演窓/Ｗニトリ", 1050, -969, -310, "cg/bu/bu似鳥堕皇_通常_sigh.png");
	CreateTextureSP("絵演窓２/Ｗノーコ", 1050, 366, 4, "cg/bu/buノーコa_幽霊_normal.png");
	Wait(32);

	WindowAXLZoom("絵演窓", "X", 500, 1000, null, false);
	WindowAXLZoom("絵演窓２", "X", 500, 1000, null, true);

	WaitKey(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　似鳥はぼんやりと、眼前の廃墟を見下ろした。

{	CreateTextureSP("絵演窓/ＷニトリＡ", 1049, -969, -310, "cg/bu/bu似鳥堕皇_通常_normal.png");
	Fade("絵演窓/Ｗニトリ", 200, 0, null, false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/570100010nki">
「――幻みたいに、消えちまったな」

{	CreateTextureSP("絵演窓２/ＷノーコＡ", 1049, 366, 4, "cg/bu/buノーコa_幽霊_think.png");
	Fade("絵演窓２/Ｗノーコ", 200, 0, null, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/570100020nko">
「かんしょうてき？」

{	CreateTextureSP("絵演窓/Ｗニトリ", 1048, -969, -310, "cg/bu/bu似鳥堕皇_通常_sigh.png");
	Fade("絵演窓/ＷニトリＡ", 200, 0, null, false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/570100030nki">
「改めて、考えてみたんだ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/570100040nki">
「オレがこの街に、何をもらったのか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//あきゅん「修正指示：窓枠の装飾の追加」
//あきゅん「修正指示：窓枠内の立ち絵の位置がずれているので修正」

//inc久保田　修正しました。

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/570100050nki">
「もしこの街がなかったら、オレはどうなってたのか」

{	CreateTextureSP("絵演窓２/Ｗノーコ", 1048, 366, 4, "cg/bu/buノーコa_幽霊_sad.png");
	Fade("絵演窓２/ＷノーコＡ", 200, 0, null, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/570100060nko">
「どうなってた？」

{	CreateTextureSP("絵演窓/ＷニトリＡ", 1047, -969, -310, "cg/bu/bu似鳥堕皇_通常_hard.png");
	Fade("絵演窓/Ｗニトリ", 200, 0, null, false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/570100070nki">
「わからない」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/570100080nki">
「逃げ場がなくなって、まともには生きられなかったかもしれないし――」

{	CreateTextureSP("絵演窓/Ｗニトリ", 1046, -969, -310, "cg/bu/bu似鳥堕皇_通常_smile.png");
	Fade("絵演窓/ＷニトリＡ", 200, 0, null, false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/570100090nki">
「開き直って戦って、まともな人間になってたかもしれないな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	Fade("絵背景100", 1000, 0, null, false);
	Fade("絵演窓２/Ｗノーコ", 1000, 0, null, false);
	Fade("右ノーコ/背景", 1000, 0, null, false);
	Fade("絵演窓/Ｗニトリ", 1000, 0, null, false);
	Fade("左にとり/背景", 1000, 0, null, false);

	FadeDelete("絵演窓*", 1000, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("MR",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/570100100nko">
「こうかいしてる？」

{	DeleteSt("MR", 200,false);
	St("ML",700, @0,@0,"bu似鳥堕皇_通常_sigh");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/570100110nki">
「まさか」

{	St("ML",700, @0,@0,"bu似鳥堕皇_通常_normal");
	FadeSt("ML",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/570100120nki">
「この街のおかげで、手に入れられたんだ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/570100130nki">
「この力も――」

{	St("ML",700, @0,@0,"bu似鳥堕皇_通常_smile");
	FadeSt("ML",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/570100140nki">
「おまえも」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	SetVolumeEX("SE*", 4000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"buノーコa_通常_shy");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/570100150nko">
「……うん」

{	SoundPlay("@xbgm09",0,450,true);
	St("MR",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("MR",200,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/570100160nko">
「ふっこうのためには、ちからがいる」

{	DeleteSt("MR", 200,false);
	St("ML",700, @0,@0,"bu似鳥堕皇_通常_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/570100170nki">
「私利私欲に目が眩んだ政治家」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/570100180nki">
「税金を泥棒して天下る官僚」

{	St("ML",700, @0,@0,"bu似鳥堕皇_通常_angry");
	FadeSt("ML",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/570100190nki">
「偏った情報を流し延命処置をはかるマスコミ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("ML",700, @0,@0,"bu似鳥堕皇_通常_pinch");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/570100200nki">
「流行に飛びつき自らを省みない大衆――」

{	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/570100210nko">
「よのなかはくさってる」

{	St("MR",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("MR",200,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/570100220nko">
「だから、くさったものをよりわけなければ」

{	St("MR",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("MR",200,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/570100230nko">
「いつかぜんたいが、かれてしまう」

{	DeleteSt("MR", 200,false);
	St("ML",700, @0,@0,"bu似鳥堕皇_通常_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/570100240nki">
「だが――正義に非道は下せない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2359);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/570100250nki">
「それができるのは、<RUBY text="カイザー・オブ・ダークネス">堕皇</RUBY>だけ」

{	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/570100260nko">
「にとり。いこう、しゅくせいのたびに」

{	St("MR",700, @0,@0,"buノーコa_通常_smile");
	FadeSt("MR",200,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/570100270nko">
「このせかいを、あなたのいろにそめるの」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	EndScene();
}
