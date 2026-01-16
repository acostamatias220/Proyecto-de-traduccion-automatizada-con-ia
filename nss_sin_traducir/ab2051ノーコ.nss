
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ab2051ノーコ.nss_MAIN
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
	$GameName = "ab2100ノーコ.nss";
//	$GameCircle=false;

//※↑ab2051ノーコ.nssの飛び方を参考に設定（mngw 10/14）


}

scene ab2051ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1410">
////////////header////////////
//file name "ab2051ノーコ.nss"
//title "ねんがんじょうじゅ"
//previous "ab2050似鳥_ノーコ.nss"

////////////footer////////////
//next "ノーコ" "ab2100ノーコ.nss"



////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：籠_正面_ブラックライト
	OnBG(10,"bg0801200籠_正面_ブラックライト");
	FadeBG(0,true);
	//PrintFadeNut("上背景２", 0, true);

	FadeDelete("上背景", 0, null, true);
{	ClockPass(2051);}

	//FadeDelete("上背景２", 0, null, true);

//◆演出指定：願いが叶う

	SoundPlay("@xbgm01_noint",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @0,@60,"bu村崎_通常_fear");
	Move("@StNameC/C*", 2000, @0, @-60, DxlAuto, false);
	FadeSt("C",1000,true);
	Wait(500);
	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab20/510100010msi">
「イデ……イデデデデ」


//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab20/510100020msi">
「クソッ！　銃は……銃はどこですッ！？」

{	DeleteAllSt(200,false);
	St("MR",700, @60,@0,"bu双六a_通常_normal");
	Move("@StNameMR/MR*", 200, @-60, @0, DxlAuto, false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab20/510100030ksr">
「いいぞ、村崎。
　もういい」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab20/510100040msi">
「もういいって――双六さん？
　それじゃもう、私はお払い箱――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab20/510100050ksr">
「そういうことだな」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu村崎_通常_pinch");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab20/510100060msi">
「そ、そんな！　大丈夫です！
　ホラ私！　まだ働けますし！」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab20/510100070msi">
「こうやって、ちゃんと鉄砲も――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab20/510100080ksr">
「チャンスは一度きりなんだよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab20/510100090msi">
「一度……きり……？」

{	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);
	}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab20/510100100msi">
「いやいやそんな！
　彼、灯り持ってませんでしたから、追いかければ――」


{	DeleteAllSt(200,false);}


　アザナエルを拾おうとして、村崎の動きが止まる。


{	St("R",700, @0,@0,"bu双六a_通常_pinch");
	FadeSt("R",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab20/510100110ksr">
「な……なんだぁ？」

{	St("L",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("L",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab20/510100120msi">
「あなた……どこから？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2052);}


////	TextBoxDelete(150);
	DeleteAllSt(200,true);

	SetVolumeEX("@xbgm*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("C",700, @-60,@0,"buノーコa_通常_normal");
	Move("@StNameC/C*", 1000, @60, @0, DxlAuto, false);
	FadeSt("C",1000,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100130nko">
「…………？」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100140nko">
「だれのこと？」


{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab20/510100150msi">
「誰って……あなたですよ！　あなた！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100160nko">
「わたし……？」

{	St("C",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100170nko">
「わたしが……みえる？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SoundPlay("@xbgm09",0,450,true);

	DeleteAllSt(200,true);
////	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]

{	St("L",700, @0,@0,"bu村崎_通常_normal");
	St("MR",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("L",200,true);
	Move("@StNameMR/MR*", 1000, @-100, @0, DxlAuto, false);
	FadeSt("MR",1000,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100180nko">
「――――」

{	St("L",600, @0,@0,"bu村崎_通常_fear");
	Shake("@StNameL/L*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("L",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab20/510100190msi">
「え？　ちょ！　触らないで下さい気持ち悪いっ！！」

{	Move("@StNameL/L*", 200, @-60, @0, DxlAuto, false);う
	DeleteSt("L", 200,true);
	St("MR",700, @-100,@0,"buノーコa_幽霊_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100200nko">
「さわれた……！」

{	St("MR",700, @-100,@0,"buノーコa_通常_shock");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100210nko">
「わたし……たにんが、さわれた……」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100220nko">
「わたし……げんじつのそんざいになった？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("MR",700, @0,@0,"bu双六a_通常_sad");
	St("L",700, @-60,@0,"bu村崎_通常_fear");
	Move("@StNameL/L*", 1000, @60, @0, DxlAuto, false);
	FadeSt("L",1000,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab20/510100230msi">
「だ……大丈夫ですかこの人？」


{	St("R",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("R",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab20/510100240ksr">
「なあ、おまえ……」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab20/510100250ksr">
「もしかして、似鳥の願いで生まれたのか？」


{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100260nko">
「にとりの……ねがい？」

{	St("C",700, @0,@0,"buノーコa_幽霊_think");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100270nko">
「あ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2053);}


////	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100280nko">
「アザナエルは、ほんとうにねがいを？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100290nko">
「にとりが……それを、ねがってくれた……？」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100300nko">
「にとりが……にとりが……」


{	St("C",700, @200,@0,"bu村崎_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab20/510100310msi">
「え……？　泣いてる？」

{	St("C",700, @200,@0,"bu村崎_通常_normal");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab20/510100320msi">
「いやいや、なにがなんだかサッパリですが。
　それはさておきアザナエルを……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	CreateSE("SE01","se戦闘_カッター_刃出す03遅いa");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100330nko">
「わたさない」

{	St("C",700, @200,@0,"bu村崎_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab20/510100340msi">
「え？　ちょっと、どいてください」

{	CreateSE("SE01","se戦闘_カッター_刃出す03遅いb");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100350nko">
「あなたがにとりにしたこと、わすれない」

{	St("C",700, @200,@0,"bu村崎_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab20/510100360msi">
「へ？」

{	CreateSE("SE01","se戦闘_カッター_刃出す03遅いa");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("ML",700, @0,@0,"buノーコa_幽霊_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100370nko">
「にとりをころそうとした」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("C",700, @200,@0,"bu村崎_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab20/510100380msi">
「いやあの、ちょっと――！」

{	CreateSE("SE01","se戦闘_カッター_刃出す03遅いb");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100390nko">
「こんどはわたしが」

{	St("C",700, @200,@0,"bu村崎_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab20/510100400msi">
「え？」


{	DeleteAllSt(200,true);}

//◆ＳＥ：キリキリキリ
{	CreateSE("SE01","se戦闘_カッター_刃出す02早いa");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("ML",700, @0,@0,"buノーコa_カッター_angry");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100410nko">
「ころす」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("C",700, @200,@0,"bu村崎_通常_cry");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 300, 10, 10, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab20/510100420msi">
「ぎゃああああああああああああッッ！！」


//◆ＳＥ：すかっ
{	SetVolumeEX("SE01", 0, 0, null);
	CreateSE("SE02","se戦闘_風切り音02");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 710, "#FFFFFF");
	DeleteSt("C", 0,true);
	Wait(50);
	Delete("絵色白");
}

{	St("ML",700, @0,@0,"buノーコa_カッター_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100430nko">
「ち――」

{	St("C",700, @200,@0,"bu村崎_通常_cry");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 500, 5, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab20/510100440msi">
「お、お助けえええええええ！！」

//◆ＳＥ：走り去る
{	SetVolumeEX("SE02", 1500, 0, null);
	CreateSE("SE03","se動作_走る01_l");
	MusicStart("SE03",0,700,0,1000,null,true);
	Move("@StNameC/C*", 300, @-400, @0, DxlAuto, false);
	DeleteAllSt(300, true);
}

{	St("C",700, @0,@0,"bu双六a_通常_shout");
	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab20/510100450ksr">
「え？　おい、コラ待てッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2054);}


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	SetVolumeEX("SE03", 1000, 350, null);
	St("C",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab20/510100460ksr">
「お前にはまだ用事が――」

{	SetVolumeEX("SE03", 4000, 0, null);
	St("C",700, @0,@0,"bu双六a_通常_pinch");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab20/510100470ksr">
「……ッキショー！　逃げられたじゃねぇか」

{	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab20/510100480ksr">
「まだやらせたいことがあったのに――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,false);

//◆ＳＥ：カッターナイフが伸びる
//	CreateSE("SE04","se戦闘_カッター_刃出す03遅いa");
//	MusicStart("SE04",0,700,0,1000,null,false);

	CreateSE("SE01","se戦闘_カッター_刃出す03遅いa");

	CreatePlainSP("絵板写", 5000);
	Wait(16);

	CreateColorSP("絵色黒", 2000, "#000000");
	CreateTextureSP("絵短刃下", 2100, Center, Middle, "cg/img/imgカッターバラd.png");
	CreateTextureSP("絵短刃上", 2120, Center, Middle, "cg/img/imgカッターバラb.png");

	CreateTextureSP("絵短刃", 2110, 541, -1066, "cg2/img/imgカッターバラc.png");
	SetBlur("絵短刃", true, 2, 500, 60, false);

	Wait(16);
	FadeDelete("絵板写", 500, null, true);



	MusicStart("SE01",0,700,0,1000,null,false);
	$SETime = RemainTime("SE01");
	Move("絵短刃", $SETime, 432, -1005, DxlAuto, true);

	WaitKey(2000);

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100490nko">
「――――」

{	DeleteAllSt(200,true);
//	St("C",700, @200,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);
}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab20/510100500ksr">
「ん？　なんだ？」

{
//	St("ML",700, @0,@0,"buノーコa_カッター_angry");
//	DeleteAllSt(200,false);
//	FadeSt("ML",200,true);
	CreateSE("SE01","se戦闘_カッター_刃出す01普通a");
	MusicStart("SE01",0,700,0,1000,null,false);
	$SETime = RemainTime("SE01");
	Move("絵短刃", $SETime, 540, -1064, DxlAuto, true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100510nko">
「あなたがげんきょう」

{
//	St("ML",700, @0,@0,"buノーコa_カッター_shock");
//	FadeSt("ML",200,true);
	CreateSE("SE01","se戦闘_カッター_刃出す01普通a");
	CreateSE("SE02","se戦闘_カッター_刃出す02早いa");
	CreateSE("SE03","se戦闘_カッター_刃出す02早いa");
	CreateSE("SE04","se戦闘_カッター_刃出す02早いa");
	MusicStart("SE01",0,700,0,1000,null,false);
	$SETime = RemainTime("SE01");
	Move("絵短刃", $SETime, -1102, -165, DxlAuto, false);
	Wait(100);
	MusicStart("SE02",0,700,0,500,null,false);
	Wait(100);
	MusicStart("SE03",0,700,0,1500,null,false);
	Wait(100);
	MusicStart("SE04",0,1200,0,1000,null,false);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100520nko">
「しね」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);
	DeleteAllSt(200,false);

//◆ＳＥ：ナイフふる

	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 4490, Center, Middle, "cg/ef/efカッター剣閃a.jpg");
	CreateTextureEX("絵背景200", 3100, -824, -576, "cg/ev/l/ev0000ノーコカッターc_l.jpg");
	CreateTextureEX("絵背景300", 3100, Center, Middle, "cg/ev/ev0000ノーコカッターc.jpg");
	Zoom("絵背景300", 0, 2000, 2000, null, true);
	SetBlur("絵背景300", true, 2, 500, 50, false);
	SetBlur("絵背景200", true, 1, 500, 20, false);


//◆ＳＥ：シュパーン！　どごーん！
	CreateSE("SE01","se戦闘_風切り音10");
	CreateSE("SE02","se戦闘_刃物02");

	Wait(16);
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵背景200", 300, 1000, null, false);
	BezierMove("絵背景200", 1500, (-824,-576){-1000,-100}{-1000,-100}(-1024,0){0,0}{0,0}(0,-288), Axl2, false);

	Wait(1300);
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("絵背景300", 200, 1000, null, false);
	Zoom("絵背景300", 300, 1000, 1000, Dxl2, true);

	Fade("絵背景100", 0, 1000, null, true);

	Delete("絵短刃*");
	Delete("絵色黒");

	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Wait(200);
	Delete("絵背景200");
	Delete("絵背景300");

	DeleteSt("MR", 0, true);


	St("MR",700, @0,@0,"bu双六a_通常_shock");
	Shake("@StNameMR/MR*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("MR",0,true);

	OnBG(10,"bg0801200籠_正面_ブラックライト");
	FadeBG(0,true);

	FadeDelete("絵背景100", 500, null, true);

	Shake("@StNameMR/MR*", 300, 10, 10, 0, 0, 500, null, false);

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130a]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab20/510100530ksr">
「うぉっ！　ちょ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

	CreateSE("SE11a","se戦闘_刃物02");
	CreateTextureEXover("絵演剣閃", 2000, Center, Middle, "cg/ef/efカッター剣閃b.jpg");

	CreateSE("SE11b","se戦闘_刃物01");
	CreateTextureEXover("絵演剣閃弐", 2000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");

	Wait(16);

	MusicStart("SE11a",0,700,0,1000,null,false);
	Fade("絵演剣閃", 0, 1000, null, true);
	FadeDelete("絵演剣閃", 200, null, false);
	Wait(150);
	MusicStart("SE11b",0,700,0,1000,null,false);
	Fade("絵演剣閃弐", 0, 1000, null, true);
	FadeDelete("絵演剣閃弐", 200, null, false);

{	St("ML",700, @0,@0,"buノーコa_カッター_rage");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130b]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100540nko">
「しね、しね、しね、しね」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

	CreateSE("SE11a","se戦闘_刃物02");
	CreateTextureEXover("絵演剣閃", 2000, Center, Middle, "cg/ef/efカッター剣閃b.jpg");

	CreateSE("SE11b","se戦闘_刃物01");
	CreateTextureEXover("絵演剣閃弐", 2000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");

	Wait(16);

	MusicStart("SE11a",0,700,0,1000,null,false);
	Fade("絵演剣閃", 0, 1000, null, true);
	FadeDelete("絵演剣閃", 200, null, false);
	Wait(150);
	MusicStart("SE11b",0,700,0,1000,null,false);
	Fade("絵演剣閃弐", 0, 1000, null, true);
	FadeDelete("絵演剣閃弐", 200, null, false);

	St("MR",700, @0,@0,"bu双六a_通常_pinch");
	Shake("@StNameMR/MR*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130c]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab20/510100550ksr">
「バカ！　おい！　いでッ！　かすった！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE11a","se戦闘_刃物02");
	MusicStart("SE11a",0,700,0,1000,null,false);
	CreateTextureSPover("絵演剣閃", 2000, Center, Middle, "cg/ef/efカッター剣閃b.jpg");
	FadeDelete("絵演剣閃", 200, null, false);

{	St("MR",700, @0,@0,"bu双六a_通常_shout");
	Move("@StNameMR/MR*", 200, @-60, @0, Dxl3, false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab20/510100560ksr">
「のわっ！」


{	Move("@StNameMR/MR*", 200, @0, @100, DxlAuto, false);
	DeleteAllSt(200,false);}


//◆ＳＥ：転倒
{
	CreateSE("SE06","se人体_倒れる01");
	MusicStart("SE06",0,700,0,1000,null,false);
}

{	St("ML",700, @0,@0,"buノーコa_カッター_rage");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100570nko">
「とどめ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2055);}


	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 300, 0, null);

	SceneOut(2000, 500, spiral_01_00_0);

	PrintBG("上背景", 30000);

	ClockDelete(0,true);

	FadeDelete("上背景", 0, null, true);
	DeleteSt("C", 0,true);	



//◆演出指示：回想開始

{	St("C",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/400100710wfu">
「気に食わないからって、ひとを傷つけたりしない」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



//◆演出指定：回想終了
	DeleteAllSt(200,true);
	SceneOut(20000, 500, spiral_01_00_0);

{	ClockPass(2055);}

	OnBG(10,"bg0801200籠_正面_ブラックライト");
	FadeBG(0,true);
	SceneIn(500, spiral_01_00_0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]

{	St("ML",700, @0,@0,"buノーコa_カッター_pinch");
	Shake("@StNameML/ML*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100590nko">
「――――っ！」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_pinch");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab20/510100600ksr">
「待った待った！　わかった！　わかったから！」

{	St("MR",700, @0,@0,"bu双六a_通常_shock");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab20/510100610ksr">
「チャラだ！　借金、チャラにしてやる！」

{	St("ML",700, @0,@0,"buノーコa_カッター_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100620nko">
「にとりはカゴメアソビをした」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100630nko">
「すでにしゃっきんは――」

{	St("MR",700, @0,@0,"bu双六a_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab20/510100640ksr">
「してねーよ！　あいつ、オレに向かって撃ったし！」


{	St("ML",700, @0,@0,"buノーコa_カッター_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100650nko">
「…………」


{	St("MR",700, @0,@0,"bu双六a_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab20/510100660ksr">
「人を銃で狙っておいて、それでも許そうって言うんだ。
　これ以上の条件あるか？」


{	St("ML",700, @0,@0,"buノーコa_カッター_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100670nko">
「にどと、とりたてない？」

{	St("MR",700, @0,@0,"bu双六a_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab20/510100680ksr">
「取り立てないどころか、問題があったら相談に――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	TextBoxDelete(0);

//◆ＳＥ：ナイフ空振り

	CreateSE("SE07","se戦闘_風切り音04");
	MusicStart("SE07",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 710, "#FFFFFF");
	DeleteAllSt(0,true);
	Wait(50);
	Delete("絵色白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]


{	St("ML",700, @0,@0,"buノーコa_カッター_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100690nko">
「いらない」

{	St("ML",700, @0,@0,"buノーコa_カッター_shock");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100700nko">
「にどと、かおもみせないで」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("MR",700, @0,@0,"bu双六a_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab20/510100710ksr">
「オーケー」

{	St("ML",700, @0,@0,"buノーコa_カッター_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100720nko">
「やくそく？」

{	St("MR",700, @0,@0,"bu双六a_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab20/510100730ksr">
「約束する」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab20/510100740ksr">
「今度お前たちに会っても、オレは見ず知らずの人間として振る舞う」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100750nko">
「――――ん」


{	Move("@StNameML/ML*", 500, @-60, @0, DxlAuto, false);
	DeleteSt("ML", 500,true);}

　満足げに頷くと、ノーコは地下道を歩き出した。


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	
	
	SceneOut(5000, 1000, "blind_01_00_0");



//◆ＳＥ：足音
{
	CreateSE("SE08","se動作_歩く02_l");
	MusicStart("SE08",0,700,0,1000,null,true);


{	ClockPass(2056);}



//◆場所：地下_地下鉄
	OnBG(10,"bg0703100地下_地下鉄_通常");
	FadeBG(0,true);
	DeleteSt("C", 0,true);
	WaitKey(1000);

	SoundPlay("@xbgm25",0,450,true);

	SceneIn(1000, "blind_01_00_0");
	WaitKey(1000);

}

{	SetVolumeEX("SE08", 500, 0, null);
	St("C",700, @60,@0,"buノーコa_通常_shock");
	Move("@StNameC/C*", 1000, @-60, @0, DxlAuto, false);
	FadeSt("C",1000,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100760nko">
「とと！」


{	Move("@StNameC/C*", 200, @0, @60, DxlAuto, false);
	DeleteAllSt(200,false);
}

//◆ＳＥ：ドタッ！　たおれる
{
	CreateSE("SE09","se人体_倒れる04");
	MusicStart("SE09",0,700,0,1000,null,false);
	Shake("@OnBG*", 300, 5, 10, 0, 0, 500, null, false);
	WaitKey(1000);
	}

{	St("C",700, @0,@60,"buノーコa_幽霊_normal");
	Move("@StNameC/C*", 1000, @0, @-60, DxlAuto, false);
	FadeSt("C",1000,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100770nko">
「…………」

{	St("C",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100780nko">
「あしもときけん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100790nko">
「もうそうのときとはちがう」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100800nko">
「うきあしだたない」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100810nko">
「きをつけてあるく」


{	St("C",700, @0,@0,"buノーコa_通常_smile");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100820nko">
「…………ふふ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100830nko">
「あしおと」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("C",700, @0,@0,"buノーコa_幽霊_smile");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100840nko">
「きこえる」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100850nko">
「げんじつ」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100860nko">
「もう、もうそうじゃない」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100870nko">
「わたしは、うまれかわった」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100880nko">
「うれしい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	St("C",700, @0,@0,"buノーコa_通常_smile");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100890nko">
「なぜなら……」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100900nko">
「わたしはのぞまれた」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100910nko">
「かごめあそびでにとりがうたれた」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100920nko">
「そのときのねがいがわたしをうんだ」

{	St("C",700, @0,@0,"buノーコa_幽霊_smile");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100930nko">
「これは、にとりののぞみ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100940nko">
「にとりにのぞまれて、わたしはここにいる」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100950nko">
「ふふ……ふふふ……」

{	St("C",700, @0,@0,"buノーコa_通常_shock");
	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100960nko">
「とと！」


{	Move("@StNameC/C*", 200, @0, @60, DxlAuto, false);
	DeleteAllSt(200,false);}

//◆ＳＥ：ドタッ！　たおれる
{
	CreateSE("SE10","se人体_倒れる04");
	MusicStart("SE10",0,700,0,1000,null,false);
	Shake("@OnBG*", 300, 5, 10, 0, 0, 500, null, false);
	WaitKey(1000);
	}

{	St("C",700, @0,@60,"buノーコa_通常_sad");
	Move("@StNameC/C*", 1000, @0, @-60, DxlAuto, false);
	FadeSt("C",1000,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100970nko">
「…………」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100980nko">
「うきあしだたない」

{	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510100990nko">
「はやく、にとりのところへ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	Move("@StNameC/C*", 1000, @-60, @0, DxlAuto, false);
	DeleteSt("C", 1000,true);


{	ClockPass(2057);}


//◆場所：地下_通路_スパコン館
	SceneOut(5000, 1000, "blind_01_00_0");
	DeleteAllSt(200,false);
	
	OnBG(10,"bg0701500地下_通路_スパコン館");
	FadeBG(0,true);
	SceneIn(1000, "blind_01_00_0");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]


{	St("C",700, @60,@0,"buノーコa_幽霊_normal");
	Move("@StNameC/C*", 1000, @-60, @0, DxlAuto, false);
	FadeSt("C",1000,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101000nko">
「わたしは、かわった」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101010nko">
「まえは、もうそうのそんざいだから、だめだった」


{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101020nko">
「でも、いまはちがう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101030nko">
「にとりが、わたしにそれをのぞんだ」

{	St("C",700, @0,@0,"buノーコa_通常_smile");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101040nko">
「そうしそうあい」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101050nko">
「もう、なやむことなんてない」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101060nko">
「いっしょにくらす」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	St("C",700, @0,@0,"buノーコa_幽霊_smile");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101070nko">
「いっしょにくらして……りょうりもする」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101080nko">
「にとりはてりょうりすき」

{	St("C",700, @0,@0,"buノーコa_通常_smile");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101090nko">
「『エロゲー』をやって、そのしーんはいつもにこにこ」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101100nko">
「カレーをつくる」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101110nko">
「つくったことはない」


{	St("C",700, @0,@0,"buノーコa_幽霊_think");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101120nko">
「ゆびをきるかも」

{	St("C",700, @0,@0,"buノーコa_幽霊_smile");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101130nko">
「でもにとりはあわてない」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101140nko">
「てをきるのにはなれてる」

{	St("C",700, @0,@0,"buノーコa_幽霊_think");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101150nko">
「あらって、しょうどくして……」

{	St("C",700, @0,@0,"buノーコa_幽霊_smile");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101160nko">
「ばんそうこうをまいてくれる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
{	St("C",700, @0,@0,"buノーコa_通常_shy");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101170nko">
「ゆびが、ゆびにふれる」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101180nko">
「ちかくのにとり」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101190nko">
「わたしたちはじっとみつめあう」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101200nko">
「そして……」

{	St("C",700, @0,@0,"buノーコa_通常_smile");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101210nko">
「セックスする」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101220nko">
「いっぱい、セックスする」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101230nko">
「にとりに、ほんものを、なかにだしてもらう」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101240nko">
「かれるまで、やる」

{	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101250nko">
「……うん」

{	St("C",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101260nko">
「ぜったい、はやく、かえる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
{	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101270nko">
「わたしがかえれば、もうだいじょうぶ」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101280nko">
「にとりはなににもなやまされない」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101290nko">
「きっと、げんざいにまんぞくする――」




{	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101300nko">
「ん？」

{	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101310nko">
「あれは……でぐち？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	TextBoxDelete(150);


	SetVolumeEX("@xbgm*", 4000, 0, null);

	SceneOut(5000, 1000, "blind_01_00_0");
	DeleteAllSt(200,false);


	CreateSE("SE02","se動作_ドア開ける05");
	MusicStart("SE02",0,700,0,1000,null,false);
	WaitKey(2000);
{	ClockPass(2058);}


//◆場所：スパコン館_通路
	OnBG(10,"bg1102100スパコン館_通路_通常");
	FadeBG(0,true);
	SceneIn(1000, "blind_01_00_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
{	St("C",700, @60,@0,"buノーコa_幽霊_sad");
	Move("@StNameC/C*", 1000, @-60, @0, DxlAuto, false);
	FadeSt("C",1000,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101320nko">
「ここは……？」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101330nko">
「とにかく、そとにでる」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101340nko">
「とびら」



{	DeleteAllSt(200,false);}

//◆ＳＥ：がんっ！！
{
	CreateSE("SE11","se人体_倒れる02");
	MusicStart("SE11",0,700,0,1000,null,false);
	Shake("@OnBG*", 500, 5, 5, 0, 0, 500, null, false);
	WaitKey(1500);
}


{	St("C",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101350nko">
「…………」


{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101360nko">
「もうとおりぬけできない」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101370nko">
「きをつける」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


{	ClockPass(2059);}


//◆場所：スパコン館_裏面
	SceneOut(5000, 1000, "blind_01_00_0");
	DeleteSt("C", 0,true);
	Wait(100);

	OnBG(10,"bg1101200スパコン館_裏面_閉店");
	FadeBG(0,true);
	SceneIn(1000, "blind_01_00_1");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
{	St("C",700, @60,@0,"buノーコa_幽霊_sad");
	Move("@StNameC/C*", 1000, @-60, @0, DxlAuto, false);
	FadeSt("C",1000,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101380nko">
「ふう……」

{	CreateSE("SE01","se環境_風と葉っぱ_l");
	MusicStart("SE01",1000,700,0,950,null,true);
	CreateTextureEX("絵背景100", 1000, 0, -448, "cg/bg/bg2401100空_上空_通常.jpg");
	Move("絵背景100", 10000, @0, 0, DxlAuto, false);
	Fade("絵背景100", 1000, 1500, null, true);
	}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101390nko">
「これが、かぜ……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101400nko">
「これが、そら……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/510101410nko">
「きもちいい」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Delete("@OnBG*");
	DeleteAllSt(0,true);
	SetVolumeEX("@xbgm*", 4000, 0, null);

	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

	SetVolumeEX("SE*", 1000, 0, null);

	WaitPlay("SE*", null);
	EndFileBlackOut(20010,0);
	EndScene();
}
