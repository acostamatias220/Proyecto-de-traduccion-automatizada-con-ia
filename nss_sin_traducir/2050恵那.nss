
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2050恵那.nss_MAIN
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
	$GameName = "2100恵那.nss";
	//$GameCircle=false;

}

scene 2050恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1490">
////////////header////////////
//file name "2050恵那.nss"
//title "死体消失トリック！？"
//previous "2040恵那.nss"

////////////footer////////////
//next "恵那" "2100恵那.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);

//事件定義
	KoreJikenSet();

{	ClockPass(2050);}


//◆場所：スーパーノヴァ_控え室
	OnBG(10,"bg0503100スーパーノヴァ_控え室_通常");
	FadeBG(0,true);

	SoundPlay("@xbgm16",3000,200,true);

	FadeDelete("上背景", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//◆音声指示：テレビ越し
//	St("C",700, @0,@0,"buユージローa_通常_normal");
//	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/20/500300010ujr">
『わうわうわうわうっ！！』

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300020fje">
「ユージロー！？」

{	DeleteAllSt(200,true);}

　テレビで中継される「全国ゆるキャラバン」に――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateMaskAXLSP("絵マ", 800, 0, 0, "ci縦ライン_00_00", true, "ci縦ライン_00_00z");
	Zoom("絵マ*", 0, 0, 1000, null, true);
	CreateTextureSP("絵マ/絵背景", 790, 0, 0, "cg/bg/bg1203100ＵＰ＋_セット裏_通常.jpg");

	CreateTextureSP("絵マ/絵ef", 792, Center, Middle, "cg/ef/efテレビ画面用効果フィルター.jpg");
	Request("絵マ/絵ef",AddRender);
	Fade("絵マ/絵ef", 0, 300, null, true);

	CreateTextureSP("絵マ/絵立11", 791, 113, 124, "cg/bu/buユージローb_通常_ero.png");//113,174
	Move("絵マ/絵立11", 0, @0, @100, Dxl1, false);
	Move("絵マ/絵立11", 100, @0, @-100, Dxl1, false);
	Zoom("絵マ*", 100, 1000, 1000, null, true);
	Shake("絵マ/絵立11", 300, 10, 0, 0, 0, 1000, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]

//◆音声指示：テレビ越し
//	St("C",700, @0,@0,"buユージローb_通常_angry");
//	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/20/500300030ujr">
『わう――――――――ん！！』


//◆演出指示：ブルマー装着型ユージロー


{	St("R",700, @30,@0,"bu鈴_シリアス_shout");
	FadeSt("R",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/500300040fjr">
「…………………………は？」

{	St("L",700, @-30,@0,"bu恵那_通常_shy");
	DeleteAllSt(200,false);
	FadeSt("L",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300050fje">
「ユージロー！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

	Move("絵マ/絵立11", 200, @-100, @0, Dxl1, false);
	Shake("絵マ/絵立11", 200, 0, 20, 0, 20, 1000, Dxl1, false);
	FadeDelete("絵マ/絵立11", 200, null, true);



//ゆる絵あるらしい
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]

//◆音声指示：テレビ越し
//	St("C",700, @0,@0,"buユージローb_通常_ero");
//	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/20/500300060ujr">
『はっはっはっは！』

//◆音声指示：テレビ越し
//	St("C",700, @0,@0,"buミヅハ_通常_cry");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/500300070mzh">
『だずげでええええ！！　だべられるうううう！！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	Zoom("絵マ*", 100, 0, 1000, null, true);
	Delete("絵マ*");
}

{	St("C",700, @0,@0,"bu恵那_一休_pride");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300080fje">
「ふ……ふふ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2051);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("C",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300090fje">
「ふふふ、ふふふふ……」

{	St("C",700, @0,@0,"bu恵那_通常_happy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300100fje">
「あは、あはははははは……！！」

{	St("MR",700, @0,@0,"bu鈴_通常_sad");
	DeleteAllSt(200,true);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/500300110fjr">
「恵那ちん！？　どした？
　おかしくなっちゃった！？」

{	St("C",700, @0,@0,"bu恵那_通常_happy");
	DeleteAllSt(200,true);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300120fje">
「ち、ちがうの！
　あれ……あのブルマー、よく見て！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2052);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("MR",700, @0,@0,"bu鈴_通常_shock");
	DeleteAllSt(200,true);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/500300130fjr">
「あ……」

　ブルマーには小さく、恵那の名前が映っている。

{	DeleteAllSt(200,true);
	St2("C",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300150fje">
「ゴメン……ごめんね、ユージロー」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300160fje">
「私、自分がユージローと同じだって、だから自分にはなにもできないんだって、そう言ったけど――」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300170fje">
「私より、ユージローの方が全然――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/500300180fjr">
「なーに言ってるんだか！」

{	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/500300190fjr">
「ユージローを訓練したのは、恵那ちんでしょ！」

{	St2("ML",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300200fje">
「それは……そうだけど……」


{	SetVolume("@xbgm*", 2000, 0, null);
	ClockPass(2053);

//◆ＳＥ：電話
	CreateSE("SE01","seメカ_携帯_メール着信_恵那_l");
	MusicStart("SE01",0,700,0,1000,null,true);
	WaitKey(300);

	SoundPlay("@xbgm24",0,450,true);
	St("MR",700, @0,@0,"bu鈴_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/500300210fjr">
「恵那ちん？　電話だよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("ML",700, @0,@0,"bu恵那_哀愁_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300220fje">
「…………うん」

{	St("ML",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300230fje">
「やっぱり……父さんからだ」

{	St("MR",700, @0,@0,"bu鈴_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/500300240fjr">
「うげ……忙しいから、切っちゃう？」

{	St("C",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300250fje">
「ううん。この電話は、切れない」



{	St2("C",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300260fje">
「…………ふぅ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolume("SE01", 10, 0, null);

//◆ＳＥ：ピッ！　通話
	CreateSE("SE02","seメカ_携帯_電子音01");
	MusicStart("SE02",0,700,0,1000,null,false);

WaitKey(200);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//	St("C",700, @0,@0,"bu恵那_通常_hard");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300270fje">
「……もしもし？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/500300280fjh">
『おう、恵那だな？』

{	St2("C",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300290fje">
「……うん」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/500300300fjh">
『バックギャモン、見てきたぞ』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St2("C",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300310fje">
「……うん」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/500300320fjh">
『思った通りだ。死体なんてなかった』

{	St2("C",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300330fje">
「……うん」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/500300340fjh">
『おい、聞いてんのか？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2054);}


//	TextBoxDelete(150);


{	St2("C",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300350fje">
「……うん」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/500300360fjh">
『いやいや、聞こえてねぇだろ』

{	St2("C",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300370fje">
「……うん」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/500300380fjh">
『いいか！？　もう一回、言うぞ！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/500300390fjh">
『バックギャモンに！』

//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/500300400fjh">
『双六の死体なんて！』

//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/500300410fjh">
『これっぽっちも、なかった！』



{	SetVolume("@xbgm*", 500, 0, null);
	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	St("C",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("C",200,true);
	FadeStPro("C", 200, 1000);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300420fje">
「…………え？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	AgainSt("C",700, @0,@0,"bu恵那_哀愁_shock");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300430fje">
「死体が……ない？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/500300440fjh">
『そう、ない』

{	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300450fje">
「でも、カウンターに寄りかかって、死体が――！」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/500300460fjh">
『死体が勝手に動き出すか？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300470fje">
「私を励ますための嘘でしょ」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/500300480fjh">
『……あのな。オレ、一応警官だぞ。
　そんなすぐにバレる嘘はつけねぇよ』

{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300490fje">
「でも……それじゃ、私が見たのはなんだったの？」

{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300500fje">
「幻？　でも、私はちゃんとこの目で見たわ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2055);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/500300510fjh">
『本当にちゃんとか？』

//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/500300520fjh">
『脈は確認したか？　呼吸は止まってた？　瞳孔は？』

{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300530fje">
「……そこまでする必要ない傷だったし」



{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/500300540fjh">
『それが、アイツの狙いだよ』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/500300550fjh">
『確かに血糊っぽいのはあったけど、それだけ。
　一杯食わされたんだ』

{	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300560fje">
「動機は？　なんのためにそんなことを？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/500300570fjh">
『知るかよ。昔からわけのわかんねぇオタンコナスだ』









{	St("C",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300580fje">
「いたずら……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/500300590fjh">
『あいつとの付き合いは長ぇからな。よーく知ってる』

//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/500300600fjh">
『さっきも言ったが、責任感じる必要はなにもない』

{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300610fje">
「本当に……ただのいたずら……」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/500300620fjh">
『おう！　だから、後は安心してオレに任せとけ。な？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300630fje">
「うん」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/500300640fjh">
『それじゃ、切るぞ』

{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300650fje">
「うん」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/500300660fjh">
『聞いてるか？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300670fje">
「うん」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/500300680fjh">
『鈴と一緒にいるんだぞ』

{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300690fje">
「うん」

{	DeleteAllSt(200,true);

//◆ＳＥ：ピッ！　通話終了
	CreateSE("SE02","seメカ_携帯_電子音01");
	MusicStart("SE02",0,700,0,1000,null,false);
	WaitKey(1000);
	St("C",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/500300700fjr">
「どうだった？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	DeleteAllSt(200,true);}

{	ClockPass(2056);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300710fje">
「ふふ、ふふふふふふ……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆ＥＶ："ev/ev0000恵那これは事件！？.txt"

//◆ＳＥ：パララー！
	KoreJikenStart();
	DeleteAllSt(0,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300720fje">
「これは事件ッ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	SoundPlay("@xbgm03",0,450,true);

{	St("C",700, @180,@0,"bu恵那_ハルヒ_angry");
	KoreJikenEnd(false);
	Move("@StNameC/C*", 300, @-180, @0, DxlAuto, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0182]

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300730fje">
「この名探偵富士見恵那をたばかるなんて、断じて許せないわ双六！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300740fje">
「河原屋双一の養子だか右腕だか左巻きだかなんだか知らないけれど、私が真実暴いてお仕置きしてあげる！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu鈴_通常_happy");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/500300750fjr">
「やほー、復活した！
　恵那ちんはそうでなくっちゃねー」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300760fje">
「そうとなったらまず、星さんに話を聞かないと――」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/500300770fjr">
「よっし！　じゃあ一緒に行こっか！」




</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	SetVolume("@xbgm*", 1000, 0, null);

	TextBoxDelete(150);
	DeleteAllSt(200,true);




	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);



{	ClockPass(2057);}



//◆場所：スーパーノヴァ_ライブ会場_ガラス補修
	OnBG(10,"bg0502211スーパーノヴァ_ライブ会場_ガラス補修");
	FadeBG(0,true);

//	SoundPlay("@xbgm20",2000,450,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0195]

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300780fje">
「ええと……星さん、話が――あれ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("MR",700, @0,@0,"bu鈴_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/500300790fjr">
「ん？　恵那ちんどったの？」

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500300800fje">
「あいつら……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0205]
{	St("ML",700, @0,@0,"buみそa_通常_shout");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/500300810mso">
「おねーちゃん！　酒持って来――い！！」

{	DeleteSt("ML", 200,true);}
{	St("MR",700, @0,@0,"buブーa_通常_happy");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/500300820buu">
「ビールだビール！！」

{	DeleteSt("MR", 200,true);}
{	St("C",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/20/500300830msi">
「んじゃ、私は焼酎をお湯割りで……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	St("C",700, @50,@0,"bu歌門_通常_shock");
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/20/500300840kms">
「は、はいただいま――」


{	St("C",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/20/500300850kms">
「ってちょっと待った！」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/20/500300860kms">
「貴方たちは、ミヅハ様を誘拐した犯人ッ！？
　ミヅハ様はどこへ――」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/20/500300870msi">
「まあまあまあお姉ちゃん、落ち着いて落ち着いて。な？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	St("ML",700, @0,@0,"buみそa_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/500300880mso">
「そうそう。ミヅハを誘拐したのは、悪かった！
　オレが悪かった！」

{	St("MR",700, @0,@0,"buブーa_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/500300890buu">
「でもなあ、オレたちにも都合があるって言うか、な？
　河原屋双六に命令されたんだ。わかってくれよ」

{	St("C",700, @0,@0,"bu歌門_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/20/500300900kms">
「だから！　ミヅハ様はどこへ――」

{	St("ML",700, @0,@0,"buみそa_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/500300910mso">
「それは……なんていうか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	St("MR",700, @0,@0,"buブーa_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/500300920buu">
「オレたちがちょっと目を離した隙に――」


{	St("C",700, @0,@0,"bu歌門_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/20/500300930kms">
「居場所を知らないのですか？」

{	St("MR",700, @0,@0,"buブーa_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/500300940buu">
「まあ、ぶっちゃけ言うと――」

{	St("ML",700, @0,@0,"buみそa_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/500300950mso">
「そんなところかなー」

{	St("C",700, @0,@0,"bu歌門_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/20/500300960kms">
「な……そ、そんな……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	DeleteAllSt(200,true);}

{	St("C",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/20/500300970msi">
「まあまあ、そんな落ち込まずに」

//	St("C",700, @0,@0,"bu村崎_通常_happy");
//	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/20/500300980msi">
「一杯飲んで、景気つけましょう！」

{	St("MR",700, @0,@0,"buブーa_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/500300990buu">
「素晴らしい！」

{	St("ML",700, @0,@0,"buみそa_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/500301000mso">
「いよっ！　さすが村崎さんッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//◆ＳＥ：どん！　ビールが置かれる
//	TextBoxDelete(150);
	CreateSE("SE01","se日常_物置く");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,true);

	CreateMaskAXLSP("絵マ", 800, 0, 0, "ciスラッシュ_07_00", true, "ciスラッシュ_07_00z");
	Zoom("絵マ*", 0, 0, 1000, null, true);
	CreateColorSP("絵マ/色", 120, "#cc3300");//952
	CreateTextureSPadd("絵マ/絵背景", 120, 0, 0, "cg/ef/ef003_汎用移動.jpg");

	CreateTextureSP("絵マ/絵立11", 121, 290, -18, "cg/bu/bu村崎_通常_normal.png");//290,-18
	CreateTextureEX("絵マ/絵立12", 121, 290, -18, "cg/bu/bu村崎_通常_happy.png");//290,-18
	CreateTextureEX("絵マ/絵立13", 121, 290, -18, "cg/bu/bu村崎_通常_ero.png");//290,-18
	Move("絵マ*", 0, @0, @-576, Dxl1, true);
	Move("絵マ/*", 0, @0, @-576, Dxl1, true);
	Zoom("絵マ*", 100, 1000, 1000, null, false);
	Move("絵マ/*", 100, @0, @576, Dxl1, false);
	Move("絵マ*", 100, @0, @576, Dxl1, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]

//	St("C",700, @0,@50,"bu村崎_通常_happy");
//Move("@StNameR/R*", 200, @0, @-50, Dxl1, false);
//	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/20/500301010msi">
「え、それでは！
　僭越ながら、私がご挨拶をさせていただきます！」

{	Fade("絵マ/絵立12", 200, 1000, Dxl1, false);
	FadeDelete("絵マ/絵立11", 200, Axl2, true);
}
//	St("C",700, @0,@0,"bu村崎_通常_normal");
//	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/20/500301020msi">
「悪夢の地下迷宮からの脱出ぅ！！」

//	St("C",700, @0,@0,"bu村崎_通常_normal");
//	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/20/500301030msi">
「並びに極限状態で培われた男同士の友情ぉ！」

{	Fade("絵マ/絵立13", 200, 1000, Dxl1, false);
	FadeDelete("絵マ/絵立12", 200, Axl2, true);
}
//	St("C",700, @0,@0,"bu村崎_通常_ero");
//	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/20/500301040msi">
「そぉしてまたぁ！
　分かれたブルマーとしまぱんの復縁を祈ってぇぇ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	CreateTextureEX("絵マ/絵立絵", 121, Center, Middle, "cg/bu/l/bu村崎_通常_happy_x01.png");
	Move("絵マ/絵立絵", 0, @0, @100, Dxl1, true);
	Move("絵マ/絵立絵", 100, @0, @-100, Dxl1, false);
	Fade("絵マ/絵立絵", 200, 1000, null, false);

	FadeDelete("絵マ/絵立13", 200, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//	St("C",700, @0,@0,"bu村崎_通常_happy");
//	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/20/500301050msi">
「乾ぱああああああいッッ！！！」

{	Move("絵マ/*", 100, @0, @-576, DxlAuto, false);
	Move("絵マ*", 100, 0, -576, DxlAuto, false);
	Zoom("絵マ*", 50, 0, 1000, null, true);
	Delete("絵マ*");

	CreateMaskAXLSP("絵マ", 800, 1024, 0, "ciスラッシュ_05_01", true, "ciスラッシュ_05_01z");

	CreateColorSP("絵マ/色", 120, "#cc3300");//952
	CreateTextureSPadd("絵マ/絵背景", 120, 1024, 0, "cg/ef/ef002_汎用移動.jpg");
	CreateTextureSP("絵マ/絵立絵", 130, 1404, -67, "cg/bu/buブーa_オラオラ_shout.png");
	Move("絵マ/絵*", 100, @-1024, @0, DxlAuto, false);
	Move("絵マ*", 100, 0, @0, DxlAuto, true);
}
//	DeleteSt("C", 200,true);}
//	St("ML",700, @-100,@0,"buみそa_オラオラ_happy");
//Move("@StNameML/ML*", 200, @100, @0, Dxl1, false);
//	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/500301060mso">
「乾ぱああああああいッッ！！！」

{	Move("絵マ/*", 100, @1024, @0, DxlAuto, false);
	Move("絵マ*", 100, 1024, @0, DxlAuto, true);

	CreateMaskAXLSP("絵み", 800, -1024, 0, "ciスラッシュ_05_00", true, "ciスラッシュ_05_00z");
	CreateColorSP("絵み/色", 100, "#cc3300");//952
	CreateTextureSPadd("絵み/絵背景", 100, -1024, 0, "cg/ef/ef001_汎用移動.jpg");
	CreateTextureSP("絵み/絵立絵", 100, -1204, -233, "cg/bu/buみそa_オラオラ_pride.png");
	Move("絵み/絵*", 100, @1024, @0, DxlAuto, false);
	Move("絵み*", 100, 0, @0, DxlAuto, true);
}
//	DeleteSt("ML", 200,true);}
//	St("MR",700, @100,@0,"buブーa_オラオラ_happy");
//Move("@StNameMR/MR*", 200, @-100, @0, Dxl1, false);
//	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/500301070buu">
「乾ぱああああああいッッ！！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//	DeleteAllSt(200,true);

	Move("絵み/*", 200, @-1024, @0, DxlAuto, false);
	Move("絵み*", 200, -1024, @0, DxlAuto, true);
	Delete("絵*");

{	St("C",700, @200,@0,"bu恵那_ハルヒ_angry");
Move("@StNameC/C*", 200, @-200, @0, Dxl1, false);
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0265]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500301080fje">
「なにが乾杯よッ！！」

{	St("ML",700, @0,@0,"buみそa_通常_pinch");
	DeleteAllSt(200,false);
//Move("@StNameML/ML*", 200, @-100, @0, Dxl1, false);
	Shake("@StNameML/ML*", 300, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/500301090mso">
「ぬはッッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2058);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
{	St("MR",700, @-100,@0,"buブーa_通常_shock");
	DeleteAllSt(200,false);
Move("@StNameMR/MR*", 200, @100, @0, Dxl1, false);
	Shake("@StNameMR/MR*", 300, 0, 10, 0, 0, 1000, Dxl1, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/500301100buu">
「出たあッッ！！」

{	St("C",700, @0,@0,"bu村崎_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/20/500301110msi">
「恵那ちゃん。なんでそんないきり立って――」


{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500301120fje">
「村崎さん！
　あなた、アッキーちゃんのパンツ売ろうとしたでしょ！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500301130fje">
「騙してスパコン館で写真撮影をしたあげく、パンツを持ち逃げしたって話は聞いてるのよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu村崎_通常_pinch");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/20/500301140msi">
「え？　いや、その……あはははは……」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_通常_happy");
	St("C",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("C",200,true);
	FadeStPro("C", 200, 1800);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500301150fje">
「あははははは！　じゃない！！
　今すぐ返しなさい！！」

{	AgainSt("C",700, @0,@0,"bu恵那_ハルヒ_angry");
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu村崎_通常_pinch");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/20/500301160msi">
「それが……その、あはははは……」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500301170fje">
「まさか……もう、売ったの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu村崎_通常_pinch");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/20/500301180msi">
「ま、まさかそんな！　売るだなんて！」

//	St("C",700, @0,@0,"bu村崎_通常_normal");
//	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/20/500301190msi">
「ただその……置き忘れてしまったというか……」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500301200fje">
「どこに！？」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu村崎_通常_pinch");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/20/500301210msi">
「バックギャモンに、鞄ごと……」

{	St("ML",700, @0,@0,"buみそa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/500301220mso">
「あれ？　もしかしてそのパンツって――これか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateSE("SE01","se動作_バッグ漁る");
	CreateTextureEX("絵演大", 1010, Center, Middle, "cg/img/img縞パン.jpg");
	Zoom("絵演大", 0, 0, 1000, null, true);
	CreateSE("SEP01","se擬音_ギャグ_じゃじゃーん");

	CreateTextureEX("絵演背景", 1000, Center, Middle, "cg/obj/objエコバッグ.png");
	Move("絵演背景", 0, @0, @120, null, true);

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵演背景", 300, 1000, null, false);
	Move("絵演背景", 300, @0, @-120, DxlAuto, true);

	Wait(500);

	Zoom("絵演背景", 200, 0, 1000, null, true);

	MusicStart("SEP01",0,700,0,1000,null,false);
	Fade("絵演大", 100, 1000, null, false);
	Zoom("絵演大", 200, 1000, 1000, DxlAuto, true);

	Wait(1000);

	Delete("絵演背景");
	FadeDelete("絵演大", 500, null, true);

{	St("C",700, @0,@0,"bu村崎_通常_fear");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 200, 20, 0, 0, 0, 500, Dxl1, false);
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/20/500301230msi">
「ぬはっ！　なぜ、みそ君がそれを！？」

{	St("ML",700, @0,@0,"buみそa_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/500301240mso">
「あいや、成り行きというか――なあ、ブー」

{	St("MR",700, @0,@0,"buブーa_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/500301250buu">
「利子だもんな！」

{	St("C",700, @0,@50,"bu恵那_ハルヒ_angry");
	DeleteAllSt(200,false);
Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500301260fje">
「なにが利子よッ！！？」


{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/20/500301270msi">
「むむ……旗色が！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
{	St("MR",700, @-100,@0,"buブーa_通常_hard");
	DeleteAllSt(200,false);
Move("@StNameMR/MR*", 200, @100, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/500301280buu">
「かくなる上は――」

{Move("@StNameMR/MR*", 200, @200, @0, Dxl1, false);}
{	DeleteAllSt(200,true);}
{	St("ML",700, @100,@0,"buみそa_通常_pride");
Move("@StNameML/ML*", 200, @-100, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/500301290mso">
「逃げるぜ――！！」


{Move("@StNameML/ML*", 200, @-400, @0, Dxl1, false);}
{	DeleteAllSt(200,true);}

{	St("C",700, @0,@50,"bu恵那_ハルヒ_angry");
Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500301300fje">
「逃がさないわ！　鈴姉！！」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu鈴_通常_happy");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/500301310fjr">
「合点だー！！」


{	St("C",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/500301320fjr">
「まとめて、大気圏突破式――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/500301330fjr">
「ドロップキ――――――ック！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//◆ＳＥ：ガッシャーン！！


	SetVolume("@xbgm*", 1000, 0, null);
	CreateSE("SE02","se戦闘_風切り音10");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateTextureEX("絵背景", 120, Center, Middle, "cg/ev/ev1830鈴ドロップキック.jpg");
	Fade("絵背景", 0, 1000, null, true);
	Zoom("絵背景", 200, 5000, 5000, Axl3, true);
	//Move("絵背景", 300, 1230, -480, Axl3, true);
	//Zoom("絵背景", 0, 1000, 1000, Axl3, true);
	//Zoom("絵背景", 300, 5000, 5000, Axl3, true);
	Zoom("絵背景", 0, 1000, 1000, Axl3, true);
	Zoom("絵背景", 300, 5000, 5000, Axl3, false);
	FadeF4("絵背景", 300, 1000, 3000, 0, 0, Axl3, false);

	CreateSE("SE01","se戦闘_ガラス割れる02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(200);
	CreateColorEXadd("絵色", 1500, "#FFFFFF");
	Fade("絵色", 300, 1000, null, true);
	Delete("絵背景");

//※下倉注：ここ本来は補修跡有り
	OnBG(10,"bg0502111スーパーノヴァ_ライブ会場_ガラス割れ");
	FadeBG(0,true);

	FadeDelete("絵色", 500, null, false);

	CreateTextureSP("絵ゆれ", 100, Center, Middle, "cg/bg/bg0502111スーパーノヴァ_ライブ会場_ガラス割れ.jpg");

	Shake("絵ゆれ", 500, 10, 20, 0, 0, 500, Axl3, false);
	Request("絵ゆれ",Disused);

{	ClockPass(2059);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0321]
//◆音声指示：同時
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/20/500301340msi">
「「「ぎゃああああああああああッッ！！」」」

//◆音声指示：同時
//【みそ】
//<voice name="みそ" class="みそ" src="voice/20/500301350mso">
//「ぎゃああああああああああッッ！！」
//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/20/500301360buu">
//「ぎゃああああああああああッッ！！」

</PRE>
	SetText();
	AddText(1,"「ぎゃああああああああああッッ！！」","村崎勇","20/500301340msi",false,false,1000);
	AddText(2,"「ぎゃああああああああああッッ！！」","みそ","20/500301350mso",false,true,1500);
	AddText(3,"「ぎゃああああああああああッッ！！」","ブー","20/500301360buu",false,true,1500);
	TypeBeginD();//―――――――――――――――――――――――――――

//	TextBoxDelete(150);






	CreateSE("SE10","seガヤ_ざわざわ02_l");
	MusicStart("SE10",2000,400,0,1000,null,true);


{	St("C",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500301370fje">
「え！？」

{	St("C",700, @0,@0,"bu恵那_ハルヒ_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/500301380fje">
「直したガラスが――！！」


{	DeleteAllSt(200,true);}
{	St("C",700, @0,@100,"bu鈴_シリアス_smile");
Move("@StNameC/C*", 300, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/500301390fjr">
「ふふ、ふふふふふふ……」

//	St("C",700, @0,@0,"bu鈴_シリアス_angry");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/500301400fjr">
「アンタたち、良くも割ってくれたわね……！」


{	St("MR",700, @0,@0,"bu村崎_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/20/500301410msi">
「え？　いやちょっと！　それ理不尽――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("C",700, @0,@0,"bu鈴_シリアス_angry");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 200, 0, 0, 20, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/500301420fjr">
「アンタたちが逃げようとするからでしょッ！！」

{	St("ML",700, @0,@0,"buみそa_通常_fear");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 300, 20, 0, 0, 0, 500, Axl3, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/500301430mso">
「ひいいいいいッ！　すいませんッ！　すいませんッ！」

{	St("C",700, @0,@0,"bu鈴_シリアス_fear");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/500301440fjr">
「こんだけ苦労して会場の準備して！
　とりあえず何とかガラスを補修したと思ったら！」

//	St("C",700, @0,@0,"bu鈴_もじゃ_cry");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/500301450fjr">
「予備のガラスまで持ってきて！
　それなのに、職人さんが来られないとか！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
{	St("C",700, @0,@0,"bu鈴_もじゃ_angry");
	Shake("@StNameC/C*", 2000, 0, 0, 10, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/500301460fjr">
「ああああっ、こうなったらヤケよ！」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/500301470fjr">
「あの取り替えようのガラスごとッ！
　アンタたちを粉々に――」

{	St("MR",700, @0,@0,"buブーa_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/500301480buu">
「あの……ガラスなら張り直せますけど」

{	St("C",700, @0,@0,"bu鈴_もじゃ_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/500301490fjr">
「…………え？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);
//	DeleteAllSt(200,true);

	SetVolume("@SE*", 2000, 0, null);

	//PrintGO("上背景", 15000);
	//FadeDelete("上背景", 1000, null, true);
	CreateColorEX("絵黒幕", 25000, "BLACK");
	Fade("絵黒幕", 1000, 1000, null, true);
WaitKey(500);
	EndScene();
}
