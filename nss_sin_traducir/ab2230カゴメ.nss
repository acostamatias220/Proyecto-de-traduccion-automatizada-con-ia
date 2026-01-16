
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ab2230カゴメ.nss_MAIN
{
//■カゴメチェック
	Kagome_IsChaeck("flkagome1b");

	if($CharaName=="千秋"||$CharaName=="恵那"||$CharaName=="似鳥"||$CharaName=="ノーコ"||$CharaName=="フウリ"){
		GameBreak();//死亡
	}

//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		if($CharaName!="千秋"&&$CharaName!="恵那"&&$CharaName!="似鳥"&&$CharaName!="ノーコ"&&$CharaName!="フウリ"){
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
	Kagome("flkagome1b");

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

	if(#flkagome1b){
		//☆成功（aba）
		//次がエンディングファイルなので
		//#aba2400恵那_aba_in=true;
		//VariableValue(#,"Ending_"+#RouteName,true);
		#Ending_aba=true;

		$GameName="aba2400恵那.nss";//★エンディングへ（aba）
		AXNL_ReachingTimeZone("aba2400恵那");
	}else{
		//☆失敗（abb）
		//次がエンディングファイルなので
		//#abb2400沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ_abb_in=true;
		//VariableValue(#,"Ending_"+#RouteName,true);
		#Ending_abb=true;

		$GameName="abb2400沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss";//★エンディングへ（abb）
		AXNL_ReachingTimeZone("abb2400沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ");
	}
}

scene ab2230カゴメ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="650">
////////////header////////////
//file name "ab2230カゴメ.nss"
//title "スクイアソビ"
//previous "ab2210沙紅羅_h.nss"

////////////footer////////////
//カゴメアソビ成功 "flkagome1b" = true
//カゴメアソビ失敗 "flkagome1b" = false
//next "沙紅羅"（"flkagome1b" = true） "aba2400恵那.nss"
//next "沙紅羅"（"flkagome1b" = false） "abb2400沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss"


////////////body////////////

//■再定義定型文
	PrintGO("上背景", 30000);

	ClockDelete(0,true);//時計は非表示！

//◆場所：地下_地下鉄
	OnBG(10,"bg0703100地下_地下鉄_通常");
	FadeBG(0,true);

//◆ＳＥ：沙紅羅と双六の足音
	CreateSE("SE01","se動作_歩く2人_l");
	MusicStart("SE01",0,700,0,1000,null,true);

	FadeDelete("上背景", 2000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/300100010skr">
「…………」

{	St("MR",700, @0,@0,"bu双六a_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100020ksr">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("MR",200,true);

	SetVolume("@SE01", 500, 0, NULL);

	//★徒歩：ＳＥ
	CreateSE("SE04","se環境_地鳴り02_l");
	MusicStart("SE04",1000,700,0,1000,null,false);

//◆演出指定：太四郎が地上で暴れて地震
	CreatePlainSP("絵背景１", 10);
	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	St("ML",700, @0,@0,"bu沙紅羅_後ろ向き_normal");
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	St("MR",700, @0,@0,"bu双六a_通常_hard");

	Shake("@StNameML/ML*", 7000, 0, 5, 0, 0, 500, AxlDxl, false);
	Shake("@StNameMR/MR*", 7000, 0, 5, 0, 0, 500, AxlDxl, false);
	Shake("絵背景１", 7000, 0, 5, 0, 0, 500, AxlDxl, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
{	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/300100030skr">
「地震――？」

{	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100040ksr">
「わからない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("MR",200,true);

	Shake("@StNameML/ML*", 1000, 0, 10, 0, 0, 500, Dxl1, false);
	Shake("@StNameMR/MR*", 1000, 0, 10, 0, 0, 500, Dxl1, false);
	Shake("絵背景１", 1000, 0, 10, 0, 0, 500, Dxl1, false);

//◆ＳＥ：遠くから水の音
	CreateSE("SE02","se戦闘_爆破水しぶき");
	MusicStart("SE02",0,300,0,1000,null,false);
	CreateSE("SE03","se環境_水流_l");
	MusicStart("SE03",1000,350,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/300100050skr">
「水――？」

{	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100060ksr">
「ああ。地震で、地盤が緩くなってたんだろ」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);
	//★徒歩：ＳＥプロセス１
	CreateSE("SE09","se動作_着地");
	MusicStartPro("@SE09",0,1700,0,1000,null,false,1000);
	//★立ち絵プロセス：開始
	FadeDeleteStPro("ML", 200, 1000, 200, 200);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/300100070skr">
「急ぎましょ――きゃっ！」

{	//★徒歩：ＳＥプロセス停止（継続するなら必要なし）
	DustMusic("@SE09", 500, 0, NULL);
	//★立ち絵プロセス：再定義
	DustSt("ML");
	//★徒歩：ＳＥ
	CreateSE("SE01","se動作_バッグ渡す");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("C",700, @0,@0,"bu双六a_通常_shock");
	MoveEX($C_次, 200, -20, 0, Dxl1, false);
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100080ksr">
「と――大丈夫か？」

{	St("C",700, @0,@0,"bu沙紅羅_乙女_shy");
	DeleteSt("C",200,true);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/300100090skr">
「ありがとう、双六」

{	St("C",700, @0,@0,"bu双六a_通常_smile");
	DeleteSt("C",200,true);
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100100ksr">
「気をつけろ」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shy");
	DeleteSt("C",200,true);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/300100110skr">
「うん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);

	SetVolume("@SE*", 2000, 0, NULL);
	SetVolume("@x*", 2000, 0, NULL);

	PrintDrawNut("上背景", 1000, 100, "blind_01_00_0", true);

	WaitKey(1000);

//◆場所：籠_正面_ブラックライト
	OnBG(10,"bg0801200籠_正面_ブラックライト");
	FadeBG(0,true);

	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

	WaitKey(1000);

//◆演出指定：遠くから、うっすらとかごめうたが流れる
	MusicStart("@xbgm14_pia",3000,100,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/300100120skr">
「アザナエル……？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100130ksr">
「ウランガラスをはめ込んである。
　ブラックライトでしか読めない文字だ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100140ksr">
「完全会員制。
　秘密の場所だからな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	//★徒歩：ＳＥ
	CreateSE("SE01","se動作_ドア開ける05");
	MusicStart("SE01",0,700,0,1000,null,false);

	Zoom("@OnBG*", 1200, 1500, 1500, Dxl1, false);

	PrintDrawNut("上背景", 1000, 100, "slide_06_00_1", true);

//◆場所：籠_内部
	OnBG(10,"bg0802100籠_内部_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 2000, null, true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/300100150skr">
「ここは……？」

{	St("MR",700, @0,@0,"bu双六a_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100160ksr">
「感じるか？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/300100170skr">
「……ええ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("MR",700, @0,@0,"bu双六a_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100180ksr">
「籠――そんな名前の場所だ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100190ksr">
「昔、たくさんの男たちが、ここで命を失った」

{	CreateTextureEX("絵背景１", 2000, 0, 0, "cg/img/imgアザナエルa.png");
	Fade("絵背景１", 500, 500, null, true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100200ksr">
「そのアザナエルで、自分の願いを叶えるために」

{	St("MR",700, @0,@0,"bu双六a_通常_pride");
	FadeDelete("絵背景１", 500, null, false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100210ksr">
「オレたちは、籠の中の鳥ってわけさ」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/300100220skr">
「鳥――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteSt("ML",200,true);

	CreateColorEX("絵色１", 10, "#000000");

	SetVolumeEX("@xbgm14_pia", 10000, 450, null);
//	MusicStart("@xbgm14",5000,250,0,1000,null,true);

	St("C",700, @0,@0,"bu双六a_通常_pinch");

	Fade("絵色１", 6000, 1000, null, false);
	FadeSt("C",500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100230ksr">
「聞こえるか？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/300100240skr">
「え……？」

{	St("C",700, @0,@0,"bu双六a_通常_angry");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100250ksr">
「オレには、ハッキリ聞こえるよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	MusicStart("@xbgm14",5000,450,0,1000,null,true);

	Fade("絵色１", 500, 1000, null, false);
	DeleteSt("C",500,true);

	CreatePlainSP("上背景", 10000);

//	CreateTextureEX("絵背景１", 2000, 0, -312, "cg/bg/l/bg0802100籠_内部_通常_l.jpg");
//	Fade("絵背景１", 0, 1000, null, true);
//	SetTone("絵背景１", Monochrome);

	KagomeColorSet("絵カゴメカラー",3000,"fdf202");
	Fade("絵カゴメカラー", 0, 1000, null, true);
	KagomeTexture("絵背景１","絵背景２",2000,0,-312,"cg/bg/l/bg0802100籠_内部_通常_l.jpg");
	Fade("絵背景*", 0, 1000, null, true);

	$SilhouetteColor="fdf202";
	$SilhouetteFade=100;
	$silhouette=true;
	St("C",7000, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",500,true);

//	CreateColorEX("絵色３", 2000, "#fdf202");
//	Request("絵色３", OverlayRender);
//	Fade("絵色３", 0, 1000, null, true);

	Move("絵背景*", 51200, @-1024, @0, null, false);
	FadeDelete("上背景", 1500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100260ksr">
「歌ってやがるんだよ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100270ksr">
「暗闇の向こうから、ジッとこちらを見つめて」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100280ksr">
「おまえも早くこっちにこいって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	CreateColorEX("絵色２", 10000, "#000000");
	Fade("絵色２", 1000, 1000, null, true);

	DeleteSt("C",0,true);
	$silhouette=false;

	Delete("絵カゴメカラー");
	Delete("絵背景*");
	Delete("絵色１");
	Delete("絵色３");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100290ksr">
「かごめかごめが聞こえてくるんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	St("C",700, @0,@0,"fu沙紅羅_通常_normal");
	FadeSt("C",200,true);



	SetVolumeEX("@xbgm*", 3000, 0, null);

//	MusicStart("@xbgm14",3000,1,0,1000,null,true);

	//★徒歩：フラッシュプロセス開始
	FlashPro("@絵色２", 0, 1000, 0, 2000, 0, 500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/300100300skr">
「それが――あなたの、苦しみの元凶ね」

{	//★徒歩：フラッシュプロセス停止
	DustFlash("@絵色２",500,0,null,true);
	Delete("@絵色２");
	St("MR",700, @0,@0,"bu双六a_通常_shock");
	DeleteSt("C",500,true);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100310ksr">
「沙紅羅――？」

{	MusicStart("@xbgm28",0,450,0,1000,null,true);

	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/300100320skr">
「大丈夫」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("ML",700, @0,@0,"bu沙紅羅_前のめり_happy");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/300100330skr">
「アザナエルは、アタシの望みを叶えるんでしょ？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/300100340skr">
「絶対に、やり直してみせる」

{	St("MR",700, @0,@0,"bu双六a_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100350ksr">
「アザナエルは、願いを叶える」

{	St("MR",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100360ksr">
「その願いは――おまえが本当に望むことだけ」

{	St("MR",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100370ksr">
「いくらうわべで繕っても、ダメだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("MR",700, @0,@0,"bu双六a_横向き_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100380ksr">
「自分の願いに、自信があるか？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/300100390skr">
「アタシは、信じる」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/300100400skr">
「今日、ここでふたりが出会った、運命を」

{	St("MR",700, @0,@0,"bu双六a_横向き_pride");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100410ksr">
「失敗しても、後悔はないんだな？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/300100420skr">
「あなたのためなら」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("MR",700, @0,@0,"bu双六a_横向き_pride");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100430ksr">
「帰るなら、今のうち――」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_happy");
	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("ML", 200, 1500);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/300100440skr">
「ありがとう。でも――」

{	//★立ち絵プロセス：再定義
	AgainSt("ML",700, @0,@0,"bu沙紅羅_通常_smile");
//	AgainSt("ML",700, @0,@0,"bu沙紅羅_頭かき_smile");
//	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
//	FadeSt("ML",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/300100450skr">
「アタシは今、なにをするべきかくらい、わかってる」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/300100460skr">
「ちょうだい」

{	St("MR",700, @0,@0,"bu双六a_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100470ksr">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("@x*", 3000, 0, NULL);

	DeleteSt("MR",200,true);

	//★徒歩：ＳＥ
	CreateSE("SE01","se銃_セーフ解除");
	MusicStart("SE01",0,700,0,1000,null,false);

	WaitKey(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　双六は、沙紅羅に、アザナエルを手渡す。

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/300100480skr">
「…………」

　沙紅羅は無言のまま弾を確認し――

{	//★徒歩：ＳＥ
	CreateSE("SE01","se銃_シリンダー回転");
	MusicStart("SE01",0,700,0,1000,null,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/300100490skr">
「…………」

　シリンダを回し――

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",500,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/300100500skr">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//	St("L",700, @0,@0,"fu沙紅羅_通常_normal");
	CreateTextureEX("絵背景１", 10, 0, -376, "cg/bg/l/bg0802100籠_内部_通常_l.jpg");
	CreateTextureEX("絵人物１", 700, -134, -273, "cg/bu/l/bu沙紅羅_通常_normal_x01.png");
	DeleteSt("C",0,false);

//	CreateWindow("絵ウィンドウ１", 150, 290, Middle, 2000, 2000, false);
//	Rotate("絵ウィンドウ１", 0, @0, @0, 61, null, true);

	CreateMask("絵ウィンドウ１", 150, 0, 0, "cg/mask/ciスラッシュ_00_01.png", false);
//	CreateMask("絵ウィンドウ１", 150, 0, 0, "cg/mask/ciスラッシュ_05_00.png", false);
//	Rotate("絵ウィンドウ１", 0, @0, @-180, @0, null, true);
	SetAlias("絵ウィンドウ１", "絵ウィンドウ１");

	CreateTextureEX("絵マスク１", 10001, 0, 0, "cg/mask/ciスラッシュ_00_00z.png");
//	CreateTextureEX("絵マスク１", 10001, 0, 0, "cg/mask/ciスラッシュ_05_01za.png");
//	Rotate("絵マスク１", 0, @0, @-180, @0, null, true);

	CreateTextureEX("絵ウィンドウ１/絵背景１", 2000, -1024, -312, "cg/bg/l/bg0802100籠_内部_通常_l.jpg");
	CreateTextureEX("絵ウィンドウ１/絵人物１", 2000, 332, -47, "cg/bu/l/bu双六a_通常_sad_x01.png");

	//★徒歩：ＳＥ
	CreateSE("SE01","se銃_構える");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵背景１", 0, @-60, @0, Dxl1, false);
	Move("絵人物１", 0, @-120, @0, Dxl1, false);
	Move("絵ウィンドウ１/絵背景１", 0, @130, @0, Dxl1, false);
	Move("絵ウィンドウ１/絵人物１", 0, @180, @0, Dxl1, true);

	Fade("絵マスク１", 0, 1000, null, false);

	Fade("絵背景１", 0, 1000, null, false);
	Fade("絵人物１", 0, 1000, null, false);
	Fade("絵ウィンドウ１/絵背景１", 0, 1000, null, false);
	Fade("絵ウィンドウ１/絵人物１", 0, 1000, null, false);

	Move("絵背景１", 500, @60, @0, Dxl2, false);
	Move("絵人物１", 500, @120, @0, Dxl2, false);
	Move("絵ウィンドウ１/絵背景１", 500, @-130, @0, Dxl2, false);
	Move("絵ウィンドウ１/絵人物１", 500, @-180, @0, Dxl2, true);

//	FadeSt("L",0,true);
	MusicStart("@xbgm14",3000,450,0,1000,null,true);

	//★徒歩：セットカゴメカラー
	KagomeColorAuto(10000,500,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　構える。

{	WaitAction("@OnKG*", null);
	CreateTextureSP("絵ウィンドウ１/絵人物１", 2000, 332, -47, "cg/bu/l/bu双六a_通常_hard_x01.png");
	KagomeColorAuto(10000,200,true);//★徒歩：セットカゴメカラー
}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100510ksr">
「…………」

{	CreateTextureSP("絵人物１", 700, -134, -273, "cg/bu/l/bu沙紅羅_通常_sad_x01.png");
	KagomeColorAuto(10000,200,true);//★徒歩：セットカゴメカラー
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/300100520skr">
「…………」

　瞳が揺らぐ。

{	CreateTextureSP("絵人物１", 700, -134, -273, "cg/bu/l/bu沙紅羅_通常_hard_x01.png");
	KagomeColorAuto(10000,200,true);//★徒歩：セットカゴメカラー
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/300100530skr">
「アタシたちは」

{	CreateTextureSP("絵人物１", 700, -134, -273, "cg/bu/l/bu沙紅羅_通常_normal_x01.png");
	KagomeColorAuto(10000,200,true);//★徒歩：セットカゴメカラー
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/300100540skr">
「やり直せる」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/300100550skr">
「今からでも、遅くない」

{	CreateTextureSP("絵人物１", 700, -134, -273, "cg/bu/l/bu沙紅羅_通常_shout_x01.png");
	KagomeColorAuto(10000,200,true);//★徒歩：セットカゴメカラー
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/300100560skr">
「遅いわけなんて、ない」

{	CreateTextureSP("絵人物１", 700, -134, -273, "cg/bu/l/bu沙紅羅_通常_smile_x01.png");
	KagomeColorAuto(10000,200,true);//★徒歩：セットカゴメカラー
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/300100570skr">
「そうでしょう？」

{	CreateTextureSP("絵ウィンドウ１/絵人物１", 2000, 332, -47, "cg/bu/l/bu双六a_通常_sad_x01.png");
	KagomeColorAuto(10000,200,true);//★徒歩：セットカゴメカラー
}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100580ksr">
「……頼む」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100590ksr">
「おまえの言葉で――」

{	CreateTextureSP("絵ウィンドウ１/絵人物１", 2000, 332, -47, "cg/bu/l/bu双六a_通常_hard_x01.png");
	KagomeColorAuto(10000,200,true);//★徒歩：セットカゴメカラー
}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100600ksr">
「響いてるこの歌を、消してくれ……」

{	CreateTextureSP("絵ウィンドウ１/絵人物１", 2000, 332, -47, "cg/bu/l/bu双六a_通常_angry_x01.png");
	KagomeColorAuto(10000,200,true);//★徒歩：セットカゴメカラー
}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100610ksr">
「汚れちまったオレの魂を、救ってくれ……」

{	CreateTextureSP("絵人物１", 700, -134, -273, "cg/bu/l/bu沙紅羅_通常_normal_x01.png");
	KagomeColorAuto(10000,200,true);//★徒歩：セットカゴメカラー
	FadeDelete("@OnKG*", 1000, null, false);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/300100620skr">
「双六」

{	WaitAction("@OnKG*", null);
	CreateTextureEX("絵ウィンドウ１/絵人物２", 2000, 332, -47, "cg/bu/l/bu双六a_通常_hard_x01.png");
	FadeDelete("絵ウィンドウ１/絵人物１", 300, Axl3, false);
	Fade("絵ウィンドウ１/絵人物２", 300, 1000, Dxl2, true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100630ksr">
「沙紅羅」

{	CreateTextureEX("絵人物２", 700, -134, -273, "cg/bu/l/bu沙紅羅_通常_smile_x01.png");
	FadeDelete("絵人物１", 300, Axl3, false);
	Fade("絵人物２", 300, 1000, Dxl2, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab22/300100640skr">
「愛してる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	//★徒歩：ＳＥ
	CreateSE("SE01","se銃_撃鉄起こす");
	MusicStart("SE01",0,2000,0,1000,null,false);

	CreateTextureEX("絵ウィンドウ１/絵人物３", 2000, 332, -47, "cg/bu/l/bu双六a_通常_shock_x01.png");
//	Move("絵ウィンドウ１/絵人物*", 300, @0, @-300, AxlDxl, false);
	FadeDelete("絵ウィンドウ１/絵人物２", 300, Axl3, false);
	Fade("絵ウィンドウ１/絵人物３", 300, 1000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab22/300100650ksr">
「オレも、おまえを――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	WaitAction("絵ウィンドウ１/絵人物*", null);

	SetVertex("絵マスク１", 0, 576);
	SetVertex("絵ウィンドウ１", 0, 576);

	Rotate("絵マスク１", 500, @0, @0, 60, null, false);
	Move("絵マスク１", 500, @0, @576, Dxl1, false);
	Rotate("絵ウィンドウ１", 500, @0, @0, 60, null, false);
	Move("絵ウィンドウ１", 500, @0, @576, Dxl1, false);

//	Move("絵マスク１", 500, @1000, @0, Dxl1, false);
//	Move("絵ウィンドウ１", 500, @1000, @0, Dxl1, false);

	Move("絵背景１", 500, @0, @-200, AxlDxl, false);
	Move("絵人物２", 500, -175, -543, AxlDxl, true);

//◆ＳＥ：撃鉄を起こす
//	CreateSE("SE01","se銃_撃鉄起こす");
//	MusicStart("SE01",0,700,0,1000,null,false);
//	WaitKey(2000);

//◆ＳＥ：カチッ！
//	CreateSE("SE02","se銃_構える");
//	MusicStart("SE02",0,700,0,1000,null,false);

	EndScene();
}
