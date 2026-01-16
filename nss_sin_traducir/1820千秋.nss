
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1820千秋.nss_MAIN
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
	$GameName = "1830千秋.nss";
	//$GameCircle=false;

}

scene 1820千秋.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1450">
////////////header////////////
//file name "1820千秋.nss"
//title "ブルマーは死の香り"
//previous "1800千秋.nss"

////////////footer////////////
//next "千秋" "1830千秋.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
//	FadeDelete("上背景", 0, null, true);

{	ClockPass(1820);}

	CreateSE("SE04","seガヤ_交通少_l");
	MusicStart("SE04",1000,400,0,1000,null,true);

//◆場所：秋葉原_裏通り
	OnBG(10,"bg0101111秋葉原_裏通り_通常");
	FadeBG(0,true);

	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400010kit">
（まだ４０分もあるし、余裕だな）

{	St("C",700, @0,@0,"bu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400020kit">
（早く帰ってもどうせ鈴姉にいじられるだけだし。
　のんびり行くか……）

{	St("C",700, @0,@0,"bu千秋_朗らか_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400030kit">
（けど……うう、なんでオレがこんな目に？）

{	St("C",700, @0,@0,"bu千秋_朗らか_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400040kit">
（あのエコバッグさえなければ、こんなことには……！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("SE*", 1000, 0, null);



	CreateColorEX("絵色黒", 25000, "#000000");
//嶋：回想なので、ちょっとだけ
	ClockDelete(1000,false);
	Fade("絵色黒", 1000, 1000, null, true);

	DeleteAllSt(0,true);



	CreateSE("SE01","se環境_学校チャイム");
	MusicStart("SE01",0,700,0,1000,null,false);
WaitKey(1000);

	CreateColorSPadd("絵色", 1000, "WHITE");
	Fade("絵色", 0, 200, null, true);



//◆演出指示：ブオン！　みたいな感じで回想開始



//◆場所：スパコン館_スタジオ
	OnBG(10,"bg1104100スパコン館_スタジオ_通常");
	FadeBG(0,true);
//※下倉注：教室と共用

//◆ＳＥ：キンコンカンコーン

	FadeDelete("絵色黒", 1000, null, true);

//	CreateSE("SE03","seガヤ_バカ会話_l.ogg");
//	MusicStart("SE03",1000,400,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400050kit">
「あ！　やべ！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200400060fje">
「どしたのバカチビ？」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400070kit">
「え？　いや、ちょっと忘れ物――」

//	St("C",700, @0,@0,"bu恵那_通常_pride");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200400080fje">
「皆まで言わなくて結構！」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400090kit">
「へ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
//	SetVolume("SE01", 1000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//	St("C",700, @0,@0,"bu恵那_ハルヒ_shout");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200400100fje">
「名探偵、富士見恵那が推理するわ！」

//	St("C",700, @0,@0,"bu恵那_ハルヒ_pride");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200400110fje">
「今日は終業式……いつもならロッカーに入れっぱなしのジャージも、持って帰らなきゃならないって寸法よ」

//	St("C",700, @0,@0,"bu恵那_ハルヒ_shout");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200400120fje">
「しかしなんということか！　いつもずぼらなバカチビは、もちろん予備の袋なんて持ってくるはずもなく……」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400130kit">
「はいはい、いつもの名推理名推理」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400140kit">
「でもそんなもん、推理できたところで解決には――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateSE("SE01","se動作_バッグ渡す");

	CreateTextureEX("絵演物袋", 900, Center, Middle, "cg/obj/objエコバッグ.png");
	Move("絵演物袋", 0, @-120, @0, null, true);

	Fade("絵演物袋", 300, 1000, null, false);
	Move("絵演物袋", 300, @120, @0, Dxl2, true);

	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵演物袋", 300, 4, 0, 0, 0, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200400150fje">
「これ、使う？」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400160kit">
「ん？　これは……」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200400170fje">
「エコバッグ。なんか誤発注で大量に余ったんだって」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400180kit">
「ってかこのロボットなに？　ダセーってか……」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200400190fje">
「ダサいよね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1821);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400200kit">
「うん。ダサい」

//	St("C",700, @0,@0,"bu恵那_通常_pride");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200400210fje">
「ソトカンダーとかいって、これから町内会のマスコットキャラになるんだって」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200400220fje">
「今、家中バッグだらけで大変なの。
　年が変わったら、半田明神で売るとか言ってたけど」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400230kit">
「へぇ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("絵演物袋", 300, @120, @0, Axl2, false);
	FadeDelete("絵演物袋", 300, null, true);

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400240kit">
「ってか、オレが使っていいのか？」

//	St("C",700, @0,@0,"bu恵那_通常_pride");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200400250fje">
「どーせアンタが忘れるだろうと思って、わざわざ用意してきてあげたんだから。感謝してよね！」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400260kit">
「あ……ああ」




//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200400270fje">
「ちなみにコレ、私の――」

{
//	DeleteSt("C", 200,true);
}

//【オタクＥ】
<voice name="オタクＥ" class="その他男声" src="voice/18/200400280e09">
「あ！　おいおい、ペアルックかよ！」

//【オタクＦ】
<voice name="オタクＦ" class="その他男声" src="voice/18/200400290e10">
「ヒューヒュー！　さすがは夫婦！　熱いねぇ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400300kit">
「な……」

//	St("C",700, @0,@0,"bu恵那_哀愁_worry");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200400310fje">
「なな……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]

//◆音声指示：同時
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400320kit">
「誰がペアルックだッ！！」
{WaitAddText();}<BR>

//◆音声指示：同時
//	St("C",700, @0,@0,"bu恵那_通常_shy");
//	FadeSt("C",200,true);}
//【富士見恵那】
//<voice name="富士見恵那" class="富士見恵那" src="voice/18/200400330fje">
//「誰がペアルックよッ！！」


</PRE>
	SetText();
	AddText(1,"「誰がペアルックだッ！！」","小碓千秋","18/200400320kit",false,false,1000);
	AddText(2,"「誰がペアルックよッ！！」","富士見恵那","18/200400330fje",true,true,1500);
	TypeBeginD();//―――――――――――――――――――――――――――


//	DeleteSt("C", 200,true);

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【オタクＥ】
<voice name="オタクＥ" class="その他男声" src="voice/18/200400340e09">
「うお！　やべ！」

//【オタクＦ】
<voice name="オタクＦ" class="その他男声" src="voice/18/200400350e10">
「逃げろッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆演出指示：時間経過

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
WaitKey(1000);
	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400360kit">
「ったく、誰が夫婦だ誰が」


//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400370kit">
「おかげで時間が――ゲッ！　やば！」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400380kit">
「部活に遅れる！　急がなきゃ！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	ClearFadeAll(500, true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Delete("@OnBG*");

	SetVolume("SE*", 1000, 0, null);


WaitKey(1000);


//◆演出指示：時間経過

{	ClockTime(1822);}

//◆場所：小碓家_自室
	OnBG(10,"bg1601100小碓家_自室_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0095]
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400390kit">
「ふぅ……疲れたああああ……」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400400kit">
「今年最後の練習なんだから、もう少し手抜いても……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400410kit">
「と、寝る前に！　洗濯物を――」


//バッグごそごそ
{
	CreateSE("SE01","se動作_バッグ漁る");
	MusicStart("SE01",0,700,0,1000,null,false);
}
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400420kit">
「……………………あれ？」


//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400430kit">
「カバンの中味……が」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//あきゅん「素材：imgエコバッグ_千秋1820」




	CreateTextureEX("絵オブ", 1000, Center, Middle, "cg/img/imgエコバッグ_千秋1820.jpg");
	Zoom("絵オブ", 0, 2000, 2000, null, true);
	SetBlur("絵オブ", true, 2, 300, 50, false);

	CreateMovieEX("絵オムービー１", 1000, Center, Middle, true, true, "dx/mv_集中線白a1.ngs");
	Zoom("絵オムービー１", 0, 3250, 2500, null, true);

	Fade("絵オムービー１", 200, 1000, null, false);
	Zoom("絵オブ", 500, 1000, 1000, Dxl3, false);
	Fade("絵オブ", 200, 1000, null, true);

	SoundPlay("@xbgm03",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0105]
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400440kit">
「ブルマー！？」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400450kit">
「なんで！？　なんでこんなことに――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Fade("絵オ*", 500, 0, null, true);
	Delete("絵オ*");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400460kit">
「……あ、そっか！」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400470kit">
「バッグが同じだから、部活に行くとき間違えたんだ」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400480kit">
「変なガラのバッグ使うから、こういうことに……」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400490kit">
「……ま、いいや。
　とにかく恵那んちに届けに行くか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);





//◆場所：小碓家_正面
	OnBG(10,"bg1601100小碓家_正面_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400500kit">
「家、向かいで良かったよホント……」

//◆ＳＥ：ピンポーン
{
	CreateSE("SE01","se環境_ドアチャイム");
	MusicStart("SE01",0,700,0,1000,null,false);
WaitKey(1000);
}

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400510kit">
「あの、恵那いますか？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：ドドドドド！　駆け足

//◆ＥＶ："ev1820千秋てめぇに娘とブルマはやらん.txt" 差分Ａ

//◆ＳＥ：バタン！　扉開ける


	CreateSE("SE01","se動作_走る04_l");
	MusicStart("SE01",1000,700,0,1000,null,false);

WaitKey(2000);

	SetVolume("SE01", 500, 0, null);

	CreateSE("SE02","se動作_ドア蹴破る");
	CreateSE("SE05","se擬音_ギャグ_リーゼント");
	CreateTextureEX("絵背景", 1000, Center, Middle, "cg/ev/ev1820千秋てめぇに娘とブルマはやらん.jpg");
	CreateTextureEX("絵演揺用", 1010, Center, Middle, "cg/ev/ev1820千秋てめぇに娘とブルマはやらん.jpg");

	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE05",0,800,0,1000,null,false);
	Fade("絵背景", 0, 1000, null, true);
	Zoom("絵演揺用", 600, 1200, 1200, null, false);
	FadeFR2("絵演揺用",0,700,400,0,0,20,Dxl3, true);
	FadeDelete("絵演揺用", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0125]
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/200400520fjh">
「御用だ御用だ御用だァッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//	St("C",700, @0,@0,"buユージローa_通常_normal");
//	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/200400530ujr">
「わうわうわうっ！！」


//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400540kit">
「え？」

//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/200400550fjh">
「千秋ッ！！　やっぱりてめぇかあっ！！」


//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400560kit">
「は？　ちょっと、なんのことで――！」

//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/200400570fjh">
「スットボケんじゃねぇぞこのヘンタイ野郎ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateTextureEX("絵背景L", 1000, Center, Middle, "cg/ev/l/ev1820千秋てめぇに娘とブルマはやらん_l.jpg");
	Zoom("絵背景L", 0, 500, 500, null, true);
	SetBlur("絵背景L", true, 3, 300, 50, false);
	Fade("絵背景L", 0, 1000, null, true);

	Move("絵背景L", 200, -370, -180, Dxl3, false);
	Zoom("絵背景L", 200, 1000, 1000, Dxl3, false);
	Fade("絵背景L", 200, 1000, null, true);
Delete("絵背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/200400580fjh">
「ウチの娘のブルマーを盗むなんて、盗むなんてッ、盗むなんてぇえぇえぇえぇえ！！！！」

//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/200400590fjh">
「死刑！」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400600kit">
「嘘ォ！！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200400610fje">
「待ってよ父さんッ！！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200400620fje">
「千秋がそんなワケないじゃない！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1823);}


//	TextBoxDelete(150);
	FadeDelete("絵背景*", 300, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//	St("MC",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("MC",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200400630fje">
「ね、千秋？」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400640kit">
「いや、あの、それは……」


//	St("C",700, @0,@0,"bu平次_ご用だ_angry");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/200400650fjh">
「ぬぅん！？」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400660kit">
「ひえっ！　し、してないです！
　そんなわけ、ないじゃないですか！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//	St("C",700, @0,@0,"bu恵那_通常_shout");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200400670fje">
「千秋がそんな根性あるわけないじゃない！」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400680kit">
「え？」

//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/200400690fjh">
「む……確かにそいつはそうなんだが……」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400700kit">
「えええええ……」

//	St("C",700, @0,@0,"bu恵那_通常_angry");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200400710fje">
「ほら！　いいから父さんは家の中に入って！」

//	St("C",700, @0,@0,"bu平次_通常_shock");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/200400720fjh">
「うおっ！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	DeleteSt("C", 200,true);

//バタン、ドア閉じ
	CreateSE("SE01","se動作_ドア閉める01");
	MusicStart("SE01",0,700,0,1000,null,false);

//	TextBoxDelete(150);
WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//	St("C",700, @0,@0,"bu恵那_通常_sigh");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200400730fje">
「ふぅ……
　ゴメンね千秋。父さんがまた変なこと言い出して」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400740kit">
「うん。ま、しょーがないよ。警官だしね」

//	St("C",700, @0,@0,"bu恵那_通常_angry");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200400750fje">
「でもさ、連絡網引っ張り出して、私のブルマーが盗まれたってクラス中に広めちゃったんだよ！　信じられる？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400760kit">
「え？　クラス中に……？」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200400770fje">
「そうなの！　犯人が出たら大バッシングだよねー」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400780kit">
「そ、そうなんだ。あは、あはははははは……」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200400790fje">
「あ、ところで千秋？　なんか用事？」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400800kit">
「あいや、なんでもない！　なんでもないよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//	St("C",700, @0,@0,"bu恵那_通常_angry");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200400810fje">
「え、でも――」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400820kit">
「寒いから、風邪引かないようにな！
　ブルマー、出てくるように祈ってるから！」

//	St("C",700, @0,@0,"bu恵那_通常_happy");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200400830fje">
「あ……うん。ありがと！」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400840kit">
「それじゃな！」


//	St("C",700, @0,@0,"bu恵那_通常_shy");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200400850fje">
「あの――大晦日、忘れないでね！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
//	DeleteSt("C", 200,true);


//◆ＳＥ：扉閉じる

	SetVolume("@xbgm*", 2000, 0, null);

	CreateSE("SE01","se動作_ドア閉める01");
	MusicStart("SE01",0,700,0,1000,null,false);
WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400860kit">
「………………」


//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400870kit">
「……ヤバイ」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400880kit">
「コレは、ヤバいぞ。どうしよう……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400890kit">
「もしオレが持ってるのバレたら――」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/200400900fjr">
「おやおや？」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400910kit">
「ひえっ！」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/200400920fjr">
「コレはコレは、千秋ちゃん」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400930kit">
「あ……鈴姉。驚かさないでよ」

{	St("C",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/200400940fjr">
「何か困り事？
　なんなら、鈴姉が手助けしてあげるよん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	CreateColorEX("絵黒幕", 25000, "BLACK");
	Fade("絵黒幕", 1000, 1000, null, true);
	DeleteAllSt(0,true);
	Delete("絵色");


WaitKey(1000);

//◆演出指示：回想終了

//◆時間：ジャンプ
{	ClockPass(1824);}


	CreateSE("SE04","seガヤ_交通少_l");
	MusicStart("SE04",1000,400,0,1000,null,true);

	CreateSE("SE01","seメカ_車_救急車サイレン_l");
	MusicStart("SE01",3000,700,0,1000,null,true);


	OnBG(10,"bg0101111秋葉原_裏通り_通常");
	FadeBG(0,true);

	FadeDelete("絵黒幕", 1000, null, true);
	WaitKey(1000);


//◆ＳＥ：救急車

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	St("C",700, @0,@0,"bu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400950kit">
（救急車……？）

{	SetFrequency("SE01", 500, 970, null);
	SetVolume("SE*", 3000, 0, null);}


{	St("C",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400960kit">
（いや、救って欲しいのはこっちだっての）

{	St("C",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400970kit">
（ったく、なんでオレがこんなこと……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1825);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	St("C",700, @0,@0,"bu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400980kit">
（あの鈴姉の言葉を信じちゃったのが、更に失敗で）

{	St("C",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200400990kit">
（結局、こんな格好でバイトまで――）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolume("SE04", 2000, 0, null);

	CreateSE("SE03","seガヤ_街中_l");
	MusicStart("SE03",1000,400,0,1000,null,true);


	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

WaitKey(500);
//◆場所：秋葉原_中央通り


	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0235]
{	St("C",700, @50,@0,"bu千秋_通常_think");
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200401000kit">
（こんな格好で――？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1826);}

//ぶつかる音
	CreateSE("SE01","se戦闘_打撃音02");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteSt("C", 200,true);
	St("MR",700, @60,@0,"bu似鳥_通常_pain");
	Move("@StNameMR/MR*", 300, @60, @0, DxlAuto, false);
	Shake("@StNameMR/MR*", 200, 0, 30, 0, 0, 500, Axl3, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0236]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/200401010nki">
「のぁっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);
//	St("MR",700, @0,@0,"bu千秋_通常_pain");
//	Move("@StNameMR/MR*", 300, @60, @0, DxlAuto, false);
//	FadeSt("MR",200,true);

	CreateSE("SE02","se人体_倒れる02");
	MusicStart("SE02",0,700,0,1000,null,false);
WaitKey(100);

//1810似鳥.nss[text0220]の千秋ルート側
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200401020kit">
「うぎゃっ！」


{	St("MR",700, @0,@0,"bu似鳥_ラッパー_rage");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/200401030nki">
「ふざけんな！　ちゃんと前見て――」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@100,"bu千秋_通常_sigh");
Move("@StNameML/ML*", 200, @0, @-100, Dxl1, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200401040kit">
「いたたたた――」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu似鳥_通常_happy");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/200401050nki">
「あ、歩いた方がいいと思いますよ」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_驚天_shock");
	Shake("@StNameML/ML*", 500, 0, 0, 0, 30, 500, Axl3, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200401060kit">
「ぅ……あ、あああああ」

{	CreateSE("SE01","se擬音_ギャグ_逃げる");
	MusicStart("SE01",0,700,0,1000,null,false);
Move("@StNameML/ML*", 200, @-600, @0, Dxl3, false);
	DeleteAllSt(200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200401070kit">
「いやああああああああ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

//ＳＥ：ピュー！

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


WaitKey(1000);




	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/bg0103111秋葉原_中央通り_通常.jpg");//bg0101111秋葉原_裏通り_通常.jpg");
	SetShade("絵背景",MEDIUM);
	Zoom("絵背景", 0, 2000, 2000, null, true);
	Fade("絵背景", 0, 1000, null, false);
{	St("C",700, @100,@0,"fu千秋_通常_normal");
Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
//	Fade("絵背景", 200, 1000, null, false);
	FadeSt("C",0,true);}

	DrawDelete("絵黒幕", 300, 100, null, "blind_01_00_1", true);

	SoundPlay("@xbgm11",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200401080kit">
（ヤバイ！　ヤバイヤバイヤバイぞ！）

{	St("C",700, @0,@0,"fu千秋_通常_fear");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200401090kit">
（オレ、女装したままじゃん！）

{	St("C",700, @0,@0,"fu千秋_通常_pinch");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200401100kit">
（こんな格好で街中歩いて！　オレは変態か！？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1827);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	St("C",700, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200401110kit">
（今すぐスーパーノヴァに戻って――）

{	St("C",700, @0,@0,"fu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200401120kit">
（いや……でも待てよ）

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200401130kit">
（この格好になるのにも、だいぶ時間かかったし）

{	St("C",700, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200401140kit">
（今戻ったら、７時まで間に合わない……！？）

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200401150kit">
（でもじゃあオレ、この格好のまま家に戻るのか？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
{	St("C",700, @0,@0,"fu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200401160kit">
（そりゃ、今ならまだ両親は帰ってきてないけど！）

{	St("C",700, @0,@0,"fu千秋_通常_sad");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200401170kit">
（でも恵那とか、恵那のオヤジさんに見つかったら――）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	FadeDelete("絵背景", 200, null, false);

//	TextBoxDelete(150);
	DeleteAllSt(200,true);


{	ClockPass(1828);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0273]
{	St("C",700, @0,@100,"buユージローa_通常_normal");
Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/200401180ujr">
「わうっ！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_驚天_shock");
	Shake("@StNameML/ML*", 200, 0, 30, 0, 0, 500, Axl3, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200401190kit">
「のわっ！　ユージロー！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200401200fje">
「ん……？　どうしたのユージロー」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_驚天_shy");
	Shake("@StNameML/ML*", 300, 0, 30, 0, 0, 1000, Dxl1, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200401210kit">
「ぎああゃっ！　恵那も！」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"buユージローa_通常_pride");
	Shake("@StNameC/C*", 200, 0, 20, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/200401220ujr">
「わうわう！！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @50,@0,"bu恵那_通常_angry");
//Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200401230fje">
「ちょ、やめなさい！
　急に吠えたり――」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"buユージローa_通常_pride");
	Shake("@StNameC/C*", 300, 0, 30, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/200401240ujr">
「わうわうわうわうッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
{	DeleteAllSt(200,false);}
{	St("ML",700, @50,@0,"bu千秋_通常_fear");
Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200401250kit">
「こ、こっちくんな！　あっち――」


//◆ＳＥ：がっしゃーん！
{
	CreateSE("SE01","se戦闘_破壊01");
	MusicStart("SE01",0,700,0,1000,null,false);
}

{Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	DeleteAllSt(200,true);
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);
}
{	CreateTextureSP("絵ゆれ", 100, Center, Middle, "cg/bg/bg0103111秋葉原_中央通り_通常.jpg");
	Shake("絵ゆれ", 500, 20, 5, 0, 0, 500, null, true);
}
{
	CreateSE("SE02","se人体_倒れる02");
	MusicStart("SE02",0,700,0,1000,null,false);
WaitKey(10);
}
{	Shake("絵ゆれ", 500, 4, 20, 0, 0, 500, null, true);
	Request("絵ゆれ",Disused);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200401260kit">
「うぎゃっ！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	CreateColorEX("絵黒幕", 25000, "BLACK");
	Fade("絵黒幕", 1000, 1000, null, true);
	Delete("@OnBG*");

//◆演出指定：画面真っ暗に

	FadeDelete("絵黒幕", 1000, null, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0295]

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200401270kit">
「いたたたた――」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200401280kit">
「また……かよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//◆場所：アキバスポット_正面_クリマン崩れ
	OnBG(10,"bg0401200アキバスポット_正面_クリマン崩れ");
	FadeBG(1000,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
{	St("C",700, @0,@100,"bu千秋_通常_normal");
Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200401290kit">
「ん……しょ」

{	St("C",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200401300kit">
「あれ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(1829);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0305]
{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu村崎_通常_cry");
	Shake("@StNameC/C*", 300, 20, 0, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200401310msi">
「ノオオオオオオオオ！！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200401320kit">
「あ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	DeleteAllSt(200,true);}

	CreateTextureEX("絵演背景", 100, -175, -516, "cg/bg/l/bg0401200アキバスポット_正面_クリマン崩れ_l.jpg");
	Move("絵演背景", 500, @0, -576, DxlAuto, false);
	Fade("絵演背景", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0308]
　辺りに散らばる、箱・箱・箱。

　その半分くらいが、足元の水たまりに水没していた。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	FadeDelete("絵演背景", 500, null, true);


{	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200401330kit">
「あ……あの、ごめんなさい」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu村崎_通常_cry");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200401340msi">
「ご、ごめんですむかあああッ！」

//	St("C",700, @0,@0,"bu村崎_通常_normal");
//	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200401350msi">
「今日中に、これを全部売りさばかないと！
　私はッ！　私はあッ！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200401360kit">
「ええと、その……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
{	DeleteAllSt(200,false);}
{	St("MR",700, @100,@0,"bu平次_通常_normal");
Move("@StNameMR/MR*", 200, @-100, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/200401370fjh">
「まあまあ村崎」

//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/200401380fjh">
「嬢ちゃんも困ってるようだし、ここはひとつ、この富士見平次の顔に免じて、許してやってぇ――」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_驚天_shock");
	Shake("@StNameML/ML*", 200, 0, 20, 0, 0, 500, Axl3, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200401390kit">
「恵那のオヤジさん！　なんで勢揃いなんだよッ！！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/200401400fjh">
「ん……？」

//	St("MR",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/200401410fjh">
「お嬢ちゃん、どこかでオレと会ったことが……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200401420kit">
「ないない！　ないです！」

{	CreateSE("SE01","se擬音_ギャグ_逃げる");
	MusicStart("SE01",0,700,0,1000,null,false);
Move("@StNameML/ML*", 200, @-600, @0, Dxl3, false);
	DeleteAllSt(200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200401430kit">
「さようなら――――ッ！！」

{	St("MR",700, @100,@0,"bu平次_通常_shock");
Move("@StNameMR/MR*", 200, @-100, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/200401440fjh">
「な……ちょっと、待てェいッ！！」

{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu千秋_頭突き_rage");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200401450kit">
「来ないで！　っていうかく、来んな――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	SetVolume("@xbgm*", 1000, 0, null);

	TextBoxDelete(150);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	//PrintGO("上背景", 25000);
	//DrawDelete("上背景", 500, 100, null, "blind_01_00_1", true);

WaitKey(1000);

	EndScene();
}
