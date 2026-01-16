
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2110ノーコ.nss_MAIN
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
	$GameName = "2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nss";
}

scene 2110ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="820">
////////////header////////////
//file name "2110ノーコ.nss"
//title "はしらなきゃ"
//previous "2100ノーコ.nss"

////////////footer////////////
//next "ノーコ" "2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2110);}


//◆場所：似鳥マンション_エントランス
	OnBG(10,"bg1301100似鳥マンション_エントランス_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);


//	SoundPlay("@xbgm02",0,450,true);
	CreateSE("SE10","seガヤ_交通少_l");
	MusicStart("SE10",2000,400,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/21/100100010msi">
「ここですねぇ」

{	St("MR",700, @0,@0,"buブーa_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/100100020buu">
「……ったく、やってらんねーぜ！」

{	St("MR",700, @0,@0,"buブーa_通常_hard");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/100100030buu">
「ドロップキックまで食らって、ガラス直してやったと思ったら！　なんでオレたちが、こんなこと」

{	St("C",700, @0,@0,"bu村崎_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/21/100100040msi">
「そんなこと言ったら、私が一番の被害者ですよ。
　せっかく借金から解放されたと思ったら、ドッキリ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/21/100100050msi">
「おかげで無償奉仕なんて……トホホホホホ」

{	St("ML",700, @0,@0,"buみそa_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/100100060mso">
「悔しいが、双六さんはつえぇ！
　頑丈なオレでも勝てない。即ち――」

{	Move("@StNameML/ML*", 200, @-40, @0, Dxl3, false);
	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buみそa_オラオラ_shout");
	Move("@StNameML/ML*", 200, @30, @0, Dxl3, false);
	Shake("@StNameML/ML*", 300, 0, 20, 0, 0, 500, Dxl3, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/100100070mso">
「侠だ！」

{	St("MR",700, @0,@0,"buブーa_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/100100080buu">
「いや、だからってなんでオレたちが仕事手伝う――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2111);}

	St("MR",700, @0,@0,"buブーa_通常_angry");
	Shake("@StNameMR/MR*", 200, 5, 0, 0, 0, 500, Axl3, false);

//◆ＳＥ：こける
	CreateSE("SE01","se人体_倒れる02");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeSt("MR",200,true);

	DeleteAllSt(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/100100090buu">
「ふおっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St2("C",700, @50,@0,"fuノーコa_通常_pain","cg2/",".png");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 200, @-50, @0, Dxl3, false);
	Shake("@StNameC/C*", 200, 0, 10, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);
	CreateSE("SE02","se人体_倒れる01");
	MusicStart("SE02",0,500,0,1000,null,false);
	DeleteAllSt(400,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100100nko">
「キャッ！！」

{	St("ML",700, @-30,@0,"buみそa_通常_hard");
	Move("@StNameML/ML*", 200, @30, @0, Dxl3, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/100100110mso">
「お……おい、大丈夫か？」

{	DeleteAllSt(200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100120nko">
「いた……いたい」

{	St("ML",700, @-30,@0,"buみそa_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/100100130mso">
「おお、手を貸して――」


{	DeleteAllSt(200,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100140nko">
「あは……いたい！　いたいよ！」

{	St2("C",700, @-50,@50,"fuノーコa_通常_smile","cg2/",".png");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 200, @50, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100150nko">
「わたし……いたい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameC/C*", 200, @50, @0, Axl1, false);
	DeleteAllSt(200,false);

//◆ＳＥ：走り出す
	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolume("SE01", 2500, 0, null);

	Wait(300);

	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/100100160mso">
「え？」

{	St("MR",700, @0,@0,"buブーa_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/100100170buu">
「笑いながら……走ってった？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE01", 500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("ML",700, @0,@0,"buみそa_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/100100180mso">
「なんだったんだ……？」

{	St("MR",700, @0,@0,"buブーa_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/100100190buu">
「さあ」

{	St("MR",700, @0,@0,"buブーa_通常_hard");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/100100200buu">
「ほら、それより仕事仕事」

{	St("ML",700, @0,@0,"buみそa_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/100100210mso">
「お……おう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	TextBoxDelete(150);
	DeleteAllSt(200,true);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆時間：ジャンプ
{	ClockPass(2113);}
	Wait(1000);

//◆場所：秋葉原_裏通り
//cono：オタクAB＆平次辺り背景要確認（fromあきゅん）
	OnBG(10,"bg0101200秋葉原_裏通り_閉店");
	FadeBG(0,true);

//	CreateSE("SE15","seガヤ_交通少_l");
//	MusicStart("SE15",2000,1000,0,1000,null,true);
	SetVolumeEX("SE10", 2000, 700, null);


	DrawDelete("絵黒幕", 300, 100, null, "blind_01_00_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/21/100100220e05">
「ねえ、やっぱりその……だめですかね？」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/21/100100230e06">
「えー、そのなんだっけ？
　のーこんとろーる？」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/21/100100240e06">
「見本がないと無理ぽ。
　トレス疑惑！　トレス疑惑！」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/21/100100250e05">
「……真面目にやってくれるとこちらとしても嬉しいと愚考するのだけれど」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/21/100100260e06">
「あーあー、わかったわかった！
　そんな暗い顔するなって」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/21/100100270e06">
「そこら辺の喫茶店で電源借りて――」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/21/100100280e06">
「まーでもＰＩＸＹとかにはいそうだよな……
　一応、ダベッターでも情報提供求めてみっか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2114);}

	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",1500,700,0,1000,null,false);

	Wait(1500);

	St2("C",700, @-80,@0,"fuノーコa_通常_sad","cg2/",".png");
	Move("@StNameC/C*", 200, @80, @0, Dxl3, false);

	SetVolume("SE01", 100, 0, null);

	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100290nko">
「どいて！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE02","se人体_倒れる02");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateSE("SE01","se人体_倒れる01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/21/100100300e05">
「うわっ！」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/21/100100310e06">
「うぎゃっ！」

{	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolume("SE01", 2500, 0, null);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100320nko">
「はやく……いかなきゃ！」

{	DeleteAllSt(200,true);}
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/21/100100330e05">
「――はぁ」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/21/100100340e05">
「どうして一言謝ったりできないのか、僕には理解ができない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE01", 100, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/21/100100350e05">
「いくら綺麗な外面でもその中味は――」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/21/100100360e05">
「ん？　おい、どした？」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/21/100100370e06">
「運命……」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/21/100100380e05">
「は？」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/21/100100390e06">
「運命だよ、運命！　ディスティニー！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2115);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/21/100100400e06">
「やっべ！　オレ、好きになっちゃった！」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/21/100100410e05">
「好きに？　って、どなたを？」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/21/100100420e06">
「決まってんだろ！　今のコだよ！」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/21/100100430e05">
「え？　本気？」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/21/100100440e06">
「本気と書いてマジと読む！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/21/100100450e05">
「つまり、いわゆるひとつの――一目惚れ？」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/21/100100460e06">
「…………ぽっ！」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/21/100100470e06">
「ほら、行くぞ！」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/21/100100480e05">
「ちょ……ちょっと待たれい……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(2116);}

//※下倉注：ここ、中央通りで 2010/11/15

	SetVolumeEX("SE15", 2000, 0, null);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆場所：秋葉原_裏通り
//	OnBG(10,"bg0101200秋葉原_裏通り_閉店");
//	FadeBG(0,true);
//おがみ：背景確認　ここ、中央通りで確定
	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "blind_01_00_1", true);

	CreateSE("SE10","seガヤ_街中_l");
	CreateSE("SE11","seガヤ_交通_l");
	MusicStart("SE10",2000,700,0,1000,null,true);
	MusicStart("SE11",2000,700,0,1000,null,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("C",700, @30,@0,"bu平次_通常_hard");
	Move("@StNameC/C*", 200, @-30, @0, Dxl3, false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/100100490fjh">
「おいおいおいおい……！」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/100100500fjh">
「せっかくミヅハを神社に届けて、アザナエルも手に入れたって言うのによ……」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/100100510fjh">
「肝心の星さんは、どこに行っちまったんだ？」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/100100520fjh">
「しかしミヅハ、すぐにでも飛び出しそうだったけど。
　……ちゃんと留守番してんだろうな？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_打撃音01");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",700, @0,@0,"bu平次_通常_pain");
	Shake("@StNameC/C*", 400, 5, 10, 0, 0, 500, Dxl3, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/100100530fjh">
「うおッ！」

{	St2("ML",700, @50,@0,"fuノーコa_通常_sad","cg2/",".png");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @-50, @0, Dxl3, false);
	Shake("@StNameML/ML*", 200, 0, 15, 0, 0, 500, Dxl3, false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100540nko">
「きゃっ！」

{	St2("ML",700, @0,@0,"fuノーコa_通常_pain","cg2/",".png");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100550nko">
「うう――」

{	St2("ML",700, @0,@0,"fuノーコa_通常_sad","cg2/",".png");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100560nko">
「いそがなきゃ」

{	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",100,700,0,1000,null,true);
	Move("@StNameML/ML*", 200, @50, @0, Axl3, false);
	DeleteAllSt(200,true);
	SetVolume("SE01", 2500, 300, null);
	St("C",700, @0,@0,"bu平次_通常_shock");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/100100570fjh">
「お嬢ちゃん！　ちゃんと前向いて歩くんだぞ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2117);}

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100580nko">
「からだがなれない――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100590nko">
「でも」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100600nko">
「いそがなきゃ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100610nko">
「いそいで」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100620nko">
「にとりの」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateColorEX("絵色100", 1500, "BLACK");
	Fade("絵色100", 5000, 1000, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100630nko">
「そばに」

{	SetVolume("SE01", 5000, 0, null);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100640nko">
「そばに、いたい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100650nko">
「にとり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100660nko">
「にとり、にとりにとりにとりにとりにとりにとり……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2118);}


	SetVolume("@SE*", 2000, 0, null);

//	SetVolumeEX("SE10", 2000, 0, null);
//	SetVolume("SE01", 1000, 700, null);
	TextBoxDelete(150);

	Fade("絵色100", 1000, 1000, null, true);

	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 500, 1000, null, true);

	Delete("絵色100");

//◆場所：ＵＰ＋_屋外セット_炎上
	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);

//◆ＳＥ：歓声
	CreateSE("SE01","seガヤ_歓声_l");
	MusicStart("SE01",200,700,0,1000,null,true);

	SoundPlay("@xbgm16_noint",0,450,true);


	Fade("絵色黒", 500, 0, null, true);

	Wait(1000);

	SetVolume("SE01", 3000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("MR",700, @0,@0,"buミリＰb_通常_shock");
	FadeSt("MR",200,true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/100100670mrp">
『うそ……こんな……呆気なく……』

//◆音声指示：スピーカー越し
{	St("MR",700, @0,@0,"buミリＰb_通常_pinch");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/100100680mrp">
『あ、呆気ないが……しかし、しかし！』

{
//	Move("@StNameMR/MR*", 200, @-50, @0, Axl3, false);
//	DeleteAllSt(200,true);
//	St("MR",700, @-50,@0,"buミリＰb_ショータイム_shout");
//	Move("@StNameMR/MR*", 200, @50, @0, Dxl3, false);
	St("MR",700, @0,@0,"buミリＰb_ショータイム_shout");
	FadeSt("MR",200,true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/100100690mrp">
『秋葉原チーム、優勝――――ッ！！』

{	St2("ML",700, @-20,@0,"fuノーコa_通常_sad","cg2/",".png");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @20, @0, null, false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100700nko">
「どいて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Shake("@StNameML/ML*", 500, 0, 5, 0, 0, 500, Dxl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100710nko">
「じゃま」

{	Move("@StNameML/ML*", 1000, @50, @0, Dxl1, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100720nko">
「じゃまだって」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100730nko">
「つたえるの」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100740nko">
「ほんとうのきもち」

{	DeleteAllSt(300,true);
	St2("ML",700, @100,@0,"fuノーコa_通常_pain","cg2/",".png");
	Move("@StNameML/ML*", 1000, @30, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100750nko">
「わたしは――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100760nko">
「しかくがある――」

{	DeleteAllSt(300,true);
	St2("C",700, @-30,@0,"fuノーコa_通常_sad","cg2/",".png");
	Move("@StNameC/C*", 2000, @30, @0, Dxl3, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100770nko">
「にとりに――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100780nko">
「にとりに――！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2119);}

	SetVolumeEX("@xbgm*", 1000, 0, null);


	TextBoxDelete(150);

	Move("@StNameC/C*", 500, @30, @0, Dxl3, false);
	DeleteAllSt(300,true);

//◆演出指定：フォン、マイクがハウり、辺りが暗闇に音いる

/*
//※下倉注：この台詞、他ルートとの整合性のためカット 2010/10/25

{	St("C",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/100100790mrp">
「な……」

*/

	DeleteAllSt(200,true);

	Wait(1000);

	SetVolumeEX("@xbgm*", 1500, 0, null);


//◆演出指定：フォン、マイクがハウり、辺りが暗闇に音いる
	CreateSE("SE00","se環境_ハウリング");
	MusicStart("SE00",0,700,0,1000,null,false);

	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/bg1202200ＵＰ＋_セット上_暗闇.jpg");
	Fade("絵背景", 2000, 1000, null, true);

	OnBG(10,"bg1202200ＵＰ＋_セット上_暗闇");
	FadeBG(0,true);

	Delete("絵背景");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	St("MR",700, @0,@0,"buミリＰb_ショータイム_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/100100800mrp">
「ちょっと照明！　何やって――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteAllSt(0,true);

	OnBG(10,"bg1203200ＵＰ＋_セット裏_暗闇");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);


	TextBoxDelete(150);

	DeleteAllSt(200,true);

	Wait(500);

	CreateSE("SE01","se戦闘_カッター_刃出す01普通a");
	CreateSE("SE02","se擬音_光迸る");
	MusicStart("SE01",0,1500,0,250,null,false);
	MusicStart("SE02",0,700,0,900,null,false);


//◆演出指定：暗闇から浮き出るように
	CreateTextureSP("絵背景100", 5000, Center, Middle, "cg/bg/bg1203200ＵＰ＋_セット裏_暗闇.jpg");
	CreateColorSP("絵色100", 500, "BLACK");

	St2("C",700, @0,@0,"fuノーコa_通常_normal","cg2/",".png");
	FadeSt("C",0,true);

	CreatePlainSP("浮出用", 1500);
	Request("浮出用", AddRender);
	Delete("絵色100");
	CreateTextureSP("絵背景200", 800, Center, Middle, "cg/bg/bg1203200ＵＰ＋_セット裏_暗闇.jpg");
	DrawTransition("絵背景100", 1500, 1000, 0, 100, null, "cg/data/random_01_00_0.png", false);
	Fade("絵背景100", 1500, 0, null, true);
	Fade("絵背景200", 500, 0, null, false);

	SetVolumeEX("SE*", 2000, 0, null);

	Fade("浮出用", 500, 0, null, true);
	Delete("浮出用");
	Delete("絵背景*");

	Wait(800);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100810nko">
「にとり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100820nko">
「にとりは、どこ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	EndScene();
}
