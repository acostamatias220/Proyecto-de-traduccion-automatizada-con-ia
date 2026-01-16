
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ab2100ノーコ.nss_MAIN
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
	$GameName = "ab2107沙紅羅_似鳥_ノーコ_フウリ.nss";
//	$GameCircle=false;

//※↑ab2051ノーコ.nssの飛び方を参考に設定（mngw 10/14）


}

scene ab2100ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="630">
////////////header////////////
//file name "ab2100ノーコ.nss"
//title "はじめてのアルバイト"
//previous "ab2050ノーコ.nss"

////////////footer////////////
//next "ノーコ" "ab2107沙紅羅_似鳥_ノーコ_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2100);}

//※下倉注：ゆるキャラバン準備
	SoundPlay("@xbgm16",0,1,true);

//◆場所：スーパーノヴァ_正面
	OnBG(10,"bg0501300スーパーノヴァ_正面_ガラス補修");
	FadeBG(0,true);

	SoundPlay("@xbgm20",2000,300,true);
//	CreateSE("SEL01","seガヤ_交通少_l");
//	MusicStart("SEL01",500,700,0,1000,null,true);

	if($PreGameName=="ab2051ノーコ.nss"){
	DrawDelete("上背景", 500, 100, null, "blind_01_00_1", true);
	}else{
	FadeDelete("上背景", 0, null, true);
	}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @60,@0,"buノーコa_幽霊_normal");
	Move("@StNameC/C*", 1000, @-60, @0, DxlAuto, false);
	FadeSt("C",1000,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100010nko">
「いえにかえろう」

{	St("C",700, @0,@0,"buノーコa_幽霊_smile");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100020nko">
「いえにかえって、カレーをつくる」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100030nko">
「おいしいおいしいカレー」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100040nko">
「ざいりょうは……」

{	St("C",700, @0,@0,"buノーコa_幽霊_think");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100050nko">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100060nko">
「ない」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100070nko">
「かいものがひつよう」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100080nko">
「…………」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100090nko">
「おかね、ない」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100100nko">
「どうすれば……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100110nko">
「ころしてでも」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100120nko">
「うばいとる？」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100130nko">
「……だめ」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100140nko">
「やくそくした」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100150nko">
「フウリと、やくそく」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2101);}


	CreateSE("SE01","se動作_ドア閉める02");
	MusicStart("SE01",0,700,0,1000,null,false);

//	TextBoxDelete(150);

	DeleteSt("C", 200,true);
	BGPlainShake(50, 300, 10, 8, 0, 0, 1000, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/000100160fjr">
「あああああ……！」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/000100170fjr">
「もう、さっきからなんなのよー！？」

{	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100180nko">
「ん？　このこえ……きいたことが……」


{	DeleteSt("C", 200,true);
	St("L",700, @-60,@0,"bu鈴_もじゃ_angry");
	Move("@StNameL/L*", 300, @60, @0, DxlAuto, false);
	FadeSt("L",300,true);
	Shake("@StNameL/L*", 100, 10, 5, 0, 0, 500, null, false);

//	SetVolumeEX("SE*", 1000, 0, null);
}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/000100190fjr">
「ライブのリハ失敗したり、地震起こったり！
　ガラスは割れてガラス屋は見つかんなかったり！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("L",700, @0,@0,"bu鈴_もじゃ_cry");
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/000100200fjr">
「フウリちゃんがいなくなって、千秋ちゃんもいなくて、挙げ句星ちゃんもいなくなっちゃうし！」


//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/000100210fjr">
「ああっ、コレじゃ全然人手が――！
　誰か、誰かコスプレに抵抗なさそうな臨時バイト――」


{	St("R",700, @30,@0,"buノーコa_幽霊_normal");
	Move("@StNameR/R*", 500, @-30, @0, DxlAuto, false);
	FadeSt("R",500,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100220nko">
「フウリのおみせ」

{	St("R",700, @0,@0,"buノーコa_幽霊_think");
	FadeSt("R",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100230nko">
「フウリがいなくなったのは……
　わたしがむりやり、つれだしたから？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("L",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/000100240fjr">
「ん――？
　あの、もしかしてあなた、フウリちゃんの友達？」

{	St("R",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("R",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100250nko">
「……わからない」

{	St("L",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/000100260fjr">
「いやいや、友達よ！　うん、そうに決まってる！」

{	St("R",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("R",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100270nko">
「ともだち……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2102);}


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("L",700, @0,@0,"bu鈴_通常_happy");
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/000100280fjr">
「アタシ、あそこのスーパーノヴァって店の店長代理みたいなことやってるんだけどねっ」

{	St("L",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/000100290fjr">
「相談なんだけど、もしよかったら、友達のよしみで臨時のアルバイトを――」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100300nko">
「…………」

{	St("L",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/000100310fjr">
「人助けだと思って！　お願い！」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100320nko">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("L",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/000100330fjr">
「給料も弾むからさ」

{	St("R",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("R",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100340nko">
「きゅうりょう……？」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100350nko">
「おかね？」

{	St("L",700, @0,@0,"bu鈴_シリアス_smile");
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/000100360fjr">
「そう！　おかね！
　年末だし……時間も時間だから……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("L",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/000100370fjr">
「時給２０００円でどうっ！？」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100380nko">
「にせんえん」

{	St("L",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/000100390fjr">
「だめっ？」

{	St("R",700, @0,@0,"buノーコa_幽霊_think");
	FadeSt("R",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100400nko">
「…………」

{	St("R",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("R",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100410nko">
「カレー、かえる？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2103);}


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("L",700, @0,@0,"bu鈴_シリアス_smile");
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/000100420fjr">
「買える買えるっ！」

{	St("L",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/000100430fjr">
「でも……なんでカレー？」

{	St("R",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("R",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100440nko">
「カレーをつくるから」

{	St("L",700, @0,@0,"bu鈴_シリアス_smile");
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/000100450fjr">
「…………オッケー」

{	St("L",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/000100460fjr">
「あなたにも、色々事情があるんでしょ。
　そこはあえて踏み込まないわっ」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/000100470fjr">
「ぜひ、協力してちょうだいっ！」

{	St("R",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("R",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100480nko">
「はあく」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	SetVolumeEX("@xbgm*", 4000, 0, null);

	TextBoxDelete(150);


	SetVolumeEX("@xbgm20", 2000, 450, null);



{	SceneOut(5000, 1000, "blind_01_00_0");
	WaitKey(1000);


//◆場所：スーパーノヴァ_ライブ会場
	OnBG(10,"bg0502211スーパーノヴァ_ライブ会場_ガラス補修");
	FadeBG(0,true);
	DeleteAllSt(0,true);


//	SoundPlay("@xbgm20_noeff",1000,450,true);
	CreateSE("SE05","seガヤ_歓声_l");
	MusicStart("SE05",1000,700,0,1000,null,true);

	SceneIn(1000, "blind_01_00_1");
	
	}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]

{	St("MR",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("MR",500,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100490nko">
「……すごいねっき」

{	St("ML",700, @-30,@0,"bu鈴_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/000100500fjr">
「スーパー・スーパーノヴァに向けて、みんな盛り上がってるからね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2104);}


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("MR",700, @0,@0,"buノーコa_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100510nko">
「でも、まどガラスが……」

{	St("ML",700, @0,@0,"bu鈴_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/000100520fjr">
「それはまあ、これからなんとかするわっ」

{	St("ML",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/000100530fjr">
「あなたの衣装は……まあ、その格好のままでいいか。
　ウチ、制服があるワケじゃないしね」



//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/000100540fjr">
「ちなみに名前は？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("MR",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100550nko">
「……ノーコ」

{	St("ML",700, @0,@0,"bu鈴_シリアス_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/000100560fjr">
「本名？　だったら変えた方が――」

{	St("MR",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100570nko">
「いい。にとりからもらったなまえ。だいじ」

{	St("ML",700, @0,@0,"bu鈴_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab21/000100580fjr">
「了解！
　控え室にネームプレートがあるから、取ってきて」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 3000, 0, null);
	SetVolumeEX("@xbgm20", 3000, 0, null);

	TextBoxDelete(150);

	SceneOut(5000, 1000, "blind_01_00_0");
	WaitKey(1000);

{	ClockPass(2105);}


//◆場所：スーパーノヴァ_ライブ会場
	OnBG(10,"bg0503100スーパーノヴァ_控え室_通常");
	FadeBG(0,true);
	DeleteAllSt(0,true);



	SetVolumeEX("@xbgm16", 2000, 300, null);


	SetVolumeEX("ミリＰ", 2000, 200, null);


	SceneIn(1000, "blind_01_00_1");


{	ClockPass(2106);}

//◆場所：スーパーノヴァ_控え室

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("C",700, @30,@0,"buノーコa_幽霊_think");
	Move("@StNameC/C*", 500, @-30, @0, DxlAuto, false);
	FadeSt("C",500,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100590nko">
「ネームプレート……ネームプレート……」

{	St("C",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100600nko">
「ん……どこに……あるか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――




//◆演出指示：ここらへん、ＢＧＭ的に流してもいい

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0145]
//◆音声指示：テレビ越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/000100610mrp">
『ここで、秋葉原発のスーパーマスコットが発表されることを、皆さん憶えているかしら？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
*/

	CreateVOICE("ミリＰ","ab21/000200640mrp");
	MusicStart("ミリＰ",0,700,0,1000,null,false);

	WaitKey(500);

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100620nko">
「ん？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/000100630nko">
「このテレビ……あきはばら？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指示：以下、テレビ内へ
	SetVolumeEX("ミリＰ", 1000, 0, null);


//	TextBoxDelete(150);

	CreatePlainSP("上背景", 5000);

//◆場所：ＵＰ＋_屋外セット
	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);
	FadeSt("C",0,true);
	DeleteSt("C", 0,true);

	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",0,true);

	CreateTextureSPover("絵効果", 1010, Center, Middle, "cg/ef/efテレビ画面用効果フィルター.jpg");
	Wait(16);
	CreatePlainSP("絵板写", 1000);
	SetShade("絵板写", MEDIUM);

	SetVolumeEX("@xbgm16", 1000, 450, null);
	FadeDelete("上背景", 1000, null, true);

	EndScene();
}

//ab2107沙紅羅_似鳥_ノーコ_フウリ.nssへ
