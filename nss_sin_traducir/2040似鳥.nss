
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2040似鳥.nss_MAIN
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

	$LFlag_NowFile = "2040似鳥.nss";
	$GameName="2050カゴメ2.nss";
	//$GameName = "2050沙紅羅_似鳥_フウリ.nss";
}

scene 2040似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1320">
////////////header////////////
//file name "2040似鳥.nss"
//title "アリバイをつくれ！"
//previous "2030似鳥.nss"

////////////footer////////////
//next "似鳥" "2050沙紅羅_似鳥_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2040);}

//◆場所：ＵＰ＋_屋外セット
	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

	if($PreGameName=="2030似鳥.nss"){
	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);
	}else{
	FadeDelete("上背景", 0, null, true);
	}


	SoundPlay("@xbgm16",0,450,true);

	Wait(500);

	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300010nki">
「またここか……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/400300020mzh">
「うむ！　ノーコとの約束じゃ！」

{	St("ML",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/400300030mzh">
「フウリの助けをせねば！」

{	St("ML",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/400300040mzh">
「けっして、けばぶやらクリマンベアカステラが食べたいというわけではないぞ！　うむ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300050nki">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/400300060mzh">
「……なんじゃさっきから、仏頂面をしおって」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300070nki">
「オレ……ここで待ってていいか？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/400300080mzh">
「なぜじゃ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300090nki">
「なぜって、それは……」

{	DeleteAllSt(200,true);
	St("C",700, @0,@100,"buＡＤ_通常_shock");
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400300100adi">
「あああああ！　いたっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,true);

	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300110nki">
「あ……あんた、確か――」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buＡＤ_通常_smile");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400300120adi">
「あ、あの、ずっと探してたんです！　来て下さい！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300130nki">
「嫌だ！　番組には出ないって言っただろ！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400300140adi">
「そんなこと言わないで！　緊急事態なんです！」

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400300150adi">
「１／３０ソトカンダーが、壊れて――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,true);

	St("C",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300160nki">
「壊れた……！？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buＡＤ_通常_smile");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400300170adi">
「ミリＰさん！　デザイナー、見つかりました！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateSE("SE00","se動作_走る01_l");
	MusicStart("SE00",0,700,0,1000,null,false);

	Wait(1000);

	SetVolumeEX("SE*", 1000, 0, null);


	St("ML",700, @-50,@0,"buミリＰa_ショータイム_normal");
	Move("@StNameML/ML*", 200, @50, @0, Dxl2, false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400300180mrp">
「待ってました！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300190nki">
「え？　あなたは……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400300200mrp">
「初めまして！
　アタシはこの番組の臨時ディレクターのミリＰよん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300210nki">
「はい、一応テレビで見たことは……
　でもなんで、番組ディレクターを？　若原さんは？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400300220mrp">
「それがね、トラブルに継ぐトラブルってヤツで――」

{	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400300230mrp">
「ここはちょっと忙しいわね。裏に行きましょ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300240nki">
「え？　裏って――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,true);

	St("MR",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400300250adi">
「あ、そろそろＣＭ明け――
　ミリＰさん！　どこに？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400300260mrp">
「打ち合わせよ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400300270adi">
「でも実況は――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_ショータイム_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400300280mrp">
「あなたがやりなさい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400300290adi">
「え？　私！？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_ショータイム_happy");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400300300mrp">
「大丈夫！　あなたならできるわ！」

{	Move("@StNameML/ML*", 200, @-100, @0, Axl1, false);
	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400300310adi">
「そんな、急に言われても――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2041);}

	TextBoxDelete(150);

	DeleteAllSt(200,true);

//◆ＳＥ：ジングル
	CreateSE("SE01","se擬音_ゆるキャラジングル");
	MusicStart("SE01",0,700,0,1000,null,false);




	Wait(1000);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//◆音声指示：スピーカー越し
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400300320adi">
『え、あ、はい！　秋葉原からネットとテレビ同時中継でお送りしている全国ゆるキャラバン決定戦！』

//◆音声指示：スピーカー越し
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400300330adi">
『４８都道府県のゆるキャラバトルを勝ち抜いた精鋭たちが、今、秋葉原で激突します！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	SetVolumeEX("@xbgm16", 2000, 100, null);

	OnBG(10,"bg1203100ＵＰ＋_セット裏_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "blind_01_00_1", true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
{	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300340nki">
「急に任せちゃって、大丈夫か……？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400300350mrp">
「あなたは自分の心配をしなさい」

{	St("ML",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400300360mrp">
「今から、番組終了時点まで、秋葉原の新マスコットキャラクターを創るのよ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300370nki">
「新マスコットキャラクター……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

	St("ML",700, @0,@0,"buミリＰa_ショータイム_normal");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400300380mrp">
「そう！　制限時間は夜１０時まで。
　それまで、皆がアッと驚くような――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300390nki">
「ちょっと待った！」

{	St("MR",700, @0,@0,"bu似鳥_通常_angry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300400nki">
「なんだよその新マスコットって！
　ってか、ソトカンダーは？　アレでいいだろ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_pinch");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400300410mrp">
「それがね、模型が壊れちゃって……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

	St("MR",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300420nki">
「壊れたモンはしょうがねーだろ。
　ソトカンダーの絵を新しく描けば――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400300430mrp">
「ソトカンダーは、あくまで模型込みでのＧＯサインよ」

{	St("ML",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400300440mrp">
「模型が壊れちゃったなら、もっとまともなキャラにしなきゃ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300450nki">
「まともなって……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	St("MR",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300460nki">
「あのなあ、人が一生懸命デザインしたものが壊れたとか、新しいのを創りなおせとか簡単に言うけど……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400300470mrp">
「無茶ブリは承知よ。
　申し訳ないとも思う」

{	St("ML",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400300480mrp">
「でも、あなたにならきっと――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300490nki">
「できるかできないかじゃない。
　なんていうかな、こっちのモチベーションの問題？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400300500mrp">
「もちろんギャラは、それに見合うだけの額を出す！」

{	St("ML",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400300510mrp">
「だからお願い！
　もう一度、新しいキャラクターをつくって！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300520nki">
「…………」

{	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300530nki">
「なんでも、やるんだな？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2042);}



	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400300540mrp">
「アタシたちができることなら」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300550nki">
「もうカネは要らない。けど――」

{	St("MR",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300560nki">
「その代わり、アリバイをくれないか？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400300570mrp">
「…………」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300580nki">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

	St("ML",700, @0,@0,"buミリＰa_通常_pinch");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400300590mrp">
「なんか、ヤバそうな条件ね。
　まずいことでもしでかした？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300600nki">
「確かに疑われるような立場にいる。
　でも、オレは、なにもしてない」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400300610mrp">
「本当に、なにもしていないのね」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300620nki">
「ああ。絶対に、なにも、していない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

	St("ML",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400300630mrp">
「…………」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300640nki">
「…………」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400300650mrp">
「――わかったわ」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400300660mrp">
「あなたを、信じましょう」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300670nki">
「ありがとう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400300680mrp">
「残り時間、あと１時間半。
　見栄えのいいラフでいいわ」

{	St("ML",700, @0,@0,"buミリＰa_ショータイム_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400300690mrp">
「視聴者の心を鷲掴みにするような秋葉原マスコット――
　期待してるわよ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300700nki">
「…………」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400300710mrp">
「返事は？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300720nki">
「……やるだけやるけど、結果はわかんない」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400300730mrp">
「それでも、やるしかない――違う？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300740nki">
「…………ああ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_ショータイム_happy");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400300750mrp">
「じゃ、よろしくね！」

{	Move("@StNameML/ML*", 200, @-100, @0, Axl1, false);
	DeleteAllSt(200,true);}
　ミリＰはウインクして、似鳥の側を離れた。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2043);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	St("MR",700, @50,@50,"buミヅハ_通常_normal");
	Move("@StNameMR/MR*", 200, @-50, @-50, Dxl1, false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/400300760mzh">
「どうやら、おぬしの望みは叶いそうじゃのう」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300770nki">
「おまえが神様かどうかはわかんないけど、連れてこられたおかげで、アリバイができそうだ」

{	St("ML",700, @0,@0,"bu似鳥_通常_happy");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300780nki">
「ありがとな」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/400300790mzh">
「礼を言うのは、自分の仕事を果たしてからでよいぞ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300800nki">
「おう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	Wait(300);

	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300810nki">
（双六がああなった以上、すぐに借金取り立ては来ない）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300820nki">
（っていうか、双一が監視カメラで見ているなら、誰が悪いのかハッキリとわかってるはず……）

{	St("C",700, @0,@0,"bu似鳥_通常_angry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300830nki">
（今はとにかく、アリバイだ！）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300840nki">
（石にかじりついても、このデザインをあげなきゃ！）

{	St("C",700, @0,@0,"bu似鳥_ラッパー_rage");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300850nki">
（……やってやる！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 2000, 0, null);

	TextBoxDelete(150);

	DeleteAllSt(200,true);

//◆演出指示：時間経過

	CreateColorEX("絵黒幕", 25000, "BLACK");
	Fade("絵黒幕", 1000, 1000, null, true);

//◆時間：ジャンプ
{	ClockPass(2047);}
	Wait(2000);

//	CreateSE("SE01","seガヤ_ざわざわ_l");
//	MusicStart("SE01",2000,500,0,1000,null,true);

	SoundPlay("@xbgm12",0,450,true);


	FadeDelete("絵黒幕", 1000, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("C",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300860nki">
「はぁ……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300870nki">
「はぁぁ…………」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300880nki">
「はぁぁぁぁぁ………………」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/400300890mzh">
「なんじゃ、浮かない顔をして。
　全く筆が進んでおらんではないか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	St("MR",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/400300900mzh">
「早くも泣き言か？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300910nki">
「いやいや……そういうんじゃないんだけどさ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300920nki">
「なんかこう、イマイチ乗り気じゃないって言うか。
　ちょっと、気になることがあって」

{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300930nki">
「ノーコ、知ってるよな？
　ちょっと、アイツが気になって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/400300940mzh">
「なんぞあったのか？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300950nki">
「実は……その……なんていうのかな。
　別に、ノーコに助けられた、とかいうわけじゃないけど」

{	St("ML",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300960nki">
「なんだか良くわかんないんだけど、アザナエルとかいう銃があって――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/400300970mzh">
「おぬし、その名前をどこから？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400300980nki">
「え？　いや、普通に銃身に書いてあったし、それに双六からもそう聞いて……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_surprise");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/400300990mzh">
「すごろく……河原屋双一の、手下じゃな」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/400301000mzh">
「おぬし、カゴメアソビをしたのか？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400301010nki">
「知ってんのか。やっぱりおまえ、神様なのかもな」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/400301020mzh">
「して、撃ったのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400301030nki">
「……そんな根性、なかった」

{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400301040nki">
「だから、双六に銃を向けて、撃った」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400301050nki">
「弾は出なかった」

{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400301060nki">
「その代わり、白い羽根みたいなのが飛び出して……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_surprise");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/400301070mzh">
「双六に当たった！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2048);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400301080nki">
「いや、その前に、飛び出したノーコに……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/400301090mzh">
「ノーコ……？」

{	St("MR",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/400301100mzh">
「ふふ、ふは、ふはははははは……」

{	St("MR",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/400301110mzh">
「うむ、そうか、そうなのか！　ノーコに当たった――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400301120nki">
「なんで笑うんだよ！
　あいつ、そのせいで意識が途切れて、そのまま倒れ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/400301130mzh">
「なにも心配することはない」

{	St("MR",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/400301140mzh">
「アザナエルは、当たったものの願いを叶えるのじゃ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400301150nki">
「え……それって……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/400301160mzh">
「ノーコが今、心の奥底で最も真剣に思うその願いが、真実となる」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400301170nki">
「ノーコは大丈夫なんだな？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/400301180mzh">
「大丈夫どころか――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 500, 0, null);

	TextBoxDelete(150);

//◆ＳＥ：ジングル
	CreateSE("SE01","se擬音_ゆるキャラジングル");
	MusicStart("SE01",0,700,0,1000,null,false);


	DeleteAllSt(200,true);

	Wait(1000);


//マスク準備
	CreateTextureEX("絵マスク左枠", 7010, 300, 0, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク左", 6000, 0, 0, "cg/mask/ciスラッシュ_05_00.png", false);
	SetAlias("絵マスク左","絵マスク左");
	CreateTextureEX("絵マスク左/絵演背景", 1520, 0, Middle, "cg/ef/ef_カット汎用01.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク左/絵演立絵", 6530, center, middle, "cg/bu/buミリＰb_ショータイム_normal.png");
	Request("絵マスク左/絵演立絵", Smoothing);

//動作準備
	Move("絵マスク左", 0, -1024, 0, null, true);
	Move("絵マスク左枠", 0, -1024, 0, null, true);
	Move("絵マスク左/絵演立絵", 0, -512, 200, null, true);
	Fade("絵マスク左/絵演背景", 0, 1000, null, true);
	Fade("絵マスク左/絵演色", 0, 1000, null, true);
	Fade("絵マスク左枠", 0, 1000, null, true);

//イン動作
	Move("絵マスク左", 200, 0, 0, Dxl3, false);
	Move("絵マスク左枠", 200, 0, 0, Dxl3, false);
	Fade("絵マスク左/絵演立絵", 200, 1000, null, false);
	Move("絵マスク左/絵演立絵", 200, -100, middle, Dxl1, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400301190mrp">
『さあ、いよいよ盛り上がる全国ゆるキャラバン！』

//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400301200mrp">
『ここでがらりと視点を変え、一度秋葉原のゆるキャラデザイナー、似鳥君に話を聞いてみましょうッ！』

{
//アウト動作
	Move("絵マスク左", 200, -1024, 0, Axl3, false);
	Move("絵マスク左枠", 200, -1024, 0, Axl3, false);
	Move("絵マスク左/絵演立絵", 200, -512, 200, Axl1, false);
	Fade("絵マスク左/絵演立絵", 200, 0, null, true);
	St("C",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400301210nki">
「――は！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SoundPlay("@xbgm16_noint",0,350,true);

	CreateSE("SE01","seガヤ_ざわざわ_l");
	MusicStart("SE01",2000,500,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{	St("C",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400301220nki">
「なんだそれ！？　聞いてねぇぞッ！
　っていうかデザインなんて全然――」

{	DeleteAllSt(200,true);
	St("MR",700, @50,@0,"buＡＤ_通常_hard");
	Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400301230adi">
「はい、マイクです！　カメラはアレね！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400301240nki">
「そんな――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//マスク準備
	CreateTextureEX("絵マスク左枠", 7010, 300, 0, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク左", 6000, 0, 0, "cg/mask/ciスラッシュ_05_00.png", false);
	SetAlias("絵マスク左","絵マスク左");
	CreateTextureEX("絵マスク左/絵演背景", 1520, 0, Middle, "cg/ef/ef_カット汎用01.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク左/絵演立絵", 6530, center, middle, "cg/bu/buミリＰb_ショータイム_happy.png");
	Request("絵マスク左/絵演立絵", Smoothing);
	CreateTextureEX("絵マスク左/絵演立絵2", 6530, center, middle, "cg/bu/buミリＰb_ショータイム_pinch.png");
	Request("絵マスク左/絵演立絵2", Smoothing);

//動作準備
	Move("絵マスク左", 0, -1024, 0, null, true);
	Move("絵マスク左枠", 0, -1024, 0, null, true);
	Move("絵マスク左/絵演立絵", 0, -512, 200, null, true);
	Fade("絵マスク左/絵演背景", 0, 1000, null, true);
	Fade("絵マスク左/絵演色", 0, 1000, null, true);
	Fade("絵マスク左枠", 0, 1000, null, true);

//イン動作
	Move("絵マスク左", 200, 0, 0, Dxl3, false);
	Move("絵マスク左枠", 200, 0, 0, Dxl3, false);
	Fade("絵マスク左/絵演立絵", 200, 1000, null, false);
	Move("絵マスク左/絵演立絵", 200, -100, middle, Dxl1, true);


{	ClockPass(2049);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400301250mrp">
『似鳥君！
　どのくらい、進んでいるかしら？』

{	St("MR",700, @100,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//◆音声指示：スピーカー越し
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400301260nki">
『え……ええと、それが……』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	Move("絵マスク左", 0, -1024, 0, null, true);
//	Move("絵マスク左/絵演立絵2", 0, -512, 200, null, true);

//イン動作
//	Move("絵マスク左", 0, 0, 0, null, true);
	Move("絵マスク左/絵演立絵2", 0, -100, middle, null, true);
	Fade("絵マスク左/絵演立絵2", 200, 1000, null, false);
	Fade("絵マスク左/絵演立絵", 300, 0, Axl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290a]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400301270mrp">
『まさか全然、進んでないってことはないでしょうね』

//◆音声指示：スピーカー越し
{	St("MR",700, @100,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400301280nki">
『いや、頑張ってるんですけど……』

//◆音声指示：スピーカー越し
{	St("MR",700, @100,@0,"bu似鳥_通常_worry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400301290nki">
『進んでいるって言うか、いないって言うか。
　進みたいって言うか、一進一退……』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	Fade("絵マスク左/絵演立絵", 200, 1000, null, false);
	Fade("絵マスク左/絵演立絵2", 300, 0, Axl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400301300mrp">
『はいはい、わけのわかんないこと言ってないで！』

//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400301310mrp">
『途中でいいからアイディアを見せて頂戴！』

{	St("MR",700, @100,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//◆音声指示：スピーカー越し
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400301320nki">
『それは、その……ええと……ええと……』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("SE*", 500, 0, null);
	SetVolumeEX("@xbgm*", 500, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵マスク*");
	Delete("絵マスク左/*");
	DeleteAllSt(0,true);

	EndScene();
}
