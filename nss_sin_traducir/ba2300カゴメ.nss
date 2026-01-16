
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ba2300カゴメ.nss_MAIN
{
//■カゴメチェック
	Kagome_IsChaeck("flkagome2b");

//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		if($CharaName!="フウリ"){
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
	Kagome("flkagome2b");

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

	if(#flkagome2b){
		//☆成功（baa）
		//#baa2300沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ_baa_in=true;
		AXNL_ReachingTimeZone("baa2300沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ");

		$GameName="baa2300沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss";
	}else{
		//☆失敗（bab）
		//#bab2300沙紅羅_千秋_恵那_似鳥_ノーコ_bab_in=true;
		AXNL_ReachingTimeZone("bab2300沙紅羅_千秋_恵那_似鳥_ノーコ");

		$GameName="bab2300沙紅羅_千秋_恵那_似鳥_ノーコ.nss";
	}
}

scene ba2300カゴメ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="180">
////////////header////////////
//file name "ba2300カゴメ.nss"
//title "カミアソビ"
//previous "ba2250沙紅羅_千秋_恵那_似鳥_ノーコ.nss"

////////////footer////////////
//カゴメアソビ成功 "flkagome2b" = true
//カゴメアソビ失敗 "flkagome2b" = false
//next "沙紅羅"（"flkagome2b" = true） "baa2300沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss"
//next "沙紅羅"（"flkagome2b" = false） "bab2300沙紅羅_千秋_恵那_似鳥_ノーコ.nss"

//next "千秋"（"flkagome2b" = true） "baa2300沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss"
//next "千秋"（"flkagome2b" = false） "bab2300沙紅羅_千秋_恵那_似鳥_ノーコ.nss"

//next "恵那"（"flkagome2b" = true） "baa2300沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss"
//next "恵那"（"flkagome2b" = false） "bab2300沙紅羅_千秋_恵那_似鳥_ノーコ.nss"

//next "似鳥"（"flkagome2b" = true） "baa2300沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss"
//next "似鳥"（"flkagome2b" = false） "bab2300沙紅羅_千秋_恵那_似鳥_ノーコ.nss"

//next "ノーコ"（"flkagome2b" = true） "baa2300沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss"
//next "ノーコ"（"flkagome2b" = false） "bab2300沙紅羅_千秋_恵那_似鳥_ノーコ.nss"



////////////body////////////

//■再定義定型文
	PrintGO("上背景", 30000);

	ClockDelete(0,true);//時計は非表示！

//◆演出指示：カゴメアソビ流れる
	MusicStart("@xbgm14",0,450,0,1000,null,true);

//◆ＥＶ："ev/ev2250沙紅羅銃構え.txt"
	KagomeColorSet("絵カゴメカラー",5000,"fdf202");
	Fade("絵カゴメカラー", 0, 1000, null, false);

	KagomeTexture("絵イベント１","絵イベント２",10,0,0,"cg/ev/ev2250沙紅羅銃構え.jpg");
	Fade("絵イベント*", 0, 1000, null, false);

//★ライターチェック：以下をオミット
//定義１
/*
	CreateMask("絵ウィンドウ１", 150, 0, 100, "cg/mask/ciスラッシュ_00_01.png", false);
	SetAlias("絵ウィンドウ１", "絵ウィンドウ１");
	CreateTextureEX("絵マスク１", 1000, 0, 100, "cg/mask/ciスラッシュ_00_00z.png");

	KagomeTexture("絵ウィンドウ１/絵背景１","絵ウィンドウ１/絵背景２",10,0,0,"cg/bg/bg0303100あにのあな_屋上_通常.jpg");

	SetVertex("絵マスク１", 0, 576);
	SetVertex("絵ウィンドウ１", 0, 576);

	Rotate("絵マスク１", 0, @0, @0, 60, null, false);
	Move("絵マスク１", 0, @0, @576, Dxl1, false);
	Rotate("絵ウィンドウ１", 0, @0, @0, 60, null, false);
	Move("絵ウィンドウ１", 0, @0, @576, Dxl1, true);

	KagomeSt("MR",1700, @50,@50,"bu双六a_通常_normal");
*/

//定義２
	CreateWindow("絵ウィンドウ２", 150, 0, 638, 1024, 800, false);
	SetAlias("絵ウィンドウ２", "絵ウィンドウ２");
	CreateTextureEX("絵マスク２", 2100, 0, 350, "cg/mask/ciライン_00_00z.png");

	KagomeTexture("絵ウィンドウ２/絵人物１","絵ウィンドウ２/絵人物２",2050,-481,-2500,"cg/bu/l/bu沙紅羅_銃構え_x01.png");



//描画
	FadeDelete("上背景", 1000, null, true);

	Rotate("絵マスク１", 300, @0, @0, 0, Dxl1, false);
	Move("絵マスク１", 300, 50, 100, Dxl1, false);
	Rotate("絵ウィンドウ１", 300, @0, @0, 0, Dxl1, false);
	Move("絵ウィンドウ１", 300, 50, 100, Dxl1, false);

	Fade("絵ウィンドウ１/絵背景１", 500, 1000, null, false);
	Fade("絵ウィンドウ１/絵背景２", 500, 1000, null, false);
	Fade("絵マスク１", 300, 1000, null, false);




//★ライターチェック：以下をオミット
/*
	MoveEX($MR_次, 500, 0, -40, Dxl1, false);
	MoveEX($MR2_次, 500, 0, -40, Dxl1, false);
	KagomeFadeSt("MR",500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba23/000100010ksr">
「ホントに……撃つんだな」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba23/000100020skr">
「はい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//徒歩：要メモリ確保地点

	CreatePlainSP("絵背景１", 10000);
	KagomeSt("MR",1700, @50,@50,"bu双六a_横向き_normal");
	KagomeFadeSt("MR",0,true);
	FadeDelete("絵背景１", 200, null, true);

	CreatePlainSP("絵背景１", 2000);

	Delete("絵ウィンドウ１");
	Delete("絵イベント*");
	Delete("絵マスク１");
	KagomeDeleteSt("MR",0,true);

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba23/000100030ksr">
「失敗したら、おまえが、殺すことになるんだぞ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba23/000100040skr">
「覚悟してます」


*/


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba23/000100050skr">
「殺したくなんかない。でも――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	KagomeTexture("絵イベント３","絵イベント４",2000,0,0,"cg/ev/ev2220太四郎ビル大破壊d.jpg");
	Fade("絵イベント*", 1000, 1000, null, true);
	Delete("絵背景１");

	KagomeTexture("絵たぬき１","絵たぬき２",2001,-1024,-250,"cg/ev/l/ev2220太四郎ビル大破壊d_l.jpg");


//★ライターチェック：以下をオミット
/*

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba23/000100060skr">
「このまま、黙って見てられません」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

*/

	KagomeTexture("絵ウィンドウ２/絵背景１","絵ウィンドウ２/絵背景２",2001,0,-576,"cg/bg/l/bg0303100あにのあな_屋上_通常_l.jpg");

	//★徒歩：ＳＥ
	CreateSE("SE09","se戦闘_倒壊03");
	//★徒歩：ＳＥプロセス２
	MusicStartPro2("@SE09",0,450,0,1000,null,false,0,5000,3000);

	Shake("絵たぬき*", 4000, 0, 20, 0, 0, 500, Dxl1, false);
	Move("絵たぬき*", 70000, @700, @0, null, false);
	Fade("絵たぬき*", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba23/000100070tsr">
「ぐおおおおおおおおおんんん…………」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba23/000100080skr">
「おまえの気持ち……わかるよ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba23/000100090skr">
「辛いよな。苦しいよな」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba23/000100100skr">
「この世に神様なんていねぇって」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba23/000100110skr">
「そう、思うよな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Fade("絵ウィンドウ２/*", 0, 1000, null, true);
	Fade("絵マスク２", 0, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	Move("絵ウィンドウ２", 500, @0, 288, Dxl1, false);
	Move("絵マスク２", 500, @0, 0, Dxl1, false);
	Move("絵ウィンドウ２/絵背景*", 6000, @0, -20, null, false);
	Move("絵ウィンドウ２/絵人物*", 6000, @0, -493, null, false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba23/000100120skr">
「――でも」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba23/000100130skr">
「アタシは知ってるんだ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba23/000100140skr">
「神様は、いる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//★徒歩：銃は持ち替えたんだよ！！！！！！
	Move("絵ウィンドウ２", 500, @0, -62, Dxl1, false);
	Move("絵マスク２", 500, @0, -350, Dxl1, false);
	Move("絵ウィンドウ２/絵背景*", 1000, @0, 0, Dxl1, false);
	Move("絵ウィンドウ２/絵人物*", 1000, @0, -470, Dxl1, true);

	CreatePlainSP("上背景", 19999);

	SetTone("絵ウィンドウ２/絵背景*", NULL);
	SetTone("絵ウィンドウ２/絵人物*", NULL);
	Delete("絵カゴメカラー");
	Delete("絵ウィンドウ２/絵背景２");
	Delete("絵ウィンドウ２/絵人物２");
	Delete("絵たぬき*");
	Delete("絵イベント*");

	FadeDelete("上背景", 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba23/000100150skr">
「アタシの心の中に」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	WaitAction("上背景", null);

//	CreateTextureSP("絵背景１", 2000, -400, -576, "cg/ev/l/ev2250沙紅羅銃構え_l.jpg");
	CreateTextureSP("絵背景１", 2000, 0, 0, "cg/ev/l/ev2250沙紅羅銃構え_l.jpg");
//	SetBlur("絵背景１", true, 2, 500, 30, false);

//◆ＳＥ：撃鉄
	//★徒歩：ＳＥ
	CreateSE("SE01","se銃_構える");

	Move("絵ウィンドウ２/絵人物１", 1200, @1000, @0, Axl1, false);
	Move("絵ウィンドウ２/絵背景１", 1200, @-1000, @0, Axl1, false);
	Wait(700);

	MusicStart("SE01",0,1200,0,1000,null,false);
	FadeDelete("絵ウィンドウ２/*", 500, null, false);
	Move("絵背景１", 1000, -200, -200, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba23/000100160skr">
「だから、あんたの心の中にもいるはずだ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba23/000100170skr">
「信じようぜ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	SetBlur("絵背景１", true, 2, 500, 100, false);
	SetVertex("絵背景１", 400, 398);

//◆ＳＥ：撃鉄
	CreateTextureEX("絵背景２", 2000, 0, 0, "cg/ev/ev2250沙紅羅銃構え.jpg");
	Zoom("絵背景２", 0, 1200, 1200, Dxl2, false);
	Request("絵背景２", Smoothing);
	SetVertex("絵背景２", 200, 199);

	SetBlur("絵背景２", false, 2, 500, 30, false);

	//★徒歩：ＳＥ
	CreateSE("SE01","se銃_撃鉄起こす");

	Zoom("絵背景１", 800, 600, 600, Dxl1, false);
	Zoom("絵背景２", 800, 1000, 1000, Dxl1, false);
	Fade("絵背景２", 800, 1000, null, true);

	MusicStart("SE01",0,1200,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba23/000100180skr">
「手遅れなんて、絶対にないって、証明しようぜ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//◆ＳＥ：カチッ！　発砲


	TextBoxDelete(150);

	EndScene();
}
