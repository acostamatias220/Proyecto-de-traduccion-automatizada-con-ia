
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2230カゴメ3.nss_MAIN
{
//■カゴメチェック
	Kagome_IsChaeck("flkagome3");

//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		if($CharaName!="千秋"&&$CharaName!="恵那"&&$CharaName!="フウリ"){
			$KagomePeople=true;
			call_scene $MainGameName;
		}
		GameMainSet2();
	}

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#イベントファイル名=true;
	#ev2230カゴメアソビ3a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	//★カゴメアソビ//////////////////////////
	Kagome("flkagome3");

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

	if(#flkagome3){
		//☆成功（トゥルー）
		//#2230沙紅羅_似鳥_ノーコ_トゥルー_in=true;
		AXNL_ReachingTimeZone("2230沙紅羅_似鳥_ノーコ",true);
		//#2230恵那_トゥルー_in=true;
		AXNL_ReachingTimeZone("2230恵那",true);
		//#2230フウリ_トゥルー_in=true;
		AXNL_ReachingTimeZone("2230フウリ",true);

		if($CharaName=="沙紅羅"){
			$GameName="2230沙紅羅_似鳥_ノーコ.nss";
		}else if($CharaName=="千秋"){
			GameBreak();//死亡
		}else if($CharaName=="恵那"){
			$GameName="2230恵那.nss";
		}else if($CharaName=="似鳥"){
			$GameName="2230沙紅羅_似鳥_ノーコ.nss";
		}else if($CharaName=="ノーコ"){
			$GameName="2230沙紅羅_似鳥_ノーコ.nss";
		}else if($CharaName=="フウリ"){
			$GameName="2230フウリ.nss";
		}else{
		}
	}else{
		//☆失敗（c）
		//#c2230沙紅羅_似鳥_c_in=true;
		AXNL_ReachingTimeZone("c2230沙紅羅_似鳥",true);
		//#2230恵那_c_in=true;
		AXNL_ReachingTimeZone("2230恵那",true);
		//#2230フウリ_c_in=true;
		AXNL_ReachingTimeZone("2230フウリ",true);

		if($CharaName=="沙紅羅"){
			$GameName="c2230沙紅羅_似鳥.nss";
		}else if($CharaName=="千秋"){
			GameBreak();//死亡
		}else if($CharaName=="恵那"){
			$GameName="2230恵那.nss";
		}else if($CharaName=="似鳥"){
			$GameName="c2230沙紅羅_似鳥.nss";
		}else if($CharaName=="ノーコ"){
			GameBreak();//死亡
		}else if($CharaName=="フウリ"){
			$GameName="2230フウリ.nss";
		}else{
		}
	}
}

scene 2230カゴメ3.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="110">
////////////header////////////
//file name "2230カゴメ3.nss"
//title "マヨイアソビ"
//previous "2220沙紅羅_似鳥_ノーコ.nss"


////////////footer////////////
//カゴメアソビ成功 "flkagome3" = true
//カゴメアソビ失敗 "flkagome3" = false

//next "沙紅羅"（"flkagome3" = true） "2230沙紅羅_似鳥_ノーコ.nss"
//next "似鳥"（"flkagome3" = true） "2230沙紅羅_似鳥_ノーコ.nss"
//next "ノーコ"（"flkagome3" = true） "2230沙紅羅_似鳥_ノーコ.nss"

//next "沙紅羅"（"flkagome3" = false） "c2230沙紅羅_似鳥.nss"
//next "似鳥"（"flkagome3" = false） "c2230沙紅羅_似鳥.nss"

////////////body////////////

//■再定義定型文
	PrintGO("上背景", 30000);

	ClockDelete(0,true);//時計は非表示！

//◆場所：あにのあな_屋上
	OnBG(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);

//◆演出指定：かごめうたが流れる
	MusicStart("@xbgm14",0,450,0,1000,null,true);

//◆ＳＥ：ホルスターを回す

//◆ＥＶ："ev/ev2230カゴメアソビ3.txt"
//	CreateTextureEX("絵背景１", 2000, -320, -170, "cg/ev/ev2230カゴメアソビ3.jpg");
	CreateTextureEX("絵背景１", 2000, -654, -341, "cg/ev/l/ev2230カゴメアソビ3_l.jpg");
	Fade("絵背景１", 0, 1000, null, true);

	//★徒歩：セットカゴメカラー
	KagomeColorAuto(10000,0,true);

	FadeDelete("上背景", 2000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/300100010nki">
「お――おい、やめろ！！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/300100020nki">
「おまえは、これからオレと一緒に――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/300100030nko">
「むり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/300100040nko">
「わたしは、にとりをしんじられなかった」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/300100050nko">
「こころまで、かえようとしていた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/300100060nko">
「にとりに、あいしてほしいとねがうだけで……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/300100070nko">
「わたしは、にとりをあいそうと、していなかったんだ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/300100080nko">
「そんなわたしに」

{FadeDelete("@OnKG*", 3000, null, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/300100090nko">
「あいされるかちなんて、ない」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/300100100nki">
「だめだッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	CreateTextureEX("絵背景２", 2000, -320, -1170, "cg/ev/ev2230カゴメアソビ3.jpg");

	Fade("@OnKG*", 1000, 0, null, false);
	Move("絵背景２", 1000, @0, @1000, Dxl3, false);
	Fade("絵背景２", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/300100110nki">
「やめろ、ノーコ――――ッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	WaitAction("@OnKG*", null);

//◆演出指定：トリガーを引く

//◆演出指定：成功と失敗が５対１

//◆演出指定：カゴメアソビで"flkagome3"を決定

	EndScene();
}
