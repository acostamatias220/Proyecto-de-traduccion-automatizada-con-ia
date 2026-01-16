
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2131フウリ.nss_MAIN
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
	$GameName = "2139フウリ.nss";

}

scene 2131フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="580">
////////////header////////////
//file name "2131フウリ.nss"
//title "変身です！"
//previous "2130フウリ.nss"

////////////footer////////////
//next "フウリ" "2139フウリ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2131);}


//嶋：ひとつ前のスクリプトですでにやったので、ここではやりません
//◆演出指定：ノーコがいなくなると、何故か暗闇が元に戻る
//◆ＳＥ：ライトがつく音

//◆場所：ＵＰ＋_屋外セット_炎上
//あきゅん「修正：前ファイルとのつなぎで背景際が起きていたので修正しました11/17」
//	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	OnBG(10,"bg1203100ＵＰ＋_セット裏_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

{	St("ML",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100010wfu">
「間違いじゃありません」

{	St("MR",700, @0,@0,"buミヅハ_ダウナー_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/310100020mzh">
「フウリ……？」

{//	SoundPlay("@xbgm28",0,450,true);
	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100030wfu">
「ノーコちゃんは、今、頭に血が上っているだけです」

{	St("ML",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100040wfu">
「信じてあげることは、絶対に、正しいです」

{	St("ML",700, @0,@0,"buフウリ_胸手_hard");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100050wfu">
「間違ってるはずなんて、ない！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2132);}


//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buミヅハ_フラット_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/310100060mzh">
「フウリ、どこへ……」

{	St("ML",700, @0,@0,"buフウリ_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100070wfu">
「私がなんとかします！」

{	St("ML",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100080wfu">
「ノーコちゃんの目を、覚まさせてみせる！！」

{	Move("@StNameML/ML*", 200, @-200, @0, Dxl1, false);
	CreateSE("SE11","se動作_走る05_l");
	MusicStart("SE11",0,500,0,1000,null,true);
	DeleteSt("ML",200,true);
	St("MR",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("MR",200,true);
	SetVolume("SE11", 3000, 0, null);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/310100090mzh">
「待て！　わらわも行く――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("@StNameMR/MR*", 200, @-200, @0, Dxl1, false);
	DeleteSt("MR",200,true);

	CreateSE("SE12","se動作_走る05_l");
	MusicStart("SE12",0,500,0,1200,null,true);

	SetVolume("@xbgm*", 2000, 0, null);

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


//◆時間：ジャンプ
{	ClockPass(2134);}


//◆場所：秋葉原駅_正面
	OnBG(10,"bg0201111秋葉原駅_正面_通常");
	FadeBG(0,true);

	SetVolume("SE11", 300, 0, null);
	SetVolume("SE12", 300, 0, null);

//◆ＳＥ：ざわついている
	CreateSE("SE10","seガヤ_ざわざわ_l");
	MusicStart("SE10",200,500,0,1000,null,true);

	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);

	St("C",700, @+100,@0,"buフウリ_胸手_worry");

	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100100wfu">
「パトカーが……」

{	St("C",700, @0,@0,"buフウリ_胸手_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100110wfu">
「ノーコちゃんが、この辺りを通ったみたいですね」

//◆音声指示：遠くから
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/310100120mzh">
「こら！　置いていくでない！」

{	St("C",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100130wfu">
「きゅ！　このままでは、ミヅハちゃんを危険に巻き込んでしまう……」

{	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100140wfu">
「こうなったら自販機の陰で……」

{	St("C",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100150wfu">
「えいッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	TextBoxDelete(150);

//	SetVolume("SE01", 200, 1, null);

	CreateColorEX("絵色１", 10000, "#FFFFFF");

//◆ＳＥ：ドロン！
	CreateSE("SE02","se動物_タヌキ_化ける01");

	Fade("絵色１", 0, 400, null, true);
	Move("@StNameC/C*", 200, @0, @+200, Dxl1, false);
	MusicStart("SE02",0,700,0,1000,null,false);
	DeleteSt("C",200,true);


//	SetVolumeEX("SE01", 1500, 600, null);
	Fade("絵色１", 1000, 0, null, true);


{	St("C",700, @+200,@0,"buミヅハ_通常_sigh");
	Move("@StNameC/C*", 200, @-200, @0, Dxl1, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/310100160mzh">
「どこじゃ？　どこに消えた？」

{	St("C",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/310100170mzh">
「フウリ、フウリ、フウリやーい……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	Move("@StNameC/C*", 200, @-200, @0, Dxl1, false);
	DeleteSt("C",200,true);

{	St("MR",700, @+100,@0,"bu平次_通常_hard");

	CreateSE("SE02","se動作_足踏み");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Move("@StNameMR/MR*", 200, @-100, @0, Dxl1, false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/310100180fjh">
「おいコラミヅハッ！！」

{	St("ML",700, @0,@0,"buミヅハ_フラット_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/310100190mzh">
「ぬ！　その声は――」

{	St("MR",700, @0,@0,"bu平次_通常_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/310100200fjh">
「半田明神で待ってろって言っただろ！」

{	St("ML",700, @0,@0,"buミヅハ_通常_angry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/310100210mzh">
「もじゃもじゃがでたー！」

{	St("MR",700, @0,@0,"bu平次_通常_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/310100220fjh">
「誰がもじゃもじゃだ！」

{	St("ML",700, @0,@0,"buミヅハ_通常_angry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/310100230mzh">
「に、逃げろ――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――




	TextBoxDelete(150);

//	SetVolume("SE01", 1000, 0, null);

	CreateSE("SE05","se動作_走る05_l");
	MusicStart("SE05",0,600,0,1000,null,true);

	Move("@StNameML/ML*", 200, @-500, @0, Dxl1, false);
	DeleteSt("ML",200,true);

	Wait(1000);
	SetVolume("@SE05", 1500, 0, null);
	Wait(1500);

//	SoundPlay("@xbgm10",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100240wfu">
「ふぅ……なんとかまいたようです」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100250wfu">
「あとは緑の葉っぱで元に戻って……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100260wfu">
「きゅー！　ストックが切れてしまいました」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100270wfu">
「どこかから探してこなければ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("SE10", 2000, 0, null);


	CreateSE("SE01","se動物_タヌキ_走る_l");
	MusicStart("SE01",0,400,0,1000,null,true);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);



	CreateSE("SE10","seガヤ_交通_l");
	MusicStart("SE10",2000,700,0,1000,null,true);


{	ClockPass(2135);}

//◆場所：秋葉原_万世橋

	OnBG(10,"bg0104200秋葉原_万世橋_閉店");
	FadeBG(0,true);

	SetVolume("SE01", 500, 0, null);


	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100280wfu">
「うう……あんまり上等なのがありません」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100290wfu">
「公園に戻るのも時間がかかるし……
　どうしたもんでしょうか……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100300wfu">
「あ！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100310wfu">
「そういえば、この側に神社が……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("SE10", 2000, 0, null);


	CreateSE("SE01","se動物_タヌキ_走る_l");
	MusicStart("SE01",0,400,0,1000,null,true);

	SetVolume("@xbgm*", 500, 0, null);

	CreateSE("SE11","se環境_林_l");
	MusicStart("SE11",2000,400,0,1000,null,true);



	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);



//◆場所：柳神社_境内
	OnBG(10,"bg1501100柳神社_境内_通常");
	FadeBG(0,true);

	SetVolume("SE01", 500, 0, null);

	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100320wfu">
「あった！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100330wfu">
「あれ？　この神社、おいなりさまじゃなくて……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100340wfu">
「おたぬきさま……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：ウウウウウウ！！
	CreateSE("SE01","se動物_ネコ_威嚇02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100350wfu">
「う……ネコさんがたくさんいます」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100360wfu">
「怒らないで……別におっかないことは……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100370wfu">
「もう、もう少しで葉っぱに手が――」

{	CreateSE("SE10","se動物_ネコ_威嚇沢山_l");
	MusicStart("SE10",500,600,0,1000,null,true);}
//◆ＳＥ：シャアアアアア！！
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100380wfu">
「きゅ――――！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100390wfu">
「ご、ごめんなさい、ネコさん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100400wfu">
「私は別に、脅かす気なんて――」

{	CreateSE("SE01","se動物_ネコ_威嚇02");
	MusicStart("SE01",0,700,0,1000,null,false);}
//◆ＳＥ：シャアアアアア！！
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100410wfu">
「きゅぅぅぅぅ……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100420wfu">
「これでは……近づけません……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100430wfu">
「しかし戻っていては……もう時間が……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2136);}


	TextBoxDelete(150);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg1501100柳神社_境内_通常.jpg");

	SetVolume("SE01", 300, 0, null);
	SetVolume("SE10", 300, 0, null);
	CreateSE("SE05","se環境_地鳴り03");

//◆ＳＥ：ドゴーン！　橋脚が崩れ落ちる音
	MusicStart("SE05",0,400,0,1000,null,false);
	Shake("絵背景100", 2000, 2, 5, 0, 0, 1000, null, false);
	Fade("絵背景100", 0, 1000, null, true);

	Wait(500);

//◆ＳＥ：ネコ「ふぎゃあああ」遁走
	CreateSE("SE01","se動物_ネコ_悲鳴");
	MusicStart("SE01",0,600,0,1000,null,false);
	CreateSE("SE02","se動作_茂み_l");

	Wait(500);

	MusicStart("SE02",0,600,0,1000,null,false);
	SetVolume("SE02", 3000, 0, null);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100440wfu">
「え……今の音は？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100450wfu">
「もしかして――ノーコちゃん！？」

　川向こうに、濛々と白煙が吹き上がる。

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100460wfu">
「急がなきゃ――！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100470wfu">
「ネコさんがビックリしたので、今がチャンス！」

//◆ＳＥ：ブチブチ　葉っぱを取る
{	CreateSE("SE01","se動作_葉っぱむしる");
	MusicStart("SE01",0,700,0,1000,null,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100480wfu">
「葉っぱを補充して、いざ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("SE*", 2000, 0, null);


//◆ＳＥ：走る足音
	CreateSE("SE02","se動物_タヌキ_走る_l");
	MusicStart("SE02",0,700,0,1000,null,true);

	Wait(500);

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵背景100");



//◆時間：ジャンプ
{	ClockPass(2138);}

//◆場所：秋葉原_ガード下_破壊
	OnBG(10,"bg0102300秋葉原_ガード下_破壊");
	FadeBG(0,true);

	CreateTextureSP("絵背景1000", 1000, 0, -400, "cg/bg/l/bg0102300秋葉原_ガード下_破壊_l.jpg");
	CreateColorSPadd("絵色100", 1500, "White");
	Fade("絵色100", 0, 500, null, true);

	CreateMovie("ムービー１", 1200, 227, 151, true, true, "dx/mvk100.ngs");
	Zoom("ムービー１", 0, 3000, 3000, null, true);
	CreateMovie("ムービー２", 1200, 227, 151, true, true, "dx/mvk100.ngs");
	Rotate("ムービー２", 0, @0,180,@0, null,true);
	Zoom("ムービー２", 0, 3000, 3000, null, true);


	SetVolume("SE02", 300, 0, null);

	Shake("絵背景1000", 5000, 0, 1, 0, 0, 1000, null, false);
	Move("絵背景1000", 5000, -350, @0, null, false);
	Zoom("ムービー１", 2000, 30000, 3000, Dxl1, false);
	Zoom("ムービー２", 1200, 30000, 3000, Axl1, false);
	FadeDelete("ムービー１", 1500, null, false);

	CreateSE("SE01","se環境_地鳴り01_l");
	MusicStart("SE01",0,500,0,1000,null,true);

	SoundPlay("@xbgm31",0,450,true);

	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);

	FadeDelete("ムービー２", 700, null, true);
	FadeDelete("絵色100", 1000, null, true);
	FadeDelete("絵背景1000", 500, null, true);

	SetVolume("SE01", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100490wfu">
「な、なんですかコレはー！？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100500wfu">
「こんなことが……ほんとに……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("@SE01", 300, 0, null);

	Delete("ムービー１");
	Delete("ムービー２");

//ノーコマスク
//	CreateMask("マスク１", 200, 400, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	CreateMaskAXLEX("マスク１", 2000, 400, 0, "ciスラッシュ_05_01", false, "ciスラッシュ_05_01z");

	CreateTextureEX("マスク１/絵背景1000", 200, 0, 0, "cg/bg/bg0102300秋葉原_ガード下_破壊.jpg");
	Zoom("マスク１/絵背景1000", 0, 2000, 2000, null, true);
	SetShade("マスク１/絵背景1000", MEDIUM);
	CreateTextureEX("マスク１/絵st100", 1000, 249, 100, "cg/bu/buノーコa_カッター_smile.png");

	CreateSE("SE11","se戦闘_カッター_刃出す02早い");


//双六マスク
//	CreateMask("マスク２", 200, -400, 0, "cg/mask/ciスラッシュ_05_00.png", false);
	CreateMaskAXLEX("マスク２", 2000, -400, 0, "ciスラッシュ_05_00", false, "ciスラッシュ_05_00z");

	CreateTextureEX("マスク２/絵背景1000", 200, 0, 0, "cg/bg/bg0102300秋葉原_ガード下_破壊.jpg");
	Zoom("マスク２/絵背景1000", 0, 2000, 2000, null, true);
	SetShade("マスク２/絵背景1000", MEDIUM);

	CreateTextureEX("マスク２/絵st100", 1000, 200, 50, "cg/bu/bu双六a_通常_hard.png");


	CreateSE("SE12","se動作_一歩");

	CreateTextureEX("絵背景1000", 1000, -1024, -100, "cg/ev/l/ev0000ノーコカッターc_l.jpg");
	CreateTextureEX("絵背景100", 120, Center, Middle, "cg/ev/ev0000ノーコカッターc.jpg");

	CreateSE("SE10","se戦闘_風切り音05");
	MusicStart("SE10",0,1000,0,1000,null,false);

	Move("絵背景1000", 1400, 0, @0, Dxl1, false);
	Fade("絵背景1000", 300, 1000, null, true);
	Fade("絵背景100", 0, 1000, null, true);
	FadeDelete("絵背景1000", 500, null, true);

//◆ＥＶ："ev/ev0000ノーコカッター.txt"

	Wait(300);

	FadeDelete("絵背景100", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130a]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100510wfu">
「――ノーコちゃん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("マスク１Line", 300, 0, @0, Dxl1, false);
	Fade("マスク１Line", 300, 1000, null, false);
	Move("マスク１", 300, 0, @0, Dxl1, false);
	Fade("マスク１/絵背景1000", 300, 1000, null, true);

	MusicStart("SE11",0,700,0,1000,null,false);
	BezierMove("マスク１/絵st100", 500, (249,100){389,-50}{369,-25}(349,0), Dxl1, false);
	Fade("マスク１/絵st100", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130b]
//◆音声指示：遠くから
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/310100520nko">
「あなたも、しにたいの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("マスク２Line", 400, 0, @0, Dxl1, false);
	Fade("マスク２Line", 400, 1000, null, false);

	Move("マスク２", 400, 0, @0, Dxl1, false);
	Fade("マスク２/絵背景1000", 300, 1000, null, true);

	MusicStart("SE12",0,700,0,1000,null,false);
	Move("マスク２/絵st100", 600, 0, 0, Dxl1, false);
	Fade("マスク２/絵st100", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130c]
//◆音声指示：遠くから
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/310100530ksr">
「……ふん」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100540wfu">
「一緒にいるのは――双六さん！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("マスク１Line", 400, 1024, @0, Dxl1, false);
	Fade("マスク１Line", 400, 1000, null, false);
	Move("マスク１", 500, 1024, @0, Dxl1, false);
	Fade("マスク１", 400, 0, null, false);

	Move("マスク２Line", 400, -1024, @0, Dxl1, false);
	Fade("マスク２Line", 400, 1000, null, false);
	Move("マスク２", 500, -1024, @0, Dxl1, false);
	Fade("マスク２", 400, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100550wfu">
「うう……ふたりとも、おっかないです……
　とにかく、ここは気を惹かないと……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Delete("@マスク１*");
	Delete("@マスク２*");
	Delete("マスク１/絵*");
	Delete("マスク２/絵*");
	Delete("マスクライン１");
	Delete("マスクライン２");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100560wfu">
「葉っぱを手に――」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100570wfu">
「頭の中に、思い浮かべて――」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/310100580wfu">
「どろんぱっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("@xbgm*", 500, 0, null);

	CreateColorEXadd("絵色１", 12000, "#FFFFFF");

//◆ＳＥ：ドロン！
	CreateSE("SE02","se動物_タヌキ_化ける01");

	Fade("絵色１", 200, 1000, null, true);
	MusicStart("SE02",0,700,0,1000,null,false);

	$2131フウリ_SE = RemainTime("SE02");

	Wait($2131フウリ_SE);

	EndScene();
}
