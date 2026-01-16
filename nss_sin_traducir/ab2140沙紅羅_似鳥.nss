
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ab2140沙紅羅_似鳥.nss_MAIN
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
		$GameName = "ab2150沙紅羅_似鳥_ノーコ.nss";
	}else if($CharaName=="似鳥"){
		$GameName = "ab2150沙紅羅_似鳥_ノーコ.nss";
	}else{
		$GameName = "ab2150沙紅羅_似鳥_ノーコ.nss";
	}

//	$GameName = "";
//	$GameCircle=false;


}

scene ab2140沙紅羅_似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="2210">
////////////header////////////
//file name "ab2140沙紅羅_似鳥.nss"
//title "同人誌発見！"
//previous "2130沙紅羅_似鳥_ノーコ.nss"

////////////footer////////////
//next "沙紅羅" "ab2150沙紅羅_似鳥_ノーコ.nss"
//next "似鳥" "ab2150沙紅羅_似鳥_ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：エレキセンター_廊下
	OnBG(10,"bg0901200エレキセンター_廊下_閉店");
	FadeBG(0,true);

//おがみ：前ファイル引継ぎのため調整しました。
	St("ML",700, @0,@0,"bu双六a_通常_pinch");
	FadeSt("ML",0,true);

	FadeDelete("上背景", 200, null, true);

{	ClockPass(2140);}

	SoundPlay("@xbgm04",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100010ksr">
「おい、似鳥」

{	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	DeleteSt("ML", 200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400100020nki">
「え……？」

{	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400100030nki">
「は？　双六さん！？」

{	Shake("@StNameMR/MR*", 100, 5, 5, 0, 0, 500, null, false);
	}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400100040nki">
「ひ、ひ、ひえ――」

{	St("ML",700, @0,@0,"bu双六a_通常_pinch");
	DeleteSt("MR", 200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100050ksr">
「追いかけたりしねぇよ。その価値もねえ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	DeleteSt("ML", 200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400100060nki">
「え……？」

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	DeleteSt("MR", 200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100070ksr">
「それに一応、あいつとも約束したしな」

{	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	DeleteSt("ML", 200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400100080nki">
「約束？」

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	DeleteSt("MR", 200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100090ksr">
「クズ野郎に教えてやる義理はねぇ」



{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteSt("ML", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100100skr">
「双六さん！　そこまで言わなくても――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("ML",700, @0,@0,"bu双六a_通常_hard");
	DeleteSt("C", 200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100110ksr">
「ん……？　なんか文句あるのか？」

{	St("ML",700, @0,@0,"bu双六a_横向き_sad");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100120ksr">
「コイツは、カゴメアソビに失敗した」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100130ksr">
「自分の頭に銃を向けるどころか、オレに弾を撃とうとしたクソ野郎だ」

{	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	DeleteSt("ML", 200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400100140nki">
「…………」

{	St("ML",700, @0,@0,"bu双六a_横向き_sad");
	DeleteSt("MR", 200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100150ksr">
「反論もできやしねぇ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("ML",700, @0,@0,"bu双六a_横向き_sigh");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100160ksr">
「負け犬だよ。
　一生、這いつくばって生きろ」



{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteSt("ML", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100170skr">
「――そんなこと、言わないでください」


{	St("C",700, @0,@0,"bu沙紅羅_放心_lost");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100180skr">
「もちろん、ここ一番で情けねーところもあります。
　コイツはちゃんと、優しいところも持ってるんです」



//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100190skr">
「無理を言って頭を下げるアタシに同人誌をくれたし、急なテレビの仕事も引き受けてくれた」



//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100200skr">
「人の気持ちが、ちゃんとわかるヤツなんです」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100210skr">
「一度や二度、失敗したからって……
　全部否定するのは、酷すぎんじゃないですか？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100220skr">
「もう一回、チャンスがあったって――」


{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	DeleteSt("C", 200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100230ksr">
「ねえよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100240ksr">
「一度汚れちまったものは、もう二度と元に戻らねぇ」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteSt("ML", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100250skr">
「そんなことないです！　そんなこと――」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100260skr">
「私だって、ろくでもないことばっかりしてきました！」



//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100270skr">
「でも――まだ、きっと――」

{	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100280skr">
「双六さんだって――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2141);}


////	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	DeleteSt("C", 200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100290ksr">
「…………」


{	St("ML",700, @0,@0,"bu双六a_横向き_sad");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100300ksr">
「おい、似鳥。
　嬢ちゃんの勇気に免じて、教えてやるよ」

{	St("ML",700, @0,@0,"bu双六a_横向き_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100310ksr">
「アザナエルは願いを叶える」

{	St("ML",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100320ksr">
「お前、村崎に撃たれただろ？
　だから、お前の願いが叶ったんだ」


{	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	Shake("@StNameMR/MR*", 100, 5, 5, 0, 0, 500, null, false);
	DeleteSt("ML", 200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400100330nki">
「ちょ、ちょっと待って！」

{	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400100340nki">
「ノーコを現実化させるのが、オレの願い？」

{	St("ML",700, @0,@0,"bu双六a_横向き_sad");
	DeleteSt("MR", 200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100350ksr">
「さあて……自分でも気づいちゃいねぇのさ」

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100360ksr">
「アザナエルが読み取った本当の願いの意味――
　もっと腰を据えて、考えてみるんだな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	DeleteSt("ML", 200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400100370nki">
「そんな、でも――」


{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	DeleteSt("MR", 200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100380ksr">
「嬢ちゃん」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteSt("ML", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100390skr">
「は……はい！」

{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	DeleteSt("C", 200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100400ksr">
「嬢ちゃんの根性、気に入った。
　一緒に来るか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteSt("ML", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100410skr">
「え……？」

{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	DeleteSt("C", 200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100420ksr">
「ひとりもんだろ？　オレが面倒見てやるよ」

{	St("ML",700, @0,@0,"bu双六a_通常_smile");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100430ksr">
「なんか欲しいものあっか？
　なんでも買ってやるよ」

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100440ksr">
「それとも……何か、叶えたい願いが？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteSt("ML", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100450skr">
「願い……ですか？」


{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	DeleteSt("C", 200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100460ksr">
「さっき、アザナエルの話をしただろ？」


{	CreateMask("絵マスク", 1900, 0, 0, "cg/data/slide_06_00_1.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateColorEX("絵マスク/絵演色", 1510, "#000000");
	Fade("絵マスク/絵演色", 500, 1000, null, false);
	DeleteAllSt(500,true);
	CreateTextureEX("絵背景100", 2000, Center, 100, "cg/img/imgアザナエルa.png");
	Move("絵背景100", 1000, @0, @-100, DxlAuto, false);
//	Zoom("絵背景100", 0, 500, 500, null, true);
	Fade("絵背景100", 1000, 1000, null, true);
}


　双六が胸元から取り出すのは――黒光りする銃。



//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100470skr">
「本物……？」

{	St("MR",700, @0,@0,"bu似鳥_通常_hard");
	DeleteSt("C", 200,false);
	FadeSt("MR",500,false);
	FadeDelete("絵マスク", 500, null, false);
	FadeDelete("絵マスク/絵演色", 500, null, false);
	FadeDelete("絵背景100", 500, null, true);

	Move("@StNameMR/MR*", 400, @0, @15, DxlAuto, true);
	Move("@StNameMR/MR*", 600, @0, @-15, DxlAuto, true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400100480nki">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　無言で似鳥が頷く。


{	St("ML",700, @0,@0,"bu双六a_通常_smile");
	DeleteSt("MR", 200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100490ksr">
「カゴメアソビっていってな。
　これでロシアンルーレットをするんだ」



//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100500ksr">
「テレビで見たことないか？
　シリンダにタマを入れて、回して――」


{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100510ksr">
「バ――――ン！！」


{	St("ML",700, @0,@0,"bu双六a_通常_smile");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100520ksr">
「上手くいったら、願いが叶う」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteSt("ML", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100530skr">
「……信じられません」

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	DeleteSt("C", 200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100540ksr">
「ノーコの力を見ただろ？
　あれをどうやって説明する？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteSt("ML", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100550skr">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);

{	ClockPass(2142);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100560skr">
「……どうしてアタシに、そんな話を？」

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	DeleteSt("C", 200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100570ksr">
「双一親分は、いつも探してるんだ」

{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100580ksr">
「カゴメアソビに自分の命を懸けることのできる、骨のある人間をな」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteSt("ML", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100590skr">
「それでアタシを選んだってことですか？」

{	St("ML",700, @0,@0,"bu双六a_通常_smile");
	DeleteSt("C", 200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100600ksr">
「まあね」


{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteSt("ML", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100610skr">
「…………」

{	St("ML",700, @0,@0,"bu双六a_横向き_normal");
	DeleteSt("C", 200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100620ksr">
「嬢ちゃん、何か願いはねぇか？」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100630ksr">
「それだけ生きてりゃ、死ぬほど後悔したことあるだろ？
　これからどうしても、叶えたい夢とかあるだろ？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteSt("ML", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100640skr">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100650skr">
「夢は……あります」

{	St("ML",700, @0,@0,"bu双六a_横向き_pride");
	DeleteSt("C", 200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100660ksr">
「だろ？　このアザナエルを使えば――」

{	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	DeleteSt("ML", 200,false);
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100670skr">
「けどッ！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100680skr">
「これは、ずるをしちゃ、だめなんです」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100690skr">
「アタシ……
　ずっと、マーくんの望みを裏切り続けてきたから」


{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100700skr">
「これは罪滅ぼしです。
　自分の力で、手に入れたいんです」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100710skr">
「なあ、似鳥」

{	St("MR",700, @0,@0,"bu似鳥_眼鏡上げ_angry");
	DeleteSt("C", 200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400100720nki">
「あ……ああ」

{	St("ML",700, @0,@0,"bu双六a_横向き_normal");
	DeleteSt("MR", 200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100730ksr">
「そいつは負け犬だ。
　一緒にいると、匂いがうつるぜ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100740ksr">
「告白を蹴ったところ見ても、わかるだろ？」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100750ksr">
「あのノーコとかいうやつに追いかけられるのも、自業自得ってヤツだよ」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteSt("ML", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100760skr">
「…………」

{	St("ML",700, @0,@0,"bu双六a_通常_smile");
	DeleteSt("C", 200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100770ksr">
「今ならただで、撃たせてやるよ」

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100780ksr">
「だが――次に来たら、ただじゃ願いは叶えさせねぇ」


{	St("ML",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100790ksr">
「それなりの誠意を、見せてもらうことになるぜ」


{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteSt("ML", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100800skr">
「どうして――」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100810skr">
「どうしてそんなに、悲しい顔をするんですか？」

{	St("ML",700, @0,@0,"bu双六a_通常_sad");
	DeleteSt("C", 200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100820ksr">
「悲しい顔……？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteSt("ML", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100830skr">
「今日の出来事を仕組んだのは、双六さんですか？
　アザナエルを世に解き放って、みんなの欲望を煽って」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	DeleteSt("C", 200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100840ksr">
「オレは誰も殺しちゃいねぇぜ。
　ただ、ここに願いを叶える銃があるって教えただけ」

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100850ksr">
「しかも、命令したのは双一親分――」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteSt("ML", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100860skr">
「双六さん。あなた、もしかして……」

{	St("C",700, @0,@0,"bu沙紅羅_放心_lost");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100870skr">
「本当は、こんなことをしたくないんじゃないですか？」


{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100880skr">
「今の自分を一番後悔してるのは、あなた――」

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	DeleteSt("C", 200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100890ksr">
「ちげぇし」



{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteSt("ML", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100900skr">
「………………」

{	St("ML",700, @0,@0,"bu双六a_通常_shock");
	DeleteSt("C", 200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100910ksr">
「…………な、なんだよ？」

{	St("ML",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100920ksr">
「急にそんな目で見つめやがって――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	St("C",700, @0,@0,"bu沙紅羅_放心_lost");
	DeleteSt("ML", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100930skr">
「双六さん、お願いです」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100940skr">
「アタシと一緒に、最初から人生をやり直し――」

{	SetVolumeEX("@xbgm*", 4000, 0, null);
	St("ML",700, @0,@0,"bu双六a_通常_shout");
	DeleteSt("C", 200,false);
	Shake("@StNameML/ML*", 300, 10, 10, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100950ksr">
「黙れよ！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteSt("ML", 200,false);
	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400100960skr">
「…………」

{	St("ML",700, @0,@0,"bu双六a_通常_pinch");
	DeleteSt("C", 200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100970ksr">
「……ケッ！　どいつもこいつも」


{	St("ML",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100980ksr">
「オレが、今さらやり直せるわけねぇだろ」



//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400100990ksr">
「もう……手遅れなんだよ」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteSt("ML", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101000skr">
「双六さん……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2143);}


	DeleteAllSt(200,true);

/*
	TextBoxDelete(0);

	CreateColorEXadd("絵色100", 15000, "WHITE");
	DeleteSt("C", 0,false);
	Fade("絵色100", 0, 1000, null, true);

	OnBG(10,"bg0102300秋葉原_ガード下_破壊");
	FadeBG(0,true);
	
	St("L",700, @-120,@0,"buみそa_オラオラ_shout");

	
	FadeDelete("絵色100", 200, null, false);
	
	Move("@StNameL/L*", 200, @120, @0, DxlAuto, false);
	FadeSt("L",200,true);


	TextBoxDelete(150);

	CreateSE("SE01","se戦闘_風切り音03");
	CreateSE("SE02","se戦闘_風切り音06");
	CreateSE("SE03","se動作_足踏み");


	DeleteAllSt(200,true);
*/

	TextBoxDelete(150);

	SoundPlay("@xbgm07",0,450,true);

//横線準備
	CreateTextureEX("横線１", 19200, 1024, 80, "cg/mask/ciウィンドウ横01.png");
	CreateTextureEX("横線２", 19200, -1024, 470, "cg/mask/ciウィンドウ横01.png");

//窓準備
	CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef_カット汎用01.jpg");

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 19100, center, middle, "cg/bu/buみそa_通常_happy.png");
	CreateTextureEX("絵窓/絵演立絵2", 19100, center, middle, "cg/bu/buブーa_通常_shock.png");
	CreateTextureEX("絵窓/絵演立絵3", 19100, center, middle, "cg/bu/buミリＰb_ショータイム_shout.png");
	Move("絵窓/絵演立絵3", 0, @0, @100, null, true);
	Move("絵窓/絵演立絵*", 0, @0, @70, null, true);

//動作
	MusicStart("SE01",0,700,0,1000,null,false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);
	Move("絵窓/絵演立絵", 300, @-250, @0, Dxl2, false);
	Move("横線１", 300, @-1024, @0, DxlAuto, fasle);
	Fade("横線１", 300, 1000, null, false);
	Move("横線２", 300, @1024, @0, DxlAuto, false);
	Fade("横線２", 300, 1000, null, false);
	Fade("絵窓/絵演立絵", 300, 1000, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]

//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/400101010mso">
「いたああッ！」

{	MusicStart("SE02",0,700,0,1000,null,false);
	Move("絵窓/絵演立絵2", 300, @250, @0, Dxl2, false);
	Fade("絵窓/絵演立絵2", 300, 1000, null, true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/400101020buu">
「あ、姐さん、こんなところに――！」


{	MusicStart("SE03",0,700,0,1000,null,false);
	Move("絵窓/絵演立絵3", 300, @0, @-100, Dxl2, false);
	Fade("絵窓/絵演立絵3", 300, 1000, null, true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/400101030mrp">
「ふたりともッ！！　行くわよッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


/*
	Move("@StNameC/C*", 200, @120, @0, DxlAuto, false);
	DeleteSt("C", 200,true);

	OnBG(10,"bg0901200エレキセンター_廊下_閉店");
	FadeBG(200,true);
	DeleteAllSt(0,true);
	St("MR",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);
*/

{	FadeDelete("絵窓*", 200, null, true);
	FadeDelete("揺用", 200, null, false);

//※ミリＰ、みそブーの表示された窓が消えないバグが発生（11/17 21:39 svn revision1825 にて発生）していたので修正しました。原因となった行は以下にコメントアウトしておきます（mngw 11/18）
//	CreatePlainSP("揺用", 2000);
//	Delete("絵窓*");

	FadeDelete("横線*", 200, null, true);

	St("C",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400101040nki">
「あ、あいつらは――」


{	DeleteAllSt(200,true);}


　遙か遠くから走ってくるのは、マイクを持ったミリＰと、放送機材を持ったみそブー。


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//マスク準備
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	CreateTextureEX("スラッシュ", 2000, Center, Middle, "cg/mask/ciスラッシュ_05_01z.png");
	SetAlias("絵マスク","絵マスク");
	CreateTextureSP("絵マスク/絵演背景", 1520, Center, Middle, "cg/ef/ef_カット汎用01.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buミリＰb_ショータイム_normal.png");
	Request("絵マスク/絵演立絵", Smoothing);
	Move("絵マスク/絵演立絵", 0, @280, @50, null, true);

//動作準備
	Move("絵マスク*", 0, @650, @0, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);

//動作
	Move("絵マスク*", 300, @-650, @0, Dxl2, true);
	Fade("スラッシュ", 300, 1000, null, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, @-50, @-50, Dxl2, true);


/*
{	St("C",700, @-120,@0,"buミリＰb_ショータイム_happy");
	Move("@StNameC/C*", 200, @120, @0, DxlAuto, false);
	FadeSt("C",200,true);}
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0255]

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/400101050mrp">
『さあ！　全国ゆるキャラバンが予定より早く終了したため、急遽お送りしているドキュメント秋葉原！』


//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/400101060mrp">
『突如現れた謎のゴスロリ女！
　突如として崩れ落ちた高架下！』



//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/400101070mrp">
『風雲急を告げる秋葉原の中、アタシたちはとうとう、中心人物の似鳥君と沙紅羅ちゃんを発見したわ！』


{	CreatePlainSP("揺用", 2000);
	Delete("絵マスク*");
	FadeDelete("スラッシュ", 200, null, false);
	Fade("揺用", 200,0, null, true);
	Delete("揺用");
	St("C",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400101080nki">
「え……？　中継の続きをしてる……？！」


{	DeleteAllSt(200,false);
	St("ML",700, @-120,@0,"buみそa_通常_pride");
	Move("@StNameML/ML*", 200, @120, @0, DxlAuto, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/400101090mso">
「姐さん！　ご無事で！？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shy");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101100skr">
「まあ、なんとかな……」

{	St("MR",700, @0,@0,"buブーa_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/400101110buu">
「よかったぁ……
　でっかい音したから、心配したんですよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteSt("MR", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101120skr">
「っていうかおまえら、何してんだ？」

{	St("L",700, @0,@0,"buみそa_通常_normal");
	St("R",700, @0,@0,"buブーa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("R",200,false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/400101130mso">
「なにってそりゃ、中継の手伝いを。な、ブー？」


//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/400101140buu">
「おう！　ＡＤさんには、脱便を助けてもらった……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101150skr">
「だつべん……？」


{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400101160ksr">
「おう、久しぶりじゃねぇかてめぇら」


{	St("L",700, @0,@0,"buみそa_オラオラ_shock");
	St("R",700, @0,@0,"buブーa_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("R",200,false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/400101170mso">
「あ……双六さんっ！？」



//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/400101180buu">
「何でこんなところに！？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101190skr">
「っていうか――あれ？
　双六さん、知り合いなんですか？」

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400101200ksr">
「まあな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400101210ksr">
「おまえのことは、色々聞いたぜ」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101220skr">
「な――！？」


{	St("L",700, @0,@0,"buみそa_通常_pinch");
	St("R",700, @0,@0,"buブーa_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("R",200,false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/400101230mso">
「おいブー！　見えるか！」


//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/400101240buu">
「ああ、見える！」

{	St("R",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/400101250buu">
「姐さんが……女みたいに顔赤くしてる！」


{	St("L",700, @0,@0,"buみそa_通常_fear");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/400101260mso">
「世も末だ……」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_think");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101270skr">
「う、うるせー馬鹿」

{	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101280skr">
「ほら、さっさと移動するぞ！」

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400101290ksr">
「沙紅羅！」


{	St("ML",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400101300ksr">
「本当に、オレより似鳥を選ぶんだな？」


{	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101310skr">
「ああ！」

{	St("ML",700, @0,@0,"bu双六a_横向き_pride");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ab21/400101320ksr">
「後で泣きべそ、かくんじゃねぇぞ」

{	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101330skr">
「その時は、双六さんに土下座して謝ってやります！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2144);}


	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 4000, 0, null);

	SceneOut(5000, 1000, "blind_01_00_0");

	DeleteAllSt(0,true);

//◆場所：秋葉原_中央通り

	OnBG(10,"bg0103211秋葉原_中央通り_閉店");
	FadeBG(0,true);

	SceneIn(1000, "blind_01_00_1");

	SoundPlay("@xbgm02",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/400101340mrp">
「で、どこに行くわけ？」


{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_normal");
	DeleteSt("MR", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101350skr">
「とりあえずどーじんしを……」

{	St("MR",700, @0,@0,"buミリＰa_通常_sad");
	DeleteSt("C", 200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/400101360mrp">
「どーじんし？　それはなぜ？」

{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_shy");
	DeleteSt("MR", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101370skr">
「そりゃあもちろん、アタシの弟が――」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101380skr">
「じゃなくて、重要だからだよ！　その本が！」

{	St("MR",700, @0,@0,"buミリＰa_通常_shock");
	DeleteSt("C", 200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/400101390mrp">
「その本が、どのような重要性を……！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]


{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteSt("MR", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101400skr">
「それがノーコのモデルなんだとさ」

{	St("MR",700, @0,@0,"buブーa_オラオラ_shock");
	DeleteSt("C", 200,false);
	Shake("@StNameMR/MR*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/400101410buu">
「ななな、なんと！　脳内彼女が具現化ッ！！？」

{	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	DeleteSt("MR", 200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400101420nki">
「まあ……そういうことになるかな……」

{	St("C",700, @-150,@0,"buみそa_通常_hard");
	DeleteSt("ML", 200,false);
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/400101430mso">
「ん？　ノーナイカノジョってなんだ？　外人か？」

{	St("MR",700, @0,@0,"buブーa_オラオラ_happy");
	DeleteSt("C", 200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/400101440buu">
「脳内彼女とはッ！！
　妄想のおにゃのこのことです！」


{	St("ML",700, @0,@0,"buみそa_通常_fear");
	DeleteSt("MR", 200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/400101450mso">
「おにゃのこ？」

{	St("MR",700, @0,@0,"buブーa_オラオラ_shout");
	DeleteSt("ML", 200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/400101460buu">
「どうもこいつは、現実と虚構の区別がつかなくなっている様子！」

{	St("ML",700, @0,@0,"bu似鳥_通常_shout");
	DeleteSt("MR", 200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400101470nki">
「違う！　あいつはホントに――」

{	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	DeleteSt("ML", 200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/400101480mrp">
「ふむ……つまり、似鳥君にノーコちゃんの出自を突きつけることで、彼女を認めさせる……」


//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/400101490mrp">
「彼女を現実の存在と認めれば、似鳥君もノーコちゃんの告白を受け入れることができる……か」


{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteSt("MR", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101500skr">
「なに言ってるのかさっぱりわかんねーけど、まあそういうことだよ」



{	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101510skr">
「敵を知り己を知れば百戦危機一髪！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);

	DeleteSt("C", 200,false);

	St("R",700, @0,@0,"buブーa_通常_ero");
	St("L",700, @0,@0,"buみそa_通常_happy");
	FadeSt("L",200,false);
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]

//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/400101520buu">
「さすが姐さん！」


//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/400101530mso">
「カッコイイ！！」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buミリＰa_通常_pinch");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/400101540mrp">
「いやいや、今の変だったでしょ」


{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteSt("MR", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101550skr">
「オラ、似鳥！　元気出せよ！
　ショック受けてんじゃねーぞ！」

{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	DeleteSt("C", 200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400101560nki">
「いや……別にショックなんて――」

{	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	DeleteSt("ML", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101570skr">
「いーか似鳥！
　夢ってのは、自分の力で叶えるもんだ」



//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101580skr">
「ズルして上手い絵描けたって、うれしいか？
　うれしかねーだろ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	DeleteSt("C", 200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400101590nki">
「ま……まあ、そういうことも……」


{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteSt("ML", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101600skr">
「それによ。
　おまえの本当の望みが、ノーコを現実にしたんだろ」

{	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	DeleteSt("C", 200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400101610nki">
「オレは、ノーコが現実のものになることを、望んでた？」

{	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400101620nki">
「でも……なんで……？
　オレは……ノーコを……どうして……」


{	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	DeleteSt("ML", 200,false);
	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101630skr">
「だーかーらー！」

{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_smile");
	
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101640skr">
「その理由を、探りに行くんだろ？　な？」

{	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	DeleteSt("C", 200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400101650nki">
「ああ……うん」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 4000, 0, null);
	SceneOut(20000, 1000, "blind_01_00_0");

	DeleteAllSt(0,true);

//◆場所：秋葉原_蔵前橋通り
	OnBG(10,"bg0106100秋葉原_蔵前橋通り_通常");
	FadeBG(0,true);

	SceneIn(1000, "blind_01_00_1");

	WaitKey(1000);

	SceneOut(20000, 1000, "blind_01_00_0");
	PrintGO("上背景", 30000);

//◆時間：ジャンプ
{	ClockPass(2148);}

//◆場所：似鳥マンション_エントランス
	OnBG(10,"bg1301100似鳥マンション_エントランス_通常");
	FadeBG(0,true);

	Wait(2000);

	SceneIn(0, "blind_01_00_1");
	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]

{	St("ML",700, @-60,@0,"bu似鳥_通常_normal");
	Move("@StNameML/ML*", 200, @60, @0, DxlAuto, false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400101660nki">
「このマンションだ」


{	St("C",700, @0,@0,"buみそa_通常_hard");
	DeleteSt("ML", 200,false);
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/400101670mso">
「あれ？　ここ、確か……」


{	TextBoxDelete(150);
	PrintGO("上背景", 30000);

//◆場所：似鳥マンション_正面
	OnBG(10,"bg1302100似鳥マンション_正面_通常");
	FadeBG(0,true);
	DeleteAllSt(0,true);

	DrawDelete("上背景", 1000, 100, null, "blind_01_00_0", true);
	WaitKey(500);
	}


{	St("MR",700, @0,@0,"buミリＰb_通常_happy");
	DeleteSt("C", 200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/400101680mrp">
「さあ、番組をごらんのみなさん！」

{	St("MR",700, @0,@0,"buミリＰb_ショータイム_happy");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/400101690mrp">
「我々は今まさに、ノーコちゃんの秘密を暴こうとしています！」


{	DeleteAllSt(200,true);}

//◆ＳＥ：がちゃっ、鍵回す
{
	CreateSE("SE01","se動作_鍵開ける");
	MusicStart("SE01",0,700,0,1000,null,false);
	WaitKey(1000);
	}


{	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400101700nki">
「あれ？　部屋の鍵、開いてる？」


{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteSt("ML", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101710skr">
「よっしゃ！　行ったるぜ！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	TextBoxDelete(0);


	CreateColorEXadd("絵色100", 15000, "WHITE");
	Fade("絵色100", 0, 1000, null, true);
	
//◆ＳＥ：ドガン！　と扉を開ける
	CreateSE("SE01","se動作_ドア蹴破る.ogg");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(0,true);

//◆場所：似鳥マンション_玄関
	OnBG(10,"bg1303100似鳥マンション_玄関_通常");
	FadeBG(0,true);

	Shake("@OnBG*", 800, 5, 5, 0, 0, 500, null, false);
	Fade("絵色100", 500, 0, null, true);
	Delete("絵色100");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
{	St("C",700, @60,@0,"bu沙紅羅_頭かき_sigh");
	Move("@StNameC/C*", 500, @-60, @0, DxlAuto, false);
	FadeSt("C",500,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101720skr">
「……汚ねぇ部屋。
　ちゃんと掃除してんのか？」

{	St("ML",700, @0,@0,"bu似鳥_通常_rage");
	DeleteSt("C", 200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400101730nki">
「ば、バカにすんな！
　掃除くらいしてるよ！」


{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400101740nki">
「……半年に一度くらいは」

{	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	DeleteSt("ML", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101750skr">
「――はぁ」

{	St("ML",700, @0,@0,"bu似鳥_通常_rage");
	Shake("@StNameML/ML*", 300, 0, 5, 0, 0, 500, null, false);
	DeleteSt("C", 200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400101760nki">
「悪かったな！　生活能力なくて！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteSt("ML", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101770skr">
「で、奥は？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	PrintGO("上背景", 30000);

{	ClockPass(2149);}


//◆場所：似鳥マンション_リビング_同人誌散乱
	OnBG(10,"bg1304200似鳥マンション_リビング_同人誌散乱");
	FadeBG(0,true);

	SoundPlay("@xbgm05",0,450,true);

	DrawDelete("上背景", 500, 100, null, "blind_01_00_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
{	St("C",700, @60,@0,"bu沙紅羅_通常_sad");
	Move("@StNameC/C*", 500, @-60, @0, DxlAuto, false);
	FadeSt("C",500,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101780skr">
「…………」

{	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101790skr">
「なんだ……このゴミ溜め」

{	St("ML",700, @0,@0,"bu似鳥_通常_angry");
	DeleteSt("C", 200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400101800nki">
「う、うるさいなあ、もう！」

{	St("ML",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400101810nki">
「ちゃんと片付いてたよ！　片付いてたんだよ！
　でもさ、ほら、さっきの地震で――」


{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteSt("ML", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101820skr">
「ゴタクはいいから、さっさと探すぞ！」

{	Move("@StNameC/C*", 200, @60, @0, DxlAuto, false);
	DeleteSt("C", 200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101830skr">
「のーこんとろーる、のーこ……どはっ！」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	Shake("@StNameC/C*", 300, 10, 10, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101840skr">
「なななななな、なんだこの裸の山ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);
	YurActionSakIkariSet();
	YurActionSakIkari();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0416]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101850skr">
「破廉恥！　破廉恥！
　はッ！　れッ！　んッ！　ちッ！」


{	St("R",700, @120,@0,"buブーa_オラオラ_pinch");
	DeleteSt("C", 200,false);
	Move("@StNameR/R*", 200, @-60, @0, DxlAuto, false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/400101860buu">
「ヤバイみそ！　姐さんの暴走だ！！」

{	St("L",700, @-120,@0,"buみそa_オラオラ_pinch");
	Move("@StNameL/L*", 200, @60, @0, DxlAuto, false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/400101870mso">
「止めるぞ！　どりゃあああああ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);


	CreateColorSP("絵色白", 1000, "#FFFFFF");
	Wait(50);

	YurActionSakIkariDelete();

	St("R",700, @0,@0,"buブーa_通常_pinch");
	St("L",700, @0,@0,"buみそa_通常_pinch");
	St("C",800, @0,@0,"bu沙紅羅_通常_angry");
	Shake("@StNameC/C*", 300, 10, 10, 0, 0, 500, null, false);
	FadeSt("L",0,false);
	FadeSt("R",0,false);
	FadeSt("C",0,true);

	Shake("@OnBG*", 500, 5, 5, 0, 0, 500, null, false);

	Fade("絵色白", 200, 0, null, true);
	Delete("絵色白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]


{	Shake("@StNameC/C*", 300, 10, 10, 0, 0, 500, null, false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101880skr">
「ふがっ、うっ！　はな――離せッ！！」

{	Shake("@StNameR/R*", 100, 5, 5, 0, 0, 500, null, false);
	}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/400101890buu">
「離すなみそッ！
　油断するとはね飛ばされるぞッ！！」


{	Shake("@StNameL/L*", 100, 5, 5, 0, 0, 500, null, false);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/400101900mso">
「喝雄不死がなくて助かった……
　おいお前！　早く探せ！」

{
	CreateSE("SE01","se動作_同人探す_l");
	MusicStart("SE01",0,700,0,1000,null,true);
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400101910nki">
「あ、ああ！」


{	St("MR",700, @0,@0,"buミリＰb_ショータイム_pinch");
	DeleteSt("ML", 200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/400101920mrp">
「確かにコレはまずいわッ！」



//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/400101930mrp">
「ここまで来たのに……
　部屋中モザイクかけないと放送できないッ！！」


{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	DeleteSt("MR", 200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400101940nki">
「これじゃない！
　これも！　これも違う！」


{	St("C",700, @0,@0,"bu沙紅羅_通常_shy");
	DeleteSt("ML", 200,false);
	Shake("@StNameC/C*", 300, 0, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101950skr">
「な……なんだこの顔！？」

{	St("MR",700, @0,@0,"buブーa_通常_ero");
	DeleteSt("C", 200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/400101960buu">
「アヘ顔ですね」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shy");
	DeleteSt("MR", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101970skr">
「なんか男の目の前で、奥さんが……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
{	St("MR",700, @0,@0,"buブーa_通常_ero");
	DeleteSt("C", 200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/400101980buu">
「ネトラレちゃってますか」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteSt("MR", 200,false);
	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400101990skr">
「ぎゃっ！　な……なんだこのタコみたいなヤツ！」

{	St("MR",700, @0,@0,"buブーa_通常_ero");
	DeleteSt("C", 200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/400102000buu">
「触手は文化」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteSt("MR", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400102010skr">
「こんどは……なんかヒーローっぽい！？」

{	St("MR",700, @0,@0,"buブーa_通常_ero");
	DeleteSt("C", 200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/400102020buu">
「悪の女幹部に洗脳されてます」


{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteSt("MR", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400102030skr">
「な！？　こいつ、なんか生えてるぞ！」

{	St("MR",700, @0,@0,"buブーa_通常_ero");
	DeleteSt("C", 200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/400102040buu">
「いわゆる女装ショタ――」

{	St("ML",700, @0,@0,"buみそa_通常_pinch");
	DeleteSt("MR", 200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/400102050mso">
「おまえよく知ってんな」

{	CreateSE("SE01C","se擬音_ギャグ_きゃるーん");
	SetComic(@0,@0,4);
	Move("@Comic*", 0, @260, @-170, null, true);
	St("MR",700, @0,@0,"buブーa_通常_ero");
	DeleteSt("ML", 200,false);
	FadeSt("MR",200,true);
	MusicStart("SE01C",0,700,0,1000,null,false);
	FadeComic();}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/400102060buu">
「いやあ、それほどでも……」

{	DeleteComic();
	SetVolumeEX("SE01C", 200, 0, null);
	SetComic(@-60,@-200,1);
	St("C",700, @0,@0,"bu沙紅羅_頭かき_think");
	DeleteSt("MR", 200,false);
	FadeSt("C",200,true);
	FadeComic();}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400102070skr">
「誉めてねぇよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);

	DeleteComic();

	SetVolumeEX("SE*", 200, 0, null);
	CreateSE("SE02","se日常_冊子崩れる");
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
{	DeleteAllSt(200,true);
//	Shake("@OnBG*", 300, 10, 10, 0, 0, 500, null, false);
	BGPlainShake(50, 500, 10, 8, 0, 0, 1000, Dxl1, false);
	}

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400102080nki">
「あったッ！」


{	CreateTextureEX("絵背景000", 2000, Center, Middle, "cg/img/imgノーコントロール11.jpg");
	Fade("絵背景000", 500, 1000, null, false);
	DeleteAllSt(0,false);
	}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400102090nki">
「コレ！」

{	
	}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400102100nki">
「『ＮＯ　ＣＯＮＴＲＯＬ　１１』！！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",0,true);
	FadeDelete("絵背景000", 500, null, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400102110skr">
「よ……よっしゃ！」


{	SetVolumeEX("@xbgm*", 4000, 0, null);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400102120skr">
「よくやっ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);
	Wait(16);
{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	St("L",650, @0,@0,"buみそa_通常_fear");
	St("R",600, @0,@0,"buブーa_通常_pinch");
	FadeSt("R",0,false);
	FadeSt("L",0,false);
	FadeSt("C",0,true);}
	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0485a]
//◆音声指示：同時
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400102130">
「「「あ…………」」」

//◆音声指示：同時
//【みそ】
//<voice name="みそ" class="みそ" src="voice/ab21/400102140mso">
//「あ…………」

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/ab21/400102150buu">
//「あ…………」

</PRE>
	SetText();
	AddText(1,"「あ…………」","沙紅羅","ab21/400102130skr",false,false,1000);
	AddText(2,"「あ…………」","みそ","ab21/400102140mso",false,false,1000);
	AddText(3,"「あ…………」","ブー","ab21/400102150buu",false,false,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0485b]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400102160nki">
「ん？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

////	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400102170nki">
「オレに……何か？」



{	St("C",700, @0,@0,"bu沙紅羅_通常_shy");
	DeleteSt("ML", 200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/400102180skr">
「いや、お前じゃなく……」

{	St("ML",600, @0,@0,"buみそa_通常_fear");
	DeleteSt("C", 200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/400102190mso">
「後ろの……」

{	St("MR",650, @0,@0,"buブーa_通常_pinch");
	DeleteSt("ML", 200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/400102200buu">
「窓の外……」


{	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	DeleteSt("MR", 200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/400102210nki">
「え……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//◆演出指定：ここ、黒バックで

	TextBoxDelete(150);

	PrintFadeNut("上背景", 1000, true);

	DeleteSt("C", 0,true);
	Delete("@OnBG*");

	FadeDelete("上背景", 1000, null, true);



	EndScene();
}
