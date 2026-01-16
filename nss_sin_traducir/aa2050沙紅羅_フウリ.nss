
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene aa2050沙紅羅_フウリ.nss_MAIN
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
//	$GameName = "";
//	$GameCircle=false;

	//★徒歩：フラグ修正
	if($CharaName=="沙紅羅"){
		if(Substr($myRoute,0,2)=="ab"){
			$GameName="ab2100沙紅羅_似鳥_フウリ.nss";
		}else{
			//aa
			$GameName="aa2100沙紅羅.nss";
		}
	}else{
		if(Substr($myRoute,0,2)=="ab"){
			$GameName="ab2100沙紅羅_似鳥_フウリ.nss";
		}else{
			//aa
			$GameName="aa2100千秋_フウリ.nss";
		}
	}


}

scene aa2050沙紅羅_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1020">
////////////header////////////
//file name "aa2050沙紅羅_フウリ.nss"
//title "大混乱です！"
//previous "a2047沙紅羅_フウリ.nss"

////////////footer////////////
//next "沙紅羅" （"flkagome1a" = true）"ab2100沙紅羅_似鳥_フウリ.nss"
//next "沙紅羅" （"flkagome1a" = false）"aa2100沙紅羅.nss"
//next "フウリ" （"flkagome1a" = true） "ab2100沙紅羅_似鳥_フウリ.nss"
//next "フウリ" （"flkagome1a" = false） "aa2100千秋_フウリ.nss"

//next "沙紅羅" "aa2100沙紅羅.nss"
//next "フウリ" "aa2100千秋_フウリ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//事件定義
	KoreJikenSet();

//フウリ暴食定義
	Yuru_Eat_Set();

{	ClockPass(2050);}


//◆場所：ＵＰ＋_セット上
	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");

	SoundPlay("@xbgm30",0,450,true);

	FadeBG(0,true);
//	FadeDelete("上背景", 0, null, true);
//	SceneIn(1000, "blind_01_00_1");

	if($LFlag_NowFile == "a2047沙紅羅_フウリ.nss")
	{
	DrawDelete("上背景", 300, 50, null, "circle_02_00_1", true);
	}
	FadeDelete("上背景", 0, null, true);

//マスク準備
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateColorEX("絵マスク/絵演色", 1510, "#993399");
	CreateTextureEX("スラッシュ", 1620, 600, Middle, "cg/mask/ciスラッシュ_05_01z.png");
	CreateTextureEXadd("絵マスク/絵演背景", 1520, 300, Middle, "cg/ef/ef002_汎用移動.jpg");


//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵s_n", 1530, center, middle, "cg/bu/buミリＰb_ショータイム_normal.png");
	Request("絵マスク/絵演立絵s_n", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵s_s", 1530, 450, middle, "cg/bu/buミリＰb_ショータイム_shout.png");
	Request("絵マスク/絵演立絵s_s", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵n_s", 1530, 450, middle, "cg/bu/buミリＰb_通常_shout.png");
	Request("絵マスク/絵演立絵n_s", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵n_n", 1530, 450, middle, "cg/bu/buミリＰb_通常_normal.png");
	Request("絵マスク/絵演立絵n_n", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵n_h", 1530, 450, middle, "cg/bu/buミリＰb_通常_hard.png");
	Request("絵マスク/絵演立絵n_h", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵n_sk", 1530, 450, middle, "cg/bu/buミリＰb_通常_hard.png");
	Request("絵マスク/絵演立絵n_sk", Smoothing);

//動作準備
	Move("絵マスク", 0, 1024, 0, null, true);
	Fade("スラッシュ", 200, 1000, null, false);
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク/絵演立絵s_n", 0, 450, InBottom, null, true);
	Move("絵マスク/絵演立絵s_s", 0, 450, InBottom, null, true);
	Move("絵マスク/絵演立絵n_s", 0, 450, InBottom, null, true);
	Move("絵マスク/絵演立絵n_n", 0, 450, InBottom, null, true);
	Move("絵マスク/絵演立絵n_h", 0, 450, InBottom, null, true);
	Move("絵マスク/絵演立絵n_sk", 0, 450, InBottom, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);

	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵s_n", 200, 1000, null, false);
	Move("絵マスク/絵演立絵s_n", 200, 450, InBottom, Dxl1, true);

	CreateSE("SE01","seガヤ_大歓声_l");
	MusicStart("SE01",2000,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa20/500100010mrp">
『秋葉原一のカロリーを自称する「ごはん処　みつる」のみつる定食、特盛り！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("スラッシュ", 200, 700, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, true);

	Yuru_Eat_Start(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa20/500100020wfu">
「もぐもぐ……んー、ごはんがいっぱいでした！」

{	ClockPass(2051);}

//◆音声指示：スピーカー越し
{
	Fade("絵マスク/絵演立絵s_n", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵s_s", 200, 1000, Dxl1, false);
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク", 200, 0, 0, Dxl3, true);
}

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa20/500100030mrp">
『なんの魚の海鮮丼かは誰も知らない！
　マル秘亭の超サービス「マル秘丼」！！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("スラッシュ", 200, 700, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa20/500100040wfu">
「もぐもぐ……んー、歯ごたえ抜群でした！」

{	ClockPass(2052);}

//◆音声指示：スピーカー越し

{	Fade("絵マスク/絵演立絵s_s", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵n_s", 200, 1000, Dxl1, false);
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク", 200, 0, 0, Dxl3, true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa20/500100050mrp">
『マル秘亭には負けられない！　海鮮丼屋「若さか！」秋葉原店のチャレンジメニュー「ドッキリ丼！」』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("スラッシュ", 200, 700, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0017]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa20/500100060wfu">
「もぐもぐ……んー、口の中が味の竜宮城です！」

{	ClockPass(2053);}

//◆音声指示：スピーカー越し

{
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク", 200, 0, 0, Dxl3, true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa20/500100070mrp">
『蕎麦のことならここにお任せ！　早い！　安い！　フジヤマソバのざるそば「フジヤマ盛り」！！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("スラッシュ", 200, 700, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0019]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa20/500100080wfu">
「もぐもぐ……んー、フジヤーマー！
　ゲイーシャ！　ツナーミ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2054);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//◆音声指示：スピーカー越し
{
	Fade("絵マスク/絵演立絵n_s", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵n_n", 200, 1000, Dxl1, false);
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク", 200, 0, 0, Dxl3, true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa20/500100090mrp">
『チェーン店に負けるな！
　蕎麦処松坂庵の「ギガ盛り冷やしタヌキ」！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("スラッシュ", 200, 700, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa20/500100100wfu">
「もぐもぐ、んー、ギガウマスでーす！」

{	ClockPass(2055);}

{	SetVolumeEX("@SE01*", 1500, 250, null);
	St("L",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("L",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa20/500100110skr">
「よっしゃ！　その調子だ！　行けー！」

{
	St("ML",700, @0,@0,"bu千秋_通常_shout");
	DeleteSt("L",200,false);
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa20/500100120ktt">
「頑張って！　フウリさん！」

{	DeleteAllSt(200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa20/500100130wfu">
「はい！　あと少ーし、頑張りますー！」

//◆音声指示：スピーカー越し
{
	Fade("絵マスク/絵演立絵n_n", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵s_n", 200, 1000, Dxl1, false);
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク", 200, 0, 0, Dxl3, true);


}

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa20/500100140mrp">
『フウリ選手！　仲間からの声援に応えるほどの余裕よ！
　最早このままだと１位は揺るぎない！？』

//◆音声指示：スピーカー越し
{
	CreatePlainSP("絵板写", 2000);
	Wait(16);
	Fade("絵マスク/絵演立絵s_n", 0, 0, Axl1, false);
	Fade("絵マスク/絵演立絵n_s", 0, 1000, Dxl1, false);
	FadeDelete("絵板写", 200, null, true);
}

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa20/500100150mrp">
『というか、このままだと次の料理が来る前に優勝が決まってしまうわ！』

//◆音声指示：スピーカー越し
{
	CreatePlainSP("絵板写", 2000);
	Wait(16);
	Fade("絵マスク/絵演立絵n_s", 0, 0, Axl1, false);
	Fade("絵マスク/絵演立絵n_h", 0, 1000, Dxl1, false);
	FadeDelete("絵板写", 200, null, true);

}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa20/500100160mrp">
『それだけは避け――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	Move("スラッシュ", 200, 700, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa20/500100170wfu">
「もぐもぐ……ん、ごちそうさマンモス！」

//◆音声指示：スピーカー越し
{
	Fade("絵マスク/絵演立絵n_h", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵n_s", 200, 1000, Dxl1, false);
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク", 200, 0, 0, Dxl3, true);
	CreateSE("SE01","seガヤ_大歓声_l");
	MusicStart("SE01",0,700,0,1000,null,true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa20/500100180mrp">
『おおっと！　とうとうフウリ選手、『ナウマンカレー』のマンモス盛り１０ｋｇを完食！』

//◆音声指示：スピーカー越し
{
	CreatePlainSP("絵板写", 2000);
	Wait(16);
	Fade("絵マスク/絵演立絵n_s", 0, 0, Axl1, false);
	Fade("絵マスク/絵演立絵n_h", 0, 1000, Dxl1, false);
	FadeDelete("絵板写", 200, null, true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa20/500100190mrp">
『ということは――』

{	ClockPass(2056);}

{
	SetVolumeEX("@SE01*", 1500, 0, null);
	Move("スラッシュ", 200, 700, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	St("L",700, @-50,@0,"buＡＤ_通常_angry");
	DeleteSt("C",200,false);
	Move("@StNameL/L*", 300, @50, @0, Dxl2, false);
	FadeSt("L",200,true);
	}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa20/500100200adi">
「お待たせしましたッ！！」

//◆音声指示：スピーカー越し

{
	Fade("絵マスク/絵演立絵n_h", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵s_s", 200, 1000, Dxl1, false);
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク", 200, 0, 0, Dxl3, true);
}

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa20/500100210mrp">
『来たぁッ！　次の料理が、とうとう到着！』

//◆音声指示：スピーカー越し

{
	CreatePlainSP("絵板写", 2000);
	Wait(16);
	Fade("絵マスク/絵演立絵s_s", 0, 0, Axl1, false);
	Fade("絵マスク/絵演立絵n_s", 0, 1000, Dxl1, false);
	CreateSE("SE01","seガヤ_沸き立つ02");
	Wait(16);
	FadeDelete("絵板写", 200, null, true);
	MusicStart("SE01",300,700,0,1000,null,false);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa20/500100220mrp">
『これは……アキバスポットの新名物、クリスマス饅頭こと「クリマン」！！』

//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa20/500100230mrp">
『果たしてフウリ選手は、最後にそびえるこの壁を乗り越えることができるのかッ！？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Move("スラッシュ", 200, 700, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, true);

	Yuru_Eat_Delete();

	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteSt("L",200,false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa20/500100240skr">
「お、あれ、アタシがもらった饅頭じゃねーか！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa20/500100250skr">
「結局、食べてないんだよなぁ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteSt("ML",200,false);

	Fade("絵マスク/絵演立絵n_s", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵s_n", 200, 1000, Dxl1, false);
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク", 200, 0, 0, Dxl3, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080a]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa20/500100260mrp">
『饅頭を手に掴み、まずは最初の１個を――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	Move("スラッシュ", 200, 700, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, true);
	St("C",700, @0,@0,"buフウリ_前のめり_shout");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080b]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa20/500100270wfu">
「ぺろりんちょ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆音声指示：スピーカー越し
{	Fade("絵マスク/絵演立絵s_n", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵n_sk", 200, 1000, Dxl1, false);
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク", 200, 0, 0, Dxl3, true);
	CreateSE("SE01","seガヤ_沸き立つ02");
	MusicStart("SE01",300,700,0,1000,null,false);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080c]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa20/500100280mrp">
『食べない――？！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	Move("スラッシュ", 200, 700, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	St("C",700, @0,@0,"buフウリ_前のめり_smile");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080d]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa20/500100290wfu">
「ぺろりんちょ、ぺろりんちょっちょっちょ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆音声指示：スピーカー越し
{	SetVolumeEX("@SE01*", 200, 0, null);
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク", 200, 0, 0, Dxl3, true);
	CreateSE("SE01","seガヤ_大歓声_l");
	MusicStart("SE01",0,700,0,1000,null,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080e]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa20/500100300mrp">
『な、なんという頭脳派！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆音声指示：スピーカー越し
{	CreatePlainSP("絵板写", 5000);
	Wait(16);
	Fade("絵マスク/絵演立絵n_sk", 0, 0, Axl1, false);
	Fade("絵マスク/絵演立絵n_s", 0, 1000, Dxl1, false);
	FadeDelete("絵板写", 200, null, true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080f]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa20/500100310mrp">
『山と積まれたクリマンの包装を、先んじて剥いてしまう作戦に出た！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	SetVolumeEX("@SE01*", 1500, 0, null);

{	Move("スラッシュ", 200, 700, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_happy");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa20/500100320skr">
「よっしゃ！　クリマンを剥け！　皮、剥きまくれ！」

{
	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa20/500100330ktt">
「あの……テレビ中継もあるし……
　あんまり大声で言わない方が……」

{
	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa20/500100340skr">
「は？　大声出すなって――」

{
	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa20/500100350ktt">
「クリマンの皮、剥けとか」

{
	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 300, 0, 2, 0, 0, 500, null, false);
	}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa20/500100360skr">
「あ！」

{
	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa20/500100370skr">
「ん……んんん……ああああああ！！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 300, 0, 10, 0, 0, 500, null, false);
	}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa20/500100380skr">
「な、なんだよ！
　なんて卑猥なこと言わせんだああッ！」

{
	St("MR",700, @0,@0,"bu千秋_驚天_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa20/500100390ktt">
「そんなっ！　オレのせいか！？」

{
	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa20/500100400skr">
「うっせ！　ったく、もう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa20/500100410skr">
「しかしまあ、最後にデザートとは、気が利いてるな」

{
	St("MR",700, @0,@0,"bu千秋_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa20/500100420ktt">
「本当に、そうかな……？」

{
	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa20/500100430skr">
「ん？　なんでだ？」

{
	St("MR",700, @0,@0,"bu千秋_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa20/500100440ktt">
「だって、アレ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	CreatePlainSP("絵板写", 5000);
	Wait(16);
	St("R",700, @0,@0,"stＡＤ_通常_sad");
	DeleteAllSt(0,true);
	FadeSt("R",0,true);
	CreateTextureSP("絵演背景", 20, Center, Middle, "cg/bg/bg1201211ＵＰ＋_屋外セット_炎上.jpg");
	FadeDelete("絵板写", 200, null, true);
	Shake("@StNameR/R*", 1000, 3, 0, 0, 0, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0119]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa20/500100450adi">
「ううう……神様……
　お願いします……助けて……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreatePlainSP("絵板写", 5000);
	Wait(16);
	St("MR",700, @0,@0,"bu千秋_通常_think");
	DeleteSt("R",0,false);
	FadeSt("MR",0,true);
	Delete("絵演背景");
	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa20/500100460ktt">
「なんか、必死に祈ってるけど」

{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa20/500100470ktt">
「やばいものでも入ってるんじゃないかな？」

{
	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa20/500100480skr">
「やばいもの……？」

{
	St("MR",700, @0,@0,"bu千秋_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa20/500100490ktt">
「ほら、例えば賞味期限が切れてたり……」

{
	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa20/500100500skr">
「いやいや、まさかそんなこと……」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa20/500100510skr">
「待てよ」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa20/500100520skr">
「…………クリスマスは１週間前か」

{
	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa20/500100530ktt">
「いかにも、売れ残りっぽい感じだよな……」

{
	SetVolumeEX("@xbgm*", 1500, 0, null);
	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa20/500100540skr">
「ってことは、まさか――！？」

{
	St("C",700, @0,@0,"buフウリ_頬手_smile");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa20/500100550wfu">
「ふふふふ……クリスマス、万歳！」

{
//	St("C",700, @0,@0,"buフウリ_通常_normal");
//	FadeSt("C",200,true);
	}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa20/500100560wfu">
「クリマン、いただきまー――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	ClockPass(2057);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{
//	SetVolumeEX("@xbgm*", 1500, 0, null);
	SoundPlay("@xbgm03",0,450,true);
	DeleteSt("C",200,true);
	St("L",700, @-100,@0,"buみそa_通常_cry");
	Move("@StNameL/L*", 300, @100, @0, Dxl2, false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa20/500100570mso">
「姐さ――――んッ！！」

{	St("R",700, @-100,@0,"buブーa_通常_cry");
	Move("@StNameR/R*", 300, @100, @0, Dxl2, false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa20/500100580buu">
「た、助けてくださいいいッ！！」

{
	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa20/500100590skr">
「みそブー！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//◆音声指示：スピーカー越し
{
	St("R",700, @0,@0,"buミリＰb_通常_shock");
	DeleteSt("C",200,false);
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa20/500100600mrp">
『な、どうしたのッ！？』

//◆音声指示：スピーカー越し
{	St("R",700, @0,@0,"buミリＰb_通常_shout");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa20/500100610mrp">
『突然観客席から、ヤンキーコンビが乱入ッ！！』

//◆音声指示：スピーカー越し
{	St("R",700, @0,@0,"buミリＰb_通常_shock");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa20/500100620mrp">
『ステージは大混乱よッ！！』

{
	St("R",700, @0,@0,"buＡＤ_通常_shock");
	DeleteSt("R",200,false);
	FadeSt("R",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa20/500100630adi">
「と、トイレのふたり組じゃないですか！！」

{
	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteSt("R",200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa20/500100640skr">
「トイレの！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{
	St("C",700, @50,@0,"buＡＤ_通常_angry");
	DeleteSt("C",200,true);
	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa20/500100650adi">
「ダメです！　下がって！」

{
	St("R",700, @0,@0,"buブーa_通常_normal");
	St("L",700, @0,@0,"buみそa_通常_normal");
	DeleteSt("C",200,false);
	FadeSt("R",200,false);
	FadeSt("L",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa20/500100660buu">
「あ、ＡＤのひと！」

//【みそ】
<voice name="みそ" class="みそ" src="voice/aa20/500100670mso">
「その節はどうもー」

{
	St("C",700, @0,@0,"buＡＤ_通常_smile");
	St("C",700, @0,@0,"buＡＤ_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);
	FadeStPro("C", 200, 1000);
	}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa20/500100680adi">
「どうもー、じゃなくて！」

{
	AgainSt("C",700, @0,@0,"buＡＤ_通常_angry");
	St("R",700, @0,@0,"buブーa_通常_shout");
	St("L",700, @0,@0,"buみそa_通常_sad");
	DeleteSt("C",200,false);
	FadeSt("R",200,false);
	FadeSt("L",200,true);
	}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa20/500100690mso">
「でも、オレたちゃ感動の再会中なんですよ」

//【ブー】
<voice name="ブー" class="ブー" src="voice/aa20/500100700buu">
「そうだそうだ！　邪魔しないで――」

{	St("C",700, @0,@0,"buＡＤ_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);
	}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa20/500100710adi">
「邪魔なのは貴方たちです！
　テレビ中継ですよ！」

{
	St("R",700, @0,@0,"buブーa_オラオラ_happy");
	St("L",700, @0,@0,"buみそa_通常_angry");
	DeleteSt("C",200,false);
	FadeSt("R",200,false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa20/500100720mso">
「な――テレビだとっ！？」

//【ブー】
<voice name="ブー" class="ブー" src="voice/aa20/500100730buu">
「イエーイ！　みんな見てるー？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	ClockPass(2058);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	St("C",700, @0,@0,"bu沙紅羅_通常_happy");
	St("C",700, @0,@0,"bu沙紅羅_木刀_angry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);
	FadeStPro("C", 200, 1400);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa20/500100740skr">
「『みんな見てるー？』じゃねぇだろっ！」

//◆演出指定：木刀で二人を叩く
{
	AgainSt("C",700, @0,@0,"bu沙紅羅_木刀_angry");
	DeleteAllSt(200,true);
	CreateSE("SE01","se戦闘_木刀_コツン");
	MusicStart("SE01",0,1400,0,1000,null,false);
	CreateColorSP("絵色白", 710, "#FFFFFF");
	Wait(50);
	Delete("絵色白");
	St("R",700, @0,@0,"buブーa_通常_sad");
	St("L",700, @0,@0,"buみそa_通常_sad");
	FadeSt("R",200,false);
	FadeSt("L",200,true);
	Shake("@StNameL/L*", 300, 0, 10, 0, 0, 500, null, false);
	}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa20/500100750mso">
「いでッ！」

{
	CreateSE("SE01","se戦闘_木刀_コツン");
	MusicStart("SE01",0,1400,0,1000,null,false);
	CreateColorSP("絵色白", 710, "#FFFFFF");
	Wait(50);
	Delete("絵色白");
	Shake("@StNameR/R*", 300, 0, 10, 0, 0, 500, null, false);
}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa20/500100760buu">
「いででッ！」

{

	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa20/500100770skr">
「皆さんに迷惑かけるんじゃねぇ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{
	St("R",700, @0,@0,"buブーa_通常_sad");
	DeleteSt("C",200,false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa20/500100780buu">
「だって……オレたち無実の罪で、追われてて」

{
	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteSt("R",200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa20/500100790skr">
「無実の罪？　どうせなんかせこい万引きでも――」

{
	St("ML",700, @-50,@0,"bu平次_御用だ_angry");
	DeleteSt("C",200,false);
	Move("@StNameML/ML*", 300, @50, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aa20/500100800fjh">
「なにしてやがるッ！
　てめぇら、さっさとステージを下りろッ！」

{

	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa20/500100810skr">
「げぇっ！　モジャモジャ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{
	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa20/500100820skr">
「おまえら、あいつに追われてたのか？」

{
	St("R",700, @0,@0,"buブーa_通常_sad");
	St("L",700, @0,@0,"buみそa_通常_sad");
	DeleteSt("C",200,false);
	FadeSt("R",200,false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa20/500100830mso">
「そ……そうなんです！」

//【ブー】
<voice name="ブー" class="ブー" src="voice/aa20/500100840buu">
「いくらなにもしてないって言っても、全然聞く耳持たねぇんだ！」

{
	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa20/500100850skr">
「くそっ！　アイツならやりかねねぇな……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa20/500100860skr">
「よし、ずらかるぞッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreatePlainSP("絵板写", 5000);
	Wait(16);
{	St("R",700, @0,@0,"buブーa_通常_shout");
	St("L",700, @0,@0,"buみそa_通常_shout");
	DeleteSt("C",0,false);
	FadeSt("R",0,false);
	FadeSt("L",0,true);}
	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210a]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa20/500100870mso">
「応っ！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/aa20/500100880buu">
//「応っ！」

</PRE>
	SetText();
	AddText(1,"「応っ！」","みそ","aa20/500100870mso",false,false,1000);
	AddText(2,"「応っ！」","ブー","aa20/500100880buu",true,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

	CreateSE("SE01","se擬音_ギャグ_逃げる");
	CreateSE("SE02","se擬音_ギャグ_逃げる");
	Wait(16);
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameL/L*", 250, @1224, @0, null, false);
	Wait(100);
	MusicStart("SE02",0,700,0,950,null,false);
	Move("@StNameR/R*", 200, @-1224, @0, null, false);

{	ClockPass(2059);}

{
	Fade("絵マスク/絵演立絵*", 0, 0, null, true);
	Wait(16);
	Fade("絵マスク/絵演立絵s_s", 200, 1000, Dxl1, false);
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク", 200, 0, 0, Dxl3, true);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210b]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa20/500100890mrp">
『沙紅羅選手、二人組と共にステージ上から撤収！？』

{
	Move("スラッシュ", 200, 700, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	St("C",700, @-50,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500100900fje">
「ちょ！　こら！　待ちなさいッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{
	St("C",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500100910fje">
「ユージロー！」

{
	St("ML",700, @0,@50,"buユージローa_通常_ero");
	DeleteSt("C",200,false);
	Move("@StNameML/ML*", 300, @0, @-50, Dxl2, false);
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 1000, 0, 3, 0, 0, 500, null, false);
	}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/aa20/500100920ujr">
「わうわうわうわうッ！！」

{
	St("MR",700, @0,@0,"bu千秋_驚天_shock");
	DeleteSt("ML",200,true);
	FadeSt("MR",200,true);
	Shake("@StNameMR/MR*", 300, 0, 10, 0, 0, 500, null, false);
	}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa20/500100930ktt">
「ひえええええええっ！！」

{
	St("C",700, @0,@0,"bu恵那_一休_think");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500100940fje">
「ちょっとユージローッ！！
　アッキーちゃん追いかけてる場合じゃ――」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵背景", 1000, Center, -288, "cg/bg/l/bg1201211ＵＰ＋_屋外セット_炎上_l.jpg");
	Fade("絵背景", 300, 1000, null, false);
	Move("絵背景", 300, 0, @0, AxlDxl, true);
	DeleteAllSt(0,true);

	St("L",1010, @-512,@0,"bu千秋_通常_normal");
	FadeSt("L",0,true);
	Move("@StNameL/L*", 200, @512, @0, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0225a]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa20/500100950kit">
「オレ……さっきから、ここにいるんだけど……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("R",1110, @512,@0,"bu千秋_朗らか_shock");
	CreateTextureEX("絵背景上", 1100, 0, -500, "cg/bg/l/bg1202300ＵＰ＋_セット上_炎上_l.jpg");

//あきゅん「演出：これらの命令を下記のプロセスに格納」
	//Fade("絵背景上", 300, 1000, null, false);
	//Move("@StNameL/L*", 300, @-1024, @0, AxlDxl, false);
	//Move("絵背景", 300, -1024, @0, AxlDxl, false);
	//Move("絵背景上", 300, -1024, @0, AxlDxl, true);

	FadeSt("R",0,true);

	//Move("@StNameR/R*", 200, @-512, @0, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0225b]
{
//	St("C",700, @0,@0,"bu恵那_一休_surprise");
//	DeleteSt("L",200,false);
//	FadeSt("C",200,true);
	LcPro_aa2050sakura_huuri_hutari();
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500100960fje">
「え？　は？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 3000);
	Wait(16);
	Request("Pro", Stop);
	Delete("Pro");
	DeleteAllSt(0,true);
	St("R",1110, @512,@0,"bu千秋_朗らか_shock");
	CreateTextureSP("絵背景上", 1100, 0, -500, "cg/bg/l/bg1202300ＵＰ＋_セット上_炎上_l.jpg");
	Wait(16);
	Move("@StNameL/L*", 0, @-1024, @0, AxlDxl, false);
	Move("絵背景", 0, -1024, @0, AxlDxl, false);
	Move("絵背景上", 0, -1024, @0, AxlDxl, true);
	FadeSt("R",0,true);
	Move("@StNameR/R*", 0, @-512, @0, Dxl1, true);

	CreateMaskAXLSP("マスク", 2100, 0, 0, "ciスラッシュ_05_00", false, "ciスラッシュ_05_00z");
	CreateTextureSP("マスク/絵背景", 2000, 0, -500, "cg/bg/l/bg1201211ＵＰ＋_屋外セット_炎上_l.jpg");
	CreateTextureSP("マスク/絵立絵", 2010, 65, 7, "cg/bu/bu千秋_通常_worry.png");
	Move("@マスク*", 0, @-768, @0, null, true);
	Wait(16);
	Delete("絵板写");

	Move("@マスク*", 600, @768, @0, DxlAuto, true);

	WaitKey(1000);

	St("C",19010, @0,@120,"fu恵那_通常_pinch");
	Move("@StNameC/C*", 500, @0, @-120, DxlAuto, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0225c]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500100970fje">
「アッキーちゃんが、ふたり！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	WaitAction("@StNameC/C*", null);

	DeleteAllSt(450,false);
	CreatePlainSP("絵板写", 3000);
	Wait(16);
	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

	DeleteSt("R", 0,true);
	Delete("@マスク*");
	Delete("絵背景*");
	St("X",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("X",0,true);
	Wait(16);
	FadeDelete("絵板写", 300, null, true);

	KoreJikenStart();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500100980fje">
「コレは事件ッ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(0,true);
	TextBoxDelete(150);

	KoreJikenEnd(true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{
	St("L",700, @0,@0,"buみそa_通常_smile");
	DeleteSt("C",200,false);
	FadeSt("L",200,true);
}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa20/500100990mso">
「よっしゃ！　今のうち――」

{	Move("@StNameL/L*", 300, @50, @0, Dxl2, false);
	DeleteSt("L",200,true);
	St("C",700, @0,@0,"bu平次_御用だ_angry");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aa20/500101000fjh">
「待てぇい！」

{	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	DeleteSt("C",200,true);
	St("R",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa20/500101010buu">
「逃げろー！」

//◆音声指示：遠くへ
{	Move("@StNameR/R*", 300, @50, @0, Dxl2, false);
	DeleteSt("R",200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_pain");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa20/500101020skr">
「弟子よすまねぇ！　後は頼んだ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	DeleteSt("C",200,true);
	
	TextBoxDelete(150);



	EndScene();
}
