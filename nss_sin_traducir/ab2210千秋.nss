
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ab2210千秋.nss_MAIN
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
	$GameName = "ab2220千秋_恵那.nss";
//	$GameCircle=false;

//※↑ab2051ノーコ.nssの飛び方を参考に設定（mngw 10/14）

}

scene ab2210千秋.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1230">
////////////header////////////
//file name "ab2210千秋.nss"
//title "怪奇！　ガラスを割る女"
//previous "ab2200千秋.nss"

////////////footer////////////
//next "千秋" "ab2220千秋_恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

	Wait(16);

	SoundPlay("@xbgm05",0,450,true);

{	ClockPass(2210);}

//※下倉注；ここ本来は bg0501700スーパーノヴァ_正面_ガラス補修タイヤ痕 ですが時間経過ありますので補修跡為しに変更

//◆場所：スーパーノヴァ_正面_ガラス割れ
	OnBG(10,"bg0501500スーパーノヴァ_正面_ガラス割れタイヤ痕");
	FadeBG(0,true);


	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",2000,700,0,1000,null,true);

	if($PreGameName=="ab2200千秋.nss"){
	Wait(2000);
	DrawDelete("上背景", 500, 100, null, "blind_01_00_1", true);
	}else{
	FadeDelete("上背景", 0, null, true);
	}
	WaitKey(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("MR",700, @0,@0,"bu千秋_通常_shout");
	Move("@StNameMR/MR*", 200, @-60, @0, DxlAuto, false);
	FadeSt("MR",200,true);
	SetVolumeEX("SE01", 100, 0, null);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300010kit">
「鈴姉――ッ！！」


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300020kit">
「ちょっと聞きたいことが！
　ここに今、貫太さんが――」


{
	SetVolumeEX("@xbgm*", 1000, 0, null);
	DeleteAllSt(200,true);
//	Shake("@OnBG*", 1500, 10, 10, 0, 0, 500, null, false);
	BGPlainShake(50, 1500, 10, 8, 0, 0, 1000, Dxl1, false);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300030fjr">
「もじゃあああああ――――――――ッ！！」

//◆ＳＥ：パリーン！！
{	CreateSE("SE01","se戦闘_ガラス割れる02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

	Shake("@OnBG*", 300, 10, 10, 0, 0, 500, null, false);
	FadeDelete("絵色白", 500, null, true);
	WaitKey(1000);
}

{	SoundPlay("@xbgm20_noeff",0,450,true);
	St("ML",700, @-60,@0,"bu鈴_もじゃ_angry");
	Move("@StNameML/ML*", 1000, @60, @0, DxlAuto, false);
	FadeSt("ML",1000,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300040fjr">
「あは……あはは……」


{	Shake("@StNameML/ML*", 300, 5, 5, 0, 0, 500, null, false);
	}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300050fjr">
「みんな、割れちゃえばいいのよ……
　あはははははははは……は、は、はッはッはッ！」

{	St("ML",700, @0,@0,"bu鈴_もじゃ_angry");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300060fjr">
「もじゃあああああ――――――――ッ！！」


//◆ＳＥ：パリーン！！
{	CreateSE("SE01","se戦闘_ガラス割れる02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

	DeleteAllSt(0,false);

	Shake("@OnBG*", 300, 10, 10, 0, 0, 500, null, false);
	FadeDelete("絵色白", 500, null, true);
	WaitKey(1000);
}


{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300070kit">
「す、鈴姉！？　なんかおかしいよ！
　気を確かに――」

{	St("ML",700, @0,@0,"bu鈴_もじゃ_fear");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 300, 5, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300080fjr">
「もじゃあああああ――――――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateSE("SE03","se戦闘_打撃音01");
	MusicStart("SE03",0,700,0,1000,null,false);


	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

	DeleteAllSt(0,false);


	St("MR",700, @-60,@0,"bu千秋_驚天_shy");
	FadeSt("MR",0,true);
	Move("@StNameMR/MR*", 300, @60, @0, DxlAuto, false);

	Shake("@OnBG*", 300, 10, 10, 0, 0, 500, null, false);
	Shake("@StNameMR/MR*", 300, 5, 5, 0, 0, 500, null, false);

	Fade("絵色白", 200, 0, null, true);
	Delete("絵色白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300090kit">
「ふんげぶっ！！」

{	St("ML",700, @0,@0,"bu鈴_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300100fjr">
「あ……ごめん」

{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300110kit">
「ご、ご、ごめんじゃなくて……！
　どうしちゃったの？」

{	St("ML",700, @0,@0,"bu鈴_シリアス_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300120fjr">
「どうしたもこうしたもないわよぉ……」


{	St("ML",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300130fjr">
「ガラスをガムテで補修して、きっついけどしょうがないしコレで行くしかないかって覚悟を決めてたところに」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2211);}

	TextBoxDelete(0);

	CreateColorEXadd("絵色白", 20000, "WHITE");
	Fade("絵色白", 300, 1000, null, true);

	ClockDelete(0,true);

	CreateTextureEX_mono("絵背景100", 2000, Center, Middle, "cg/img/img迫り来る村崎のトラック.jpg");
	Zoom("絵背景100", 0, 1100, 1100, null, true);
	Wait(16);
	Zoom("絵背景100", 3000, 2000, 2000, Axl3, false);
//	Rotate("絵背景100", 1500, @0, @0, 720, Axl2,false);
	Fade("絵背景100", 0, 1000, null, false);
	Shake("絵背景100", 3000, 5, 5, 0, 0, 500, null, false);

	CreateSE("SE05","seメカ_車_急加速");
	MusicStart("SE05",0,700,0,1000,null,false);

	FadeDelete("絵色白", 700, null, true);
	Fade("絵色白", 700, 0, null, true);

	WaitKey(1000);


	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 500, 1000, null, true);

{	ClockPass(2211);}

	SetVolumeEX("SE05", 1500, 0, null);

	CreateSE("SE06","se擬音_ギャグ_爆発");
	MusicStart("SE06",0,700,0,1000,null,false);

	CreateSE("SE07","se戦闘_ガラス割れる02");
	MusicStart("SE07",0,700,0,1000,null,false);

	OnBG(10,"bg0501500スーパーノヴァ_正面_ガラス割れタイヤ痕");
	FadeBG(0,true);
	FadeDelete("絵背景100", 0, null, true);
	St("ML",700, @0,@0,"bu鈴_もじゃ_cry");
	FadeSt("ML",0,true);
	FadeDelete("絵色白", 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300140fjr">
「村崎さんの軽トラが突っ込んでドカーン！！
　パリーン！！　パラパラパラパラ……！！」


//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300150fjr">
「パラパラ……ぱらぱら……
　アタシの頭も……パッパラパー……」

{	Shake("@StNameML/ML*", 100, 5, 5, 0, 0, 500, null, false);
	}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300160fjr">
「あは……あはは……」


{	St("ML",700, @0,@0,"bu鈴_もじゃ_angry");
	Shake("@StNameML/ML*", 300, 10, 10, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300170fjr">
「もじゃあああああ――――――――ッ！！」

{	St("MR",700, @0,@0,"bu千秋_通常_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300180kit">
「ああ……
　だから、村崎のおっさんがあんなボコボコに……」

{	St("MR",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300190kit">
「って感心してる場合じゃないっ！！」

{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300200kit">
「鈴姉、やめなって！　なんとかなるよ！
　ライブまでまだ時間はあるんだし！」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300210kit">
「フウリさんも今大変なんだから！
　リーダーがしっかりしてないで、どうするんだよ！」

{	St("ML",700, @0,@0,"bu鈴_もじゃ_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300220fjr">
「フウリちゃんが……？」

{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300230kit">
「そうだよ！
　今……今、フウリさんはすごく苦しんでるんだ！」


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300240kit">
「なのに……鈴姉がそんなじゃ……リーダーでしょ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("ML",700, @0,@0,"bu鈴_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300250fjr">
「アッキーちゃん……」

{	St("ML",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300260fjr">
「そうねっ、ライブやるって、約束したんだもの！
　リーダーがこんなことで落ち込んでなんてられない！」

{	St("ML",700, @0,@0,"bu鈴_シリアス_smile");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300270fjr">
「ありがとうアッキーちゃんっ！」

{	St("MR",700, @0,@0,"bu千秋_朗らか_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300280kit">
「相変わらず、立ち直りが早い……」


{	St("ML",700, @0,@0,"bu鈴_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300290fjr">
「それで、なにか用事かなっ！？」

{	St("MR",700, @0,@0,"bu千秋_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300300kit">
「あ、うん！
　あのさ……貫太さん見なかった？」

{	St("ML",700, @0,@0,"bu鈴_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300310fjr">
「貫太さん？」

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300320kit">
「憶えてない？
　村崎のおっさんの部下で、昔は良く遊んでくれた――」


{	St("ML",700, @0,@0,"bu鈴_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300330fjr">
「あ……ああ、思い出した！　あの貫太さんね！
　でも、彼がどうしたの？」

{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300340kit">
「秋葉原に帰ってきてるんだ！　フウリさんを探してるから、もしかしたらここに来たんじゃないかって！」

{	St("ML",700, @0,@0,"bu鈴_シリアス_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300350fjr">
「んー、見た記憶はないかなぁ……」

{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300360kit">
「見てない？」


{	St("ML",700, @0,@0,"bu鈴_シリアス_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300370fjr">
「うん、たぶん」

{	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300380kit">
「そ、そうか……」

{	St("ML",700, @0,@0,"bu鈴_シリアス_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300390fjr">
「ああっ！　ちょっと！
　そんな落ち込まないでよ！」


{	St("ML",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300400fjr">
「アレからもう１０年とかでしょ？
　たぶん見た目も全然変わってるから――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2212);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300410kit">
「見た目は同じなんだ……」

{	St("ML",700, @0,@0,"bu鈴_シリアス_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300420fjr">
「あ……うん、そうなんだ……」

{	St("ML",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300430fjr">
「いやでもほら、アタシも変なテンションだったし、見落としてたのかも！」

{	St("ML",700, @0,@0,"bu鈴_通常_happy");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300440fjr">
「また、いつ来るかもわからないし！
　そしたら連絡するから、ね！」


{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300450kit">
「あ、ああ……ありがとう……」


{	St("MR",700, @0,@0,"bu千秋_朗らか_think");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300460kit">
（後は……どこだ……
　貫太さんの行きそうなところ……？）


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300470kit">
（ゆるキャラバンの会場は駄目……）


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300480kit">
（村崎のおっさんの所にはいない……）


{	St("MR",700, @0,@0,"bu千秋_通常_think");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300490kit">
（確か勤めてたお店は移転しちゃったし……）


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300500kit">
（住んでた家は……どこかわかんないし……）


{	St("MR",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300510kit">
「あーうーあー！
　いくら推理したってわかんねー！！」


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300520kit">
「ってーか、そもそも考え事は恵那の担当だし！！」


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300530kit">
「こんな手がかりナシで、探せるはずが――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



	CreateTextureEX("EF100", 2000, Center, Middle, "cg/ev/ev1830鈴ドロップキック.jpg");
	Zoom("EF100", 0, 2000, 2000, Dxl2, true);
	SetBlur("EF100", true, 2, 500, 50, false);

	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("EF100", 200, 1000, null, false);
	Zoom("EF100", 200, 1000, 1000, Dxl2, true);
	DeleteAllSt(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300540fjr">
「チェスト――――――っ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2213);}


	Zoom("EF100", 250, 20000, 20000, Axl2, false);
	FadeF4("EF100", 250, 1000, 3000, 0, 0, Axl3, false);

	Wait(150);
	Fade("EF100", 100, 0, null, true);
	Delete("EF100");
	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef034_精神汚染.jpg", false);


	TextBoxDelete(0);

	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

	CreateSE("SE04","se戦闘_打撃_ドロップキック01");
	MusicStart("SE04",0,700,0,1000,null,false);

	St("MR",700, @0,@0,"bu千秋_驚天_shock");
	Zoom("@StNameMR/MR*", 0, 3000, 3000, null, true);
	DeleteAllSt(0,false);
	FadeSt("MR",0,true);

	FadeDelete("EF100", 0, null, true);

	Shake("@OnBG*", 500, 10, 10, 0, 0, 500, null, false);

//あきゅん「修正指示：可能でしたら千秋はおもいっきりぶっ飛ばされた演出に」
//※対応しました（mngw 11/18）

	Zoom("@StNameMR/MR*", 200, 750, 750, Axl1, false);
	FadeDelete("絵色白", 200, null, true);

	Shake("@StNameMR/MR*", 500, 5, 5, 0, 0, 500, null, false);
	Zoom("@StNameMR/MR*", 200, 1000, 1000, Dxl1, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300550kit">
「ふぎゃっ！！」

{	St("ML",700, @0,@0,"bu鈴_シリアス_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300560fjr">
「ちょっとちょっとちょっと！
　もっと元気出しなさいよ！」


{	St("ML",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300570fjr">
「何のために探してるのか知らないけど、急ぐんでしょ？
　だったら落ち込んでるヒマなんて、ない！」

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300580kit">
「鈴姉……」

{	St("C",700, @0,@0,"buユージローa_通常_hard");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 200, 0, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab22/100300590ujr">
「わうわうわうッ！！」

{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300600kit">
「ユージローも……」


{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300610kit">
「うん。ありがたいよ。
　ありがたいけど……いちいち蹴らないで」

{	St("MR",700, @0,@0,"bu千秋_通常_think");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300620kit">
「だいたいオレ、恵那みたいにすごい推理ができるワケじゃないし、それに……」

{	St("ML",700, @0,@0,"bu鈴_シリアス_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300630fjr">
「あーあー！　アッキーちゃんはいつもそうなんだから！」

{	St("ML",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300640fjr">
「だから、恵那ちんに告白もできないのよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);

	OnBG(10,"bg0501500スーパーノヴァ_正面_ガラス割れタイヤ痕");
	FadeBG(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300650kit">
「う、うっさいな！
　そんなの今は関係ない――」

{	St("ML",700, @0,@0,"bu鈴_シリアス_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300660fjr">
「ウダウダ言ってないで！
　さ、コレ持って、貫太さん探しに行きなさい！」


//あきゅん「修正指示：objフウリ葉っぱの手紙変化前を表示させてください」
//※対応しました（mngw 11/18）

{	DeleteAllSt(200,true);
	CreateTextureEX("絵背景１", 2000, Center, Middle, "cg/obj/objフウリ葉っぱの手紙変化前.png");
	Move("絵背景１", 0, @0, @150, null, true);
	Move("絵背景１", 200, @0, @-150, DxlAuto, false);
	Fade("絵背景１", 200, 1000, null, true);}

{	
//	St("MR",700, @0,@0,"bu千秋_朗らか_smile");
//	St("MR",700, @0,@0,"bu千秋_通常_worry");
//	DeleteAllSt(200,false);
//	FadeSt("MR",200,true);
//	FadeStPro("MR", 200, 2000);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300670kit">
「うん、ありが――あれ？」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300680kit">
「何コレ？　葉っぱ？」

{	Move("絵背景１", 200, @0, @150, AxlAuto, false);
	FadeDelete("絵背景１", 200, null, true);
	}

{	St("ML",700, @0,@0,"bu鈴_通常_shock");
	Shake("@StNameC/C*", 200, 0, 10, 0, 0, 500, null, false);
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300690fjr">
「ホントだ葉っぱだ！　なんで！？」

{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300700kit">
「なんでって、そりゃこっちが聞きたいんだけど」

{	St("ML",700, @0,@0,"bu鈴_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300710fjr">
「いやいやだってさ、これちょっと前まで千秋ちゃんの携帯だったんだからねっ！」

{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300720kit">
「オレの携帯、ここにあるけど」

{	St("ML",700, @0,@0,"bu鈴_シリアス_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300730fjr">
「え？　あ！　ホントだっ！　なんで！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2214);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("ML",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300740fjr">
「だってさ、アッキーちゃんが、フウリちゃんとゆるキャラバンに出るってお店飛び出したとき、落として――」

{	St("MR",700, @0,@0,"bu千秋_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300750kit">
「ちょっと待った！」

{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300760kit">
「オレがフウリさんと一緒に、ゆるキャラバンに出る！？」

{	St("ML",700, @0,@0,"bu鈴_シリアス_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300770fjr">
「え？　だって出てたじゃない。
　テレビでちゃんと見てた――」


{	St("MR",700, @0,@0,"bu千秋_頭突き_rage");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 300, 0, 10, 0, 0, 500, null, false);
	Shake("@OnBG*", 300, 10, 10, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300780kit">
「バッカモーン！　そいつが貫太さんだッ！！」

{	St("ML",700, @0,@0,"bu鈴_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300790fjr">
「は！？」

{	St("MR",700, @0,@0,"bu千秋_通常_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300800kit">
「つまり貫太さんはオレの代わりにスーパーノヴァでバイトをしてて、だからその時落とした葉っぱが――」


{	St("C",700, @0,@0,"buユージローa_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab22/100300810ujr">
「くんくんくん！！」

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300820kit">
「え？　ユージロー？」


{	St("C",700, @0,@0,"buユージローa_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab22/100300830ujr">
「クンクン……クンクン……」

{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300840kit">
「そうか、これが貫太さんの葉っぱなら匂いが――」

{	St("C",700, @0,@0,"buユージローa_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab22/100300850ujr">
「わうわうわうわうっ！！」

{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300860kit">
「ユージロー？　行けるな？」

{	St("C",700, @0,@0,"buユージローa_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab22/100300870ujr">
「わう！」


{	St("ML",700, @0,@0,"bu鈴_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ab22/100300880fjr">
「ふたりとも、行ってらっしゃいっ！！」

{	St("MR",700, @0,@0,"bu千秋_朗らか_pride");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300890kit">
「ありがとう、鈴姉っ！！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 4000, 0, null);

	TextBoxDelete(150);

	SceneOut(5000, 500, "blind_01_00_0");
	DeleteAllSt(0,false);

{	ClockPass(2215);}
//◆場所：銭形公園_全景
	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);

	SceneIn(500, "blind_01_00_1");

	CreateAXLWindowEX("横割り", "Y",1500, 50,384, false);
	WindowAXLZoom("横割り", "Y",0, 0, null, true);
	CreateTextureSP("横割り/絵背景", 1400, 0, Middle, "cg/bg/bg1701100銭形公園_全景_通常.jpg");
	SetShade("横割り/絵背景", HEAVY);
	Zoom("横割り/絵背景", 0, 2000, 2000, null, true);

	CreateTexture("横割り/千秋", 1420, @0, InBottom, "cg/bu/bu千秋_通常_normal.png");
	CreateTexture("横割り/千秋pinch", 1415, @0, InBottom, "cg/bu/bu千秋_通常_pinch.png");
	CreateTexture("横割り/千秋angry", 1410, @0, InBottom, "cg/bu/bu千秋_通常_angry.png");
	SetAlias("横割り/千秋","横割り/千秋");

	Fade("横割り/千秋pinch", 0, 0, null, true);
	Move("横割り/千秋pinch", 0, 384, 0, DxlAuto, true);

	Fade("横割り/千秋angry", 0, 0, null, true);
	Move("横割り/千秋angry", 0, 384, 0, DxlAuto, true);

	Fade("横割り/千秋", 0, 0, null, true);
	Move("横割り/千秋", 0, 768, 0, null, true);

	CreateTexture("横割り/ユージロー", 1410, @0, InBottom, "cg/bu/buユージローa_通常_hard.png");
	SetAlias("横割り/ユージロー","横割り/ユージロー");
	Fade("横割り/ユージロー", 0, 0, null, true);
	Move("横割り/ユージロー", 0, 384, 150, null, true);

	SoundPlay("@xbgm23",0,450,true);

	WindowAXLZoom("横割り", "Y",300, 1000, Dxl2, true);
	Fade("横割り/千秋", 200, 1000, null, false);
	Move("横割り/千秋", 200, 384, 0, DxlAuto, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300900kit">
（もう少し……もう少しだッ！！）


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300910kit">
（オレは、もう恵那を悲しませないって誓った！）

{	Fade("横割り/千秋pinch", 0, 1000, null, false);
	Fade("横割り/千秋", 200, 0, null, true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300920kit">
（だから貫太さんを探して――
　早くフウリさんを助けないと！）

{	Fade("横割り/千秋angry", 0, 1000, null, false);
	Fade("横割り/千秋pinch", 200, 0, null, true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300930kit">
「頼むぜユージロー！」

{	Fade("横割り/千秋angry", 200, 0, null, false);
	Move("横割り/千秋angry", 200, @-384, @0, DxlAuto, true);
	Fade("横割り/ユージロー", 200, 1000, null, false);
	Move("横割り/ユージロー", 200, 0, @0, DxlAuto, true);
	}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab22/100300940ujr">
「はっはっはっは！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fade("横割り/ユージロー", 200, 0, null, false);
	Move("横割り/ユージロー", 200, @-384, @0, DxlAuto, true);

	WindowAXLZoom("横割り", "Y",300, 0, Dxl2, true);

	TextBoxDelete(150);

	SceneOut(5000, 500, "blind_01_00_0");
	DeleteAllSt(0,false);

	Delete("横割り*");
	Delete("横割り/千秋*");
	Delete("横割り/ユージロー");
	Delete("横割り/絵背景");

{	ClockPass(2216);}

//◆場所：半田明神_男坂
	OnBG(10,"bg0601100半田明神_男坂_通常");
	FadeBG(0,true);

	SceneIn(500, "blind_01_00_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	St("ML",700, @120,@0,"buユージローa_通常_hard");
	Move("@StNameML/ML*", 200, @-120, @0, DxlAuto, false);
	FadeSt("ML",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab22/100300950ujr">
「わう――――ん」


{	Move("@StNameML/ML*", 200, @-120, @0, DxlAuto, false);
	DeleteAllSt(200,true);
	St("MR",700, @120,@0,"bu千秋_通常_angry");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @-120, @0, DxlAuto, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300960kit">
「いたあっ！！」

{	St("MR",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100300970kit">
「貫太さああああんっ！！」


{	St("ML",700, @0,@0,"bu貫太_横向き_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab22/100300980okt">
「ん？　ああ……」

{	St("ML",700, @0,@0,"bu貫太_通常_normal");
	FadeSt("ML",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab22/100300990okt">
「アッキーちゃん、どうしたんだい？」

{	St("MR",700, @120,@0,"bu千秋_通常_shout");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @-120, @0, DxlAuto, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100301000kit">
「助けてくださいッ！
　フウリさんがッ！　フウリさんがッ――！」


{	St("ML",700, @0,@0,"bu貫太_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab22/100301010okt">
「フウリ！？　フウリになにが！？」

{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100301020kit">
「すごく深い傷を負ってて――それで――今にも――
　今にも……死にそうで……」

{	St("ML",700, @0,@0,"bu貫太_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab22/100301030okt">
「――どこだ」

{	St("ML",700, @0,@0,"bu貫太_通常_hard");
	FadeSt("ML",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab22/100301040okt">
「フウリはどこに――！？」


{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100301050kit">
「スパコン館です！！」


{	St("ML",700, @0,@0,"bu貫太_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab22/100301060okt">
「――――っ！！」

{	Move("@StNameML/ML*", 200, @-120, @0, DxlAuto, false);
	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100301070kit">
「貫太さんっ、待って――」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameMR/MR*", 200, @-120, @0, DxlAuto, false);
	DeleteAllSt(200,false);

	TextBoxDelete(150);

	SceneOut(5000, 1000, "blind_01_00_0");
	DeleteAllSt(0,true);


{	ClockPass(2217);}

//◆場所：スパコン館_裏面
	OnBG(10,"bg1101300スパコン館_裏面_電柱折れ");
	FadeBG(0,true);

	SceneIn(1000, "blind_01_00_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]

{	St("MR",700, @120,@0,"bu千秋_通常_fear");
	Move("@StNameMR/MR*", 200, @-120, @0, DxlAuto, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100301080kit">
「治せますか？」


{	St("ML",700, @0,@0,"bu貫太_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab22/100301090okt">
「父さんにもらった金丹があるんだ！
　これを使えば、どんな症状も――」

{	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100301100kit">
「よかった……」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SceneOut(5000, 500, "blind_01_00_0");
	DeleteAllSt(0,true);

{	ClockPass(2218);}

//◆場所：スパコン館_通路
	OnBG(10,"bg1102100スパコン館_通路_通常");
	FadeBG(0,true);

	SceneIn(500, "blind_01_00_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{	St("C",19010, @120,@0,"fu千秋_通常_normal");
	Move("@StNameC/C*", 200, @-120, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100301110kit">
（やっと見つけられた――）


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100301120kit">
（これで、フウリさんも助かる――）



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100301130kit">
（恵那の、笑顔も――）



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameC/C*", 200, @-120, @0, AxlAuto, false);
	DeleteAllSt(200,true);

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 4000, 0, null);

	SceneOut(5000, 500, "blind_01_00_0");
	DeleteAllSt(0,true);
	Delete("@OnBG*");
	WaitKey(500);
	SceneIn(0, "blind_01_00_1");



{	ClockPass(2219);}

	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

//◆ＳＥ：バタン！

	CreateSE("SE01","se動作_ドア閉める02");
	MusicStart("SE01",0,700,0,1000,null,false);

//◆場所：スパコン館_店内
	OnBG(10,"bg1103100スパコン館_店内_通常");
	FadeBG(0,true);

	Shake("@OnBG*", 300, 10, 10, 0, 0, 500, null, false);
	Fade("絵色白", 200, 0, null, true);
	Delete("絵色白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
{	St("MR",700, @120,@0,"buユージローa_通常_normal");
	Move("@StNameMR/MR*", 200, @-120, @0, DxlAuto, false);
	FadeSt("MR",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab22/100301140ujr">
「わうわうわうわう！」

{	DeleteSt("MR", 200,false);
	St("C",650, @120,@0,"bu千秋_通常_shout");
	Move("@StNameC/C*", 200, @-120, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100301150kit">
「恵那！　フウリさんが助かる！」


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100301160kit">
「貫太さんを連れて――」


{	St("MR",700, @0,@0,"bu恵那_哀愁_cry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/100301170fje">
「ひぐっ、う……う……」

{	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100301180kit">
「ど……どうした？」

{	St("MR",700, @0,@0,"bu恵那_哀愁_cry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/100301190fje">
「う……うう……う……」

{	St("ML",700, @0,@0,"bu平次_通常_cool");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/100301200fjh">
「手遅れだ」

{	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/100301210kit">
「手遅れ？」

{	St("ML",700, @0,@0,"bu平次_通常_cool");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/100301220fjh">
「フウリは……」

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/100301230fjh">
「死んだよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



	EndScene();
}
