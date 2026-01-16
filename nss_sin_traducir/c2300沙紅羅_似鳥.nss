
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene c2300沙紅羅_似鳥.nss_MAIN
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
		$GameName="c2310沙紅羅_フウリ.nss";
	}else if($CharaName=="似鳥"){
		$GameName="c2310似鳥.nss";
	}
}





scene c2300沙紅羅_似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="850">
////////////header////////////
//file name "c2300沙紅羅_似鳥.nss"
//title "たったひとつの冴えないやり方"
//previous "c2250沙紅羅_恵那_似鳥.nss"

////////////footer////////////
//next "沙紅羅" "c2310沙紅羅_フウリ.nss"
//next "似鳥" "c2310似鳥.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2301);}

//◆場所：半田明神_境内
	OnBG(10,"bg0603200半田明神_境内_ペンキ");
	FadeBG(0,true);

//嶋：時間経過
	if($PreGameName=="c2250沙紅羅_恵那_似鳥.nss"){
	Wait(2000);
	}else{}

//	SoundPlay("@xbgm23", 1000, 450, true);
	SoundPlay("@xbgm07", 0, 450, true);

	FadeDelete("上背景",1500,null,true);

{	St("C",800, @120,@0,"bu沙紅羅_通常_shout");
	Move("@StNameC/C*", 200, @-120, @0, Dxl3, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200010skr">
「みんな、遅れて悪いッ！！」

{	St("C",800, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200020skr">
「コレが半田明神改！
　<RUBY text="アキハバラ">厭覇薔薇</RUBY>バージョンの設計図だッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);

//◆ＳＥ：拍手

	SetVolume("SEL*", 1000, 0, null);
	St("L",700, @-80,@80,"buみそa_通常_happy");
	St("R",700, @80,@80,"buブーa_通常_happy");
	Move("@StNameL/L*", 200, @80, @-80, Dxl3, false);
	Move("@StNameR/R*", 200, @-80, @-80, Dxl3, false);
	CreateSE("拍手", "se動作_拍手01_l");
	MusicStart("拍手", 0, 1000, 0, 1000, null,false);
	FadeAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/c23/000200030mso">
「おおおおおおおおおおおおおお！！」
{WaitAddText();}<BR>

////◆音声指示：同時
////【ブー】
//<voice name="ブー" class="ブー" src="voice/c23/000200040buu">
//「おおおおおおおおおおおおおお！！」

</PRE>
	SetText();
	AddText(1,"「おおおおおおおおおおおおおお！！」","みそ","c23/000200030mso",false,false,1000);
	AddText(2,"「おおおおおおおおおおおおおお！！」","ブー","c23/000200040buu",true,true,1300);
	TypeBeginD();//―――――――――――――――――――――――――――




//	TextBoxDelete(150);

	DeleteAllSt(200,true);

//★ inc櫻井 三人並べましたが、ミヅハとの身長差を考慮するとないほうが良いかもしれません。
//あきゅん「修正指示：ミヅハ縮小させてください」
//★inc櫻井　修正　縮小と同時に若干移動させました。
	St("R",700, @80,@15,"bu歌門_通常_shock");
	St("L",700, @-80,@-15,"bu似鳥_通常_worry");
	St("C",700, @0,@160,"buミヅハ_フラット_shock");
	Zoom("@StNameC/C*", 0, 900, 900, null, true);
	Request("@StNameC/C*", Smoothing);
	Move("@StNameR/R*", 500, @-80, @0, Dxl3, false);
	Move("@StNameL/L*", 500, @80, @0, Dxl3, false);
	Move("@StNameC/C*", 500, @0, @-50, Dxl1, false);
	FadeAllSt(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆音声指示：同時
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/000200050">
「「「…………………………………………」」」

////◆音声指示：同時
////【歌門星】
//<voice name="歌門星" class="歌門星" src="voice/c23/000200060kms">
//「…………………………………………」
////◆音声指示：同時
////【ミヅハ】
//<voice name="ミヅハ" class="ミヅハ" src="voice/c23/000200070mzh">
//「…………………………………………」

</PRE>
	SetText();
	AddText(1,"「…………………………………………」","似鳥戴斗","c23/000200050nki",false,false,1000);
	AddText(2,"「…………………………………………」","歌門星","c23/000200060kms",false,false,1000);
	AddText(3,"「…………………………………………」","ミヅハ","c23/000200070mzh",false,false,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
{	St("ML",700, @-50,@0,"buみそa_通常_happy");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @50, @0, Dxl3, false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【みそ】
<voice name="みそ" class="みそ" src="voice/c23/000200080mso">
「す！　すげえ！　かっこいい！！」

{	St("MR",700, @50,@0,"buブーa_通常_shout");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @-50, @0, Dxl3, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/c23/000200090buu">
「姐さんッ！　コイツはイケてますぜ！」

{	St("ML",700, @0,@40,"buみそa_通常_shout");
	DeleteAllSt(200,false);
	FadeT("@StNameML/ML*",0,0,200,0,-40,Dxl1,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/c23/000200100mso">
「なんだ、この魚！！」

{	St("MR",700, @0,@40,"buブーa_通常_smile");
	DeleteAllSt(200,false);
	FadeT("@StNameMR/MR*",0,0,200,0,-40,Dxl1,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/c23/000200110buu">
「コイツはな、シャチホコって言うんだよ」

{	St("ML",700, @0,@0,"buみそa_通常_happy");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 200, 15, 0, 0, 0, 500, Dxl3, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/c23/000200120mso">
「おおおお！　じゃあ、反対側のは！？」

{	St("MR",700, @50,@0,"buブーa_オラオラ_normal");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @-50, @0, Dxl3, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/c23/000200130buu">
「そいつはほら、平等院ってあるだろ？　１０円玉。
　あの鳳凰って鳥で……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2302);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{
	St("ML",700, @0, @150,"buみそa_オラオラ_shout");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @0, @-150, Dxl3, false);
	Shake("@StNameML/ML*", 200, 24, 0, 0, 0, 300, Dxl1, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/c23/000200140mso">
「鳳凰！　やべえ！　やべえよそれ！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200150skr">
「はっはっは！　いいだろ？　いいだろ？」

{	St("R",700, @0,@0,"bu歌門_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c23/000200160kms">
「は――」

{	Move("@StNameR/R*", 200, @-20, @0, Dxl1, true);
	Move("@StNameR/R*", 2000, @-60, @0, Dxl1, false);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c23/000200170kms">
「は――は――は――ッ！！」

{
//	SetVolume("@xbgm*", 1000, 0, null);
	St("R",700, @-80,@0,"bu歌門_威圧_shout");
	Move("@StNameR/R*", 200, @80, @0, Dxl3, false);
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c23/000200180kms">
「反対ですッッッッッッ！！！！！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//あきゅん「修正指示：音ＮＧ」
//★inc櫻井　修正　道路から離れているので音量は基本値の半分。
//※下倉注：すいません、ここも今までの流れに統一で……
//	CreateSE("SEL01", "seガヤ_交通少_l");
//	MusicStart("SEL01", 2000, 350, 0, 1000, null,true);

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200190skr">
「――――なんだよ？」

{	St("R",700, @0,@0,"bu歌門_威圧_shout");
	DeleteAllSt(200,false);
	Shake("@StNameR/R*", 200, 0, 20, 0, 0, 500, Dxl3, false);
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c23/000200200kms">
「何故鳥居が黄色いのですかッ！？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200210skr">
「金閣寺をいめぇじ」

{	St("R",700, @0,@0,"bu歌門_威圧_pinch");
	DeleteAllSt(200,false);
	Move("@StNameR/R*", 200, @-60, @0, Axl3, false);
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c23/000200220kms">
「全然意味がわかりません！
　それにこの屋根瓦に書かれている文字、なんて――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200230skr">
「<RUBY text="きんがしんねん">禁我信念</RUBY>」

{	St("R",700, @-30,@0,"bu歌門_威圧_angry");
	DeleteAllSt(200,false);
	Move("@StNameR/R*", 200, @-60, @0, Axl3, false);
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c23/000200240kms">
「おめでたさがありませんッ！
　あと、狛犬が顔に被っているものは――」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200250skr">
「ああ、これか？
　これ、知らねぇか」

{	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200260skr">
「知らねぇだろうなあ……
　おねーちゃん、和服だもんなあ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2303);}

//	TextBoxDelete(150);
//あきゅん「修正指示：パンツ表示、きゅる～んとＳＥ付きでキラキラ」
//★inc櫻井　修正　SEはギャグで印象づけるために音量1200にしています。

	CreateSE("SE02", "se擬音_ギャグ_きゃるーん");
	MusicStart("SE02", 0, 1000, 0, 1000, null,false);

	CreateTextureEX("パンツ", 2000, @0, @0, "cg/img/img縞パン.jpg");
	CreateTextureEX("絵キラキラ１", 2000, Center, Middle, "cg/ef/efキラキラa.png");
	CreateTextureEX("絵キラキラ２", 2000, Center, Middle, "cg/ef/efキラキラb.png");

	Fade("パンツ", 800, 1000, null, true);

	DeleteSt("C",0,true);

	$キラキラナット名１ = @絵キラキラ１;
	$キラキラナット名２ = @絵キラキラ２;
	$キラキラタイム = 1000;
	
	$Warpトランジ = @絵色200;
	$Warpトランジ速度 = 4000;
	$Warpトランジなめらかさ = 500;

	CreateProcess("プロセス１", 150, 0, 0, "KirakiraLoop");
	CreateProcess("プロセス３", 150, 0, 0, "TransitionLoop");
	SetAlias("プロセス１","プロセス１");
	SetAlias("プロセス３","プロセス３");

	Request("プロセス１", Start);
	Request("プロセス３", Start);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200270skr">
「いいか？　これは『ストライプ』つって、今日のアタシのラッキーアイテム……」

//【みそ】
<voice name="みそ" class="みそ" src="voice/c23/000200280mso">
「パンツか？」

//【ブー】
<voice name="ブー" class="ブー" src="voice/c23/000200290buu">
「パンツじゃないもんっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreatePlainSP("揺用", 18005);

	Request("プロセス１", Start);
	Request("プロセス３", Start);
	Delete("プロセス*");
	Delete("絵キラキラ*");
	Delete("パンツ");
	Delete("絵色*");

	Fade("揺用", 300, 0, null, true);
	Delete("揺用");

{	St("R",700, @-120,@0,"bu歌門_威圧_shout");
	Shake("@StNameR/R*", 200, 0, 25, 0, 0, 500, Dxl3, false);
	FadeSt("R",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c23/000200300kms">
「パンツじゃないですかッ！！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 200, 0, 25, 0, 0, 500, Dxl3, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200310skr">
「パンツで悪いかッ！！」

{	St("MR",700, @0,@0,"buミヅハ_フラット_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c23/000200320mzh">
「悪いのか？」

{	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/000200330nki">
「良くはないだろ……」

{	St("R",700, @-120,@0,"bu歌門_威圧_pinch");
	DeleteAllSt(200,false);
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c23/000200340kms">
「あなたは半田明神の伝統を、なんだと――」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200350skr">
「なんとも思っちゃいねーし」

{	St("R",700, @-120,@0,"bu歌門_威圧_shout");
	DeleteAllSt(200,false);
	Shake("@StNameR/R*", 200, 0, 15, 0, 0, 500, Dxl3, false);
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c23/000200360kms">
「な――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200370skr">
「ミヅハの呪い？　解くためなんだろ？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200380skr">
「したらよぉ、この神社が一瞬どうなろうと、アタシには全然関係ないし」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200390skr">
「それともなんだ？
　ミヅハより、この神社のカクシキとかが大事？」

{	St("R",700, @-120,@0,"bu歌門_威圧_pinch");
	DeleteAllSt(200,false);
	Move("@StNameR/R*", 200, @60, @0, Dxl1, false);
	Shake("@StNameR/R*", 200, 0, 15, 0, 0, 500, Dxl3, false);
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c23/000200400kms">
「ぐ……ぐぐぐぐ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("C",700, @0,@0,"bu沙紅羅_頭かき_smile");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200410skr">
「ま、そんな固く考えんなよ。な？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200420skr">
「たった一晩！　しかも、アザナエルの呪いを解くため！
　ミヅハの幸せを叶えるだけ！　だぜ？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	St("C",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("C",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 3300);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200430skr">
「ここはちょっくら目、つぶってくれよ。な？」

{	//★立ち絵プロセス：再定義
	AgainSt("C",700, @0,@0,"bu沙紅羅_通常_happy");
	St("R",700, @-60,@0,"bu歌門_威圧_pinch");
	DeleteAllSt(200,false);
	Move("@StNameR/R*", 200, @60, @0, Axl1, false);
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c23/000200440kms">
「…………っ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 2000, 0, null);

//	TextBoxDelete(150);

{	ClockPass(2304);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("R",700, @0,@0,"bu歌門_通常_pride");
	St("R",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("R",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("R", 200, 2000);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c23/000200450kms">
「わかりました……とは、立場上言えません」

{	//★立ち絵プロセス：再定義
	AgainSt("R",700, @0,@0,"bu歌門_通常_hard");
	St("R",700, @0,@0,"bu歌門_通常_think");
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c23/000200460kms">
「やりたければ、勝手に……おやりなさい」

{	SetVolume("SE*", 1000, 0, null);}
{	SoundPlay("@xbgm23",0,450,true);}
{	St("C",700, @0,@40,"bu沙紅羅_通常_happy");
	DeleteAllSt(200,false);
	FadeT("@StNameC/C*",0,0,200,0,-40,Dxl1,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200470skr">
「いよっしゃああっ！！　許可ゲット！」

{	St("R",700, @0,@0,"bu歌門_通常_shout");
	DeleteAllSt(200,false);
	Shake("@StNameR/R*", 200, 0, 25, 0, 0, 500, Dxl3, false);
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c23/000200480kms">
「許可ではありません！　黙認ですッ！！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200490skr">
「よっしゃ！　みそブー！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("L",701, @-50,@0,"buみそa_オラオラ_normal");
	St("R",700, @50,@0,"buブーa_オラオラ_normal");
	DeleteAllSt(200,false);
	Move("@StNameL/L*", 200, @50, @0, Dxl3, false);
	Move("@StNameR/R*", 200, @-50, @0, Dxl3, false);
	FadeAllSt(200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/c23/000200500mso">
「はいっ！！」
{WaitAddText();}<BR>

////◆音声指示：同時
////【ブー】
//<voice name="ブー" class="ブー" src="voice/c23/000200510buu">
//「はいっ！！」

</PRE>
	SetText();
	AddText(1,"「はいっ！！」","みそ","c23/000200500mso",false,false,1000);
	AddText(2,"「はいっ！！」","ブー","c23/000200510buu",true,true,1300);
	TypeBeginD();//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200520skr">
「やることは、わかってるだろうな？」

{	St("ML",700, @-50,@0,"buみそa_オラオラ_pride");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @50, @0, Dxl3, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/c23/000200530mso">
「合点ですッ！！」

{	St("MR",700, @50,@0,"buブーa_オラオラ_shout");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @-50, @0, Dxl3, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/c23/000200540buu">
「オレたちの魂込めて、この神社をマブい御殿に変えてやりますぜッ！！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200550skr">
「頼んだぞ、ふたりとも！」

{	St("MR",700, @30,@0,"buミヅハ_手構え_hard");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @-30, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c23/000200560mzh">
「沙紅羅よ！　わらわはなにをすれば良い？」

{	St("ML",700, @80,@0,"bu沙紅羅_後ろ向き_smile");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @-80, @0, Dxl3, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200570skr">
「おまえのスペースはここだ！」

{	St("MR",700, @0,@40,"buミヅハ_フラット_shock");
	DeleteAllSt(200,false);
	FadeT("@StNameMR/MR*",0,0,200,0,-40,Dxl1,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c23/000200580mzh">
「む……桜？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2305);}

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200590skr">
「そう！
　この桜を、おまえ色に飾り付けしてやってくれ！」

{	St("MR",700, @0,@0,"buミヅハ_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c23/000200600mzh">
「しかし、飾り付けなどしたことは……」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200610skr">
「大丈夫！　おまえなりのやり方でいいんだ！　な？」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c23/000200620mzh">
「む……むう……
　わらわなりのやり方……か」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200630skr">
「よっしゃ！
　最後は似鳥、おまえだ！」

{	DeleteAllSt(200,true);
	St("MR",700, @-60,@0,"bu沙紅羅_通常_shout");
	Move("@StNameMR/MR*", 200, @60, @0, Dxl3, false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200640skr">
「ほら、ここ！　おまえがデザインした絵なんだろ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @-40,@0,"bu似鳥_通常_worry");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 1000, @40, @0, Dxl1, false);
	FadeSt("ML",200,false);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/000200650nki">
「お……おう」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200660skr">
「手はず通り、そいつを屋根から飾って――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	SetVolume("@xbgm*", 1000, 0, null);

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}

//あきゅん「β演出：ＢＧＭ再選定」
//★inc櫻井　修正　xbgm23も少し違うと感じたので、25を使用する方向に修正しています。
//cono：BGMスタート位置移動しました
//※下倉注：ここは25継続で。似鳥にとっても決意のテーマです
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/000200670nki">
「なあ、沙紅羅。相談なんだけど――」

{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/000200680nki">
「コレ、描き直しちゃ駄目かな」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200690skr">
「ん？　描き直し？」

{	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/000200700nki">
「オレ……このデザインに、納得いってないんだ」

{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/000200710nki">
「前は、もう時間もないしこれでいいや！
　って目をつぶって出しちゃったけど」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2306);}

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/000200720nki">
「今度は、ちゃんとしたものを描きたい」

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200730skr">
「今度だって、時間はねーぞ」

{	St("ML",700, @0,@0,"bu似鳥_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/000200740nki">
「わかってる。でも……頼む！」

{	St("ML",700, @0,@0,"bu似鳥_通常_angry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/000200750nki">
「オレ、どうしても、やりたいんだ！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/000200760nki">
「ノーコに、もういなくても大丈夫だって、ちゃんと見せてやりたいんだ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200770skr">
「……ウシ！　わかった。
　そこまで言うんだったら信じるさ」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200780skr">
「その代わり――」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200790skr">
「アタシの設計図が狂うのは癪っちゃ癪だ。
　ハンパなもの出したら、ただじゃおかねぇぞ！！」

{	St("ML",700, @0,@0,"bu似鳥_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/000200800nki">
「おうッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//	SetVolume("@xbgm*", 1000, 0, null);

//	CreateSE("SEL04","seガヤ_半田明神01_l");
//	MusicStart("SEL04",1500,500,0,1000,null,true);

	CreateSE("SEL01", "seガヤ_交通少_l");
	MusicStart("SEL01", 2000, 350, 0, 1000, null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("R",700, @40,@0,"buミヅハ_通常_surprise");
	DeleteAllSt(200,false);
	Move("@StNameR/R*", 200, @-40, @0, Dxl1, false);
	FadeSt("R",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c23/000200810mzh">
「ところで沙紅羅、おぬしはなにをするのじゃ？」

{	St("C",700, @50,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200820skr">
「ん？　アタシか？」

{	St("C",700, @0,@40,"bu沙紅羅_通常_surprise");
	FadeT("@StNameC/C*",0,0,200,0,-40,Dxl3,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200830skr">
「ってうわっ！　ヤベ！
　名探偵とアザナエル取りに行く予定だったのに！」

{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200840skr">
「んじゃみんな、悪いけどアタシ急ぐんで！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2307);}

{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_smile");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/000200850skr">
「ラスト１時間ッ！　よろしく頼むぞ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 3000, 0, null);


	TextBoxDelete(150);

	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);


	EndScene();
}
