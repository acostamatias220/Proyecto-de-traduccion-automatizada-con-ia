
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2200沙紅羅_似鳥.nss_MAIN
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
		if($CharaName=="沙紅羅"){
			SetVolumeEX("@xbgm*", 2000, 0, null);
			$GameName="2210沙紅羅_似鳥.nss";
		}else{
			SetVolumeEX("@xbgm*", 2000, 0, null);
			$GameName="2210沙紅羅_似鳥.nss";
		}
	}else{
		if($CharaName=="沙紅羅"){
			$GameName="b2210沙紅羅_似鳥_ノーコ.nss";
		}else{
			$GameName="b2210沙紅羅_似鳥_ノーコ.nss";
		}
	}
}

scene 2200沙紅羅_似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1250">
////////////header////////////
//file name "2200沙紅羅_似鳥.nss"
//title "落ち着かない"
//previous "2150沙紅羅_似鳥_ノーコ.nss"

////////////footer////////////
//next "沙紅羅"（"flkagome2" = true） "b2210沙紅羅_似鳥_ノーコ.nss"
//next "似鳥"（"flkagome2" = true） "b2210沙紅羅_似鳥_ノーコ.nss"

//next "沙紅羅" "2210沙紅羅_似鳥.nss"
//next "似鳥" "2210沙紅羅_似鳥.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆時間：ジャンプ
{	ClockPass(2202);}


//◆場所：似鳥マンション_エントランス
	OnBG(10,"bg1301100似鳥マンション_エントランス_通常");
	FadeBG(0,true);

	CreateSE("SE11","seガヤ_交通少_l");
	MusicStart("SE11",2000,400,0,1000,null,true);


	FadeDelete("上背景", 1000, null, true);
	Wait(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000300010skr">
「――――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/000300020nki">
「――――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/000300030mrp">
「……元気出しなさいよ」

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/000300040mrp">
「これでようやく、自由の身でしょ？」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/000300050mrp">
「ほら、災い転じてなんとやら、っていうじゃない？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("MR",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/000300060mrp">
「同人誌が捨てられちゃったのは災難だけどさ、それがノーコちゃんに拒絶を突きつけたわけで……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/000300070nki">
「…………」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_hard");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/000300080buu">
「いやいや、わかるぜその気持ち！」

{	St("MR",700, @0,@0,"buブーa_通常_cry");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/000300090buu">
「オレもよ、秘蔵のロリＣＧコレクションが<RUBY text="ハードディスク">ＨＤ</RUBY>と共におシャカになった時は――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/000300100nki">
「おまえと一緒にすんな！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("SE*", 1000, 0, null);

	DeleteAllSt(200,true);
	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//◆音声指示：遠くから
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/000300110mzh">
「ぎゃああああ！！」

{	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/000300120mso">
「ん？　この声――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_ero");
	FadeQ($MR_次,0,0,200,0,50,Dxl1,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/000300130buu">
「ミヅハちゃんか！？」]

{
	SetVolumeEX("SE*", 1000, 0, null);
	DeleteAllSt(200,true);
}
//◆音声指示：遠くから
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/000300140kms">
「逃がしませんッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000300150skr">
「え？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SoundPlay("@xbgm03",0,450,true);

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆演出指定：夜空を飛来するいくつもの破魔矢
	CreateTextureEX("EF100", 2100, Center, Middle, "cg/ef/ef破魔矢飛来b.jpg");
	Zoom("EF100", 0, 2000, 2000, Dxl2, true);
	SetBlur("EF100", true, 2, 500, 50, false);
	CreateTextureEX("EF200", 2000, 0, 0, "cg/ef/ef破魔矢飛来a.jpg");
	CreateTextureEX("EF300", 2000, 0, 0, "cg/ef/ef破魔矢飛来a.jpg");
	CreateTextureEX("EF400", 2000, 0, 0, "cg/ef/ef破魔矢飛来b.jpg");

	CreateSE("SE01","se戦闘_弓矢_乱射01");
	CreateSE("SE01a","se戦闘_弓矢_刺さる02");
	CreateSE("SE01b","se戦闘_弓矢_刺さる02");
	CreateSE("SE01c","se戦闘_弓矢_刺さる02");
	CreateSE("SE01d","se戦闘_弓矢_刺さる02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Zoom("EF200", 100, 2000, 2000, Dxl2, false);
	Fade("EF200", 0, 1000, null, true);
	Wait(100);
	Zoom("EF300", 100, 2000, 2000, Dxl2, false);
	Fade("EF300", 0, 1000, null, true);
	Wait(100);
	Zoom("EF400", 100, 2000, 2000, Dxl2, false);
	Fade("EF400", 0, 1000, null, true);
	Wait(100);

	Fade("EF100", 200, 1000, null, false);
	Zoom("EF100", 200, 1000, 1000, Dxl2, true);
	Zoom("EF100", 300, 5000, 5000, Axl3, false);
	FadeF4("EF100", 1000, 1000, 3000, 0, 0, null, false);

	Wait(200);
	Delete("EF200");
	Delete("EF300");
	Delete("EF400");

	Fade("EF100", 100, 0, null, true);
	Delete("EF100");

//◆ＳＥ：トットット！　アスファルトに突き刺さる
	CreatePlainSP("揺用", 15000);
	MusicStart("SE01a",0,700,0,1000,null,false);
	Shake("揺用", 200, 7, 12, 0, 0, 1000, Dxl1, false);
	Wait(200);
	Shake("揺用", 200, 12, 5, 0, 0, 1000, Dxl1, false);
	Wait(200);
	Shake("揺用", 300, 12, 12, 0, 0, 1000, Dxl1, false);
	Wait(200);
	MusicStart("SE01b",0,700,0,1000,null,false);
	Shake("揺用", 300, 12, 12, 0, 0, 1000, Dxl1, false);
	Wait(200);
	Shake("揺用", 300, 12, 12, 0, 0, 1000, Dxl1, false);
	Wait(200);
	Shake("揺用", 300, 12, 12, 0, 0, 1000, Dxl1, false);
	Wait(200);
	MusicStart("SE01c",0,700,0,1000,null,false);
	Shake("揺用", 300, 12, 12, 0, 0, 1000, Dxl1, false);
	Wait(200);
	Shake("揺用", 300, 12, 12, 0, 0, 1000, Dxl1, false);
	Wait(200);
	Shake("揺用", 300, 12, 12, 0, 0, 1000, Dxl1, false);
	Wait(200);
	MusicStart("SE01d",0,700,0,1000,null,false);
	Shake("揺用", 300, 12, 12, 0, 0, 1000, Dxl1, false);
	Wait(200);
	Shake("揺用", 300, 12, 12, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 300, 0, null, true);


//※下倉注：ここから背景「bg0106100秋葉原_蔵前橋通り_通常」で
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	OnBG(10,"bg0106100秋葉原_蔵前橋通り_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 150, 100, null, "slide_01_01_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
{	St("C",700, @0,@50,"buミヅハ_通常_angry");
	FadeSt("C",200,false);
	Shake("@StNameC/C*", 100, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 100, @0, @-50, Dxl1, true);
	Shake("@StNameC/C*", 100, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 100, @-50, @0, Dxl1, true);
	Move("@StNameC/C*", 100, @100, @0, Dxl1, true);
	Move("@StNameC/C*", 100, @-50, @0, Dxl1, true);
}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/000300160mzh">
「うぎゃ！　ぎゃ！　ぎゃ！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_木刀_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000300170skr">
「おいこら！　テメー何しやがるッ！！」

{	DeleteAllSt(200,true);
	Wait(200);

	CreateTextureEX("stand01", 100, Center, InBottom, "cg/st/st歌門_通常_normal.png");
	Request("stand01", Smoothing);
	Move("stand01", 0, @0, @100, null, true);
	Fade("stand01", 200, 1000, null, false);
}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/000300180kms">
「なんですかあなたは？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	FadeDelete("stand01", 200, null, true);
	St("C",700, @0,@0,"bu沙紅羅_木刀_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000300190skr">
「誰だって構わねーだろ！
　こんなガキに矢撃つなんて、頭おかしいぞ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000300200skr">
「なあ、みそブー！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_fear");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/000300210mso">
「あ、あははは……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/000300220buu">
「まあ、その……そうですね……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	DeleteAllSt(200,true);
	CreateTextureEX("stand01", 100, Center, InBottom, "cg/st/st歌門_通常_hard.png");
	Request("stand01", Smoothing);
	Move("stand01", 0, @0, @100, null, true);
	Fade("stand01", 200, 1000, null, true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/000300230kms">
「あ、貴方たち――」

{	CreateTextureEX("stand02", 100, Center, InBottom, "cg/st/st歌門_通常_shout.png");
	Request("stand02", Smoothing);
	Move("stand02", 0, @0, @100, null, true);
	FadeDelete("stand01", 300, Axl2, false);
	Fade("stand02", 200, 1000, null, true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/000300240kms">
「ミヅハ様を誘拐したふたり組！」

{	Fade("stand02", 200, 0, null, true);
	Delete("stand02");
	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000300250skr">
「ゆ――誘拐！？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/000300260mso">
「いやいやいや！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/000300270buu">
「誘拐っていうかなんていうか――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/000300280mzh">
「誘拐ではない！
　こやつは、わらわを助けてくれたのじゃ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	CreateTextureEX("stand01", 100, Center, InBottom, "cg/st/st歌門_通常_hard.png");
	Request("stand01", Smoothing);
	Move("stand01", 0, @0, @100, null, true);
	Fade("stand01", 200, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/000300290kms">
「また屁理屈を――許しません！」

{	CreateTextureEX("stand02", 100, Center, InBottom, "cg/st/st歌門_通常_shout.png");
	Request("stand02", Smoothing);
	Move("stand02", 0, @0, @100, null, true);
	FadeDelete("stand01", 300, Axl2, false);
	Fade("stand02", 200, 1000, null, true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/000300300kms">
「お仕置きですッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：弓が撓る
	TextBoxDelete(150);
	Fade("stand02", 200, 0, null, true);

	CreateSE("SE01","se戦闘_弓矢_弓しなる");
	CreateSE("SE02","se戦闘_弓矢_光の矢");

	CreateTextureEX("EF100", 2000, Center, InBottom, "cg/ev/ev0000歌門破魔弓.jpg");
	CreateTextureEX("EF200", 1999, Center, InBottom, "cg/ef/ef破魔矢飛来a.jpg");
	Zoom("EF100", 0, 2000, 2000, Dxl2, true);
	SetBlur("EF100", true, 2, 500, 50, false);

	MusicStart("SE01",0,700,0,1000,null,false);


	Fade("EF100", 200, 1000, null, false);
	Zoom("EF100", 200, 1000, 1000, Dxl2, false);
	Move("EF100", 200, @0, -150, Dxl2, true);

	Wait(300);

	Fade("EF200", 0, 1000, null, true);
	Zoom("EF100", 300, 5000, 5000, Axl3, false);
	FadeF4("EF100", 300, 1000, 3000, 0, 0, Axl3, false);

	Wait(200);

	SetVolumeEX("SE01", 300, 0, null);
	MusicStart("SE02",0,700,0,1000,null,false);
	Zoom("EF200", 300, 5000, 5000, Axl3, false);
	FadeF4("EF200", 300, 1000, 3000, 0, 0, Axl3, false);

	Fade("EF100", 100, 0, null, true);
	Delete("EF100");

	Wait(200);

	Fade("EF200", 100, 0, null, true);
	Delete("EF200");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	Delete("stand02");
	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/000300310mzh">
「ここまでか――！？」

{	DeleteAllSt(200,false);
	St("ML",700, @50,@100,"buみそa_オラオラ_angry");
	Shake("@StNameML/ML*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameML/ML*", 200, @-50, @-100, Dxl1, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/000300320mso">
「リーゼントパチキッ！！」

{	Move("@StNameML/ML*", 200, @100, @0, Axl1, false);
	DeleteAllSt(200,false);
	St("MR",700, @-50,@100,"buブーa_オラオラ_angry");
	Shake("@StNameMR/MR*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 200, @50, @-100, Dxl1, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/000300330buu">
「アフロスパイダ――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("@StNameMR/MR*", 200, @-100, @0, Axl1, false);
	DeleteAllSt(200,true);

	CreateTextureEX("EF100", 2000, Center, Middle, "cg/ef/ef044_火花c.png");
	Zoom("EF100", 0, 2000, 2000, Dxl2, true);
	SetBlur("EF100", true, 2, 500, 50, false);

//◆ＳＥ：ガキーン
	CreateSE("SE01","se戦闘_金属弾く05");
	MusicStart("SE01",0,700,0,1000,null,false);

	Rotate("EF100", 500, @0, @0, @36000, Axl1,false);
	Fade("EF100", 200, 1000, null, false);
	Zoom("EF100", 200, 1000, 1000, Dxl2, true);
	Zoom("EF100", 300, 5000, 5000, Axl3, false);
	FadeF4("EF100", 300, 1000, 3000, 0, 0, Axl3, false);

	Wait(200);
	Fade("EF100", 100, 0, null, true);
	Delete("EF100");


//◆ＳＥ：ぼにょぼにょ　なんか粘っこい音
	CreateSE("SE02","se擬音_ギャグ_ぽにょぽにょ");
	MusicStart("SE02",0,700,0,1000,null,false);

	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef034_精神汚染.jpg", true);

	CreateTextureEX("stand01", 100, Center, InBottom, "cg/st/st歌門_通常_shock.png");
	Request("stand01", Smoothing);
	Move("stand01", 0, @0, @100, null, true);
	Fade("stand01", 200, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/000300340kms">
「な……なんですかそれッ！？」

{	Fade("stand01", 200, 0, null, true);
	St("C",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/000300350mrp">
「まあ、普通は驚くわよね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("C",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/000300360mzh">
「みそブー……助けてくれるのか？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_オラオラ_pride");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/000300370mso">
「弱きを助け、強きを挫く！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_オラオラ_pride");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/000300380buu">
「それがオレたち、<RUBY text="もものせっく">百野殺駆</RUBY>だ！！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_木刀_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000300390skr">
「ガキンチョ！
　なんだかわかんねーけど、とりあえず行け！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2203);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/000300400mzh">
「でも――」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_木刀_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000300410skr">
「いいから！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/000300420mzh">
「す……すまない、恩に着る！」

{
	Move("@StNameC/C*", 200, @100, @0, Axl1, false);
	DeleteAllSt(200,true);
	CreateTextureEX("stand01", 100, Center, InBottom, "cg/st/st歌門_通常_shout.png");
	Request("stand01", Smoothing);
	Move("stand01", 0, @0, @100, null, true);
	Fade("stand01", 200, 1000, null, true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/000300430kms">
「待ちなさい！」

{	Fade("stand01", 200, 0, null, true);
	St("R",700, @0,@0,"buブーa_通常_hard");
	St("L",700, @0,@0,"buみそa_通常_hard");
	FadeSt("R",200,false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/000300440mso">
「おっと待ちな」

//【ブー】
<voice name="ブー" class="ブー" src="voice/22/000300450buu">
「ここは通さねぇ――」

{	DeleteAllSt(200,true);
	CreateTextureEX("stand01", 100, Center, InBottom, "cg/st/st歌門_通常_hard.png");
	Request("stand01", Smoothing);
	Move("stand01", 0, @0, @100, null, true);
	Fade("stand01", 200, 1000, null, true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/000300460kms">
「邪魔です」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorEX("絵黒幕", 16000, "BLACK");

//◆ＳＥ：ジャンプ
	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);

	EffectZoomadd(10000, 400, 300, "cg/ef/ef034_精神汚染.jpg", false);

//	Move("stand01", 100, @0, @20, Axl1, true);
	Move("stand01", 150, @0, @-50, Dxl1, false);
	Fade("stand01", 150, 0, null, false);
	Fade("絵黒幕", 0, 1000, null, true);
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("stand01");
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg2601100電柱_見上げ_通常.jpg");

	DrawDelete("絵黒幕", 150, 100, null, "slide_02_01_1", true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/000300470mso">
「飛んだッ！？」

//【ブー】
<voice name="ブー" class="ブー" src="voice/22/000300480buu">
「嘘だろッ？！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("絵背景50", 300, 0, null, true);
	Delete("絵背景50");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/000300490buu">
「ただ者じゃねーな――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000300500skr">
「ボーッとしてる場合かよ？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000300510skr">
「みそブー、追っかけろ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/000300520mso">
「でも姐さん――！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000300530skr">
「こっちはいいから、な！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/000300540buu">
「は、はい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se動作_集団走る");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("@xbgm*", 3000, 0, null);


	Shake("@StNameMR/MR*", 200, 0, 5, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 200, @200, @0, Axl1, false);
	DeleteAllSt(200,true);

//◆ＳＥ：足音が消える

	SetVolumeEX("SE*", 3000, 0, Axl2);
	Wait(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/000300550mrp">
「さて、と。これで番組終了――かしらね」

{	St("MR",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/000300560mrp">
「やっぱり時間、余らせちゃった――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000300570skr">
「いーや。まだだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000300580skr">
「アタシが道具を持っていけば、中継はできんだろ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/000300590mrp">
「え？　いや、それはそうかもしれないけど――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_後ろ向き_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000300600skr">
「あとはてめぇ次第だぞ、似鳥」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000300610skr">
「これから、どうする？」

{	DeleteAllSt(200,false);
	SoundPlay("@xbgm12",0,450,true);

	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/000300620nki">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000300630skr">
「おまえまだ、納得、できてねぇんじゃねぇか？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000300640skr">
「ノーコに何かしてやりてぇと思ってんじゃねぇか？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000300650skr">
「もう、逃げるのはやめにしたがってるんじゃねぇか？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/000300660nki">
「『ＮＯ　ＣＯＮＴＲＯＬ』は、ただの同人誌だ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/000300670nki">
「他の同人誌と何ら変わりない。っていうか自分で読み返す機会のない、ただの在庫だ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/000300680nki">
「今日までそう思ってた。でも――」

{	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/000300690nki">
「なくしてみたら、落ち着かないんだ」

{	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/000300700nki">
「オレの胸の中の、一番大切なところが、ポロッと抜け落ちたみたいな、そんな気がするんだ」

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/000300710nki">
「こんなに不安になるなんて、思わなかったんだ」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/000300720mrp">
「だから――ノーコちゃんから、隠そうとしたのね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/000300730nki">
「もう１回――もう１回、オレの同人誌を読み返したい」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/000300740nki">
「ノーコって、オレにとって、なんなのか」

{	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/000300750nki">
「もう１回だけ、考えてみたい」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000300760skr">
「もちろん、付き合うぜ。な、ミリＰ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/000300770mrp">
「もちろんよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/000300780nki">
「……ありがとう」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/000300790mrp">
「けど、具体的にはどうするわけ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000300800skr">
「やっぱり、その村崎とかいうヤツに連絡とって――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/000300810nki">
「たぶんそれは無理」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/000300820nki">
「親分の双一の命令に違反したら、この街じゃ暮らせない。
　村崎も、絶対場所は言わないはずだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000300830skr">
「そうなのか……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/000300840mrp">
「でも、それじゃどうやって……？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/000300850nki">
「中古の同人誌……探すしかないだろうな」

{	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/000300860nki">
「でも……昔の本が、ホントにあるかどうか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 2000, 0, null);



	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);



{	ClockPass(2204);}

//◆場所：秋葉原_裏通り
	OnBG(10,"bg0101200秋葉原_裏通り_閉店");
	FadeBG(0,true);

	SoundPlay("@xbgm24",0,450,true);

//	CreateSE("SE10","seガヤ_交通少_l");
//	MusicStart("SE10",2000,400,0,1000,null,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);
	Wait(300);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/000300870nki">
「…………あ」

{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/000300880nki">
「ダメだ。もう１０時だろ。店、閉まってる」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000300890skr">
「何！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/000300900mrp">
「早いからねー。秋葉原の店は」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000300910skr">
「他にないのか？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/000300920nki">
「ええと、たしか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);
	DeleteAllSt(200,true);


//	SetVolumeEX("@SE*", 2000, 0, null);
//	CreateSE("SE10","seガヤ_交通_l");
//	MusicStart("SE10",2000,700,0,1000,null,true);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆時間：ジャンプ
{	ClockPass(2206);}

//◆場所：秋葉原_中央通り
	OnBG(10,"bg0103211秋葉原_中央通り_閉店");
	FadeBG(0,true);

//	SetVolumeEX("@SE*", 2000, 0, null);
//	CreateSE("SE10","seガヤ_交通_l");
//	MusicStart("SE10",2000,400,0,1000,null,true);


	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/000300930nki">
「閉まってる――」

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/000300940nki">
「ここもダメ！」

{	St("C",700, @0,@0,"bu似鳥_通常_angry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/000300950nki">
「あの店も！」

{	St("C",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/000300960nki">
「この店も！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//	SetVolumeEX("@SE*", 2000, 0, null);

//	CreateSE("SE11","seガヤ_交通少_l");
//	MusicStart("SE11",2000,400,0,1000,null,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);



//◆時間：ジャンプ
{	ClockPass(2208);}

//◆場所：スパコン館_裏面
	OnBG(10,"bg1101300スパコン館_裏面_電柱折れ");
	FadeBG(0,true);


	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0221]
{	St("C",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/000300970nki">
「だ……だめだ……全部閉まってる……」

{	DeleteAllSt(200,false);

	St("ML",700, @0,@0,"bu沙紅羅_木刀_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000300980skr">
「こうなったら実力行使で――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/000300990nki">
「おいバカ！　やめろ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_木刀_angry");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000301000skr">
「んなこと言っても、背に腹は――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/000301010mrp">
「なに言ってるの！
　テレビ中継してるのよ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_木刀_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000301020skr">
「じゃあ切れ！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/000301030nki">
「いやいや！　ここで切ってもモロバレでしょ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_木刀_pride");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000301040skr">
「あぁーん？　モロバレ上等！」

{	St("ML",700, @0,@0,"bu沙紅羅_木刀_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000301050skr">
「警察が怖くて、ヤンキーやってられっかよ！！」

{	St("ML",700, @0,@0,"bu沙紅羅_木刀_rage");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000301060skr">
「どりゃあああああッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	Move("@StNameC/C*", 200, @100, @100, Axl1, false);
	DeleteAllSt(200,true);



//◆ＳＥ：ガシッガシ！
	CreateSE("SE01","se戦闘_破壊02");
	CreateSE("SE02","se戦闘_破壊02");
	CreateSE("SE03","se動作_シャッター蹴る");


	MusicStart("SE01",0,700,0,1000,null,false);
	CreatePlainSP("揺用", 15000);
	Shake("揺用", 300, 5, 15, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 300, 0, null, true);
	Delete("揺用");

	MusicStart("SE02",0,700,0,1000,null,false);
	CreatePlainSP("揺用", 15000);
	Shake("揺用", 300, 15, 5, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 300, 0, null, true);
	Delete("揺用");

	MusicStart("SE03",0,700,0,1000,null,false);
	CreatePlainSP("揺用", 15000);
	Shake("揺用", 600, 12, 12, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 600, 0, null, true);
	Delete("揺用");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	St("C",700, @0,@0,"bu沙紅羅_木刀_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000301070skr">
「入り口、あけろおおおおッッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【バイトＣ】
<voice name="バイトＣ" class="その他男声" src="voice/22/000301080e15">
「な、何やってるんですかお客さん！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000301090skr">
「おう、おまえ店員か！？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000301100skr">
「緊急事態なんだ！　早く開けろ！」

{	DeleteAllSt(200,true);}
//【バイトＣ】
<voice name="バイトＣ" class="その他男声" src="voice/22/000301110e15">
「やめてください！　やめて！」

{	St("C",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/000301120nki">
「バカ！　やめろ！　やめろって！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2209);}


	SetVolumeEX("@xbgm*", 1000, 0, null);


	TextBoxDelete(150);

	DeleteAllSt(200,true);

//◆ＳＥ：扉開く
	CreateSE("SE01","se動作_ドア開ける04");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);


	CreateTextureEX("stand01", 100, Center, InBottom, "cg/st/st平次_通常_shout.png");
	Request("stand01", Smoothing);
	Move("stand01", 0, @0, @200, null, true);
	Move("stand01", 200, @0, @-100, Dxl1, false);
	Fade("stand01", 200, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000301130fjh">
「……ん？」

{	FadeDelete("stand0*", 200, null, true);
	St("ML",700, @0,@0,"bu沙紅羅_後ろ向き_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000301140skr">
「あ」

{	DeleteAllSt(200,true);
	CreateTextureEX("stand01", 100, Center, InBottom, "cg/st/st平次_通常_hard.png");
	Request("stand01", Smoothing);
	Move("stand01", 0, @0, @100, null, true);
	Fade("stand01", 200, 1000, null, true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000301150fjh">
「てめぇら、なにしてやがる？」

{	FadeDelete("stand0*", 200, null, true);
	SoundPlay("@xbgm03",0,450,true);

	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeQ($ML_次,0,0,200,0,50,Dxl1,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000301160skr">
「げ！　モジャモジャ！」

{	DeleteAllSt(200,true);
	CreateTextureEX("stand01", 100, Center, InBottom, "cg/st/st平次_通常_shout.png");
	Request("stand01", Smoothing);
	Move("stand01", 0, @0, @100, null, true);
	Fade("stand01", 200, 1000, null, true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000301170fjh">
「おう、キンカクジ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
{	FadeDelete("stand0*", 200, null, true);
	St("ML",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000301180skr">
「キンカクジじゃねぇっつーの！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000301190skr">
「アイツは強ぇ！　逃げっぞ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/000301200nki">
「え？　逃げるって――」

{	St("MR",700, @50,@0,"bu似鳥_通常_shock");
	Shake("@StNameMR/MR*", 200, 0, 7, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);
	Shake("@StNameMR/MR*", 400, 0, 9, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 400, @-100, @0, Dxl1, false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/000301210nki">
「ぎゃ！　ちょっとひきずんな！　引きずんなって！」

{	Shake("@StNameMR/MR*", 400, 0, 9, 0, 0, 1000, Axl1, false);
	Move("@StNameMR/MR*", 400, @-100, @0, Axl1, false);
	DeleteAllSt(400,true);

	St("C",700, @0,@0,"bu平次_御用だ_shout");
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeQ($C_次,0,0,200,0,50,Dxl1,false);
	FadeSt("C",200,false);
	Zoom("@StNameC/C*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameC/C*", 100, 1000, 1000, Axl2, true);	}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000301220fjh">
「御用だ御用だあッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@50,"fu似鳥_通常_rage");

	Shake("@StNameMR/MR*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 200, @0, @-50, Dxl1, false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/000301230nki">
「ぎゃああああああ！！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@50,"fu沙紅羅_後ろ向き_rage");
	Shake("@StNameML/ML*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameML/ML*", 200, @0, @-50, Dxl1, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/000301240skr">
「おいコラ！　気合い入れて走れ！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@50,"buミリＰa_ショータイム_pinch");
	Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/000301250mrp">
「え？　ちょっとふたりとも、待ってェ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("@StNameC/C*", 200, @-200, @0, Axl1, false);
	DeleteAllSt(200,true);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);



	EndScene();
}
