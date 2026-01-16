
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2140恵那.nss_MAIN
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
	$GameName = "2143恵那.nss";
	//$GameCircle=false;

}

scene 2140恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="430">
////////////header////////////
//file name "2140恵那.nss"
//title "スーパーノヴァトラック突入事件"
//previous "2134恵那.nss"

////////////footer////////////
//next "恵那" "2143恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);

{	ClockPass(2140);}

//◆場所：スーパーノヴァ_ライブ会場
	OnBG(10,"bg0502111スーパーノヴァ_ライブ会場_通常");
	FadeBG(0,true);

	SoundPlay("@xbgm20",2000,450,true);

//	FadeDelete("上背景", 500, null, true);
	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/400200010fjr">
「あ……恵那ちん、星ちゃん！
　時間ぴったりだねっ！」

{	St("C",700, @0,@0,"bu鈴_通常_happy");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/400200020fjr">
「ほら！　この窓見て！　すごいでしょ！
　みそブー君たちがちゃちゃっと直しちゃった！」

//	St("C",700, @0,@0,"bu鈴_シリアス_smile");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/400200030fjr">
「山あり谷あり――ここに漕ぎ着けるまで色々あったけど、コレでやっと、今夜のライブの準備万端――」

{	St("ML",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/400200040fje">
「星さん、わかってますね？
　私が注意を引きつけてる間に、そっと――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("MR",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/400200050kms">
「……はい！」


{	DeleteAllSt(200,true);}

{	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/400200060fjr">
「恵那ちん？　何コソコソ話してるのかな？」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/400200070fjr">
「そ・れ・と・も……
　また、アタシの空中殺法、喰らいたいのかなー？」


{	St("ML",700, @0,@0,"bu恵那_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/400200080fje">
「ち、違うよ違うって！　そうじゃなくてコレ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/400200090fjr">
「ん？　名刺がどうか――」

{	DeleteAllSt(200,true);}
{	CreateTextureEX("絵オブ", 100, Center, Middle, "cg/obj/objロクロー名刺.png");
	Move("絵オブ", 0, @0, @100, null, true);

	Move("絵オブ", 300, @0, @-100, DxlAuto, false);
	Fade("絵オブ", 300, 1000, null, true);
}

//	St("C",700, @0,@0,"bu鈴_もじゃ_angry");
//	Shake($C_次, 400, 20, 0, 0, 0, 500, Axl3, false);
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/400200100fjr">
「なんですとおおおおおおおおおおっっっっ！！！！」


{	Move("絵オブ", 300, @0, @100, DxlAuto, false);
	Fade("絵オブ", 300, 0, null, true);
	Delete("絵オブ");
}

{	St("C",700, @0,@0,"bu鈴_もじゃ_angry");
	Shake($C_次, 400, 20, 0, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/400200110fjr">
「ちょ！　なんで！？
　なんで恵那ちんがロクロー様の名刺を！？」

{	St("ML",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/400200120fje">
「スカウトされかけた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("C",700, @0,@0,"bu鈴_もじゃ_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/400200130fjr">
「は？　スカウト？　うそッ！　いつ！？」

{	St("ML",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/400200140fje">
「さっき。スパコン館で」

{	St("C",700, @0,@0,"bu鈴_シリアス_sad");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/400200150fjr">
「そっか……アタシは泣く泣く見送ったけど、確か今日はイベントがあったから……」

{	St("C",700, @0,@0,"bu鈴_通常_happy");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/400200160fjr">
「で？　で？　で？　恵那ちん受けたの！？」

{	St("ML",700, @0,@0,"bu恵那_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/400200170fje">
「いやいや、私あんまりそういうの興味ないし……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2141);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("C",700, @0,@0,"bu鈴_通常_shock");
	St("C",700, @0,@0,"bu鈴_シリアス_shout");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);
	FadeStPro("C", 200, 2000);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/400200180fjr">
「嘘ぉ！？
　恵那ちんも一緒に、ロクロー様の活躍見たじゃない！」

{	AgainSt("C",700, @0,@0,"bu鈴_シリアス_shout");
	St("ML",700, @0,@0,"bu恵那_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/400200190fje">
「その代わりに、鈴姉を推薦しといたから」

{	St("C",700, @0,@0,"bu鈴_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/400200200fjr">
「え……？」

{	St("ML",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/400200210fje">
「スパコン館に行けば、まだきっと会えると――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("C",700, @0,@0,"bu鈴_もじゃ_shock");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 200, 20, 0, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/400200220fjr">
「す……スパコン館にっ！？」

{	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, Axl3, false);}
//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/400200230fjr">
「うぐ、うぐぐぐぐぐぐ……」

{	St("ML",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/400200240fje">
「鈴姉、どうしちゃったの？
　ロクローさんにずっと、会いたかったんでしょ？」

{	St("C",700, @0,@0,"bu鈴_もじゃ_shock");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/400200250fjr">
「うぐ、うぐぐぐぐぐ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("ML",700, @0,@0,"bu恵那_ハルヒ_pride");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/400200260fje">
「もしかしたら、こっから女優デビューの道も開けちゃうかも――！！」

{	St("C",700, @0,@0,"bu鈴_シリアス_fear");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 200, 20, 0, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/400200270fjr">
「だ、だめだぁ……」

{	St("ML",700, @0,@0,"bu恵那_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/400200280fje">
「え……嘘……」

{	St("C",700, @0,@0,"bu鈴_シリアス_sad");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/400200290fjr">
「やっぱり今日は駄目。今日だけは駄目。
　フウリちゃんと、ライブに全力尽くすって約束したの」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/400200300fjr">
「今夜は、このスーパーノヴァを離れるわけには――」

{	St("C",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/400200310fjr">
「って、あ！　なにしてるのかなっ！？」

{	St("R",700, @-50,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
Move("@StNameR/R*", 200, @50, @0, Dxl1, false);
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/400200320kms">
「しまった！　見つかった――！？」

{Move("@StNameR/R*", 200, @50, @0, Dxl1, false);
	DeleteAllSt(200,true);
}
{	St("C",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/400200330fjr">
「絶対――絶対、逃がさないッ！！」


//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/400200340fjr">
「必殺――！」

{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/400200350fjr">
「大気圏突破式！　ドロップキ――――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2142);}

	SetVolume("@xbgm*", 1000, 0, null);


//	TextBoxDelete(150);

	CreateSE("SE01","seメカ_車_クラクション_l");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","seメカ_車_急ブレーキ");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateColorEXadd("絵色", 1500, "#FFFFFF");
	Fade("絵色", 300, 1000, null, true);

	DeleteAllSt(0,true);


	CreateTextureEX("絵背景", 100, Center, Middle, "cg/img/img迫り来る村崎のトラック.jpg");
	Fade("絵背景", 0, 1000, null, true);
	Fade("絵色", 300, 0, null, false);
	Zoom("絵背景", 500, 2000, 2000, DxlAuto, false);
	WaitKey(300);
	Fade("絵色", 200, 1000, null, true);
WaitKey(200);
	Delete("絵背景");

	OnBG(10,"bg0502300スーパーノヴァ_ライブ会場_ガラス車イン");
	FadeBG(0,true);

	FadeDelete("絵色", 500, null, false);

	CreateSE("SE01","se戦闘_ガラス割れる02");
	CreateSE("SE01a","seガヤ_客暴動_l");
	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE01a",0,700,0,1000,null,false);
	CreateTextureSP("絵ゆれ", 100, Center, Middle, "cg/bg/bg0502300スーパーノヴァ_ライブ会場_ガラス車イン.jpg");

	Shake("絵ゆれ", 500, 30, 20, 30, 0, 500, AxlAuto, true);
	Shake("絵ゆれ", 500, 10, 20, 0, 0, 500, Axl3, true);
	Request("絵ゆれ",Disused);

	WaitKey(500);

	SetVolumeEX("SE01a", 2000, 0, null);

	WaitKey(1000);




//◆ＳＥ：プップー！　車の音

//◆演出指定：トラック衝突直前
//あきゅん「素材：img	迫り来る村崎のトラック」

//◆ＳＥ：キキー！　ブレーキ


//◆演出指定：ガッチャーン！！




//◆場所：スーパーノヴァ_ライブ会場_ガラス車イン

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//◆音声指示：同時
//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/400200360fjr">
「「「ええええええええええええ――――ッッ！？」」」

//◆音声指示：同時
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
//<voice name="富士見恵那" class="富士見恵那" src="voice/21/400200370fje">
//「ええええええええええええ――――ッッ！？」

//◆音声指示：同時
//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
//<voice name="歌門星" class="歌門星" src="voice/21/400200380kms">
//「ええええええええええええ――――ッッ！？」

</PRE>
	SetText();
	AddText(1,"「ええええええええええええ――――ッッ！？」","富士見鈴","21/400200360fjr",false,false,1000);
	AddText(2,"「ええええええええええええ――――ッッ！？」","富士見恵那","21/400200370fje",false,true,1000);
	AddText(3,"「ええええええええええええ――――ッッ！？」","歌門星","21/400200380kms",false,true,1500);
	TypeBeginD();//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]






{	St("MR",700, @50,@0,"bu歌門_通常_shock");
Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/400200390kms">
「み、皆さん……大丈夫ですか？」

{	St("ML",700, @0,@50,"bu恵那_通常_pinch");
	DeleteAllSt(200,false);
Move("@StNameML/ML*", 200, @0, @-50, Dxl1, false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/400200400fje">
「う……うん。一応、けが人はいないみたいだけど――」

{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu鈴_シリアス_think");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/400200410fjr">
「……………………」

{	St("ML",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/400200420fje">
「……鈴姉？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("C",700, @0,@50,"bu鈴_通常_smile");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 300, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/400200430fjr">
「フフ……フフフフフ…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);
//	DeleteAllSt(200,true);


	EndScene();
}
