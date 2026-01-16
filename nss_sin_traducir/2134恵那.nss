
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2134恵那.nss_MAIN
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
	$GameName = "2140恵那.nss";
	//$GameCircle=false;

}

scene 2134恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="540">
////////////header////////////
//file name "2134恵那.nss"
//title "次の作戦"
//previous "2131恵那.nss"

////////////footer////////////
//next "恵那" "2140恵那.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);

//◆場所：スーパーノヴァ_控え室

{	ClockPass(2134);}

//◆ＳＥ：ドア閉まる

	OnBG(10,"bg0503100スーパーノヴァ_控え室_通常");
	FadeBG(0,true);


	FadeDelete("上背景", 200, null, true);
	CreateSE("SE01","se動作_ドア閉める01");
	MusicStart("SE01",0,700,0,1000,null,false);

WaitKey(200);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("ML",700, @0,@50,"bu恵那_通常_pinch");
Move("@StNameML/ML*", 200, @0, @-50, Dxl1, false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/340100010fje">
「鈴姉、本気みたい……
　今日のライブ、やっぱり特別なんだ」


{	St("ML",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/340100020fje">
「こうなったら、先に全力でバイトを終わらせるしか……」



{	St("MR",700, @0,@0,"bu歌門_威圧_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/340100030kms">
「なりませんッ！！
　それでは、手遅れなのです！！」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/340100040kms">
「今夜、年が明けるまでにアザナエルを浄化できねば、ミヅハ様がまた――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("ML",700, @0,@0,"bu恵那_哀愁_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
<voice name="富士見恵那" class="富士見恵那" src="voice/21/340100050fje">
//【富士見恵那】
「ミヅハちゃんが――？」

{	St("MR",700, @0,@0,"bu歌門_通常_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/340100060kms">
「あ……いえ。な、なんでもありません」

{	St("ML",700, @0,@0,"bu恵那_一休_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/340100070fje">
「星さん。この際、聞いておきます」

{	St("ML",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/340100080fje">
「ミヅハちゃんって、何者なんですか？
　普通の親戚の子には、思えませんけど」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2135);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("MR",700, @0,@0,"bu歌門_通常_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/340100090kms">
「そ、そんなことはないですよ。
　半田明神でお預かりしている、ごく普通の――」

{	St("ML",700, @0,@0,"bu恵那_通常_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/340100100fje">
「普通の親戚に、『様』なんてつけますか？
　まるで貴族か、それとも神様――」

{	St("ML",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/340100110fje">
「神様……？　あれ？　そういえば……
　彼女も、自分のことが神様だって……」


{	St("MR",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/340100120kms">
「絶対に、口外するなって言ったのに……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("ML",700, @0,@0,"bu恵那_一休_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/340100130fje">
「ということは、まさかホントに？」

{	St("MR",700, @0,@0,"bu歌門_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/340100140kms">
「あ、いえ。今の言葉はウソです」

{	St("ML",700, @0,@0,"bu恵那_一休_hard");
	St("ML",700, @0,@0,"bu恵那_一休_surprise");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);
	FadeStPro("ML", 200, 3500);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/340100150fje">
「ミヅハ……ミヅハ……あ、そうか！」


{	AgainSt("ML",700, @0,@0,"bu恵那_一休_surprise");
	SoundPlay("@xbgm15",0,450,true);
	St("ML",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/340100160fje">
「半田明神には、祭神が三柱いらっしゃいましたね。
　そのほかにも、<RUBY text="せつまつしゃ">摂末社</RUBY>がいくつか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2136);}

//	TextBoxDelete(150);


{	St("ML",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/340100170fje">
「そのうちの一つに日本橋<RUBY text="うおがしすい">魚河岸水</RUBY><RUBY text="じんじゃ">神社</RUBY>がある……」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/340100180fje">
「江戸時代の水路整備の折、半田明神に遷されたと聞きましたが、私の記憶が確かならその祭神の名は――」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/340100190fje">
「ミヅハノメ」

{	St("MR",700, @0,@0,"bu歌門_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/340100200kms">
「…………」

{	St("ML",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/340100210fje">
「星さん。私は、自身が招いたこの事件を、解決する手助けがしたい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);


{	St("ML",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/340100220fje">
「そのためにも――真実を、教えて下さい！」


{	St("MR",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/340100230kms">
「……本当に、知りたいのですか？」

{	St("ML",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/340100240fje">
「はい！」



{	St("MR",700, @0,@0,"bu歌門_通常_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/340100250kms">
「……やれやれ。
　やはりあなた方は、親子ですね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2137);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("ML",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/340100260fje">
「父さんは関係ありません！」

{	St("MR",700, @0,@0,"bu歌門_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/340100270kms">
「残念ながら、私は当事者でない。
　語れることには、限りがあります」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/340100280kms">
「言えることは、ただひとつ」

{	St("MR",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/340100290kms">
「１０年前にもまた、アザナエルの封印が解かれ、カゴメアソビが行われた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/340100300kms">
「その時もいくつかの願いが叶い、そして――」

{	St("MR",700, @0,@0,"bu歌門_通常_think");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/340100310kms">
「ひとつの命が、失われた」


{	St("ML",700, @0,@0,"bu恵那_一休_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/340100320fje">
「１０年前――？」


{	St("MR",700, @0,@0,"bu歌門_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/340100330kms">
「そう。あなたのお母さんが、いなくなったあのときです」


{	St("ML",700, @0,@0,"bu恵那_哀愁_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/340100340fje">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2138);}


//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("MR",700, @0,@0,"bu歌門_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/340100350kms">
「当時ミヅハノメとして真の姿で祭事を受け持っていたミヅハ様は、罰としてその力と記憶を奪われました」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/340100360kms">
「天界を離れ、仲間と引き裂かれ元の力を封ぜられたまま、長い間半田明神での小間使いを余儀なくされたのです」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/340100370kms">
「気高き水神ミヅハノメ――彼女にとってこの１０年は、どれほど長かったことでしょうか」




{	St("ML",700, @0,@0,"bu恵那_哀愁_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/340100380fje">
「…………」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/340100390fje">
「１０年……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("ML",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/340100400fje">
「ミヅハちゃんは社に閉じこもったまま、たったひとりで過ごしてきたんですか……？」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/340100410fje">
「だから外に出た彼女は、あれほどはしゃいで……」



{	St("MR",700, @0,@0,"bu歌門_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/340100420kms">
「アザナエルを祓い清めることができたなら、ミヅハ様が負う制限は、解かれます」

{	St("MR",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/340100430kms">
「しかし、そのチャンスは今晩――」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/340100440kms">
「年が明け、人々の願いが半田明神に注がれる、その瞬間のみなのです！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/340100450kms">
「恵那様――お願いです」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/340100460kms">
「ミヅハ様のため――どうか、ご協力ください！！」


{	St("ML",700, @0,@0,"bu恵那_哀愁_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/340100470fje">
「ミヅハちゃんのため……」


{	St("ML",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/340100480fje">
「――わかりました。
　なんとか、してみましょう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2139);}

	SetVolume("@xbgm*", 2000, 0, null);



//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("MR",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/340100490kms">
「本当ですか！？」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/340100500kms">
「いや……でも、今の鈴さんを説得するには……」

{	St("ML",700, @0,@0,"bu恵那_ハルヒ_pride");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/340100510fje">
「この名探偵に任せて下さい！
　さっきは急な出来事で、出し損ねましたが――」

{	St("ML",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/340100520fje">
「実は、奥の手があるんです」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("MR",700, @0,@0,"bu歌門_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/340100530kms">
「奥の手……？」

{	St("ML",700, @0,@0,"bu恵那_一休_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/340100540fje">
「鈴姉は、一度何かに夢中になると、急に周りが見えなくなるんですよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

WaitKey(500);

	EndScene();
}
