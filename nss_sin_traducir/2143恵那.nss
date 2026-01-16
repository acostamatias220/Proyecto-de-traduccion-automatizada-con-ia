
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2143恵那.nss_MAIN
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
		$GameName="b2144千秋_恵那.nss";
	}else if($CharaName=="恵那"){
		if($myRoute=="トゥルー"){
			$GameName="2144恵那.nss";
		}else{
			//b
			$GameName="b2144千秋_恵那.nss";
		}
	}
}

scene 2143恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="180">
////////////header////////////
//file name "2143恵那.nss"
//title "追撃"
//previous "2140恵那.nss"
//previous "b2140千秋_恵那.nss"


////////////footer////////////
//next "千秋"（"flkagome2" = true）　"b2144千秋_恵那.nss"
//next "恵那"（"flkagome2" = true）　"b2144千秋_恵那.nss"
//next "恵那" "2144恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);

//◆場所：スーパーノヴァ_正面_ガラス車イン
	OnBG(10,"bg0501400スーパーノヴァ_正面_ガラス車イン");
	FadeBG(0,true);

{	ClockPass(2142);}

	FadeDelete("上背景", 500, null, true);

{	ClockPass(2143);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @50,@-10,"bu村崎_通常_fear");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 500, @-50, @10, Dxl1, false);
	Shake("@StNameC/C*", 300, 0, 5, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/21/430100010msi">
「アイタ、イタタタタタタ……」

　軽トラの運転席から、ふらふらと村崎が降りてくる。

//	St("C",700, @0,@0,"bu村崎_通常_normal");
//	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/21/430100020msi">
「だ、誰もケガしてないですね？」

{	St("C",700, @0,@0,"bu村崎_通常_pinch");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/21/430100030msi">
「ふぅ……よ、よかった……」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@50,"bu鈴_シリアス_hard");
Move($C_次, 300, @0, @-50, Dxl2, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/430100040fjr">
「全ッ然――――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu村崎_通常_pinch");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/21/430100050msi">
「え？」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/430100060fjr">
「良くないわあああああああああッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SoundPlay("@xbgm03",1000,450,true);

	DeleteAllSt(200,true);

//◆演出指示：ドロップキック


	CreateTextureEX("絵背景", 1000, Center, Middle, "cg/ev/ev1830鈴ドロップキック.jpg");
	Zoom("絵背景", 0, 2000, 2000, Dxl2, true);
	SetBlur("絵背景", true, 2, 500, 50, false);

	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵背景", 200, 1000, null, false);
	Zoom("絵背景", 200, 1000, 1000, Dxl2, true);


	Zoom("絵背景", 200, 5000, 5000, Axl3, false);
	FadeF4("絵背景", 200, 1000, 3000, 0, 0, Axl3, false);

	Wait(200);
	CreateSE("SE02","se戦闘_打撃_ドロップキック01");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorEXadd("絵色", 1500, "#FFFFFF");
	Fade("絵色", 300, 1000, null, true);
	FadeDelete("絵背景",0,null,false);

	St("C",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("C",0,true);

	FadeDelete("絵色", 500, null, false);


	Shake("@StNameC/C*", 1000, 10, 0, 0, 0, 1000, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/21/430100070msi">
「ふがっ！！」

{	DeleteAllSt(200,true);}

{	St("C",700, @0,@0,"bu鈴_もじゃ_angry");
	Shake("@StNameC/C*", 500, 10, 0, 10, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/430100080fjr">
「せっかく、窓ガラス、直したのに――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("C",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/430100090fjr">
「バカ！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateTextureEX("絵背景", 1000, Center, Middle, "cg/ev/ev1830鈴ドロップキック.jpg");
	Rotate("絵背景", 0, @0, 180, @0, null,true);
	Zoom("絵背景", 0, 2000, 2000, Dxl2, true);
	SetBlur("絵背景", true, 2, 500, 50, false);

	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵背景", 200, 1000, null, false);
	Zoom("絵背景", 200, 1000, 1000, Dxl2, true);


	Zoom("絵背景", 200, 5000, 5000, Axl3, false);
	FadeF4("絵背景", 200, 1000, 3000, 0, 0, Axl3, false);

	Wait(200);
	CreateSE("SE02","se戦闘_打撃_ドロップキック01");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorEXadd("絵色", 1500, "#FFFFFF");
	Fade("絵色", 300, 1000, null, true);
	FadeDelete("絵背景",0,null,false);

	St("C",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("C",0,true);

	FadeDelete("絵色", 500, null, false);


	Shake("@StNameC/C*", 1000, 10, 0, 0, 0, 1000, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/21/430100100msi">
「あうっ！」


{	DeleteAllSt(200,true);}

{	St("C",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/430100110fjr">
「バカ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateTextureEX("絵背景", 1000, Center, -900, "cg/ev/l/ev1830鈴ドロップキック_l.jpg");//2048x1152
	Rotate("絵背景", 0, 0, 0, -90, null,true);
	SetBlur("絵背景", true, 2, 500, 50, false);
	Move("絵背景", 200, -450, 100, Dxl1, false);


	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵背景", 200, 1000, null, true);
	WaitKey(100);
	Move("絵背景", 200, -450, 440, Axl3, false);

	CreateSE("SE04","se戦闘_打撃_ドロップキック01");
	MusicStart("SE04",0,700,0,1000,null,false);
	CreateColorEXadd("絵色", 1500, "#FFFFFF");
	Fade("絵色", 300, 1000, null, true);
	FadeDelete("絵背景",0,null,false);

	St("C",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("C",0,true);

	FadeDelete("絵色", 500, null, false);

Move("@StNameC/C*", 200, @0, @100, Dxl1, false);
	Shake("@StNameC/C*", 1000, 20, 0, 0, 0, 1000, Dxl1, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/21/430100120msi">
「あうっ！」

{	DeleteAllSt(200,true);}

{	St("C",700, @0,@0,"bu鈴_もじゃ_angry");
	Shake("@StNameC/C*", 300, 20, 0, 10, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/430100130fjr">
「バカああああああああああああッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateTextureEX("絵背景", 1000, Center, 100, "cg/ev/l/ev1830鈴ドロップキック_l.jpg");//2048x1152
	Rotate("絵背景", 0, 0, 0, 90, null,true);
	SetBlur("絵背景", true, 2, 500, 50, false);

	Move("絵背景", 200, -570, -620, Dxl1, false);

	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵背景", 200, 1000, null, true);
	WaitKey(100);
	Move("絵背景", 200, -570, -1020, Axl3, false);

	CreateSE("SE03","se戦闘_打撃_ドロップキック01");
	MusicStart("SE03",0,700,0,1000,null,false);

	CreateColorEXadd("絵色", 1500, "#FFFFFF");
	Fade("絵色", 300, 1000, null, true);
	FadeDelete("絵背景",0,null,false);

	St("C",700, @0,@200,"bu村崎_通常_fear");
	FadeSt("C",0,true);

	FadeDelete("絵色", 500, null, false);


Move("@StNameC/C*", 300, @0, @-200, Dxl1, false);
	Shake("@StNameC/C*", 1000, 20, 0, 0, 0, 1000, Dxl1, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/21/430100140msi">
「あぅ…………ぅ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

Move("@StNameC/C*", 500, @0, @200, Dxl1, false);
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 1000, Dxl1, false);
	DeleteSt("C", 200,true);

	CreateSE("SE01","se人体_倒れる03");
	MusicStart("SE01",0,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]

{	St("MR",700, @50,@0,"bu恵那_ハルヒ_angry");
Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/430100150fje">
「鈴姉！　駄目！
　それ以上やったら、村崎さんが――」

{	St("ML",700, @0,@0,"bu鈴_もじゃ_angry");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 200, 20, 0, 0, 0, 500, Axl3, false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/430100160fjr">
「うるさいっ！
　他人にアタシの苦労がわかるかあああああっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
{	SetVolume("@xbgm*", 1000, 0, null);}


{	DeleteAllSt(200,true);}
{	CreateSE("SE02","se戦闘_打撃音06");
	MusicStart("SE02",0,700,0,1000,null,false);
}
{	St("C",700, @0,@0,"bu村崎_通常_cry");
	Shake("@StNameC/C*", 300, , 30, 20, 0, 1000, Axl2, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/21/430100170msi">
「ぎゃっ！　す、スミマセン！
　スミマセンでしたあ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//あきゅん「演出：下記の村崎の表情に合わせて別ファイル"b2144千秋_恵那.nss"も同期させています、修正する時は気を付けてくだしあ」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("C",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/21/430100180msi">
「急に車の前に、変なカッター女が飛び出してきて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



	EndScene();
}
