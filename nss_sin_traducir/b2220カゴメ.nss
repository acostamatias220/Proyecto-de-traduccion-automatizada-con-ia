
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene b2220カゴメ.nss_MAIN
{
//■カゴメチェック
	Kagome_IsChaeck("flkagome2a");

	if($CharaName=="フウリ"){
		GameBreak();//死亡
	}

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
	Kagome("flkagome2a");

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

	if(#flkagome2a){
		//☆成功（ba）
		//#ba2220沙紅羅_似鳥_ノーコ_ba_in=true;
		AXNL_ReachingTimeZone("ba2220沙紅羅_似鳥_ノーコ",true);
		//#ba2220千秋_恵那_ba_in=true;
		AXNL_ReachingTimeZone("ba2220千秋_恵那",true);

		if($CharaName=="沙紅羅"){
			$GameName="ba2220沙紅羅_似鳥_ノーコ.nss";
		}else if($CharaName=="千秋"){
			$GameName="ba2220千秋_恵那.nss";
		}else if($CharaName=="恵那"){
			$GameName="ba2220千秋_恵那.nss";
		}else if($CharaName=="似鳥"){
			$GameName="ba2220沙紅羅_似鳥_ノーコ.nss";
		}else if($CharaName=="ノーコ"){
			$GameName="ba2220沙紅羅_似鳥_ノーコ.nss";
		}else if($CharaName=="フウリ"){
			GameBreak();//死亡
		}else{
		}
	}else{
		//☆失敗（bb）
		//#bb2220沙紅羅_似鳥_bb_in=true;
		AXNL_ReachingTimeZone("bb2220沙紅羅_似鳥",true);
		//#ba2220千秋_恵那_bb_in=true;
		AXNL_ReachingTimeZone("ba2220千秋_恵那",true);

		if($CharaName=="沙紅羅"){
			$GameName="bb2220沙紅羅_似鳥.nss";
		}else if($CharaName=="千秋"){
			$GameName="ba2220千秋_恵那.nss";
		}else if($CharaName=="恵那"){
			$GameName="ba2220千秋_恵那.nss";
		}else if($CharaName=="似鳥"){
			$GameName="bb2220沙紅羅_似鳥.nss";
		}else if($CharaName=="ノーコ"){
			GameBreak();//死亡
		}else if($CharaName=="フウリ"){
			GameBreak();//死亡
		}else{
		}
	}
}

scene b2220カゴメ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="310">
////////////header////////////
//file name "b2220カゴメ.nss"
//title "カコアソビ"
//previous "b2213似鳥_ノーコ.nss"


////////////footer////////////
//カゴメアソビ成功 "flkagome2a" = true
//カゴメアソビ失敗 "flkagome2a" = false
//next "似鳥"（"flkagome2a" = true） "ba2220沙紅羅_似鳥_ノーコ.nss"
//next "ノーコ"（"flkagome2a" = true） "ba2220沙紅羅_似鳥_ノーコ.nss"
//next "似鳥"（"flkagome2a" = false） "bb2220沙紅羅_似鳥.nss"
//next "ノーコ"（"flkagome2a" = false） 死亡


////////////body////////////

//■再定義定型文
	PrintGO("上背景", 30000);

	ClockDelete(0,true);//時計は非表示！

//◆場所：あにのあな_屋上
//	OnBG(10,"bg0303100あにのあな_屋上_通常");
//	FadeBG(0,true);

//◆演出指示：カゴメアソビ流れ出す
	MusicStart("@xbgm14",0,450,0,1000,null,true);

	//★徒歩：セットカゴメカラー
	//KagomeColorAuto(10000,0,false);

	KagomeColorSet("絵カゴメカラー",3000,"fdf202");
	KagomeTexture("絵背景１","絵背景２",10,0,-576,"cg/bg/l/bg0303100あにのあな_屋上_通常_l.jpg");
	Fade("絵カゴメカラー", 0, 1000, null, false);
	Fade("絵背景*", 0, 1000, null, false);

	KagomeTexture("絵人物１","絵人物２",2000,-722,-2799,"cg/bu/l/buノーコa_銃構え_normal_x02.png");
	Fade("絵人物*", 0, 1000, null, false);

	//KagomeSt("C",700,@0,@0,"fuノーコa_通常_normal");
	//KagomeFadeSt("C",0,true);

//	KagomeTexture("絵イベント１","絵イベント２",2000,0,0,"cg/ev/ev2230カゴメアソビ3.jpg");
	KagomeTexture("絵イベント１","絵イベント２",2000,0,0,"cg/ev/l/ev2230カゴメアソビ3_l.jpg");
	Request("絵イベント１", Smoothing);
	Request("絵イベント２", Smoothing);
	SetVertex("絵イベント１", 0, 0);
	SetVertex("絵イベント２", 0, 0);
	Zoom("絵イベント*", 0, 2000, 2000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	Move("絵人物*", 45000, @0, -1899, null, false);
	Move("絵背景*", 45000, @0, -300, null, false);
	FadeDelete("上背景", 1000, null, true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/200100010nko">
「ねえ、にとり。おぼえてる？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/200100020nko">
「わたしがはじめてかかれたどうじんし」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/200100030nko">
「このまちをみおろして、ひとがごみみたいだってつぶやいたわたし」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/200100040nko">
「そのときのにとりは、むてきで……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/200100050nko">
「ただ、わたしだけをみていてくれた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	KagomeSt("C",700,@1024,@0,"st似鳥_通常_normal");

	Move("絵人物*", 400, @-1024, @0, null, false);
	Move("絵背景*", 400, @-1024, -100, null, false);
//	Move($C_今, 400, @-1024, @0, null, false);
//	Move($C2_今, 400, @-1024, @0, null, false);
	Move($C_次, 400, @-1024, @0, null, false);
	Move($C2_次, 400, @-1024, @0, null, false);
	Fade("絵人物*", 400, 0, null, false);
	//KagomeDeleteSt("C",200,true);
	KagomeFadeSt("C",400,true);

	WaitAction("絵背景*", null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/200100060nki">
「でも、時は経った」

{	CreatePlainSP("上背景", 10000);
	KagomeSt("C",700,@0,@0,"st似鳥_通常_sad");
	KagomeFadeSt("C",0,true);
	FadeDelete("上背景", 200, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/200100070nki">
「オレは、少し年を取って、もう前みたいに夢を信じられなくて――」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/200100080nki">
「おまえの側に、いつまでもいられないって、思い始めた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("絵人物*", 0, @0, -1899, null, true);
//	KagomeSt("C",700,@-1024,@0,"buノーコa_通常_normal");

	Move("絵人物*", 400, @1024, -1499, null, false);
	Move("絵背景*", 400, @1024, -300, null, false);
	Move($C_今, 400, @1024, @0, null, false);
	Move($C2_今, 400, @1024, @0, null, false);
//	Move($C_次, 400, @1024, @0, null, false);
//	Move($C2_次, 400, @1024, @0, null, false);
	Fade("絵人物*", 400, 1000, null, false);
	KagomeDeleteSt("C",400,true);
//	KagomeFadeSt("C",200,true);

	WaitAction("絵背景*", null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/200100090nko">
「いまも、そうおもってる？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/200100100nko">
「わたしのことを、どうおもってる？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	KagomeSt("C",700,@1024,@0,"bu似鳥_通常_sad");

	Move("絵人物*", 400, @-1024, @0, null, false);
	Move("絵背景*", 400, @-1024, -100, null, false);
//	Move($C_今, 400, @-1024, @0, null, false);
//	Move($C2_今, 400, @-1024, @0, null, false);
	Move($C_次, 400, @-1024, @0, null, false);
	Move($C2_次, 400, @-1024, @0, null, false);
	Fade("絵人物*", 400, 0, null, false);
	//KagomeDeleteSt("C",200,true);
	KagomeFadeSt("C",400,true);

	WaitAction("絵背景*", null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/200100110nki">
「……わからない」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/200100120nki">
「わからないけれど、オレは――」

{	CreatePlainSP("上背景", 10000);
	KagomeSt("C",700,@0,@0,"bu似鳥_通常_worry");
	KagomeFadeSt("C",0,true);
	FadeDelete("上背景", 200, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/200100130nki">
「おまえに、惹かれてるんだと思う」

{	CreatePlainSP("上背景", 10000);
	KagomeSt("C",700,@0,@0,"bu似鳥_通常_shout");
	KagomeFadeSt("C",0,true);
	FadeDelete("上背景", 200, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/200100140nki">
「だから、こんなに苦しくて――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	KagomeSt("C",700,@-1024,@0,"buノーコa_通常_normal");

	Move("絵人物*", 400, @1024, -1499, null, false);
	Move("絵背景*", 400, @1024, -200, null, false);
	Move($C_今, 400, @1024, @0, null, false);
	Move($C2_今, 400, @1024, @0, null, false);
//	Move($C_次, 400, @1024, @0, null, false);
//	Move($C2_次, 400, @1024, @0, null, false);
	Fade("絵人物*", 400, 1000, null, false);
	KagomeDeleteSt("C",400,true);
//	KagomeFadeSt("C",200,true);

	WaitAction("絵背景*", null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/200100150nko">
「にとりはくるしい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/200100160nko">
「くるしくて、もがいている」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/200100170nko">
「わたしのそんざいで、そのくるしみがうまれるなら」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/200100180nko">
「にとり。かこをぜんぶわすれて」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/200100190nko">
「わたしだけを、すきになって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	KagomeDeleteSt("C",300,true);

//	CreatePlainSP("上背景", 10000);
//	KagomeSt("C",700,@0,@0,"stノーコa_銃構え_normal");
//	KagomeFadeSt("C",300,true);
//	FadeDelete("上背景", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
{	//★徒歩：ＳＥ
	CreateSE("SE01","se銃_シリンダー回転");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵背景*", 2000, @0, -100, Dxl2, false);
	Move("絵人物*", 2000, @0, @800, Dxl2, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/200100200nko">
「わたしを、ほんものにして」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	KagomeSt("C",700,@1024,@0,"fu似鳥_通常_shock");


	Move("絵人物*", 400, @-1024, @0, null, false);
	Move("絵背景*", 400, @-1024, -100, null, false);
//	Move($C_今, 400, @-1024, @0, null, false);
//	Move($C2_今, 400, @-1024, @0, null, false);
	Move($C_次, 400, @-1024, @0, null, false);
	Move($C2_次, 400, @-1024, @0, null, false);
	Fade("絵人物*", 400, 0, null, false);
	//KagomeDeleteSt("C",200,true);
	KagomeFadeSt("C",400,true);

	WaitAction("絵背景*", null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/200100210nki">
「ノーコ、やめろッ！！」

{	CreatePlainSP("上背景", 10000);
	KagomeSt("C",700,@0,@0,"fu似鳥_通常_pinch");
	KagomeFadeSt("C",0,true);
	FadeDelete("上背景", 200, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/200100220nki">
「その苦しみは――オレのものだッ！！」

{	CreatePlainSP("上背景", 10000);
	KagomeSt("C",700,@0,@0,"fu似鳥_通常_rage");
	KagomeFadeSt("C",0,true);
	FadeDelete("上背景", 200, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/200100230nki">
「オレが引き受けて、乗り越えて、その先のものを掴むべき、苦しみなんだッ！！」

{	CreatePlainSP("上背景", 10000);
	KagomeSt("C",700,@0,@0,"fu似鳥_通常_shout");
	KagomeFadeSt("C",0,true);
	FadeDelete("上背景", 200, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/200100240nki">
「だから――頼むッ！！」

{	CreatePlainSP("上背景", 10000);
	KagomeSt("C",700,@0,@0,"fu似鳥_通常_angry");
	KagomeFadeSt("C",0,true);
	FadeDelete("上背景", 200, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/200100250nki">
「オレが出す結論を、もう少しだけ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Delete("絵人物*");

	//★徒歩：ＳＥ
	CreateSE("SE01","se銃_構える");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	Move("絵背景*", 400, @1024, @0, null, false);
	Move($C_今, 400, @1024, @0, null, false);
	Move($C2_今, 400, @1024, @0, null, false);
	KagomeDeleteSt("C",200,false);
	Wait(200);
	MusicStart("SE01",0,700,0,1000,null,false);

//	Move("絵イベント*", 1000, @-350, @-152, Dxl2, false);
//	Move("絵イベント*", 1000, @-1000, @-400, Dxl2, false);
	Zoom("絵イベント*", 1000, 1000, 1000, Dxl3, false);
	FadeT("絵イベント*",0,0,1000,-900,-400,Dxl2,false);
	Fade("絵イベント*", 500, 1000, null, true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/200100260nko">
「もう、まてないのっ！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/200100270nko">
「だいじょうぶ、わたしが、しあわせにしてあげる」

{	WaitAction("絵イベント*", null);
	CreateTextureEX("絵背景２", 5000, -700, -300, "cg/ev/l/ev2230カゴメアソビ3_l.jpg");
	Move("絵背景２", 5000, -900, -400, null, false);
	Fade("絵背景２", 5000, 1000, null, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/200100280nko">
「むかしみたいに……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/200100290nko">
「あのときいっしょにみたゆめみたいに」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/200100300nko">
「どうじんしが、げんじつになったみたいに……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景１", 5000, -512, -242, "cg/ev/ev2230カゴメアソビ3.jpg");

	//★徒歩：ＳＥ
	CreateSE("SE01","se銃_撃鉄起こす");
	MusicStart("SE01",0,1200,0,1000,null,false);

	Wait(1500);

	Fade("絵背景１", 500, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/200100310nko">
「あなたも、かわる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	WaitAction("絵背景１", null);

	EndScene();
}
