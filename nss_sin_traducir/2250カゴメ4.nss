
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2250カゴメ4.nss_MAIN
{
//■カゴメチェック
	Kagome_IsChaeck("flkagome4");

//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		if($CharaName!="沙紅羅"&&$CharaName!="千秋"&&$CharaName!="恵那"&&$CharaName!="似鳥"&&$CharaName!="ノーコ"){
			$KagomePeople=true;
			call_scene $MainGameName;
		}
		GameMainSet2();
	}

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	//★カゴメアソビ//////////////////////////
	Kagome("flkagome4");

	//演出
	if($KagomePeople){
		//ラテ欄に戻らない際の演出：撃ったキャラのみ
		if($KagomeName=="生存"){
			SetVolume("@SE*", 2000, 0, NULL);
			SetVolume("@x*", 2000, 0, NULL);
			ClearFadeNut(2000,true);
		}else if($KagomeName=="死亡"){
			SetVolume("@SE*", 2000, 0, NULL);
			SetVolume("@x*", 2000, 0, NULL);
			ClearFadeNut(2000,true);
		}
	}

	if(#flkagome4){
		//☆成功（トゥルー）
		//#2250沙紅羅_恵那_似鳥_ノーコ_トゥルー_in=true;
		AXNL_ReachingTimeZone("2250沙紅羅_恵那_似鳥_ノーコ",true);
		//#2250フウリ_トゥルー_in=true;
		AXNL_ReachingTimeZone("2250フウリ",true);

		if($CharaName=="沙紅羅"){
			$GameName="2250沙紅羅_恵那_似鳥_ノーコ.nss";
		}else if($CharaName=="千秋"){
			GameBreak();//死亡
		}else if($CharaName=="恵那"){
			$GameName="2250沙紅羅_恵那_似鳥_ノーコ.nss";
		}else if($CharaName=="似鳥"){
			$GameName="2250沙紅羅_恵那_似鳥_ノーコ.nss";
		}else if($CharaName=="ノーコ"){
			$GameName="2250沙紅羅_恵那_似鳥_ノーコ.nss";
		}else if($CharaName=="フウリ"){
			$GameName="2250フウリ.nss";
		}else{
		}
	}else{
		//☆失敗（d）
		//#2250沙紅羅_恵那_似鳥_ノーコ_d_in=true;
		AXNL_ReachingTimeZone("2250沙紅羅_恵那_似鳥_ノーコ",true);

		if($CharaName=="沙紅羅"){
			$GameName="2250沙紅羅_恵那_似鳥_ノーコ.nss";
		}else if($CharaName=="千秋"){
			GameBreak();//死亡
		}else if($CharaName=="恵那"){
			$GameName="2250沙紅羅_恵那_似鳥_ノーコ.nss";
		}else if($CharaName=="似鳥"){
			$GameName="2250沙紅羅_恵那_似鳥_ノーコ.nss";
		}else if($CharaName=="ノーコ"){
			$GameName="2250沙紅羅_恵那_似鳥_ノーコ.nss";
		}else if($CharaName=="フウリ"){
			GameBreak();//死亡
		}else{
		}
	}
}

scene 2250カゴメ4.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="290">
////////////header////////////
//file name "2250カゴメ4.nss"
//title "マコトアソビ"
//previous "2240フウリ.nss"

////////////footer////////////
//カゴメアソビ成功 "flkagome4" = true
//カゴメアソビ失敗 "flkagome4" = false
//next "フウリ"（"flkagome3" = false） "c2250フウリ.nss"
//next "フウリ"（"flkagome4" = false） →死亡です
//next "フウリ" "2250フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintGO("上背景", 30000);

	ClockDelete(0,true);//時計は非表示！

//◆場所：柳神社_境内
//	OnBG(10,"bg1502100柳神社_お墓_通常");
//	FadeBG(0,true);
//	St("C",700, @0,@0,"buフウリ_通常_normal");
//	FadeSt("C",0,true);

//◆ＥＶ："ev/ev2250カゴメアソビ4.txt" 差分Ａ
	CreateTextureEX("絵背景１", 2000, 0, 0, "cg/ev/ev2250カゴメアソビ4a.jpg");
	Fade("絵背景１", 0, 1000, null, true);

//◆演出指定：ＢＧＭカゴメカゴメが流れ始める
	MusicStart("@xbgm14",0,450,0,1000,null,true);

	//★徒歩：セットカゴメカラー
	KagomeColorAuto(10000,0,true);

	FadeDelete("上背景", 2000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100010wfu">
「もしも私が死ぬのなら」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100020wfu">
「それは、私の願いってことじゃ、ないですか」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100030wfu">
「……私がわからないです」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100040wfu">
「ずっとずっと、貫太さんが生きてるって、自分にそう言い聞かせて、ウソもホントになっちゃいました」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100050wfu">
「ホントもウソになっちゃったかもしれません」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100060wfu">
「もしもアザナエルがそれを教えてくれるなら」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100070wfu">
「やっと、肩の荷物がおります」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/500100080okt">
「どうしても、行くんだね？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100090wfu">
「はい」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/500100100okt">
「帰ってこられなくても」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100110wfu">
「はい」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/500100120okt">
「後悔は、しないんだね」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100130wfu">
「はい」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/500100140okt">
「そうか……」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/500100150okt">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/500100160okt">
「なら、僕は――」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/500100170okt">
「僕は、あっちを向いていよう」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/500100180okt">
「君の足を、引っ張ることは、しない」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/500100190okt">
「だって、それは……僕は……」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/500100200okt">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/500100210okt">
「僕は……やっぱり今でも、君が好きだからね」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100220wfu">
「最後まで……わがままで、ごめんなさい」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/500100230okt">
「…………いいんだ」

　そう言って――太四郎は、フウリに背を向ける。

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100240wfu">
「ありがとう――」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100250wfu">
「ごめんなさい――」

{	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100260wfu">
「さようなら――太四郎さん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆演出指定：銃を頭に向ける
	PrintGO("上背景", 30000);

//◆ＥＶ："ev/ev2250カゴメアソビ4.txt" 差分Ｂ
	CreateTextureEX("絵背景２", 2000, 0, 0, "cg/ev/ev2250カゴメアソビ4b.jpg");
	Fade("絵背景２", 0, 1000, null, true);

	//★徒歩：セットカゴメカラー
	KagomeColorAuto(10000,0,true);

	FadeDelete("上背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100270wfu">
「貫太さん、聞こえますか？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100280wfu">
「もう、遠く……遠く離れてしまったけど」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	FadeDelete("@OnKG*", 2000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100290wfu">
「私のタイコの音……聞こえますよね？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	WaitAction("@OnKG*", null);

//◆演出指定：銃を撃つ

	EndScene();
}
