
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2000ノーコ.nss_MAIN
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
	$GameName = "2007千秋_恵那_ノーコ.nss";
//	$GameCircle=false;

}

scene 2000ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1370">
////////////header////////////
//file name "2000ノーコ.nss"
//title "げんじつのそんざい"
//previous "1950ノーコ.nss"

////////////footer////////////
//next "ノーコ" "2007千秋_恵那_ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintGO("上背景", 30000);

{	ClockPass(2000);}

	SoundPlay("@xbgm21",0,450,true);


	OnBG(10,"bg0801200籠_正面_ブラックライト");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @0,@0,"buみそa_通常_fear");
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/000100010mso">
「な、なななな……なんなんだよ、コレッ！」

{	DeleteAllSt(150,true);
	St("C",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/000100020buu">
「わかんねーけど……ヤバイだろコレ」

{	DeleteAllSt(150,true);
	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000100030nko">
「アザ……ナエル……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000100040nko">
「しってる」

{	DeleteAllSt(150,true);
	St("C",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100050mzh">
「なんじゃと？　何故おぬしが――」

{	DeleteAllSt(150,true);
	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000100060nko">
「みこが、でんわでいってた」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000100070nko">
「ちかでんからきえた……とか。
　かわらやそういちの、けいかく……とか」

{	DeleteAllSt(150,true);
	St("C",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100080mzh">
「バカなっ！
　アザナエルは結界が守っていたはず――」

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100090mzh">
「いや……待てよ。
　先ほどの地震は……もしや結界が解けたときの……」

{	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100100mzh">
「すると……か、かなりマズいことに……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//◆演出指定：ガクブル
	DeleteAllSt(150,true);
	St("MR",700, @0,@50,"buみそa_通常_fear");
	Shake("@StNameMR/MR*", 200, 15, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 200, @0, @-50, Dxl1, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/000100110mso">
「な……なあ、ミヅハ？」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100120mzh">
「ん、なんじゃ？」

//◆演出指定：ガクブル
{	DeleteAllSt(150,true);
	Shake_Loop_shima("@StNameMR/MR*","shake01");
	St("MR",700, @0,@0,"buみそa_通常_fear");
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/000100130mso">
「もしかして……そこに、だれか……いるのか？」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100140mzh">
「おお、そうかそうか。
　紹介がまだじゃったのう」

//◆演出指定：ガクブル
{	DeleteAllSt(150,true);
	St("MR",700, @0,@50,"buブーa_通常_angry");
	Shake("@StNameMR/MR*", 200, 15, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 200, @0, @-50, Dxl1, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/000100150buu">
「えッ！？」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100160mzh">
「怖がらずとも良い。ここにいるのは――」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@50,"buみそa_通常_fear");
	Move("@StNameMR/MR*", 200, @0, @-50, Dxl3, false);
	Shake("@StNameMR/MR*", 200, 50, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("MR",200,true);
	Shake("@StNameMR/MR*", 500, 50, 0, 0, 0, 1000, Dxl3, false);
	Move("@StNameMR/MR*", 500, @0, @100, Dxl3, false);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/000100170mso">
「ひええええええッ！！」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100180mzh">
「だから、怖がらずともよいと――」

{	Delete("@shake01");
	DeleteAllSt(150,true);
	St("MR",700, @0,@50,"buみそa_通常_fear");
	Shake("@StNameMR/MR*", 200, 15, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 200, @0, @-50, Dxl1, false);
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/000100190mso">
「音！」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100200mzh">
「おと？」

{	DeleteAllSt(150,true);
	St("C",700, @0,@0,"buみそa_通常_fear");
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/000100210mso">
「あっちから……なにか、聞こえる」

{	DeleteAllSt(150,true);
	St("C",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/000100220buu">
「聞こえるって、そんなばか……な？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 2000, 0, null);


	DeleteAllSt(200,true);

//◆ＳＥ：遠くから聞こえるかすかな足音。
	CreateSE("SE01","se動物_イヌ_歩く_l");
	MusicStart("SE01",0,500,0,1000,null,true);

{	ClockPass(2001);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/20/000100230ujr">
「ハッハッハッハッハッハッハ……！」

{	St("C",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100240mzh">
「……………………」

{	DeleteAllSt(150,true);
	St("C",700, @0,@0,"buみそa_通常_fear");
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/000100250mso">
「ひぃぃ…………」

{	DeleteAllSt(150,true);
	St("C",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/000100260buu">
「聞こえる……？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指定：ここ最大音量で
	SetVolume("SE*", 3000, 1000, null);

	DeleteAllSt(200,false);
	TextBoxDelete(150);

	Wait(1800);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",50,1000,null,true);

	St("C",700, @0,@80,"buユージローa_通常_normal");
	Zoom("@StNameC/C*", 0, 1500, 1500, null, false);
	Request("@StNameC/C*", Smoothing);
	FadeSt("C",0,true);
	Zoom("@StNameC/C*", 100, 2000, 2000, Dxl3, false);

//	Move("@StNameC/C*", 200, @0, @-100, Dxl3, false);

	Fade("フラッシュ白",300,0,null,true);
	SetVolume("SE*", 100, 0, null);

//◆演出指定：このとき、同時に地上で雷が鳴っているので、雷フラッシュ的な演出があったほうがいいかも。

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/20/000100270ujr">
「わうわうわうわうッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

/*
//◆音声指示：同時
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100280mzh">
「ぎゃあああああああああああああああ！！」

//◆音声指示：同時
//【みそ】
//<voice name="みそ" class="みそ" src="voice/20/000100290mso">
「ぎゃあああああああああああああああ！！」

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/20/000100300buu">
「ぎゃあああああああああああああああ！！」
*/
	Zoom("@StNameC/C*", 100, 2500, 2500, null, false);
	DeleteAllSt(200,false);

	St("L",700, @0,@0,"buみそa_通常_angry");
	St("R",700, @0,@0,"buブーa_通常_angry");
	St("C",2001, @0,@100,"buミヅハ_通常_angry");
	Shake("@StNameL/L*", 200, 15, 0, 0, 0, 1000, Dxl1, false);
	Shake("@StNameR/R*", 200, 15, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("L",200,false);
	FadeSt("R",200,true);

	Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,false);

	Delete("フラッシュ白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]
//◆音声指示：同時
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100280">
「「「ぎゃあああああああああああああああ！！」」」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,1000,0,1000,null,true);
	Move("@StNameC/C*", 150, @0, @300, Axl1, false);
	DeleteSt("C", 150,true);

	Wait(200);

	Move("@StNameL/L*", 150, @-300, @0, Axl1, false);
	Move("@StNameR/R*", 150, @300, @0, Axl1, false);
	CreateSE("SE02","se動作_走る01_l");
	MusicStart("SE02",0,1000,0,1000,null,true);
	CreateSE("SE03","se動作_走る01_l");
	MusicStart("SE03",0,1000,0,1000,null,true);
	CreateSE("SE04","se動物_イヌ_歩く_l");
	MusicStart("SE04",0,1000,0,1000,null,true);
	DeleteSt("L", 150,false);
	DeleteSt("R", 150,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0076]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100310mzh">
「のわあああああああああああああああ！！」

//【みそ】
<voice name="みそ" class="みそ" src="voice/20/000100320mso">
「どひゃああああああああああああああ！！」

//【ブー】
<voice name="ブー" class="ブー" src="voice/20/000100330buu">
「ぬわあああああああああああああああ！！」

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/20/000100340ujr">
「わうわうわうわう――――――――ん！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE*", 5000, 0, null);

	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000100350nko">
「ばらばら」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000100360nko">
「みんな、いなくなった」

{	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000100370nko">
「ミヅハは、かえるき、ない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000100380nko">
「おいかけるいみ、ある？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//◆音声指示：遠くから
	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",1000,300,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100390mzh">
「たたたた、たすけてたもれ――――――ッ！！」

{	SetVolume("SE*", 1000, 0, null);
	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000100400nko">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);
	TextBoxDelete(150);

	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

{	ClockPass(2002);}


//◆演出指定：時間経過
	Wait(1000);

	OnBG(10,"bg0701600地下_通路_バックギャモン");
	FadeBG(0,true);

//◆演出指定：ひとりで暗闇の中にいるミヅハ
	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",2000,1000,0,1000,null,true);
	Wait(2000);
	SetVolume("SE*", 1000, 0, null);

	CreateSE("SE20","se環境_風低音_l");
	MusicStart("SE20",2000,700,0,1000,null,true);

	FadeDelete("絵色黒", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0105]
{	St("C",700, @100,@0,"buミヅハ_通常_sigh");
	Move("@StNameC/C*",300, @-100, @0, Dxl3, false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100410mzh">
「はぁッ……はぁッ……はぁッ……はぁッ……」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100420mzh">
「た……たすかった……
　一時は……どうなることかと……」

{	St("C",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100430mzh">
「しかし……ここは、どこかの……？
　みなは……どこに行ってしまったのかの？」

{	St("C",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100440mzh">
「も……もしや……」

{	St("C",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100450mzh">
「あの歳で、迷子に！？」

{	St("C",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100460mzh">
「はっはっはっは！　情けないやつらじゃのう！
　わらわはひとりでちゃんと逃げ出せたというのに……」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100470mzh">
「にげだして……そして……」

{	St("C",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100480mzh">
「ぅ……うう……」

{	St("C",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100490mzh">
「ここは……どこじゃ……？」

{	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100500mzh">
「おい！　みそ！　ブー！　ノーコ！」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100510mzh">
「わらわが……わらわが悪かった！」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100520mzh">
「だから……だ、誰かっ！
　わらわを……た、助けてたもれ……！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",700, @0,@0,"buミヅハ_ダウナー_sad");
	FadeSt("C",200,false);

	Shake("@StNameC/C*", 200, 15, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 500, @0, @50, Dxl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100530mzh">
「ひぐっ、う、うう……」

{	St("C",700, @0,@50,"buミヅハ_ダウナー_cry");
	FadeSt("C",200,false);
	Move("@StNameC/C*", 200, @0, @50, Axl3, false);
	DeleteAllSt(200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100540mzh">
「うわああああああああああああああん！！」

{	CreateColorEX("絵色黒", 20, "#000000");
	Fade("絵色黒", 1500, 1000, null, false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100550mzh">
「だれがあああああ、だずげでえええええええ！！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000100560nko">
「みつけた」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100570mzh">
「ひぐっ、う……そ、その声……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolumeEX("@SE*", 2000, 0, null);

	DeleteAllSt(200,true);

	Fade("絵色黒", 500, 1000, null, false);

	CreateTextureEX("絵立絵", 100, center, middle, "cg/bu/l/buノーコa_通常_normal_x01.png");
	Move("絵立絵", 0, @0, @-50, null, true);

	Wait(200);

//	SetBlur("絵立絵", true, 2, 500, 50, false);
	Fade("絵立絵", 1000, 1000, null, false);
	Move("絵立絵", 1500, @0, @50, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100580mzh">
「の、の、のの……ノーコッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",0,700,0,1000,null,true);
	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	Request("@StNameC/C*", Smoothing);
	Zoom("@StNameC/C*", 10000, 2000, 2000, null, false);
	FadeSt("C",1200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140a]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100590mzh">
「ノオオオオオコオオオオオオ！！」

　ミヅハは涙ながらにノーコへと飛び込み――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 100, 0, null);
	Zoom("@StNameC/C*", 100, 2500, 2500, Dxl3, false);
	DeleteAllSt(100,true);
	CreateSE("SE02","se人体_倒れる01");
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("絵立絵", 500, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140b]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100600mzh">
「ふぎゃっ！」

　抱きつこうとしてそのまま向こう側にすり抜けて転ぶ。

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100610mzh">
「いだいいいいいいいい！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Delete("絵立絵");
	FadeDelete("絵色黒", 300, null, false);

	St("C",700, @0,@600,"buミヅハ_フラット_happy");
	FadeSt("C",0,true);
	Move("@StNameC/C*", 500, @0, @-600, Dxl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100620mzh">
「でもうれぢいいいいいい！！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@-50,"buノーコa_通常_normal");
	FadeSt("C",200,false);
	Move("@StNameC/C*", 1500, @0, @50, Dxl3, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000100630nko">
「おちつく」

{	DeleteAllSt(150,true);
	St("C",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("C",200,true);
	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100640mzh">
「うわああああああん！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,true);
	TextBoxDelete(150);

	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 500, 1000, null, true);

//◆演出指示：時間経過
{	ClockPass(2003);}

//◆演出指定：時間経過
	Wait(1000);

	FadeDelete("絵色黒", 1000, null, true);

	SoundPlay("@xbgm15",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0155]
{	St("ML",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100650mzh">
「…………」

{	DeleteAllSt(150,false);
	St("MR",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000100660nko">
「…………」

{	St("MR",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000100670nko">
「げんき、ない」

{	DeleteAllSt(150,false);
	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100680mzh">
「そ、そんなことはないぞ！」

{	St("ML",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100690mzh">
「ノーコも助けに、来てくれたしのう！」

{	St("ML",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100700mzh">
「星が怖くなど、まったく、全然、怖くないぞ！」

{	St("ML",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100710mzh">
「あは、あはははははは！」

{	DeleteAllSt(150,false);
	St("MR",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000100720nko">
「……うそつき」

{	DeleteAllSt(150,false);
	St("ML",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100730mzh">
「…………」

{	DeleteAllSt(150,false);
	St("MR",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000100740nko">
「アザナエルって、なに？」

{	DeleteAllSt(150,false);
	St("ML",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100750mzh">
「…………」



{	DeleteAllSt(150,false);
	St("MR",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000100760nko">
「ひみつ？」

{	DeleteAllSt(150,false);
	St("ML",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100770mzh">
「…………」

{	DeleteAllSt(150,false);
	St("MR",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000100780nko">
「ともだちなのに？」

{	DeleteAllSt(150,false);
	St("ML",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100790mzh">
「ともだち……」

{	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100800mzh">
「うむ、そうじゃな」

{	St("ML",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100810mzh">
「ともだち、じゃものな」

{	DeleteAllSt(150,false);
	St("MR",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000100820nko">
「ともだち」

{	DeleteAllSt(150,false);
	St("ML",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100830mzh">
「アザナエルは、願いを叶える銃じゃ」

{	DeleteAllSt(150,false);
	St("MR",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000100840nko">
「ねがいをかなえる？」

{	DeleteAllSt(150,false);
	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100850mzh">
「禍福は糾える縄。
　無論、幸福ばかりを運ぶわけではない」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100860mzh">
「アザナエルで願いを叶える儀式――カゴメアソビで、何人もの人間が命を落としておる」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100870mzh">
「その力の強さ故に、ここ１０年の間、半田明神の地下殿に封ぜられておった」

{	St("ML",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100880mzh">
「毎年、初詣に皆からたくさんの願いを受けて、その力をゆっくりと薄めておったのじゃ」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100890mzh">
「そしてようやく今年、この大晦日に、その呪縛が消えようとしていたその矢先――」

{	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100900mzh">
「アザナエルが、盗まれた」

{	DeleteAllSt(150,false);
	St("MR",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000100910nko">
「ほんとうに……ねがいをかなえる？」

{	DeleteAllSt(150,false);
	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100920mzh">
「うむ。それは、間違いないが……」

{	DeleteAllSt(150,false);
	St("MR",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000100930nko">
「それじゃあ、もしかして――」

{	St("MR",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000100940nko">
「もうそうじゃなく、げんじつのそんざいに？」

{	DeleteAllSt(150,false);
	St("ML",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100950mzh">
「そ……そうか、その手があったか！」

{	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100960mzh">
「ノーコよ！　アザナエルは『願い』に反応する！」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100970mzh">
「おぬしが心から現実化したいと願い、なおかつ、カゴメアソビに成功すれば、きっと――」

{	DeleteAllSt(150,false);
	St("MR",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000100980nko">
「あれ……？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000100990nko">
「ひかり？」

{	DeleteAllSt(150,false);
	St("ML",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000101000mzh">
「お……本当じゃ！　どうやら出口のようじゃぞ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 1000, 0, null);

{	ClockPass(2004);}

	DeleteAllSt(200,true);
	TextBoxDelete(150);

	Wait(500);

	CreateColorEX("絵色白", 5000, "#FFFFFF");
	Fade("絵色白", 500, 1000, null, true);

	Wait(500);
	DeleteAllSt(0,true);

//◆場所：スパコン館_通路
	OnBG(10,"bg1102100スパコン館_通路_通常");
	FadeBG(0,true);

	FadeDelete("絵色白", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	St("C",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000101010mzh">
「ここは……別の建物か？」

{	DeleteAllSt(200,true);}
　ミヅハが内側から開けたのは、ロッカーの扉。

　まるで隠し通路のように、道が繋がっていた。

{	DeleteAllSt(150,false);
	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000101020nko">
「しずかに」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000101030nko">
「むこうにひとがいる」

{	DeleteAllSt(150,false);
	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000101040mzh">
「……そのようじゃな。静かに、参ろうぞ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);
	TextBoxDelete(150);

//◆ＳＥ：扉が開く
	CreateSE("SE01","se動作_ドア開ける04");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(200);

//◆場所：スパコン館_裏面
	OnBG(10,"bg1101200スパコン館_裏面_閉店");
	FadeBG(0,true);

	CreateTextureSP("絵演大背景", 11, -760, -460, "cg/bg/l/bg1101200スパコン館_裏面_閉店_l.jpg");

	Wait(600);

	CreateSE("SE03","seガヤ_交通少_l");
	MusicStart("SE03",1000,700,0,1000,null,true);

	DrawTransition("絵黒幕", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("絵黒幕");

{	St("C",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000101050mzh">
「ふぅ……ようやく、外の空気が吸えたのう」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000101060mzh">
「しかし、こんなところに繋がっておるとは――
　地下道はなかなか広いようじゃな」

{	St("C",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000101070mzh">
「ん？　ノーコ、どうした？」

{	DeleteAllSt(150,false);
	St("C",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000101080nko">
「にとり――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(150,true);

	CreatePlainSP("絵板写", 5000);
	Delete("絵演大背景");
	FadeDelete("絵板写", 500, null, true);

{	ClockPass(2005);}

//◆演出指定："2000似鳥.nss"と同じ

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　似鳥は、ミヅハと同じエコバッグを持ちながら、携帯電話になにやら真剣な顔で話しかけていた。

//◆音声指示：小声
{	St("L",700, @0,@0,"st似鳥_通常_normal");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000101090nki">
「見つかりました」

//◆音声指示：小声
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000101100nki">
「双一親分が捜せって言ってたものが、見つかりました」

//◆音声指示：小声
{	St("L",700, @0,@0,"st似鳥_通常_hard");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000101110nki">
「ほんとうです」

//◆音声指示：小声
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000101120nki">
「今、持ってます」

{	DeleteAllSt(150,false);
	St("MR",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000101130mzh">
「なんか、頼りなさげな男じゃの」

{	DeleteAllSt(150,false);
	St("MR",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000101140nko">
「こんどいったら、かみさまでも――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("MR",700, @0,@0,"buノーコa_カッター_angry");
	Move($MR_今, 200, @-40, @0, Axl1, false);
	DeleteSt("MR",200,true);
//◆ＳＥ：カッターナイフ
	CreateSE("SE01","se戦闘_カッター_刃出す04単発");
	MusicStart("SE01",0,700,0,1000,null,false);
	MoveEX($MR_次, 200, 0, -50, Dxl1, false);
	FadeSt("MR",200,true);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0265]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000101150nko">
「ころす」

{	DeleteAllSt(150,false);
	St("MR",700, @0,@50,"buミヅハ_通常_sigh");
	FadeSt("MR",100,true);
	Move("@StNameMR/MR*", 100, @0, @-100, null, true);
	Move("@StNameMR/MR*", 100, @0, @50, Dxl3, true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000101160mzh">
「ひっ！」

{	St("MR",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000101170mzh">
「す……すまんすまん！
　口が過ぎたようじゃ」

//◆音声指示：小声
{	DeleteAllSt(150,false);
	St("L",700, @0,@0,"st似鳥_通常_hard");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300655nki">
「バックギャモン……ですね。
　すぐに行きます！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

/*
下倉注：カット 2010/11/09

//◆音声指示：小声
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000101190nki">
「はい、今から行きます」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000101200nki">
「わかってます」

*/

//※下倉注：次の台詞追加 2010/11/10

{	ClockPass(2006);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0265a]
//◆音声指示：小声
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300670nki">
「…………ふぅ」


//◆音声指示：小声
{	St("L",700, @0,@0,"st似鳥_通常_happy");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000101210nki">
「ようし……
　これでなんとかなりそうだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameL/L*", 200, @80, @0, Axl3, false);
	DeleteAllSt(200,true);

//◆ＳＥ：走り出す
	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",0,700,0,1000,null,true);
	SetVolume("SE01", 5000, 0, null);

	WaitKey(2000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0285]
{	DeleteAllSt(150,false);
	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000101220mzh">
「追いかけるか？」

{	DeleteAllSt(150,false);
	St("MR",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000101230nko">
「…………」

{	St("MR",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000101240nko">
「……いらない」

{	DeleteAllSt(150,false);
	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000101250mzh">
「名残惜しそうじゃのう。
　あとで後悔しても、遅いのじゃぞ」

{	DeleteAllSt(150,false);
	St("MR",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000101260nko">
「…………」

{	DeleteAllSt(150,false);
	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000101270mzh">
「のう、ノーコ。
　おぬし、あやつを置いて成仏できるのか？」

{	DeleteAllSt(150,false);
	St("MR",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000101280nko">
「…………」

{	DeleteAllSt(150,false);
	St("ML",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000101290mzh">
「やれやれ。
　おぬしもまだ、うまく自分の気持ちが――」

{	DeleteAllSt(200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000101300fje">
「いたああああああああああ――――！！！！」

{	DeleteAllSt(150,false);
	St("ML",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000101310mzh">
「へ？」

{	SetVolume("SE*", 500, 0, null);
	SoundPlay("@xbgm03",0,450,true);
	DeleteAllSt(150,false);
	CreateSE("SE01","se擬音_ギャグ_ぴょこ");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("R",700, @0,@0,"bu恵那_ハルヒ_angry");
	Move("@StNameR/R*", 200, @-80, @0, Dxl3, false);
	FadeSt("R",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000101320fje">
「逃がさないわよっ！　とりゃあああッ！」

{	Move("@StNameR/R*", 300, @-100, @0, Dxl3, false);
	DeleteAllSt(200,true);
	CreateSE("SE01","se動作_抱く");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("ML",700, @0,@0,"buミヅハ_通常_angry");
	Shake("@StNameML/ML*", 500, 0, 50, 0, 0, 500, null, false);
	Move("@StNameML/ML*", 500, @-100, @0, null, false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000101330mzh">
「無礼者め！　離さんか！　こらー！　掴むな恵那！」

{	DeleteAllSt(150,false);
	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000101340nko">
「えな……！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：回想開始 "1930ノーコ.nss"]

//	SetVolume("SE*", 500, 0, null);

	CreateColorEXadd("絵色１", 20000, "#FFFFFF");
	Fade("絵色１", 300, 1000, null, true);

	CreateColorEXadd("絵色２", 2000, "#FFFFFF");
	Fade("絵色２", 0, 300, null, true);

	ClockDelete(0,true);
	ClockTime(2006);

	DeleteSt("C",0,true);
	CreateTextureEX("絵背景１", 10, 0, 0, "cg/bg/bg0603111半田明神_境内_通常.jpg");
	Fade("絵背景１", 0, 1000, null, true);

	St("C",700, @0,@0,"bu歌門_通常_think");
	FadeSt("C",200,true);

	Fade("絵色１", 700, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0315]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/20/000101350kms">
「それでその、双六を一応土砂から掘り出したんですけれども、はい、なんだか犬と女の人の声を聞いたとか……」

{	St("C",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/20/000101360kms">
「私はその前に……
　恵那様が来ているのを見ておりました」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：回想終了
	Fade("絵色１", 300, 1000, null, true);
	Delete("絵色２");

	ClockPass(2006);

	Delete("絵背景１");
	DeleteSt("C",0,true);

	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",0,true);

	Fade("絵色１", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0325]
{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/000101370nko">
「たしか……えなが、アザナエルを……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	EndScene();
}