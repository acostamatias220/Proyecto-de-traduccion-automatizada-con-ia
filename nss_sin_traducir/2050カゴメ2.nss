
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2050カゴメ2.nss_MAIN
{
//■カゴメチェック
	Kagome_IsChaeck("flkagome2");

//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		if($CharaName!="沙紅羅"&&$CharaName!="恵那"&&$CharaName!="似鳥"&&$CharaName!="ノーコ"&&$CharaName!="フウリ"){
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
	Kagome("flkagome2");

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

	if(#flkagome2){
		//☆成功（b）
		//#2050沙紅羅_似鳥_フウリ_b_in=true;
		AXNL_ReachingTimeZone("2050沙紅羅_似鳥_フウリ",true);
		//#b2050千秋_b_in=true;
		AXNL_ReachingTimeZone("b2050千秋",true);
		//#2050恵那_b_in=true;
		AXNL_ReachingTimeZone("2050恵那",true);
		//#2050ノーコ_b_in=true;
		AXNL_ReachingTimeZone("2050ノーコ",true);

		if($CharaName=="沙紅羅"){
			$GameName="2050沙紅羅_似鳥_フウリ.nss";
		}else if($CharaName=="千秋"){
			$GameName="b2050千秋.nss";
		}else if($CharaName=="恵那"){
			$GameName="2050恵那.nss";
		}else if($CharaName=="似鳥"){
			$GameName="2050沙紅羅_似鳥_フウリ.nss";
		}else if($CharaName=="ノーコ"){
			$GameName="2050ノーコ.nss";
		}else if($CharaName=="フウリ"){
			$GameName="2050沙紅羅_似鳥_フウリ.nss";
		}else{
		}
	}else{
		//☆失敗（トゥルー）
		//#2050沙紅羅_似鳥_フウリ_トゥルー_in=true;
		AXNL_ReachingTimeZone("2050沙紅羅_似鳥_フウリ",true);
		//#2050恵那_トゥルー_in=true;
		AXNL_ReachingTimeZone("2050恵那",true);
		//#2050ノーコ_トゥルー_in=true;
		AXNL_ReachingTimeZone("2050ノーコ",true);

		if($CharaName=="沙紅羅"){
			$GameName="2050沙紅羅_似鳥_フウリ.nss";
		}else if($CharaName=="千秋"){
			GameBreak();//死亡
		}else if($CharaName=="恵那"){
			$GameName="2050恵那.nss";
		}else if($CharaName=="似鳥"){
			$GameName="2050沙紅羅_似鳥_フウリ.nss";
		}else if($CharaName=="ノーコ"){
			$GameName="2050ノーコ.nss";
		}else if($CharaName=="フウリ"){
			$GameName="2050沙紅羅_似鳥_フウリ.nss";
		}else{
		}
	}
}

scene 2050カゴメ2.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="100">
////////////header////////////
//file name "2050カゴメ2.nss"
//title "アヤマチアソビ"
//previous "2040千秋_ノーコ.nss"


////////////footer////////////
//カゴメアソビ成功 "flkagome2" = true
//カゴメアソビ失敗 "flkagome2" = false
//next "千秋" （"flkagome2" = true） "b2050千秋.nss"
//next "千秋" （"flkagome2" = false） "2320沙紅羅_千秋.nss"


////////////body////////////

//■再定義定型文
	PrintGO("上背景", 30000);

	ClockDelete(0,true);//時計は非表示！

//◆場所：バックギャモン_店内
	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);
	St("C",700, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",0,true);

//◆演出指定：かごめうたが流れる
	MusicStart("@xbgm14",0,450,0,1000,null,true);

	//★徒歩：セットカゴメカラー
	KagomeColorAuto(10000,0,true);

	FadeDelete("上背景", 2000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　ひとりになったバックギャモンで、千秋は銃を見る。

　その向こうに、血を流して横たわる河原屋双六。

　崩れ落ちたまま、身じろぎもしない。

//◆音声指示：唾を飲み込む
{	St("C",700, @0,@0,"fu千秋_通常_think");
	FadeSt("C",0,true);
	KagomeColorAuto(10000,200,true);//★徒歩：セットカゴメカラー
	}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/500100010kit">
（…………）

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/500100020kit">
（カゴメアソビに成功すれば）

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/500100030kit">
（双六が生き返って）

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/500100040kit">
（恵那の失敗が、帳消しになる）

{	St("C",700, @0,@0,"fu千秋_気合い_hard");
	FadeSt("C",0,true);
	KagomeColorAuto(10000,200,true);//★徒歩：セットカゴメカラー
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/500100050kit">
（もう、これしかないんだ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＥＶ："ev/ev2050カゴメアソビ2.txt"
	CreateTextureEX("絵背景１", 2000, 0, 0, "cg/ev/ev2050カゴメアソビ2.jpg");
	Fade("絵背景１", 0, 1000, null, true);

	KagomeColorAuto(10000,1000,true);//★徒歩：セットカゴメカラー

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/500100060kit">
（確率は、６分の５）

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/500100070kit">
（オレは……あんなヘマなんてしない）

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/500100080kit">
（今度こそ、男になって……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/500100090kit">
（あと、ついでにブルマーも返して！）

{FadeDelete("@OnKG*", 1000, null, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/500100100kit">
（ちゃんと、告白、してやるんだ……ッ！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	WaitAction("@OnKG*", null);


//◆演出指定：トリガーを引く


	EndScene();
}
