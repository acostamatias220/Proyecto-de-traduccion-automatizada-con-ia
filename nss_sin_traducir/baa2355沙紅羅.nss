
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene baa2355沙紅羅.nss_MAIN
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
	$GameName = "baa2356似鳥_ノーコ.nss";//★エンディング中（baa）
}

scene baa2355沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="570">
////////////header////////////
//file name "baa2355沙紅羅.nss"
//title "新しい未来へ……"
//previous "baa2354千秋_恵那.nss"

////////////footer////////////
//next "baa2356似鳥_ノーコ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
//	FadeDelete("上背景", 0, null, true);

{	ClockPass(2350);}

//◆場所：秋葉原_ガード下_破壊

	Wait(1000);

	OnBG(10,"bg0102300秋葉原_ガード下_破壊");
	FadeBG(0,true);
	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100010skr">
「…………」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100020skr">
「後戻りは、できねーぞ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100030skr">
「いいんだよな？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100040skr">
「…………」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100050skr">
「うう……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100060skr">
「やっぱりやめるか？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100070skr">
「まだアタシには早いし……いや、でも……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shy");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100080skr">
「そりゃ、気持ちは嬉しいさ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100090skr">
「正直アタシ、心底惚れてる」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100100skr">
「アタシだって、全部投げ捨てて、双六さんと一緒に生きていきたい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100110skr">
「それは間違いないんだ。でも――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100120skr">
「まだ、会ってから半日もたってないんだぞ？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100130skr">
「そんな相手に一生を捧げるだなんて、そんな――」

//◆ＳＥ：ガッシャーン

{
	CreateSE("SE01","se戦闘_ガラス割れる02");
	MusicStart("SE01",0,700,0,1000,null,false);
}

//◆音声指示：遠くから
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/baa23/550100140ksr">
「がは――――っ！！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100150skr">
「な――！？　今の声、双六さん！？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100160skr">
「す、双六さんッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：ダッシュ


	Move("@StNameC/C*", 200, @100, @0, Axl1, false);
	DeleteAllSt(200,true);

	SoundPlay("@xbgm22",0,450,true);
	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,700,0,1000,null,true);


{	ClockPass(2351);}

//◆場所：エレキセンター_廊下
	SetVolumeEX("@SE01*", 1500, 0, null);
	SceneOut(5000, 300, "slide_01_01_0");
	DeleteAllSt(0,true);
	OnBG(10,"bg0901200エレキセンター_廊下_閉店");
	FadeBG(0,true);
	SceneIn(300, "slide_01_01_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("R",700, @50,@0,"buジャブル_通常_pinch");
	Move("@StNameR/R*", 300, @-50, @0, Dxl2, false);
	FadeSt("R",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/baa23/550100170jbr">
「おじょさん！　急ぐデスヨ！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100180skr">
「うるせ！　てめーは引っ込んでろ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100190skr">
「双六さん、どうしたんですかッ！？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100200skr">
「なんか、すごい音が――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆場所：バックギャモン_正面
	SceneOut(5000, 300, "slide_01_01_0");
	DeleteAllSt(0,true);
	OnBG(10,"bg1001100バックギャモン_正面_通常");
	FadeBG(0,true);
	SceneIn(300, "slide_01_01_1");

//◆ＳＥ：どんっ！

	CreateSE("SE01","se人体_倒れる02");
	MusicStart("SE01",0,450,0,1000,null,false);
	Shake("@OnBG*", 300, 0, 10, 0, 0, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("ML",700, @0,@0,"bu沙紅羅_後ろ向き_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100210skr">
「な、誰だっ！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_通常_smile");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/550100220nko">
「ふ――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】

<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100230skr">
「お前――」

//◆音声指示：遠くから
{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"st似鳥_通常_pinch");
	FadeSt("C",200,true);
	}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/550100240nki">
「何やってる！　早く来いッ！！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/550100250nko">
「おしあわせに」

{
	CreateSE("SE01","se動作_ジャンプ");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("@StNameMR/MR*", 300, @200, @0, Axl2, false);
	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100260skr">
「しあわせにって――おい、待て！」

　呼びかけも聞かず、ノーコはエレキセンターの外へ、人間離れしたスピードで飛び去ってしまう。

{
	St("ML",700, @0,@0,"bu沙紅羅_後ろ向き_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100270skr">
「――クソッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


{	ClockPass(2352);}

//◆場所：バックギャモン_店内
	SetVolumeEX("@xbgm*", 1500, 0, null);
	SceneOut(5000, 300, "slide_01_01_0");
	DeleteAllSt(0,true);
	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);
	SceneIn(300, "slide_01_01_1");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("C",700, @-50,@0,"bu沙紅羅_通常_rage");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100280skr">
「双六さん！　何が――」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100290skr">
「――――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//◆演出指示：双六死亡ＥＶ
//↑リストに存在しない指定です。

	CreateTextureEX("絵背景", 2100, Center, Middle, "cg/img/img双六死に手.jpg");
	Fade("絵背景", 500, 1000, null, true);

	Wait(500);

	SoundPlay("@xbgm26",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100300skr">
「な……」

{	St("ML",700, @0,@0,"bu沙紅羅_放心_lost");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100310skr">
「嘘……だろ？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",0,true);
	FadeDelete("絵背景", 500, null, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100320skr">
「双六さん？　おい、返事――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100330skr">
「息……してない？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100340skr">
「終わったら、来いとか言っておいて――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100350skr">
「一緒に暮らそうとか言っておいて――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100360skr">
「いきなり、そんな、そんなのって――」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100370skr">
「双六さん！　双六さん！　お願いです！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100380skr">
「嘘って――嘘だって、言って――
　言ってくださいッ！！」

{
	SetVolumeEX("@xbgm*", 500, 0, null);
	DeleteAllSt(200,false);
	St("MR",700, @0,@100,"bu双六a_通常_shout");
	Move("@StNameMR/MR*", 300, @0, @-100, Dxl2, false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/baa23/550100390ksr">
「嘘だあっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100400skr">
「って、え！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_pinch");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/baa23/550100410ksr">
「はぁ……はぁ……はぁ……いやあ。
　息止めるのも疲れんな」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100420skr">
「生きてる――？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/baa23/550100430ksr">
「そんな簡単に死ねるかよ」

{	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/baa23/550100440ksr">
「いつまでも外でウダウダしてるからよ。
　ノーコに頼んで……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_放心_lost");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100450skr">
「ひぐっ、う……うう……う……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/baa23/550100460ksr">
「ん？　どした？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100470skr">
「どうして……どうして、そんなことするんですか！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2353);}

//	TextBoxDelete(150);


	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	St("ML",700, @0,@0,"bu沙紅羅_乙女_shout");
	Shake("@StNameML/ML*", 300, 8, 0, 0, 0, 500, null, false);
	FadeSt("ML",200,true);
	FadeStPro("ML", 200, 2300);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100480skr">
「双六さんの……バカ！」

{	AgainSt("ML",700, @0,@0,"bu沙紅羅_乙女_shout");
	DeleteAllSt(200,true);
	Wait(200);
	SoundPlay("@xbgm28",0,450,true);
	St("MR",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/baa23/550100490ksr">
「…………ああ、そっか」

{	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/baa23/550100500ksr">
「オレ……生きてていいんだな」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100510skr">
「何バカなこと言ってるんですか！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/baa23/550100520ksr">
「オレはな、沙紅羅」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/baa23/550100530ksr">
「愛する人に先立たれる苦しみを、よく知ってる」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/baa23/550100540ksr">
「もう、泣かせたりしねぇ」

{	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/baa23/550100550ksr">
「だから――」

{	St("MR",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/baa23/550100560ksr">
「オレと一緒に、生きてくれるか？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_shy");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/baa23/550100570skr">
「…………はい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 3000, 0, null);

	CreateColorEX("絵背景", 20000, "BLACK");
	Fade("絵背景", 2500, 1000, null, true);

	Wait(1000);

	EndScene();
}
//next "baa2356似鳥_ノーコ.nss"
