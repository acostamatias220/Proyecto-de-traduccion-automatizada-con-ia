
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene aa2350千秋_恵那.nss_MAIN
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
	$GameName = "aa2355沙紅羅.nss";//★エンディング中（aa）
}

scene aa2350千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="610">
////////////header////////////
//file name "aa2350千秋_恵那.nss"
//title "噛み合わない最後"
//previous "aa2345フウリ.nss"

////////////footer////////////
//next "aa2355沙紅羅.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
//	FadeDelete("上背景", 0, null, true);

{	ClockPass(2350);}

//◆演出指定：会場盛り上がる
//あきゅん「修正指示：しばらくはテレビ内部を写す感じに」

	CreateSE("SE01","seガヤ_大歓声_l");
	MusicStart("SE01",0,700,0,1000,null,true);
	CreateTextureSPover("絵効果", 100, Center, Middle, "cg/ef/efテレビ画面用効果フィルター.jpg");
	Fade("絵効果", 0, 500, null, true);
	OnBG(10,"bg0502211スーパーノヴァ_ライブ会場_消灯");
	FadeBG(0,true);
	SetShade("@OnBG*", MEDIUM);
	SoundPlay("@xbgm20",0,450,true);
	FadeDelete("上背景", 1000, null, true);
	Wait(1000);



//◆場所：泰然堂大学病院_病室
//	OnBG(10,"bg1402100泰然堂大学病院_病室_通常");
//	FadeBG(1500,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//◆音声指示：テレビ越し
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aa23/500100010fjr">
『行っくよおおおおお――――ッ！！』

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100020fje">
「鈴姉……頑張って……！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa23/500100030kit">
「ん……んん……ん――？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2351);}


//あきゅん「修正指示：ここから病院に戻してください」
//あきゅん「修正指示：ベッド位置が病人と逆に感じてしまうので立ち位置を変更」
//修正しました(11/10)
	CreatePlainSP("絵板写", 5000);

	OnBG(10,"bg1402100泰然堂大学病院_病室_通常");
	FadeBG(0,true);

	SetVolumeEX("@SE*", 1500, 200, null);

//あきゅん「修正：エコーしていたのを修正しました」
	SetVolumeEX("@xbgm20", 1500, 200, null);

	Delete("絵効果");
	FadeDelete("絵板写", 1000, null, true);

	CreateSE("SE00","se動作_衣擦れ");
	MusicStart("SE00",0,700,0,1000,null,false);

	$SETime = RemainTime("SE00");
	WaitKey($SETime);

	St("MR",700, @0,@100,"bu千秋_通常_worry");
	Move("@StNameMR/MR*", 600, @0, @-100, Dxl2, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa23/500100040kit">
「あれ……恵那？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100050fje">
「あ、アッキーちゃん、気付いたんだ……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa23/500100060kit">
「ここは？」

{
	SetVolumeEX("SE*", 10000, 0, null);
	SetVolumeEX("@xbgm*", 10000, 0, null);
	St("ML",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100070fje">
「病院」

{	CreateSE("SEL01","seガヤ_交通少_l");
	MusicStart("SEL01",6000,300,0,1000,null,true);
	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa23/500100080kit">
「あ……そうか。
　オレ、あのままトイレで気を失って……？」

{
	St("ML",700, @0,@0,"bu恵那_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100090fje">
「全く、驚かせないでよね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("ML",700, @0,@0,"bu恵那_通常_think");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100100fje">
「クリマンさ、やっぱりまずかったらしいよ。
　私たちの前にもひとり、アレ食べて入院してたみたい」

{	St("ML",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100110fje">
「食い意地張るから――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa23/500100120kit">
「そういうのとは違うって！」

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa23/500100130kit">
「あれ？　その番組は？」

{	St("MR",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa23/500100140kit">
「なんで？　鈴姉とか、映ってるし！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_一休_think");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100150fje">
「ええと……どこから説明すればいいのかな」

{	St("ML",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100160fje">
「ゆるキャラバン、早めに終わっちゃったでしょ？
　余った時間で第一宇宙速度のライブを中継したの」

{
	St("ML",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100170fje">
「そしたら、すごい反響があったらしくて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{
	St("ML",700, @0,@0,"bu恵那_一休_think");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100180fje">
「ほら、ゆるキャラバンって、テレビと同時にネットで生中継されてたでしょ？」

{	St("ML",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100190fje">
「年越しライブも、急遽ネットで中継することにしたんだって」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_朗らか_think");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa23/500100200kit">
「……恵那って、そういうのに詳しいっけ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100210fje">
「私はわかんないけど。
　隣の部屋のひとに教えてもらったの」

{	St("ML",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100220fje">
「急病で入院しちゃったけど、元々このネット中継のディレクターだった人みたいで……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa23/500100230kit">
「ふーん……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100240fje">
「ね、それよりさ。汗かいたよね」

{	St("ML",700, @0,@0,"bu恵那_通常_happy");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100250fje">
「病衣に着替えなきゃいけないし、下着買ってきたし、とりあえず脱ぎましょ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa23/500100260kit">
「……え？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100270fje">
「脱ぎましょ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa23/500100280kit">
「いやでも、ひとりでできるし――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100290fje">
「ホントに？」

//あきゅん「修正指示：ＳＥとシェイク等で抵抗する様を表現して下さい」
//修正しました11/10
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_pain");
	Shake("@StNameMR/MR*", 300, 0, 3, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa23/500100300kit">
「ほんと――んっ！　くぅ……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_happy");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100310fje">
「ホラホラ、無理しない無理しない」

{	St("ML",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100320fje">
「私が、手伝ってあげるから」

{	DeleteAllSt(200,false);
	CreateSE("SE01","se動作_掴み損ねる");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("MR",700, @0,@0,"bu千秋_通常_worry");
	Move("@StNameMR/MR*", 300, @50, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa23/500100330kit">
「え……いや、ちょっと……」

{	DeleteAllSt(200,false);
	SoundPlay("@xbgm29",0,450,true);
	St("ML",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100340fje">
「私……まだまだ、未熟だからさ」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100350fje">
「アザナエルがなんだったのか、わからなかったし。
　追いかけてたら、突然、水の中で溺れたり」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2352);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("ML",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100360fje">
「世界はまだまだ、解かれていない謎だらけよ」

{	St("ML",700, @0,@0,"bu恵那_一休_pride");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100370fje">
「でもまあ、今日は現実を全て受け入れることにして、とりあえず目の前の謎を解いてみたいの」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa23/500100380kit">
「な……なんだよ、目の前の謎って」

{	SetVolumeEX("SE*", 2000, 0, null);
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100390fje">
「私の気持ち」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa23/500100400kit">
「え？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100410fje">
「キス、したよね？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa23/500100420kit">
「アレは人工呼吸ってやつで、仕方なくしたことで――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100430fje">
「でも、私の胸は躍ったの」

{	St("ML",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100440fje">
「すごく、運命みたいに感じちゃって――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa23/500100450kit">
「恵那……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100460fje">
「大丈夫。もうちょっとだけ、近づきたい。それだけ」

{
	SetVolumeEX("@xbgm*", 1500, 0, null);
	DeleteAllSt(200,false);
	St("C",700, @-50,@0,"bu恵那_通常_normal");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100470fje">
「さ、着替えよ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_驚天_shock");
	Shake("@StNameMR/MR*", 300, 0, 10, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa23/500100480kit">
「着替えるって――いやッ！　やめ――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100490fje">
「大丈夫。だって、女の子同士――」

//あきゅん「修正指示：ここで玉掴み、空気を一気にギャグ方面へ向ける。」
//修正しました11/10

{
	CreateSE("SE01","se擬音_ギャグ_ぽにょぽにょ");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100500fje">
「女の子同士――？」

{	St("C",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100510fje">
「って、アレ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_pain");
	FadeSt("MR",200,true);
	Shake("@StNameMR/MR*", 300, 0, 3, 0, 0, 500, null, false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa23/500100520kit">
「ぁぅっ」

{
	CreateSE("SE01","se擬音_ギャグ_ぽにょぽにょ");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100530fje">
「なんで、ここ、むにゅって……」

{
	CreateSE("SE01","se擬音_ゴング01");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("C",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100540fje">
「もしかして生えた！？」

//あきゅん「修正指示：ここからギャグ全開、ＢＧＭと音、キャラアクションを派手に」
//修正しました11/10
{	DeleteAllSt(200,false);
	SoundPlay("@xbgm11",0,450,true);
	St("MR",700, @100,@0,"bu千秋_通常_shy");
	Move("@StNameMR/MR*", 300, @-100, @0, Dxl2, false);
	Shake("@StNameMR/MR*", 300, 0, 5, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa23/500100550kit">
「だ、誰が生えるかっ！！　元々ついてるッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100560fje">
「嘘！　だって、前はなかった――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_shy");
	FadeSt("MR",200,true);
	Shake("@StNameMR/MR*", 300, 0, 5, 0, 0, 500, null, false);//【小碓千秋】
	}
<voice name="小碓千秋" class="小碓千秋" src="voice/aa23/500100570kit">
「あったあった！　最初からありました！」

{	St("MR",700, @0,@0,"bu千秋_気合い_hard");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa23/500100580kit">
「いくら女々しいヘタレだからって、バカにするなッ！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_sigh");
	Move("@StNameC/C*", 1000, @-200, @0, Dxl2, false);
	FadeSt("C",200,false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100590fje">
「女々しいヘタレ……？
　って、もしかしてやっぱり――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,false);
//	SoundPlay("@xbgm23",0,450,true);

//窓準備
	CreateAXLWindowEX("絵窓", "Y",1600, 48, 480, false);
	SetAlias("絵窓","絵窓");
	WindowAXLZoom("絵窓", "Y", 0, 0, null, true);
	CreateColorSP("絵窓/絵演色", 1510, "#FF1144");
	CreateTextureSPmul("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
//	CreateTextureSP("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
//	CreateColorSP("絵窓/絵演背景", 1520, "#FFFFFF");

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1530, center, middle, "cg/bu/bu千秋_気合い_shout.png");
	Move("絵窓/絵演立絵", 0, @0, @200, null, true);
	Request("絵窓/絵演立絵2", Smoothing);

//動作
	CreateSE("SE01","se擬音_ギャグ_ドカーン");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("@絵窓*", 1000, 0, 10, 0, 0, 500, null, false);
	WindowAXLZoom("絵窓", "Y", 200, 1000, Dxl2, false);
	Move("絵窓/絵演立絵*", 200, @0, @-100, Dxl2, false);
	Zoom("絵窓/絵演立絵", 200, 1300, 1300, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);
//	Fade("絵窓/絵演立絵", 200, 0, Axl2, false);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa23/500100600kit">
「おう！　オレの名前は、小碓千秋、だあああああ！！」

{
	FadeDelete("@絵窓*", 500, null, true);

}

{
	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 0, 10, 0, 0, 500, null, false);
	Shake("@OnBG*", 300, 0, 10, 0, 0, 500, null, false);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa23/500100610fje">
「えええええええええええええええ！！？？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 1500, 0, null);
	CreateColorEX("絵背景", 20000, "BLACK");
	Fade("絵背景", 2500, 1000, null, true);


	EndScene();
}
//next "aa2355沙紅羅.nss"
