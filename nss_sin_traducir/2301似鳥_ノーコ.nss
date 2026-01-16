
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2301似鳥_ノーコ.nss_MAIN
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
	if($CharaName=="似鳥"){
		$GameName = "2310似鳥.nss";
	}else{
		$GameName = "2310ノーコ.nss";
	}
//	$GameCircle=false;

}

scene 2301似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1580">
////////////header////////////
//file name "2301似鳥_ノーコ.nss"
//title "あのゆるキャラバンをもういちど"
//previous "2300沙紅羅_恵那_似鳥_ノーコ.nss"

////////////footer////////////
//next "似鳥" "2310似鳥.nss"
//next "ノーコ" "2310ノーコ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2301);}

//前ファイルの曲引継ぎ
	SoundPlay("@xbgm23",0,450,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawDelete("上背景", 500, 100, null, "blind_01_00_1", true);

//おがみ：ＳＥ：散会　走るおとを複数
	CreateSE("SE00","se動作_集団走る");
	MusicStart("SE00",0,700,0,1000,null,true);

//◆場所：秋葉原_裏通り
	FadeDelete("上背景", 0, null, true);
	OnBG(10,"bg0101200秋葉原_裏通り_閉店");
	FadeBG(0,true);


	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

	Wait(300);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("ML",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010300010nki">
「本当に、あの計画で上手くいくのか……？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_幽霊_think");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/010300020nko">
「わからない」

{	St("MR",700, @0,@0,"buノーコb_幽霊_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/010300030nko">
「けど、ミヅハはともだち」

{	St("MR",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/010300040nko">
「たすけなきゃ、だめ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010300050nki">
「……だな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010300060nki">
「そのためにも、絶対説得しないと」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/010300070nko">
「がんばる」

{	St("MR",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/010300080nko">
「でも……フウリ……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/010300090nko">
「わたしを、ゆるしてくれる？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);
	DeleteAllSt(200,true);

	SetVolumeEX("SE*", 1000, 0, null);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆場所：スーパーノヴァ_正面_ガラス割れ
//おがみ：車が突っ込んでくるときに補修の跡があったので修正
	OnBG(10,"bg0501300スーパーノヴァ_正面_ガラス補修");
	FadeBG(0,true);




	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010300100nki">
「それは……わ、わかんないけど。
　うん、きっと大丈夫だって」

{	St("ML",700, @0,@0,"bu似鳥_通常_happy");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010300110nki">
「恵那も、フウリのケガは治ったって言っただろ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/010300120nko">
「うん」

{	St("MR",700, @0,@0,"buノーコb_幽霊_think");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/010300130nko">
「あれ、でも……あのけいかんのことばは……？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010300140nki">
「時間がない。ほら、行こう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2302);}


	SetVolumeEX("@xbgm*", 1500, 0, null);


	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆場所：スーパーノヴァ_ライブ会場_ガラス割れ
//おがみ：車が突っ込んでくるときに補修の跡があったので修正
	OnBG(10,"bg0502200スーパーノヴァ_ライブ会場_ガラス補修");
	FadeBG(0,true);

	SoundPlay("@xbgm20",0,700,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/010300150fjr">
「んむ……角……角……角のピースを……！！
　ああっ！　もうブチ割ってやりたい！！」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010300160mrp">
「これはここ？　違う？
　いや、そこをなんとか……！！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010300170nki">
「あれ、何やってんだ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_shock");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/010300180nko">
「われたガラスで……ジグソーパズル」

{	DeleteAllSt(200,true);
	St("C",700, @0,@100,"bu鈴_もじゃ_angry");

	CreateSE("SE01","se擬音_ギャグ_ぴょこ");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("@StNameC/C*", 400, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 300, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);
	Wait(200);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/010300190fjr">
「ああ！　もうやだ！
　こういう細か――――い作業って大ッ嫌いなのよね！」

{	St("C",700, @0,@0,"bu鈴_もじゃ_fear");
	Shake("@StNameC/C*", 200, 10, 0, 5, 0, 1000, AxlDxl, false);
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 200, 10, 0, 5, 0, 1000, AxlDxl, false);
	Wait(200);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/010300200fjr">
「こう、頭がもじゃもじゃもじゃもじゃ……」

{	St("C",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/010300210fjr">
「ミリＰさん！
　ちょっと外で頭を冷やしてきたいんですけど――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	DeleteAllSt(200,true);
	St("C",700, @0,@50,"buミリＰa_ショータイム_angry");
	Shake("@StNameC/C*", 200, 5, 0, 0, 0, 1000, null, false);
	Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010300220mrp">
「こら！　最後まで諦めないって言ったでしょ！」

{	St("C",700, @0,@0,"buミリＰa_ショータイム_shout");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010300230mrp">
「このガラスをくっつければ、防音効果も元に戻る！
　そう信じるの！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010300240nki">
「ホントにそうか……？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/010300250nko">
「ぜつぼうてき……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu鈴_もじゃ_angry");
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/010300260fjr">
「ちょっと！　なによ貴方たち！
　さっきから、後ろでブツブツブツブツうるさいっ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010300270nki">
「あ、あの……あなたが富士見鈴さんですか？」

{	DeleteAllSt(200,false);
	St("MR",700, @-50,@0,"bu鈴_もじゃ_cry");
	Shake("@StNameC/C*", 400, 10, 0, 0, 0, 1000, null, false);
	Move("@StNameC/C*", 200, @50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/010300280fjr">
「そうだけど、邪魔しないで！
　私は今……あああ、頭がモジャモジャ――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010300290nki">
「恵那さんから、伝言があってきました。
　スーパーノヴァに代わる、新しいライブ会場があるって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/010300300fjr">
「え……恵那ちんから？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミリＰa_ショータイム_shout");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010300310mrp">
「ウソおっしゃい！
　アタシのツテでも探せないのに！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010300320nki">
「ええと、既存のものを使うんじゃなくて、急遽場所を用意するっていうか……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/010300330fjr">
「……どこに用意するの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
{	ClockPass(2303);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/010300340nko">
「はんだみょうじん」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/010300350fjr">
「……は？　今、なんて？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010300360nki">
「半田明神で、ライブを行います」

{	St("ML",700, @0,@0,"bu似鳥_背張る_shout");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010300370nki">
「でもって、それをミリＰさんに、ネット中継してもらいたいんです！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010300380mrp">
「ネット中継って……あなた、本気？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010300390nki">
「本気です」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/010300400fjr">
「あそこでライブなんて星ちゃんが許してくれるわけ――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010300410nki">
「彼女も納得してます」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/010300420fjr">
「でも、かなりうるさくなるんだから。
　流石に屋外じゃ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010300430nki">
「そっちにも、手を打ってあります」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010300440mrp">
「いえ、そもそもこれから人が集まるわけが――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_shout");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010300450nki">
「今、秋葉原には帰れないオタクが大量にたむろってます。
　イベントがあれば、絶対駆けつけるはずです！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_pinch");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010300460mrp">
「これからの中継なんて、間に合うと思う？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010300470nki">
「そう言って逃げ出すのは、素人です」

{	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010300480nki">
「ミリＰさん、あなたがそう言ってました」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/010300490fjr">
「…………」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010300500mrp">
「…………」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010300510nki">
「詳しい話は後回しだけど、今日はどうしても、半田明神に人をたくさん集めなきゃいけないんです！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("ML",700, @0,@0,"bu似鳥_背張る_shout");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010300520nki">
「お願いしますッ！　どうか――」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010300530nki">
「どうか、力を貸して下さい！」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/010300540nko">
「ちからをかして」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010300550mrp">
「…………ふぅ」

{	St("C",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010300560mrp">
「まあ、確かに半田明神で年越しライブできれば、絵的にも美味しいかもしれないけど――」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/010300570fjr">
「アタシはあんまり、乗り気になれないな……」

{	St("C",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/010300580fjr">
「アタシたちが育ったのはこのライブハウスだし。
　それに、今もこれだけ頑張って窓ガラスを――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2304);}

	SetVolumeEX("@xbgm*", 1000, 1, null);

	TextBoxDelete(150);
	DeleteAllSt(150,true);

	CreateMovieEX("ムービー１", 15000, Center, Middle, true, true, "dx/mvk100.ngs");
	Request("ムービー１", AddRender);
	Zoom("ムービー１", 0, 3000, 6000, null, true);

//◆ＳＥ：ドガッシャーン！

//◆演出指定：スーパーノヴァに車が突っ込む
//おがみ：β要演出箇所：優先度Ａ　画像きたら演出組む　曲とめる
//あきゅん「演出：少し修正しました、背景とか優先度とか」


//	CreateTextureEX("EF100", 2000, Center, Middle, "cg/bg/bg0502300スーパーノヴァ_ライブ会場_ガラス車イン.jpg");
	CreateTextureEX("EF200", 2000, Center, Middle, "cg/bg/bg0502300スーパーノヴァ_ライブ会場_ガラス車イン.jpg");
	CreateTextureEX("EF100", 2000, Center, Middle, "cg/img/img迫り来る村崎のトラック.jpg");
	CreateTextureEXadd("EF500", 2000, Center, Middle, "cg/ef/bu宮本G_変化_風呂_目光.png");
	Zoom("EF500", 0, 1500, 1500, null, true);
	Move("EF500", 0, @200, @150, null, true);
	Zoom("EF200", 0, 3000, 3000, null, true);
	SetBlur("EF200", true, 2, 500, 50, false);

	CreateSE("SE01","se戦闘_ガラス割れる02");
	CreateSE("SE02","se戦闘_ガラス割れる02");
	CreateSE("SE03","seメカ_車_トラック停車");
	CreateSE("SE04","seメカ_車_急ブレーキ");



	CreatePlainSP("揺用", 1005);
	Shake("揺用", 4000, 0, 0, 2, 5, 1000, Axl1, false);

	OnBG(10,"bg0502300スーパーノヴァ_ライブ会場_ガラス車イン");
	FadeBG(0,true);

	MusicStart("SE03",0,800,0,1500,null,false);
	Wait(2000);

	Fade("EF500", 1200, 1000, Axl1, false);
	MusicStart("SE04",1000,600,0,1500,null,false);
	Wait(1000);

	SetVolumeEX("SE03", 1000, 0, null);
	SetVolumeEX("SE04", 1000, 0, null);

//	Fade("EF300", 0, 1000, null, true);
//	DrawEffect("EF300", 500, "HardSplit", 500, 1000, null);
//	Fade("EF300", 500, 0, null, false);

	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,900,0,1500,null,false);

	Shake("EF100", 2000, 20, 10, 20, 10, 1000, null, false);
	Fade("EF100", 200, 1000, null, false);
	Zoom("EF100", 400, 3000, 3000, Axl3, false);
	FadeF4("EF100", 200, 1000, 3000, 0, 0, Dxl3, false);

	Wait(200);
	Delete("揺用");

	OnBG(10,"bg0101200秋葉原_裏通り_閉店");
	FadeBG(0,true);

	Fade("ムービー１", 0, 1000, null, true);

	Fade("EF500", 1000, 0, Axl1, false);
	Fade("EF200", 200, 1000, null, true);
	Fade("EF100", 200, 0, null, false);
	Shake("EF200", 1600, 5, 2, 0, 0, 1000, Dxl2, false);
	Zoom("EF200", 1800, 1000, 1000, Dxl2, false);
	FadeF4("EF200", 1500, 1000, 1000, 0, 0, Dxl1, true);


	Wait(2000);

//あきゅん「演出：いじくった箇所」
	PrintGO("上背景", 10000);
	OnBG(10,"bg0502300スーパーノヴァ_ライブ会場_ガラス車イン");
	FadeBG(0,true);
	Delete("EF500");
	Delete("EF*");
	FadeDelete("上背景", 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("C",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010300590mrp">
「…………へ？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@100,"bu鈴_もじゃ_cry");
	Shake("@StNameC/C*", 400, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 300, @0, @-100, Dxl1, false);
	FadeSt("C",300,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/010300600fjr">
「に、２回目――――――ッ！？？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SoundPlay("@xbgm03",0,450,true);


	DeleteAllSt(200,true);

	CreateSE("SE01","seメカ_車_ドア開ける");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	CreateSE("SE02","se擬音_ギャグ_ぴょこ");
	MusicStart("SE02",0,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("C",700, @200,@0,"buバリー_通常_happy");
	Move("@StNameC/C*", 300, @-200, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【バリー・ヘリントン】
<voice name="バリー・ヘリントン" class="バリー・ヘリントン" src="voice/23/010300610e03">
「ヘイ！　お嬢さん！」

{	DeleteAllSt(200,true);}
　修理しかけの窓ガラスを割って突っ込んだ軽トラ。

　助手席から、ガチムチパンツプロレスラーが飛び出す。

{	St("C",700, @0,@0,"buバリー_通常_normal");
	FadeSt("C",200,true);}
//【バリー・ヘリントン】
<voice name="バリー・ヘリントン" class="バリー・ヘリントン" src="voice/23/010300620e03">
「待った？　私！　バリー・ヘリントン！
　つい最近は、病院に隠れとったのだ！」

{
	CreateSE("SE02","se擬音_ギャグ_ぷに");
	St("C",700, @0,@0,"buバリー_通常_happy");

	MusicStart("SE02",0,700,0,1000,null,false);
	FadeSt("C",200,false);
	Zoom("@StNameC/C*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameC/C*", 100, 1000, 1000, Axl2, true);}
//【バリー・ヘリントン】
<voice name="バリー・ヘリントン" class="バリー・ヘリントン" src="voice/23/010300630e03">
「あなたの本格的プロレスリングに惚れた！
　ケコンしてくださーい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fade("ムービー１", 1000, 0, null, false);

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//窓準備
	CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵演色2", 1510, "#000000");
	CreateColorEX("絵窓/絵演色", 1510, "#990000");
	CreateTextureEXadd("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef046_炎a.jpg");
	Zoom("絵窓/絵演背景", 0, 1500, 1000, null, true);
	DrawEffect("絵窓/絵演背景", 360, "MiddleWave", 0, 300, null);

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 9100, center, middle, "cg/bu/bu鈴_シリアス_fear.png");
	Move("絵窓/絵演立絵", 0, @0, @200, null, true);
	CreateTextureEX("絵窓/絵演立絵2", 9100, center, middle, "cg/bu/bu鈴_もじゃ_angry.png");
	Move("絵窓/絵演立絵2", 0, @0, @200, null, true);
	Request("絵窓/絵演立絵2", Smoothing);

	CreateTextureEX("絵背景枠01", 10000, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 10000, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");

	CutInLine02("@絵背景枠*");

	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 200, @0, 80, Dxl2, false);
	Move("絵背景枠02", 200, @0, 464, Dxl2, false);
//動作
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	Move("絵窓/絵演立絵*", 200, @0, @-100, Dxl2, false);
	Fade("絵窓/絵演色", 200, 300, null, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/010300640fjr">
「ふ……ふ……ふ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se環境_雷01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("絵窓/絵演立絵*", 500, 15, 0, 0, 0, 1000, Dxl2, false);
	Zoom("絵窓/絵演立絵*", 200, 1500, 1500, Dxl2, false);
	Fade("絵窓/絵演色", 200, 1000, null, false);
	Fade("絵窓/絵演背景", 200, 1000, null, false);
	Fade("絵窓/絵演立絵", 200, 0, Axl2, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/010300650fjr">
「ふざけるなあああああああああッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("絵背景枠01", 100, @0, 262, null, false);
	Move("絵背景枠02", 100, @0, 262, null, false);
	Zoom("絵窓", 100, 1000, 0, null, true);
	Fade("絵背景枠*", 100, 0, null, true);
	Delete("絵窓*");
	CutInLineStop02();
	Delete("絵背景枠*");

	CreateSE("SE01","se戦闘_打撃音06");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",700, @0,@100,"buバリー_通常_pain");
	Shake("@StNameC/C*", 500, 25, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0162]
//【バリー・ヘリントン】
<voice name="バリー・ヘリントン" class="バリー・ヘリントン" src="voice/23/010300660e03">
「ふべしっ！！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu鈴_もじゃ_cry");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/010300670fjr">
「アタシが、アタシが、せっかく、せっかく、直して――
　直して――うううううっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Delete("ムービー１");

	TextBoxDelete(150);

	DeleteAllSt(150,true);

	CreateMovieEX("絵オムービー１", 5000, Center, Middle, true, true, "dx/mv_集中線白a1.ngs");
	Request("絵オムービー１", AddRender);
	Zoom("絵オムービー１", 0, 3250, 2500, null, true);

	CreateTextureEX("EF100", 2000, Center, Middle, "cg/ev/ev1830鈴ドロップキック.jpg");
	Zoom("EF100", 0, 2000, 2000, Dxl2, true);
	SetBlur("EF100", true, 2, 500, 50, false);

	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵オムービー１", 200, 1000, null, false);
	Fade("EF100", 200, 1000, null, false);
	Zoom("EF100", 200, 1000, 1000, Dxl2, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
<voice name="富士見鈴" class="富士見鈴" src="voice/23/010300680fjr">
//【富士見鈴】
「大気圏の外まで飛んでけロケットキ――――ック！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Zoom("EF100", 250, 20000, 20000, Axl2, false);
	FadeF4("EF100", 250, 1000, 3000, 0, 0, Axl3, false);

	Wait(150);
	Fade("EF100", 100, 0, null, true);
	Delete("EF100");
	Delete("絵オムービー１");
	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef034_精神汚染.jpg", false);

	CreateSE("SE01","se戦闘_打撃_ドロップキック01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("揺用", 2005);
	Shake("揺用", 500, 25, 15, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 500, 0, null, true);
	Delete("揺用");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0172]
//【バリー・ヘリントン】
<voice name="バリー・ヘリントン" class="バリー・ヘリントン" src="voice/23/010300690e03">
「ふぎゃああああああッ！！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_shock");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/010300700nko">
「すごい」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010300710nki">
「人って、飛ぶんだ……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/010300720fjr">
「次は――運転手ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	DeleteAllSt(200,true);
	St("C",700, @0,@80,"bu村崎_通常_pinch");
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @0, @-80, Dxl1, false);
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/23/010300730msi">
「すすすすす、すいませんでしたッ！！」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/23/010300740msi">
「あのですね、言われたとおりハイ、病院に、平次さんを送っていったらですね！」

{	St("C",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/23/010300750msi">
「そこであのバリーとか言う人に捕まって、脅されて、それで鈴ちゃんに会いたいって言うもんだから――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2305);}


	TextBoxDelete(150);

	DeleteAllSt(150,true);

	CreateMovieEX("絵オムービー１", 5000, Center, Middle, true, true, "dx/mv_集中線白a1.ngs");
	Request("絵オムービー１", AddRender);
	Zoom("絵オムービー１", 0, 3250, 2500, null, true);

	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("EF100", 2000, Center, Middle, "cg/ev/ev1830鈴ドロップキック.jpg");
	Zoom("EF100", 0, 2000, 2000, Dxl2, true);
	SetBlur("EF100", true, 2, 500, 50, false);

	Fade("絵オムービー１", 200, 1000, null, false);
	Fade("EF100", 200, 1000, null, false);
	Zoom("EF100", 200, 1000, 1000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0175]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/010300760fjr">
「聞く耳持たんわ２回目だぞロケットキ――――ック！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Zoom("EF100", 250, 10000, 10000, Axl2, false);
	FadeF4("EF100", 250, 1000, 3000, 0, 0, Axl3, false);

	Wait(150);
	Fade("EF100", 100, 0, null, true);
	Delete("EF100");
	Delete("絵オムービー１");
	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef034_精神汚染.jpg", false);

	CreateSE("SE01","se戦闘_打撃_ドロップキック01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("@xbgm*", 1000, 0, null);


	CreatePlainSP("揺用", 2005);
	Shake("揺用", 500, 25, 15, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 500, 0, null, true);
	Delete("揺用");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0176]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/23/010300770msi">
「ふぎゃああああああッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SoundPlay("@xbgm20",3000,700,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010300780nki">
「っていうか、彼女強いな。一方的だ……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/010300790nko">
「むざん」

{	DeleteAllSt(200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/010300800adi">
「ミリＰさ――ん！」

{	St("C",700, @100,@0,"buＡＤ_通常_smile");
	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/010300810adi">
「ゆるキャラバンの片付け、終わりましたー！」

{	St("C",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/010300820adi">
「なんだか、疲れちゃいましたけど……
　そろそろ撤収――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("C",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/010300830adi">
「あれ？　車、どうしたんですかコレ？」

{	St("C",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/010300840adi">
「それに？　プロレス？　あ！　バリーさんも！？
　なに？　なんなんですかコレ！？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010300850mrp">
「あなた、名前は？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/010300860adi">
「え？　えと、権堂ですけど……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_shout");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010300870mrp">
「ゴンちゃん！
　今すぐスタッフ集めて、半田明神に！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/010300880adi">
「半田明神？
　って、あの半田明神ですか！？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_shout");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010300890mrp">
「ニヤ生、枠は取れるわね？
　第一宇宙速度の年越しライブをネット中継するわ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/010300900adi">
「ネット中継！？　いきなり！？
　これからすぐですか！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010300910mrp">
「当然驚くわよね」

{	St("ML",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010300920mrp">
「たぶん、トラブル続きになると思う」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010300930mrp">
「もしかしたら、注目も集められずに終わるかも」

{	St("ML",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010300940mrp">
「でも――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_smile");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/010300950adi">
「ゆるキャラバン、リベンジのチャンスですね！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2306);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_ショータイム_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010300960mrp">
「その通り。やってくれるわね？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_angry");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/010300970adi">
「はいっ！　もちろんですッ！！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010300980mrp">
「鈴ちゃんも、それでＯＫ？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/010300990fjr">
「ううう……
　フウリちゃんとの約束を果たすには、それしか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	St("C",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/010301000fjr">
「仕方ない！
　よろしくお願いしますっ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010301010nki">
「ミリＰさん……
　ありがとうございます！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010301020mrp">
「おっと、安心するには早いわよ」

{	St("MR",700, @0,@0,"buミリＰa_ショータイム_normal");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010301030mrp">
「あなたにも、ゆるキャラバンのリベンジ、果たしてもらうんだから」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010301040nki">
「リベンジ……？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010301050mrp">
「年越しライブのテーマは――
　秋葉原、新たな夜明け！！」

{	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010301060mrp">
「ゆるキャラバンで発表できなかったマスコットキャラクターを、今度こそ発表してもらうんだから！！」

{	St("MR",700, @0,@0,"buミリＰa_ショータイム_happy");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010301070mrp">
「もちろんあなたは、もう一度描いて頂戴ね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010301080nki">
「オレが……もう一回、描く……？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/010301090nko">
「にとり、だいじょうぶ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010301100nki">
「…………」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/010301110nko">
「にとり……？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010301120mrp">
「あら？　怖じ気づいて、また逃げ出す？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010301130nki">
「……逃げ出したく、ないです」

{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010301140nki">
「でも、オレ……
　なにをやればいいのか、全然思い浮かばない……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010301150mrp">
「背伸びしなくてもいいわ」

{	St("MR",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010301160mrp">
「あなたが今までの人生で得たものを、目一杯、出して見せなさい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010301170nki">
「オレの人生なんて、大したもんじゃない――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010301180mrp">
「そうかもね」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/010301190nko">
「ひていしない……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010301200mrp">
「あなたの人生は、立派じゃない。すごくもない。
　きっと他人に誇れるようなものでもない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2307);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
{	St("MR",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010301210mrp">
「でも、その人生だって――いや、その人生だからこそ生み出せる何かが、絶対にあなたにもあるはずよ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010301220nki">
「オレだから生み出せるもの――？」

{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010301230nki">
「…………」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_happy");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010301240mrp">
「ほら！　男らしいところ見せてみなさいよ！
　あなたが頷かなくとも、企画は進めちゃうから！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/010301250fjr">
「あの……でもまだメンバーが……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010301260mrp">
「あ、そういえば、そうね……
　ニコちゃんは連絡ついてるんだっけ？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/010301270fjr">
「はい。電車が止まっちゃったみたいです」

{	St("C",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/010301280fjr">
「タクシーで来るって言ってて、たぶん間に合う……はず」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/010301290nko">
「フウリは？」

{	St("MR",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/010301300nko">
「フウリは、どこ？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/010301310nko">
「えなは、きっとここにいるって」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/010301320fjr">
「それが、ね。
　本当は来てなきゃ駄目な時間なんだけど――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320a]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010301330nki">
「まだ来てない？　連絡は――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/010301340fjr">
「彼女、機械音痴だから携帯なんて持ってないの」

{	St("MR",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("MR",200,true);}

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
*/

	St("C",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0321]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/010301350fjr">
「約束破るようなコじゃないんだけど
　なにか、あったのかな……？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコb_幽霊_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/010301360nko">
「なにか……あった？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
{	St("C",700, @0,@0,"buノーコb_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/010301370nko">
「あ……！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/010301380nko">
「あ！　あ！　あ！」

{	St("C",700, @0,@0,"buノーコb_通常_fear");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/010301390nko">
「もしかして……あのとき！」

{	St("C",700, @0,@0,"buノーコb_通常_rage");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/010301400nko">
「むかえにいかなきゃ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010301410nki">
「おい、ノーコ！？　急にどこに――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buノーコb_通常_rage");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/010301420nko">
「わたし、フウリをさがす！
　ぜったい、つれてくる！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/010301430nko">
「だから、にとりはマスコットを、おねがい！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/010301440nko">
「にとりなら――ぜったい、できるから！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010301450nki">
「ノーコ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE02","se動作_走る01_l");
	MusicStart("SE02",0,700,0,1000,null,true);


	TextBoxDelete(150);
	DeleteAllSt(200,true);

{	ClockPass(2308);}


//◆演出指示：ノーコ、走り去る

	SetVolumeEX("SE*", 1800, 0, Axl2);


	Wait(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010301460mrp">
「さーて、似鳥君！
　諦めがついたかしら？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010301470nki">
「…………」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_pinch");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010301480mrp">
「はぁ……まだ煮え切らない顔してるわね」

{	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/010301490mrp">
「もういい加減、覚悟決めちゃいなさい！
　――私たちも行きましょ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/010301500fjr">
「はい！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buＡＤ_通常_angry");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/010301510adi">
「はい！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buバリー_通常_happy");
	FadeSt("C",200,true);}
//【バリー・ヘリントン】
<voice name="バリー・ヘリントン" class="バリー・ヘリントン" src="voice/23/010301520e03">
「はい！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/23/010301530msi">
「はい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(150,true);


	CreateTextureEX("EF100", 2000, Center, Middle, "cg/ev/ev1830鈴ドロップキック.jpg");
	Zoom("EF100", 0, 2000, 2000, Dxl2, true);
	SetBlur("EF100", true, 2, 500, 50, false);

	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("EF100", 200, 1000, null, false);
	Zoom("EF100", 200, 1000, 1000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0365]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/010301540fjr">
「――って、なんでアンタたちも一緒なのよ大気圏突破式ドロップキ――――――ック！！！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(150,true);

	St("L",700, @0,@0,"buバリー_通常_pain");
	St("R",700, @0,@0,"bu村崎_通常_cry");

	Zoom("EF100", 300, 5000, 5000, Axl3, false);
	FadeF4("EF100", 300, 1000, 3000, 0, 0, Axl3, false);

	Wait(200);
	Fade("EF100", 100, 0, null, true);
	Delete("EF100");
	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef034_精神汚染.jpg", false);

	CreateSE("SE01","se戦闘_打撃_ドロップキック01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("@StNameL/L*", 1000, 10, 0, 0, 0, 1000, Dxl1, false);
	Shake("@StNameR/R*", 1000, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("L",200,false);
	FadeSt("R",200,true);

/*
//◆音声指示：同時
//【バリー・ヘリントン】
<voice name="バリー・ヘリントン" class="バリー・ヘリントン" src="voice/23/010301550e03">
「ぎゃあああああああああああ！！！！」

//◆音声指示：同時
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/23/010301560msi">
「ぎゃあああああああああああ！！！！」
*/


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//◆音声指示：同時
//【バリー・ヘリントン】
<voice name="バリー・ヘリントン" class="バリー・ヘリントン" src="voice/23/010301550">
「「ぎゃあああああああああああ！！！！」」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆ＳＥ：ぼかーん！　爆発

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/ef/ef_ep_悪魔爆発_z5.jpg");

	CreatePlainSP("絵演振動", 20);

	CreateSE("SE01","se戦闘_爆発02");
	MusicStart("SE01",0,700,0,1000,null,false);


	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef_ep_悪魔爆発_z5.jpg", false);

	Shake("絵背景100", 2000, 12, 5, 0, 0, 1000, Dxl1, false);
	Zoom("絵背景100", 2000, 1200, 1200, null, false);
	Fade("絵背景100", 100, 1000, null, true);
	Wait(800);

	SetVolumeEX("@xbgm*", 1000, 0, null);

	Request("絵演振動", Disused);
	Shake("絵演振動", 1000, 8, 30, 0, 0, 1000, Dxl2, false);
	Fade("絵背景100", 500, 0, null, true);

	Wait(500);

{	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0372]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010301570nki">
「あれ――！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//ふたりがドロップキックで吹き飛ばされた弾みで、スーパーノヴァに突っ込んだ車のドアが開く。
//　荷台に積まれているのは――
//あきゅん「素材：imgノーコントロール車の荷台から溢れる」

	Delete("絵演振動");
	CreateTextureEX("絵背景100", 120, Center, Middle, "cg/img/imgノーコントロール車の荷台から溢れる.jpg");
	Request("絵背景100", Smoothing);

	Zoom("絵背景100", 0, 1500, 1500, null, true);
	Move("絵背景100", 0, @0, @100, null, true);

	CreateSE("SE01","seメカ_車_ドア開ける");
	CreateSE("SE02","se動作_ドア蹴破る");
	CreateSE("SE03","se動作_同人探す_l");
	MusicStart("SE01",0,1500,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(800);
	MusicStart("SE03",0,2000,0,1000,null,false);

	Zoom("絵背景100", 1500, 1000, 1000, Dxl1, false);
	Move("絵背景100", 1000, @0, @-100, Dxl1, false);
	Fade("絵背景100", 300, 1000, null, true);

	Wait(500);

	SetVolumeEX("SE*", 1000, 0, null);

	Wait(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/010301580nki">
「『ＮＯ　ＣＯＮＴＲＯＬ』――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorEX("絵色100", 20000, "BLACK");
	Fade("絵色100", 1500, 1000, null, true);

	Wait(500);

	EndScene();
}
