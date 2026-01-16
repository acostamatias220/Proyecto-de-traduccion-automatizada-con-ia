
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ab2133フウリ.nss_MAIN
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
//	$GameCircle=false;

//※↑ab2051ノーコ.nssの飛び方を参考に設定（mngw 10/14）

}

scene ab2133フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="540">
////////////header////////////
//file name "ab2133フウリ.nss"
//title "逃げるなんて、怪しいです！"
//previous "ab2131千秋_恵那_フウリ.nss"

////////////footer////////////
//next "フウリ" "2139フウリ.nss"

////////////body////////////

//■再定義定型文

	TextBoxDelete(150);

	PrintBG("上背景", 30000);
	SoundPlay("@xbgm03",0,450,true);

	DeleteAllSt(0,false);
	Delete("@OnBG*");

	CreateColorSP("絵色黒", 5000, "#000000");

//◆場所：ショウビル_正面
	OnBG(10,"bg1901100ショウビル_正面_通常");
	FadeBG(0,true);

	DrawDelete("上背景", 300, 100, null, "slide_01_02_1", true);

	WaitKey(1000);

//あきゅん「修正指示：走りＳＥの追加などお願いします」
//※対応しました（mngw 11/18）

	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",0,700,0,1000,null,true);

	DrawDelete("絵色黒", 300, 100, null, "slide_01_02_1", true);




{	ClockPass(2133);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @120,@0,"buフウリ_前のめり_hard");
	Move("@StNameC/C*", 200, @-120, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100010wfu">
「なんで逃げるんですかッ！？」

{	Move("@StNameC/C*", 200, @-120, @0, DxlAuto, false);
	DeleteSt("C", 200,true);
	St("C",700, @120,@0,"bu千秋_通常_fear");
	Move("@StNameC/C*", 200, @-120, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/ab21/330100020ktt">
「なんでって、フウリさんが追いかけるから――」

{	Move("@StNameC/C*", 200, @-120, @0, DxlAuto, false);
	DeleteSt("C", 200,true);
	St("C",700, @120,@0,"buフウリ_前のめり_hard");
	Move("@StNameC/C*", 200, @-120, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100030wfu">
「大嘘です！」

{	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);
	}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100040wfu">
「やましいところが、あるはずー！」

{	Move("@StNameC/C*", 200, @-120, @0, DxlAuto, false);
	DeleteSt("C", 200,true);
	St("C",700, @120,@0,"bu千秋_驚天_shy");
	Move("@StNameC/C*", 200, @-120, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/ab21/330100050ktt">
「ないない！　そんなの――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolumeEX("SE01", 1500, 0, null);

	Move("@StNameC/C*", 200, @-120, @0, DxlAuto, false);
	DeleteSt("C", 200,true);

	TextBoxDelete(150);

	SceneOut(5000, 300, "slide_01_02_0");


//◆場所：秋葉原駅_正面

	OnBG(10,"bg0201111秋葉原駅_正面_通常");
	FadeBG(0,true);

	SceneIn(300, "slide_01_02_1");

	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",0,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @120,@0,"buフウリ_前のめり_hard");
	Move("@StNameC/C*", 200, @-120, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100060wfu">
「だって、だっておかしいです！」


//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100070wfu">
「人手が足りないところに、急に現れたり！」



//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100080wfu">
「あんなたくさんのおまんじゅうを、一気に食べたり！」



//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100090wfu">
「私が困ってるところに突然、助けに来てくれたり！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE01", 1500, 0, null);

	Move("@StNameC/C*", 200, @-120, @0, DxlAuto, false);
	DeleteAllSt(200,true);

	TextBoxDelete(150);

	SceneOut(5000, 300, "slide_01_02_0");

{	ClockPass(2134);}


//◆場所：秋葉原_万世橋

	OnBG(10,"bg0104200秋葉原_万世橋_閉店");
	FadeBG(0,true);

	SceneIn(300, "slide_01_02_1");

	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",0,700,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("C",700, @120,@0,"buフウリ_前のめり_hard");
	Move("@StNameC/C*", 200, @-120, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100100wfu">
「もしもどっちかがニセモノで、私を助けるために化けてくれたなら――！」



//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100110wfu">
「それは、きっと、私の昔の知り合いで――」



//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100120wfu">
「だから、あなたの本当の名前は――」

{	St("C",700, @0,@0,"buフウリ_前のめり_shout");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100130wfu">
「貫太さん！　織田貫太さん、でしょう！？」

{	Move("@StNameC/C*", 200, @-120, @0, DxlAuto, false);
	DeleteSt("C", 200,true);
	St("C",700, @120,@0,"bu千秋_通常_angry");
	Move("@StNameC/C*", 200, @-120, @0, DxlAuto, false);
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/ab21/330100140ktt">
「――――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE01", 1500, 0, null);

	TextBoxDelete(150);

	SceneOut(5000, 300, "slide_01_02_0");
	DeleteAllSt(0,true);

{	ClockPass(2135);}


//◆場所：柳神社_境内
	OnBG(10,"bg1501100柳神社_境内_通常");
	FadeBG(0,true);

	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",0,700,0,1000,null,true);

	SetVolumeEX("@xbgm*", 4000, 0, null);
	SceneIn(300, "slide_01_02_1");




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("C",700, @120,@0,"buフウリ_前のめり_hard");
	SetVolumeEX("SE01", 1500, 0, null);
	Move("@StNameC/C*", 200, @-120, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100150wfu">
「貫太さんッ！！　逃げても無駄ですっ！」


//あきゅん「β演出：音声同期表情変化」
//あきゅん「修正指示：ここでおたぬき様にアップ」
//※おたぬき様アップに対応しました（mngw 11/18）

{	DeleteAllSt(200,true);
	CreateTextureEX("絵背景100_l", 50, Center, Middle, "cg/bg/l/bg1501100柳神社_境内_通常_l.jpg");

	LcPro_ab2133otanukisama();

/*
	Move("絵背景100_l", 0, 0, @0, null, true);
	Zoom("絵背景100_l", 500, 2500, 2500, Axl3, false);
	Move("絵背景100_l", 500, 950, @0, Axl3, false);
	Fade("絵背景100_l", 500, 1000, null, true);
	Shake("絵背景100_l", 300, 10, 10, 0, 0, 500, null, false);
*/
}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100160wfu">
「大人しく――いた！！」

{	CreatePlainSP("絵板写", 5000);
	Wait(16);
	Request("@Pro*", Stop);
	Move("絵背景100_l", 0, 0, @0, null, true);
	Zoom("絵背景100_l", 0, 2500, 2500, Axl3, false);
	Move("絵背景100_l", 0, 950, @0, Axl3, false);
	Fade("絵背景100_l", 0, 1000, null, true);
	Delete("@Pro*");
	Delete("絵板写");}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100170wfu">
「こらー！　おいなり様に化けても無駄です！
　神妙に――神妙に――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);
	Wait(16);
	St("C",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("C",0,true);
	FadeDelete("絵背景100_l", 0, null, true);
	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100180wfu">
「あれ？」


//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100190wfu">
「これは、おいなりさまじゃなくて――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateTextureEX("絵背景100_l", 50, Center, Middle, "cg/bg/l/bg1501100柳神社_境内_通常_l.jpg");
	Move("絵背景100_l", 0, @512, @0, null, true);

	DeleteAllSt(500,false);
	Fade("絵背景100_l", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050a]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100200wfu">
「本当に、おたぬきさま……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);
	Wait(16);
{	DeleteAllSt(0,false);
	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",0,true);
	Fade("絵背景100_l", 0, 0, null, true);}
	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050b]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100210wfu">
「貫太さんじゃ、ない？」


{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100220wfu">
「うう……計略に引っかかってしまいました……」

{	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100230wfu">
「しかし、まだ遠くには行ってないはず……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060a]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100240wfu">
「辺りをくまなく探せばきっと……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆音声指示：小声
//【小碓千秋】
//<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/330100250kit">
//「あ！　あの貫太さん――」

	CreateVOICE("小碓千秋","ab21/330100250kit");
	MusicStart("小碓千秋",0,700,0,1000,null,false);

	Wait(1000);

{	St("C",700, @0,@0,"buフウリ_通常_hard");
	Shake("@StNameC/C*", 100, 8, 8, 0, 0, 500, null, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060b]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100260wfu">
「むむー？　今、声が……？」

{	SetVolumeEX("小碓千秋", 100, 0, null);
	St("C",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100270wfu">
「あの茂みの辺りが、怪しい？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100280wfu">
「様子を探って――」


{	DeleteSt("C", 200,true);}

//◆ＳＥ：ウウウウウウ！！
{
	CreateSE("SE01","se動物_ネコ_威嚇沢山_l");
	MusicStart("SE01",0,700,0,1000,null,true);
	WaitKey(2000);
}

{	St("C",700, @0,@0,"buフウリ_頬手_shock");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 200, 0, 10, 0, 0, 500, null, false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100290wfu">
「きゅっ！」

{	SetVolumeEX("SE01", 1000, 0, null);
	St("C",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100300wfu">
「きゅう……ネコさんがたくさんいます」



//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100310wfu">
「怒らないで……別におっかないことは……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//◆ＳＥ：シャアアアアア！！
	CreateSE("SE02","se動物_ネコ_威嚇02");
	MusicStart("SE02",0,700,0,1000,null,false);
	WaitKey(100);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("C",700, @0,@0,"buフウリ_頬手_shock");
	Shake("@StNameC/C*", 300, 0, 10, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100320wfu">
「きゅ――――！」

{	SetVolumeEX("SE02", 1000, 0, null);
	St("C",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100330wfu">
「ご、ごめんなさい、ネコさん！」

{	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100340wfu">
「私は別に、脅かす気なんて――」


//◆ＳＥ：シャアアアアア！！
{
	CreateSE("SE03","se動物_ネコ_威嚇02");
	MusicStart("SE03",0,700,0,1000,null,false);
	WaitKey(1000);
	}

{	St("C",700, @0,@0,"buフウリ_通常_fear");
	Shake("@StNameC/C*", 300, 5, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100350wfu">
「きゅぅぅぅぅ……」


{	SetVolumeEX("SE03", 1000, 0, null);
	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100360wfu">
「これでは……探索できません……」

{	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100370wfu">
「しかし戻っていては……もう時間が……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2136);}


	TextBoxDelete(0);


	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

	DeleteAllSt(0,true);
	Delete("@OnBG*");

//◆ＳＥ：ドゴーン！　橋脚が崩れ落ちる音
	CreateSE("SE04","se環境_地鳴り03");
	Shake("@OnBG*", 4000, 5, 5, 0, 0, 500, null, false);
	MusicStart("SE04",0,700,0,1000,null,false);

	OnBG(10,"bg1501100柳神社_境内_通常");
	FadeBG(0,true);

//あきゅん「修正指示：ここは空を出さないままで画面揺らしてください」
//※対応しました（mngw 11/18）

//	CreateTextureEX("絵背景200", 8000, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");
//	Move("絵背景200", 0, @0, @-200, DxlAuto, false);
//	Fade("絵背景200", 0, 10000, null, false);

//	Move("絵背景200", 1000, @0, @300, DxlAuto, false);
//	Shake("絵背景200", 1200, 5, 5, 0, 0, 500, null, false);

	Shake("@OnBG*", 1200, 5, 5, 0, 0, 500, null, false);

	Fade("絵色白", 500, 0, null, true);
	Delete("絵色白");

	WaitKey(1000);

//	FadeDelete("絵背景200", 500, null, true);


//◆ＳＥ：ネコ「ふぎゃあああ」遁走

	CreateSE("SE05","se動物_ネコ_威嚇01");
	MusicStart("SE05",0,300,0,1000,null,false);
	WaitKey(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]


{	St("C",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100380wfu">
「え……今の音は？」

{	St("C",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100390wfu">
「もしかして――ノーコちゃん！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolumeEX("BG04", 3000, 0, null);
	SetVolumeEX("BG05", 1500, 0, null);

	DeleteSt("C", 200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]

　川向こうに、濛々と白煙が吹き上がる。

{	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100400wfu">
「なにか……あったのでしょうか」



//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100410wfu">
「…………」

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100420wfu">
「ううううう……！！」

{	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100430wfu">
「貫太さんも、気になるけど、でも――」

//◆ＳＥ：ブチブチ　葉っぱを取る
{
	CreateSE("SE06","se動作_葉っぱむしる");
	MusicStart("SE06",0,700,0,1000,null,false);
	}


{	St("C",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100440wfu">
「あのノーコちゃんを、放っておくわけにはいきません」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：走る足音
	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",0,700,0,1000,null,true);

	SceneOut(20000, 500, "blind_01_00_0");
	DeleteAllSt(0,true);
	Delete("@OnBG*");

//◆時間：ジャンプ
{	ClockPass(2138);}

	Wait(2000);

//◆場所：秋葉原_ガード下_破壊

	SetVolume("@SE01", 3000, 0, null);
	SceneIn(0, "blind_01_00_1");


		CreateTextureEX("絵背景400", 50, Center, Middle, "cg/bg/l/bg0102300秋葉原_ガード下_破壊_l.jpg");
		Zoom("絵背景400", 0, 2000, 2000, null, true);
		Move("絵背景400", 0, @300, @0, null, true);
		SetBlur("絵背景400", true, 2, 500, 50, false);

		Shake("絵背景400", 1000, 10, 10, 0, 0, 500, null, false);
		Fade("絵背景400", 200, 1000, null, false);
		Zoom("絵背景400", 300, 1000, 1000, Dxl2, true);

	OnBG(10,"bg0102300秋葉原_ガード下_破壊");
	FadeBG(0,true);


	WaitKey(500);

	SoundPlay("@xbgm31",0,450,true);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110a]

{	SetVolumeEX("SE01", 1500, 0, null);
	Shake("@OnBG*", 300, 5, 5, 0, 0, 500, null, false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100450wfu">
「な、なんですかコレはー！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);
	St("C",700, @0,@0,"buフウリ_頬手_shock");
	FadeSt("C",0,true);
	FadeDelete("絵背景400", 0, null, true);
	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110b]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100460wfu">
「こんなことが……ほんとに……？」


//◆ＥＶ："ev/ev0000ノーコカッター.txt"

{	TextBoxDelete(150);
	CreateTextureEX("絵背景300", 3000, Center, Middle, "cg/ev/ev0000ノーコカッターc.jpg");
	Zoom("絵背景300", 0, 2000, 2000, null, true);
	SetBlur("絵背景300", true, 2, 500, 50, false);

	DeleteSt("C", 200,false);

	CreateSE("SE02","se戦闘_風切り音05");
	MusicStart("SE02",0,700,0,1000,null,false);
	
	
	Fade("絵背景300", 200, 1000, null, false);
	Shake("絵背景300", 300, 10, 10, 0, 0, 500, null, false);
	Zoom("絵背景300", 300, 1000, 1000, Dxl2, true);

	Wait(500);
}


//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100470wfu">
「――ノーコちゃん！」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/330100480nko">
「あなたも、しにたいの」

//◆音声指示：遠くから


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateAXLWindowEX("横割り", "Y",3500, 100,384, false);
	WindowAXLZoom("横割り", "Y",0, 0, null, true);
	CreateTextureSP("横割り/絵背景", 3400, 0, Middle, "cg/bg/bg0102300秋葉原_ガード下_破壊.jpg");
	SetShade("横割り/絵背景", LIGHT);
	Zoom("横割り/絵背景", 0, 2000, 2000, null, true);

	CreateTexture("横割り/双六", 3410, @0, InBottom, "cg/bu/bu双六a_通常_pride.png");
	SetAlias("横割り/双六","横割り/双六");
	Move("横割り/双六", 0, 200, 96, null, true);

	WindowAXLZoom("横割り", "Y",300, 1000, Dxl2, true);


//◆音声指示：遠くから
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0115]

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/330100490ksr">
「……ふん」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	WindowAXLZoom("横割り", "Y",300, 0, Dxl2, false);
	Fade("@横割り/絵背景", 300, 0, Dxl2, true);
	Fade("@横割り/双六", 300, 0, Dxl2, true);
	Delete("@横割り*");

	PrintFadeNut("上背景", 200, true);

	DeleteAllSt(0,true);
	Delete("@絵背景300*");

	St("C",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("C",0,true);

	OnBG(10,"bg0102300秋葉原_ガード下_破壊");
	FadeBG(0,true);

	FadeDelete("上背景", 200, null, true);


//◆音声指示：遠くから
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]


//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100500wfu">
「一緒にいるのは――双六さん！？」

{	St("C",700, @0,@0,"buフウリ_通常_fear");
	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100510wfu">
「うう……ふたりとも、おっかないです……
　とにかく、ここは気を惹かないと……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("C",700, @0,@0,"buフウリ_胸手_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100520wfu">
「葉っぱを手に――」

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100530wfu">
「頭の中に、思い浮かべて――」

{	St("C",700, @0,@0,"buフウリ_胸手_shout");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330100540wfu">
「どろんぱっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateColorSP("絵色白", 710, "#FFFFFF");
	Wait(50);


//◆ＳＥ：ドロン！
	CreateSE("SE01","se動物_タヌキ_化ける01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("@xbgm*", 4000, 0, null);

	PrintFadeNut("上背景", 3000, true);

	DeleteSt("C", 0,true);
	Delete("@OnBG*");
	Delete("絵色白");

	FadeDelete("上背景", 1000, null, true);



	EndScene();
}
