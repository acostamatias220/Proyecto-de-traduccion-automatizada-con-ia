
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1800恵那.nss_MAIN
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
	$GameName = "1820恵那.nss";
	//$GameCircle=false;

}

scene 1800恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1740">
////////////header////////////
//file name "1800恵那.nss"
//title "怪奇！　ユージロー轢き逃げ事件"
//previous "y1752恵那.nss"

////////////footer////////////
//next "恵那" "1820恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);

	KoreJikenSet();

//◆場所：小碓家_正面
	OnBG(10,"bg1601100小碓家_正面_通常");
	FadeBG(0,true);


{	ClockPass(1800);}

//◆ＳＥ：着信音
	CreateSE("SE01","seメカ_携帯_メール着信_恵那_l");
	MusicStart("SE01",2000,700,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);
WaitKey(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300010fje">
「来たッ！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300020fje">
「やっと来たわねこのバカ千秋っ！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300030fje">
「私を無視するなんて、百年早い――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolume("SE01", 10, 0, null);

//◆ＳＥ：携帯ぴこ

	CreateSE("SE02","seメカ_携帯_電子音01");
	MusicStart("SE02",0,700,0,1000,null,false);
WaitKey(500);
//オブジェクト：恵那携帯液晶部分と占い

//以下、携帯の文面
/*
差出人：ミリＰの占い情報局
件名：恋愛ＱＰ（ハート）ミリＰの恋愛占い！
はろぉ～！いつも読んでくれて感謝！毎日ビンビン、ミリオンプロデューサーＰの恋愛占いよ！今年最後のあなたの運命は――【大吉】！あなたの目の前に、とうとう待ちに待った運命の人が！こんなチャンスは二度とない！次々に襲う障害を乗り越えて、見事彼のハートをゲットしちゃおう！良いお年を！ばっはは～い！【今日のラッキーアイテム：ストラップ】
*/

	CreateAXLPhWindowEX("絵演窓", "Y", 2100, 96, 192, false);
	PhWindowAXLZoom("絵演窓", "Y", 0, 0, null, true);
	CreateTextureSP("絵演窓/絵背景", 2010, Center, 90, "cg/obj/objIF背景_恵那.png");
	CreateTextureSP("絵演窓/絵演物", 2010, Center, 100, "cg/obj/obj恵那携帯液晶部分と占い.png");
	PhWindowAXLZoom("絵演窓", "Y", 500, 1000, AxlDxl, true);
WaitKey(1000);
$scrnum=500;
$stynum=100;
$i=0;
$mvy=-22;
	while($i<19){
		$y_num=$i*$mvy+$stynum;
		Move("絵演窓/絵演物", 0, @0, $y_num, null, true);
		WaitKey($scrnum);
		$i++;
	}

WaitKey(1000);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//	St("C",700, @0,@0,"bu恵那_通常_pinch");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300040fje">
「ふ」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300050fje">
「ふざ――ふざ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	PhWindowAXLZoom("絵演窓", "Y", 500, 0, null, true);
	Delete("@絵演窓*");

//◆場所：小碓家_正面
//	OnBG(10,"bg1601100小碓家_正面_通常");
//	FadeBG(0,true);
	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/bg1601100小碓家_正面_通常.jpg");
	SetShade("絵背景",MEDIUM);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
{	St("C",700, @0,@50,"fu恵那_通常_angry");
	Fade("絵背景", 200, 1000, null, false);
Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300060fje">
「ふ・ざ・け・な・い・で！」

{	St("C",700, @0,@0,"fu恵那_通常_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300070fje">
「何！？　今日の占いがなんで今来るのよ！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300080fje">
「遅いし、お呼びでないし、余計なお世話だし！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	FadeDelete("絵背景", 200, null, false);
{	DeleteAllSt(200,true);}


	CreateSE("SE10","seガヤ_交通少_l");
	MusicStart("SE10",2000,400,0,1000,null,true);

{	ClockPass(1801);}

{	St("ML",700, @0,@50,"buユージローa_通常_normal");
//Move($C_次, 300, @0, @-50, Dxl2, false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/000300090ujr">
「わうー」

{	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300100fje">
「あ……ユージロー？」

{	St("ML",700, @0,@0,"buユージローa_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/000300110ujr">
「くぅぅ～ん」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300120fje">
「そ……そうね。ありがとユージロー。
　名探偵富士見恵那ともあろう私が、熱くなったわ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buユージローa_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/000300130ujr">
「わう」

{	St("C",700, @0,@0,"bu恵那_一休_think");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300140fje">
「さて、冷静に、冷静に……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：携帯ぴこぴこ
	CreateSE("SE01","seメカ_携帯_電子音02");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,true);
WaitKey(2000);


//以下、携帯の文面
//あきゅん「素材：obj携帯メール_恵那1800a」
/*
宛先：バカチビ千秋
件名：ふざけるなー！
いつまで待たせんのよバカチビ！　凍死するわよバカチビ！　凍死したらアンタのせいだからねバカチビ！　さっさと来なさいバカチビ！　バーカ！　チビ！
*/

	CreateTextureEX("絵オブ", 100, Center, 130, "cg/obj/obj携帯メール_恵那1800a.png");//1024x302
	CreateTextureEX("絵オブ枠上", 111, Center, 270, "cg/obj/objIF携帯枠線.jpg");//1024x15//114
	CreateTextureEX("絵オブ枠下", 111, Center, 270, "cg/obj/objIF携帯枠線.jpg");//1024x15//405

	Zoom("絵オブ", 0, 1000, 0, null, true);

	Fade("絵オブ*", 200, 1000, null, false);

	Move("絵オブ枠上", 200, @0, 130, Dxl1, false);
	Move("絵オブ枠下", 200, @0, 417, Dxl1, false);

	Zoom("絵オブ", 200, 1000, 1000, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300150fje">
「バカ！　チビ！　縮んじゃえ！」

{	FadeDelete("絵オブ*", 200, null, false);
	Move("絵オブ枠*", 200, @0, 270, Dxl1, false);
	Zoom("絵オブ", 200, 1000, 0, Dxl1, true);
}
{	St("C",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300160fje">
「私がどれだけ、この日を待ってたと――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 500, 0, null);

//	TextBoxDelete(150);

	CreateSE("SE02","se動物_イヌ_走る_l");
	MusicStart("SE02",0,700,0,1000,null,true);


	DeleteAllSt(200,true);


{	ClockPass(1802);}

	SetVolume("SE02", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//	St("C",700, @0,@0,"buユージローa_通常_normal");
//	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/000300170ujr">
「わうわうわうわう！」

//	St("C",700, @0,@0,"buＡＤ_通常_normal");
//	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/18/000300180adi">
「きゃああああああああ！！」

{	CreateSE("SE01","se人体_倒れる04");
	MusicStart("SE01",0,500,0,1000,null,false);
}
{	St("C",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300190fje">
「え？　ユージロー！？」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SoundPlay("@xbgm03",0,450,true);


{	DeleteAllSt(200,true);}

	yurukakuPrepare("yurIF背景03","yurユージローaカクカクＡＤa","yurユージローaカクカクＡＤb");
	yurukakuStart();


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//	St("ML",700, @0,@0,"buユージローa_通常_ero");
//	Shake("@StNameML/ML*", 200, 0, 30, 0, 0, 500, Axl3, false);
//	FadeSt("ML",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/000300200ujr">
「はっはっはっはっ！」


//	DeleteAllSt(200,false);}
//	St("L",700, @50,@0,"buＡＤ_通常_sad");
//Move("@StNameL/L*", 200, @-50, @0, Dxl1, false);
//	Shake("@StNameL/L*", 200, 0, 30, 0, 0, 500, Axl3, false);
//	FadeSt("L",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/18/000300210adi">
「やだ！　離れてッ！」

//	DeleteAllSt(200,false);}
//	St("MR",700, @0,@0,"fu恵那_通常_angry");
//	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300220fje">
「ちょ、こらユージロー！！　やめなさい！」

//	DeleteAllSt(200,false);}
//	CreateSE("SE01","se擬音_ギャグ_腰振り");
//	MusicStart("SE01",0,700,0,1000,null,false);

//	St("ML",700, @0,@0,"buユージローa_通常_ero");
//	Shake("@StNameML/ML*", 200, 30, 0, 0, 0, 500, Axl3, false);
//	FadeSt("ML",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/000300230ujr">
「はっはっはっはっ！」

//	DeleteAllSt(200,false);}
//	St("L",700, @0,@0,"buＡＤ_通常_sad");
//	FadeSt("L",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/18/000300240adi">
「腰つき！　腰つきが！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	yurukakuDelete();



	SetVolumeEX("@xbgm*", 300, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//	DeleteAllSt(200,false);}
{	St("MR",700, @0,@50,"fu恵那_通常_angry");
Move("@StNameMR/MR*", 200, @0, @-50, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300250fje">
「やめなさーい！」


{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@50,"buユージローa_通常_normal");
Move("@StNameML/ML*", 200, @0, @-50, Dxl1, false);
	FadeSt("ML",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/000300260ujr">
「わう？」

{	CreateSE("SE10","seガヤ_交通少_l");
	MusicStart("SE10",2000,400,0,1000,null,true);}


{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"fu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300270fje">
「そんなことしちゃダメでしょ」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buユージローa_通常_sad");
	FadeSt("ML",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/000300280ujr">
「わぅ……」

{	DeleteAllSt(200,false);}
{	St("MR",700, @50,@0,"bu恵那_通常_shy");
Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300290fje">
「あの、ごめんなさいー。
　この犬、なんか美人に目がなくて……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@50,"buＡＤ_通常_sad");
Move("@StNameML/ML*", 200, @0, @-50, Dxl1, false);
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/18/000300300adi">
「はぁ……」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300310fje">
「ユージローもほら、帰ってきて」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buユージローa_通常_normal");
	Shake("@StNameML/ML*", 300, 0, 5, 0, 0, 1000, Dxl1, false);
	FadeSt("ML",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/000300320ujr">
「わう！」

{	CreateSE("SE02","se動物_イヌ_走る_l");
	MusicStart("SE02",200,700,0,1000,null,true);}

{	DeleteAllSt(200,true);}
{	SetVolume("SE02", 1000, 0, null);}
　道を横断して、近づいてくるユージロー。

　恵那は両手を掲げてそれを迎え――


{	St("C",700, @0,@0,"bu恵那_通常_happy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300330fje">
「うん。良い子良い――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);




//◆ＳＥ：車接近。

//◆ＳＥ：車衝突。キキー！　ドカーン！


//あきゅん「素材：evユージロー事故a」


	SetVolumeEX("SE*", 300, 0, null);

	CreateSE("SE02","seメカ_車_急ブレーキ");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateColorEXadd("絵色", 1500, "#FFFFFF");
	Fade("絵色", 500,1000, null, true);

	DeleteAllSt("C", 0,true);

	CreateTextureSP("絵背景", 1000, Center, Middle, "cg/ev/ev1800ユージロー事故a.jpg");
	Request("絵背景",Smoothing);
	Move("絵背景", 200, -110, -180, null, false);
	Zoom("絵背景", 200, 2000, 2000, null, false);

	FadeDelete("絵色", 300, null, true);
	SetVolume("SE02", 500, 0, null);
	CreateSE("SE01","se戦闘_打撃音06");
	MusicStart("SE01",0,800,0,1000,null,false);

	Shake("絵背景", 500, 20, 10, 4, 6, 500, null, true);
	FadeDelete("絵背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//	St("C",700, @0,@0,"buユージローa_通常_normal");
//	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/000300340ujr">
「キャウウウウウウン！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
{	St("L",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("L",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/18/000300350adi">
「え？」

{	DeleteAllSt(200,false);}

{	St("C",700, @0,@0,"bu恵那_哀愁_fear");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300360fje">
「きゃああああ！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
{	ClockPass(1803);}
//あきゅん「素材：evユージロー転倒a」

	CreateTextureEX("絵背景", 1001, Center, Middle, "cg/ev/ev1800ユージロー転倒a.jpg");
	Fade("絵背景", 500,1000, null, true);
	DeleteAllSt("C", 0,true);

{	SoundPlay("@xbgm26",3000,450,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0093]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300370fje">
「ユージロー！　ユージロー！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300380fje">
「聞こえる？　聞こえるでしょ！
　ちゃんと返事して！」

//	St("C",700, @0,@0,"buユージローa_通常_normal");
//	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/000300390ujr">
「く……くぅ～ん…………ゲフッ！」


//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300400fje">
「ユージロ――――ッ！！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateTextureSP("絵背景b", 1000, Center, Middle, "cg/ev/ev1800ユージロー転倒a.jpg");
	SetShade("絵背景b",MEDIUM);

	CreateTextureSP("絵過去背景", 1010, Center, Middle, "cg/ev/ev2210ユージロー転倒c.jpg");
	CreateTextureSPmul("絵過去色", 1500, Center, Middle, "cg/data/noize_01_00_0.png");
	SetTone("絵過去色", Monochrome);
	Wait(100);
	Fade("絵過去色", 0, 500, null, true);

	FadeDelete("絵過去*", 500, null, true);
	FadeDelete("絵背景", 1000, null, false);

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300410fje">
（また……だ）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300420fje">
（私、また……）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300430fje">
（大切なものを、失って――）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300440fje">
（そんなの、嫌）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu恵那_哀愁_fear");
	FadeSt("C",0,true);}

	FadeDelete("絵*", 500, null, true);



//◆演出指定：現実に戻る

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300450fje">
「そんなの、嫌ぁぁ――ッ！！」

{	SetVolume("@xbgm*", 3000, 0, null);}

{	DeleteAllSt(200,false);}
{	St("ML",700, @-50,@0,"buＡＤ_通常_normal");
Move("@StNameML/ML*", 200, @50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/18/000300460adi">
「あの、大丈夫ですか？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300470fje">
「…………え？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/18/000300480adi">
「ユージローくん、生きてますけど……」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300490fje">
「は？」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"buユージローa_通常_ero");
	Shake("@StNameC/C*", 200, 0, 4, 0, 0, 500, Dxl1, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/000300500ujr">
「くんかくんか！　くんかくんか！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300510fje">
「な！？　ユージロー！」

{	St("MR",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300520fje">
「どこ嗅いでるのよ――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);


//◆ＳＥ：殴る音・吹き飛ぶ音

	CreateSE("SE01","se戦闘_打撃音01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("絵ゆれ", 100, Center, Middle, "cg/bg/bg1601100小碓家_正面_通常.jpg");
	Shake("絵ゆれ", 300, 20, 5, 0, 0, 500, null, true);

	CreateSE("SE02","se擬音_ギャグ_落下");
	MusicStart("SE02",0,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/000300530ujr">
「きゃううぅぅ――――ん！！」

//◆ＳＥ：落下
{	CreateSE("SE01","se人体_倒れる02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵ゆれ", 300, 4, 30, 0, 0, 500, null, true);
	Fade("絵ゆれ", 0, 0, null, true);
}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/000300540ujr">
「げふっ！」

{	St("C",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/18/000300550adi">
「あ……死んだ」

{	DeleteAllSt(200,true);}

{	St("C",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300560fje">
「な……なに？　どういうこと」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1804);}


	SoundPlay("@xbgm08_noint",0,450,true);

{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300570fje">
「ユージローは間違いなく、車に轢かれたはず。
　なのにどうして、まだ生きてるわけ？」

//◆ＳＥ：ぴくぴく
{	CreateSE("SE01","se擬音_ギャグ_痙攣");
	MusicStart("SE01",0,700,0,1000,null,false);
}
{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"buユージローa_通常_normal");
//	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/000300580ujr">
「ぁぅぁ……ぁぅぁ……ぁぅ」

{	St("C",700, @0,@0,"buＡＤ_通常_angry");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/18/000300590adi">
「いや、早くしないとホントに死ぬ――」

{	DeleteAllSt(200,true);}


{	St("C",700, @0,@0,"fu恵那_一休_think");
	Zoom("絵ゆれ", 0, 2000, 2000, null, true);
	SetShade("絵ゆれ",MEDIUM);
	Fade("絵ゆれ", 200, 1000, null, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300600fje">
「もしや……何らかのトリックが？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("C",700, @0,@0,"fu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300610fje">
「双子の入れ替わり！？　首のすげ替え！？
　交換殺人！？　叙述トリック！？」

{	St("C",700, @0,@0,"fu恵那_一休_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300620fje">
「いずれにせよ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：これ、以降でセット演出

//◆ＥＶ："ev/ev0000恵那これは事件！？.txt"

//◆ＳＥ：パララー！

	KoreJikenStart();

	DeleteAllSt(0,true);


	SetVolumeEX("@xbgm*", 500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0155]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300630fje">
「これは事件！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("絵ゆれ", 0, 0, null, true);

//	DeleteAllSt(0,true);
//	TextBoxDelete(150);

//	KoreJikenEnd(500);

	KoreJikenFade(true);


{	ClockPass(1805);}

	St("ML",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/18/000300640adi">
「ええと、私急ぐんで、これで――」

{	DeleteAllSt(200,false);}
{	St("C",700, @50,@0,"bu恵那_通常_angry");
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300650fje">
「あ、待ってください！
　そっちにコンビニはないですよ！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/18/000300660adi">
「え？　どうしてそれを……」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300670fje">
「ふふーん、知りたいですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/18/000300680adi">
「え、ええ、まあ……」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu恵那_一休_pride");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300690fje">
「なあに、簡単な推理ですよ」


{	SoundPlay("@xbgm08_noint",0,450,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300700fje">
「大晦日の秋葉原。コミマ帰りのオタクたちで、街は結構賑わいます。イベントも多いでしょう」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300710fje">
「女性がひとりで歩いても不思議はない。
　しかし――あなたは今、手ぶらです」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	ClockPass(1806);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300720fje">
「コミマ帰りやイベント目当ての女性客が、果たして手ぶらで街を歩くでしょうか？」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300730fje">
「ならば地元の人間？　
　しかし、私はここに住んでいて、あなたを知らない」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300740fje">
「しかもあなたは、ケータイを見つめて何かを探している様子」


{	St("C",700, @0,@0,"bu恵那_一休_smile");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300750fje">
「そこで成り立つ自然な推測――
　あなたは仕事で、秋葉原にやってきた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("C",700, @0,@0,"bu恵那_一休_surprise");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300760fje">
「ところで今日、秋葉原で行われる大きなイベントは？」

{	St("C",700, @0,@0,"bu恵那_一休_smile");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300770fje">
「と推理すれば、あなたが『全国ゆるキャラバン』のスタッフで、温かい食べ物の買い出しに来たことは――」


{	SetVolumeEX("@xbgm*", 2000, 0, null);
	DeleteAllSt(200,false);
	CreateSE("SE10","seガヤ_交通少_l");
	MusicStart("SE10",2000,400,0,1000,null,true);}
{	St("ML",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/18/000300780adi">
「いやまあ推理はいいんだけど……
　コンビニがないって、ホントですか？」

//	St("C",700, @0,@0,"buＡＤ_通常_normal");
//	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/18/000300790adi">
「ほら、携帯の地図にも載ってるのに……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300800fje">
「ああ、更新が間に合ってないんですね。
　潰れたの３ヶ月前くらいかな？」


{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/18/000300810adi">
「そんな、じゃあどうすれば……」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300820fje">
「来る途中にありませんでした？　ＡＭ１１」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/18/000300830adi">
「あったけど、肉まんが売り切れてて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_一休_think");
	FadeSt("MR",200,true);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300840fje">
「それじゃあ、駅のすぐ側に――」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buＡＤ_通常_angry");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/18/000300850adi">
「そこもダメ。秋葉原中、なぜか全滅なんです」



{	St("C",700, @0,@0,"fu恵那_一休_angry");
	DeleteAllSt(200,false);
	Fade("絵ゆれ", 200, 1000, null, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300860fje">
「全滅？　まさか――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 1000, 0, null);

	TextBoxDelete(150);

//◆ＥＶ："ev/ev0000恵那これは事件！？.txt"

//◆ＳＥ：パララー！

	KoreJikenStart();
	#ev0000恵那これは事件！？私服 = true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0215]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300870fje">
「これは事件！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Delete("絵ゆれ");
//	St("C",700, @0,@0,"fu恵那_一休_angry");
//	FadeSt("C",0,true);
	DeleteAllSt(0,true);

//	CreateTextureSP("絵背景", 700, Center, Middle, "cg/ev/ev0000恵那これは事件！？私服_恵那.png");

//	TextBoxDelete(150);
//	KoreJikenEnd(500);

	KoreJikenFade(true);


{	ClockPass(1807);}

//	SoundPlay("@xbgm08_noint",1000,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300880fje">
「秋葉原中から消えた肉まん！
　なんだか……ミステリーの香りが！」

{	St("ML",700, @0,@0,"buＡＤ_通常_hard");
//	DeleteAllSt(200,false);
//	FadeDelete("絵ゆれ", 200, null, false);
	FadeDelete("絵背景", 200, Axl3, false);
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/18/000300890adi">
「ミステリーはまあいいんですけど。
　あの、それじゃ他に売ってるところ知りませんか？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300900fje">
「この近くだと、御徒町の方まで行かないと……」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/18/000300910adi">
「そ、そんなあ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);





//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_一休_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300920fje">
「でも、秋葉原中で全滅してるなら、向こうにある保証だってないですよね」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buＡＤ_通常_angry");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/18/000300930adi">
「時間がないんです！
　なにか、いいアイディアは――」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_一休_pride");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300940fje">
「……あ、そうだ」

{	St("MR",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300950fje">
「あの、もしかして、肉まんじゅうじゃなくて、本物のまんじゅうだったらだめですかね？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/18/000300960adi">
「本物の？
　まあ、ないよりはマシ……かな？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300970fje">
「私の知り合いに、売ってる人がいるんです」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000300980fje">
「クリスマス饅頭とか言ったかな？
　売れ残りだから、格安なはず……」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/18/000300990adi">
「量は？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1808);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_happy");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301000fje">
「死ぬほどあるみたいですよ。
　中央通りのアキバスポットで売ってます」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/18/000301010adi">
「…………仕方ない。
　若原Ｄには、それで我慢してもらうしかないですね」

{	St("ML",700, @0,@0,"buＡＤ_通常_smile");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/18/000301020adi">
「うん、ありがとうございます！　助かりました」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301030fje">
「いえ、こちらこそご迷惑おかけしました！」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"buユージローa_通常_pride");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/000301040ujr">
「わうーん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);
	WaitKey(500);

	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301050fje">
「けど……謎だわ。
　ユージロー、ホントに大丈夫？」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"buユージローa_通常_pride");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/000301060ujr">
「わう！」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301070fje">
「さっき、確かに車に吹き飛ばされたわよね……」


//	St("C",700, @0,@0,"bu恵那_通常_pinch");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301080fje">
「目の錯覚？　いやいや、そんなわけ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 1000, 0, null);
//	TextBoxDelete(150);
	SetVolume("@xbgm*", 2000, 0, null);


{	ClockPass(1809);}

//◆ＳＥ：雨
	CreateSE("SE03","se環境_雨_l");
	MusicStart("SE03",1000,700,0,1000,null,true);

	$SYSTEM_effect_rain_dencity=32;
	$SYSTEM_effect_rain_speed=128;

	CreateEffect("絵エフェクト１", 102, 0, 0, 1024, 576, "Rain");
	SetAlias("絵エフェクト１", "絵エフェクト１");
	Fade("絵エフェクト１", 0, 0, null, true);
	Fade("絵エフェクト１", 1000, 1000, null, true);

	St("C",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301090fje">
「う……雨」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"buユージローa_通常_normal");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/000301100ujr">
「わうわう！」

{	DeleteAllSt(200,true);}
　ユージローに促されるように、恵那は家の軒下に隠れる。


//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301110fje">
「嫌な雨」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301120fje">
「さっきまで、全然降りそうじゃなかったのに……」

//	St("C",700, @0,@0,"buユージローa_通常_normal");
//	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/000301130ujr">
「わう」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301140fje">
「…………」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1810);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0285]

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301150fje">
「あー」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301160fje">
「腹立ってきた」


//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301170fje">
「なんなのよ、コレ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

//◆ＳＥ：携帯ピッ
//◆演出指定：携帯電話
/*
差出人：バカチビ千秋
件名：ゴメン！
急用！今日は行けない。

宛先：バカチビ千秋
件名：Ｒｅ：ゴメン！
は？行けないってなんで！？

差出人：バカチビ千秋
件名：Ｒｅ：Ｒｅ：ゴメン！
オレにも色々ある

宛先：バカチビ千秋
件名：Ｒｅ：Ｒｅ：Ｒｅ：ゴメン！
説明してよ！家の前で待ってるから！ずっと待ってるからね！

差出人：バカチビ千秋
件名：Ｒｅ：Ｒｅ：Ｒｅ：Ｒｅ：ゴメン！
だから無理だって。うちの御札もヨロシク！


*/
//あきゅん「素材：obj携帯メール_恵那1800b」
//※下倉注：以上、やりとり追加

$kscr=2000;
	CreateTextureEX("絵オブメb", 110, Center, 170, "cg/obj/obj携帯メール_恵那1800b.png");//1024x222
	CreateTextureEX("絵オブ枠上", 111, Center, 270, "cg/obj/objIF携帯枠線.jpg");//1024x15//114
	CreateTextureEX("絵オブ枠下", 111, Center, 270, "cg/obj/objIF携帯枠線.jpg");//1024x15//405

	Zoom("絵オブメb", 0, 1000, 0, null, true);

	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(300);
	Fade("絵オブ*", 200, 1000, null, false);
	Move("絵オブ枠上", 200, @0, 170, Dxl1, false);
	Move("絵オブ枠下", 200, @0, 376, Dxl1, false);
	Zoom("絵オブメb", 200, 1000, 1000, Dxl1, true);

WaitKey($kscr);
	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureSP("絵オブメc", 109, Center, 170, "cg/obj/obj携帯メール_恵那1800c.png");//1024x222
	Wait(300);
	Delete("絵オブメb");
WaitKey($kscr);
	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureSP("絵オブメd", 108, Center, 170, "cg/obj/obj携帯メール_恵那1800d.png");//1024x222
	Wait(300);
	Delete("絵オブメc");
WaitKey($kscr);
	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureSP("絵オブメe", 107, Center, 170, "cg/obj/obj携帯メール_恵那1800e.png");//1024x222
	Wait(300);
	Delete("絵オブメd");
WaitKey($kscr);
	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureSP("絵オブメf", 106, Center, 170, "cg/obj/obj携帯メール_恵那1800f.png");//1024x222
	Wait(300);
	Delete("絵オブメe");

	SetVolume("SE*", 3000, 0, null);
	FadeDelete("絵エフェクト１", 2000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301180fje">
「『ヨロシク』って……あのバカチビ」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301190fje">
「来られないならせめて、理由くらい説明しなさいよね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
//	FadeDelete("絵窓", 500, null, true);
	FadeDelete("絵オブ*", 200, null, false);
	Move("絵オブ枠*", 200, @0, 270, Dxl1, false);
	Zoom("絵オブメ*", 200, 1000, 0, Dxl1, false);


{	ClockPass(1811);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
{	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301200fje">
「……なんで急に行けないんだろ？」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301210fje">
「今まで毎年、ふたりで納めに行ってたじゃない」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"buユージローa_通常_normal");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/000301220ujr">
「わう」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301230fje">
「何か、あったのかな？」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301240fje">
「メールに書けないくらい、急なこと……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
{	St("C",700, @0,@0,"bu恵那_一休_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301250fje">
「財布を盗んだ泥棒を追いかけたり……」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301260fje">
「銀行強盗に巻き込まれたり……」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301270fje">
「連続殺人事件に巻き込まれたり……」

{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301280fje">
「……まさか！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＥＶ："ev/ev0000恵那これは事件！？.txt"


//◆ＳＥ：パララー！

	KoreJikenStart();

	DeleteSt("C",0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301290fje">
「これは事件！？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	KoreJikenEnd(true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0321]
　ケータイの短い文面を眺めて――

　恵那は小さく、息を吐いた。

{	SoundPlay("@xbgm05",0,450,true);
	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301300fje">
「決めた。電話する」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	DeleteAllSt(200,true);}

{	ClockPass(1812);}


//◆ＳＥ：電話

	CreateSE("SE02","seメカ_携帯_電子音02");
	MusicStart("SE02",0,700,0,1000,null,false);
WaitKey(1000);
	CreateSE("SE02","seメカ_携帯_コール01_l");
	MusicStart("SE02",0,700,0,1000,null,false);
WaitKey(2000);

	SetVolume("SE0*", 100, 0, null);

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0325]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301310fje">
「あ、もしもし？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000301320kit">
『おう、なんだよ？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
//	SoundPlay("@xbgm11",3000,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
{	St("C",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301330fje">
「なんだじゃないでしょ！
　人をこんなに待たせておいて！」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000301340kit">
『だから、急用があるって言っただろ？』

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301350fje">
「そんなの許さない。
　ずっと家で待ってるって言ったでしょ」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000301360kit">
『んな無茶な』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301370fje">
「納得させるんだったら、せめて理由くらい言って」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000301380kit">
『理由って、あの、それは……』

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301390fje">
「それは？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000301400kit">
『…………』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301410fje">
「……言えないことなの？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000301420kit">
『まあ……』

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301430fje">
「どうしても？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000301440kit">
『そういう感じ……』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
{	St("C",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301450fje">
「はぁ……」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301460fje">
「なんで最初から、そう説明できないの？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000301470kit">
『……言ったって、怒るだろ？』

{	SetVolumeEX("@xbgm*", 2000, 1, null);
	St("C",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301480fje">
「怒るわよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1813);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301490fje">
「許すんだから怒るくらいさせなさいよ、バカチビ」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000301500kit">
『あ……うん』

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000301510kit">
『あの……ごめんなさい』

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301520fje">
「……まあ、いいわ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301530fje">
「アンタも困ってるみたいだし。
　今回だけは、許して――」

{	DeleteAllSt(200,true);
	SetVolumeEX("@xbgm05", 2000, 450, null);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000301540fjr">
『お話終わった？』

//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000301550kit">
『シッ！　ちょっと静かに！』

{	St("C",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301560fje">
「な、何？　今の声――<RUBY text="すずねえ">鈴姉</RUBY>？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000301570kit">
『いや、あの、まさかそんな……あはははは』

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301580fje">
「誤魔化さないでバカチビ！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301590fje">
「なんで私との約束を破って、<RUBY text="すずねえ">鈴姉</RUBY>といるのよ！」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000301600kit">
『待ってくれ！
　コレには深い、ふかーいワケが――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1814);}

//	SetVolume("@xbgm*", 1000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
{	St("C",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301610fje">
「知るか！　縮んじゃえバカチビ！」

//◆ＳＥ：電話切る
{	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301620fje">
「…………信じらんない」

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301630fje">
「もういいわ。ひとりで行ってやる」

{	DeleteAllSt(200,true);}
　恵那は道路を横断し、向かいの千秋の家へ。

　マンションに入り込み、玄関から目的の御札を手にとって帰ってくる。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	ClockPass(1815);}
{	ClockPass(1816);}

	CreateTextureEX("絵オブ", 100, Center, Middle, "cg/obj/obj御札.png");
	Move("絵オブ", 0, @0, @100, null, true);
	Move("絵オブ", 500, @0, @-100, DxlAuto, false);
	Fade("絵オブ", 500, 1000, null, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301640fje">
「これで、よし！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);


//あきゅん「素材：objエコバッグ」
//あきゅん「素材：御札」


	Move("絵オブ", 300, @0, @100, Dxl1, false);
	Fade("絵オブ", 300, 0, null, true);


	CreateSE("SE01","se動作_バッグ漁る");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵背景", 100, Center, Middle, "cg/obj/objエコバッグ.png");//432x352
	Move("絵背景", 0, @0, @100, null, true);

	Move("絵背景", 800, @0, @-100, Dxl1, false);
	Fade("絵背景", 500, 1000, null, true);

	SetVolume("SE*", 500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0411]
　自分の家の御札と共に、エコバッグに入れた。

{	Move("絵*", 300, @0, @100, Dxl1, false);
	FadeDelete("絵*", 300, null, true);}
{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301650fje">
「私との約束反故にして、鈴姉と一緒にいるなんて！
　信じられない！」

{	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301660fje">
「私より鈴姉が大事ってこと？」

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301670fje">
「大体さ、今日は鈴姉も忙しいとか言ってたじゃない！
　ライブがあるとか、ロクローさんのイベントとか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301680fje">
「千秋が一緒ってことは、もしかしてアレも全部嘘？
　私を騙して、ふたりっきりでなにを……」


{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"buユージローa_通常_pride");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/000301690ujr">
「わうわうわう！」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_一休_shy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301700fje">
「あ……そ、そうね」

{	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301710fje">
「千秋と鈴姉がどんなことしようと、私には関係ないし」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1817);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
{	St("C",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301720fje">
「ってか、なんでそんな真剣になって千秋のこと推理しなきゃならないわけ？　おかしいわよ」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000301730fje">
「さっさと御札納めて戻りましょ」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"buユージローa_通常_pride");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/000301740ujr">
「わうっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);


{	ClockPass(1818);}
{	ClockPass(1819);}

	//PrintGO("上背景", 25000);
	//FadeDelete("上背景", 500, null, true);

	SetVolumeEX("@xbgm*", 2000, 0, null);
	SetVolume("@SE*", 1000, 0, null);

//	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);
	Delete("絵エフェクト１");

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	EndScene();
}
