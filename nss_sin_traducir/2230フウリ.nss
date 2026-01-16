
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2230フウリ.nss_MAIN
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

	//★徒歩：フラグ修正
	if($myRoute=="トゥルー"){
		$GameName="2233沙紅羅_似鳥_ノーコ_フウリ.nss";
	}else{
		$GameName="c2233沙紅羅_似鳥_フウリ.nss";
	}
}

scene 2230フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="620">
////////////header////////////
//file name "2230フウリ.nss"
//title "諦めません！"
//previous "2220恵那_フウリ.nss"

////////////footer////////////
//next "フウリ"（"flkagome3" = false） "c2233沙紅羅_似鳥_フウリ.nss"
//next "フウリ" "2233沙紅羅_似鳥_ノーコ_フウリ.nss"

////////////body////////////

	SoundPlay("@xbgm26",0,450,true);

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2230);}

//◆場所：秋葉原_裏通り
	OnBG(10,"bg0101200秋葉原_裏通り_閉店");
	FadeBG(0,true);

//	SoundPlay("@xbgm24",500,450,true);

	if($LFlag_NowFile == "2220恵那_フウリ.nss"){
	DrawDelete("上背景", 300, 100, null, "slide_01_01_1", true);
	}else{
	FadeDelete("上背景", 0, null, true);
	}



{	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200010wfu">
「きゅぅ……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200020wfu">
（太四郎さん……引き離せたみたいです）

{	St("C",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200030wfu">
（でも……これから、どうしたらいいんでしょう）

{	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200040wfu">
（本当は……私だってわかっていたのです）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200050wfu">
（貫太さんは、私との大切なあの約束は、破らないって）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200060wfu">
（でも、その約束が守られなかったと言うことは、きっと、何かの理由があるんだって）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200070wfu">
（もしかしたら……死んじゃったのかもしれないって）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200080wfu">
（でも、私はそのことから逃げたくて）

{	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200090wfu">
（死亡の連絡が来ても、無視して）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200100wfu">
（ずっと、ずっと、夢ばっかり見ていて、だから、ノーコちゃんにもわがままを押しつけて――）

//◆音声指示：テレビ越し
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/300200110nki">
『ノーコ……ノーコ……！』

{	SetVolume("@xbgm*", 500, 0, null);
	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200120wfu">
「え？　ノーコちゃん？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：テレビに映る
	CreatePlainSP("絵板写", 5000);

	DeleteAllSt(0,true);
	CreateTextureEX("絵背景100", 130, Center, Middle, "cg/bg/bg0303100あにのあな_屋上_通常.jpg");
	CreateTextureEXover("絵背景200", 5010, Center, Middle, "cg/ef/efテレビ画面用効果フィルター.jpg");

	Fade("絵背景100", 300, 1000, null, false);
	Fade("絵背景200", 300, 400, null, false);

	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",0,true);

	Wait(100);

	FadeDelete("絵板写", 500, null, true);
	Delete("絵板写");

	WaitKey(500);

{	St("C",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//◆音声指示：テレビ越し
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/300200130nki">
『聞こえるか……？　ノーコ！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreatePlainSP("絵板写", 5000);
	CreateTextureSP("絵演銃", 1010, Center, Middle, "cg/img/imgアザナエルa.png");
	SetShade("絵演銃", MEDIUM);
	Zoom("絵演銃", 0, 700, 700, null, true);

	CreateClipTexture("絵演銃背景", 1009, Center, Middle, 815, 1008, 256, 144, "cg/bg/l/bg0303100あにのあな_屋上_通常_l.jpg");
	SetAlias("絵演銃背景","絵演銃背景");
	Zoom("絵演銃背景", 0, 4000, 4000, null, true);
	SetShade("絵演銃背景", SEMIHEAVY);

	FadeDelete("絵板写", 500, null, true);


//◆音声指示：テレビ越し
//【ノーコ】
//<voice name="ノーコ" class="ノーコ" src="voice/22/300200160nko">
//『に……にとり……』

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200170wfu">
（鉄砲がある……）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200180wfu">
（アザナエル……願いを叶える、銃）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200190wfu">
（ノーコちゃんは、あれで、現実の存在になった）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200200wfu">
（もしアレを……私が撃ったら？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreatePlainSP("絵板写", 5000);

	Delete("絵演*");
	FadeDelete("win01/絵*", 300, null, true);
	DeleteAllSt(200,false);
	FadeDelete("絵背景*", 300, null, true);

	Delete("win01");
	FadeDelete("絵板写", 500, null, true);
	Delete("絵板写");

{	St("C",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200210wfu">
「私も……夢が叶う……！」

{	St("C",700, @0,@0,"buフウリ_前のめり_shout");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200220wfu">
「貫太さんとの約束、守れるんだ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);


	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

{	ClockPass(2231);}

//◆場所：あにのあな_正面
	OnBG(10,"bg0301111あにのあな_正面_通常");

	CreateTextureEX("絵背景100", 100, Center, -1150, "cg/bg/bg0301111あにのあな_正面_通常.jpg");
	Fade("絵背景100", 0, 0, null, true);
	SetBlur("絵背景100", true, 3, 500, 50, false);


	Move("@OnBG*", 500, @0, -900, null, false);
	FadeBG(0,true);

	SoundPlay("@xbgm03",0,450,true);

	Move("@OnBG*", 500, @0, -1150, Dxl1, false);
	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);

{	Shake("絵背景100", 500, 3, 1, 0, 0, 500, null, false);
	Fade("絵背景100", 0, 1000, null, true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/22/300200230e07">
「うおおおおおお！！」

{	Shake("絵背景100", 500, -3, 1, 0, 0, 500, null, false);
	Fade("絵背景100", 0, 1000, null, true);}
//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/22/300200240e08">
「それはオレの本だあああ！！」

{	Shake("絵背景100", 500, 1, 4, 0, 0, 500, null, false);
	Fade("絵背景100", 0, 1000, null, true);}
//【オタクＥ】
<voice name="オタクＥ" class="その他男声" src="voice/22/300200250e09">
「ＵＲＹＹＹＹＹＹ！！」

{	Shake("絵背景100", 500, -3, 7, 0, 0, 500, null, false);
	Fade("絵背景100", 0, 1000, null, true);}
//【オタクＦ】
<voice name="オタクＦ" class="その他男声" src="voice/22/300200260e10">
「殺してでも奪い取る！！」

{	St("C",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200270wfu">
（ひとがたくさん……！）

{	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200280wfu">
（しかし、負けるわけにはいきません！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("@StNameC/C*", 200, @-300, @0, Dxl1, false);
	DeleteSt("C",200,true);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵背景*");

//◆場所：あにのあな_正面
	OnBG(10,"bg0302111あにのあな_店内_通常");
	FadeBG(0,true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg0302111あにのあな_店内_通常.jpg");

	CreateSE("SE01","seガヤ_客暴動_l");
	MusicStart("SE01",300,500,0,1000,null,true);

	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);

	St("C",700, @0,@+100,"buフウリ_前のめり_hard");
	Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200290wfu">
「えいや！」

//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/22/300200300e07">
「じゃま！」

{	Fade("フラッシュ白",0,1000,null,true);
	St("C",700, @0,@0,"buフウリ_胸手_think");

	FadeSt("C",0,true);
	CreateSE("SE02","se擬音_ギャグ_頭打つ");
	MusicStart("SE02",0,700,0,1000,null,false);

	Shake("絵背景100", 300, 3, 1, 0, 0, 500, null, false);
	Shake("@StNameC/C*", 300, 5, 2, 0, 0, 1000, null, false);
	Fade("フラッシュ白",300,0,null,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200310wfu">
「はう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200320wfu">
「ま、まだまだです！」

{	Move("@StNameC/C*", 200, @0, @+100, Dxl1, false);
	DeleteSt("C",200,true);
	St("MR",700, @+100,@0,"buフウリ_前のめり_hard");
	Move("@StNameMR/MR*", 200, @-150, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200330wfu">
「やあ！」

//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/22/300200340e08">
「どいて！」

{	CreateSE("SE02","se戦闘_打撃音01");
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("フラッシュ白",0,1000,null,true);
	St("MR",700, @-50,@0,"buフウリ_通常_fear");
	FadeSt("MR",0,true);
	Shake("絵背景100", 300, 3, 1, 0, 0, 500, null, false);
	Shake("@StNameMR/MR*", 300, 5, 2, 0, 0, 1000, null, false);
	Move("@StNameMR/MR*", 200, @+50, @0, Dxl1, false);
	Fade("フラッシュ白",300,0,null,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200350wfu">
「あへっ！」

{	St("MR",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200360wfu">
「う……うう……まだまだ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("@StNameMR/MR*", 200, @+200, @0, Dxl1, false);
	DeleteSt("MR",200,true);

{	St("ML",700, @-200,@0,"buフウリ_通常_angry");
	Move("@StNameML/ML*", 200, @+250, @0, Dxl1, false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200370wfu">
「と、とう！」

//【オタクＥ】
<voice name="オタクＥ" class="その他男声" src="voice/22/300200380e09">
「ふん！」

{	CreateSE("SE02","se擬音_ギャグ_落下");
	Fade("フラッシュ白",0,1000,null,true);
	St("ML",700, @+50,@0,"buフウリ_通常_fear");
	FadeSt("ML",0,true);
	Shake("絵背景100", 300, 3, 1, 0, 0, 500, null, false);
	Move("@StNameML/ML*", 300, @-800, @0, null, false);
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200390wfu">
「あーれー」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("SE*", 500, 0, null);
	SetVolume("@xbgm*", 2000, 0, null);

//※下倉注：一度あにのあな前にフウリを外に出して下さい 2010/11/22
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteAllSt(0,true);

	CreateTextureSP("絵背景50", 100, Center, InBottom, "cg/bg/bg0301111あにのあな_正面_通常.jpg");

	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);


	St("C",700, @0,@+50,"buフウリ_通常_fear");
	Shake("@StNameC/C*", 300, 5, 0, 0, 0, 1000, null, false);
	Move("@StNameC/C*", 300, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200400wfu">
「きゅぅ…………だ、だめです」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200410wfu">
「このままでは……階段にたどりつくことさえ……」

{	DeleteAllSt(200,true);
	ClockPass(2232);}
//◆演出指定：拡声器
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/22/300200420fjr">
『もじゃもじゃ――――――――――ッ！！』

{	St("C",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200430wfu">
「え？　今の音、なんですか！？」

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200440wfu">
「もじゃもじゃ……もじゃもじゃ……
　も、も、もしかして！」

{	St("C",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200450wfu">
「もじゃもじゃになれという、神様のお告げ！？」

{	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200460wfu">
「そうです！　もじゃもじゃといえば……」

{	St("C",700, @0,@0,"buフウリ_前のめり_shout");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200470wfu">
「どろんぱッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：平次になります

	CreateSE("SE01","se動物_タヌキ_化ける01");

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("フラッシュ白",300,1000,null,true);
	DeleteAllSt(0,true);
	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");


	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteAllSt(0,true);

	Delete("絵背景50");

	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);




//◆場所：あにのあな_店内
	SoundPlay("@xbgm03",0,450,true);

	CreatePlainSP("絵演振用", 105);
	$振動ランダム値=Random(10)-5;
	Shake("絵演振用", 300, $振動ランダム値, 2, 0, 0, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/22/300200480e07">
「うおおおおおお！！」

{	$振動ランダム値=Random(10)-5;
	Shake("絵演振用", 300, $振動ランダム値, 2, 0, 0, 500, null, false);}
//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/22/300200490e08">
「オレたちのコミマは！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	$振動ランダム値=Random(10)-5;
	Shake("絵演振用", 300, $振動ランダム値, 2, 0, 0, 500, null, false);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【オタクＥ】
<voice name="オタクＥ" class="その他男声" src="voice/22/300200500e09">
「まだまだ！」

{	$振動ランダム値=Random(10)-5;
	Shake("絵演振用", 300, $振動ランダム値, 2, 0, 0, 500, null, false);}
//【オタクＦ】
<voice name="オタクＦ" class="その他男声" src="voice/22/300200510e10">
「おわらないいいいいいいッ！！」

{	St("C",700, @-100,@0,"bu平次_通常_shout");
	Move("@StNameC/C*", 200, @+100, @0, Dxl1, false);
	FadeSt("C",200,true);
	Delete("絵演振用");}
//◆音声指示：大声
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/22/300200520wff">
「どいたどいたぁッ！！」

{	St("C",700, @0,@0,"bu平次_通常_normal");
	St("C",700, @0,@0,"bu平次_御用だ_angry");
	FadeSt("C",200,true);
	FadeStPro("C", 200, 4600);}
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/22/300200530wff">
「邪魔する奴は、公務執行妨害で逮捕です――逮捕でぇ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	AgainSt("C",700, @0,@0,"bu平次_御用だ_angry");
	DeleteAllSt(200,true);

	SetVolume("@xbgm*", 500, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【オタクＦ】
<voice name="オタクＦ" class="その他男声" src="voice/22/300200540e10">
「え？　警察……？」

{	St("C",700, @0,@0,"bu平次_通常_shout");
	FadeSt("C",200,true);}
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/22/300200550wff">
「オラオラ！　文句のある奴はかかって来やがれ！」

//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/22/300200560wff">
「職質でナイフは没収だぞォ！！」

{	DeleteAllSt(200,true);}
//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/22/300200570e07">
「………………」

//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/22/300200580e08">
「………………」

//【オタクＥ】
<voice name="オタクＥ" class="その他男声" src="voice/22/300200590e09">
「………………」

//【オタクＦ】
<voice name="オタクＦ" class="その他男声" src="voice/22/300200600e10">
「………………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);


	CreateColorSP("絵黒幕１", 1600, "BLACK");
	DrawTransition("絵黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200610wfu">
（ふっふっふ……成功です！）

{	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/300200620wfu">
（あとは、屋上に上って――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
