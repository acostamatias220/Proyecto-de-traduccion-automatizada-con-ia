
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2235フウリ.nss_MAIN
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
	$GameName = "2240フウリ.nss";

}

scene 2235フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="120">
////////////header////////////
//file name "2235フウリ.nss"
//title "約束"
//previous "2233沙紅羅_似鳥_ノーコ_フウリ.nss"
//previous "c2233沙紅羅_似鳥_フウリ.nss"

////////////footer////////////
//next "フウリ" "2240フウリ.nss"

////////////body////////////

//■再定義定型文
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	PrintBG("上背景", 30000);


{	ClockPass(2235);}

//◆場所：あにのあな_店内
	OnBG(10,"bg0302111あにのあな_店内_通常");
	FadeBG(0,true);

	CreateSE("SE02","seガヤ_客暴動_l");
	MusicStart("SE02",0,600,0,1000,null,true);

	DrawDelete("上背景", 300, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/350100010wfu">
（ふぅ……アザナエル、手に入れました）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/350100020wfu">
（色々考えることはあるような気もしますが、まずはどこか人気のないところで――）

{	St("C",700, @+100,@0,"bu貫太_通常_hard");
	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/350100030okt">
「どいてくれッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorEX("フラッシュ白", 15000, "WHITE");

//◆ＳＥ：どかっ！　ぶつかる音
	CreateSE("SE01","se戦闘_打撃音01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("フラッシュ白",0,1000,null,true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg0302111あにのあな_店内_通常.jpg");

	St("C",700, @0,@0,"bu平次_通常_shock");
	FadeSt("C",200,true);

	Shake("絵背景100", 500, 3, 10, 0, 0, 1000, null, false);
	Shake("@StNameC/C*", 500, 5, 3, 0, 0, 500, null, false);

	Fade("フラッシュ白",100,0,null,true);
	Delete("フラッシュ白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//※下倉注：タグ修正：実装時注意
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/350100040wfu">
「きゅ！」

{	DeleteSt("C",200,true);
	St("C",700, @-100,@0,"bu貫太_横向き_hard");
	Move("@StNameC/C*", 200, @+100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/350100050okt">
「ん？　いまなんか……フウリの声が……」

{	St("C",700, @0,@0,"bu貫太_通常_hard");
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/350100060okt">
「いや、気のせいか。
　それより早くアザナエルを――！」

{	CreateSE("SE01","se動作_階段のぼる");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameC/C*", 200, @+200, @0, Dxl1, false);
	DeleteSt("C",200,true);}
　独り言を呟いて、彼は階段を駆け上がっていく。

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/350100070wfu">
（人ごみだらけで助かりました……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("SE*", 500, 0, null);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("絵背景100");


//◆時間：ジャンプ
{	ClockPass(2237);}

//◆場所：あにのあな_正面
	OnBG(10,"bg0301111あにのあな_正面_通常");
	FadeBG(0,true);

	Move("@OnBG*", 0, @0, -1147, null, true);

	DrawDelete("黒幕１", 300, 100, null, "blind_01_00_1", true);

	St("C",700, @0,@0,"bu平次_通常_shout");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/22/350100080wff">
「どろんぱっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：姿元に戻る
	CreateColorEXadd("フラッシュ白", 15000, "WHITE");

	CreateSE("SE01","se動物_タヌキ_化ける02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StNameC/C*", 400, @0, @+100, Dxl1, false);
	Fade("フラッシュ白",300,1000,null,true);


	St("C",700, @0,@+100,"buフウリ_通常_normal");
	FadeSt("C",0,true);

	Move("@StNameC/C*", 300, @0, @-100, Dxl1, false);
	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/350100090wfu">
「ふぅ……やっぱり、この姿が一番です」

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/350100100wfu">
「あとは、人気のない場所」

{	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/350100110wfu">
「…………うん」

{	St("C",700, @0,@0,"buフウリ_胸手_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/350100120wfu">
「あそこです」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);

	EndScene();
}
