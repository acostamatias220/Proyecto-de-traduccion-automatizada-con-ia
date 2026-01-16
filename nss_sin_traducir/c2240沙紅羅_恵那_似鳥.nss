
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene c2240沙紅羅_恵那_似鳥.nss_MAIN
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
	$GameName = "c2250沙紅羅_恵那_似鳥.nss";
}


scene c2240沙紅羅_恵那_似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



//<continuation number="1190">
////////////header////////////
//file name "c2240沙紅羅_恵那_似鳥.nss"
//title "ノーコのためにも"
//previous "c2235沙紅羅_似鳥.nss"
//previous "2230恵那.nss"

////////////footer////////////
//next "沙紅羅" "c2250沙紅羅_恵那_似鳥.nss"
//next "恵那" "c2250沙紅羅_恵那_似鳥.nss"
//next "似鳥" "c2250沙紅羅_恵那_似鳥.nss"


////////////body////////////

//■再定義定型文
	PrintGO("上背景", 30000);

//◆場所：半田明神_男坂
	OnBG(10,"bg0601100半田明神_男坂_通常");
	FadeBG(0,true);

	CreateSE("走る", "se動作_走る02_l");
	MusicStart("走る", 0, 700, 0, 1000, null,true);

//あきゅん「修正指示：地理的に道路が遠いので音量うっすらに」
//★inc櫻井　基本の半分の音量に修正

	FadeDelete("上背景", 0, null, true);

{	ClockPass(2240);}

	SoundPlay("@xbgm32", 0, 450, true);

//	CreateSE("SEL01", "seガヤ_交通少_l");
//	MusicStart("SEL01", 2000, 350, 0, 1000, null,true);

//	SetVolume("@SE10", 2000, 0, null);

	CreateSE("SE01","se動作_一歩");
	Wait(1000);


	SetVolume("走る", 1000, 0, null);

	St("MR",700, @30,@0,"bu恵那_ハルヒ_angry");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameMR/MR*", 200, @-30, @0, Dxl3, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/400100010fje">
「さっきテレビに出てたひとじゃない！！」

{	St("C",700, @0,@0,"bu似鳥_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/400100020nki">
「誰だ？」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/400100030fje">
「私の名前は富士見恵那！
　秋葉原の名探偵よ！」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400100040skr">
「めいたんてい？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400100050skr">
「ってもしかしてアレか！？　ルパンみたいなヤツ！」

//あきゅん「β演出：音声同期表情変化」
//★inc櫻井　専用コマンド適用箇所
//あきゅん「演出：仮組してあります11/17」
{	St("MR",700, @0,@0,"bu恵那_一休_pride");
	St("MR",700, @0,@0,"bu恵那_ハルヒ_shout");//２段階目で変化させたい表情を定義
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);
	FadeStPro("MR", 200, 4300);//表示速度と待ち時間の設定をします
	}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/400100060fje">
「そうそう！　大変なものを盗んでいきました！
　――ってそれは怪盗よ！」

////【富士見恵那】
//<voice name="富士見恵那" class="富士見恵那" src="voice/c22/400100070fje">
//「おお……さすがめーたんてー！！」


{	AgainSt("MR",700, @0,@0,"bu恵那_ハルヒ_shout");//次の表情を定義する前に上記２段階目の表情を再定義します。これを怠ると終始バグが発生しますのでお気をつけください
	St("MR",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/400100080fje">
「って、そんなことしてる場合じゃない！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/400100090fje">
「ええと、テレビに映ってた人ですよね！？」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/400100100fje">
「あの、カッター女を知りませんか！？
　彼女がアザナエルを――」

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/400100110nki">
「死んだよ」

{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/400100120fje">
「え……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/400100130nki">
「ノーコは死んだ。
　カゴメアソビに、失敗して」

{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/400100140fje">
「失敗……したんですか……」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/400100150fje">
「そうだったんですか……」

{	St("MR",700, @0,@0,"bu恵那_通常_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/400100160fje">
「あの、それでアザナエルはどこに――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/400100170nki">
「警官に渡した。なあ、沙紅羅」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400100180skr">
「ああ。モジャモジャが返せって言うから」

{	St("MR",700, @0,@0,"bu恵那_一休_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/400100190fje">
「モジャモジャの警官……？」

//◆音声指示：小声
{	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/400100200fje">
「……って、父さんのことかな？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("C",700, @0,@0,"bu似鳥_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/400100210nki">
「父さん？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400100220skr">
「おやこ？」

{	St("MR",700, @0,@40,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeT("@StNameMR/MR*",0,0,200,0,-40,Dxl1,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/400100230fje">
「う、うるさいッ！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400100240skr">
「あ……ふふーん、なるほど。
　言われてみれば確かにこう、目尻の辺りとか――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/400100250fje">
「似てませんッ！！」

{	St("MR",700, @0,@0,"bu恵那_通常_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/400100260fje">
「でも……何で父さんが？
　あんなに病院に行けって言ったのに……！」

{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/400100270fje">
「さてはまた、私の言うことを無視して――」

{	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/400100280fje">
「はぁ……なんか頭、痛くなってきた……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2241);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400100290skr">
「んん？　名探偵も悩むのか？」

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/400100300fje">
「っていうか、アンタなに？　なんなのよその格好！？
　昭和の時代にタイムスリップ！？」

//あきゅん「修正指示：怒っている感じの動きを」
//★inc櫻井　修正
{	St("ML",700, @0,@60,"bu沙紅羅_木刀_rage");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 300, @0, @-60, Dxl3, false);
	Shake("@StNameML/ML*", 200, 10, 0, 0, 0, 500, Dxl3, false);
	CreateSE("木刀", "se戦闘_木刀_構える");
	MusicStart("木刀", 0, 700, 0, 1000, null,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400100310skr">
「ナンダ、コラァ！？
　百野殺駆ヘッド、月夜乃沙紅羅をバカにすんのかァ！？」

{	St("C",700, @0,@0,"bu似鳥_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/400100320nki">
「まあまあ、ふたりとも……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);
	Move("@StNameC/C*", 500, @-90, @0, Dxl1, false);
	DeleteAllSt(200,false);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/400100330nki">
「それよりほら、そろそろ半田明神が――」

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/400100340fje">
「ちょっと！　おいてかないで――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 2000, 0, null);



	TextBoxDelete(150);
	Move("@StNameMR/MR*", 200, @-150, @0, Axl2, false);
	DeleteAllSt(200,true);

{	ClockPass(2242);}

//◆場所：半田明神_鳥居_ペンキ

	SceneOut(5000, 1000, "blind_01_00_0");

	OnBG(10, "bg0602200半田明神_鳥居_ペンキ");
	FadeBG(0, true);
	Move("@OnBG*", 0, @0, @-390, null, true);


	SceneIn(1000, "blind_01_00_1");



//あきゅん「修正指示：道路に隣接しているのでここで初めて音量を通常に」
//あきゅん「修正指示：最初は根本を表示」
//★inc櫻井　修正  モブあり背景は違うと感じたので、モブなしにしています。

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}

	CreateSE("SEL01", "seガヤ_交通少_l");
	MusicStart("SEL01", 3000, 700, 0, 1000, null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400100350skr">
「…………」

{	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/400100360nki">
「…………」

{	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/400100370fje">
「…………」

//あきゅん「修正指示：ここで見上げて、立ち絵は無し」
//★inc櫻井　修正しました。
{	DeleteSt("MR",200,true);
	Move("@OnBG*", 3000, @0, @490, null, false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400100380skr">
「……ひでえな」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/400100390nki">
「ひどい」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/400100400fje">
「なにがあったの……？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400100410skr">
「とりあえず、みそブーに話聞いてみっか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(2243);}

//◆場所：半田明神_境内_ペンキ

	SceneOut(5000, 1000, "blind_01_00_0");

//あきゅん「修正指示：新年開けてないのでこの音はＮＧ」
//inc櫻井　交通量少のSEを音量半分にして継続するように修正。
	MusicStart("SEL01", 1000, 350, 0, 1000, null,true);

//	SoundPlay("@xbgm15", 0, 450, true);

	DeleteSt("C",200,false);
	OnBG(10,"bg0603200半田明神_境内_ペンキ");
	FadeBG(0,true);

	CreateTextureSP("境内01", 2000, 0, InBottom, "cg/bg/l/bg0603200半田明神_境内_ペンキ_l.jpg");
	CreateTextureEX("境内02", 2100, @-500, @0, "cg/bg/l/bg0603200半田明神_境内_ペンキ_l.jpg");

	SceneIn(1000, "blind_01_00_1");

	Move("境内01", 6000, -1024, @0, null, true);
	Move("境内02", 3000, @0, @-350, null, falsee);
	Fade("境内02", 3000, 1000, null, true);
	Delete("境内01");

	FadeDelete("境内02",1500,null,true);

	Wait(1500);

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400100420skr">
「はぁ……ここもひどい有様だな」

{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/400100430nki">
「ああ」

//あきゅん「修正指示：引き立ち絵出すなら背景変える」
//★inc櫻井　音声のみに修正
{	DeleteSt("ML",200,false);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/c22/400100450mso">
「あ！」

//【ブー】
<voice name="ブー" class="ブー" src="voice/c22/400100460buu">
「いた！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolumeEX("@SE*", 2000, 0, null);

	CreateSE("走る", "se動作_走る01_l");
	MusicStart("走る", 0, 700, 0, 1000, null,true);

//★inc櫻井　みそブーは走ってきてると想定し、立ち絵なしにしています。

	SoundPlay("@xbgm05", 0, 450, true);


//◆音声指示：同時
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【みそ】
<voice name="みそ" class="みそ" src="voice/c22/400100470mso">
「姐さああああああああああん」

/*
//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/c22/400100480buu">
「姐さああああああああああん」
*/

</PRE>
	SetText();
	AddText(1,"「姐さああああああああああん」","みそ","c22/400100470mso",false,false,1000);
	AddText(2,"「姐さああああああああああん」","ブー","c22/400100480buu",false,true,1400);
	TypeBeginD();//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateSE("走る", "se動作_走る01_l");
	MusicStart("走る", 0, 700, 0, 1000, null,true);

//★inc櫻井　みそブーは走ってきてると想定し、立ち絵なしにしています。
{	SetVolume("走る", 1000, 0, null);
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}

//◆音声指示：同時
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400100490skr">
「おう、みそブー！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400100500skr">
「急に呼び出して、どうしたんだ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2244);}

//	TextBoxDelete(150);

{	St("ML",700, @-50,@0,"buみそa_通常_sad");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @50, @0, Dxl3, false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【みそ】
<voice name="みそ" class="みそ" src="voice/c22/400100510mso">
「それが、その……オレたち……
　下手こいちまって……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400100520skr">
「……もしかしてコレ、おまえらの仕業か？」

{	St("MR",700, @50,@0,"buブーa_通常_pinch");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @-50, @0, Dxl3, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/c22/400100530buu">
「すんませんでしたっ！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400100540skr">
「てめぇら……なんてことを……っ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//★inc櫻井　ここでの再生がNGならば削除してください。　沙紅羅の独壇場になるか？　と思わせるための再生となります。

//	SoundPlay("@xbgm07_noint", 0, 450, true);

{	St("C",700, @0,@60,"bu沙紅羅_木刀_angry");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 300, @0, @-60, Dxl1, false);
	CreateSE("木刀", "se戦闘_木刀_構える");
	MusicStart("木刀", 0, 1000, 0, 1000, null,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400100550skr">
「これは、ヘッドとしてお仕置きを――」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/400100560mzh">
「やめるのじゃっ！！」

{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400100570skr">
「ん？　この声は――」

//★inc櫻井　沙紅羅を堺に、左側を「沙紅羅と一緒に来たキャラ」、右側を「もともと半田明神にいたキャラ」とわけています。

{	St("ML",700, @0,@0,"bu恵那_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/400100580fje">
「ミヅハちゃんッ！！」

{	St("MR",700, @40,@0,"buミヅハ_手構え_hard");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @-40, @0, Dxl3, false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/400100590mzh">
「恵那よ。フウリはどうなった！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//あきゅん「修正指示：MR→MRで変更する時にDelete命令混ぜるとテンポ悪く見えるので全般的に廃止して下さい」
//★inc櫻井　修正されていました。　お手数おかけいたしました。

{	St("ML",700, @0,@0,"bu恵那_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/400100600fje">
「うん、彼女はなんとか――」

{	St("MR",700, @0,@0,"buミヅハ_通常_surprise");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/400100610mzh">
「助かったのか！？」

{	St("ML",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/400200790fje">
「フウリさんの友達のタヌキが現れて、傷を治してくれたの」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/400100630mzh">
「そ……そうか！　よかった……」

{	St("MR",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/400100640mzh">
「ノーコにアザナエルの弾を奪われてから、いったいどうすればよいのやら、途方にくれておったのじゃ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/400100650mzh">
「しかし……そうか。ずいぶんと強運じゃのう。
　まさかそのようなタヌキが、すぐ側にいるとは……」

{	St("ML",700, @0,@0,"bu恵那_通常_hard");
	St("ML",700, @0,@0,"bu恵那_一休_sigh");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("ML", 200, 5000);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/400100660fje">
「確かに、あのタイミングでフウリさんを助けに来るなんて……アレ？」

{	//★立ち絵プロセス：再定義
	AgainSt("ML",700, @0,@0,"bu恵那_一休_sigh");}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/400100670fje">
「そもそもどうして、貫太さんはスパコン館に……？」

{	St("ML",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/400100680fje">
「おかしいわ……なにか、事件の匂いが……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2245);}

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400100690skr">
「いやまあ、そっちの話はそれでいいとして」

{	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400100700skr">
「なんでこいつらが、神社をこんな風に？」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/400100710mzh">
「これは……不幸な事故なのじゃ」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/400100720mzh">
「先ほど、ノーコがアザナエルを奪うべく、半田明神へと飛び込んできた」

{	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/400100730nki">
「ノーコが……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/400100740mzh">
「うむ。みそブーはわらわに協力して、彼女を退けるべくペイント弾を撃ったのじゃ」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/400100750mzh">
「残念ながら弾は外れ、我々はノーコを逃がしてしもうた。
　その結果が、この境内の有様じゃ」

{	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 200, 0, 20, 0, 0, 500, Dxl3, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400100760skr">
「ってことは！
　結局、てめぇらがヘマこいたんじゃねぇかッ！！」

{	St("MR",700, @0,@0,"buブーa_通常_cry");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 200, 20, 0, 0, 0, 500, Dxl1, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/c22/400100770buu">
「ひええええ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buみそa_通常_sad");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 200, 20, 0, 0, 0, 500, Dxl1, false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【みそ】
<voice name="みそ" class="みそ" src="voice/c22/400100780mso">
「すいませんっ！！」

//※下倉注：似鳥→沙紅羅に修正 2010/10/31
//★inc櫻井　先ほどと同じ理由での再生です。不要な場合は削除してください。
{
//	SoundPlay("@xbgm07_noint", 0, 450, true);
	St("C",700, @0,@100,"bu沙紅羅_木刀_rage");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 300, @0, @-100, Dxl3, false);
	CreateSE("木刀", "se戦闘_木刀_構える");
	MusicStart("木刀", 0, 1000, 0, 1000, null,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400100790skr">
「アタシが直々に罰を――」

{
//	SetVolume("@xbgm*", 1000, 0, null);
	St("MR",700, @30,@0,"buミヅハ_手構え_hard");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @-30, @0, Dxl3, false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/400100800mzh">
「まあ待つのじゃ」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/400100810mzh">
「こやつらの助けがなければ、今頃わらわはどうなっていたかわからぬ」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/400100820mzh">
「それに今失敗を責め立てたところで、汚れが落ちるわけでもなかろう？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2246);}

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu沙紅羅_木刀_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400100830skr">
「ん、それはまあ確かに……」

{	CreateSE("SE01","se戦闘_風切り音01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	DeleteAllSt(200,true);
	St("C",700, @-50,@0,"bu沙紅羅_頭かき_think");
	Move("@StNameC/C*", 200, @50, @0, Dxl3, false);
	FadeSt("C",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400100840skr">
「ええいっ！　だったらしょうがねぇ！
　さっさとペンキを落として、新しい気分で新年を――」

//★inc櫻井　ここで星を表示するのは唐突すぎると感じるので、表示していません。
{	SetVolumeEX("@xbgm*", 2000, 0, null);
	DeleteAllSt(200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c22/400100850kms">
「全ては手遅れです」

{	SoundPlay("@xbgm15", 0, 450, true);
	St("R",700, @30,@0,"st歌門_通常_pride");
	Move("@StNameR/R*", 200, @-30, @0, Dxl1, false);
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c22/400100860kms">
「ここ１０年の努力が水泡に帰しました」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	St("ML",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/400100870fje">
「１０年のって……どういう意味ですか？」

{	St("R",700, @30,@0,"bu歌門_通常_normal");
	DeleteAllSt(200,false);
	Move("@StNameR/R*", 200, @-30, @0, Dxl3, false);
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c22/400100880kms">
「アザナエルの呪いを解くには、日付が元旦に変わるその瞬間、半田明神に集う人々の想いを集める必要がある」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c22/400100890kms">
「人々の清らかな願いを集めることで、アザナエルに籠められた怨念を浄化するのです。しかし――」

{	St("R",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c22/400100900kms">
「本殿が、このような状態です」

{	St("ML",700, @0,@0,"bu恵那_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/400100910fje">
「……そりゃ、参拝客も初詣どころじゃない、か。
　だから、ペンキ屋さんを探してたんですね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	St("R",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c22/400100920kms">
「結局、すぐに対応してくれるお店はありませんでした」

{	ClockPass(2247);}
{	St("R",700, @0,@0,"bu歌門_通常_think");
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c22/400100930kms">
「このままでは、ミヅハ様はまた――
　この格好で、１０年を過ごさねばなりません」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400100940skr">
「ん？　このカッコじゃダメなのか？」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/400100950mzh">
「１０年前、わらわはカゴメアソビでヘマをしたのじゃ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2248);}

{	St("MR",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/400100960mzh">
「罰として力を奪われ、この姿に変えられた挙げ句、天界に戻れぬようになってしもうた」

{	St("MR",700, @0,@40,"buミヅハ_手構え_hard");
	FadeT("@StNameMR/MR*",200,0,200,0,-40,Dxl1,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/400100970mzh">
「本来ならば、もっとこう、ばいーんでぼいーんな大人の女なのじゃが……」

//あきゅん「β演出：音声同期表情変化」
//★inc櫻井　専用コマンド適用箇所
//cono：「β演出：音声同期表情変化」はいていなかったので追加
{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	St("C",700, @0,@0,"bu沙紅羅_頭かき_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 4800);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400100980skr">
「大人の……女？　ボイーンで、バイーン！？」

//あきゅん「修正指示：バカ笑いを振動等で表現」
{	//★立ち絵プロセス：再定義
	AgainSt("C",700, @0,@0,"bu沙紅羅_頭かき_shock");
	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	SetComic(@-80,@-150,11);
	Move("@Comic*", 0, @-100, @-170, null, true);
	Shake("@StNameC/C*", 200, 0, 3, 0, 0, 1000, Dxl3, false);
	FadeSt("C",200,true);
	FadeComic();
	St("C",700, @0,@0,"bu沙紅羅_通常_happy");
	Shake("@StNameC/C*", 2000, 0, 5, 0, 0, 1000, Dxl3, false);
	FadeSt("C",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400100990skr">
「ぐは、ぐはは、ぎゃはははははははははは！」

{	SetVolume("c2240ガヤ", 1000, 0, null);
//	SoundPlay("@xbgm13", 1000, 450, true);
	St("MR",700, @0,@0,"buミヅハ_通常_angry");
	DeleteComic();
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/400101000mzh">
「な、なにがおかしい！？
　大人になったら、すごいんじゃぞ！　ホントじゃぞ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu沙紅羅_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400101010skr">
「あはは、そうかそうか。楽しみにしてっからよ！」

{
	SetVolumeEX("@xbgm*", 2000, 0, null);
	St("MR",700, @50,@0,"buブーa_オラオラ_pinch");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @-50, @0, Dxl3, false);
	FadeSt("MR",200,true);
}
//【ブー】
<voice name="ブー" class="ブー" src="voice/c22/400101020buu">
「だめだっ！」

{	St("MR",700, @0,@0,"buブーa_オラオラ_shout");
	St("MR",700, @0,@0,"buブーa_通常_ero");
	FadeSt("MR",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("MR", 200, 5000);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/c22/400101030buu">
「頭がカラの方が夢を詰め込めるのと同じ！
　おっぱいが小さいほど、夢が――」

{	//★立ち絵プロセス：再定義
	AgainSt("MR",700, @0,@0,"buブーa_通常_ero");
	St("C",700, @-50,@0,"bu沙紅羅_木刀_rage");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 200, @50, @0, Dxl3, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400101040skr">
「黙れ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameC/C*", 200, @50, @0, Dxl3, false);
	DeleteAllSt(200,true);
//	TextBoxDelete(150);
//	CreateTextureEX("木刀", 2500, @0, @0, "cg/ef/ef木刀剣閃a.jpg");
//	SetVolume("@xbgm*", 1000, 0, null);

	CreateSE("c2240ガヤ", "seガヤ_交通少_l");
	MusicStart("c2240ガヤ", 1000, 350, 0, 1000, null,true);

	CreateTextureSP("木刀", 15000, @0, @0, "cg/ef/ef木刀剣閃a.jpg");
	DrawTransition("木刀", 300, 0, 1000, 1000, null, "cg/data/beam_03_00_1.png", false);

	DeleteAllSt(200,false);

	CreateSE("殴る", "se戦闘_打撃音07");
	MusicStart("殴る", 0, 1000, 0, 1000, null, false);
	Fade("木刀", 500, 0, null, true);
	Delete("木刀");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	St("MR",700, @0,@0,"buブーa_通常_shock");
	Shake("@StNameMR/MR*", 300, 12, 12, 0, 0, 1000, Dxl1, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/c22/400101050buu">
「ふぎゃっ！」

{	CreateSE("倒れる", "se人体_倒れる04");
	MusicStart("倒れる", 0, 1000, 0, 1000, null, false);
	Move("@StNameMR/MR*", 200, @0, @100, DxlAuto, false);	
	DeleteAllSt(200,true);
	St("R",700, @30,@0,"bu歌門_通常_hard");
	Move("@StNameR/R*", 200, @-30, @0, Dxl3, false);
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c22/400101060kms">
「兎にも角にも、アザナエルの呪いを解き、ミヅハ様を元の姿に戻す方法はもう――」

//あきゅん「修正指示：沙紅羅木刀立ち絵に、音の後に表示するイメージで」
//★inc櫻井　修正。木刀をしまうために一旦下に下げ、切替時上に、という形にしています。
//◆ＳＥ：木刀を振る
{	SetVolumeEX("@xbgm*", 2000, 0, null);
	SoundPlay("@xbgm07", 0, 450, true);
	DeleteSt("R",200,false);
	St("C",700, @0,@0,"bu沙紅羅_木刀_pride");
	FadeSt("C",200,true);
	CreateSE("振る", "se戦闘_風切り音08");
	MusicStart("振る", 0, 1000, 0, 1000, null, false);
	Move("@StNameC/C*", 300, @0, @60, Axl1, false);
	DeleteSt("C",200,true);
	St("C",700, @0,@60,"bu沙紅羅_通常_smile");
	Move("@StNameC/C*", 300, @0, @-60, Dxl1, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400101070skr">
「まだまだ、諦めるにははえーんじゃねぇの？」

{	St("R",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c22/400101080kms">
「……なんですって？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2249);}

{	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400101090skr">
「アタシもよ、そのボイーンでバイーンなミヅハを見てみてぇんだよ」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400101100skr">
「てめぇひとりのオツムじゃ、確かに名案は思い浮かばねぇかもしれねー」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400101110skr">
「ショージキ、アタシの頭では無理だ！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400101120skr">
「けど！　三人寄ればもんじゃを食え！
　アタシとみそブーが揃えば……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("L",700, @0,@100,"buみそa_オラオラ_hard");
	CreateSE("SE01","se擬音_ギャグ_リーゼント");
	DeleteAllSt(200,false);
	Shake("@StNameL/L*", 200, 30, 0, 0, 0, 500, Dxl3, false);
	Move("@StNameL/L*", 200, @0, @-100, Dxl1, false);
	FadeSt("L",200,true);
	MusicStart("SE01",0,700,0,800,null,false);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【みそ】
<voice name="みそ" class="みそ" src="voice/c22/400101130mso">
「全然思い浮かばねぇ！！」

{	St("R",700, @0,@100,"buブーa_オラオラ_angry");
	CreateSE("SE02","se擬音_ギャグ_リーゼント");
	Shake("@StNameR/R*", 200, 30, 0, 0, 0, 500, Dxl3, false);
	Move("@StNameR/R*", 200, @0, @-100, Dxl1, false);
	FadeSt("R",200,true);
	MusicStart("SE02",0,700,0,900,null,false);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/c22/400101140buu">
「右に同じ！！」

{	St("C",19010, @0,@80,"fu沙紅羅_通常_shout");
	Move("@StNameC/C*", 200, @0, @-80, Dxl3, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400101160skr">
「ところがどっこい！　アタシは憶えてる！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400101170skr">
「人と人が出会ったからこそ、縁があったからこそ、アタシたちはこの問題を解決することができんだよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",19010, @0,@0,"fu沙紅羅_通常_smile");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/400101180skr">
「な？　名探偵！！」

{	Move("@StNameR/R*", 200, @+100, @0, Dxl1, false);
	Move("@StNameL/L*", 200, @-100, @0, Dxl1, false);
	Move("@StNameC/C*", 200, @0, @+100, Dxl1, false);
	DeleteAllSt(200,true);
	SetVolume("@SE*", 300, 0, null);
	St("C",700, @0,@40,"bu恵那_通常_sigh");
	FadeT("@StNameC/C*",0,0,200,0,-40,Dxl1,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/400101190fje">
「え？　わ、私！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);
	Delete("c2240ガヤ");

	EndScene();
}
