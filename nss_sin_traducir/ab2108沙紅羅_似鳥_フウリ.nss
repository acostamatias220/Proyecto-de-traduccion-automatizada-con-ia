
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ab2108沙紅羅_似鳥_フウリ.nss_MAIN
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
		$GameName = "2110沙紅羅_フウリ.nss";
	}else if($CharaName=="フウリ"){
		$GameName = "2110沙紅羅_フウリ.nss";
	}else if($CharaName=="似鳥"){
		$GameName = "ab2110似鳥.nss";
	}else{
		$GameName = "2110沙紅羅_フウリ.nss";
	}
}



scene ab2108沙紅羅_似鳥_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="440">
////////////header////////////
//file name "ab2108沙紅羅_似鳥_フウリ.nss"
//title "突然デザイナー"
//previous "ab2107沙紅羅_似鳥_ノーコ_フウリ.nss"

////////////footer////////////
//next "沙紅羅" "2110沙紅羅_フウリ.nss"
//next "フウリ" "2110沙紅羅_フウリ.nss"
//next "似鳥戴斗" "ab2110似鳥.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2108);}

//◆場所：ＵＰ＋_屋外セット
	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

	SetVolumeEX("@xbgm*", 1500, 0, null);

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	
	St("L",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("L",200,true);
	Wait(100);
	St("R",700, @60,@0,"buミリＰb_通常_sad");
	Move("@StNameR/R*", 500, @-60, @0, DxlAuto, false);
	FadeSt("R",500,true);
//	SoundPlay("@xbgm16",0,450,true);
	CreateSE("SE01","seガヤ_ざわざわ_l");
	MusicStart("SE01",0,400,0,1000,null,true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/080200010mrp">
「……あなた、大丈夫？」

{	St("L",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/080200020nki">
「あ、ええと……は、はい」



//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/080200030mrp">
「すこし、気負いすぎなんじゃない？」

{	St("R",700, @0,@0,"buミリＰb_通常_normal");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/080200040mrp">
「もちろん、テレビ的にいい物を作ってはもらいたいけど。
　前のめりになりすぎても、いい結果は出ないわよ」


{	St("L",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/080200050nki">
「…………はい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	TextBoxDelete(150);

	PrintGO("上背景", 30000);

	DeleteAllSt(0,true);
	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);

	St("R",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	St("L",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("R",0,false);
	FadeSt("L",0,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]



//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/080200060skr">
「なんだか、大変そうだな……」

{	St("L",700, @0,@0,"bu千秋_朗らか_think");
	FadeSt("L",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/ab21/080200070ktt">
「まあ、それはそれとして」

{	St("L",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("L",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/ab21/080200080ktt">
「まだこっちの食べ物、追加されてないんだけど――
　大丈夫かな？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("R",700, @-120,@0,"buＡＤ_通常_shock");
	Move("@StNameR/R*", 300, @120, @0, DxlAuto, false);
	FadeSt("R",300,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ab21/080200090adi">
「た――た――」

{	St("R",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("R",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ab21/080200100adi">
「ただいま帰りましたッ！」

{	St("L",700, @-120,@0,"buミヅハ_通常_normal");
	Move("@StNameL/L*", 300, @120, @0, DxlAuto, false);
	FadeSt("L",300,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab21/080200110mzh">
「帰ってきたぞ！」

　息を切らせてステージ裏手に駆け込むのは、両手いっぱいの食べ物を買い込んだＡＤと、ミヅハだった。


{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buフウリ_前のめり_shout");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/080200120wfu">
「ミヅハちゃん！」


{	St("MR",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/080200130skr">
「おお！　噂をすれば七十五日！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("ML",700, @0,@0,"buミヅハ_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab21/080200140mzh">
「サイババア様のところでテレビを見ておったのじゃがな、『えーでー』に、こっそり連れてこさせたのじゃ！」

{	St("ML",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab21/080200150mzh">
「似鳥が番組に現れたのを見て、黙っていられなんだ！」

{	St("C",700, @-60,@0,"bu似鳥_眼鏡上げ_shock");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 200, @60, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/080200160nki">
「オレを見て……？」

{	St("ML",700, @0,@0,"buミヅハ_手構え_pride");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab21/080200170mzh">
「ノーコはわらわの恩人じゃからのう！
　恩人の恩人が困っているとあれば、救わねばなるまい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("C",700, @0,@0,"bu似鳥_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/080200180nki">
「ちょっと待て。
　なんでおまえ、ノーコを知ってるんだ？」

{	St("ML",700, @0,@0,"buミヅハ_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab21/080200190mzh">
「ふん！　見てわからぬか？」

{	St("ML",700, @0,@0,"buミヅハ_手構え_pride");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab21/080200200mzh">
「それは、わらわが神様だからじゃ！」

{	St("C",700, @0,@0,"bu似鳥_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/080200210nki">
「神様……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



{	ClockPass(2109);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("MR",700, @60,@0,"buミリＰb_通常_normal");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 500, @-60, @0, DxlAuto, false);
	FadeSt("MR",500,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/080200220mrp">
「似鳥くんだったかしら？」

{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/080200230nki">
「あ、はい」

{	St("MR",700, @0,@0,"buミリＰb_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/080200240mrp">
「悪いけどその子と――」

{	DeleteAllSt(200,true);
	St("MR",750, @120,@0,"buユージローa_通常_ero");
	Move("@StNameMR/MR*", 300, @-120, @0, Dxl1, false);
	FadeSt("MR",300,true);
	Shake("@StNameMR/MR*", 100, 5, 5, 0, 0, 500, null, false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab21/080200250ujr">
「わうわうわう！！」

{	St("ML",700, @0,@0,"buミヅハ_通常_angry");
	Shake("@StNameML/ML*", 300, 0, 10, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab21/080200260mzh">
「ぎゃー！　いぬ！　触るでない！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buミリＰb_ショータイム_pinch");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/080200270mrp">
「犬連れて、下がっててくれる？」

{	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/080200280nki">
「あ……はい」

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/080200290mrp">
「もしかしたら、後でデザインの中継ふるかもしれないから……今度こそ、お願いするわね」

{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/080200300nki">
「が、がんばります……」


{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"bu沙紅羅_通常_sad");
	St("L",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("R",200,false);
	FadeSt("L",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/080200310skr">
「全然、大丈夫じゃなさそうだな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]

//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/ab21/080200320ktt">
「ですね……」


{	DeleteAllSt(200,true);
	St("ML",700, @-60,@0,"buＡＤ_通常_hard");
	Move("@StNameML/ML*", 200, @60, @0, DxlAuto, false);
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ab21/080200330adi">
「ミリＰさん！　ＣＭ開けます！」


//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ab21/080200340adi">
「追加食材の準備完了しました！
　あんまり増えてないけど、コレで少しは――」


{	St("MR",700, @0,@0,"buミリＰa_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/080200350mrp">
「ＯＫ！　良くやってくれたわ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("ML",700, @0,@0,"buＡＤ_通常_angry");]
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ab21/080200360adi">
「あと色々ヤバげなんで、クリマンは最終手段で！」

{	St("MR",700, @0,@0,"buミリＰa_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/080200370mrp">
「最終手段……？」

{	St("ML",700, @0,@0,"buＡＤ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ab21/080200380adi">
「お願いします！」


{	Move("@StNameML/ML*", 200, @-60, @0, DxlAuto, false);
	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/080200390mrp">
「……はぁ、わかったわよ」




//◆音声指示：スピーカー越し
{	Move("@StNameMR/MR*", 200, @-150, @0, DxlAuto, false);
	St("C",700, @0,@0,"buミリＰb_ショータイム_shout");
	DeleteSt("MR", 200,false);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/080200400mrp">
『えー、競技中の皆さん！
　諸事情により、クリマンをラストに回します！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆音声指示：スピーカー越し
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("C",700, @0,@0,"buミリＰb_ショータイム_happy");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/080200410mrp">
『引き続き、フェアな熱ゆるい戦いを！』

{	St("MR",700, @0,@0,"buフウリ_胸手_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/080200420wfu">
「そ……そんなあ……
　楽しみにしてたのに……ぐすん」

{	St("MR",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/080200430wfu">
「むううう……こうなったら……」

{	St("MR",700, @0,@0,"buフウリ_前のめり_hard");
	Shake("@StNameMR/MR*", 200, 0, 5, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/080200440wfu">
「本気モードで、クリマンまで一直線ですー」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 3000, 0, null);
	SetVolumeEX("SE*", 1000, 0, null);

	SceneOut(20000, 1000, "circle_02_00_1");

	DeleteAllSt(0,true);
	Delete("@OnBG*");
	WaitKey(1000);

	EndScene();
}
