
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene y1730似鳥.nss_MAIN
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
	$GameName = "1800似鳥.nss";

	#START_FLAG=true;
	$SYSTEM_backselect_lock=false;
}

scene y1730似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="660">
////////////header////////////
//file name "y1730似鳥.nss"
//title "スマガＤＳ（クソゲー・オブ・ザ・イヤー２０１０年大賞作品）"

////////////footer////////////
//next "似鳥" "1800似鳥.nss"


////////////body////////////

{	ClockTime(1750);}

//■再定義定型文
	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/img/imgスマガＤＳ.jpg");

	FadeDelete("上背景", 2000, null, true);

//◆演出指示：演出指示：スマガのＤＳ版を表示
//あきゅん「素材：imgスマガＤＳ」

	SoundPlay("@xbgm32",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300010nki">
（スマガ<RUBY text="ドリームステーション">ＤＳ</RUBY>、即ち――
　ストライプウィッチーズ・マジカル・ガールズ）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300020nki">
（オレは、このゲームが好きだ）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300030nki">
（なぜ、好きかって？　そりゃ、決まってる）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300040nki">
（今日一日を、コイツのおかげで乗り切ることができた）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300050nki">
（もしもコイツがいなかったら――と思うと、ゾッとする）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300060nki">
（一応、先に言っておこう）


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300070nki">
（スマガ<RUBY text="ドリステ">ＤＳ</RUBY>。これは、面白いゲームではない）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300080nki">
（というか、詰まらない）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300090nki">
（というか、クソゲーである）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1751);}

	//TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300100nki">
（そんなゲームを、何故オレは持っているのか？）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300110nki">
（それはもちろん――<RUBY text="たちばな">大刀刃那</RUBY>のせいである）


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300120nki">
（大刀刃那――
　古くにネットで知り合った、自称天才プログラマーだ）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300130nki">
（なぜ知り合ったかというと、その時のオレは「デスクトップ常駐型アプリケーション」の絵を描いており――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300140nki">
（彼はオレの相方、プログラムを担当していたからである）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300150nki">
（正直そのころのオレの画力はいわゆる箸棒ってやつで。
　オレの萌え絵に萌えたヤツはほぼ皆無――）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300160nki">
（だったのだが一方の大刀刃那にはよくわからないプログラミング能力があるらしく――）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300170nki">
（オレには全くわからない方面から喝采を受けそこそこダウンロード数を稼いでいたりしたらしい）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300180nki">
（後で聞いたらそれはいわゆるトロイで、彼はそのＰＣを踏み台に法律を蹂躙し蹂躙し蹂躙した）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1752);}

	//TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300190nki">
（ＡＶスナッフロリショタ二次元三次元アプリシェアウェアギャルゲエロゲＢＬゲー乙女ゲーえー、あとなんだ？）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300200nki">
（まあそういうアレをナニしてネットでありとあらゆる悪行を犯し噂では某府警に裏でマークされていたのだという）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300210nki">
（彼自身は伝説のスーパーハカー「サイババア」の弟子である、とか名乗っている）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300220nki">
（のだが、いやなにそのサイババアって？　知らねーし。
　大刀刃那も結局ただの違法ダウンロードの人でしょ！？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300230nki">
（と思ったのだが大刀刃那は本当にプログラマーとして有能だったらしくジボクコートというエロゲ会社に就職）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300240nki">
（したのだがプログラムの腕はやはりそんな大したことがなかったらしく、スマガＤＳは数度の延期を重ね――）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300250nki">
（ドリステ通信で見事３／３／４／３の低評価を獲得）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300260nki">
（オレは今日一日、ゲラゲラ笑いながら大刀刃那くんの血と汗と涙の籠もったゲームで時間を潰したのだった）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300270nki">
（おっと、ここでオレが何故東京ビッグサイトの真ん中で、無為に時間を潰さなければならなくなったか説明しよう）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1753);}

	//TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300280nki">
（同人誌が売れないからである）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300290nki">
（大晦日である。コミマである）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300300nki">
（喜び勇んで持ってきた大量の同人誌。
　足元に控える在庫の山・山・山……）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300310nki">
（売れたのは１０冊）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300320nki">
（後は、１冊も、出ない）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300330nki">
（…………さて）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300340nki">
（問：この不良在庫を生み出す原因となったのは誰か）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300350nki">
（答：大刀刃那）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300360nki">
（実は今を遡ること半年前、オレの創ったキャラクターが画像張り付け掲示板よつばちゃんねるに晒された）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1754);}

	//TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300370nki">
「『殺っちゃえ！　ヤンデレノーコさん』
　住人の挨拶は『<RUBY text="ほふ">屠</RUBY>れ！』」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300380nki">
（毎週、定期的にスレッドが立ち、何人かの絵師が競作し、職人がコラ画像を創る、静かなブームを呼んでいたのだ）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300390nki">
（本当にそれは静かなブームだった）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300400nki">
（ところが当時のオレたちは静かでもブームはブームであると大いなる勘違いをかます）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300410nki">
（「６００部とか余裕だろ」とか大刀刃那が言うので「６００部が余裕だったら頑張れば１０００部は行けるな」）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300420nki">
（死んでしまえ）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300430nki">
（しかも取らぬタヌキの皮チャットを交わしたのは夏、まだ定期的にノーコさんスレが立っていたころで、今は冬）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300440nki">
（売れるわけがねーだろ常識的に考えて……）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300450nki">
（と、オレはこの状況をつくった大刀刃那に毒づき、毒づくついでにアイツのつくったクソゲーをプレイしていた）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1755);}

	//TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300460nki">
（というか、そのぐらいしかやることがなかった）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300470nki">
（最低の時間の潰し方だ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 2000, 0, null);


//◆時間：ジャンプ
{	ClockPass(1756);}

	PrintGO("上背景", 20000);

	CreateSE("SE04","seガヤ_ざわざわ02_l");
	MusicStart("SE04",1500,700,0,1000,null,true);

//◆場所：秋葉原駅_正面
	OnBG(10,"bg0201112秋葉原駅_正面_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 2000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300480nki">
（だがしかし！
　オレは今ここに、高らかに宣言しよう！）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300490nki">
（オレはこのゲームが好きだッ！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300500nki">
（このゲームはクソゲーだ。
　プレイしてても全然楽しくない）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300510nki">
（最初は死ぬほど罵倒を浴びせ、大刀刃那へのストレスを発散させていたが、だんだん空しくなってきている）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300520nki">
（だが――それでも、オレはコイツを愛している！）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300530nki">
（なぜならば――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	//TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300540nki">
（ビッグサイトから着払いで荷物を送り財布を空にしてようやく辿り着いた我がホーム、秋葉原！　この街で！）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300550nki">
（コイツが！
　今日のオレの命を繋ぐ<RUBY text="たねせん">種銭</RUBY>になるからであるッ！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――






{	ClockPass(1757);}

	SetVolume("SE*", 1000, 0, null);


	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

	WaitKey(1000);

	FadeDelete("絵色黒", 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0132]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300560nki">
「――え？　１００円買取？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300570nki">
「マジですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se擬音_ギャグ_寒い風");
	MusicStart("SE01",0,700,0,1000,null,false);


	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0135]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300580nki">
（マジだった）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300590nki">
（１００円でなにが買える？
　今時コンビニでカップ麺も買えねーぞ）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300600nki">
（これでは返済期限が今日の借金はおろか、今晩の晩飯だって……）



//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300610nki">
「………………」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300620nki">
「さ、さらばッ！
　愛しき<RUBY text="ドリームステーション">　Ｄ　Ｓ　</RUBY>本体！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1758);}


	//TextBoxDelete(150);



	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

	CreateSE("SE01","seメカ_レジ_キャッシャー");
	MusicStart("SE01",0,700,0,1000,null,false);
	$SETime = RemainTime("SE01");
	WaitKey($SETime);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300630nki">
（こうしてオレは、手に入れたのだ）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300640nki">
（今日中に返さなければならない、２０万円の<RUBY text="たねせん">種銭</RUBY>を！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――




{	ClockPass(1759);}


	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆場所：パチンコ屋_正面
	OnBG(10,"bg2301100パチンコ屋_正面_通常");
	FadeBG(0,true);

	CreateSE("SEL01","seガヤ_パチンコ屋店内_l");
	MusicStart("SEL01",1000,400,0,1000,null,true);

	Delete("絵色黒");
	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0155]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300650nki">
「いざ――」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/y17/300300660nki">
「勝負ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);


	EndFileBlackOut(20000,2000);
	EndScene();
}
