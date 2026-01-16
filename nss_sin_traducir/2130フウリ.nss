
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2130フウリ.nss_MAIN
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
	if(Substr($myRoute,0,2)=="ab"){
		$GameName = "ab2131千秋_恵那_フウリ.nss";
	}else{
		//トゥルー、b
		$GameName = "2131フウリ.nss";
	}
}

scene 2130フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="60">
////////////header////////////
//file name "2130フウリ.nss"
//title "それでも、信じてる"
//previous "2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nss"

////////////footer////////////

//※（"flkagome1a" = true）においてここだけフラグが例外

//next "千秋"（"flkagome1a" = true） "ab2131千秋_恵那_フウリ.nss"
//next "恵那"（"flkagome1a" = true） "ab2131千秋_恵那_フウリ.nss"
//next "フウリ"（"flkagome1a" = true） "ab2131千秋_恵那_フウリ.nss"

//next "フウリ" "2131フウリ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2130);}

//あきゅん「修正：前ファイルとのつなぎで背景際が起きていたので修正しました11/17」
//	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	OnBG(10,"bg1203100ＵＰ＋_セット裏_通常");
	FadeBG(0,true);

//	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg1202200ＵＰ＋_セット上_暗闇.jpg");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg1203200ＵＰ＋_セット裏_暗闇.jpg");

	FadeDelete("上背景", 0, null, true);

	CreateSE("SE01","se動作_ライト点ける");
	MusicStart("SE01",0,700,0,1000,null,false);


	Fade("絵背景100", 0, 0, null, true);
	Fade("絵背景100", 100, 1000, null, true);
	Fade("絵背景100", 0, 0, null, true);
	Fade("絵背景100", 100, 1000, null, true);
	Fade("絵背景100", 0, 0, null, true);
	Fade("絵背景100", 100, 1000, null, true);
	FadeDelete("絵背景100", 1000, null, true);

//◆演出指定：ノーコがいなくなると、何故か暗闇が元に戻る

//◆ＳＥ：ライトがつく音

//◆場所：ＵＰ＋_屋外セット_炎上


{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("ML",200,true);}

	SoundPlay("@xbgm24",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/300100010wfu">
「ミヅハちゃん……傷は……あれ？」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/300100020wfu">
「大丈夫、みたいですね……」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"buミヅハ_ダウナー_sad");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/300100030mzh">
「なぜじゃ、のうフウリ……？
　なぜ……ノーコが……」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/300100040mzh">
「わらわとノーコは、お友達じゃったのに
　わらわはノーコを、信じておったのに」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("C",700, @0,@0,"buミヅハ_ダウナー_cry");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/300100050mzh">
「なぜノーコは、わらわを――？」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/300100060mzh">
「わらわがノーコを信じたのは、間違い……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteSt("C",200,true);

//嶋：借入
//あきゅん「修正：端ルートに行くときはＢＧＭ継続させたい分岐命令調整しますた」
//※下倉注：ここ、短すぎるんでメインもＢＧＭ継続で行きましょう！　ってことでコメントアウト。


//	if(#flkagome1a){
//	}else{
//	SetVolume("@xbgm*", 200, 0, null);
//	}

/*
	if($CharaName=="千秋"){
		SetVolume("@xbgm*", 1000, 0, null);
	}else if($CharaName=="恵那"){
		SetVolume("@xbgm*", 1000, 0, null);
	}else if($CharaName=="フウリ"){
		SetVolume("@xbgm*", 200, 0, null);
	}else{
		SetVolume("@xbgm*", 1000, 0, null);
	}
*/


	EndScene();
}
