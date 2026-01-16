
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2020カゴメ1.nss_MAIN
{
//■カゴメチェック
	Kagome_IsChaeck("flkagome1");

//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		if($CharaName!="沙紅羅"&&$CharaName!="千秋"&&$CharaName!="恵那"&&$CharaName!="フウリ"){
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
	Kagome("flkagome1");

	//演出
	if($KagomePeople){
		//ラテ欄に戻らない際の演出：撃ったキャラのみ
		if($KagomeName=="生存"){
			SetVolume("@SE*", 2000, 0, NULL);
			SetVolume("@x*", 2000, 0, NULL);

			CreateColorEXadd("絵色幕", 1500, "WHITE");
			Fade("絵色幕", 500, 1000, null, true);
//			ClearFadeNut(2000,true);

		}else if($KagomeName=="死亡"){
			SetVolume("@SE*", 2000, 0, NULL);
			SetVolume("@x*", 2000, 0, NULL);
			ClearFadeNut(2000,true);
		}
	}

	if(#flkagome1){
		//☆成功（トゥルー）
		//#2020沙紅羅_フウリ_トゥルー_in=true;
		AXNL_ReachingTimeZone("2020沙紅羅_フウリ",true);
		//#2020千秋_恵那_トゥルー_in=true;
		AXNL_ReachingTimeZone("2020千秋_恵那",true);
		//#2020似鳥_トゥルー_in=true;
		AXNL_ReachingTimeZone("2020似鳥",true);
		//#2020ノーコ_トゥルー_in=true;
		AXNL_ReachingTimeZone("2020ノーコ",true);

		if($CharaName=="沙紅羅"){
			$GameName="2020沙紅羅_フウリ.nss";
		}else if($CharaName=="千秋"){
			$GameName="2020千秋_恵那.nss";
		}else if($CharaName=="恵那"){
			$GameName="2020千秋_恵那.nss";
		}else if($CharaName=="似鳥"){
			$GameName="2020似鳥.nss";
		}else if($CharaName=="ノーコ"){
			$GameName="2020ノーコ.nss";
		}else if($CharaName=="フウリ"){
			$GameName="2020沙紅羅_フウリ.nss";
		}else{
		}
	}else{
		//☆失敗（a）
		//#2020沙紅羅_フウリ_a_in=true;
		AXNL_ReachingTimeZone("2020沙紅羅_フウリ",true);
		//#2020千秋_恵那_a_in=true;
		AXNL_ReachingTimeZone("2020千秋_恵那",true);
		//#a2020似鳥_ノーコ_a_in=true;
		AXNL_ReachingTimeZone("a2020似鳥_ノーコ",true);

		if($CharaName=="沙紅羅"){
			$GameName="2020沙紅羅_フウリ.nss";
		}else if($CharaName=="千秋"){
			$GameName="2020千秋_恵那.nss";
		}else if($CharaName=="恵那"){
			$GameName="2020千秋_恵那.nss";
		}else if($CharaName=="似鳥"){
			$GameName="a2020似鳥_ノーコ.nss";
		}else if($CharaName=="ノーコ"){
			$GameName="a2020似鳥_ノーコ.nss";
		}else if($CharaName=="フウリ"){
			$GameName="2020沙紅羅_フウリ.nss";
		}else{
		}
	}
}

scene 2020カゴメ1.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="30">
////////////header////////////
//file name "2020カゴメ1.nss"
//title "ユメアソビ"
//previous "2010似鳥.nss"
//previous "2010ノーコ.nss" 

////////////footer////////////
//カゴメアソビ成功 "flkagome1" = true
//カゴメアソビ失敗 "flkagome1" = false
//next "似鳥"（"flkagome1" = true） "2020似鳥.nss"
//next "似鳥"（"flkagome1" = false） "a2020似鳥_ノーコ.nss"
//next "ノーコ"（"flkagome1" = true） "2020ノーコ.nss"
//next "ノーコ"（"flkagome1" = false） "a2020似鳥_ノーコ.nss"

////////////body////////////

//■再定義定型文


//◆ＥＶ："ev/ev2020カゴメアソビ1.txt" 差分Ａ


	PrintGO("上背景", 30000);

	ClockDelete(0,true);//時計は非表示！

//◆場所：バックギャモン_店内
//	OnBG(10,"bg1002100バックギャモン_店内_通常");
//	FadeBG(0,true);

	CreateTextureEX("絵背景１", 2000, 0, 0, "cg/ev/ev2020カゴメアソビ1a.jpg");
	Fade("絵背景１", 0, 1000, null, true);

//◆演出指定：かごめうたが流れる
	MusicStart("@xbgm14",0,450,0,1000,null,true);

	//★徒歩：セットカゴメカラー
	KagomeColorAuto(10000,0,true);

	FadeDelete("上背景", 2000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　似鳥の指がトリガーにかかる。


　生と死を分かつアザナエル――


　籠の中で打ち震えるは、似鳥の生と夢。

　籠の中で打ち震えるは、似鳥の死と無。


　籠の中の鳥たちが、巣立ちの刻を待っている。

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200100010nki">
「いっけえええええええええええ――――――ッ！！」

　狭いバックギャモンを、似鳥の絶叫が埋めた。

　指先が内側から弾けるような力に包まれる。

　トリガーが引かれ、ハンマーが滑り――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＥＶ："ev/ev2020カゴメアソビ1.txt" 差分Ｂ
	CreateTextureEX("絵背景１", 2000, 0, 0, "cg/ev/ev2020カゴメアソビ1b.jpg");
	Fade("絵背景１", 0, 1000, null, true);

	//★徒歩：セットカゴメカラー
	KagomeColorAuto(10000,500,true);

	FadeDelete("@OnKG*", 5000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/200100020nko">
「だめ！」


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/200100030nki">
「――――！」



　ノーコが両手を広げ、似鳥の前に飛び出す。


　視線が交錯する。


　愛しさと。驚きと。願いと。後悔が。


　トリガーは止まらない。



　声も、光も、願いも、間に合わない。


　籠の中から飛び立つのは――


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	WaitAction("@OnKG*", null);

//◆演出指定：成功と失敗が５対１

//◆演出指定：カゴメアソビで"flkagome1"を決定


	EndScene();
}
