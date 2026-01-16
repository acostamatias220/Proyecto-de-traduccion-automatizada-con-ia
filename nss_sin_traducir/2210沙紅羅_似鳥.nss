
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2210沙紅羅_似鳥.nss_MAIN
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
	if($CharaName=="沙紅羅"){
		$GameName = "2220沙紅羅_似鳥_ノーコ.nss";
	}else{
		$GameName = "2220沙紅羅_似鳥_ノーコ.nss";
	}
//	$GameCircle=false;

}

scene 2210沙紅羅_似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1750">
////////////header////////////
//file name "2210沙紅羅_似鳥.nss"
//title "２ｂｉｒｄ・ブラック・ヒストリー"
//previous "2200沙紅羅_似鳥.nss"

////////////footer////////////
//next "沙紅羅" "2220沙紅羅_似鳥_ノーコ.nss"
//next "似鳥" "2220沙紅羅_似鳥_ノーコ.nss"

////////////body////////////


//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2211);}

//◆場所：銭形公園_全景
	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);

	CreateSE("SE11","seガヤ_交通少_l");
	MusicStart("SE11",2000,400,0,1000,null,true);

	if($PreGameName=="2200沙紅羅_似鳥.nss"){
	CreateSE("SE10","se動作_集団走る");
	MusicStart("SE10",0,1200,0,1000,null,false);
	Wait(1500);
	SetVolumeEX("SE10", 3000, 0, Axl2);
	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);
	Wait(1500);
	}else{
	FadeDelete("上背景", 0, null, true);
	}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("ML",700, @0,@0,"bu沙紅羅_通常_pain");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400010skr">
「はぁ……はぁ……ふぅ……」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_pinch");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400020skr">
「あっぶねー！　捕まるかと思ったぜ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/100400030mrp">
「警察怖くないとか言ってたくせに！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400040skr">
「うっせ！　今トラブるわけにはいかねーんだよ！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400050skr">
「でもあのモジャモジャ、全然追いかけてこなかったな。
　ケガでもしたのか……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/100400060mrp">
「で、どうするのこれから？
　お店はみんな閉まってるみたいだし――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100400070nki">
「…………」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400080skr">
「…………」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100400090nki">
「八方塞がり、か……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆ＳＥ：着信音
	CreateSE("SE01","seメカ_携帯_メール着信_似鳥_l");
	MusicStart("SE01",0,500,0,1000,null,false);

//窓準備
	CreateWindow("絵窓", 2000, 0, 96, 1024, 222, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 1000, Center, 100, "cg/obj/obj携帯メール_似鳥2210a.png");
//	CreateTextureSP("絵窓/絵演携帯", 1000, Center, 100, "cg/obj/obj沙紅羅携帯液晶部分と占い.png");

//カット枠準備
	CreateTextureEX("絵背景枠01", 1920, Center, 194, "cg/obj/objIF携帯枠線.jpg");
	CreateTextureEX("絵背景枠02", 1920, Center, 194, "cg/obj/objIF携帯枠線.jpg");



	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100400100nki">
「こんな時に、メールかよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//あきゅん「素材：obj携帯メール_似鳥2210a」

	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,true);


//窓開き動作
	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 200, @0, 100, Dxl2, false);
	Move("絵背景枠02", 200, @0, 304, Dxl2, false);
	Zoom("絵窓", 200, 1000, 1000, Dxl2, true);

//	St("C",700, @0,@0,"bu似鳥_通常_sad");
//	FadeSt("C",200,true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030a]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100400110nki">
「――<RUBY text="たちばな">大刀刃那</RUBY>」

{
//	DeleteAllSt(200,false);
//	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("ML",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400120skr">
「ん？　タチバナ？」

{
//	DeleteAllSt(200,false);
//	St("C",700, @0,@0,"bu似鳥_通常_angry");
//	FadeSt("C",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100400130nki">
「ったく、ふざけんなよ！」

{
//	St("C",700, @0,@0,"bu似鳥_通常_pinch");
//	FadeSt("C",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100400140nki">
「コミマ中は全然連絡よこさないでおいて――！！
　今さら連絡よこすとか！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	Zoom("絵窓", 200, 1000, 0, Dxl2, false);
	Move("絵背景枠01", 200, @0, 194, Dxl2, false);
	Move("絵背景枠02", 200, @0, 194, Dxl2, 100);
	Fade("絵背景枠01", 100, 0, null, false);
	Fade("絵背景枠02", 100, 0, null, true);

	Delete("絵窓*");
	Delete("絵背景枠*");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400150skr">
「なあ、そいつ誰だよ」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100400160nki">
「ネットの友達。
　アキバ系界隈じゃ、そこそこ有名なんだけど」

{	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100400170nki">
「コイツにおだてられて今回爆死したんだ。
　オレのファンだとか、テキトー言っててさ……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400180skr">
「タチバナが……おまえのファン？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE02","seメカ_携帯_電子音01");
	MusicStart("SE02",0,700,0,1000,null,false);
	SetVolumeEX("SE01", 10, 0, null);

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆演出指定：メール画面：確認
/*
差出人：大刀刃那（ＰＣ）
件名：今日はｽﾏｿ
本文
急用で行けなかった。連絡もよこせずスミマセヌ……で、そのお詫びと言ってはナンだけど、Ｐｌｅａｓｅってお店知ってる？そこで君にプレゼントしたいものがあるんで、今すぐ来てもらえるとよいかと？Ｐ．Ｓ．もう少しテレビを意識した発言を
*/
//あきゅん「素材：obj携帯メール_似鳥2210b」

//おがみ：β演出：携帯画面表示　素材まち

	CreateTextureEX("絵背景100b", 100, Center, Middle, "cg/bg/bg1701100銭形公園_全景_通常.jpg");
	SetShade("絵背景100b", MIDEUM);

//あきゅん「演出：10/12/17パッチで変更」
//	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/obj/obj携帯メール_似鳥2210b.png");
//	Zoom("絵背景100", 0, 0, 1000, null, true);
//	Fade("絵背景100", 0, 1000, null, true);
//	Zoom("絵背景100", 300, 1000, 1000, Dxl1, false);
//	Fade("絵背景100b", 300, 1000, null, true);

	CreateAXLPhWindowEX("絵演窓", "Y", 2000, 192, 192, false);
	PhWindowAXLZoom("絵演窓", "Y", 0, 0, null, true);

	CreateTextureSP("絵演窓/絵背景携帯", 1110, Center, 192, "cg/obj/obj携帯メール_似鳥2210b.png");
	CreateTextureSP("絵演窓/絵背景", 1010, Center, Middle, "cg/obj/objIF背景_似鳥.png");

	PhWindowAXLZoom("絵演窓", "Y", 500, 1000, null, true);
	WaitKey(2000);

	Move("絵演窓/絵背景携帯", 300, @0, 86, AxlDxl, true);
	WaitKey(3000);

	Move("絵演窓/絵背景携帯", 300, @0, 0, AxlDxl, true);
	WaitKey(3000);

	Move("絵演窓/絵背景携帯", 300, @0, -136, AxlDxl, true);
	WaitKey(3000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100400190nki">
「あいつ……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2212);}

	TextBoxDelete(150);
	PhWindowAXLZoom("絵演窓", "Y", 500, 0, null, true);
	Delete("@絵演窓*");

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/100400200mrp">
「行くの？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100400210nki">
「別に無視したって――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400220skr">
「今の様子、テレビで映してるんだよな？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/100400230mrp">
「え……？　あ、うん。もちろん」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400240skr">
「行こう」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100400250nki">
「どうせろくでもないプレゼント――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_後ろ向き_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400260skr">
「いいから行くんだよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	FadeQ($C_次,0,0,200,0,20,Dxl1,false);
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100400270nki">
「お……おう」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400280skr">
「ちなみに、コイツの連絡先知ってるか？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100400290nki">
「知ってるけど――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400300skr">
「ちょっと、電話かけさせてくれ」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100400310nki">
「あー、無理無理。今日は全然出なかったんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100400320nki">
「急用とか言ってるわりにメールだし、なんか電話使えない都合でもあんじゃないのか？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400330skr">
「…………」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100400340nki">
「どうした？　そんな暗い顔して」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400350skr">
「いや、アタシの本名な……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400360skr">
「橘、桜っていうんだ。タチバナ、サクラ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SoundPlay("@xbgm25",0,450,true);

	SetVolumeEX("SE*", 3000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/100400370mrp">
「どっちも、タチバナ……？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400380skr">
「アタシはショージキ、頭が悪い。
　それは自分でもよーくわかってる」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400390skr">
「けどな。当てずっぽうで言わせてもらえば、おまえのファンだっていう大刀刃那ってヤツ――」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400400skr">
「アタシの弟なんじゃねーか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100400410nki">
「弟……」

{	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100400420nki">
「弟って……おまえの、弟？」

{	St("MR",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100400430nki">
「…………マジで？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400440skr">
「仕事とか、聞いたことねぇか？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100400450nki">
「ゲーム会社。
　<RUBY text="ジボクコート">二卜口十</RUBY>でプログラマを――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400460skr">
「ああ、やっぱり！　確かそんな名前だった！
　ぱそこんは昔から得意なヤツでさ！」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400470skr">
「クソッ！　こんな近くに知り合いいるんなら――
　もうちょっとなんかこう、やりようが――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100400480nki">
「確かに――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/100400490mrp">
「後悔先に立たずよ。
　ふたりとも、Ｐｌｅａｓｅに急ぎましょ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateSE("SE10","se動作_集団走る");
	MusicStart("SE10",0,1200,0,1000,null,false);

	SetVolumeEX("@xbgm*", 3000, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);



{	ClockPass(2213);}

//◆場所：プリーズ_店内
	OnBG(10,"bg2101100プリーズ_店内_通常");
	FadeBG(0,true);

	SetVolumeEX("SE10", 2000, 0, Axl2);
	Wait(1000);


	CreateSE("SE01","se動作_ドア開ける01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);


	Wait(200);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【マダム】
<voice name="マダム" class="その他女声" src="voice/22/100400500e04">
「あらあら、いらっしゃい。
　また来て下さって、どうもね」

{	St("C",700, @0,@0,"buミリＰa_ショータイム_happy");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/100400510mrp">
「あ、どうもー」

{	DeleteAllSt(200,true);}
//【マダム】
<voice name="マダム" class="その他女声" src="voice/22/100400520e04">
「テレビ、見てましたわよー」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SoundPlay("@xbgm32",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/22/100400530e06">
「うわ！　本物だ！　本物！　スゲー！」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/22/100400540e05">
「あの、こっちです、こっち！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400550skr">
「誰だよおまえら！」

{	DeleteAllSt(200,true);}
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/22/100400560e05">
「……憶えてもらえてるとは思ってないので大丈夫です」

{	St("MR",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100400570nki">
「もしかして、おまえたちが大刀刃那――？」

{	DeleteAllSt(200,true);}
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/22/100400580e06">
「の、代理の者です！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100400590nki">
「代理人？」

{	DeleteAllSt(200,true);}
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/22/100400600e06">
「ノーコさんに一目惚れして、ネットで情報を漁ったらなんかメチャクチャ実況スレとかダベリとかされてて」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/22/100400610e06">
「そこで大刀刃那さんに<RUBY text="ダベメ">ＤＭ</RUBY>もらって。彼とは古いつきあいなんですよ。世間って狭いですね！」

{	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100400620nki">
「は……はぁ」

{	DeleteAllSt(200,true);}
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/22/100400630e05">
「これ、見て下さい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆演出指定：ノーコ同人誌表紙・タイトルは「ノーコントロール１０」ボーカロイド的な表紙
//おがみ：β要演出箇所：優先度Ａ　ダミーがまだない　とりあえずPCを出した
//あきゅん「↑：スマガノートＰＣはまだ一般流通しておらず、タチバナが持っていたひとつしかない設定、なので使用は絶対ＮＧ」

//あきゅん「素材：imgノーコントロール10」
//	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/obj/objノートＰＣ.png");
//	Move("絵背景100", 0, @0, @50, null, true);
//	Move("絵背景100", 500, @0, @-50, Dxl1, false);
//	Fade("絵背景100", 500, 1000, null, true);

//嶋：修正してみました
	DeleteAllSt(200,true);

	CreateTextureEX("絵背景100", 120, Center, Middle, "cg/img/imgノーコントロール10.jpg");
	Fade("絵背景100", 500, 1000, null, true);

//	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
//	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400640skr">
「これは……ノーコ！？」

//	DeleteAllSt(200,false);
//	St("MR",700, @0,@0,"bu似鳥_通常_worry");
//	FadeSt("MR",200,true);
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100400650nki">
「オレの同人誌が……なんで？」

{
//	Move("絵背景100", 400, @0, @50, Axl1, false);
	Fade("絵背景100", 300, 0, null, true);
	Delete("絵背景100");
	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100400660nki">
「うわ！　ちょっと、テレビに撮るとかやめて！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/100400670mrp">
「うるさい！　今更じたばた言わないの！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400680skr">
「でも、なんでこんな本が……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/22/100400690e05">
「大刀刃那さんが自炊したんだそうです」

{	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400700skr">
「自炊？　米でも炊いたのか？」

{	DeleteAllSt(200,true);}
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/22/100400710e05">
「あ、いえ。本を自分で裁断してスキャン――データ化することのことです」

{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400720skr">
「切っちまうのか？　もったいない――」

{	DeleteAllSt(200,true);}
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/22/100400730e06">
「観賞用をバラしたんで大丈夫らしいです！
　最早これは世界の常識ですね！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400740skr">
「で、なんで歌とか歌ってんだよ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100400750nki">
「べ、別に流行とか好きじゃねぇけど、ほら！
　お客さんがどうしてもっていうから……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400760skr">
「流行に流された？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_rage");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100400770nki">
「流されてないし！　研究の成果だし！
　それに全然流行に乗れて売れたりしなかったし……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2214);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/100400780mrp">
「時代の風を、掴み損ねたのね……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100400790nki">
「余計なお世話だ！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400800skr">
「ふぅん、なるほどね。
　こうやって、ノーコをもっと深く知ることが――」

{	DeleteAllSt(200,true);}
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/22/100400810e05">
「ちょっと待った――！
　この次は放映できないですよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/100400820mrp">
「あ……ええ、ありがと」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400830skr">
「――――！？」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_shy");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400840skr">
「もしかして……エッチいのか？」

{	DeleteAllSt(200,true);}
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/22/100400850e06">
「はい」

{	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400860skr">
「…………わかった」

{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_shy");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400870skr">
「後ろ向いとくから、ちゃんと、確認してくれ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆ＳＥ：ページめくり
	CreateSE("SE01","se環境_マウスクリック02");
	MusicStart("SE01",0,1500,0,1000,null,false);


	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/22/100400880e05">
「ファン感謝祭とか……
　ベタ過ぎる展開に現状が把握できない」

{	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100400890nki">
「ベタにはベタなりの理由があるという研究の成果――」

{	DeleteAllSt(200,true);}
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/22/100400900e06">
「フェラシーンは身体描かなくていいから楽だよなー」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100400910nki">
「時間もなかったからしょうがないだろ！」

{	CreateSE("SE01","se環境_マウスクリック02");
	MusicStart("SE01",0,1500,0,1000,null,false);
	DeleteAllSt(200,true);}
//【マダム】
<voice name="マダム" class="その他女声" src="voice/22/100400920e04">
「あらあら？　後ろの穴まで使われちゃうの？」

{	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100400930nki">
「マダム！　ちょっと、勘弁してください！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400940skr">
「実況とかいいから、役に立ちそうなところ探せ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/100400950mrp">
「そうよ！　時間がないわ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateSE("SE01","se環境_マウスクリック02");
	MusicStart("SE01",0,1500,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/22/100400960e05">
「はいはい、わかってます！
　おまけページには設定とか……」

{	St("ML",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/100400970mrp">
「これは映してもＯＫね？
　どれどれ……意外と演歌が得意」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100400980skr">
「……だからどうしたって感じだな」

{	DeleteAllSt(200,true);}
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/22/100400990e05">
「料理は苦手か」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2215);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100401000skr">
「それは知ってる」

{	DeleteAllSt(200,true);}
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/22/100401010e06">
「彼氏はいない――」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/22/100401020e05">
「趣味は切り絵――」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/22/100401030e06">
「前世の記憶があると主張――」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/22/100401040e05">
「合い言葉は――『ほふれ』」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100401050nki">
「そんなところ……かな」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100401060skr">
「たったそれだけ？
　おいおい、それでどうやって決着を――」

{	DeleteAllSt(200,true);}
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/22/100401070e05">
「こんなこともあろうかと！　大刀刃那さんが送ってきてくれたのは、これだけじゃありません」

{	SetVolumeEX("@xbgm*", 1000, 0, null);}
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/22/100401080e05">
「いざ、ご覧じろ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SoundPlay("@xbgm03",0,450,true);


	TextBoxDelete(150);

//おがみ：β要演出箇所：優先度Ａ　フォルダに「のーこんと～～」がたくさんあるやつ　なければ作るか

	CreateSE("SE01","se環境_マウスクリック02");
	MusicStart("SE01",0,1500,0,1000,null,false);

	Wait(800);

	CreateTextureEX("絵背景100", 120, Center, Middle, "cg/img/img2birdフォルダ.jpg");
//	Move("絵背景100", 0, @0, @50, null, true);
//	Move("絵背景100", 500, @0, @-50, Dxl1, false);
	Fade("絵背景100", 200, 1000, null, true);

	Wait(800);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{
//	St("MR",700, @0,@0,"bu似鳥_通常_shock");
//	FadeSt("MR",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100401090nki">
「今までコミマに出した『ノーコントロール』が全部？」

{
//	DeleteAllSt(200,false);
//	St("ML",700, @0,@0,"buミリＰa_通常_smile");
//	FadeSt("ML",200,true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/100401100mrp">
「これだけ辿れば、きっとどれかひとつはヒントが――」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100401110nki">
「げ！　まだやるのか！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	Move("絵背景100", 300, @0, @50, Axl1, false);
	Fade("絵背景100", 300, 0, null, true);
	Delete("絵背景100");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/22/100401120e06">
「ええと……大変だな」

{	CreateSE("SE01","se環境_マウスクリック02");
	MusicStart("SE01",0,1500,0,1000,null,false);}
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/22/100401130e06">
「弾幕シューティングのキャラクターになったり、戦う球体関節人形になったり……」

{	St("C",700, @0,@0,"fu似鳥_眼鏡上げ_mad");
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeQ($C_次,0,0,200,0,50,Dxl1,false);
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100401140nki">
「ぐはっ！　やめろ！　やめてくれ！」

{	DeleteAllSt(200,true);}
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/22/100401150e05">
「なんか、どういう過去を辿ってきたか丸わかり……」

{	St("ML",700, @0,@0,"buミリＰa_通常_pinch");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/100401160mrp">
「っていうか、なによこの『空を飛ぶことができる』とか『あらゆるものを断ち切る絶対能力』とか！」

{	St("ML",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/100401170mrp">
「こういう設定創るから苦労するんじゃない！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"fu似鳥_通常_rage");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100401180nki">
「うるさい！　こんなことになるとか普通思わないし！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	CreateSE("SE01","se環境_マウスクリック02");
	MusicStart("SE01",0,1500,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/22/100401190e06">
「バーチャルネットアイドルノーコ２万１千９歳？」

{	St("C",700, @0,@0,"fu似鳥_眼鏡上げ_shock");
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeQ($C_次,0,0,200,0,50,Dxl1,false);
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100401200nki">
「ちょっと、本気で恥ずかしいんですけど！」

{	DeleteAllSt(200,true);}
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/22/100401210e06">
「この本……１８禁とか書いてあるのに、描いてる人ホントに１８歳以上か……？」

{	St("C",700, @0,@0,"fu似鳥_通常_rage");
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeQ($C_次,0,0,200,0,50,Dxl1,true);
	FadeSt("C",200,true);
	}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100401220nki">
「ぎゃー！　やめて！　おねがい！　勘弁して！」

{	DeleteAllSt(200,true);}
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/22/100401230e05">
「随分絵が拙い感じになったっていうか……
　まあ、しょうがないんでしょうけど」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2216);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{	St("C",700, @0,@0,"fu似鳥_通常_shout");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100401240nki">
「うん、若気の至り！　ね！　ね！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/100401250mrp">
「ここまで抽象化が進むと、テレビに映しても平気ね」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"fu似鳥_通常_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100401260nki">
「やめよう！　これ以上は無理！」

{	DeleteAllSt(200,true);
	CreateSE("SE01","se環境_マウスクリック02");
	MusicStart("SE01",0,1500,0,1000,null,false);}
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/22/100401270e05">
「ええと、何々……？
　<RUBY text="アンチ・クライシス">Ｕ．Ｃ．</RUBY>元年、世界を二分した『聖陰大戦』――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/22/100401280e05">
「<RUBY text="カイザー・オブ・ダークネス">堕皇</RUBY>ルシフェルの魂は煉獄に囚われながら、生き別れた<RUBY text="スラッシャー・ワン">切裂闇使</RUBY>ノーコを思い続けていた」

{	St("C",700, @0,@0,"fu似鳥_通常_shock");
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeQ($C_次,0,0,200,0,50,Dxl1,false);
	FadeSt("C",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100401290nki">
「いやいやいや、マジで勘弁！」

{	DeleteAllSt(200,true);}
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/22/100401300e05">
「２万年後の現代に転生したふたりの超形而上学的存在は、運命の赤い糸により再び出会うことになった……」

{	St("ML",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/100401310mrp">
「かつて<RUBY text="カイザー・オブ・ダークネス">堕皇</RUBY>ルシフェルと呼ばれた男――その名は――」

{	DeleteAllSt(200,true);}
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/22/100401320e06">
「似鳥、戴斗ぉぉ……！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	SetVolumeEX("SE*", 200, 0, null);
	SetVolumeEX("@xbgm*", 200, 0, null);


{	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//◆音声指示：一喝
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100401330skr">
「いい加減にしやがれッッ！！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100401340skr">
「てめぇら、何様だ！？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100401350skr">
「確かに下手くそかもしれねぇけどな！！
　格好つけかもしんねぇけどな！！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100401360skr">
「描いたヤツが本気だって、見りゃわかんだろ！
　精一杯だって、わかんだろ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100401370skr">
「アタシにはできねぇ！　死んでもできねぇぞ！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100401380skr">
「この本を指さして笑うヤツは、今すぐ、このアタシを指さして笑えよ！　笑えよ！　笑えんのかよッ！？」

{	DeleteAllSt(200,true);}
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/22/100401390e05">
「…………」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/22/100401400e06">
「…………」

{	St("ML",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/100401410mrp">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100401420skr">
「おい似鳥！　てめぇもてめぇだ！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100401430skr">
「そうやって、逃げんのか？」

{
//	SoundPlay("@xbgm26",0,450,true);

	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100401440nki">
「え……？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100401450skr">
「コイツはな、似鳥。
　てめぇがなくした、過去だぜ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2217);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
{	St("ML",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100401460skr">
「誰だって、逃げたい過去の一つや二つ、持ってんだ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100401470skr">
「アタシだって、そうだ」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100401480skr">
「でもよ、似鳥」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100401490skr">
「人間いつか、逃げてばっかりじゃいられなくなるんだぜ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100401500nki">
「逃げて……ばかりじゃ……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100401510skr">
「目を背けないで、行こうぜ似鳥」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100401520skr">
「今日から、反撃開始だ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100401530nki">
「…………」

{	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100401540nki">
「そうか」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100401550nki">
「オレ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
{	St("MR",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100401560nki">
「ずっと、逃げてたんだな」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100401570skr">
「たぶん、な」

{	SoundPlay("@xbgm23",0,450,true);
	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_happy");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100401580nki">
「……ウシッ！」

{	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100401590nki">
「あのさ、悪いけど最初の同人誌、あるか？」

{	DeleteAllSt(200,true);}
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/22/100401600e06">
「あ……ああ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/22/100401610e06">
「『ＮＯ　ＣＯＮＴＲＯＬ』無印……と」

//◆ＳＥ：マウスカチカチッ！！
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/22/100401620e05">
「あ……これは……」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/22/100401630e05">
「あにのあなの……屋上？」

{	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100401640nki">
「ああ……そうだ」

{	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100401650nki">
「そうだった」

{	St("MR",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100401660nki">
「ここから……全部、始まったんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	Move("@StNameMR/MR*", 200, @50, @0, Axl1, false);
	DeleteAllSt(200,true);


	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
{	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100401670skr">
「え……？　似鳥、どこに」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	Move("@StNameMR/MR*", 200, @50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100401680nki">
「ノーコを、迎えに行ってくる」

{
	Move("@StNameMR/MR*", 200, @50, @0, Axl1, false);
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/100401690skr">
「アタシも行く！」

{
	Move("@StNameML/ML*", 200, @50, @0, Axl1, false);
	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミリＰa_通常_pinch");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/100401700mrp">
「ちょっと！　アタシをおいていかないでよッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	Move("@StNameC/C*", 200, @50, @0, Axl1, false);
	DeleteAllSt(200,true);

	CreateSE("SE01","se動作_走る05_l");
	MusicStart("SE01",0,700,0,1000,null,true);


{	ClockPass(2218);}

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

//◆場所：秋葉原_中央通り
	OnBG(10,"bg0103200秋葉原_中央通り_閉店");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
{	St("C",700, @0,@0,"fu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100401710nki">
「ノーコ……ごめんな、ノーコ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);


	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

//◆場所：あにのあな_正面
//おがみ：ここは、電気ついてるのかしら。閉店してるはずだけど
//※下倉注：大晦日は終日営業であります 2010/11/08
//おがみ：理解
	OnBG(10,"bg0301111あにのあな_正面_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

	St("C",700, @0,@0,"fu似鳥_通常_sad");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0381]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100401720nki">
「オレ……やっと、わかった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

{	ClockPass(2219);}


//◆場所：あにのあな_店内
	OnBG(10,"bg0302100あにのあな_店内_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

	St("C",700, @0,@0,"fu似鳥_通常_sad");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0382]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100401730nki">
「もう少し――もう少しだから――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	SetVolumeEX("SE*", 2000, 0, null);
	SetVolumeEX("@xbgm*", 1000, 0, null);


	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

//◆場所：あにのあな_屋上
	OnBG(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);

	CreateSE("SE20","se環境_風_l");
	CreateSE("SE21","se環境_風低音_l");
	MusicStart("SE20",4000,2000,0,1000,null,true);
	MusicStart("SE21",4000,1000,0,1000,null,true);

//◆演出指定：アザナエルを手にするノーコ
	CreateTextureEX("絵背景100", 200, Center, Middle, "cg/bu/buノーコa_銃構え_normal.png");
	Move("絵背景100", 0, @900, @-50, null, true);
	Fade("絵背景100", 0, 1000, null, true);

	CreateTextureEX("絵背景200a", 100, 0, Middle, "cg/bg/l/bg0303100あにのあな_屋上_通常_l.jpg");
	Fade("絵背景200a", 0, 1000, null, true);

	CreateTextureEX("絵背景200b", 100, 0, Middle, "cg/bg/l/bg0303100あにのあな_屋上_通常_l.jpg");
	SetShade("絵背景200b", HEAVY);

	CreateMovieEX("ムービー１", 11000, Center, Middle, true, true, "dx/mvk100.ngs");
	Request("ムービー１", AddRender);
	Zoom("ムービー１", 0, 3000, 3000, null, true);
	Fade("ムービー１", 0, 1000, null, true);


	Wait(500);

	DrawDelete("絵黒幕", 500, 100, null, "slide_01_02_1", false);

	Move("絵背景100", 3000, @-10, @0, null, false);
	Move("絵背景200*", 3000, -100, @0, null, true);
	Fade("絵背景200b", 300, 1000, null, false);
	Move("絵背景100", 300, @-860, @0, AxlDxl, false);
	Move("絵背景200*", 300, -512, @0, AxlDxl, true);

	Delete("絵背景200a");

	WaitKey(1000);


	CreatePlainSP("揺用", 2005);
	Delete("絵背景*");

	Fade("ムービー１", 500, 0, null, false);
	Fade("揺用", 500, 0, null, true);
	Delete("揺用");

	Request("ムービー１", Stop);
	Delete("ムービー１");

//◆ＳＥ：扉がバタンと開く
	CreateSE("SE02","se動作_ドア蹴破る");
	MusicStart("SE02",0,1200,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
{	St("C",700, @0,@50,"bu似鳥_通常_shout");
	Shake("@StNameC/C*", 200, 5, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100401740nki">
「まてッ！！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/100401750nki">
「ノーコ、待て！　待つんだッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_カッター_刃出す03遅いa");
	MusicStart("SE01",0,2000,0,500,null,false);


	TextBoxDelete(150);

	DeleteAllSt(200,true);

	SetVolumeEX("SE*", 3000, 0, null);





	EndScene();
}
