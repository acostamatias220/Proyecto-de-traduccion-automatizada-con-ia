
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene b2050千秋.nss_MAIN
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
	$GameName = "b2110沙紅羅_千秋_フウリ.nss";
}

scene b2050千秋.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1330">
////////////header////////////
//file name "b2050千秋.nss"
//title "念願成就！？"
//previous "2050カゴメ2.nss"

////////////footer////////////
//next "千秋" "b2110沙紅羅_千秋_フウリ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
{	ClockPass(2050);}

//◆場所：バックギャモン_店内
	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);

//定義
	Kagome_AllEffect_Set(3000);

	FadeDelete("上背景", 200, null, true);

//動作
	Kagome_AllEffect_Start();

	Wait(2500);

//消去
	Kagome_AllEffect_Delete(2000);

	Wait(3000);

	SoundPlay("@xsong01",0,2,true);

//◆演出指定：願いが叶う演出
//あきゅん「修正指示：願いの叶う演出を入れてください」

//あきゅん「β演出：千秋の体だけ発光しているような感じに」

	CreateSE("SE01","se擬音_光り輝く02");
	MusicStart("SE01",0,700,0,1000,null,false);

{	St("C",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("C",200,true);}

	CreatePlainSP("絵板写", 5000);
	CreateTextureEXadd("絵演発光効果", 710, Center, 576, "cg/bu/bu千秋_通常_sad.png");
	$CharaPos=672-ImageVertical("絵演発光効果");
	Move("絵演発光効果", 0, @0, $CharaPos, null, true);
	Fade("絵演発光効果", 0, 500, null, true);

	CreateTextureEXadd("絵背景", 710, Center, 576, "cg/bu/bu千秋_通常_sad.png");
	$CharaPos=672-ImageVertical("絵背景");
	$CharaYCenter=(ImageVertical("絵背景")-96)/2;
	SetVertex("絵背景", center, $CharaYCenter);
	Move("絵背景", 0, @0, $CharaPos, null, true);
	Fade("絵背景", 0, 500, null, true);
	FadeDelete("絵板写", 300, null, true);

	LcPro_b2050chiakiFlash("@絵演発光効果");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200010kit">
「ぁ――――――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);

{	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("C",0,true);}

	CreateTextureEXadd("絵演発光効果", 710, Center, 576, "cg/bu/bu千秋_朗らか_shock.png");
	$CharaPos=672-ImageVertical("絵演発光効果");
	Move("絵演発光効果", 0, @0, $CharaPos, null, true);
	Fade("絵演発光効果", 0, 500, null, true);

	FadeDelete("絵板写", 300, null, true);

	CreateTextureEXadd("絵背景", 710, Center, 576, "cg/bu/bu千秋_朗らか_shock.png");
	$CharaPos=672-ImageVertical("絵背景");
	$CharaYCenter=(ImageVertical("絵背景")-96)/2;
	SetVertex("絵背景", center, $CharaYCenter);
	Move("絵背景", 0, @0, $CharaPos, null, true);
	Fade("絵背景", 0, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200020kit">
（光……？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);

{	St("C",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("C",0,true);}

	CreateTextureEXadd("絵演発光効果", 710, Center, 576, "cg/bu/bu千秋_通常_worry.png");
	$CharaPos=672-ImageVertical("絵演発光効果");
	Move("絵演発光効果", 0, @0, $CharaPos, null, true);
	Fade("絵演発光効果", 0, 500, null, true);

	FadeDelete("絵板写", 300, null, true);

	CreateTextureEXadd("絵背景", 710, Center, 576, "cg/bu/bu千秋_通常_worry.png");
	$CharaPos=672-ImageVertical("絵背景");
	$CharaYCenter=(ImageVertical("絵背景")-96)/2;
	SetVertex("絵背景", center, $CharaYCenter);
	Move("絵背景", 0, @0, $CharaPos, null, true);
	Fade("絵背景", 0, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010c]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200030kit">
（オレの身体を……光が……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);

{	St("C",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("C",0,true);}

	CreateTextureEXadd("絵演発光効果", 710, Center, 576, "cg/bu/bu千秋_通常_angry.png");
	$CharaPos=672-ImageVertical("絵演発光効果");
	Move("絵演発光効果", 0, @0, $CharaPos, null, true);
	Fade("絵演発光効果", 0, 500, null, true);

	FadeDelete("絵板写", 300, null, true);

	CreateTextureEXadd("絵背景", 710, Center, 576, "cg/bu/bu千秋_通常_angry.png");
	$CharaPos=672-ImageVertical("絵背景");
	$CharaYCenter=(ImageVertical("絵背景")-96)/2;
	SetVertex("絵背景", center, $CharaYCenter);
	Move("絵背景", 0, @0, $CharaPos, null, true);
	Fade("絵背景", 0, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010d]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200040kit">
（そうだ……願い！
　願いを叶えるんだッ！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	CreatePlainSP("絵板写", 5000);

{	St("C",700, @0,@0,"fu千秋_気合い_hard");
	FadeSt("C",0,true);}

	CreateTextureEXadd("絵演発光効果", 710, Center, 576, "cg/fu/fu千秋_気合い_hard.png");
	$CharaPos=672-ImageVertical("絵演発光効果");
	Move("絵演発光効果", 0, @0, $CharaPos, null, true);
	Fade("絵演発光効果", 0, 500, null, true);

	FadeDelete("絵板写", 300, null, true);

	CreateTextureEXadd("絵背景", 710, Center, 576, "cg/fu/fu千秋_気合い_hard.png");
	$CharaPos=672-ImageVertical("絵背景");
	$CharaYCenter=(ImageVertical("絵背景")-96)/2;
	SetVertex("絵背景", center, $CharaYCenter);
	Move("絵背景", 0, @0, $CharaPos, null, true);
	Fade("絵背景", 0, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020a]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200050kit">
（お願いです、神様！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);

{	St("C",700, @0,@0,"fu千秋_気合い_shout");
	FadeSt("C",0,true);}

	CreateTextureEXadd("絵演発光効果", 710, Center, 576, "cg/fu/fu千秋_気合い_shout.png");
	$CharaPos=672-ImageVertical("絵演発光効果");
	Move("絵演発光効果", 0, @0, $CharaPos, null, true);
	Fade("絵演発光効果", 0, 500, null, true);

	FadeDelete("絵板写", 300, null, true);

	CreateTextureEXadd("絵背景", 710, Center, 576, "cg/fu/fu千秋_気合い_shout.png");
	$CharaPos=672-ImageVertical("絵背景");
	$CharaYCenter=(ImageVertical("絵背景")-96)/2;
	SetVertex("絵背景", center, $CharaYCenter);
	Move("絵背景", 0, @0, $CharaPos, null, true);
	Fade("絵背景", 0, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020b]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200060kit">
（どうか――
　そこで眠っているヤツを生き返らせて――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);

{	St("C",700, @0,@0,"fu千秋_気合い_hard");
	FadeSt("C",0,true);}

	CreateTextureEXadd("絵演発光効果", 710, Center, 576, "cg/fu/fu千秋_気合い_hard.png");
	$CharaPos=672-ImageVertical("絵演発光効果");
	Move("絵演発光効果", 0, @0, $CharaPos, null, true);
	Fade("絵演発光効果", 0, 500, null, true);

	FadeDelete("絵板写", 300, null, true);

	CreateTextureEXadd("絵背景", 710, Center, 576, "cg/fu/fu千秋_気合い_hard.png");
	$CharaPos=672-ImageVertical("絵背景");
	$CharaYCenter=(ImageVertical("絵背景")-96)/2;
	SetVertex("絵背景", center, $CharaYCenter);
	Move("絵背景", 0, @0, $CharaPos, null, true);
	Fade("絵背景", 0, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020c]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200070kit">
（恵那の失敗をなかったことに！
　あいつに笑顔を、取り戻させてやってください！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);

{	St("C",700, @0,@0,"fu千秋_気合い_shout");
	FadeSt("C",0,true);}

	CreateTextureEXadd("絵演発光効果", 710, Center, 576, "cg/fu/fu千秋_気合い_shout.png");
	$CharaPos=672-ImageVertical("絵演発光効果");
	Move("絵演発光効果", 0, @0, $CharaPos, null, true);
	Fade("絵演発光効果", 0, 500, null, true);

	FadeDelete("絵板写", 300, null, true);

	CreateTextureEXadd("絵背景", 710, Center, 576, "cg/fu/fu千秋_気合い_shout.png");
	$CharaPos=672-ImageVertical("絵背景");
	$CharaYCenter=(ImageVertical("絵背景")-96)/2;
	SetVertex("絵背景", center, $CharaYCenter);
	Move("絵背景", 0, @0, $CharaPos, null, true);
	Fade("絵背景", 0, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020d]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200080kit">
（河原屋双六を生き返らせて――
　アイツを――幸せにしてやって下さいッ！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);

{	St("C",700, @0,@0,"fu千秋_通常_fear");
	FadeSt("C",0,true);}

	CreateTextureEXadd("絵演発光効果", 710, Center, 576, "cg/fu/fu千秋_通常_fear.png");
	$CharaPos=672-ImageVertical("絵演発光効果");
	Move("絵演発光効果", 0, @0, $CharaPos, null, true);
	Fade("絵演発光効果", 0, 500, null, true);

	FadeDelete("絵板写", 300, null, true);

	CreateTextureEXadd("絵背景", 710, Center, 576, "cg/fu/fu千秋_通常_fear.png");
	$CharaPos=672-ImageVertical("絵背景");
	$CharaYCenter=(ImageVertical("絵背景")-96)/2;
	SetVertex("絵背景", center, $CharaYCenter);
	Move("絵背景", 0, @0, $CharaPos, null, true);
	Fade("絵背景", 0, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020e]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200090kit">
（アザナエルも、取り返させてください！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//	TextBoxDelete(150);

	CreatePlainSP("絵板写", 5000);

{	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("C",0,true);}

	CreateTextureEXadd("絵演発光効果", 710, Center, 576, "cg/bu/bu千秋_朗らか_shock.png");
	$CharaPos=672-ImageVertical("絵演発光効果");
	Move("絵演発光効果", 0, @0, $CharaPos, null, true);
	Fade("絵演発光効果", 0, 500, null, true);

	FadeDelete("絵板写", 300, null, true);

	CreateTextureEXadd("絵背景", 710, Center, 576, "cg/bu/bu千秋_朗らか_shock.png");
	$CharaPos=672-ImageVertical("絵背景");
	$CharaYCenter=(ImageVertical("絵背景")-96)/2;
	SetVertex("絵背景", center, $CharaYCenter);
	Move("絵背景", 0, @0, $CharaPos, null, true);
	Fade("絵背景", 0, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030a]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200100kit">
（あと、あと……ええと、なんだ？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);

{	St("C",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("C",0,true);}

	CreateTextureEXadd("絵演発光効果", 710, Center, 576, "cg/bu/bu千秋_朗らか_sad.png");
	$CharaPos=672-ImageVertical("絵演発光効果");
	Move("絵演発光効果", 0, @0, $CharaPos, null, true);
	Fade("絵演発光効果", 0, 500, null, true);

	FadeDelete("絵板写", 300, null, true);

	CreateTextureEXadd("絵背景", 710, Center, 576, "cg/bu/bu千秋_朗らか_sad.png");
	$CharaPos=672-ImageVertical("絵背景");
	$CharaYCenter=(ImageVertical("絵背景")-96)/2;
	SetVertex("絵背景", center, $CharaYCenter);
	Move("絵背景", 0, @0, $CharaPos, null, true);
	Fade("絵背景", 0, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030b]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200110kit">
（できれば御札もふたりで納めに行きたいし――
　ブルマーもちゃんと返したいし――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);

{	St("C",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("C",0,true);}

	CreateTextureEXadd("絵演発光効果", 710, Center, 576, "cg/bu/bu千秋_通常_worry.png");
	$CharaPos=672-ImageVertical("絵演発光効果");
	Move("絵演発光効果", 0, @0, $CharaPos, null, true);
	Fade("絵演発光効果", 0, 500, null, true);

	FadeDelete("絵板写", 300, null, true);

	CreateTextureEXadd("絵背景", 710, Center, 576, "cg/bu/bu千秋_通常_worry.png");
	$CharaPos=672-ImageVertical("絵背景");
	$CharaYCenter=(ImageVertical("絵背景")-96)/2;
	SetVertex("絵背景", center, $CharaYCenter);
	Move("絵背景", 0, @0, $CharaPos, null, true);
	Fade("絵背景", 0, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030c]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200120kit">
（あともうちょっと身長を伸ばして――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Request("@Pro", Stop);
	FadeDelete("絵背景", 500, null, true);
	Delete("@Pro");
	Delete("絵演*");

//◆演出指定：元に戻る

	SetVolumeEX("@SE*", 2000, 0, NULL);
	SetVolumeEX("@xsong*", 4000, 250, null);

	Fade("フラッシュ", 2000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]

{	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("C",200,true);}
//【小碓千秋】

<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200130kit">
「光が……消えた……！？」

{	St("C",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200140kit">
「ってことは――！」

{	DeleteAllSt(200,false);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b20/500200150ksr">
「ん……あ……んん……」

{	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("C",200,true);
	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200160kit">
「あ……」

{	DeleteAllSt(200,false);

	St("R",700, @0,@50,"bu双六a_通常_pinch");
	Move("@StNameR/R*", 1000, @0, @-50, Dxl2, false);
	FadeSt("R",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b20/500200170ksr">
「ん……くぅ、つ……ううっ！」

{	St("R",700, @0,@0,"bu双六a_通常_angry");
	FadeSt("R",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b20/500200180ksr">
「クソッ！　やっぱりダメだったか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_happy");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200190kit">
「やった！　やった！　やったやったぞ！」

{	St("ML",700, @0,@0,"bu千秋_朗らか_pride");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200200kit">
「ホントに……ホントに、生き返ったあッ！」

{	St("ML",700, @0,@0,"bu千秋_朗らか_happy");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200210kit">
「これで、これで恵那も――恵那も――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_横向き_sigh");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b20/500200220ksr">
「コラ」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200230kit">
「え……あ、はい？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b20/500200240ksr">
「ここで、何やってた？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200250kit">
「いや、なにってその、ただあの買い物に――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b20/500200260ksr">
「てめぇが？　こんなところにひとりで？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200270kit">
「あの……あの……ええと……」

{	St("ML",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200280kit">
「すいませんでし――」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_shout");
	FadeSt("MR",200,true);
	Zoom("@StNameMR/MR*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameMR/MR*", 100, 1000, 1000, Axl2, true);
	SetVolumeEX("@x*", 200, 0, null);
}

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b20/500200290ksr">
「ちょっとまてッ！！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_驚天_shock");
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 300, 10, 0, 0, 0, 500, null, false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200300kit">
「ひぇええええっ！」

{
	MusicStart("@xbgm04",0,450,0,1000,null,true);
	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_angry");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b20/500200310ksr">
「おまえ……この部屋で、何か見なかったか？」

{	St("MR",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b20/500200320ksr">
「例えば、誰かの死体とか……あとはそうだな……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]

{	St("MR",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b20/500200330ksr">
「拳銃とか？」

{	DeleteAllSt(200,false);
	St("L",700, @50,@0,"bu千秋_朗らか_shock");
	Move("@StNameL/L*", 1000, @-50, @0, Dxl2, false);
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200340kit">
「あ、あははははは！　やだなあ！」

{	St("L",700, @0,@0,"bu千秋_朗らか_pride");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200350kit">
「そんなもの、見たはずないじゃないですか！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_横向き_sad");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b20/500200360ksr">
「嘘をついても、すぐわかるぞ」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu千秋_朗らか_happy");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200370kit">
「あは……あは……あははははは……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2051);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b20/500200380ksr">
「怪しい……」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200390kit">
（マズい……マズいぞ）

{	St("L",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200400kit">
（でも、ここでアザナエルを渡すわけには行かないし。
　これをアイツに届けないと……また……）


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_横向き_sad");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b20/500200410ksr">
「ん？　なんかお前、ポケットが膨らんで――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]

{	DeleteAllSt(200,false);
	St("ML",700, @-50,@0,"bu千秋_通常_fear");
	Move("@StNameML/ML*", 200, @50, @0, Dxl2, false);
	FadeSt("ML",200,true);
	Request("@StNameML/ML*", Smoothing);
	Zoom("@StNameML/ML*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameML/ML*", 100, 1000, 1000, Axl2, true);
}

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200420kit">
「あ！　あ！　あ！
　あんなところに拳銃がッ！」

　千秋はめいっぱい慌てて、床を指さす。

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_横向き_sigh");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b20/500200430ksr">
「…………アホか」

{	St("MR",700, @0,@0,"bu双六a_横向き_sad");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b20/500200440ksr">
「オレがそんな手に引っかかるわけ――」

{
	SetVolumeEX("@x*", 100, 0, NULL);
	CreateSE("SE01","se擬音_ギャグ_ドーン");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("MR",700, @0,@0,"bu双六a_通常_shout");
	FadeSt("MR",200,true);
	Request("@StNameMR/MR*", Smoothing);
	Zoom("@StNameMR/MR*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameMR/MR*", 100, 1000, 1000, Axl2, true);

}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b20/500200450ksr">
「ホントにあった！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]

{	DeleteAllSt(200,false);
	CreateSE("SE02","se擬音_ギャグ_ガーン01");
	MusicStart("SE02",0,700,0,1000,null,false);
	St("ML",700, @0,@0,"bu千秋_驚天_shock");
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 300, 10, 0, 0, 0, 500, null, false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200460kit">
「嘘お！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b20/500200470ksr">
「え？　嘘って――」

{	SoundPlay("@xbgm03",0,450,true);
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200480kit">
「とにかく逃げろッ！！」

{
	CreateSE("SE01","se擬音_ギャグ_逃げる");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("@StNameML/ML*", 300, @-50, @0, Dxl2, false);
	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"bu双六a_通常_shock");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b20/500200490ksr">
「お……おい！　なんで逃げんだよッ！！」




</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 1000, null, "cg/data/slide_01_01_0.png", true);


	DeleteAllSt(0,false);
//	ClearFadeAll(500, true);


//◆場所：エレキセンター_廊下

	OnBG(10,"bg0901100エレキセンター_廊下_通常");
	FadeBG(0,true);

//	CreateSE("BGMSE01","seガヤ_エレキセンター内部_l");
//	MusicStart("BGMSE01",1200,400,0,1000,null,true);

	DrawDelete("絵黒幕", 300, 1000, null, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]


{	St("C",700, @-50,@0,"bu千秋_朗らか_sigh");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200500kit">
（な……なんだか知らないけど、助かった……！）

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buジャブル_通常_shock");
	Move("@StNameML/ML*", 300, @50, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/b20/500200510jbr">
「おじょさん！　てっぽ！　かえして！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200520kit">
「あ！」

{	St("MR",700, @0,@0,"bu千秋_通常_think");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200530kit">
（そうか！　あのモデルガンを見間違って――！）

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buジャブル_通常_hard");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/b20/500200540jbr">
「おじょさん待つデス！　万引きダメデス！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200550kit">
「悪い！　銃は双六が持ってるから！
　返してもらってくれ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buジャブル_通常_shock");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/b20/500200560jbr">
「そ、そんなぁ……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"fu千秋_通常_fear");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200570kit">
（とにかく今は、逃げなきゃ――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,false);


{	ClockPass(2052);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b20/500200580fjh">
「邪魔だ邪魔だァ！」


{	St("C",700, @0,@0,"fu千秋_朗らか_shock");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200590kit">
（え……この声は恵那のオヤジさん？）

{	CreateSE("SE01","se動作_走る04_l");
	MusicStart("SE01",2000,300,0,1000,null,true);}
//◆音声指示：遠くから
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b20/500200600fjh">
「退け退けェ！！」

{	St("C",700, @0,@0,"fu千秋_朗らか_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200610kit">
（近づいてる！
　恵那が、オヤジさんに連絡したんだな！）

{	SetVolumeEX("SE*", 2000, 500, null);}
//◆音声指示：遠くから
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b20/500200620fjh">
「御用だ御用だァ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("C",700, @0,@0,"fu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200630kit">
（ってことは、コイツを預ければ――）

{	St("C",700, @0,@0,"fu千秋_朗らか_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200640kit">
（…………）

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200650kit">
「ゴメンインド人のひと！
　ちょっとだけ隠れさせて！」

{	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 300, @-120, @0, Axl1, false);
	St("ML",700, @0,@0,"buジャブル_通常_shock");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/b20/500200660jbr">
「え？　そんな、困る――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);

	SetVolumeEX("SE*", 300, 700, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]

{	St("C",700, @50,@0,"bu平次_御用だ_angry");
	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b20/500200670fjh">
「突撃――――ッ！！」

{

	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	DeleteAllSt(200,true);
	SetVolumeEX("SE*", 3000, 0, null);

}

　千秋は店の陰で、平次が消えるのを待った。



//双六と指定間違いでしょうか？(ino
//※下倉注：間違いなのでタグ他修正 2010/10/14


{	St("C",700, @0,@0,"bu双六a_通常_angry");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/b20/500200680ksr">
「おいガキッ！　どこに行った――！」

{
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	DeleteAllSt(200,true);


	St("ML",700, @-50,@0,"bu平次_御用だ_shout");
	Move("@StNameML/ML*", 300, @50, @0, Dxl2, false);
	FadeSt("ML",200,true);
}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b20/500200690fjh">
「コラ双六ッ！」

{
	St("ML",700, @0,@0,"bu平次_御用だ_angry");
	FadeSt("ML",200,true);
}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b20/500200700fjh">
「てめぇがアザナエル隠してんのは、わかってんだ！」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b20/500200710fjh">
「大人しく、返しやがれぇッ……ッ！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameML/ML*", 300, @50, @0, Dxl2, false);
	DeleteAllSt(200,true);

	CreateTextureEX("絵背景", 20, Center, Middle, "cg/bg/bg0902100エレキセンター_ジャガンナート_通常.jpg");
	Fade("絵背景", 300, 1000, null, true);

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]


{	St("C",700, @-50,@0,"fu千秋_通常_fear");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200720kit">
（咄嗟に……隠れちゃった）

{	St("C",700, @0,@0,"fu千秋_通常_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200730kit">
（……いやいや、でもいいよな、このくらい）

{	St("C",700, @0,@0,"fu千秋_通常_pinch");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200740kit">
（オレが命懸けで取り返した銃なんだし！）

{	St("C",700, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200750kit">
（っていうか……うん、そうだ。
　これ返す時、正体を明かそう）

{	St("C",700, @0,@0,"fu千秋_朗らか_normal");
	FadeSt("C",200,true);}
//【小碓千秋】

<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200760kit">
（それで、ちゃんと、オレの気持ちを恵那に伝えよう）

{	St("C",700, @0,@0,"fu千秋_気合い_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200770kit">
「うし！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);
	FadeDelete("絵背景", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]

{	St("ML",700, @0,@0,"buジャブル_通常_smile");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/b20/500200780jbr">
「おじょさん、だいじょぶデスカ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200790kit">
「ん、ああ。アリガト」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buジャブル_通常_happy");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/b20/500200800jbr">
「トラブル？　だったら私が力に――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200810kit">
「いいや、今解決したところ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buジャブル_通常_smile");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/b20/500200820jbr">
「そう？　まあ、うまくいくといいデスネ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200830kit">
「――？？？」

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200840kit">
（なんか、引っかかる言い方）



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 2000, 0, null);


	TextBoxDelete(150);

	CreateSE("SE10","seガヤ_街中_l");
	MusicStart("SE10",2000,700,0,1000,null,true);


//	SetVolumeEX("BGMSE*", 1000, 0, null);
	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteAllSt(0,false);

//◆場所：秋葉原駅_正面

	OnBG(10,"bg0201111秋葉原駅_正面_通常");
	FadeBG(0,true);


{	ClockPass(2053);}

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]

{	St("C",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200850kit">
（そうだ、とりあえず恵那に電話！）

{	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200860kit">
（早くあいつを立ち直らせてやらなきゃ！）


{
	DeleteAllSt(200,false);


//◆ＳＥ：プップップップ
//◆ＳＥ：ツーツーツーツー

	CreateSE("SE01","seメカ_携帯_電子音02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(3000);
	CreateSE("SE01","seメカ_携帯_コール02_l");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(2000);
	CreateSE("SE01","seメカ_携帯_電話切れる02_l");
	MusicStart("SE01",0,700,0,1000,null,false);


	St("C",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200870kit">
「……話し中」

{	SetVolumeEX("@SE*", 1000, 0, NULL);
	St("C",700, @0,@0,"bu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200880kit">
（恵那のオヤジさんが連絡でも入れてるのか？）

{	St("C",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200890kit">
（ちゃんと、スーパーノヴァで待ってるといいんだけど）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//★ wam井野 ClockPassの調整をお願いいたします。＜済み 10/11/14

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteAllSt(0,false);

//◆時間：ジャンプ
{	ClockPass(2054);}

//◆場所：ショウビル_正面

	OnBG(10,"bg1901111ショウビル_正面_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//あきゅん「修正指示：下記の千秋の妄想、演出強めで時間たっぷり使う感じに」

	SetVolumeEX("SE*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]

{	St("C",700, @0,@0,"bu千秋_朗らか_pride");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200900kit">
（でも――オレの勇姿、見せてやりたかったなあ）

{	SoundPlay("@xbgm11",0,450,true);
	DeleteAllSt(200,true);
	St("C",700, @50,@0,"fu千秋_気合い_hard");
	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200910kit">
（「恵那！　君のためなら死ねる！」バキューン！）

{	St("C",700, @0,@0,"fu千秋_気合い_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200920kit">
（「絶対、おまえなんかに、この銃は渡さないッ！」）

{
	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu千秋_朗らか_shy");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200930kit">
「ヤバイ……オレ、男らしすぎる……」

{	St("C",700, @0,@0,"bu千秋_朗らか_pride");
	Shake("@StNameC/C*", 500, 0, 8, 0, 0, 200, null, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200940kit">
「ぐふ……ぐふふふふふふ……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 4000, 0, null);





//※下倉注：ここ、時間の都合で諸々修正。 2010/11/14
//★ wam井野 ガラス割れに修正いたしました。 2010/11/14


//◆場所：スーパーノヴァ_正面

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteAllSt(0,false);
//※下倉注：ここ、まだ割れた背景 2010/11/14 → ごめんなさいここ補修してあるので再修正
	OnBG(10,"bg0501200スーパーノヴァ_正面_ガラス割れ");//テープ補修痕ガラス割れ
	FadeBG(0,true);

	Wait(2000);

//◆時間：ジャンプ
{	ClockPass(2100);}


	SoundPlay("@xbgm20",0,450,true);
	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);


{	St("L",700, @-50,@0,"bu千秋_通常_sad");
	Move("@StNameL/L*", 300, @50, @0, Dxl2, false);
	FadeSt("L",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200950kit">
（あ、あれは――恵那？）

{	St("L",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200960kit">
（星さんに話を聞いてる……？）

{	St("L",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200970kit">
（なんか雰囲気違うし、立ち直ってるかな？）

{	St("L",700, @0,@0,"bu千秋_通常_think");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200980kit">
（ってことはやっぱり恵那のオヤジさんから、双六が無事だって連絡が行ったんだ……）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

{	St("C",700, @0,@0,"fu千秋_朗らか_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500200990kit">
（……よし！）

{	St("C",700, @0,@0,"fu千秋_気合い_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500201000kit">
（これで準備は整った！）

{	St("C",700, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500201010kit">
（男らしく恵那に告白して！）


{	St("C",700, @0,@0,"fu千秋_通常_angry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500201020kit">
（男らしく好きだって！）

{	St("C",700, @0,@0,"fu千秋_通常_fear");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500201030kit">
（好き――だって――）

{	St("C",700, @0,@0,"fu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500201040kit">
（――男らしい？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2101);}


	TextBoxDelete(150);

	DeleteAllSt(200,false);

//窓準備
	CreateAXLWindowEX("絵窓", "Y", 1600, 160, 256, false);
	SetAlias("絵窓","絵窓");
	WindowAXLZoom("絵窓", "Y", 0, 0, null, true);
//	CreateColorSP("絵窓/絵演色", 1510, "#990000");
	CreateTextureSP("絵窓/絵演背景", 1520, Center, Middle, "cg/bg/bg0501100スーパーノヴァ_正面_通常.jpg");
	Zoom("絵窓/絵演背景", 0, 3000, 3000, null, true);
	Move("絵窓/絵演背景", 0, @-500, @-160, null, true);
	SetShade("絵窓/絵演背景", HEAVY);

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1530, center, middle, "cg/st/st千秋_通常_sad.png");
	Zoom("絵窓/絵演立絵", 0, 4000, 4000, null, true);
	Move("絵窓/絵演立絵", 0, @0, @-600, null, true);
	Request("絵窓/絵演立絵", Smoothing);
//	SetShade("絵窓/絵演立絵", HEAVY);


//動作
	Move("絵窓/絵演立絵*", 200, @0, @-100, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 500, null, true);
	WindowAXLZoom("絵窓", "Y", 200, 1000, Dxl2, true);

	Move("絵窓/絵演背景", 6000, @0, @400, Dxl1, false);
	Move("絵窓/絵演立絵", 6000, @0, @1200, Dxl1, true);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　割れたガラスに、うっすら自分の姿が映る。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	WindowAXLZoom("絵窓", "Y",200, 0, Axl2, true);
	Delete("@絵窓*");

	CreateSE("SE01","seメカ_レンジ_チーン");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("C",700, @0,@0,"bu千秋_朗らか_sigh");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 50, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0251]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500201050kit">
（いやいや、ないわー）

{	St("C",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500201060kit">
（初めての告白だし。
　こんな格好で告白なんて、おかしいよな……）

{	St("C",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500201070kit">
（でも……着替えは店の中だし……）

{	St("C",700, @0,@0,"bu千秋_朗らか_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500201080kit">
「う――――ん…………」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指示：時間経過
	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

{	ClockPass(2102);}

//	SceneOut(5000, 1000, "blindb_01_01_0");

	DeleteAllSt(0,false);
//	CreateSound("rin1", SE, "voice/21/000200010fjr.ogg");
//	CreateSound("miso1", SE, "voice/18/300201190mso.ogg");
//	MusicStart("rin1",0,300,0,1000,null,false);

	CreateSE("SE01","seガヤ_交通少_l");
	MusicStart("SE01",4000,600,0,1000,null,true);

	Wait(2000);

//	MusicStart("miso1",0,300,0,1000,null,false);
//	SceneIn(1000, "blindb_01_01_1");
	FadeDelete("絵色黒", 2000, null, true);

/*

//※下倉注：ここ、別ルートではガラスを治しつつあることを表現するために後ろに以下の台詞を薄く流したい 2010/11/14

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/000200010fjr">
「オラー！　働け働けー！」

//【みそ】
<voice name="みそ" class="みそ" src="voice/18/300201190mso">
「えっさっ、ほいさっ、えっさっ、ほいさっ！」

*/

	CreateVOICE("富士見鈴","21/000200010");
	MusicStart("富士見鈴",0,700,0,1000,null,false);

{	St("C",700, @0,@0,"bu千秋_通常_think");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500201090kit">
（かといって、家に戻る……？）


{	St("C",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500201100kit">
（……ないない）


{	St("C",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500201110kit">
「うぬぬぬぬぬ…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指示：時間経過

	TextBoxDelete(150);

//	SceneOut(5000, 1000, "blindb_01_01_0");

	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

	DeleteAllSt(0,false);

//	CreateSound("rin1", SE, "voice/21/000200010fjr.ogg");
//	CreateSound("buu1", SE, "voice/z23/100100030buu.ogg");

//	MusicStart("rin2",0,300,0,1000,null,false);

	CreateSE("SE02","se動物_ネコ_鳴き声02");
	MusicStart("SE02",0,400,0,1000,null,false);

	Wait(2000);
//	MusicStart("buu1",0,300,0,1000,null,false);

	CreateSE("SE03","se動物_カラス_鳴き声");
	MusicStart("SE03",0,300,0,1000,null,false);

{	ClockPass(2104);}

//	SceneIn(1000, "blindb_01_01_1");
	FadeDelete("絵色黒", 2000, null, true);

/*

//※下倉注：ここ、別ルートではガラスを治しつつあることを表現するために後ろに以下の台詞を薄く流したい 2010/11/14


//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/000200010fjr">
「オラー！　働け働けー！」

//【ブー】
<voice name="ブー" class="ブー" src="voice/z23/100100030buu">
「ドドドドドドドドドドド！！」


*/

	CreateVOICE("富士見鈴","21/000200010_2");
	MusicStart("富士見鈴",0,700,0,1000,null,false);

{	St("C",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500201120kit">
（さっきだって、恵那のオヤジさんに会ったばっかりだし）

{	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500201130kit">
（もし近所の人に見られたら……）

{	St("C",700, @0,@0,"bu千秋_通常_pinch");
	Shake("@StNameC/C*", 300, 6, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500201140kit">
「ぐううううう…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//◆演出指示：時間経過


	TextBoxDelete(150);

	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);
//	SceneOut(5000, 1000, "blindb_01_01_0");

	OnBG(10,"bg0501100スーパーノヴァ_正面_通常");
	FadeBG(0,true);

	DeleteAllSt(0,false);

	CreateSE("SE02","se動物_ネコ_威嚇02");
	MusicStart("SE02",0,400,0,1000,null,false);

	Wait(2000);

	CreateSE("SE03","se動物_ネコ_威嚇01");
	MusicStart("SE03",0,400,0,1000,null,false);


//◆時間：ジャンプ
{	ClockPass(2107);}

//	SceneIn(1000, "blindb_01_01_1");
	FadeDelete("絵色黒", 1000, null, true);

//※下倉注：ここで本文では言及されていないが、しれっとスーパーノヴァのガラスを治しておきたい。 2010/11/14
//★ wam井野 治ったガラスに修正いたしました。 2010/11/14


{	St("C",700, @0,@50,"fu千秋_驚天_shock");
	Move("@StNameC/C*", 200, @0, @-50, Dxl2, false);
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, null, false);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0275]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500201150kit">
「――はっ！」

{	SetVolumeEX("@SE*", 2000, 0, NULL);
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500201160kit">
（ヤバイ！　時間が）

{	St("C",700, @0,@0,"bu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500201170kit">
（ダメだ！　いつまで悩んでても、ラチが開かないし！）

{	St("C",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500201180kit">
「ドンガで安い服、買ってこよ……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 2000, 0, null);

//◆場所：秋葉原_中央通り
	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆時間：ジャンプ
{	ClockPass(2109);}

	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);
	DeleteAllSt(0,false);

	CreateSE("SE01","seガヤ_交通_l");
	MusicStart("SE01",2000,700,0,1000,null,true);
	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

{	St("C",700, @-50,@0,"bu千秋_朗らか_sad");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500201190kit">
「……あーあ」

{	St("C",700, @0,@0,"bu千秋_朗らか_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500201200kit">
（あんまり金ないんだけどな）

{	St("C",700, @0,@0,"bu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500201210kit">
（ま、お年玉ももらえるし、ちょっとくらいいいか）

{	St("C",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500201220kit">
（流石にさっきのオタクたちは、もういないよな……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/b20/500201230adi">
「あああああああああッ！！」

{	St("C",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500201240kit">
「ん……なんだ？」

{	DeleteAllSt(200,false);
	St("R",700, @50,@0,"buＡＤ_通常_hard");
	Move("@StNameR/R*", 300, @-50, @0, Dxl2, false);
	FadeSt("R",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/b20/500201250adi">
「ちょっとアッキーさん！
　なにしてるんですかこんなところで！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500201260kit">
「え？　オレの名前知ってる……？」

{	St("ML",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500201270kit">
「ってか、アンタ誰？　知り合い？」

{	DeleteAllSt(200,false);
	St("MR",700, @50,@0,"buＡＤ_通常_angry");
	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/b20/500201280adi">
「いいから！　早く来て下さい！　早く！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_驚天_shock");
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 300, 10, 0, 0, 0, 500, null, false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500201290kit">
「え？　なんで……ちょっと！
　イダダ！　引っ張るなって！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_pride");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/b20/500201300adi">
「あ、ついでにコレ持って！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500201310kit">
「え？　なにこの紙袋――うわっ！　重ッ！　熱ッ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_angry");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/b20/500201320adi">
「破れないように気をつけて！
　ほら、早く！！」

{	Move("@StNameMR/MR*", 300, @-50, @0, Dxl2, false);
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b20/500201330kit">
「だからなんなんだよッ！　コレは！？」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameML/ML*", 300, @-50, @0, Dxl2, false);
	DeleteAllSt(200,true);
	TextBoxDelete(150);

	SetVolumeEX("SE*", 500, 0, null);

	CreateColorSP("絵色黒", 5000, "#000000");
	DrawTransition("絵色黒", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	EndScene();
}
