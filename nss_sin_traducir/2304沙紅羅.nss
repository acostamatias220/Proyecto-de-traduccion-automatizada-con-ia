
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2304沙紅羅.nss_MAIN
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
	$GameName = "2310沙紅羅.nss";
}

scene 2304沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="750">
////////////header////////////
//file name "2304沙紅羅.nss"
//title "死"
//previous "2301沙紅羅.nss"

////////////footer////////////
//next "沙紅羅" "2310沙紅羅.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2304);}


//◆場所：半田明神_境内_ペンキ
	OnBG(10,"bg0603200半田明神_境内_ペンキ");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);


{	St("ML",700, @0,@0,"bu双六a_通常_smile");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/040100010ksr">
「誰を捜してんだ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("ML",200,true);

//◆ＳＥ：ドッキーン！！
	CreateSE("SE01","se擬音_ギャグ_ドッキーン");
	MusicStart("SE01",0,1000,0,1000,null,false);

	St("C",700, @0,@+100,"bu沙紅羅_通常_surprise");

	Shake("@StNameC/C*", 300, 3, 0, 0, 0, 1000, null, false);
	FadeSt("C",200,false);
	Move("@StNameC/C*", 150, @0, @-120, Dxl1, true);
	Move("@StNameC/C*", 150, @0, @+20, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100020skr">
「え……？」

{	St("C",700, @0,@0,"bu沙紅羅_乙女_shy");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100030skr">
「あ、ああ、その声は……」

{	DeleteSt("C",200,true);
	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/040100040ksr">
「こっちだ」

{	OnSE("se動作_足踏み",500);
	Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	DeleteSt("ML",200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100050skr">
「双六……さん？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se動作_足踏み");
	MusicStart("SE01",0,500,0,2000,null,false);
	Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	DeleteSt("C",200,true);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


{	ClockPass(2305);}

//◆場所：半田明神_涸れ井戸
	OnBG(10,"bg0606100半田明神_涸れ井戸_通常");
	FadeBG(0,true);

	Wait(500);

	CreateSE("SE10","se環境_風と葉っぱ_l");
	MusicStart("SE10",3000,700,0,1000,null,true);


	DrawDelete("黒幕１", 1000, 100, null, "blind_01_00_1", true);



{	St("MR",700, @0,@0,"bu沙紅羅_乙女_shy");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100060skr">
「あ……あの、す、双六さん……
　なんで、こんなところに……？」

{	St("ML",700, @0,@0,"bu双六a_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/040100070ksr">
「おまえに会いに来た」

{	St("MR",700, @0,@0,"bu沙紅羅_乙女_shy");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100080skr">
「え……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu沙紅羅_乙女_shy2");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100090skr">
「あ、アタシのために、わざわざ？」

{	St("ML",700, @0,@0,"bu双六a_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/040100100ksr">
「ああ」

{	St("MR",700, @0,@0,"bu沙紅羅_乙女_shy");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100110skr">
「あ……えと……その……」

{	St("MR",700, @0,@0,"bu沙紅羅_乙女_shy2");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100120skr">
「ありが……とう、ございます……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100130skr">
「そんな……でもあの……アタシ、まだ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/040100140ksr">
「似鳥、良くやったじゃねぇか。
　アイツがノーコに愛を打ち明けるなんてなぁ……」

{	St("MR",700, @0,@0,"bu沙紅羅_乙女_shy2");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100150skr">
「あ……見てて、くれたんですか？」

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/040100160ksr">
「ああ。双一親分も、予想してなかったみたいだぜ」

{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/040100170ksr">
「確信したよ。
　おまえ、オレの運命の女だ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu沙紅羅_乙女_shy");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100180skr">
「あ――」

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/040100190ksr">
「だから、後悔しないように言っておく」

{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/040100200ksr">
「コイツ、使え」

{	St("MR",700, @0,@0,"bu沙紅羅_乙女_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100210skr">
「え……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);


//嶋：借入
//おがみ：本番にしました。
	CreateTextureEX("絵背景200", 900, Center, Middle, "cg/bg/bg0606100半田明神_涸れ井戸_通常.jpg");
	SetShade("絵背景200", HEAVY);

	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/img/imgアザナエルa.png");
	Move("絵背景100", 0, @0, @100, null, true);

	Move("絵背景100", 1000, @0, @-100, Dxl2, false);
	Fade("絵背景200", 1000, 1000, null, false);
	Fade("絵背景100", 1000, 1000, null, true);

	Wait(500);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100220skr">
「アザナエル……？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100230skr">
「なんで……！？
　わざわざ、持ってきてくれたんですか？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/040100240ksr">
「双一親分には内緒でな」

{
	Fade("絵背景100", 300, 0, null, false);
	Fade("絵背景200", 300, 0, null, true);
	Delete("絵背景100");
	Delete("絵背景200");
	St("MR",700, @0,@0,"bu沙紅羅_乙女_smile");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100250skr">
「ありがとうございます！
　これで、ミヅハの封印も――」

{	St("ML",700, @0,@0,"bu双六a_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/040100260ksr">
「封印を解くために持ってきたんじゃねぇ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/040100270ksr">
「おまえにカゴメアソビをさせるため、だ」

{	St("MR",700, @0,@0,"bu沙紅羅_乙女_shy");
	DeleteSt("ML",200,false);
	FadeSt("MR",0,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100280skr">
「カゴメアソビを……？」

{	St("MR",700, @0,@0,"bu沙紅羅_乙女_shout");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100290skr">
「な、なにを言ってんですか！？
　百野殺駆<RUBY text="ヘッド">頭</RUBY>・月夜沙紅羅をなめないで下さい！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100300skr">
「神頼みなんてしない！
　アタシは自分の願いくらい、自分で叶えます！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100310skr">
「自分で叶えないと、意味がないんで――」

{	SetVolumeEX("SE10", 500, 0, null);

	DeleteSt("MR",200,true);
	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);
	Wait(200);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/040100320ksr">
「おまえの弟、死んだぞ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	Wait(1000);

{	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100330skr">
「…………」

{
	SoundPlay("@xbgm24",0,450,true);
	St("MR",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100340skr">
「……今、なんて？」

{
	St("ML",700, @0,@0,"bu双六a_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/040100350ksr">
「橘正純……
　心臓悪くて入院してたおまえの弟、死んだんだ」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100360skr">
「…………ウソ、だ」

{	St("MR",700, @0,@0,"bu沙紅羅_乙女_shout");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100370skr">
「そんなのウソ……ウソに決まってます！
　アタシは信じません！」

{	St("ML",700, @0,@0,"bu双六a_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/040100380ksr">
「だったら、病院行くか。
　もう動かない身体があるぜ」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100390skr">
「…………」

{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/040100400ksr">
「ほら、早く――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



{	ClockPass(2306);}


	CreateSE("SE01","se戦闘_刃物構える");
	CreateSE("SE02","se戦闘_風切り音03");


//マスク準備
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureEX("絵マスク用境界", 6520, Center, Middle, "cg/mask/ciスラッシュ_05_01z.png");
	CreateTextureEX("絵マスク/絵演背景", 1520, 300, Middle, "cg/bg/bg0606100半田明神_涸れ井戸_通常.jpg");
	SetShade("絵マスク/絵演背景", HEAVY);

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/bu歌門_通常_hard.png");
	Request("絵マスク/絵演立絵", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵2", 1530, Center, middle, "cg/bu/bu歌門_威圧_angry.png");
	Request("絵マスク/絵演立絵2", Smoothing);
	Move("絵マスク/絵演立絵2", 0, 188, InBottom, Dxl1, true);

//動作準備
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵", 0, 700, 200, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);

	Shake("絵マスク用境界", 400, 5, 0, 0, 0, 1000, Dxl1, false);
	Fade("絵マスク用境界", 200, 1000, null, false);

	Move("@StNameML/ML*", 200, @-80, @0, Dxl1, false);

	MusicStart("SE02",0,700,0,1000,null,false);
	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, 599, InBottom, Dxl1, true);

	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/040100410kms">
「その必要はありません」

{	Fade("絵マスク/絵演立絵2", 200, 1000, Dxl1, false);
	Fade("絵マスク/絵演立絵", 200, 0, Axl1, true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/040100420kms">
「全て、聞かせていただきました！
　飛んで火に入る夏の虫とはまさにこのこと！」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/040100430kms">
「アザナエルを置いて、去りなさい！！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/040100440ksr">
「へっ！　誰がそんなこと――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：矢が飛ぶ
	CreateColorEX("フラッシュ白", 15000, "WHITE");
	CreateTextureEX("絵背景100", 8000, Center, Middle, "cg/ef/ef破魔矢飛来a.jpg");
	Rotate("絵背景100", 0, @0, 180, @0, null,true);

	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetBlur("絵背景100", true, 3, 500, 80, false);

	CreateSE("SE02","se戦闘_弓矢_矢放つ");
	MusicStart("SE02",0,1000,0,1000,null,false);


	Zoom("絵背景100", 500, 1000, 1000, Dxl2, false);

	Fade("絵背景100", 300, 1000, Dxl1, true);

	Delete("絵マスク/絵*");
	Delete("絵マスク");
	Delete("絵マスク*");

	Wait(200);

	CreateSE("SE01","se戦闘_弓矢_光の矢");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("絵背景100", 200, 5000, 5000, Axl1, false);
	Fade("フラッシュ白",300,1000,null,true);

	Delete("絵背景100");

	CreateTextureEX("絵背景100", 2000, Center, InBottom, "cg/ev/ev0000歌門破魔弓.jpg");

	St("ML",700, @0,@0,"bu双六a_通常_pinch");
	FadeSt("ML",0,true);

	CreateSE("SE03","se戦闘_弓矢_刺さる01");
	CreateSE("SE04","se動作_足踏み");

	MusicStart("SE03",0,1000,0,1000,null,false);
	Move("@StNameML/ML*", 200, @-100, @0, Dxl1, false);
	Shake("@StNameML/ML*", 400, 0, 5, 0, 0, 1000, Dxl1, false);
	Fade("フラッシュ白",200,0,null,true);
	Delete("フラッシュ白");

	MusicStart("SE04",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/040100450ksr">
「ぬおっ！」

　木々を掠めて飛んだ星の矢が、双六の足元に刺さる。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se戦闘_弓矢_弓しなる");
	MusicStart("SE01",0,700,0,1000,null,false);


	Move("絵背景100", 1000, @0, -130, Dxl2, false);
	Fade("絵背景100", 1000, 1000, null, true);
	DeleteAllSt(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0115]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/040100460kms">
「次の矢は、外しません」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/040100470kms">
「さあ、大人しくアザナエルを渡しなさい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DrawTransition("絵背景100", 200, 1000, 0, 100, Dxl1, "cg/data/slide_03_01_0.png", true);
	Delete("絵背景100");

	St("C",700, @-90,@0,"bu双六a_通常_hard");
	Move("@StNameC/C*", 400, @90, @0, Dxl3, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//◆音声指示：小声
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/040100480ksr">
「おい、沙紅羅」

{	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);}
//◆音声指示：小声
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/040100490ksr">
「籠で、待ってる」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100500skr">
「かご……？」

{	DeleteSt("MR",200,true);
	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/040100510ksr">
「じゃあなッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,750,0,1000,null,false);

	Move("@StNameC/C*", 200, @-100, @+50, Axl1, false);
	DeleteSt("C",200,true);

	St("MR",700, @+100,@0,"bu歌門_威圧_hard");
	Move("@StNameMR/MR*", 200, @-100, @0, Dxl1, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/040100520kms">
「な――下！？」

　崩落した地下通路へ、双六は身体を躍らせた。

{	St("MR",700, @0,@0,"bu歌門_威圧_shout");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/040100530kms">
「待てッ！」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/040100540kms">
「こら、河原屋双六ッ！　アザナエルを――返せッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 1500, 0, null);

	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,750,0,1100,null,false);
	Move("@StNameMR/MR*", 200, @-100, @+50, Axl1, false);
	DeleteSt("MR",200,true);

	Wait(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
　双六を追いかけ、歌門も慌てて地下通路へ。

　ひとり、沙紅羅だけが、暗闇の森に残された。

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100550skr">
「…………」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100560skr">
「……だめだ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100570skr">
「アタシ……行かなきゃ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);
	TextBoxDelete(150);

{	ClockPass(2307);}

	CreateColorEX("黒幕１", 20000, "BLACK");
	Fade("黒幕１", 2000, 1000, null, true);

	Wait(1000);

//あきゅん「演出：シナリオ整合性のため以下のシナリオを次の沙紅羅に移植しました」

	EndScene();
}
