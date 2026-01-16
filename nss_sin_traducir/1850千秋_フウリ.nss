
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1850千秋_フウリ.nss_MAIN
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
		$GameName = "1900千秋.nss";
	}else if($CharaName=="フウリ"){
		$GameName = "1900フウリ.nss";
	}else{
		$GameName = "1900千秋.nss";
	}

//■ムービー再生
	Quake_IsChaeck();
}

scene 1850千秋_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="690">
////////////header////////////
//file name "1850千秋_フウリ.nss"
//title "解散宣言"
//previous "1830千秋.nss"
//previous "1830フウリ.nss"


////////////footer////////////
//next "千秋" "1900千秋.nss"
//next "フウリ" "1900フウリ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);


{	ClockPass(1850);}

//◆場所：スーパーノヴァ_ライブ会場
	OnBG(10,"bg0502100スーパーノヴァ_ライブ会場_通常");
	FadeBG(0,true);

	DrawDelete("上背景", 500, 100, null, "blind_01_00_1", true);




//◆演出指定：ＢＧＭとか無く無音 は、やめます 2010/11/18

	SoundPlay("@xbgm24",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/500300010wfu">
「解散――？」

{	St("ML",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/500300020wfu">
「どういう……ことですか？」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/500300030fjr">
「言葉通りよ」

{	St("C",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/500300040fjr">
「今日のライブ、メジャービューがかかってるの！
　わかるでしょ？」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/500300050fjr">
「なのに、あなたのその演奏はなに？
　いつもと全然違うじゃない！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1851);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/500300060wfu">
「ごめんなさい。考え事を――」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/500300070fjr">
「そんなハンパな気持ちで、上手く行くと思ってる！？」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/500300080fjr">
「あなた、メジャーデビューしたかったんじゃないの！？」

//	St("C",700, @0,@0,"bu鈴_もじゃ_angry");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/500300090fjr">
「だから今日まで、こんなに頑張ってきたんじゃない！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1852);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	DeleteAllSt(200,false);}
{	St("MR",700, @50,@0,"bu千秋_通常_angry");
Move($MR_次, 200, @-50, @0, Dxl1, false);//"@StNameMR/MR*"
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/500300100kit">
「ちょ、ちょっと、鈴姉！　落ち着いて！」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/500300110kit">
「そんなピリピリするの、鈴姉らしくないよ！」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/500300120fjr">
「あなたは引っ込んでて！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/500300130kit">
「で、でも……ほら！
　フウリさんにだって、心配事が……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1853);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/500300140fjr">
「心配事……？」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/500300150fjr">
「そういえば、さっきミリＰさんに呼ばれたわよね」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/500300160fjr">
「何か言われた？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/500300170wfu">
「え……いや、それは……」

{	St("ML",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/500300180wfu">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1854);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/500300190fjr">
「言えないんだ」

{	St("C",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/500300200fjr">
「今度こそ上手く行くと思ったけど……やっぱり駄目ね」

{	St("C",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/500300210fjr">
「こんな状態でライブしたって、上手くいくわけない！」

//	St("C",700, @0,@0,"bu鈴_もじゃ_angry");
//	Shake("@StNameC/C*", 200, 0, 10, 0, 0, 500, Axl3, false);
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/500300220fjr">
「準備中止よ！
　今すぐスーパー・スーパーノヴァは中止！！」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/500300230fjr">
「第一宇宙速度は、今日この時を以て解散――」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolume("@xbgm*", 500, 0, null);

//◆ＳＥ：ひとりで拍手
	CreateSE("SE01","se動作_拍手02_l");
	MusicStart("SE01",0,700,0,1000,null,true);

	DeleteAllSt(200,true);
WaitKey(2000);

{	ClockPass(1855);}
	SetVolume("SE01", 300, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("MR",700, @50,@0,"bu平次_通常_smile");
Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/500300240fjh">
「いよぉし！　良く言った！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/500300250fjr">
「父さん……！？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/500300260fjh">
「だから言っただろう？　おめぇはどうせすぐ飽きるんだから、もうちょいまっとうな仕事に就けって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/500300270fjr">
「…………」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_normal");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/500300280fjh">
「もうこんなチャラチャラしたことはやめてだな！
　地に足着いたまっとうな人生を――」

{	SoundPlay("@xbgm20",4000,450,true);}
{	DeleteAllSt(200,false);}
{	St("C",700, @-50,@0,"bu千秋_朗らか_shock");
Move("@StNameC/C*", 200, @50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/500300290kit">
「ま、待ってよみんな！」

{	St("C",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/500300300kit">
「折角ライブ見にお客さんが来るんだしさ！
　今更中止も大変だろ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1856);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/500300310kit">
「解散かどうかは、一回頭を冷やしてから決めよう！」

{	St("C",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/500300320kit">
「鈴姉も、フウリさんも、それでいいよね？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/500300330wfu">
「は、はい……」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/500300340fjr">
「…………わかったわよ」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/500300350kit">
「じゃ、それで！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 10, null, "cg/data/turn_01_00_0.png", true);

{	ClockPass(1857);}

//◆演出指示：時間経過

WaitKey(1000);
	DrawDelete("絵黒幕", 300, 10, null, "turn_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("C",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/500300360wfu">
「解散……」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/500300370kit">
「フウリさん……大丈夫？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/500300380wfu">
「あ、臨時バイトの人。名前は……？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/500300390kit">
「ち……じゃなくて、アッキーです！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"buフウリ_通常_smile");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/500300400wfu">
「アッキーちゃん。
　助けてくれて、ありがとうございました」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/500300410kit">
「あのさ、そんなにガッカリしなくていいんじゃない。
　鈴姉も、バンド解散なんて本心じゃないと思うし」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/500300420wfu">
「いえ。鈴ちゃんのお父さんの言うとおりです」

{	St("MR",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/500300430wfu">
「鈴ちゃんくらい色々趣味があって、器用なひとなら、普通に暮らしても幸せになれます」

{	St("MR",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/500300440wfu">
「私が、メジャーになって有名になりたいって、そう我が儘言って、鈴ちゃんを付き合わせてしまって……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	ClockPass(1858);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/500300450kit">
「ちょっとちょっと！
　確か鈴姉にも、プロになりたい理由が――」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/500300460wfu">
「鈴ちゃんには、迷惑をかけてしまいました」

{	St("MR",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/500300470wfu">
「夢は、諦めた方がいい」

{	St("MR",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/500300480wfu">
「今日のライブは、中止になった方がいいんです」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/500300490kit">
「そ、そんなことないと思うんだけどなあ……」




</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);





//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("C",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/500300500fjr">
「で、父さんはなんの用事？」

{	DeleteAllSt(200,true);}

{	St("C",700, @0,@0,"bu平次_通常_normal");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/500300510fjh">
「おいおい、そんな冷てぇ顔すんなよ」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//1900千秋.nss[text0231]付近で回想されます（千代子

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0124]
{	St("C",700, @0,@0,"bu平次_通常_smile");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/500300520fjh">
「ほれ、お土産のクリマン！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	CreateTextureEX("絵演背景", 90, Center, Middle, "cg/obj/objエコバッグ.png");
	Move("絵演背景", 0, @0, @120, null, true);

	Fade("絵演背景", 300, 1000, null, false);
	Move("絵演背景", 300, @0, @-120, Dxl1, true);

	Wait(300);

//あきゅん「素材：objエコバッグ_千秋_フウリ1850」
	CreateSE("SE01","se動作_バッグ漁る");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵オブ", 100, Center, Middle, "cg/obj/objエコバッグ_千秋_フウリ1850.png");
	Zoom("絵オブ", 0, 0, 1000, null, true);
	#objエコバッグ_千秋_フウリ18 = true;

	Zoom("絵オブ", 300, 1000, 1000, Dxl3, false);
	Fade("絵オブ", 200, 1000, null, true);
	FadeDelete("絵演背景", 300, null, true);

	WaitKey(300);

	SetVolume("SE01", 200, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0125]
//	St("C",700, @0,@0,"bu鈴_シリアス_hard");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/500300530fjr">
「いらない。
　っていうか、わざわざそんなもののために？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateSE("SE01","se動作_バッグ漁る");
	MusicStart("SE01",0,700,0,1000,null,false);
WaitKey(200);
	Zoom("絵オブ", 300, 0, 1000, Dxl3, false);
	Fade("絵オブ", 200, 0, null, true);
	Delete("絵オブ");
WaitKey(100);
	SetVolume("SE01", 200, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("MR",700, @0,@0,"bu平次_通常_normal");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/500300540fjh">
「違ぇよ。――おい、そこのお嬢ちゃん！」


{	DeleteAllSt(200,false);}
{	St("ML",700, @50,@0,"bu千秋_朗らか_shock");
Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/500300550kit">
「ゲ、やば……」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_smile");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/500300560fjh">
「逃げなくていいって！　ただ、届け物に来ただけだから」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/500300570kit">
「届け物？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_normal");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/500300580fjh">
「村崎の店にぶつかったときに落としただろ？
　こいつを……」

{	St("MR",700, @0,@0,"bu平次_通常_shock");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/500300590fjh">
「ん……あれ？　ない……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1859);}


	DeleteAllSt(200,true);

//◆ＳＥ：ポケットパンパン入れる？
{
	CreateSE("SE01","se動作_服叩く");
	MusicStart("SE01",0,700,0,1000,null,false);
WaitKey(1000);
}
	SetVolume("SE01", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//	St("MR",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/500300600fjh">
「あんれー？　どこにやったかな……」

{	St("MR",700, @0,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/500300610fjh">
「あ、バッグの中に入れっぱなしか……？」

//St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/500300620fjh">
「ええと……クリマンバッグはどこに――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);


//◆演出指定：地震


	SetVolume("@xbgm*", 500, 0, null);
	CreateSE("SE10","se環境_地鳴り02_l");
	MusicStart("SE10",0,700,0,1000,null,true);

	CreateTextureSP("絵ゆれ", 100, Center, Middle, "cg/bg/bg0502100スーパーノヴァ_ライブ会場_通常.jpg");
CreateProcess("絵ゆれp", 150, 0, 0, "yure1850");//function_lc_chiyo.nss
Request("絵ゆれp",Start);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//	St("C",700, @0,@0,"bu千秋_通常_fear");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/500300630kit">
「え？」

//	St("C",700, @0,@0,"bu平次_通常_shout");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/500300640fjh">
「ぬおおおおっ！！」

//	St("C",700, @0,@0,"buフウリ_通常_shock");
//	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/500300650wfu">
「あわわわわわわ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	DeleteAllSt(200,true);

//	SetVolume("SE01", 1000, 0, null);
//WaitKey(1000);
//	Delete("絵ゆれ");


//◆演出指定：ここライト転倒とか

	CreateSE("SE02","se擬音_ライト倒れる");
	MusicStart("SE02",0,700,0,1000,null,false);
SetFrequency("SE02", 100, 1500, Dxl3);

//Shake("@絵ゆれ", 500, 5, 5, 0, 10, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0155]
//	St("C",700, @0,@0,"bu鈴_シリアス_angry");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/500300660fjr">
「みんな、姿勢を低く！」

//	St("C",700, @0,@0,"bu鈴_シリアス_shout");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/500300670fjr">
「慌てないで！　慌てちゃ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	DeleteAllSt(200,true);


//	TextBoxDelete(150);

//◆ＳＥ：スタンドライト倒れる
	CreateSE("SE01","se擬音_ライト倒れる");
	MusicStart("SE01",0,700,0,1000,null,false);
//Shake("@絵ゆれ", 500, 5, 5, 0, 10, 500, null, false);
WaitKey(1000);
	CreateSE("SE02","se戦闘_ガラス割れる02");
	MusicStart("SE02",0,700,0,1000,null,false);
WaitKey(500);
//Shake("@絵ゆれ", 500, 20, 5, 0, 10, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//	St("C",700, @0,@0,"buフウリ_頬手_shock");
//	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/500300680wfu">
「きゅうううううううッ！！」

{	SetVolume("SE10", 1000, 0, null);

	CreateSE("SE02","se戦闘_ガラス割れる01");
	MusicStart("SE02",0,700,0,1000,null,false);
}

//	St("C",700, @0,@0,"bu鈴_シリアス_shout");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/500300690fjr">
「フウリちゃんッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：ガラスが割れる

//	TextBoxDelete(150);

Delete("絵ゆれp");

	SetVolume("SE02", 1000, 0, null);
	SetVolume("SE03", 1000, 0, null);
	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);
	ClockDelete(0,true);
	PrintGO("上背景", 30000);
	TextBoxDelete(0);
	Delete("上背景");
	WaitPlay("SE02", null);

	EndScene();
}
