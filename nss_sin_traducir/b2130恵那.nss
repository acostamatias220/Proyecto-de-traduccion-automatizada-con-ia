
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene b2130恵那.nss_MAIN
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
	$GameName = "2131恵那.nss";
	//$GameCircle=false;

}

scene b2130恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="120">
////////////header////////////
//file name "b2130恵那.nss"
//title "譫言トラップ"
//previous "2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nss"


////////////footer////////////
//next "恵那" "2131恵那.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//事件定義
	KoreJikenSet();

//◆演出指定：テレビから戻ってくる演出で

	CreateTextureSPover("絵効果", 20, Center, Middle, "cg/ef/efテレビ画面用効果フィルター.jpg");
	Fade("絵効果", 0, 500, null, true);
//	St("MR",11, @0,@0,"buミヅハ_ダウナー_pinch");
//	FadeSt("MR",0,true);
	OnBG(10,"bg1203100ＵＰ＋_セット裏_通常");
	FadeBG(0,true);

	SetShade("@OnBG*", MEDIUM);

	CreateTextureSP("絵演背景", 30, Center, Middle, "cg/bg/bg1203100ＵＰ＋_セット裏_通常.jpg");

	if($PreGameName=="2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nss"){
	FadeDelete("上背景", 2000, null, true);
	}else{
	FadeDelete("上背景", 0, null, true);
	}

	WaitKey(2000);

	SoundPlay("@xbgm20",2000,300,true);
	FadeDelete("絵演背景", 2000, null, true);

//◆場所：スーパーノヴァ_控え室


{	ClockPass(2130);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
{
//	St("MR",700, @0,@0,"bu歌門_通常_shock");
//	FadeSt("MR",200,true);
}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/b21/300100010kms">
「ミヅハ様が――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	PrintGO("上背景", 5000);
	OnBG(10,"bg0503100スーパーノヴァ_控え室_通常");
	FadeBG(0,true);
	FadeDelete("上背景", 300, null, true);

	St("MR",700, @-60,@0,"bu歌門_威圧_hard");
	Move("@StNameMR/MR*", 200, @60, @0, Dxl1, false);
	FadeSt("MR",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/b21/300100020kms">
「すぐに行かねば！」

{	St("MR",700, @0,@0,"bu歌門_威圧_angry");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/b21/300100030kms">
「カゴメアソビが行われたと言うことは――
　どこかに弾丸が残っていたということ！！」

{	St("MR",700, @0,@0,"bu歌門_威圧_shout");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/b21/300100040kms">
「一刻も早く、アザナエルを取り戻さねば――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/300100050fje">
「…………」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/b21/300100060kms">
「――どうしましたか、恵那様」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_think");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/300100070fje">
「いや、今画面の端に――アッキーちゃんが」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/b21/300100080kms">
「アッキー様？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_think");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/300100090fje">
「側に……クリマンの包装紙が……
　まさか、まさかとは思うけど……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	KoreJikenStart();
	DeleteAllSt(0,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/300100100fje">
「コレは事件！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


{	St("C",700, @0,@0,"bu恵那_ハルヒ_shout");
	KoreJikenEnd(false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/300100110fje">
「行きましょう、星さん！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/b21/300100120kms">
「ええ、急いで――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
