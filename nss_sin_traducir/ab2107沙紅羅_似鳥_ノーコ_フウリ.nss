
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ab2107沙紅羅_似鳥_ノーコ_フウリ.nss_MAIN
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
		$GameName = "ab2108沙紅羅_似鳥_フウリ.nss";
	}else if($CharaName=="似鳥"){
		$GameName = "ab2108沙紅羅_似鳥_フウリ.nss";
	}else if($CharaName=="ノーコ"){
		$GameName = "ab2108ノーコ.nss";
	}else if($CharaName=="フウリ"){
		$GameName = "ab2108沙紅羅_似鳥_フウリ.nss";
	}else{
		$GameName = "ab2108沙紅羅_似鳥_フウリ.nss";
	}

}

scene ab2107沙紅羅_似鳥_ノーコ_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="360">
////////////header////////////
//file name "ab2107沙紅羅_似鳥_ノーコ_フウリ.nss"
//title "突然エンターテイナー"
//previous "ab2100沙紅羅_似鳥_フウリ.nss"
//previous "ab2100ノーコ.nss"

////////////footer////////////
//next "沙紅羅" "ab2108沙紅羅_似鳥_フウリ.nss"
//next "似鳥戴斗" "ab2108沙紅羅_似鳥_フウリ.nss"
//next "ノーコ" "ab2108ノーコ.nss"
//next "フウリ" "ab2108沙紅羅_似鳥_フウリ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2107);}

//あきゅん「演出："ab2100ノーコ.nss"と合わせてます、修正するときは気をつける」

//	PrintFadeNut("上背景", 0, true);
//◆場所：ＵＰ＋_屋外セット
//	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);

	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",0,true);


	if($CharaName=="ノーコ")
	{
	FadeDelete("上背景", 500, null, true);
	}else{
	FadeDelete("上背景", 0, null, true);
	}

//	FadeDelete("上背景", 1000, null, true);

	St("C",700, @0,@0,"buミリＰb_ショータイム_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/070100010mrp">
『なんと！　今回は生放送特別企画！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_happy");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/070100020mrp">
『新進気鋭のスーパーデザイナーが、生で、キャラクターをデザインしてくれるのよ！』

{	St("R",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteAllSt(200,false);
	Move("@StNameR/R*", 200, @-60, @0, DxlAuto, false);
	FadeSt("R",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/070100030skr">
「ほほう！」

{	St("L",700, @0,@0,"buフウリ_胸手_worry");
	Move("@StNameL/L*", 200, @60, @0, DxlAuto, false);
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/070100040wfu">
「それは……大変ですね」

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/070100050mrp">
『それでは！
　早速そのスーパーデザイナーにインタビュー！』


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Move("@StNameC/C*", 200, @60, @0, DxlAuto, false);
	DeleteAllSt(200,true);

	PrintGO("上背景", 30000);
	Delete("@OnBG*");
	DeleteAllSt(0,true);

//	CreateTextureEX("絵背景000", 600, Center, Middle, "cg/bg/l/bg1201211ＵＰ＋_屋外セット_炎上_l.jpg");
//	SetShade("絵背景000", HEAVY);
//	Request("絵背景000", Smoothing);
//	Move("絵背景000", 0, @500, @0, null, true);
	
	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

//	St("ML",700, @0,@0,"bu似鳥_通常_normal");
//	FadeSt("ML",200,true);

	FadeDelete("上背景", 200, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]

//◆音声指示：スピーカー越し
{	St("MR",700, @60,@0,"buミリＰb_通常_happy");
	Move("@StNameMR/MR*", 200, @-60, @0, DxlAuto, false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/070100060mrp">
『さあ、チャレンジ前に意気込みを一言！』

{	St("ML",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/070100070nki">
「え…………？」

{	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	Shake("@StNameML/ML*", 100, 10, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/070100080nki">
「お、おおおおおおお、オレ？」


{	St("MR",700, @0,@0,"buミリＰb_ショータイム_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/070100090mrp">
「大丈夫！　なんとかするから、話合わせて！」

{	St("ML",700, @0,@0,"bu似鳥_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/070100100nki">
「話合わせるって――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 1500, 0, null);

	CreatePlainSP("絵板写", 5000);
	Wait(16);
	DeleteAllSt(0,true);
	CreateTextureEX("絵背景100", 20, Center, Middle, "cg/bg/l/bg1201211ＵＰ＋_屋外セット_炎上_l.jpg");
	SetShade("絵背景100", MEDIUM);
	Move("絵背景100", 0, @500, @0, null, true);
	Fade("絵背景100", 0, 1000, null, false);

	CreateMask("絵マスク", 0, 0, 0, "cg/data/slide_05_00_1.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateColorEX("絵マスク/絵演色", 25, "#000000");

	Wait(16);

	FadeDelete("絵板写", 500, null, true);
	Fade("絵マスク/絵演色", 500, 1000, null, true);

{	St("C",19010, @-160,@0,"fu似鳥_通常_shock");
	Move("@StNameC/C*", 1000, @60, @0, DxlAuto, false);
	FadeSt("C",1000,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/070100110nki">
「…………」

//◆音声指示：小声
{	St("C",19010, @-100,@0,"fu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/070100120nki">
「ああ……そうか……そうなんだ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆音声指示：小声
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("C",19010, @-100,@0,"fu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/070100130nki">
「オレが今ここに来たのは……もしかして……
　アザナエルが定めた、運命……！？」

//◆音声指示：小声
{	St("C",19010, @-100,@0,"fu似鳥_通常_angry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/070100140nki">
「ということは、オレがここで発表すべきマスコットキャラクターは、ズバリ――！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se擬音_フラッシュバック");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写上", 20000);
	Fade("@StNameC/C*", 0, 0, null, true);

	ClockDelete(0,true);

	CreateStencil("マスクノーコ",0,center,InBottom,128,"cg/bu/buノーコa_通常_normal.png",false);
	Move("マスクノーコ", 0, @0, @100, null, true);
	CreateColorSP("マスクノーコ/絵色黒", 2010, "#FFFFFF");
	CreateColorSP("絵色黒", 2000, "#000000");

	Fade("絵板写上", 0, 0, null, true);
	Wait(50);
	Fade("絵板写上", 0, 1000, null, true);
	Fade("@StNameC/C*", 0, 1000, null, true);
	Delete("マスクノーコ*");
	Delete("絵色黒");
	Delete("絵板写上");

	PrintFadeNut("上背景", 300, true);

	DeleteSt("C", 0,true);
	Delete("@OnBG*");
	Fade("絵背景100", 0, 0, null, false);
	Fade("絵マスク/絵演色", 0, 0, null, true);
	Fade("絵マスク", 0, 0, null, true);

	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

{	ClockPass(2107);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]

//◆音声指示：スピーカー越し
{	St("MR",700, @0,@0,"buミリＰb_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/070100150mrp">
『なんだか感無量……って感じね？
　自信はあるのかしら？』


{	St("ML",700, @0,@0,"bu似鳥_通常_rage");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 200, 0, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/070100160nki">
「もちろんですッ！！」

//◆音声指示：スピーカー越し
{	St("MR",700, @0,@0,"buミリＰb_ショータイム_happy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/070100170mrp">
『ああ、なんて素晴らしい意気込みかしら！
　ところで、そのキャラクターって？』

{	St("ML",700, @0,@0,"bu似鳥_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/070100180nki">
「彼女は……オレの運命です！」

//◆音声指示：スピーカー越し
{	St("MR",700, @0,@0,"buミリＰb_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/070100190mrp">
『お、大きく出たわね……』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]

{	St("MR",700, @0,@0,"buミリＰb_ショータイム_happy");
	FadeSt("MR",200,true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/070100200mrp">
『じゃあ早速、そのキャラクター描いてもらえるかしら？』

{	St("ML",700, @0,@0,"bu似鳥_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/070100210nki">
「もちろん！」



//◆音声指示：スピーカー越し
{	St("MR",700, @0,@0,"buミリＰb_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/070100220mrp">
『それじゃ、この紙とペンで――』



{	DeleteAllSt(200,true);
	
//◆ＳＥ：ペンを落とす
	CreateSE("SE01","se動作_ペン落とす");
	MusicStart("SE01",0,700,0,1000,null,false);
	WaitKey(1000);
}


{	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/070100230nki">
「おっと！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("MR",700, @0,@0,"buミリＰb_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/070100240mrp">
「あ、ごめんなさい！」

{	St("ML",700, @0,@0,"bu似鳥_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/070100250nki">
「いえ、こっちこそ……」


{	DeleteAllSt(200,true);}

//◆ＳＥ：ペンを落とす
{
	DeleteSt("C", 200,true);
	CreateSE("SE02","se動作_ペン落とす");
	MusicStart("SE02",0,700,0,1000,null,false);
	WaitKey(1000);
}


//◆ＳＥ：ペンを落とす
{
	CreateSE("SE03","se動作_ペン落とす");
	MusicStart("SE03",0,700,0,1000,null,false);
	WaitKey(1000);
}

{	St("ML",700, @0,@0,"bu似鳥_通常_lost");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/070100260nki">
「あれ……？　あれ……？」



//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/070100270nki">
「手が……震えて……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SoundPlay("@xbgm24",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("ML",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/070100280nki">
「掴めない……」

{	St("MR",700, @0,@0,"buミリＰb_ショータイム_happy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/070100290mrp">
「おおっと！？
　あまりの興奮に、武者震いしちゃったってワケね！」

{	St("ML",700, @0,@0,"bu似鳥_通常_lost");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/070100300nki">
「ええと、落ち着いて……
　落ち着いて……コラ！　落ち着け！」

{	St("ML",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/070100310nki">
「これが……運命なんだろ？
　オレは、ここでノーコの絵を描いて、それで……！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("ML",700, @0,@0,"bu似鳥_通常_angry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/070100320nki">
「それで、あいつのことを認めてやらなくちゃ――」

{	St("MR",700, @0,@0,"buミリＰb_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/070100330mrp">
「ほ、ホントに大丈夫？
　そんなに、焦んなくても……」

{	St("ML",700, @0,@0,"bu似鳥_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/070100340nki">
「オレ、描かなきゃ！
　ノーコを、描かなきゃいけないのに……」

{	St("MR",700, @0,@0,"buミリＰb_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/070100350mrp">
「ええと……向こうにカメラを戻そうにも、食べ物が――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("MR",700, @0,@0,"buミリＰb_ショータイム_pinch");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/070100360mrp">
「とりあえず、ＣＭ！
　ＣＭ入りますッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	TextBoxDelete(150);
	DeleteAllSt(200,true);}

//◆ＳＥ：ジングル
	CreateSE("SE01","se擬音_ゆるキャラジングル");
	MusicStart("SE01",0,700,0,1000,null,false);

	$SETime = RemainTime("SE01");
	WaitKey($SETime);

//	TextBoxDelete(150);

	SetVolumeEX("SE*", 1500, 0, null);

//※BGM24継続しつつ次のシナリオ（ab2108沙紅羅_似鳥_フウリ.nss" or "ノーコ" "ab2108ノーコ.nss"）へ（mngw 11/10）



	EndScene();
}
