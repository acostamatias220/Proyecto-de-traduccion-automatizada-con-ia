
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2301恵那.nss_MAIN
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
	$GameName = "2310恵那.nss";
	//$GameCircle=false;

}

scene 2301恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1200">
////////////header////////////
//file name "2301恵那.nss"
//title "名探偵の推理ミス"
//previous "2300沙紅羅_恵那_似鳥_ノーコ.nss"
//previous "c2300恵那.nss"

////////////footer////////////
//next "恵那" "2310恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);

//◆場所：半田明神_男坂　→　秋葉原_遠景
	//OnBG(10,"bg0107200秋葉原_遠景_閉店");
	//FadeBG(0,true);

	CreateColorSP("絵黒幕", 29999, "BLACK");

{	ClockPass(2300);}

//前ファイルの曲引継ぎ
	SoundPlay("@xbgm23",0,450,true);

	DrawDelete("上背景", 500, 100, null, "blind_01_00_1", true);


//	OnBG(10,"bg0107200秋葉原_遠景_閉店");
//	FadeBG(0,true);

//	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

//	CreateColorSP("絵黒幕", 25000, "BLACK");
//	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg0601100半田明神_男坂_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

{	ClockPass(2301);}


/*
//下倉注：ここ、省略
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100010fje">
「ふぅ……」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100020fje">
（コレでとりあえず、指示は終わり。
　あとはみんなが頑張ってくれることを祈るだけ！）
</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
*/

//恵那モノローグ[text0020]～【優先度２】//β時（千代子）
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100030fje">
（荒唐無稽な作戦だけど、もう、コレに懸けるしかない！）

{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100040fje">
（けど……なんか、忘れてるような気もするのよね。
　なんだろう……このひっかかり……）


//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100050fje">
（ん……ん……ん……）

{	St("C",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100060fje">
（ダメだ……思い出せない……）

/* ※下倉注：ファイル繋ぎの関係でこの台詞カット
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100070fje">
（……ま、いっか）
*/

{	St("C",700, @0,@0,"bu恵那_一休_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100080fje">
（とにかく私も、アザナエルを取り返さないと）

{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100090fje">
（沙紅羅さんって言ったっけ？
　あのヤンキーと一緒に行くことになってるけど）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100100fje">
（まずは父さんに電話して――）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateSE("SE01","se動作_衣擦れ");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DeleteAllSt(200,true);
	Wait(300);
	SetVolume("SE01", 1000, 0, null);

	CreateTextureEX("絵オブ", 100, Center, Middle, "cg/obj/obj千秋ネームプレートa.png");
	Move("絵オブ", 0, @0, @100, null, true);

	Move("絵オブ", 500, @0, @-100, DxlAuto, false);
	Fade("絵オブ", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]

//	St("C",700, @0,@0,"bu恵那_一休_angry");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100110fje">
「あ――ネームプレート？」

{	Move("絵オブ", 500, @0, @100, DxlAuto, false);
	Fade("絵オブ", 500, 0, null, true);
	Delete("絵オブ");
	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100120fje">
（父さんが落としたの、持って来ちゃったんだ……）

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100130fje">
（アッキーちゃんに、返しておこう――）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

	SetVolume("@xbgm*", 2000, 0, null);



	CreateSE("SE01","seメカ_携帯_ダイヤル");
	MusicStart("SE01",0,700,0,1000,null,false);
WaitKey(1000);
	SetVolume("SE01", 10, 0, null);
WaitKey(200);
	CreateSE("SE01","seメカ_携帯_コール01_l");
	//CreateSE("SE01","seメカ_携帯_電話切れる01_l");
	MusicStart("SE01",0,700,0,1000,null,true);

WaitKey(2000);
	SetVolume("SE01", 10, 0, null);




//◆ＳＥ：電話ダイヤル

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100140fje">
「あー、もしもし？　父さん」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/010100150fjh">
『お、おう！　恵那か？』

//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/010100160fjh">
『いやあ、わざわざ電話悪いな！
　応急処置は受けたから、年が明けるまでには帰れる――』

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100170fje">
「なんでそういうウソ、つくの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/010100180fjh">
『は？　ウソ？』

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100190fje">
「そこは病院じゃない。
　私との約束破って秋葉原に残ったでしょ？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/010100200fjh">
『なに言ってんだ？
　オレがおめぇとの約束、破るわけねぇじゃねぇか』

//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/010100210fjh">
『オレはちゃんと、泰然堂大学病院に――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("C",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100220fje">
「あにのあなの屋上で、アザナエル回収したでしょ。
　手渡した本人が、すぐ側にいるんだからね！」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/010100230fjh">
『あのなあ……オレがおまえとの約束破るわけねぇだろ』

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100240fje">
「じゃあ今、父さんがいるのはどこ？
　近くに人は――」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/010100250fjh">
『急患の待合室だよ。ああ、そういえばさっき偶然な、若原ってゆるキャラバンのディレクターとすれ違った』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2302);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("C",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100260fje">
「ゆるキャラバンの――？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/010100270fjh">
『おう。なんでも饅頭食って腹下したんだと！
　村崎んところの……なんていったっけ？』

{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100280fje">
「クリマンのこと――？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/010100290fjh">
『ああ、それだそれだ！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//fu?
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100300fje">
（もしかして、本当に病院にいる？
　ってことは、沙紅羅さんたちが見た警官って……？）

{	St("C",700, @0,@0,"bu恵那_一休_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100310fje">
（いやいや、あんなもじゃもじゃした警官が他にいるわけないし、となると……）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100320fje">
（タヌキが、化けてたとか？）

{	St("C",700, @0,@0,"bu恵那_一休_pride");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100330fje">
（いや、まさかね……あははは……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100340fje">
（…………）

{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100350fje">
「あり得る」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/010100360fjh">
『ん？　どした恵那』

{	St("C",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100370fje">
「ううん！　なんでもない！
　疑ってごめんね！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/010100380fjh">
『お、おいなんで――』

//◆ＳＥ：電話切れる

{//	CreateSE("SE01","seメカ_携帯_切れる");
	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);
}


{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100390fje">
「落ち着いて――そう、落ち着きなさい富士見恵那」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100400fje">
「太四郎さんは、別人に化けられる。
　貫太さんや――ミリＰさんにも化けてたって言ってたわ」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100410fje">
「ってことは、他の人に化けててもおかしくないはず。
　だから、父さんにだって――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

	SetVolumeEX("@xbgm*", 3000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　ポケットに携帯をしまおうとした恵那。

　その中で、指にぶつかるのは、アッキーと書かれたネームプレートだ。


{	St("C",700, @0,@0,"bu恵那_一休_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100420fje">
「あれ……？」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100430fje">
「裏に……なんか、書いてある？」

{	DeleteAllSt(200,true);}
　裏にうっすらと透けた、書き文字。

　恵那は震える手で、中の紙を引き出す。

//	St("C",700, @0,@0,"bu恵那_哀愁_shock");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100440fje">
「……………………あ」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100450fje">
「あ！　あ！　あ、あ、あ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SoundPlay("@xbgm22_onint",0,450,true);

//	TextBoxDelete(150);

//あきゅん「素材：obj千秋ネームプレートb」

	CreateTextureEX("絵オブ", 100, Center, Middle, "cg/obj/obj千秋ネームプレートb.png");
	Move("絵オブ", 0, @0, @100, null, true);

	Move("絵オブ", 800, @0, @-100, DxlAuto, false);
	Fade("絵オブ", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]

//	St("C",700, @0,@0,"bu恵那_哀愁_shock");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100460fje">
「千秋――」

{	Move("絵オブ", 800, @0, @100, DxlAuto, false);
	Fade("絵オブ", 500, 0, null, true);
	Delete("絵オブ");
}
{	St("C",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100470fje">
「千秋、だったってことは――ッ！！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,700,0,1000,null,true);
	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆ＳＥ：ダッシュ

	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);



{	ClockPass(2303);}

//◆場所：秋葉原_中央通り

	OnBG(10,"bg0103200秋葉原_中央通り_閉店");
	FadeBG(0,true);

	CreateSound("SE11", SE, "voice/23/010100480fje");
//	SetVolume("SE11", 0, 0, NULL);
//	SetAlias("SE11", "SE11");

	CreateTextureEX("絵背景L", 100, Center, Middle, "cg/bg/bg0103200秋葉原_中央通り_閉店.jpg");
	SetShade("絵背景L",MEDIUM);
	Zoom("絵背景L", 0, 2000, 2000, null, true);

	CreateTextureEX("絵立_angry", 19700, 64, -254, "cg/fu/fu恵那_通常_angry.png");//64,-254
	CreateTextureEX("絵立_hard", 19700, 64, -254, "cg/fu/fu恵那_通常_hard.png");//64,-254
	CreateTextureEX("絵立_shy", 19700, 64, -254, "cg/fu/fu恵那_通常_shy.png");//64,-254

	Fade("絵背景L", 0, 1000, null, false);
	Fade("絵立_angry", 0, 1000, null, false);

	MoveFTP3("@絵背景L", 4000, 8, 12);
	MoveFTP2("@絵立*", 4000, 8, 12);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

	SetVolume("SE*", 1000, 0, null);

	CreateSE("SE20","se動作_走る05_l");
	MusicStart("SE20",500,300,0,1000,null,true);

//以下１ボイス、ループで使用（千代子
//――――――――――――――――――――――――――――――――――――――
//<PRE @box0>
//[text0125]

//◆音声指示：ＢＧＭで繰り返し

//	St("C",700, @0,@0,"bu恵那_通常_pinch");
//	FadeSt("C",200,true);}
//【富士見恵那】
//<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100480fje">
//「はぁっ、はぁっ、はぁっ、はぁっ――
//　ふぅっ、ん――、はぁっ、はぁ――！」

//</PRE>
//	SetText();
//	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//	St("C",700, @50,@0,"bu恵那_通常_pinch");
//Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100490fje">
「はぁっ、はぁ――ん、くぅっ、！
　はぁっ、はぁっ、はぁっ、はぁっ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	MusicStart("SE11",3000,200,0,1000,null,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]

//	St("C",19700, @0,@0,"fu恵那_一休_angry");
//Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
//	Fade("絵背景L", 200, 1000, null, false);
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100500fje">
（間違いないわ！
　アッキーちゃん――千秋は、ふたりいたんだ！）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100510fje">
（おかしいと思ったのよ！　トイレに駆け込んだはずのアッキーちゃんが、急にスパコン館にいるなんて……）




//	St("C",19700, @0,@0,"fu恵那_一休_think");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100520fje">
（どういう理由かはわからないけど、太四郎さんはアッキーちゃんに化けて、スーパーノヴァで働いていたんだ！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//	St("C",19700, @0,@0,"fu恵那_通常_angry");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100530fje">
（けど、外見だけを真似しちゃったから、アッキーちゃんが本当は男だって気づけなかった！）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100540fje">
（だから私があそこを触ったときも、なにもついてなくて、それで千秋じゃないって思い込んで――）

{	Fade("絵立_angry", 200, 0, Axl3, false);
	Fade("絵立_shy", 200, 1000, Dxl2, false);
}
//	St("C",19700, @0,@0,"fu恵那_一休_shy");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100550fje">
（でも、その時本物の千秋は、スパコン館で村崎さんにエロ写真を撮られていて――ああああああああ！！）


//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100560fje">
（最後に――私と千秋が別れたのは？）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100570fje">
（万世橋で、千秋が私を慰めてくれたあの時？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	Fade("絵立_shy", 200, 0, Axl3, false);
	Fade("絵立_angry", 200, 1000, Dxl2, false);
}
//	St("C",19700, @0,@0,"fu恵那_一休_angry");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100580fje">
（あの後、私はスーパーノヴァに戻らされて――
　千秋は、バックギャモンに向かって――）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100590fje">
（確か、父さんが来るまで死体を見張ってるはずだったんだけど――あれ？　おかしい……）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100600fje">
（父さんは、千秋を見たなんて一言も言わなかった
　バックギャモンに双六の死体がなかったってだけ――）

{	Fade("絵立_angry", 200, 0, Axl3, false);
	Fade("絵立_hard", 200, 1000, Dxl2, false);
}
//	St("C",19700, @0,@0,"fu恵那_一休_hard");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100610fje">
（……死体が、なかった？）

{	SetVolume("SE*", 200, 0, null);
	Fade("絵立_hard", 200, 0, Axl3, false);
	Fade("絵立_angry", 200, 1000, Dxl2, false);}
//	St("C",19700, @0,@0,"fu恵那_通常_angry");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100620fje">
「まさか――！！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,700,0,1000,null,true);
	TextBoxDelete(150);
	//DeleteAllSt(200,true);


	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	MoveFTP3stop();
	MoveFTP2stop();
	Delete("絵立*");
	Delete("絵背景*");

{	ClockPass(2304);}

//◆場所：秋葉原駅_正面

	OnBG(10,"bg0201211秋葉原駅_正面_閉店");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);
	SetVolume("SE*", 1000, 0, null);

{	St("C",700, @50,@0,"bu恵那_一休_hard");
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100630fje">
（いや、あり得るわ）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100640fje">
（あの現場には、アザナエルがあった）

{	St("C",700, @0,@0,"bu恵那_一休_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100650fje">
（もしかして千秋は、私を勇気づけようとして……
　それで、カゴメアソビを――！？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("C",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100660fje">
「千秋の馬鹿ッ！！」


//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100670fje">
（なんで――なんでそんなことするのよ！）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100680fje">
（いつも弱気で、なよなよしてて、泣き虫で、私のために何かしてくれたことなんて、めったになくて――）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100690fje">
（今日に限って、そんなことしないでよ！
　まるで別人みたいじゃない！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St2("C",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100700fje">
（なんで、急に私のために、男らしく――）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100710fje">
（自分の命まで懸けるなんて、恋人でもやらない――）

{	St("C",700, @0,@0,"bu恵那_哀愁_fear");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100720fje">
「あ」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100730fje">
「ああ……」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100740fje">
「あああああああ……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("C",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100750fje">
「私……アッキーちゃんに……千秋が、好きだって……」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100760fje">
「好きだって……言っちゃってたんだ……！」








</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);


	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


//◆時間：ジャンプ
{	ClockPass(2305);}

//◆場所：秋葉原_ガード下_破壊

	OnBG(10,"bg0102300秋葉原_ガード下_破壊");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

//	CreateSE("SE11","seガヤ_交通少_l");
//	MusicStart("SE11",3000,700,0,1000,null,true);

	CreateSE("SE01","se擬音_警笛");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0195]




{	St("C",700, @100,@0,"bu恵那_通常_shout");
Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100770fje">
「――――ッ！」

//◆ＳＥ：警笛

{	DeleteAllSt(200,true);}
//【警官Ａ】
<voice name="警官Ａ" class="その他男声" src="voice/23/010100780e16">
「はい、危ないから入っちゃダメだよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	SetVolume("SE0*", 1000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100790fje">
「あの、行かせてください！」

{	DeleteAllSt(200,true);}
//【警官Ａ】
<voice name="警官Ａ" class="その他男声" src="voice/23/010100800e16">
「ダメだって。この先は危険だから」

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100810fje">
「でも……」

{	DeleteAllSt(200,true);}
//【警官Ａ】
<voice name="警官Ａ" class="その他男声" src="voice/23/010100820e16">
「あのねぇ……」

//【警官Ａ】
<voice name="警官Ａ" class="その他男声" src="voice/23/010100830e16">
「あんまり言うこと聞かないと、公務執行妨害で逮捕だよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	St("C",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100840fje">
「と――」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100850fje">
「父さんに聞いてないんですか？」

{	DeleteAllSt(200,true);}
//【警官Ａ】
<voice name="警官Ａ" class="その他男声" src="voice/23/010100860e16">
「父さん？　そりゃどこのオヤジ――」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100870fje">
「私、富士見平次の娘です」

{	DeleteAllSt(200,true);}
//【警官Ａ】
<voice name="警官Ａ" class="その他男声" src="voice/23/010100880e16">
「ひぃっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【警官Ａ】
<voice name="警官Ａ" class="その他男声" src="voice/23/010100890e16">
「し――失礼しました！」

{	St("C",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100900fje">
「え？　いや、そこまでかしこまらなくても――」

{	DeleteAllSt(200,true);}
//【警官Ａ】
<voice name="警官Ａ" class="その他男声" src="voice/23/010100910e16">
「平次殿のお嬢様が、どのようなご用件でしょう！」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100920fje">
「あ……いや、危ないところには行かないから」

//	St("C",700, @0,@0,"bu恵那_通常_pinch");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100930fje">
「そこの……ジャガンナート商会に用事があって。
　父さんと待ち合わせを――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	DeleteAllSt(200,true);}
//【警官Ａ】
<voice name="警官Ａ" class="その他男声" src="voice/23/010100940e16">
「了解しました！　どうぞ中へ！」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100950fje">
「あ……どうもありがとう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//◆ＳＥ：走り出す
	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,700,0,1000,null,true);


	SetVolume("SE1*", 1000, 0, null);

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

//◆場所：エレキセンター_廊下
	OnBG(10,"bg0901200エレキセンター_廊下_閉店");
	FadeBG(0,true);

	SetVolume("SE*", 1000, 0, null);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

//	CreateSE("SE12","seガヤ_エレキセンター内部_l");
//	MusicStart("SE12",0,700,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0235]

{	St("C",700, @0,@0,"bu恵那_一休_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100960fje">
（父さん――警察署の中じゃ、意外と偉い――？）

{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100970fje">
（いや、感心してる場合じゃないし）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	St("ML",700, @-10,@0,"buジャブル_通常_smile");
Move("@StNameML/ML*", 200, @100, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/010100980jbr">
「おじょさん！　いらっしゃ――」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010100990fje">
「うるさい！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buジャブル_通常_pinch");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/010101000jbr">
「カタジケナイ……」

{Move("@StNameML/ML*", 200, @-100, @0, Dxl1, false);}
{	DeleteAllSt(200,true);}


//	St("C",700, @0,@0,"bu恵那_通常_hard");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010101010fje">
（この先、階段を下りて――）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,700,0,1000,null,true);

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	SetVolume("SE1*", 1000, 0, null);

	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


{	ClockPass(2306);}

{
//	SoundPlay("@xbgm05",0,450,true);
}

//◆場所：バックギャモン_正面
	OnBG(10,"bg1001100バックギャモン_正面_通常");
	FadeBG(0,true);

	SetVolume("SE*", 1000, 0, null);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

	SoundPlay("@xbgm24",3000,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	St("C",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010101020fje">
「………………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 1000, 0, null);

	TextBoxDelete(150);
//◆演出指定：フラッシュバックで双六の死体を思い出す

	CreateColorEXadd("絵色", 20000, "#FFFFFF");
	Fade("絵色", 200, 1000, null, true);

	ClockDelete(0,true);

	CreateTextureEX("絵背景", 1000, Center, Middle, "cg/img/img双六死に手.jpg");
	Fade("絵背景", 0, 1000, null, true);
	SetTone("絵背景", Monochrome);
	DeleteAllSt(0,true);

	Fade("絵色", 300, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0251]

//◆音声指示：荒い息
//	St("C",700, @0,@0,"bu恵那_通常_pinch");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010101030fje">
「――、――、――、――、――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("絵色", 200, 1000, null, true);

	ClockPass(2306);

	Delete("絵背景");
	OnBG(10,"bg1001100バックギャモン_正面_通常");
	FadeBG(0,true);

	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",0,true);
	FadeDelete("絵色", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0252]

//	St("C",700, @0,@0,"bu恵那_通常_pinch");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010101040fje">
「――千秋」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


//◆場所：バックギャモン_店内
	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0255]


{	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010101050fje">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010101060fje">
「……双六？」

{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010101070fje">
「いるんでしょ？」

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010101080fje">
「双六！　千秋はどこ？」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010101090fje">
「千秋は――」



{	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010101100fje">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　恵那はポケットから、携帯電話を取り出した。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//◆ＳＥ：ダイヤル

//◆ＳＥ：プルルルルル――発信

//◆ＳＥ：遅れて、着メロ

	CreateSE("SE01","seメカ_携帯_ダイヤル");
	MusicStart("SE01",0,700,0,1000,null,false);
WaitKey(1000);
	SetVolume("SE01", 10, 0, null);
WaitKey(200);
	CreateSE("SE01","seメカ_携帯_コール01_l");
	MusicStart("SE01",0,700,0,1000,null,true);

WaitKey(500);
	CreateSE("SE02","seメカ_携帯_メール着信_千秋_l");
	MusicStart("SE02",0,200,0,1000,null,true);

WaitKey(2000);

{	St("C",700, @0,@0,"bu恵那_哀愁_pinch");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0271]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010101110fje">
「――――ッ」


//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010101120fje">
「奧……穴が空いてる……？」

{	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010101130fje">
「ねえ、千秋？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);
	SetVolumeEX("SE02", 2000, 350, null);
	SetVolumeEX("SE01", 4000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010101140fje">
「そこに……いるの？」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010101150fje">
「そこに……ホントに……」

{	St("C",700, @0,@0,"fu恵那_哀愁_sad");
	FadeSt("C",200,true);
	SetVolumeEX("SE02", 1000, 800, null);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010101160fje">
「ね、千秋……」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010101170fje">
「一緒に、帰ろ――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE02", 500, 1400, null);

//◆ＳＥ：ハンガーを避ける
	SetVolume("@xbgm*", 1000, 0, null);

	TextBoxDelete(150);

	CreateSE("SE01","se動作_カーテン開ける");
	CreateColorEX("絵黒幕", 20000, "BLACK");

	CreateTextureEX("絵背景", 1000, Center, Middle, "cg/ev/ev2250千秋オブデス.jpg");

	SetVolumeEX("SE*", 200, 0, null);
	MusicStart("SE01",0,2000,0,1000,null,false);
	Fade("絵黒幕", 0, 1000, null, true);
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteAllSt(0,true);
	Delete("@OnBG*");

WaitKey(200);

//◆ＥＶ："ev/ev2250千秋オブデス.txt"

	Fade("絵背景", 0, 1000, null, true);
	Zoom("絵背景", 0, 2000, 2000, null, true);
	SetBlur("絵背景", true, 8, 200, 200, false);
	Zoom("絵背景", 500, 1000, 1000, Dxl1, false);
	FadeDelete("絵黒幕", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010101180fje">
「いやああああああああああああああああッッ！！」

//	St("C",700, @0,@0,"buジャブル_通常_normal");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/010101190jbr">
「残念」


//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/010101200fje">
「え――？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//◆演出指定：視界に一瞬、ジャブルの姿が掠める

//◆ＳＥ：ゴン！！　バールで殴られる感じ

//◆演出指定：暗転

	St("C",700, @0,@-260,"buジャブル_通常_mad");
	Zoom("@StNameC/C*", 0, 1500, 1500, null, true);
	Request("@StNameC/C*", Smoothing);
	FadeSt("C",0,true);

//	OnBG(10,"bg1002100バックギャモン_店内_通常");
//	FadeBG(0,true);
	CreateTextureSP("絵演拡大背景", 20, Center, Middle, "cg/bg/l/bg1002100バックギャモン_店内_通常_l.jpg");

	CreateSE("SE01","se戦闘_打撃音04");

	CreatePlainSP("絵演揺用", 710);
	CreateColorEXadd("絵色白", 800, "#FFFFFF");
	CreateColorEX("絵色黒", 5000, "#000000");

	FadeDelete("絵背景", 0, null, false);

//	Move("@StNameC/C*", 400, @600, @0, Dxl3, false);
//	DeleteAllSt(400,true);

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Shake("絵演揺用", 300, -10, 30, 0, 0, 1000, null, false);
	Wait(30);
	FadeDelete("絵色白", 50, null, false);
	Fade("絵色黒", 100, 1000, null, true);

	CreateSE("SE99","se人体_倒れる03");
	MusicStart("SE99",0,700,0,1000,null,false);

	CreateColorEX("絵色黒上", 20000, "#000000");
	Fade("絵色黒上", 2000, 1000, null, true);

	Wait(1000);

	EndScene();
}
