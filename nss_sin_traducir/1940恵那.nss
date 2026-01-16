
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1940恵那.nss_MAIN
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
	$GameName = "1950恵那.nss";
	//$GameCircle=false;

}

scene 1940恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1100">
////////////header////////////
//file name "1940恵那.nss"
//title "名探偵への挑戦状"
//previous "1930恵那.nss"

////////////footer////////////
//next "恵那" "1950恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);


{	ClockPass(1940);}

//◆演出指定：スーパーノヴァへと向かう

	SoundPlay("@xbgm20",2000,450,true);

//◆場所：スーパーノヴァ_正面_ガラス割れ
	OnBG(10,"bg0501200スーパーノヴァ_正面_ガラス割れ");
	FadeBG(0,true);

	DrawDelete("上背景", 300, 100, null, "slide_01_01_1", true);

WaitKey(500);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


	CreateSE("SE01","se動作_ドア開ける01");
	MusicStart("SE01",0,700,0,1000,null,false);


{	ClockPass(1941);}

//◆場所：スーパーノヴァ_ライブ会場
	OnBG(10,"bg0502111スーパーノヴァ_ライブ会場_ガラス割れ");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]

{	St("C",700, @50,@0,"bu恵那_通常_angry");
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200010fje">
「鈴姉！　聞きたいことが――」

{	St("C",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200020fje">
「え……？」

{	St("ML",700, @0,@0,"bu鈴_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200030fjr">
「あ、恵那ちん。どうしたの？」

{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200040fje">
「店……色々壊れてる……
　今日これから、ライブでしょ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200050fje">
「あ！　まさか、地震のせいで？」

{	St("ML",700, @0,@0,"bu鈴_シリアス_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200060fjr">
「まあね」

{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200070fje">
「あの……ええと……」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200080fje">
「ごめんなさい」

{	St("ML",700, @0,@0,"bu鈴_シリアス_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200090fjr">
「ちょっと、なんで恵那ちんが謝るの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("ML",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200100fjr">
「大丈夫よ。
　壊れた機材はさっき、村崎さんに届けてもらったし」

{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200110fje">
「村崎さん、もう電機は扱ってないんじゃ――」

{	St("ML",700, @0,@0,"bu鈴_シリアス_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200120fjr">
「ジャガンナート商会のジャブルさんに配達を頼まれたんだって。対応早くて助かっちゃった」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200130fjr">
「さすが、天才商人ジャブルさんって感じだよねっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//◆音声指示：小声
{	St("ML",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200140fjr">
「コレも全部、フウリちゃんのおかげ……
　ちゃんと、仲直りしないとね……」

{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200150fje">
「でも鈴姉、アレは……？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

{	ClockPass(1942);}


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
　恵那の指さす先には、割れた防音ガラスがあった。


{	St("C",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200160fjr">
「正直、困っちゃったのよね」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200170fjr">
「大晦日のこの時間で、お店はほとんど閉まっちゃって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200180fjr">
「唯一連絡がついたお店にも、材料はあるけど人手がないから、今夜中は無理だって」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200190fje">
「……そうなんだ」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu鈴_通常_happy");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200200fjr">
「でも！　アタシは諦めない！」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200210fjr">
「なんとかガラスを張り直して、今日のライブを成功させてみせるよっ！」

{	St("C",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200220fjr">
「――ということで、恵那ちんヒマ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200230fje">
「なんで？」

{	St("C",700, @0,@0,"bu鈴_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200240fjr">
「実はね、千あ――じゃなくて、アッキーちゃんって新人君が、約束の時間に来なくてね」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200250fjr">
「でももう、お店は開く時間でしょ？
　恵那ちんにウェイトレスを――」


{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200260fje">
「お断りします――
　ってか、そのために来たんじゃない！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200270fje">
「鈴姉！　６時くらいに、千秋と一緒にいたでしょ？」

{	St("ML",700, @0,@0,"bu鈴_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200280fjr">
「え？　なんで？
　ライブ前だし、普通に店にいたけど」

{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200290fje">
「でも、携帯電話の後ろから、声聞こえてきたもん！」

{	St("ML",700, @0,@0,"bu鈴_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200300fjr">
「気のせいじゃない？
　なんならアリバイ、他のバイトに聞いてみる？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1943);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200310fje">
「じゃあ、千秋がこのお店に――」

{	St("ML",700, @0,@0,"bu鈴_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200320fjr">
「それも、聞いてみたら？　誰も見てないと思うけど」


{	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200330fje">
「ぐ……」

{	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/bg0501200スーパーノヴァ_正面_ガラス割れ.jpg");
	SetShade("絵背景",MEDIUM);
	Zoom("絵背景", 0, 2000, 2000, null, true);
}


{	St("C",19700, @0,@0,"fu恵那_一休_angry");
	DeleteAllSt(200,false);
	Fade("絵背景", 200, 1000, null, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200340fje">
（鈴姉、絶対嘘ついてるわ）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200350fje">
（でも……ここは鈴姉のホーム。
　まともに訊いても上手くいくわけないし……）

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
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200360fje">
（こうなったら――）


{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeDelete("絵背景", 200, null, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200370fje">
「鈴姉、電話貸して」

{	St("ML",700, @0,@0,"bu鈴_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200380fjr">
「え？　なんで？」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200390fje">
「携帯の電池切れたの。だから貸して。駄目？」

{	St("ML",700, @0,@0,"bu鈴_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200400fjr">
「あの、アタシも電池切れちゃってて――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200410fje">
「へえ」

{	SetVolume("@xbgm*", 3000, 1, null);}

{	CreateSE("SE01","seメカ_携帯_電子音02");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(200,true);
WaitKey(2000);
	SetVolume("SE01", 100, 0, null);
}
　恵那は無言で携帯電話を取りだし、コール。

{	St("ML",700, @0,@0,"bu鈴_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200420fjr">
「え？　ちょっと、なにやって――」



//◆ＳＥ：着信
{	CreateSE("SE01","seメカ_携帯_メール着信_鈴_l");
	MusicStart("SE01",0,700,0,1000,null,true);
}

{	St("ML",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200430fjr">
「あ」

　鈴のポケットで、携帯電話が鳴った。


{	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200440fje">
「電池切れてないよね？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1944);}

	SetVolumeEX("@xbgm20", 2000, 450, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("ML",700, @0,@0,"bu鈴_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200450fjr">
「ちょ、ちょっと！　どうしてそんな意地悪――」

{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200460fje">
「なんで嘘ついたの？」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200470fje">
「私に、携帯の着信履歴、見られたくなかったから？」

{	St("ML",700, @0,@0,"bu鈴_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200480fjr">
「そういうわけじゃないけど――」




{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200490fje">
「私、街で、千秋の携帯見つけたの。
　ストラップが同じだから、間違いないわ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200500fje">
「私の知らない女の子が、鈴姉と電話してた」



{	St("ML",700, @0,@0,"bu鈴_シリアス_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200510fjr">
「……見てたんだ」


{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200520fje">
「鈴姉、あの女の子、誰？」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200530fje">
「どうして千秋の携帯を持ってるの？」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200540fje">
「千秋は、いったいどこに行っちゃったの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("ML",700, @0,@0,"bu鈴_シリアス_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200550fjr">
「え、ええと……それは……」



{	ClockPass(1945);}

{	DeleteAllSt(200,true);}

//◆ＳＥ：扉開く
{	CreateSE("SE01","se動作_ドア開ける01");
	MusicStart("SE01",0,700,0,1000,null,false);
WaitKey(500);
}


//	St("C",700, @-50,@0,"bu鈴_通常_happy");
//	DeleteAllSt(200,false);
//Move("@StNameC/C*", 200, @50, @0, Dxl1, false);
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200560fjr">
「いらっしゃいませー！」

{	St("MR",700, @0,@0,"bu恵那_通常_shout");
//	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200570fje">
「こら鈴姉！　誤魔化さない――で？」

{	St("ML",700, @-50,@0,"bu千秋_朗らか_normal");
	DeleteAllSt(200,false);
Move("@StNameML/ML*", 200, @50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/19/400200580ktt">
「？？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("MR",700, @0,@0,"bu恵那_ハルヒ_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200590fjr">
「あ――――！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200600fje">
「みつけたッ！」

{	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/19/400200610ktt">
「え？　な、なんだよ！」

{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200620fje">
「さっき、どうして逃げたの？」

{	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/19/400200630ktt">
「逃げた？　お、オレが？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
{	St("ML",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//	St("C",700, @0,@0,"bu千秋_通常_pinch");
//	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/19/400200640ktt">
「た、他人のそら似だろ？　全然記憶ないし」

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200650fje">
「嘘！　ってか、そもそもアンタは誰――」

{	St("C",700, @-100,@0,"bu鈴_通常_normal");
	DeleteAllSt(200,false);
Move("@StNameC/C*", 200, @100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200660fjr">
「はあい、恵那ちん。そこまで！」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200670fjr">
「アッキーちゃん、来るの遅いぞー！」

{	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/19/400200680ktt">
「あ……はい。遅れてすいません」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1946);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("C",700, @0,@0,"bu鈴_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200690fjr">
「今日はその分、たっぷり働いてもらうからね」

{	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/19/400200700ktt">
「頑張ります！」

{	St("C",700, @0,@0,"bu鈴_シリアス_think");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200710fjr">
「あら？　ネームプレートは？」

{	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/19/400200720ktt">
「あ……あれ？
　もしかしたら忘れちゃったかも――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("C",700, @0,@0,"bu鈴_シリアス_think");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200730fjr">
「あらら。控え室の予備、取ってきなさい」

{	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/19/400200740ktt">
「は……はい」



{	St("C",700, @0,@0,"bu鈴_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200750fjr">
「――ってことで、おわかり？」

{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200760fje">
「何が何だか、さっぱりわかんない」


{	St("C",700, @0,@0,"bu鈴_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200770fjr">
「店が忙しいって言ったでしょ？
　アッキーちゃんはピンチヒッターってわけ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200780fjr">
「アタシがアッキーちゃんに電話してたのは、アルバイトの催促」

{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200790fje">
「……わかったわ。
　アッキーちゃんはアルバイト。それでいい」

{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200800fje">
「でも、じゃあなんで彼女が千秋の携帯持ってるわけ？」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200810fje">
「ずっと前から、一緒に御札を納めにいく約束してたのに、なんで急に約束破っちゃったわけ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1947);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200820fje">
「今日の千秋、絶対おかしいわ。
　鈴姉、やっぱり私に隠し事してるでしょ」

{	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200830fjr">
「やだなー。
　アタシが恵那ちんに隠し事、してないわけないでしょ」

{	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200840fje">
「開き直った……」

{	St("C",700, @0,@0,"bu鈴_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200850fjr">
「と、こんなことしてる場合じゃないや」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400200860fjr">
「お店の準備があるから、またねー。
　あ、忙しいからアッキーちゃんにも話しかけないで」

{	DeleteAllSt(200,true);}

{	St("C",700, @50,@0,"bu恵那_通常_angry");
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200870fje">
「ちょ……鈴姉！」



{	SetVolumeEX("@xbgm*", 2000, 0, null);}


{	St("C",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200880fje">
（逃げられちゃった……
　ま、鈴姉がまともに取り合ってくれるはずないわね）

{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200890fje">
（けど推理材料は増えたし、少しは前進してるはず――
　要点を整理してみましょう）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	SoundPlay("@xbgm08_noint",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200900fje">
（まず第一に、今日、千秋は私に言えない理由があって、急に会う約束を破った）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200910fje">
（第二に、千秋は今日の６時頃、鈴姉の側にいた。
　リハーサルがあるんだから、きっとこの近くのはず）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200920fje">
（第三に、その時は千秋が持ってた携帯電話が、今、アッキーちゃんとか言うわけのわからない女の子の所にある）


{	St("C",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200930fje">
「う……うう……うううう……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1948);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	St("C",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200940fje">
「わかんない……
　この名探偵富士見恵那に、解けない謎があるなんて……」


{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200950fje">
「千秋……アンタ、どこに行ったのよ？」


{	DeleteAllSt(200,true);}
　恵那は、千秋のメールを読み返そうと携帯を取り出す。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE02","seメカ_携帯_電子音01");
	MusicStart("SE02",0,700,0,1000,null,false);
WaitKey(500);
//	TextBoxDelete(150);

//以下、携帯の文面
/*
差出人：ミリＰの占い情報局
件名：恋愛ＱＰ（ハート）ミリＰの恋愛占い！
はろぉ～！いつも読んでくれて感謝！毎日ビンビン、ミリオンプロデューサーミリＰの恋愛占いよ！今年最後のあなたの運命は――【大吉】！あなたの目の前に、とうとう待ちに待った運命の人が！こんなチャンスは二度とない！次々に襲う障害を乗り越えて、見事彼のハートをゲットしちゃおう！良いお年を！ばっはは～い！【今日のラッキーアイテム：ストラップ】
*/

	CreateAXLPhWindowEX("絵演窓", "Y", 2100, 96, 192, false);
	PhWindowAXLZoom("絵演窓", "Y", 0, 0, null, true);
	CreateTextureSP("絵演窓/絵背景", 2010, Center, 90, "cg/obj/objIF背景_恵那.png");
	CreateTextureSP("絵演窓/絵演物", 2010, Center, 100, "cg/obj/obj恵那携帯液晶部分と占い.png");
	PhWindowAXLZoom("絵演窓", "Y", 500, 1000, AxlDxl, true);

$scrnum=500;
$stynum=100;
$i=0;
$mvy=-22;
	while($i<12){//19
		$y_num=$i*$mvy+$stynum;
		Move("絵演窓/絵演物", 0, @0, $y_num, null, true);
		WaitKey($scrnum);
		$i++;
	}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230a]
//	St("C",700, @0,@0,"bu恵那_通常_shy");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200960fje">
（なにが『待ちに待った運命の人が！』よ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	PhWindowAXLZoom("絵演窓", "Y", 500, 0, null, true);
	Delete("@絵演窓*");
}

{	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/bg0501200スーパーノヴァ_正面_ガラス割れ.jpg");
	SetShade("絵背景",MEDIUM);
	Zoom("絵背景", 0, 2000, 2000, null, true);
}

{	St("C",19700, @0,@0,"fu恵那_通常_angry");
	Fade("絵背景", 200, 1000, null, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230b]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200970fje">
（……いや、別に千秋が運命の人とかじゃないけど）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200980fje">
（っていうか、なんで千秋が運命の人とか……
　ありえないし！）

{	St("C",19700, @0,@0,"fu恵那_一休_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400200990fje">
（はぁ……ラッキーアイテム、ストラップねぇ……）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	FadeDelete("絵背景", 200, null, false);
	DeleteAllSt(200,true);

//	TextBoxDelete(150);

{	ClockPass(1949);}


//◆演出指示：タヌキストラップ

	CreateTextureEX("絵オブ", 100, Center, Middle, "cg/obj/obj恵那携帯ストラップ.png");
	Move("絵オブ", 0, @0, @100, null, true);
	Move("絵オブ", 500, @0, @-100, DxlAuto, false);
	Fade("絵オブ", 500, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400201000fje">
（確かに、コレが千秋のとお揃いだから、携帯電話が同じってわかったわけだけど）


//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400201010fje">
（全然、ラッキーアイテムにはほど遠いっていうか――）

{	Move("絵オブ", 500, @0, @100, DxlAuto, false);
	FadeDelete("絵オブ", 500, null, true);
}

//◆音声指示：小声
{	St("C",700, @0,@0,"bu恵那_一休_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400201020fje">
「タヌキ……ねぇ」

//◆音声指示：小声
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400201030fje">
「タヌキ……タヌキ……」

{	SetVolumeEX("@xbgm*", 1000, 0, null);
	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400201040fje">
「タヌキッ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	St("ML",700, @0,@0,"bu鈴_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400201050fjr">
「え？　恵那ちん、どうしたの？」

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400201060fje">
「わかったわ！　アッキーちゃん！　ちょっと来て！」

{	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/19/400201070ktt">
「え、オレ？」

{	St("C",700, @-50,@0,"bu鈴_シリアス_angry");
	DeleteAllSt(200,false);
Move("@StNameC/C*", 200, @50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/400201080fjr">
「ちょっと！　仕事の邪魔しないでって――」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400201090fje">
「ふふふふふ、ふたりとも、観念しなさいッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SoundPlay("@xbgm08_onlyint",0,450,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	St("C",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400201100fje">
「謎は――全て解けたわッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



	EndScene();
}
