
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2045沙紅羅_フウリ.nss_MAIN
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
	if($myRoute=="トゥルー"){
		SetVolumeEX("@xbgm*", 3000, 0, null);
		CreateColorEX("絵色100", 20000, "BLACK");
		Fade("絵色100", 1500, 1000, null, true);
		Delete("絵背景*");
		Wait(500);
		$GameName = "2047沙紅羅_フウリ.nss";
	}else{
		$GameName = "a2047沙紅羅_フウリ.nss";
	}
}

scene 2045沙紅羅_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="220">
////////////header////////////
//file name "2045沙紅羅_フウリ.nss"
//title "フウリ、覚醒"
//previous "2040沙紅羅_フウリ.nss"
//previous "a2040沙紅羅_フウリ.nss"

////////////footer////////////
//next "沙紅羅"（"flkagome1a" = ture） "a2047沙紅羅_フウリ.nss"
//next "フウリ"（"flkagome1a" = ture） "a2047沙紅羅_フウリ.nss"

//next "沙紅羅" "2047沙紅羅_フウリ.nss"
//next "フウリ" "2047沙紅羅_フウリ.nss"

////////////body////////////


//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2045);}

//◆場所：ＵＰ＋_屋外セット_炎上
	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);
	CreateTextureSP("絵背景100", 100, Center, -120, "cg/bg/l/bg1202300ＵＰ＋_セット上_炎上_l.jpg");
	SetBlur("絵背景100", true, 2, 500, 80, false);

	SetVolumeEX("@x*", 1000, 0, null);

	FadeDelete("上背景", 300, null, true);


//◆演出指定：ここ、一瞬音がしなくなる感じで。
//あきゅん「β演出：このいただきますのくだり、静寂からかっと演出多様で超必殺技みたいに格好良くしてほしい」



//窓準備
	CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵演色2", 1510, "#000000");
	CreateColorEX("絵窓/絵演色", 1510, "#00900FF");
	CreateTextureEXadd("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef044_火花c.png");
	Zoom("絵窓/絵演背景", 0, 2500, 2500, null, true);
//	DrawEffect("絵窓/絵演背景", 1000, "MiddleWave", 0, 300, null);

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1910, center, middle, "cg/bu/buフウリ_前のめり_shout.png");
	CreateTextureEX("絵窓/絵演立絵2", 1910, center, middle, "cg/bu/buフウリ_前のめり_smile.png");
	Request("絵窓/絵演立絵*", Smoothing);
	Move("絵窓/絵演立絵*", 0, @0, @0, null, true);
	Zoom("絵窓/絵演立絵*", 0, 800, 800, null, true);

//エフェクトどちらがいいか
//	CreateTextureEX("絵背景枠01", 10000, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
//	CreateTextureEX("絵背景枠02", 10000, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");
	CreateTextureEXadd("絵背景枠01", 10000, Center, Middle, "cg/ef/ライトニング.png");
	CreateTextureEXadd("絵背景枠02", 10000, Center, Middle, "cg/ef/ライトニング.png");
	Rotate("絵背景枠02", 0, @0, @180, @0, null,true);

	CutInLine02("@絵背景枠*");

//動作
	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 200, @0, 167, Dxl2, false);
	Move("絵背景枠02", 200, @0, 359, Dxl2, false);
//動作
	Zoom("絵窓", 300, 1000, 500, Dxl2, true);
	Move("絵窓/絵演立絵*", 300, @0, @10, Dxl2, false);
	Fade("絵窓/絵演色", 200, 300, null, false);
	Fade("絵窓/絵演立絵", 300, 1000, null, true);

{
//	St("C",700, @0,@0,"buフウリ_前のめり_shout");
//	FadeSt("C",200,true);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/450100010wfu">
「あらためて！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：パチン！　手を合わせる！

//	St("C",700, @0,@0,"buフウリ_前のめり_smile");
//	FadeSt("C",200,true);
	RotetoLoopOGM02("ループプロセス01","@絵窓/絵演背景");


//おがみ：ＳＥ：リバーブエフェクト
	CreateSE("SE01a","se動作_柏手");
	CreateSE("SE01b","se動作_柏手");
	CreateSE("SE01c","se動作_柏手");
	CreateSE("SE01d","se動作_柏手");
	MusicStart("SE01a",0,1500,0,1000,null,false);
	Wait(80);
	MusicStart("SE01b",0,1100,0,1000,null,false);
	Wait(80);
	MusicStart("SE01c",0,700,0,1000,null,false);
	Wait(80);
	MusicStart("SE01d",0,400,0,1000,null,false);

	Move("絵背景枠01", 200, @0, 71, Dxl2, false);
	Move("絵背景枠02", 200, @0, 455, Dxl2, false);
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	Shake("絵窓/絵演立絵*", 500, 15, 0, 0, 0, 1000, Dxl2, false);
	Zoom("絵窓/絵演立絵*", 200, 1500, 1500, Dxl2, false);
	Fade("絵窓/絵演色", 200, 1000, null, false);
	Fade("絵窓/絵演背景", 200, 1000, null, false);
	Fade("絵窓/絵演立絵", 200, 0, Axl2, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/450100020wfu">
「いただきます！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SoundPlay("@xbgm30",0,450,true);


	Move("絵背景枠01", 100, @0, 262, null, false);
	Move("絵背景枠02", 100, @0, 262, null, false);
	Zoom("絵窓", 100, 1000, 0, null, true);
	Fade("絵背景枠*", 100, 0, null, true);
	Delete("絵窓*");
	CutInLineStop02();
	Delete("絵背景枠*");

	RotetoLoopOGM02Stop();
	MoveFTP3("@絵背景100", 2000, 4, 3);

//	St("C",700, @0,@0,"buフウリ_前のめり_hard");
//	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/450100030wfu">
「あむあむ……」

{
//	St("C",700, @0,@0,"buフウリ_頬手_shy");
//	FadeSt("C",200,true);
}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/450100040wfu">
「ずるるる……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/450100050wfu">
「ごくごく……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	MoveFTP3stop();
	St("C",700, @0,@100,"fuフウリ_頬手_other");
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/450100060wfu">
「ぷはぁぁ……」

{	St("C",700, @0,@0,"fuフウリ_前のめり_smile");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/450100070wfu">
「ごちそうさまでした！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

/*
//マスク準備
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateColorEX("絵マスク/絵演色", 1510, "#993399");
	CreateTextureEXadd("絵マスク/絵演背景", 1520, 300, Middle, "cg/ef/ef002_汎用移動.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buミリＰb_通常_shock.png");
	Request("絵マスク/絵演立絵", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵2", 1530, 450, middle, "cg/bu/buミリＰb_通常_hard.png");
	Request("絵マスク/絵演立絵2", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵3", 1530, 450, middle, "cg/bu/buミリＰb_ショータイム_pinch.png");
	Request("絵マスク/絵演立絵3", Smoothing);

//動作準備
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵", 0, 512, 200, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);

	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, 450, InBottom, Dxl1, true);
*/


//マスク準備
	CreateTextureEX("絵マスク枠", 6010, 300, Middle, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureEX("絵マスク/絵演背景", 1520, 300, Middle, "cg/ef/ef_カット汎用01.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buミリＰb_ショータイム_angry.png");
	Request("絵マスク/絵演立絵", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵2", 1530, 450, middle, "cg/bu/buミリＰb_通常_hard.png");
	Request("絵マスク/絵演立絵2", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵3", 1530, 450, middle, "cg/bu/buミリＰb_ショータイム_pinch.png");
	Request("絵マスク/絵演立絵3", Smoothing);

//動作準備
	Move("絵マスク枠", 0, 1024, 0, null, true);
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵", 0, 512, 200, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);

	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Move("絵マスク枠", 200, 0, 0, Dxl3, false);
	Fade("絵マスク枠", 200, 1000, null, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, 450, InBottom, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/450100080mrp">
『もう、消えたッ！？』

{	Fade("絵マスク/絵演立絵", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵2", 200, 1000, Dxl1, true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/450100090mrp">
『速い！　速すぎるわフウリ選手！』

//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/450100100mrp">
『山のようにそびえ立つ鬼武者ラーメンを、一気！
　たった三口で喰らい尽くしてしまった！』

{	Fade("絵マスク/絵演立絵2", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵3", 200, 1000, Dxl1, true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/450100110mrp">
『フウリ……恐ろしい子！』

{	Move("絵マスク枠", 200, 1024, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵3", 200, 512, 200, Axl1, false);
	Fade("絵マスク/絵演立絵3", 200, 0, null, true);
	St("C",700, @0,@0,"fuフウリ_前のめり_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/450100120wfu">
「さあ、どんどん運んでくるのですー！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Delete("絵マスク/絵*");
	Delete("絵マスク");

	Fade("絵背景100", 200, 0, null, false);
	DeleteAllSt(200,true);

{	St("C",700, @0,@0,"buミリＰb_ショータイム_shout");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/450100130mrp">
『ほら、スタッフ！　ぼーっとしないで次の食べ物！』

{	St("MR",700, @0,@0,"buＡＤ_通常_angry");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/450100140adi">
「は、はい！」

{
	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameMR/MR*", 200, @100, @0, Axl1, false);
	DeleteSt("MR",200,true);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_shock");
	FadeSt("ML",200,true);
	SetVolumeEX("SE01", 1500, 0, Axl2);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/450100150skr">
「フウリが覚醒した……！？」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/450100160skr">
「ってかありえねぇ早さだし。
　夢でも見てるのか……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2046);}

	CreateTextureEX("絵背景100", 100, Center, -120, "cg/bg/l/bg1202300ＵＰ＋_セット上_炎上_l.jpg");

{	St("MR",700, @0,@0,"bu千秋_朗らか_smile");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/450100170ktt">
「昔から、食欲は人一倍ありましたから」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/450100180skr">
「ふぅん……」

{	DeleteSt("ML",200,false);
	Fade("絵背景100", 200, 1000, null, true);
	St("C",700, @0,@50,"fuフウリ_前のめり_smile");

	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/450100190wfu">
「んんんん……おいち――――い」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



/*
//マスク準備
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateColorEX("絵マスク/絵演色", 1510, "#993399");
	CreateTextureEXadd("絵マスク/絵演背景", 1520, 300, Middle, "cg/ef/ef002_汎用移動.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buミリＰb_通常_shock.png");
	Request("絵マスク/絵演立絵", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵2", 1530, 450, middle, "cg/bu/buミリＰb_通常_hard.png");
	Request("絵マスク/絵演立絵2", Smoothing);

//動作準備
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵", 0, 512, 200, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);

	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, 450, InBottom, Dxl1, true);
*/



//マスク準備
	CreateTextureEX("絵マスク枠", 6010, 300, Middle, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureEX("絵マスク/絵演背景", 1520, 300, Middle, "cg/ef/ef_カット汎用01.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buミリＰb_ショータイム_shout.png");
	Request("絵マスク/絵演立絵", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵2", 1530, 450, middle, "cg/bu/buミリＰb_通常_hard.png");
	Request("絵マスク/絵演立絵2", Smoothing);

//動作準備
	Move("絵マスク枠", 0, 1024, 0, null, true);
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵", 0, 512, 200, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);

	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Move("絵マスク枠", 200, 0, 0, Dxl3, false);
	Fade("絵マスク枠", 200, 1000, null, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, 450, InBottom, Dxl1, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/450100200mrp">
『復活した「ＫＩＲＡ」超大盛り６人前カルボナーラも、瞬く間に食べ尽くしてしまった！』

{	Fade("絵マスク/絵演立絵", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵2", 200, 1000, Dxl1, true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/450100210mrp">
『圧倒的！　圧倒的すぎるわ！』

{	Fade("絵マスク/絵演立絵2", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵", 200, 1000, Dxl1, true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/450100220mrp">
『秋葉原チーム！
　この勢いで一気に追っ手をブッちぎっちゃうの！？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク枠", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵*", 200, 512, 200, Axl1, true);
	Delete("絵マスク/絵*");
	Delete("絵マスク");

	DeleteAllSt(200,true);

//あきゅん「演出：脇ルート繋ぎのために調整しました」



	EndScene();
}
