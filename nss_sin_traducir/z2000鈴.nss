
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2000鈴.nss_MAIN
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
	EndScript();

}

scene z2000鈴.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="170">
////////////header////////////
//file name "z2000鈴.nss"
//title "脱走"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2004);}

//◆場所：スーパーノヴァ_正面_ガラス割れ
	OnBG(10,"bg0501200スーパーノヴァ_正面_ガラス割れ");
	FadeBG(0,true);

	St("MR",700, @50,@0,"bu鈴_シリアス_think");
	FadeSt("MR",0,true);

	MusicStart("@xbgm20",1000,350,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z20/000500010fjr">
「あ……あの、さ」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/z20/000500020ktt">
「え？　ちょっと、なんですか？」

{	DeleteAllSt(200,false);
	St("MR",700, @50,@0,"bu鈴_シリアス_shout");
	FadeSt("MR",200,true);;}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z20/000500030fjr">
「ついてる？　ついてるの？　ついてるわよね？」

{	Move("@StNameMR/MR*", 300, @-80, @50, Dxl1, false);
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu千秋_通常_shy");
	Shake("@StNameC/C*", 1000, 0, 20, 0, 0, 500, Dxl3, false);
	CreateSE("SE01","se擬音_ギャグ_ぽにょぽにょ");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeSt("C",200,false);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/z20/000500040ktt">
「な……え！　ちょっと！　やだ！」

{	St("MR",700, @-30,@50,"bu鈴_シリアス_shout");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 300, @50, @-50, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z20/000500050fjr">
「一応、バイト長として確認の義務が――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("ML",700, @-80,@0,"bu歌門_通常_normal");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @80, @0, Dxl1, false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/z20/000500060kms">
「何をしていらっしゃるのですか？」

{	St("MR",700, @50,@0,"bu鈴_シリアス_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z20/000500070fjr">
「あ……星ちゃん」

{	St("ML",700, @0,@0,"bu歌門_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/z20/000500080kms">
「失礼。恵那さんについて、ひとつ伺いたいことが――」

{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 200, 0, 30, 0, 0, 500, Dxl3, false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/z20/000500090ktt">
「ひぇっ！」

{	St("ML",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/z20/000500100kms">
「ん……？　そこにいるのは――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("MR",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/z20/000500110ktt">
「あ、あ、ああのっ！
　オレ、ちょっとフウリさんが心配なんで見てきますッ」

{	Move("@StNameMR/MR*", 200, @80, @0, Dxl3, false);
	DeleteAllSt(200,true);
	St("MR",700, @50,@0,"bu鈴_シリアス_angry");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z20/000500120fjr">
「ちょ！　待ちな――ッ！！」

{	St("ML",700, @0,@0,"bu歌門_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/z20/000500130kms">
「それはこっちのセリフです！　あなた――」

{	DeleteAllSt(200,false);
	CreateTextureEX("絵背景", 100, 536, -5, "cg/bu/bu千秋_驚天_shock.png");
	Shake("絵背景", 200, 0, 30, 0, 0, 500, Dxl3, false);
	Fade("絵背景", 200, 1000, null, true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/z20/000500140ktt">
「ごごごご、ごめんなさーい！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆ＳＥ：ぴゅー！
	CreateSE("SE01","se擬音_ギャグ_逃げる");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("絵背景", 500, @300, @0, null, false);
	FadeDelete("絵背景", 300, null, true);

	Wait(500);

	St("MR",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z20/000500150fjr">
「に――逃げられた！？」

{	St("MR",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z20/000500160fjr">
「ちょっと星ちゃん！
　なんてことしてくれるのッ！？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu歌門_口覆い_shock");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/z20/000500170kms">
「え？　私のせい……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
