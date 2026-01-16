
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene c2401沙紅羅_フウリ.nss_MAIN
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
	$GameName = "c2402沙紅羅.nss";//★エンディング中（c）
}

scene c2401沙紅羅_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="240">
////////////header////////////
//file name "c2401沙紅羅_フウリ.nss"
//title "厭覇薔薇"
//previous "c2400沙紅羅.nss"

////////////footer////////////
//next "c2402沙紅羅.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//あきゅん「修正指示：背景変更しました。ステージ上とそれ以外のシーンの切り分けをお願いします」

//	OnBG(10, "bg0603711半田明神_境内_厭覇薔薇新年");
//	FadeBG(0, true);


//★inc櫻井　鈴たちが客の後ろにいるのはおかしいので拡大背景を使用しています。
	CreateTextureSP("境内01", 10, Center, Middle, "cg/bg/l/bg0603711半田明神_境内_厭覇薔薇新年_l.jpg");

//	CreateSE("SE10", "seガヤ_歓声_l");
//	MusicStart("SE10", 1000, 500, 0, 1000, null,true);

	DrawDelete("上背景", 500, 100, null, "blind_01_00_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c24/010100010fjr">
「みんな！
　年の瀬に集まってもらって、本当にありがとう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteSt("C",200,true);

	St("ML",700, @0,@0,"buフウリ_通常_normal");
	St("MR",700, @0,@0,"buそに子_通常_happy");
	FadeSt("MR",200,false);
	FadeSt("ML",200,true);

	CreateSE("歓声01", "seガヤ_歓声_l");
	MusicStart("歓声01", 1000, 700, 0, 1000, null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//◆音声指示：同時
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c24/010100020">
「「ありがとうございますっ！」」

////◆音声指示：同時
////【そに子】
//<voice name="そに子" class="そに子" src="voice/c24/010100030snk">
//「ありがとうございますっ！」


</PRE>
	SetText();
	AddText(1,"「ありがとうございますっ！」","綿抜フウリ","c24/010100020wfu",false,false,1000);
	AddText(2,"「ありがとうございますっ！」","そに子","c24/010100030snk",false,false,1000);
	TypeBeginD();//―――――――――――――――――――――――――――


//◆演出指示：おおおお！！　盛り上がる会場

//	TextBoxDelete(150);

	DeleteAllSt(200,true);


	Wait(1000);

	SetVolume("歓声01", 2000, 0, null);


{	St("ML",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c24/010100040wfu">
「今日は交通事故でトラックが突っ込んで、急に会場変更になってしまいました」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c24/010100050fjr">
「そのせいで、今日はライブができません」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buそに子_通常_sad");
	FadeSt("MR",200,true);}
//【そに子】
<voice name="そに子" class="そに子" src="voice/c24/010100060snk">
「こんなに夜遅く集まってもらったのに――
　皆さん、本当に――」

//★inc櫻井　頭下げてると想定し、立ち絵なし
{	DeleteSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c24/010100070fjr">
「すみませんでした――！！」

//【そに子】
<voice name="そに子" class="そに子" src="voice/c24/010100080snk">
「ごめんなさい――！！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c24/010100090wfu">
「申し訳、ありませんっ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateSE("SE10","seガヤ_歓声_l");
	MusicStart("SE10",1000,400,0,1000,null,true);

	BGPlainShake(100, 300, 6, 8, 0, 0, 1000, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/c24/010100100e07">
「大丈夫！　しょうがない！」

{	BGPlainShake(100, 300, -6, 8, 0, 0, 1000, Dxl1, false);}
//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/c24/010100110e08">
「気にしてないよー！！」

{	BGPlainShake(100, 300, 0, 8, 0, 0, 1000, Dxl1, false);}
//【オタクＥ】
<voice name="オタクＥ" class="その他男声" src="voice/c24/010100120e09">
「頑張れ――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolume("SE10", 2000, 0, null);

{	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c24/010100130fjr">
「スーパー・スーパーノヴァにご来場のお客様には、また後日のライブへとご招待させていただきます！」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c24/010100140wfu">
「ものすごいライブにします！
　ぜったい、来て下さい！」

//◆演出指示：盛り上がる
//★inc櫻井　声援に囲まれたままトークを続ける。
{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buそに子_通常_happy");
{	CreateSE("歓声02", "seガヤ_大歓声_l");
	MusicStart("歓声02", 2500, 700, 0, 1000, null,true);}
	FadeSt("MR",200,true);}
//【そに子】
<voice name="そに子" class="そに子" src="voice/c24/010100150snk">
「そしてその代わりに！
　今日は、特別ゲストをお呼びしております！！」

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c24/010100160fjr">
「アタシ……実を言うと、ずっと前からファンでした！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c24/010100170fjr">
「今日、偶然にも公園で出会ったんですが……」

{	St("C",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c24/010100180fjr">
「なんかこう、こんな日に会うことができるなんて、神様のいたずら心を感じてしまいます！」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buそに子_通常_smile");
	FadeSt("MR",200,true);}
//【そに子】
<voice name="そに子" class="そに子" src="voice/c24/010100190snk">
「えー、皆さんも、恐らく知っておられると思います」

{	St("MR",700, @0,@0,"buそに子_通常_happy");
	FadeSt("MR",200,true);}
//【そに子】
<voice name="そに子" class="そに子" src="voice/c24/010100200snk">
「それではお呼びいたしましょう！」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c24/010100210wfu">
「ＴＡＭＡのパロディＡＶでお馴染み――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	CreateSE("歓声03", "seガヤ_沸き立つ02");
	MusicStart("歓声03", 200, 1000, 0, 1000, null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("ML",700, @0,@0,"buフウリ_通常_smile");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c24/010100220wfu">
「ロクローさんの、登場です！！」


//あきゅん「修正指示：後の盛り上がりのために一度静かに」
{	SetVolume("歓声*", 1000, 0, null);

	DeleteSt("ML",200,true);
	St("C",700, @-200,@0,"buロクローa_通常_smile");
	Move("@StNameC/C*", 300, @200, @0, null, false);
	FadeSt("C",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c24/010100230rkr">
「はいど――――――――――――――――――も！！」

//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c24/010100240rkr">
「ロ・ク・ローで――――――――――――――す！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);

//◆演出指定：うおおおおおおお！！　歓声
//★inc櫻井　大歓声はc2402にて再生しています。

//	ClearWaitAll(2000, 2000);


	EndScene();
}
