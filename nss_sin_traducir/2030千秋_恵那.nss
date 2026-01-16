
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2030千秋_恵那.nss_MAIN
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
	if($CharaName=="千秋"){
		if($myRoute=="トゥルー"){
			$GameName="2040千秋_ノーコ.nss";
		}else{
			$GameName="a2040千秋.nss";
		}
	}else if($CharaName=="恵那"){
		$GameName="2040恵那.nss";
	}
}

scene 2030千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="860">
////////////header////////////
//file name "2030千秋_恵那.nss"
//title "名探偵の失敗"
//previous "2020千秋_恵那.nss"

////////////footer////////////
//next "千秋" （"flkagome1" = true）"2040千秋_ノーコ.nss"
//next "千秋"（"flkagome1" = false） "a2040千秋.nss"
//next "恵那" "2040恵那.nss"


////////////body////////////

//■再定義定型文
	PrintGO("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);

//◆時間：ジャンプ
{	ClockPass(2032);}

//◆場所：秋葉原_万世橋

	OnBG(10,"bg0104111秋葉原_万世橋_通常");
	FadeBG(0,true);

	CreateSE("SE11","seガヤ_交通_l");
	MusicStart("SE11",2000,700,0,1000,null,true);

	if($PreGameName=="2020千秋_恵那.nss"){
	Wait(3000);
	DrawDelete("上背景", 300, 100, null, "slide_01_01_1", true);
	}else{
	FadeDelete("上背景", 0, null, true);
	}

{	St("C",700, @50,@0,"bu千秋_通常_sigh");
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400010kit">
「はぁ――っ、はぁ――っ、はぁ――」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400020kit">
「やっと――追いついた――」

{	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400030kit">
「なあ、恵那。大丈夫か？」

{	St2("ML",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400040fje">
「…………」

{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400050kit">
「そんな、な？　気、落とすなって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("MR",700, @0,@0,"bu千秋_通常_think");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400060kit">
「そりゃまあ、ショックだけどさ」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400070kit">
「っていうか、オレもショックだよ、うん」

{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400080kit">
「でもさ、そんなに取り乱さなくても……な」

{	St2("ML",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400090fje">
「…………」

{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400100kit">
「なんだよ？　なんかしゃべれよ！
　いつものおまえと違うだろ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400110kit">
「雪山じゃ、ないんだからさ」



{	St("ML",700, @0,@0,"bu恵那_哀愁_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400120fje">
「…………？」

{	St("ML",700, @0,@0,"bu恵那_一休_think");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400130fje">
「……雪山って、なによ」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400140fje">
「何かの暗号？」


{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400150kit">
「あー、知らないのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2033);}


//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400160kit">
「雪ってさ、音を吸い込むんだぜ。
　だから雪の日は、遠くの音が聞こえない」

{	St("ML",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400170fje">
「ふぅん」

{	St("MR",700, @0,@0,"bu千秋_朗らか_happy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400180kit">
「へへ、やっとしゃべったな」

{	St("ML",700, @0,@0,"bu恵那_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400190fje">
「……悪い？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("MR",700, @0,@0,"bu千秋_朗らか_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400200kit">
「悪くないって。ほら、おまえ名探偵なんだろ。
　ピンチはむしろチャンス？」

{	St("MR",700, @0,@0,"bu千秋_朗らか_happy");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400210kit">
「いつも通りさ、眼をきらきらさせて『これは事件！？』みたいな感じで――」


{	St2("ML",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400220fje">
「犯人、知ってるの」

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400230kit">
「え……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2034);}


//	TextBoxDelete(150);


{	St("MR",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400240kit">
「それマジ？　っていうか、すごいじゃないか！」

//	St("MR",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400250kit">
「だったらすぐ、オヤジさんに連絡して――
　あ、連絡したくなかったら、オレが代わりに」

{	St2("ML",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400260fje">
「違う。私が犯人」

{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400270kit">
「え……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);






{	St2("ML",700, @0,@0,"bu恵那_哀愁_disco","cg2/",".png");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400280fje">
「私が、殺したの」

{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400290kit">
「……いや、いやいや！　ちょっと待てって！」

{	St("MR",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400300kit">
「犯人っておかしいだろ！
　オレと一緒にあの店に入って――」

{	St("ML",700, @0,@0,"bu恵那_哀愁_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400310fje">
「拳銃持ち出したの、私なの……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("MR",700, @0,@0,"bu千秋_朗らか_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400320kit">
「おまえが、持ち出した……？」





{	St2("ML",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400330fje">
「半田明神の地下にムロがあるのを偶然見つけて、入っていったら、そしたら奥に小さな社があって」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400340fje">
「そこから、持ち出したの」

//	St("ML",700, @0,@0,"bu恵那_哀愁_sad");
//	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400350fje">
「警察に届けようと思って、でも途中で色々あってアザナエルをなくしちゃって、それで……」

{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400360kit">
「でもほら！　悪気があったワケじゃないし！　警察に届けようと思ってたわけだし！　結局不幸な事故――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



{	St2("ML",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400370fje">
「私の手に負えないことだってのは、わかってた」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400380fje">
「ホントはすぐに父さんに連絡するべきだったの」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400390fje">
「なのに変に意地を張って、自分だけで解決しようって先延ばしにして、しかも千秋に気を取られてばっかりで」

//	St("ML",700, @0,@0,"bu恵那_哀愁_sad");
//	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400400fje">
「それで……最後に……こういうことに……」

{	St("MR",700, @0,@0,"bu千秋_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400410kit">
「だから、勝手に落ち込むなって！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2035);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400420kit">
「あの人……双六だっけ？
　組員だったら、抗争とかで撃たれたり――」

{	St("ML",700, @0,@0,"bu恵那_通常_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400430fje">
「……あなたは知らないだろうけど、ここは特別なの」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400440fje">
「河原屋双一っていうのが、ホントに戦後間もない頃からずっとこの秋葉原を牛耳ってる親分でね」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400450fje">
「一種の聖域みたいに、どの抗争相手も手出しができないんだって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400460kit">
「でもほら、薄暗かったし、拳銃が本当におまえが持ち出したやつかとか、確認できたか？　できなかっただろ？」

{	St2("ML",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400470fje">
「……隣に私のエコバッグがあった。
　アザナエルごと、盗まれたヤツ」

{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400480kit">
「でもさ！　たくさん造っちゃったヤツだろ？
　他に誰かが持っててもおかしくないし！」




{	St2("ML",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400490fje">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400500kit">
「…………」

{	St("ML",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400510fje">
「ありがと、アッキーちゃん」

{	St("ML",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400520fje">
「でもやっぱり、私……」

{	St2("ML",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400530fje">
「探偵、失格みたいなの」


{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400540kit">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St2("ML",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400550fje">
「…………」

{	St("MR",700, @0,@0,"bu千秋_通常_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);
	Wait(500);
	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400560kit">
「どうして……」

{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400570kit">
「どうして、諦めるんだよッ！！」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400580kit">
「そんなの恵那らしくないよ！　おかしいよ！」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400590kit">
「だって、事件はまだ未解決だろ？　中途半端だろ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("MR",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400600kit">
「諦めんなよ！　諦めるなんて――間違ってる――」

{	St2("ML",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400610fje">
「バチが当たったんだと思う」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400620fje">
「私、疑うことばっかりで、全然、信じられなかった。
　事件を疑って、家族を疑って、好きな人まで――」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400630fje">
「だからこれからはちゃんと信じようって、そう誓ったばっかりだったんだけど――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2036);}


//	TextBoxDelete(150);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400640kit">
「オレが無罪を証明してやる！」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400650kit">
「全部、何かの間違いだって！
　オレが証拠を見つけてきてやる！」

{	St("MR",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400660kit">
「そしたら、それで、オッケーだろ！　万々歳だろ？」

{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400670kit">
「だって、おまえは、信じるんだもんな！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400680kit">
「無罪を証明してやるって約束するオレを、信じるんだもんな！　だよな！？」



{	St2("ML",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	St("ML",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);
	FadeStPro("ML", 200, 1100);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400690fje">
「……あは」

{	AgainSt("ML",700, @0,@0,"bu恵那_通常_normal");
	St("ML",700, @0,@0,"bu恵那_感動_smile");
	FadeStPro("ML", 200, 800);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400700fje">
「……うん、ありがと」

{	AgainSt("ML",700, @0,@0,"bu恵那_感動_smile");
	St("ML",700, @0,@0,"bu恵那_通常_happy");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400710fje">
「やっぱり、親戚なのに、違うね」

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400720kit">
「え？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("ML",700, @0,@0,"bu恵那_一休_pride");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400730fje">
「千秋だったら、今みたいなこと、絶対言えないもん」

//◆音声指示：小声
{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400740kit">
「う……結構フクザツ……」

{	St("MR",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400750kit">
「とにかく、オレはバックギャモンに行くから」

{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400760kit">
「おまえは家かスーパーノヴァに戻って、休んでてくれ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2037);}


{	St2("ML",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400770fje">
「うん。現場には戻れそうにないし、そうするわ」

{	St("ML",700, @0,@0,"bu恵那_通常_think");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400780fje">
「でもその前に――」

{	DeleteAllSt(200,true);}

　恵那は手に携帯電話を取る。

{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400790kit">
「いいって。通報もオレがやっとくから」

{	St("ML",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400800fje">
「ううん。これだけは、私が伝えなきゃ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400810fje">
「父さんに連絡したら、スーパーノヴァに戻るから」

{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400820kit">
「ホントだな？」

{	St("ML",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400830fje">
「私を信じて」

{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400840kit">
「…………わかった」

{	St("MR",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/300400850kit">
「オレ、バックギャモンで見張ってるから。
　連絡よろしくな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("ML",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/300400860fje">
「任せて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@SE*", 1000, 0, null);

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	if($CharaName=="千秋"){
		//★徒歩：フラグ修正
		if($myRoute=="トゥルー"){
			CreateColorSP("絵色黒", 20000, "#000000");
			DrawTransition("絵色黒", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
		
			OnBG(10,"bg0901100エレキセンター_廊下_通常");
			FadeBG(0,true);
		
			Wait(1000);
		
		//おがみ：時刻表画面への推移バグ対応
		//	Fade("絵色黒", 500, 0, null, true);
		}else{
			CreateColorSP("絵黒幕", 25000, "BLACK");
			DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
		}
	}else if($CharaName=="恵那"){
		CreateColorEX("絵黒幕", 25000, "BLACK");
		Fade("絵黒幕", 2000, 1000, null, true);
		Wait(3000);
	}

	EndScene();
}
