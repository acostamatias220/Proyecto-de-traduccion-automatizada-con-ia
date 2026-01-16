
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2144恵那.nss_MAIN
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
	$GameName = "2150恵那.nss";
	//$GameCircle=false;

}

scene 2144恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="860">
////////////header////////////
//file name "2144恵那.nss"
//title "スーパーノヴァトラック突入事件"
//previous "2143恵那.nss"

////////////footer////////////
//next "恵那" "2150恵那.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);

{	ClockPass(2144);}

//◆場所：スーパーノヴァ_正面_ガラス車イン
	OnBG(10,"bg0501400スーパーノヴァ_正面_ガラス車イン");
	FadeBG(0,true);

{	St("MR",700, @30,@0,"bu恵那_通常_angry");
	FadeSt("MR",0,true);}
{	St("ML",700, @-30,@0,"bu歌門_通常_shock");
	FadeSt("ML",0,true);}
	FadeDelete("上背景", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]

//◆音声指示：同時
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/440100010fje">
「カッター女！？」
{WaitAddText();}<BR>

//◆音声指示：同時
//【歌門星】
//<voice name="歌門星" class="歌門星" src="voice/21/440100020kms">
//「カッター女！？」


</PRE>
	SetText();
	AddText(1,"「カッター女！？」","富士見恵那","21/440100010fje",false,false,1000);
	AddText(2,"「カッター女！？」","歌門星","21/440100020kms",true,true,1500);
	TypeBeginD();//―――――――――――――――――――――――――――



{	SoundPlay("@xbgm22",0,450,true);}

{	St("ML",700, @-30,@0,"bu歌門_通常_hard");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/440100030kms">
「それはやはり、テレビの――」



{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/440100040fje">
「証拠物件発見！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateTextureEX("絵演背景", 2000, Center, Middle, "cg/img/imgカッター刃元b.jpg");
	Fade("絵演背景", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020a]
//	St("MR",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/440100050fje">
「このカッターナイフ！！
　コレはもしや、さっきテレビに出ていた女のもの！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	FadeDelete("絵演背景", 500, null, true);

{	St("ML",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020b]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/440100060kms">
「じゃあ、やはり――」

{	DeleteAllSt(200,true);}

{	St("C",700, @0,@0,"buユージローa_通常_angry");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/21/440100070ujr">
「わうわうわうッ！！」

{	St("MR",700, @0,@0,"bu平次_御用だ_shout");
//Move("@StNameMR/MR*", 200, @-100, @0, Dxl1, false);
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/440100080fjh">
「御用だ御用だァ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	DeleteAllSt(200,true);
	St("R",700, @0,@0,"buミヅハ_通常_sigh");
//Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	Shake("@StNameR/R*", 300, 10, 0, 10, 0, 500, Axl3, false);
	FadeSt("R",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/440100090mzh">
「ぎゃあああ！！　もじゃもじゃいやじゃああ！！！！
　はなせえええええええええ！！」

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/440100100fje">
「父さん！？」

{	St("ML",700, @0,@0,"bu歌門_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/440100110kms">
「ミヅハ様もッ！」

{	St("MR",700, @0,@0,"bu平次_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/440100120fjh">
「なんと、星さんじゃねぇか！
　こんなところで何を――！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("ML",700, @0,@0,"bu歌門_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/440100130kms">
「わ、私のことなどどうでもいいです！」

{	St("ML",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/440100140kms">
「それより――捜しましたよ、ミヅハ様！！」

{	St("R",700, @0,@0,"buミヅハ_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("R",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/440100150mzh">
「ううっ！　星！　助けるのじゃ！
　モジャモジャ星人に捕まってしまった！」

{	St("R",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("R",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/440100160mzh">
「わらわは、モジャモジャよりも、星が良い……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2145);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("MR",700, @0,@0,"bu平次_落ち込み_shock");
//Move("@StNameMR/MR*", 200, @100, @0, Dxl1, false);
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/440100170fjh">
「な、なんだとぅ！！」

{	St("ML",700, @0,@0,"bu歌門_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/440100180kms">
「それにしても、何故ここに――？」

{	St("MR",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/440100190fjh">
「そりゃ、交通事故があったみてぇだから――」

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/440100200fje">
「静かにして！
　今、ユージローが集中してるんだから！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"buユージローa_通常_hard");
	Shake("@StNameC/C*", 1000, 0, 10, 0, 10, 500, Axl3, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/21/440100210ujr">
「くんくん……くんくん……」


{	St("MR",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/440100220fjh">
「そのカッターは？」

{	St("ML",700, @0,@0,"bu歌門_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/440100230kms">
「恐らく――あの、ノーコとかいう女性のものです」

{	St("MR",700, @0,@0,"buミヅハ_通常_surprise");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/440100240mzh">
「なんと！」



{	DeleteAllSt(200,true);}

{	St("C",700, @0,@0,"buユージローa_通常_hard");
	Shake("@StNameC/C*", 1000, 0, 10, 0, 10, 500, Axl3, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/21/440100250ujr">
「くんくん……くんくんくん……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("ML",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/440100260fje">
「私は信じてる。
　あなたならきっと、この持ち主を嗅ぎつけられる」

{	St("ML",700, @0,@0,"bu恵那_通常_smile");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/440100270fje">
「でしょ、ユージロー」


{	St("C",700, @0,@0,"buユージローa_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/21/440100280ujr">
「わう！」

{	St("ML",700, @0,@0,"bu恵那_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/440100290fje">
「見つけたのね！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2146);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("C",700, @0,@0,"buユージローa_通常_angry");
	DeleteAllSt(200,false);
	Shake($C_次, 200, 0, 30, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/21/440100300ujr">
「わうわう！　わうわうわうっ！！」


{	St("ML",700, @0,@0,"bu恵那_ハルヒ_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/440100310fje">
「行きましょ、ユージロー！」

{	St("C",700, @0,@0,"buミヅハ_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/440100320mzh">
「わらわも行くぞ！」

{	St("ML",700, @0,@0,"bu歌門_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/440100330kms">
「ミヅハ様！　お待ちを！」

{	St("MR",700, @0,@0,"bu平次_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/440100340fjh">
「うお！　ま、待て！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("C",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/21/440100350msi">
「ついでに私も――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 500, 0, null);


//	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateTextureEX("絵背景", 1000, Center, Middle, "cg/ev/ev1830鈴ドロップキック.jpg");
	Zoom("絵背景", 0, 2000, 2000, Dxl2, true);
	SetBlur("絵背景", true, 2, 500, 50, false);


	CreateMovieEX("絵背景ムービー１", 1000, Center, Middle, true, true, "dx/mv_集中線白a1.ngs");
	Zoom("絵背景ムービー１", 0, 3250, 2500, null, true);

	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵背景ムービー１", 200, 1000, null, false);
	Fade("絵背景", 200, 1000, null, false);
	Zoom("絵背景", 200, 1000, 1000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/440100360fjr">
「誰が逃がすかあッ！！」

{	Zoom("絵背景", 200, 5000, 5000, Axl3, false);
	FadeF4("絵背景", 200, 1000, 3000, 0, 0, Axl3, false);

	Wait(200);
	CreateSE("SE02","se戦闘_打撃_ドロップキック01");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorEXadd("絵色", 1500, "#FFFFFF");
	Fade("絵色", 300, 1000, null, true);
	Delete("絵背景*");

	CreateTextureSP("絵ゆれ", 100, Center, Middle, "cg/bg/bg0501400スーパーノヴァ_正面_ガラス車イン.jpg");

	FadeDelete("絵色", 500, null, false);

	Shake("絵ゆれ", 500, 10, 20, 10, 0, 500, AxlAuto, true);
	Shake("絵ゆれ", 500, 10, 20, 0, 0, 500, Axl3, false);
	Request("絵ゆれ",Disused);
}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/21/440100370msi">
「ぎゃああああああッ！！」









</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);
//	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);






//◆場所：スパコン館_裏面_電柱折れ
	OnBG(10,"bg1101300スパコン館_裏面_電柱折れ");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

{	SoundPlay("@xbgm22",0,450,true);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0095]

{	St("C",700, @0,@0,"buユージローa_通常_hard");
	Shake("@StNameC/C*", 500, 0, 10, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/21/440100380ujr">
「わうわう！　わうわうわう！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("ML",700, @0,@0,"bu恵那_一休_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/440100390fje">
「ここ……？」

{	St("C",700, @0,@0,"buユージローa_通常_pride");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 500, 0, 20, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/21/440100400ujr">
「わうわう！　わうわう！」

{	St("MR",700, @0,@0,"buミヅハ_フラット_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/440100410mzh">
「おお！　扉が開いておる――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

{	ClockPass(2147);}

	CreateSE("SE01","se動作_ドア蹴破る");
	MusicStart("SE01",0,500,0,1000,null,false);
WaitKey(500);

	CreateSE("SE02","se動作_歩く02_l");
	MusicStart("SE02",0,700,0,1000,null,false);
SetFrequency("SE02", 4000, 700, null);
WaitKey(2000);
//WaitKey(2000);
	SetVolume("SE02", 2000, 0, null);


	SetVolume("@xbgm*", 500, 0, null);


//◆ＳＥ：バタン！

//◆ＳＥ：足音

//◆演出指定：ドップラー効果で遠ざかっていく


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0105]
{	St("C",700, @50,@0,"buロクローb_通常_cry");
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	Shake("@StNameC/C*", 200, 0, 30, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/21/440100420rkr">
「お助けえええええええええええええええええええええええええええええええええええええええええええええッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
Move("@StNameC/C*", 200, @-200, @0, Dxl1, false);
	Shake("@StNameC/C*", 200, 0, 30, 0, 0, 500, Axl3, false);
	DeleteAllSt(200,true);


//	SoundPlay("@xbgm03",3000,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("MR",700, @0,@0,"bu平次_通常_shock");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/440100430fjh">
「な、なんでい！？」

{	St("ML",700, @0,@0,"bu恵那_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/440100440fje">
「変質者！？」

{	St("MR",700, @0,@0,"buミヅハ_通常_surprise");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/440100450mzh">
「はだかんぼ！」

{	St("ML",700, @0,@0,"bu歌門_通常_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/440100460kms">
「不潔――」


{	SoundPlay("@xbgm22",1000,450,true);
	St("C",700, @0,@0,"buユージローa_通常_angry");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 400, 0, 20, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/21/440100470ujr">
「わうわうわうわうっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/440100480fje">
「やっぱり……なかに、誰かいる？」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/440100490fje">
「……行きましょう」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	SetVolume("@xbgm*", 1000, 0, null);


	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


{	ClockPass(2148);}

//◆場所：スパコン館_通路
	OnBG(10,"bg1102100スパコン館_通路_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0125]
{	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/21/440100500ujr">
「ぐるるるるるる……」

{	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/440100510fje">
「ユージロー、静かに」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("ML",700, @0,@0,"bu歌門_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/440100520kms">
「ここは、閉鎖されていたのでは？」

{	St("MR",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/440100530fjh">
「お化けが出る――って話もあったが。
　どうやら、使われてるらしいな」

//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/440100540fjh">
「サバイバルゲームにはうってつけ、か……」

{	St("C",700, @0,@0,"bu恵那_一休_angry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/440100550fje">
「私が聞いた話だと、確かジャガンナート商会が管理してるはず……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("MR",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/440100560fjh">
「ジャガンナート商会――」

{	St("MR",700, @0,@0,"bu平次_通常_normal");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/440100570fjh">
「ああ、防犯カメラの設置を請け負った、河原屋組の――」



{	DeleteAllSt(200,true);}


//◆音声指示：遠くから
//【バイトＢ】
<voice name="バイトＢ" class="その他女声" src="voice/21/440100580e14">
「ぁぁぁぁ――――ッ！！」



{	St("C",700, @0,@0,"buミヅハ_通常_surprise");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/440100590mzh">
「悲鳴かッ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("ML",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/440100600kms">
「下の方から――！」

{	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/440100610fje">
「え、でも確か地下は――」

{	St("C",700, @0,@0,"bu平次_御用だ_angry");
	DeleteAllSt(200,false);
//Move("@StNameC/C*", 200, @-200, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/440100620fjh">
「どりゃああああああッ！！」

{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/440100630fje">
「ちょ、ちょっと父さん！」






{	DeleteAllSt(200,true);}

{	St("C",700, @0,@50,"bu平次_御用だ_shout");
Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/440100640fjh">
「どっせい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg1104100スパコン館_スタジオ_通常");
	FadeBG(0,true);

	CreateSE("SE01","se動作_ドア蹴破る");
	MusicStart("SE01",0,700,0,1000,null,false);

	DrawDelete("絵黒幕", 300, 100, null, "blind_01_00_1", true);



//	PrintGO("上背景", 5000);

//◆場所：スパコン館_通路
//	OnBG(10,"bg1102100スパコン館_通路_通常");
//	FadeBG(0,true);

//◆ＳＥ：扉を蹴り開ける


//	DrawDelete("上背景", 300, 100, null, "slide_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("C",700, @-200,@0,"bu平次_御用だ_angry");
Move("@StNameC/C*", 200, @200, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/440100650fjh">
「スーパー警官富士見平次、ただいま参上！！」

//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/440100660fjh">
「傷害・器物破損・その他諸々の現行犯で、逮捕――！」


{	SetVolume("@xbgm*", 500, 0, null);}


{	DeleteAllSt(200,true);}

//◆音声指示：遠くから
//【バイトＢ】
<voice name="バイトＢ" class="その他女声" src="voice/21/440100670e14">
「ぁああっっ！！　あっ！　あっ！　あっ！」

//◆音声指示：遠くから
//【バイトＢ】
<voice name="バイトＢ" class="その他女声" src="voice/21/440100680e14">
「だめっ、いく――アタシ、いく、いっちゃ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("C",700, @0,@0,"bu平次_通常_shock");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/440100690fjh">
「え……ＡＶ撮影の機材が、並んでる？」

{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/440100700fje">
「やっぱり……」

{	St("C",700, @0,@0,"buミヅハ_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/440100710mzh">
「はだかんぼ！」

{	St("ML",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/440100720kms">
「なんと淫らな！」

{	St("MR",700, @0,@0,"bu恵那_一休_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/440100730fje">
「ってことは本物は――」



{	SoundPlay("@xbgm22",1000,450,true);
	St("C",700, @0,@0,"buユージローa_通常_pride");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 200, 0, 30, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【ユージロー】

<voice name="ユージロー" class="ユージロー" src="voice/21/440100740ujr">
「わうわうわうわうッ！！」





</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2149);}


	TextBoxDelete(150);
	DeleteAllSt(200,true);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg1102100スパコン館_通路_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "blind_01_00_1", true);


//◆場所：スパコン館_通路
//	OnBG(10,"bg1102100スパコン館_通路_通常");
//	FadeBG(0,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]


{	St("C",700, @50,@0,"buユージローa_通常_normal");
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/21/440100750ujr">
「わうわうわうわう！」

{	St("MR",700, @100,@0,"bu平次_通常_shout");
	DeleteAllSt(200,false);
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
Move("@StNameMR/MR*", 200, @-100, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/440100760fjh">
「おいおい、ちょっと待てよ！」


{	St("ML",700, @50,@0,"bu恵那_通常_shout");
	DeleteAllSt(200,false);
Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/440100770fje">
「もう少し――もう少しで――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);





//◆ＳＥ：パリーン

	CreateSE("SE01","se戦闘_ガラス割れる01");
	MusicStart("SE01",0,300,0,1000,null,false);

Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	DeleteAllSt(200,true);
WaitKey(1000);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("ML",700, @-50,@0,"bu恵那_通常_angry");
Move("@StNameML/ML*", 200, @50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/440100780fje">
「この音は！？」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);



//◆場所：スパコン館_店内
	OnBG(10,"bg1103100スパコン館_店内_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0191]
{	St("C",700, @50,@0,"bu恵那_通常_angry");
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/440100790fje">
「着いたッ」


{	St("ML",700, @0,@0,"buミヅハ_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/440100800mzh">
「どこじゃノーコ！？」

{	St("MR",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/440100810kms">
「大人しく出てきなさいッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("C",700, @0,@0,"bu平次_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/440100820fjh">
「てやんでぇ！　隠れてても見つけ出してやる――」



{	St("ML",700, @0,@0,"buユージローa_通常_hard");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 300, 0, 30, 0, 0, 500, Axl3, false);
	FadeSt("ML",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/21/440100830ujr">
「わうわうっ！！」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/440100840fje">
「ん？　ユージロー？」

{	SetVolume("@xbgm*", 4000, 0, null);}

{	St("C",700, @0,@0,"bu恵那_哀愁_fear");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/440100850fje">
「あ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指定：フウリが倒れてる絵、過去に被らせる感じで入れたいなあ
//あきゅん「素材：evユージロー転倒b」

//	TextBoxDelete(150);

	CreateTextureEX("絵背景", 1000, Center, Middle, "cg/ev/ev2150ユージロー転倒b.jpg");
	Fade("絵背景", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/440100860fje">
「うそ……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



	EndScene();
}
