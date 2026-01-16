
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ab2140千秋_恵那.nss_MAIN
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

	if($CharaName=="千秋"){
		$GameName = "ab2150千秋_恵那.nss";
	}else if($CharaName=="恵那"){
		$GameName = "ab2150千秋_恵那.nss";
	}else{
		$GameName = "ab2150千秋_恵那.nss";
	}

//	$GameName = "";
//	$GameCircle=false;


}

scene ab2140千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1380">
////////////header////////////
//file name "ab2140千秋_恵那.nss"
//title "名探偵と超常現象"
//previous "ab2133千秋_恵那.nss"

////////////footer////////////
//next "千秋" "ab2150千秋_恵那.nss"
//next "恵那" "ab2150千秋_恵那.nss"

////////////body////////////

//■再定義定型文

	PrintBG("上背景", 30000);


//◆場所：柳神社_境内
	OnBG(10,"bg1501100柳神社_境内_通常");
	FadeBG(0,true);

	St("C",700, @0,@0,"bu貫太_通常_normal");
	FadeSt("C",0,true);

	FadeDelete("上背景", 200, null, true);

{	ClockPass(2140);}

	SoundPlay("@xbgm28",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab21/400200010okt">
「久しぶりだね、恵那ちゃん」

{	St("MR",700, @0,@0,"bu恵那_感動_happy");
	DeleteSt("C", 200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200020fje">
「お久しぶりです！」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200030fje">
「ホントに、ホントにお久しぶりです！」

{	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	Shake("@StNameMR/MR*", 100, 0, 5, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200040fje">
「もう！　どこに行っちゃってたんですか！
　連絡もなく急にいなくなるから心配したんですよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"bu貫太_通常_smile");
	DeleteSt("MR", 200,false);
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab21/400200050okt">
「すまないね。ちょっと、遠くに行っていたから」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteSt("C", 200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200060fje">
「どこに行ってたんですか？　外国？」

{	St("C",700, @0,@0,"bu貫太_通常_normal");
	DeleteSt("MR", 200,false);
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab21/400200070okt">
「ああ。海を渡ってアジアをブラブラ――」


{	St("ML",700, @0,@0,"bu千秋_気合い_shout");
	DeleteSt("C", 200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400200080kit">
「いーや、待て待て。ちょっと待て」

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400200090kit">
「なに？　どゆこと？
　っていうか今変身したよな？」

{	St("ML",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400200100kit">
「なんで普通に変身してるの？
　なんで普通に受け入れちゃってるの？　化けダヌキ？」

{	St("C",700, @0,@0,"bu貫太_通常_smile");
	DeleteSt("ML", 200,false);
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab21/400200110okt">
「そうだよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("ML",700, @0,@0,"bu千秋_朗らか_happy");
	St("ML",700, @0,@0,"bu千秋_通常_worry");
	DeleteSt("C", 200,false);
	FadeSt("ML",200,true);
	FadeStPro("ML", 200, 8400);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400200120kit">
「いやいやそうですよねー化けダヌキなんてそんなものアニメの狸合戦の中にしか――ってえ？　え？　え？」

{	AgainSt("ML",700, @0,@0,"bu千秋_通常_worry");
	St("ML",700, @0,@0,"bu千秋_驚天_shy");
	Shake("@StNameML/ML*", 100, 0, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400200130kit">
「あの今言いました！？　そうだよって言いました！？」


{	St("C",700, @0,@0,"bu貫太_通常_normal");
	DeleteSt("ML", 200,false);
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab21/400200140okt">
「言った。僕は化けダヌキさ」

{	St("ML",700, @0,@0,"bu千秋_通常_fear");
	DeleteSt("C", 200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400200150kit">
「本気で言ってる？」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteSt("ML", 200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200160fje">
「アッキーちゃんも見たでしょ。
　貫太さんが変身したところ」

{	St("ML",700, @0,@0,"bu千秋_通常_fear");
	DeleteSt("MR", 200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400200170kit">
「見たよ。見たけど――
　ってか、なんでそんな平然と受け入れてんだよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2141);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("MR",700, @0,@0,"bu恵那_通常_pride");
	DeleteSt("ML", 200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200180fje">
「私は名探偵富士見恵那だもの！
　薄々、気付いてたわ」

{	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	DeleteSt("MR", 200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400200190kit">
「気付くって――」

{	St("MR",700, @0,@0,"bu恵那_一休_think");
	DeleteSt("ML", 200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200200fje">
「あれはお母さんがいなくなってすぐだから……
　今から１０年前だっけ？」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200210fje">
「なんだかわかんないけど、ユージローが散歩中、突然いなくなっちゃったことがあったの」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200220fje">
「夜まで探したんだけど、中々見つからなくて、途中でお化けを怖がって千秋が帰っちゃうし」

{	St("ML",700, @0,@0,"bu千秋_朗らか_think");
	DeleteSt("MR", 200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400200230kit">
「べ、別にお化けが怖いからじゃ――」

{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	DeleteSt("ML", 200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200240fje">
「ん？　なにか言った？」

{	St("ML",700, @0,@0,"bu千秋_通常_pinch");
	DeleteSt("MR", 200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400200250kit">
「ううん。別に」

{	St("MR",700, @0,@0,"bu恵那_通常_think");
	DeleteSt("ML", 200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200260fje">
「ま、とにかくそれで途方に暮れてたら――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("C",700, @0,@0,"bu貫太_通常_normal");
	DeleteSt("MR", 200,false);
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab21/400200270okt">
「偶然、僕がそこに通りがかった」



//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab21/400200280okt">
「夜も遅かったし、心配だったから。
　僕も一緒に、探すのを手伝ったんだ」

{	St("MR",700, @0,@0,"bu恵那_通常_think");
	DeleteSt("C", 200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200290fje">
「ふたりで探してようやく見つけたんだけど、私、あんまり嬉しくて道路から飛び出しちゃって」

{	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200300fje">
「ユージローを抱き留めたら、車のライトが――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2142);}

	TextBoxDelete(150);

//あきゅん「修正指示：トラックのままでセリフ続けてください」
//※対応しました（mngw 11/18）
	CreateSE("SE01","seメカ_車_トラックエンジン_l");
	CreateSE("SE02","seメカ_車_急ブレーキ");///seメカ_車_事故/

	CreateColorEXadd("絵色事故", 20000, "#FFFFFF");
	CreateTextureEX_mono("絵背景", 1000, Center, Middle, "cg/ev/ev2210ユージロー事故b.jpg");
	Wait(16);

	MusicStart("SE01",1000,700,0,1000,null,true);
	Fade("絵色事故", 0, 1000, null, true);
	Fade("絵背景", 0,1000, null, true);

	ClockDelete(0,true);
	Wait(50);


	Fade("絵色事故", 300, 0, null, false);
	Zoom("絵背景", 1250, 2500, 2500, Axl3, false);

Wait(200);
WaitKey(1000);

	SetVolume("SE01", 1000, 0, null);
	MusicStart("SE02",0,1000,0,1000,null,false);
Wait(400);

	DeleteAllSt(200,false);

//	St("MR",700, @0,@0,"bu恵那_通常_hard");
//	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200310fje">
「轢かれる――！　そう思った瞬間、身体が突き飛ばされて私は歩道に倒れてた」

{	SetVolumeEX("SE02", 1000, 0, null);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200320fje">
「貫太さんが突き飛ばして、助けてくれたの。
　私ははっきり、それを見た」


{
//	St("MR",700, @0,@0,"bu恵那_通常_pinch");
//	FadeSt("MR",200,true);
	}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200330fje">
「けど……貫太さんは、逃げ切れなくて……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	DeleteSt("MR", 0,false);
	FadeSt("ML",0,true);

	Fade("絵色事故", 1000,1000, null, true);

	Delete("絵背景");
{	ClockPass(2142);}

	FadeDelete("絵色", 500, null, false);
	FadeDelete("絵色事故", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400200340kit">
「…………」


{	St("MR",700, @0,@0,"bu恵那_通常_think");
	DeleteSt("ML", 200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200350fje">
「私は歯を食いしばって、後ろを振り返った」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200360fje">
「けど、想像してた貫太さんの身体はそこにはなくて」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX_mono("狸事故", 2000, Center, Middle, "cg/ev/ev2210ユージロー転倒c.jpg");
	ClockDelete(500,false);
	Fade("狸事故", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200370fje">
「代わりに、タヌキの死体があったの」


{	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	DeleteSt("MR", 0,false);
	FadeSt("ML",0,true);
	FadeDelete("狸事故", 500, null, true);
{	ClockPass(2142);}}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400200380kit">
「タヌキの……？」

{	St("ML",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400200390kit">
「あれ？　それって、もしかして……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//あきゅん「修正指示：てっきりそのまま～まで墓で進行」
//※対応しました。（mngw 11/18）

//◆演出指示：「墓ＥＶ」
	CreatePlainSP("絵板写", 5000);
	Wait(16);
	CreateTextureSP("墓", 50, Center, Middle, "cg/bg/bg1502100柳神社_お墓_通常.jpg");
	DeleteAllSt(0,false);
	FadeDelete("絵板写", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400200400kit">
「このお墓？」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200410fje">
「そう。その後、私を探しに来てくれた千秋と一緒に、ここにそのタヌキさんを埋めたの」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab21/400200420okt">
「…………」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200430fje">
「てっきりそのまま死んじゃったのかと思ったんだけど」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreatePlainSP("絵板写", 5000);
	Wait(16);
	St("MR",700, @0,@0,"bu恵那_感動_happy");
	FadeSt("MR",0,true);
	FadeDelete("墓", 0, null, true);
	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200440fje">
「いつの間にか、生き返ったんですね」

{	St("C",700, @0,@0,"bu貫太_横向き_sad");
	DeleteSt("MR", 200,false);
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab21/400200450okt">
「…………」

{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	DeleteSt("C", 200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200460fje">
「貫太さん……？」


{	St("C",700, @0,@0,"bu貫太_通常_normal");
	DeleteSt("MR", 200,false);
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab21/400200470okt">
「あ、ああ。
　普通のタヌキじゃ、こうはいかないだろうけど」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2143);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("C",700, @0,@0,"bu貫太_通常_smile");
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab21/400200480okt">
「僕の術は、ちょっとしたもんだからね。
　一度死んだくらいじゃ、死なないよ」

{	St("MR",700, @0,@0,"bu恵那_感動_happy");
	DeleteSt("C", 200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200490fje">
「そうなんですか……ああ、良かった……
　貫太さんが、帰ってきてくれるなんて」


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200500fje">
「村崎さんもあの後、ずっと探してたんですよ！
　ちゃんと、会ってあげてくださいね！」

{	St("C",700, @0,@0,"bu貫太_通常_sad");
	DeleteSt("MR", 200,false);
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab21/400200510okt">
「僕は……別れを告げに来ただけなんだ。
　だから、すぐに行かなきゃならない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	DeleteSt("C", 200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200520fje">
「別れを……？」

{	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	DeleteSt("MR", 200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400200530kit">
「あ、あの……そういえば今、思い出したんだけど。
　フウリさん、貫太さんのお知り合いなんですよね」

{	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400200540kit">
「もしかして、彼女の思い人って――」

{	St("C",700, @0,@0,"bu貫太_通常_smile");
	DeleteSt("ML", 200,false);
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab21/400200550okt">
「……昔のことだよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("C",700, @0,@0,"bu貫太_通常_normal");
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab21/400200560okt">
「けど僕にはもう、帰る場所がある」

{	St("C",700, @0,@0,"bu貫太_横向き_normal");
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab21/400200570okt">
「ふたりとも、すまない。
　僕はやっぱり、フウリくんを追わなきゃならないようだ」

{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	DeleteSt("C", 200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200580fje">
「そう……ですか」

{	St("C",700, @0,@0,"bu貫太_横向き_normal");
	DeleteSt("MR", 200,false);
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab21/400200590okt">
「協力、ありがとう！　助かったよ！」

{	St("C",700, @0,@0,"bu貫太_横向き_smile");
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab21/400200600okt">
「それじゃあ、さようなら！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2144);}


//	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 4000, 0, null);

	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",0,700,0,1000,null,true);

	Move("@StNameC/C*", 200, @120, @0, DxlAuto, false);
	DeleteSt("C", 200,true);
	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	Shake("@StNameC/C*", 100, 0, 5, 0, 0, 500, null, false);
	FadeSt("MR",200,true);

	SetVolumeEX("SE01", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200610fje">
「あの、私に連絡先を――貫太さん！？」

{	St("MR",700, @0,@0,"bu恵那_哀愁_fear");
	Shake("@StNameC/C*", 300, 0, 5, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200620fje">
「貫太さーん！」

{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200630fje">
「ああ、行っちゃった。
　あんなに急ぐことないのに」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	DeleteSt("MR", 200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400200640kit">
「……フウリさん、追いかけていったのかもな」

{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	DeleteSt("ML", 200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200650fje">
「……だね」

{	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	DeleteSt("MR", 200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400200660kit">
「ガッカリした？」

{	St("MR",700, @0,@0,"bu恵那_通常_shy");
	DeleteSt("ML", 200,false);
	Shake("@StNameMR/MR*", 100, 5, 0, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200670fje">
「ううん！　別に、そういうわけじゃないけど」

{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200680fje">
「命の恩人だからさ。
　もう少し、一緒にいたかったなって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	SceneOut(5000, 1000, "blind_01_00_0");
	DeleteAllSt(200,true);
	WaitKey(1000);


//◆場所：秋葉原_万世橋

	OnBG(10,"bg0104200秋葉原_万世橋_閉店");
	FadeBG(0,true);

	SoundPlay("@xbgm08_noint",0,450,true);

	SceneIn(1000, "blind_01_00_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("ML",700, @0,@0,"bu千秋_通常_think");
	DeleteSt("MR", 200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400200690kit">
「でも……あれ？
　なんか、辻褄が合わなくないか？」

{	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400200700kit">
「フウリさんと別れようとしたんだろ？
　ならなんで、逃げたりしたんだ？」

{	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	DeleteSt("ML", 200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200710fje">
「え？　そりゃ、もちろん……」

{	St("MR",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200720fje">
「もちろん……あれ？　なんでだろ。
　心の準備ができてなかった、とか？」

{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200730fje">
「確かに、おかしいわね。
　どうして貫太さん、急に――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SceneOut(5000, 1000, "blind_01_00_0");


{	ClockPass(2145);}

//◆場所：パチンコ屋_正面
	OnBG(10,"bg2301100パチンコ屋_正面_通常");
	FadeBG(0,true);

	SceneIn(1000, "blind_01_00_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]

{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200740fje">
「お墓があるとか聞いた途端、雰囲気変わったわよね」

{	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	DeleteSt("MR", 200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400200750kit">
「確かにそれはあったかも」

{	St("MR",700, @0,@0,"bu恵那_一休_think");
	SetComic(@240,@-120,5);
	DeleteSt("ML", 200,false);
	FadeSt("MR",200,true);
	FadeComic();}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200760fje">
「うーん……なにかお墓に秘密が？
　いや、でも……秘密っていったい……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	DeleteComic();}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200770fje">
「…………」

{	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	DeleteSt("MR", 200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400200780kit">
「わ……わかんねー」

{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	DeleteSt("ML", 200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200790fje">
「あれ？　でも、アッキーちゃんさ。
　なんで貫太さんのお墓、知ってたの？」

{	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	DeleteSt("MR", 200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400200800kit">
「え？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	DeleteSt("ML", 200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200810fje">
「あそこ、私が柳神社の巫女さん……でいいのかな？　にお願いして、やっと埋めさせてもらえたのに」

{	St("MR",700, @0,@0,"bu恵那_通常_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200820fje">
「たぶん、千秋くらいしか知らないと思うんだけど」

{	St("ML",700, @0,@0,"bu千秋_通常_think");
	DeleteSt("MR", 200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400200830kit">
「いや、ええとアレは――」

{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	DeleteSt("ML", 200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200840fje">
「アレは、なに？」

{	St("ML",700, @0,@0,"bu千秋_通常_fear");
	DeleteSt("MR", 200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400200850kit">
「アレは――アレは――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	St("MR",700, @0,@0,"bu恵那_ハルヒ_shock");
	DeleteSt("ML", 200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200860fje">
「なんなのよ！？」

{	St("ML",700, @0,@0,"bu千秋_朗らか_shy");
	DeleteSt("MR", 200,false);
	Shake("@StNameML/ML*", 300, 0, 10, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400200870kit">
「もじゃもじゃッ！！」

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_sigh");
	DeleteSt("ML", 200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200880fje">
「もじゃもじゃ？」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolumeEX("@xbgm*", 1500, 0, null);

	TextBoxDelete(150);
	PrintGO("上背景", 30000);

//◆場所：スパコン館_裏面_電柱折れ
	OnBG(10,"bg1101300スパコン館_裏面_電柱折れ");
	FadeBG(0,true);

	DrawDelete("上背景", 300, 100, null, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	St("ML",700, @120,@0,"buユージローa_通常_hard");
	Move("@StNameML/ML*", 200, @-120, @0, DxlAuto, false);
	Shake("@OnBG*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab21/400200890ujr">
「わうわう！　わうわうわう！！」


{	St("C",600, @240,@0,"bu平次_御用だ_angry");
	Move("@StNameC/C*", 200, @-120, @0, DxlAuto, false);
	Shake("@OnBG*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/400200900fjh">
「ここかッ！？」

{	St("MR",700, @-60,@0,"bu恵那_哀愁_pinch");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @60, @0, DxlAuto, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200910fje">
「な、父さん……！」

{	St("C",700, @0,@0,"bu平次_通常_hard");
	DeleteSt("MR", 200,false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/400200920fjh">
「おお、恵那か！」

{	St("C",700, @0,@0,"bu平次_通常_angry");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/400200930fjh">
「今からここに立てこもった凶悪犯を捕まえるからな！
　ここで待ってろ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SoundPlay("@xbgm31",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	DeleteSt("C", 200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200940fje">
「凶悪犯？」

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200950fje">
「ってことは……コレは事件！？」

{	St("ML",700, @0,@0,"bu千秋_通常_fear");
	DeleteSt("MR", 200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400200960kit">
「次から次に、何なんだよ……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2146);}

	TextBoxDelete(0);

	CreateColorSP("絵色白", 710, "#FFFFFF");
	
	DeleteAllSt(0,false);


//◆ＳＥ：バタン！
	CreateSE("SE01","se動作_ドア閉める02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(50);
	Shake("@OnBG*", 300, 10, 10, 0, 0, 500, null, false);
	FadeDelete("絵色白", 200, null, true);

	WaitKey(1000);


//◆ＳＥ：足音
	CreateSE("SE02","se動作_走る02_l");
	MusicStart("SE02",0,700,0,1000,null,true);

	WaitKey(1000);

	St("C",700, @-200,@0,"buロクローb_通常_shout");
	Move("@StNameC/C*", 500, @200, @0, DxlAuto, false);
	FadeSt("C",500,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]

//◆演出指定：ドップラー効果で遠ざかっていく
{	SetVolumeEX("@SE02", 3000, 0, null);
	Move("@StNameC/C*", 500, @200, @0, DxlAuto, false);
	DeleteSt("C", 500,false);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/ab21/400200970rkr">
「お助けええええええええええええええッ！！」


{	St("C",700, @0,@0,"bu平次_御用だ_angry");
	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/400200980fjh">
「な、なんでい！？」

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	DeleteSt("C", 200,false);
	Shake("@StNameMR/MR*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400200990fje">
「凶悪犯！？」

{	St("ML",700, @0,@0,"bu千秋_通常_fear");
	DeleteSt("MR", 200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400201000kit">
「悪質ではあるかもしれないけど――」

{	St("C",700, @0,@0,"bu平次_通常_pain");
	DeleteSt("ML", 200,false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/400201010fjh">
「ちぃっ！　もしや、服を切られた――？
　あのカッター女！　急がにゃマズい――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	DeleteSt("C", 200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400201020kit">
「やっぱり、凶悪犯は別に――？」


{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	DeleteSt("ML", 200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400201030fje">
「行かなきゃ――」

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	DeleteSt("MR", 200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400201040kit">
「ちょ！　待てよ！
　ここにいろって、オヤジさんが――」

{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	DeleteSt("ML", 200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400201050fje">
「だから行くんじゃない！」


{	Move("@StNameMR/MR*", 200, @120, @0, DxlAuto, false);
	DeleteSt("MR", 200,false);
	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400201060kit">
「……あーあ」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 3000, 0, null);

	TextBoxDelete(150);

	SceneOut(5000, 1000, "blind_01_00_0");
	DeleteAllSt(0,true);



{	ClockPass(2147);}

//◆場所：スパコン館_通路
	OnBG(10,"bg1102100スパコン館_通路_通常");
	FadeBG(0,true);

	SceneIn(1000, "blind_01_00_1");

	SoundPlay("@xbgm03",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	St("C",700, @0,@0,"bu平次_通常_angry");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/400201070fjh">
「こらてめぇ！　待ってろって言っただろ！」

{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	DeleteSt("C", 200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400201080fje">
「父さんには、任せておけないもの」

{	St("C",700, @0,@0,"bu平次_通常_angry");
	DeleteSt("MR", 200,false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/400201090fjh">
「ンダとぉ！？
　てめぇ、親の気持ちも少しは――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteSt("C", 200,false);

	Shake("@OnBG*", 1000, 5, 5, 0, 0, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]

//◆音声指示：遠くから
//【バイトＢ】
<voice name="バイトＢ" class="その他女声" src="voice/ab21/400201100e14">
「ぁぁぁぁ――――ッ！！」

{	St("C",700, @0,@0,"bu平次_通常_angry");
	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/400201110fjh">
「悲鳴ッ！？」

{	St("ML",700, @0,@0,"bu千秋_通常_angry");
	DeleteSt("C", 200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400201120kit">
「たぶん下の方から――」

{	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	DeleteSt("ML", 200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400201130fje">
「え、でも確か地下は――」

{	St("C",700, @0,@0,"bu平次_御用だ_angry");
	DeleteSt("MR", 200,false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/400201140fjh">
「どりゃああああああッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	OnBG(10,"bg1102100スパコン館_通路_通常");
	FadeBG(0,true);

	Move("@StNameC/C*", 200, @-240, @0, DxlAuto, false);
	DeleteSt("C", 200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400201150fje">
「ちょ、ちょっと父さん！」


{	DeleteSt("MR", 200,false);
	St("C",700, @240,@0,"bu平次_御用だ_angry");
	Move("@StNameC/C*", 200, @-240, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/400201160fjh">
「どっせい！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameC/C*", 200, @-100, @200, Axl3, false);
	Zoom("@StNameC/C*", 200, 3000, 3000, Axl3, true);
	DeleteAllSt(200,true);

	TextBoxDelete(0);
	CreateColorSP("絵色白", 710, "#FFFFFF");

//あきゅん「修正指示：ここで背景を教室に切り替えてください」
//※対応しました。（mngw 11/18）

//◆ＳＥ：扉を蹴り開ける
	CreateSE("SE01","se動作_ドア蹴破る");
	MusicStart("SE01",0,700,0,1000,null,false);


	DeleteAllSt(0,true);

{	ClockPass(2148);}

//◆場所：スパコン館_通路
	OnBG(10,"bg1104100スパコン館_スタジオ_通常");
	FadeBG(0,true);



//	Shake("@OnBG*", 1000, 10, 10, 0, 0, 500, null, false);
	BGPlainShake(50, 1000, 10, 10, 0, 0, 500, Dxl1, false);
	FadeDelete("絵色白", 500, null, true);
	WaitKey(500);


	CreateAXLWindowEX("横割り", "Y",1500, 50,384, false);
	WindowAXLZoom("横割り", "Y",0, 0, null, true);
	CreateTextureSP("横割り/絵背景", 1400, 0, Middle, "cg/bg/bg1104100スパコン館_スタジオ_通常.jpg");
	SetShade("横割り/絵背景", HEAVY);
	Zoom("横割り/絵背景", 0, 2000, 2000, null, true);

	CreateTexture("横割り/平次", 1410, @0, @0, "cg/bu/bu平次_御用だ_angry.png");
	CreateTexture("横割り/平次shock", 1410, @0, @0, "cg/bu/bu平次_通常_shock.png");
	Fade("横割り/平次shock", 0, 0, null, false);
	
	SetAlias("横割り/平次","横割り/平次");
	Move("横割り/平次", 0, 0, -50, null, true);

	WindowAXLZoom("横割り", "Y",300, 1000, Dxl2, true);

	Shake("横割り/平次", 300, 0, 10, 0, 0, 500, null, false);

//	St("C",700, @0,@120,"bu平次_御用だ_angry");
//	Move("@StNameC/C*", 200, @0, @-120, DxlAuto, false);
//	Shake("@StNameC/C*", 300, 0, 10, 0, 0, 500, null, false);
//	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/400201170fjh">
「秋葉原の平和はオレに任せろ！」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/400201180fjh">
「スーパー警官富士見平次、ただいま参上！！」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/400201190fjh">
「傷害・器物破損・その他諸々の現行犯で、逮捕――！」


{	DeleteAllSt(200,true);}


//【バイトＢ】
<voice name="バイトＢ" class="その他女声" src="voice/ab21/400201200e14">
「ぁああっっ！！　あっ！　あっ！　あっ！」

//【バイトＢ】
<voice name="バイトＢ" class="その他女声" src="voice/ab21/400201210e14">
「だめっ、いく――アタシ、いく、いっちゃ――」


{	SetVolumeEX("@xbgm*", 300, 1, null);
	Move("横割り/平次shock", 0, 50, -50, null, true);
	Fade("横割り/平次shock", 200, 1000, null, false);
	Fade("横割り/平次", 200, 0, null, true);
	}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/400201220fjh">
「え……ＡＶ撮影？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	WindowAXLZoom("横割り", "Y",300, 0, Dxl2, false);
	Fade("@横割り/絵背景", 300, 0, Dxl2, true);
	Fade("@横割り/平次", 300, 0, Dxl2, true);
	Fade("@横割り/平次shock", 300, 0, Dxl2, true);
	Delete("@横割り*");
	DeleteAllSt(200,true);
	St("MR",700, @60,@0,"bu恵那_一休_think");
	Move("@StNameMR/MR*", 200, @-60, @0, DxlAuto, false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0295]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400201230fje">
「やっぱり……」


{	St("ML",700, @0,@0,"bu千秋_通常_think");
	DeleteSt("MR", 200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400201240kit">
「ってことは本物は――」

{	St("C",600, @0,@0,"buユージローa_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 0, 10, 0, 0, 500, null, false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab21/400201250ujr">
「わうわうわうわうッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameC/C*", 200, @-240, @0, DxlAuto, false);
	DeleteSt("C", 200,true);


	TextBoxDelete(150);

	SceneOut(5000, 300, "slide_01_01_0");



{	ClockPass(2149);}

//◆場所：スパコン館_通路
	OnBG(10,"bg1102100スパコン館_通路_通常");
	FadeBG(0,true);

	SceneIn(300, "slide_01_01_1");

	SetVolumeEX("@xbgm03", 300, 450, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
{	St("C",700, @240,@0,"buユージローa_通常_hard");
	Move("@StNameC/C*", 200, @-240, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab21/400201260ujr">
「わうわうわうわう！」

{	Move("@StNameC/C*", 200, @-120, @0, DxlAuto, false);
	DeleteSt("C", 200,true);
	St("C",700, @120,@0,"bu平次_通常_shock");
	Move("@StNameC/C*", 200, @-120, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/400201270fjh">
「おいおい、ちょっと待てよ！」

{	Move("@StNameC/C*", 200, @-120, @0, DxlAuto, false);
	DeleteSt("C", 200,true);
	St("MR",700, @120,@0,"bu恵那_ハルヒ_angry");
	Move("@StNameMR/MR*", 200, @-120, @0, DxlAuto, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400201280fje">
「もう少し――もう少しで――！！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateColorSP("絵色白", 710, "#FFFFFF");
	DeleteAllSt(0,true);

//◆ＳＥ：パリーン
	CreateSE("SE01","se戦闘_ガラス割れる01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(50);
	FadeDelete("絵色白", 100, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]


{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	Move("@StNameML/ML*", 200, @-60, @0, DxlAuto, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400201290kit">
「この音は！？」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolumeEX("@xbgm*", 4000, 0, null);

//あきゅん「修正指示：スクリプト修正して下さい」
//※SceneOutすべきところをSceneInにしてました。修正しました（mngw 11/18）

	TextBoxDelete(150);
	SceneOut(5000, 300, "slide_01_01_0");

	DeleteAllSt(0,false);

//◆場所：スパコン館_店内
	OnBG(10,"bg1103100スパコン館_店内_通常");
	FadeBG(0,true);

	CreateColorEXadd("絵色白０", 20010, "WHITE");
	CreateColorEXadd("絵色白１", 20010, "WHITE");
	CreateColorEXadd("絵色白２", 20010, "WHITE");
	CreateColorEXadd("絵色白３", 20010, "WHITE");

	CreateTextureEX_mono("絵背景０", 20000, Center, Middle, "cg/ev/ev2210ユージロー事故b.jpg");
	CreateTextureEX_mono("絵背景１", 20000, Center, Middle, "cg/ev/l/ev2210ユージロー転倒c_l.jpg");
	CreateTextureEX_mono("絵背景２", 20000, Center, Middle, "cg/ev/l/ev2210ユージロー転倒c_l.jpg");

	SceneIn(300, "slide_01_01_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
{	St("MR",700, @120,@0,"bu恵那_ハルヒ_shock");
	Move("@StNameMR/MR*", 200, @-120, @0, DxlAuto, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400201300fje">
「着いたッ」

{	DeleteSt("MR", 200,false);
	St("C",700, @120,@0,"bu平次_御用だ_angry");
	Move("@StNameC/C*", 200, @-120, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/400201310fjh">
「どこだカッター女ッ！」



//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/400201320fjh">
「大人しくお縄を頂戴しろおっ！！」

{	DeleteSt("C", 200,false);
	St("ML",700, @120,@0,"bu千秋_通常_sad");
	Move("@StNameML/ML*", 200, @-120, @0, DxlAuto, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400201330kit">
「……誰も、いない？」

{	St("ML",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/400201340kit">
「窓から、飛び降りたのか……？」


{	St("C",700, @0,@0,"buユージローa_通常_hard");
	DeleteSt("ML", 200,false);
	Shake("@StNameC/C*", 300, 0, 10, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab21/400201350ujr">
「わうわうっ！！」

{	St("MR",700, @0,@0,"bu恵那_一休_think");
	DeleteSt("C", 200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400201360fje">
「ん？　ユージロー？」


{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400201370fje">
「あ……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//◆演出指定：フウリが倒れてる絵、過去に被らせる感じで入れたいなあ
//あきゅん「修正指示："ev2210ユージロー転倒c"をフラッシュバックでチラっとする感じで」

//※対応しました（mngw 11/18）

	CreateSE("SE01","se擬音_フラッシュバック");
	MusicStart("SE01",0,700,0,1000,null,false);

	TextBoxDelete(0);

	Fade("絵色白０", 0, 1000, null, true);

	Move("絵背景０", 0, 0, 0, null, false);
	Zoom("絵背景０", 0, 1500, 1500, null, false);
	Fade("絵背景０", 0, 1000, null, true);

	FadeDelete("絵色白０", 100, null, true);


	Fade("絵色白１", 0, 1000, null, true);


	Move("絵背景１", 0, -1500, -500, null, false);
	Zoom("絵背景１", 0, 2000, 2000, null, false);
	Fade("絵背景１", 0, 1000, null, true);

	FadeDelete("絵色白１", 100, null, true);


	Fade("絵色白２", 0, 1000, null, true);


	Move("絵背景２", 0, 600, 0, null, false);
	Zoom("絵背景２", 0, 2000, 2000, null, false);
	Fade("絵背景２", 0, 1000, null, true);

	FadeDelete("絵色白２", 100, null, true);


	Fade("絵色白３", 100, 1000, null, true);

	Delete("絵背景*");

	OnBG(10,"bg1103100スパコン館_店内_通常");
	FadeBG(0,true);

	DeleteAllSt(0,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",0,true);

	SetVolumeEX("SE01", 2000, 0, null);
	FadeDelete("絵色白３", 1000, null, true);
	Delete("絵背景*");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/400201380fje">
「うそ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,true);
	TextBoxDelete(150);



	EndScene();
}
