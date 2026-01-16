
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1820フウリ.nss_MAIN
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
	$GameName = "1830フウリ.nss";

}

scene 1820フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1130">
////////////header////////////
//file name "1820フウリ.nss"
//title "ミリオンプロデューサーミリＰの最終課題"
//previous "1810ノーコ_フウリ.nss"

////////////footer////////////

//next "フウリ" "1830フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

	OnBG(100,"bg0501111スーパーノヴァ_正面_通常");
	FadeBG(0,true);

	CreateSE("SE01","seガヤ_ざわざわ_l");
	MusicStart("SE01",300,500,0,1000,null,true);

	if($PreGameName=="1810ノーコ_フウリ.nss"){
	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);
	}else{
	FadeDelete("上背景",0,null,true);
	}


{	ClockPass(1820);}
//◆場所：スーパーノヴァ_正面
//	OnBG(10,"bg0501111スーパーノヴァ_正面_通常");
//	FadeBG(0,true);


{	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200200010wfu">
（ぅ……さっきよりも人が多い）

{	St("C",700, @0,@0,"buフウリ_胸手_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200200020wfu">
（いや、でも！
　ノーコちゃんにも、約束しました！）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200200030wfu">
（ここで逃げるわけにはいきません！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指示：ここ、ＳＤ絵的なものが欲しい
	DeleteAllSt(200,true);
	SetVolume("SE*", 1000, 0, null);

	shima_taiko(2000,"cg/yur/yurIF背景01.png","cg/yur/yurIF背景03.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200200040wfu">
「よおおおおおっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆ＳＥ：腹鼓
	shima_taikopon();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020a]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200200050wfu">
「ぽん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	shima_taikoDelete();

{	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020b]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200200060wfu">
「よーし！　がんばります！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


{	ClockPass(1821);}


	SetVolume("SE*", 1000, 0, null);


//※下倉注：切り替えで音楽と背景が一気に表示されるとユーザーの注意が散漫になるので「音→背景→キャラ」の順に意識を誘導 2010/11/18
	SoundPlay("@xbgm20",1000,450,true);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);




	DeleteSt("C",0,true);
//◆場所：スーパーノヴァ_ライブ会場
	OnBG(10,"bg0502100スーパーノヴァ_ライブ会場_通常");
	FadeBG(0,true);

	DrawDelete("黒幕１", 1000, 100, null, "blind_01_00_1", true);


{	St("MR",700, @+50,@0,"buフウリ_通常_normal");
	Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200200070wfu">
「鈴ちゃん！　お疲れ様でーす！」

{	St("ML",700, @0,@0,"bu鈴_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/200200080fjr">
「おつかれさまー」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//	DeleteSt("L",200,,true);

{	St("ML",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/200200090fjr">
「よしよし、遅れずに来たわね」

{	St("ML",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/200200100fjr">
「それじゃ、あとひとり……と」

{	St("MR",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200200110wfu">
「あらら？　もしかしてニコちゃんは……」

{	St("ML",700, @0,@0,"bu鈴_シリアス_angry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/200200120fjr">
「遅刻！　こんな大事な日に遅刻するなんて。
　『スーパー・スーパーノヴァ』をなんだと思ってるの！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200200130wfu">
「まあまあ鈴ちゃん、怒らないで。
　ニコちゃんもお勉強で大変なんですし」

{	St("ML",700, @0,@0,"bu鈴_シリアス_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/200200140fjr">
「でも！
　今日はアタシたちの将来が決まる大切な日――」

{	St("MR",700, @0,@0,"buフウリ_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200200150wfu">
「だから、一生懸命練習したんです」

{	St("MR",700, @0,@0,"buフウリ_前のめり_shout");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200200160wfu">
「慌てなくても、いつもの力を発揮すれば大丈夫！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
{	St("MR",700, @0,@0,"buフウリ_通常_smile");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200200170wfu">
「でしょ、リーダー？」

{	St("ML",700, @0,@0,"bu鈴_シリアス_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/200200180fjr">
「……わかったわ」

{	St("ML",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/200200190fjr">
「今更ジタバタしたってしょうがない！
　先にできるところだけリハ、しちゃいま――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1822);}


	TextBoxDelete(150);

	DeleteAllSt(200,true);

//※下倉注：ここＢＧＭ切ってミリＰにゆるキャラバンテーマを紐づけ
	SetVolume("@xbgm*", 500, 0, null);
//嶋：ギャグっぽくやけに大仰しい音に
//◆ＳＥ：扉が開く
	CreateSE("SE01","se動作_ドア開ける04");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(2000);

//◆演出指示：ＢＧＭ止まり、足音だけが響く
	CreateSE("SE02","se動作_歩く03_l");
	MusicStart("SE02",0,700,0,1000,null,true);

	Wait(3000);

	CreateSE("SE11","se擬音_ギャグ_きゃるーん");
	CreateTextureEXadd("絵キラキラ１", 900, Center, Middle, "cg/ef/efキラキラa.png");
	CreateTextureEXadd("絵キラキラ２", 900, Center, Middle, "cg/ef/efキラキラb.png");
	$キラキラナット名１ = @絵キラキラ１;
	$キラキラナット名２ = @絵キラキラ２;
	$キラキラタイム = 1000;
	CreateProcessEX("プロセス１", "KirakiraLoop");

	CreateColorEXadd("絵色200", 990, "WHITE");
	$Warpトランジ = @絵色200;
	$Warpトランジ速度 = 4000;
	$Warpトランジなめらかさ = 500;
	CreateProcessEX("プロセス３", "TransitionLoop");

	St("C",700, @+30,@0,"buミリＰa_通常_happy");

	Wait(16);

	SetVolume("SE02", 300, 0, null);
	CreateSE("SE03","se動作_着地");

	Request("プロセス１", Start);
	Fade("絵色200", 0, 200, null, true);
	Request("プロセス３", Start);

	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE11",0,700,0,1000,null,false);
	Move("@StNameC/C*", 200, @-30, @0, Dxl1, false);
	FadeSt("C",200,true);

	SoundPlay("@xbgm16",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060a]
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200200mpt">
「はろぉ～！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	DeleteSt("C",200,true);
//	St("ML",700, @0,@0,"bu鈴_通常_smile");
//	FadeSt("ML",200,true);

	CreateMaskAXLSP("マスク", 2000, -1024, 0, "ciスラッシュ_05_00", false, "ciスラッシュ_05_00z");

	CreateTextureSP("マスク/絵背景", 1010, 0, Middle, "cg/bg/m/bg0502100スーパーノヴァ_ライブ会場_通常_m.jpg");
	CreateTextureSP("マスク/絵立絵", 1100, -170, 30, "cg/bu/bu鈴_通常_shock.png");
	Move("マスク/絵*", 0, @-1024, @0, null, true);

	Move("マスク/絵*", 600, @1024, @0, Dxl3, false);
	Move("マスク*", 600, @800, @0, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060b]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/200200210fjr">
「あ……きた！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Request("@マスク*", Disused);
	Move("マスク/絵*", 300, @-1024, @0, Dxl3, false);
	Move("マスク*", 300, @-800, @0, AxlDxl, false);

{	St("C",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060c]
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200220mpt">
「そう、来ちゃったの！」

{	St("C",700, @0,@0,"buミリＰa_ショータイム_happy");
	FadeSt("C",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200230mpt">
「この、ミリオンプロデューサー！
　ミリＰさんの、お出ましなのよォッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：拍手
{	CreateSE("SE01","se動作_拍手01_l");
	MusicStart("SE01",200,1400,0,1000,null,true);}

	FadeDelete("絵キラキラ*", 1000, null, false);
	FadeDelete("絵色200", 1000, null, false);
	WaitKey(1000);
	Delete("絵キラキラ*");
	Delete("絵色200");
	Delete("プロセス*");

	DeleteSt("C",200,true);

{	SetVolume("SE01", 2000, 0, null);
	St("ML",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/200200240fjr">
「お、おはようございますっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200250mpt">
「おはよう、鈴ちゃんに――」

{	St("MR",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("MR",200,true);}
//◆音声指示：意味ありげに
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200260mpt">
「フウリちゃん」

{	St("ML",700, @-50,@0,"buフウリ_通常_normal");
	DeleteSt("MR",200,false);
	Move("@StNameML/ML*", 200, @+50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200200270wfu">
「お、おはようございます……」

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200280mpt">
「今日の準備は、万端かしら？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu鈴_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/200200290fjr">
「はい、もちろん！」

{	St("ML",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/200200300fjr">
「この日のために、第一宇宙速度、できる限りの準備を精一杯やってきましたっ！」

{	St("ML",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/200200310fjr">
「今日のライブ、成功したら――」

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200320mpt">
「ええ、約束するわ」

{	St("MR",700, @0,@0,"buミリＰa_ショータイム_happy");
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200330mpt">
「アタシプロデュースで、メジャーデビューさせて――
　ア・ゲ・ル」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1823);}

{	St("ML",700, @0,@0,"bu鈴_シリアス_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/200200340fjr">
「よろしくお願いしますっ！！
　私たち、一生懸命頑張りますからっ！」

{	St("MR",700, @0,@0,"buミリＰa_通常_smile");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200350mpt">
「うん、その意気その意気」

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200360mpt">
「あ、ところでフウリちゃん？
　大切なお話があるんだけど、来てくれる？」

{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200200370wfu">
「あ、私ですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buミリＰa_通常_smile");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200380mpt">
「ここじゃなんだし、控え室に行きましょう」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200200390wfu">
「は……はい」

//◆音声指示：小声
{
	DeleteSt("ML",200,true);
	St("ML",700, @-100,@0,"bu鈴_シリアス_shout");
	St("MR",700, @0,@0,"buフウリ_通常_normal");
	Move("@StNameML/ML*", 200, @+50, @0, null, false);
	FadeSt("ML",200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/200200400fjr">
「フウリちゃん！　失礼、ないようにねっ！」

{	St("MR",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200200410wfu">
「が……がんばります……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	DeleteAllSt(200,true);

	SetVolume("@xbgm*", 1000, 0, null);


	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100,"bg0503100スーパーノヴァ_控え室_通常");
	FadeBG(0,true);


{	ClockPass(1824);}

//◆ＳＥ：扉を開ける
//◆場所：スーパーノヴァ_控え室

	DrawDelete("黒幕１", 500, 100, null, "blind_01_00_1", true);

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200420mpt">
「ゴメンねリハ前に呼び出しちゃって」

{	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200430mpt">
「ん……？　どうしたの？」

{	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200440mpt">
「悪いことでもあった？　顔色が――」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200200450wfu">
「いえ。なにも、ないです」

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200460mpt">
「ふぅん……ホントならいいんだけど」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200200470wfu">
「…………」

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200480mpt">
「ま、デビューするチャンスだものね。緊張して当然か」

{	St("MR",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200490mpt">
「でもねぇ。
　さっき、ひとつだけ付け加え忘れたことがあるの」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200200500wfu">
「付け加え忘れた……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200510mpt">
「もし成功したら、アタシは責任をもってあなたをメジャーデビューさせてあげる。ただし――」

{	SoundPlay("@xbgm24",1000,450,true);
	St("MR",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200520mpt">
「デビューできるのは、あなただけ」

{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200200530wfu">
「…………へ？」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200200540wfu">
「あの、それってどういう――」

{	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200550mpt">
「『第一宇宙速度』は解散」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1825);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200560mpt">
「あなたはアタシのプロデュースする新しいバンド『アンドロギュノス』のドラマーとして活躍することになるわ！」

{	St("MR",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200570mpt">
「……どう？　嬉しいでしょう」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200200580wfu">
「な……なんで？」

{	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200590mpt">
「ミリオンを売るためよ」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200200600wfu">
「みりおん……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200200610wfu">
「あの、でも……私はできれば、今のふたりと――」

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200620mpt">
「他のふたりだって、悪くはないわ。でも――」

{	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200630mpt">
「『悪くはない』――で通用する世界じゃないのよ」

//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200640mpt">
「秋葉原の地下アイドルが連日ステージを行うミニライブハウス――『スーパーノヴァ』」

{	St("MR",700, @0,@0,"buミリＰa_通常_shout");
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200650mpt">
「多くのパフォーマーの中でも抜きん出た人気と実力を誇る顔！　それが貴方たち第一宇宙速度」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200660mpt">
「それだけの実力があるからこそ、アタシみたいな大物プロデューサーからも声がかかるワケ」


{	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200670mpt">
「でも、ね」

{	St("MR",700, @0,@0,"buミリＰa_通常_shout");
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200680mpt">
「万人が見とれるナイスバディーだけど、音楽的才能はまだ発展途上のボーカル＆ギター！！」

//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200690mpt">
「音楽的才能には恵まれリーダーシップも抜群だが、身体が少し、いえ結構、いやいやかなり残念なベース！」


{	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200700mpt">
「言ってしまえば、まだまだ秋葉原ローカルレベルなのよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1826);}

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buミリＰa_ショータイム_normal");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200710mpt">
「でもそんなふたりとは違って、あなたはパーフェクト！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//※下倉注：「美しく、ボリューミーな体つき！」以下の演出、申し訳ないですが控えめにしていただけますでしょうか。フウリの心理に焦点を当てるシーンなので。 2010/11/18
//嶋：中途半端にやっても微妙なんで全削除しました 2010/11/19
//おがみ：曲がシリアスに変更されており、シーンがマジ会話の雰囲気になってましたのでミリPを出しておきます 2010/11/24

/*
	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);

	St("C",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("C",200,true);

	CreateSE("SE01","se擬音_ギャグ_ドーン");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");
*/

{	St("MR",700, @0,@0,"buミリＰa_ショータイム_pride");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0171]
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200720mpt">
「美しく、ボリューミーな体つき！」

{
//	DeleteSt("C",200,true);
}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200730mpt">
「見るものをとろけさせる天使の微笑み！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("MR",700, @0,@0,"buミリＰa_ショータイム_normal");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0172]
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200740mpt">
「いつも控えめだがやるときはやるその心意気！」

{	St("MR",700, @0,@0,"buミリＰa_ショータイム_pride");
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200750mpt">
「そして何より――あらゆる技術、あらゆる曲調、あらゆるグルーヴに対応できる、その順応性の高さ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200200760wfu">
「わ……私、そんな大層な力は――」

{	St("MR",700, @0,@0,"buミリＰa_ショータイム_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200770mpt">
「アタシの目は誤魔化せないわッ！」


{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200780mpt">
「あなたはどんなドラマーのどんな演奏も、一度聴いただけで完璧に再現してしまう」

{	St("MR",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200790mpt">
「どこでその技術を磨いたのかは聞かないけど、保証する。
　あなたのその能力は、第一線でも通用するわ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1827);}

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buミリＰa_通常_shout");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200800mpt">
「『アンドロギュノス』には、あなたの力が必要なの！」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200200810wfu">
「でも――」

{	St("MR",700, @0,@0,"buミリＰa_通常_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200820mpt">
「『どうしても有名になりたい！』
　『私には、叶えたい夢がある――！！』」

{	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200830mpt">
「あの言葉は、嘘だったの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200200840wfu">
「………………」

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200850mpt">
「『アンドロギュノス』は、望みを叶える特急券」

{	St("MR",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200860mpt">
「もしかしたら――終電かもしれないわよ」

{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200200870wfu">
「………………」

{	St("MR",700, @0,@0,"buミリＰa_ショータイム_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200880mpt">
「どう？　アタシの提案を――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	DeleteSt("MR",200,true);

	SetVolume("@xbgm*", 500, 0, null);

	SoundPlay("@xbgm20",0,1,true);


//◆ＳＥ：携帯電話が鳴る
	CreateSE("SE01","seメカ_携帯_メール着信_太四郎_l");
	MusicStart("SE01",0,700,0,1000,null,true);

{	St("C",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200890mpt">
「ごめんなさい。電話だわ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1828);}

	TextBoxDelete(150);
	DeleteSt("C",200,true);


//◆演出指定：背後でミリＰの電話の内容をＯＦＦでＢＧＭ的に流す。
//◆演出指定：後にこのミリＰの正体がわかった後この台詞を聞くと、誰と話していたのかがわかる。

	CreateSE("SE02","seメカ_携帯_電子音01");

	SetVolume("SE01", 100, 0, null);
	MusicStart("SE02",0,700,0,1000,null,false);

	1820_seprocess();

//※下倉注：ミリＰはオフ台詞なので思いっきり音量を低くして下さい。あくまでユーザーの意識はフウリに行くように。 2010/11/18


/*=====================================================================================
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0211]
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200900mpt">
「あ……もしもし？」
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200910mpt">
「あ、そう。覚悟が決まったのね」
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200920mpt">
「サポートの人も見つかった？
　ミヅハは追い出すアテができてるわけ？」
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200930mpt">
「……ＯＫ。期待してるわよ」
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200940mpt">
「口調は気にしないで。こっちも色々あるのよ！」
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200950mpt">
「そういうこと」
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200200960mpt">
「わかったわ。半田明神ね」
</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(150);
=====================================================================================*/

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200200970wfu">
（私だけ、デビューだなんて……）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200200980wfu">
（そんなのいやです……いやなんです……）

{	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200200990wfu">
（でも……でも……）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200201000wfu">
（もし受け入れたら、私はメジャーデビューして……）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200201010wfu">
（メジャーデビューしたら、きっと……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);

//◆ＳＥ：ノック
	CreateSE("SE01","se動作_ノック01");

	1820_sedelete();
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);

	SoundPlay("@xbgm20",500,300,true);

	CreateSE("SE02","se動作_ドア開ける01");
	MusicStart("SE02",0,700,0,1000,null,false);

//◆ＳＥ：扉開ける



{	ClockPass(1829);}

//◆音声指示：小声
{	St("ML",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/200201020fjr">
「あっ、あのっ！　すいません！」

//◆音声指示：小声
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/200201030fjr">
「そろそろリハーサルが――！」

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200201040mpt">
「あ、ごめんなさい。もうそんな時間ね」

//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200201050mpt">
「アタシは用事ができたわ。また本番で会いましょう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu鈴_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/200201060fjr">
「はい！」

{	St("MR",700, @0,@0,"buミリＰa_通常_smile");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/18/200201070mpt">
「それじゃ、バイな～ら～」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Move("@StNameMR/MR*", 200, @+100, @0, Dxl1, false);
	DeleteSt("MR",200,true);

//◆演出指示：時間をおいて
	CreateSE("SE01","se動作_歩く03_l");
	MusicStart("SE01",0,500,0,1000,null,true);

	Wait(2000);

	SetVolume("SE01", 1000, 0, null);

	Wait(1000);


{	St("MR",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0251]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/200201080fjr">
「……ふぅ」

{	St("MR",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/200201090fjr">
「緊張するわね。さすがのカリスマだわ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/200201100fjr">
「って、一息ついてる場合じゃない！　リハが――」

{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	DeleteSt("MR",200,true);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200201110wfu">
「…………」

{	St("MR",700, @0,@0,"bu鈴_通常_sad");
	DeleteSt("ML",200,true);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/200201120fjr">
「ど……どうしたの？　やっぱり顔色が――」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,true);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/200201130wfu">
「な、なんでもないです……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);



	EndScene();
}
