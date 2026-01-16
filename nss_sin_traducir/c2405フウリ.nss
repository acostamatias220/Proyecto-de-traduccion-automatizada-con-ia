
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene c2405フウリ.nss_MAIN
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
	$GameName = "c2406似鳥.nss";//★エンディング中（c）
}

scene c2405フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="250">
////////////header////////////
//file name "c2405フウリ.nss"
//title "厭覇薔薇"
//previous "c2404沙紅羅.nss"

////////////footer////////////
//next "c2406似鳥.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);


//◆場所：半田明神_境内_厭覇薔薇エディション
	OnBG(10,"bg0603911半田明神_境内_厭覇薔薇新年新カンダー");
	FadeBG(0,true);

	CreateTextureEX("絵背景100", 100, Center, -230, "cg/bg/l/bg0603911半田明神_境内_厭覇薔薇新年新カンダー_l.jpg");
	#bg0603900半田明神_境内_厭覇薔薇新年新カンダー = true;
	#imgソトカンダー真イラスト = true;
	#imgソトカンダー真イラスト_big = true;

	DrawDelete("上背景", 300, 100, null, "slide_01_00_1", true);

	Wait(500);

	CreateTextureEXadd("花火", 2500, @0, @0, "cg/data/circle_10_00_1.png");
	CreateColorEX("花火色100", 1500, "red");
	CreateColorEX("花火色210", 1500, "blue");
	CreateColorEX("花火色200", 1500, "green");

	CreateSE("花火01", "se環境_花火打ち上げ");
	MusicStart("花火01", 1000, 700, 0, 1000, null,false);
	Fade("花火", 100, 1000, Axl1, false);
	Fade("花火色100", 50, 500, Axl1, true);
	Fade("花火色210", 50, 200, Axl1, true);
	Fade("花火色200", 50, 200, Axl1, true);
	Delete("花火色2*");
	Fade("花火", 1000, 0, Axl1, false);
	FadeDelete("花火色100", 1500, null, true);

	CreateSE("花火02", "se環境_花火02");
	MusicStart("花火02", 0, 600, 0, 1000, null,true);

//あきゅん「修正指示：ここでは序盤は背景演出立ち絵出さない」
//あきゅん「修正指示：と言うかソトカンダー仕舞われてるｗ」
//★inc櫻井　修正　冒頭立ち絵削除しました。
//ソトカンダーは出ているものに差し替えていただいたのでしょうか？　お手数おかけいたしました……。

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【そに子】
<voice name="そに子" class="そに子" src="voice/c24/050100010snk">
「綺麗な……花火……」

//【そに子】
<voice name="そに子" class="そに子" src="voice/c24/050100020snk">
「ロボットさんも……カッコイイ！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c24/050100030wfu">
「う……うぅ……」

//あきゅん「修正指示：ここら辺から立ち絵解禁、背景気を付けて」
{	Fade("絵背景100", 300, 1000, null, true);
	St("C",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c24/050100040fjr">
「フウリちゃん、大丈夫？」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c24/050100050wfu">
「え……あ、はい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c24/050100060wfu">
「ただ……なんていうか……」

{	St("ML",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c24/050100070wfu">
「貫太さんとノーコちゃんにも……
　見せてあげたかったなって」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c24/050100080fjr">
「ねえ、フウリちゃん。知ってる？」

//あきゅん「修正指示：ここ以降で花火きちんと見せる」
//★inc櫻井　修正　
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c24/050100090fjr">
「日本の花火はね。
　どこから見ても丸いんだよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("花火", 2000, @0, @-390, "cg/img/img花火.jpg");
	Move("花火", 3000, @0, @390, Dxl1, false);
	Fade("花火", 1500, 1000, null, true);

	DeleteSt("C",0,true);

//★inc櫻井　鈴の語りが重要と思われるので、音量基本の半分
	SetVolumeEX("@花火02", 1000, 300, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c24/050100100fjr">
「どこにいたって、ちゃんと、見えるから」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c24/050100110wfu">
「……上からも、丸く？」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c24/050100120fjr">
「うん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	FadeDelete("花火",1000,null,true);

{	St("C",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//あきゅん「修正指示：ここら辺から立ち絵戻し、もしくはカット演出など」
//★inc櫻井　修正　立ち絵に戻しました。
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c24/050100130fjr">
「それにほら、この音。
　フウリちゃんの、アレに似てるでしょ？」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c24/050100140wfu">
「アレ？」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c24/050100150fjr">
「コレだけ大きな音聞いたらきっと、びっくりしてこっち見てるから、ね」

{	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c24/050100160fjr">
「だから……ほら！
　本物の音も、聞かせてあげましょ？」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c24/050100170wfu">
「…………はい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	DeleteSt("ML",200,true);
	St("C",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c24/050100180wfu">
「いよおおおおおおおっ！」

//◆ＳＥ：腹鼓
{	CreateSE("腹鼓", "se動物_タヌキ_腹鼓03");
	MusicStart("腹鼓", 0, 1000, 0, 1000, null);
	St("C",700, @0,@-50,"buフウリ_前のめり_smile");
	Move("@StNameC/C*", 300, @0, @+50, Dxl2, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c24/050100190wfu">
「ぽん！！」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buそに子_通常_sad");
	FadeSt("MR",200,true);}
//【そに子】
<voice name="そに子" class="そに子" src="voice/c24/050100200snk">
「突然何ですか！？」

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c24/050100210fjr">
「いいのいいの」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);
	DeleteSt("C",200,true);

//あきゅん「修正指示：良い感じのスクロールです、花火との情緒は倍増させたい」
//★inc櫻井　修正

	SetVolume("花火02", 2000, 0, null);

	CreateTextureEX("街", 100, @0, @0, "cg/bg/l/bg0108200秋葉原_俯瞰_閉店_l.jpg");
	Fade("街", 3000, 1000, null, false);
	Move("街", 15000, @-600, @-260, null, false);
	Zoom("街", 15000, @-300, @-300, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c24/050100220wfu">
「貫太さん……ノーコちゃん……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c24/050100230wfu">
「見ててください。聞いててください。」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c24/050100240wfu">
「私はいつか、このふたりと一緒に――
　そっちまで届く大きな音で――」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c24/050100250wfu">
「たいこの音を、響かせてみせます！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//★inc櫻井　花火出すため＆CTRLスキップされている時用

	CreateSE("花火", "se環境_花火打ち上げ");
	MusicStart("花火", 0, 700, 0, 1000, null,false);
	CreateTextureEX("街02", 2500, @0, @0, "cg/bg/bg0108200秋葉原_俯瞰_閉店.jpg");
	Fade("街02", 2000, 1000, null, true);


	CreateSE("花火04", "se環境_花火01");
	MusicStart("花火04", 0, 700, 0, 1000, null,false);

	CreateTextureEXadd("花火", 3000, @-200, InBottom, "cg/ef/ef花火_m.png");
	SetBlur("花火", true, 3, 300, 50, false);
	Zoom("花火", 0, 0, 0, null, true);
	Zoom("花火", 10000, 1000, 1000, Dxl1, false);
	Fade("花火", 200, 1000, null, true);

	Wait(1000);

	SetVolume("SE*", 2000, 0, null);

	CreateColorEX("絵色100", 30000, "BLACK");
	Fade("絵色100", 2000, 1000, null, false);

//★inc櫻井　花火少し遅れて消す。


	FadeDelete("花火", 1500, null, true);

	Wait(2500);

	Fade("絵色100", 0, 1000, null, true);

	EndScene();
}
