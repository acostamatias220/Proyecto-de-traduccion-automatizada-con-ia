
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2150恵那.nss_MAIN
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
	$GameName = "2200恵那.nss";
	//$GameCircle=false;

}

scene 2150恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="760">
////////////header////////////
//file name "2150恵那.nss"
//title "化狸救出作戦"
//previous "2144恵那.nss"

////////////footer////////////
//next "恵那" "2200恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);

{	ClockPass(2150);}



//◆場所：スパコン館_店内
	OnBG(10,"bg1103100スパコン館_店内_通常");
	FadeBG(0,true);

//◆演出指定：フウリが倒れてる絵
	CreateTextureSP("絵背景", 1000, Center, Middle, "cg/ev/ev2150ユージロー転倒b.jpg");

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/500200010fje">
「まだ、生きてる」

{	SoundPlay("@xbgm24",0,450,true);
	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",0,true);}
{	FadeDelete("絵背景", 500, null, true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/500200020fje">
「助けなきゃ、助けなきゃ――！！」


{	St("MR",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/500200030fjh">
「ノーコはいねぇのか？」

{	St("ML",700, @0,@0,"bu歌門_通常_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/500200040kms">
「ガラスが割れています。
　恐らく外に逃げたのでしょう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("MR",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/500200050fjh">
「飛べるのか……」

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/500200060mzh">
「とにかく、ノーコを早く見つけねば――」

{	St("ML",700, @0,@0,"bu歌門_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/500200070kms">
「ですね。アザナエルを見つける一番の近道は――」


{	St("C",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/500200080fje">
「誰か、獣医に知り合いはいない！？」

{	St("MR",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/500200090fjh">
「獣医……？　心当たりはいるけど、なんで――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("C",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/500200100fje">
「助けてあげたいの！」

{	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/500200110mzh">
「タヌキ――？」

{	St("MR",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/500200120fjh">
「傷の具合から見て……さっきノーコが傷つけたのか？」

{	St("C",700, @0,@0,"bu恵那_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/500200130fje">
「推理なんていいから、医者を！」

{	St("MR",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/500200140fjh">
「お、おう。そうだ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2151);}


//	TextBoxDelete(150);

//	SetVolume("@xbgm*", 2000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("ML",700, @0,@0,"bu歌門_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/500200150kms">
「無駄です」

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/500200160fje">
「は？　な、なに言ってるのよ！　まだ生きてる――」

{	St("ML",700, @0,@0,"bu歌門_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/500200170kms">
「それはただのタヌキではない。モノノケの類です」

{	St("C",700, @0,@0,"bu恵那_哀愁_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/500200180fje">
「モノノケ……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	CreateTextureEX("絵背景", 1010, Center, Middle, "cg/ev/ev2150ユージロー転倒b.jpg");
	Fade("絵背景", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0059]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500200190wfu">
「ノーコ……ちゃん……ダメ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	FadeDelete("絵背景", 500, null, true);

{	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/500200200fje">
「え……このタヌキ、しゃべってる？」

{	St("ML",700, @0,@0,"buミヅハ_フラット_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/500200210mzh">
「その声……まさか、フウリ？　フウリなのか！？」

{	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/500200220fje">
「フウリさんって確か……
　鈴姉と一緒にバンド組んでる、ドラマーの？」

{	DeleteAllSt(200,true);}

//	St("C",700, @0,@0,"buフウリ_通常_normal");
//	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/500200230wfu">
「んぁ……んきゅ……ぅ……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("C",700, @0,@0,"bu恵那_哀愁_fear");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/500200240fje">
「フウリさん――！」

{	DeleteAllSt(200,true);}
{	CreateSE("SE01","se動作_衣擦れ");
	MusicStart("SE01",0,700,0,1000,null,false);
}
　恵那は、ハンカチで傷口をきつく縛り付ける。




{	St("C",700, @0,@0,"buミヅハ_ダウナー_sad");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/500200250mzh">
「わらわが悪いのじゃ……」

//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/500200260mzh">
「ノーコを、わらわが信じられなかったから。
　それを覆すために、フウリは無茶をして――」

{	St("ML",700, @0,@0,"bu歌門_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/500200270kms">
「ミヅハ様が気に病むことはありません」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2152);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/500200280kms">
「今まで人間に化け、さんざん人を騙してきたのです。
　言わば自業自得というものでしょう」

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/500200290mzh">
「フウリを悪く言うなッ！！」

{	St("ML",700, @0,@0,"bu歌門_通常_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/500200300kms">
「ミヅハ様……化けダヌキに誑かされましたか」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/500200310kms">
「ひとを信じるから悪いのです。
　今までと同じく交わらず、ひっそりと暮らせば――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("C",700, @0,@0,"buミヅハ_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/500200320mzh">
「うううう……うるさーい！」

//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/500200330mzh">
「わらわは、後悔などしておらん！
　絶対、フウリを救ってみせる！！」

{	St("ML",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/500200340kms">
「元の力を取り戻してからならまだしも、今のミヅハ様は力を制限された身。救う方法など――」

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/500200350mzh">
「そのようなときのために、アザナエルがあるのじゃろ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 2000, 0, null);



{	ClockPass(2153);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("ML",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/500200360kms">
「馬鹿げています」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/500200370kms">
「そもそも、取らぬ狸の皮算用。
　いまだアザナエルを取り戻せてはいないのに――」


{	SoundPlay("@xbgm21",0,450,true);
	St("MR",700, @0,@0,"bu平次_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/500200380fjh">
「アザナエルなら、あるぞ」



{	St("C",700, @0,@0,"buミヅハ_通常_surprise");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/500200390mzh">
「なにっ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100a]
{	St("MR",700, @0,@0,"bu平次_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/500200400fjh">
「ほら、ここに」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	CreateTextureEX("絵演物", 1010, Center, Middle, "cg/img/imgアザナエルa.png");
	Move("絵演物", 0, @0, @120, null, true);

	Move("絵演物", 300, @0, @-120, Dxl1, false);
	Fade("絵演物", 300, 1000, null, true);

	Wait(1000);

	FadeDelete("絵演物", 500, null, true);

{	St("C",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100b]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/500200410mzh">
「本物じゃッ！！」

{	St("ML",700, @0,@0,"bu歌門_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/500200420kms">
「平次様ッ！！
　何故それを早く伝えなかったのですか！？」

{	St("MR",700, @0,@0,"bu平次_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/500200430fjh">
「いやいや、伝えようとしたけどさ。
　星さんが神社にいなかったんだろ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2154);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("ML",700, @0,@0,"bu歌門_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/500200440kms">
「あ……いやはい、それは……」



{	St("C",700, @0,@0,"buミヅハ_手構え_pride");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/500200450mzh">
「ふっふっふ！
　モジャモジャよ、アザナエルをよこすのじゃ！」

{	St("C",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/500200460mzh">
「半田明神を預かるこのミヅハノメ！
　勝負事の御利益を、今まさに見せて――」




{	St("MR",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/500200470fjh">
「弾切れだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("C",700, @0,@0,"buミヅハ_フラット_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/500200480mzh">
「は？」

{	St("MR",700, @0,@0,"bu平次_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/500200490fjh">
「いや、だから弾がないんだって」

{	St("ML",700, @0,@0,"bu歌門_通常_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/500200500kms">
「ということは、カゴメアソビが失敗した？」

{	St("MR",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/500200510fjh">
「あるいは誰かが、弾を抜き取ったのか。
　いや、そもそもカゴメアソビが行われなかった――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2155);}


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("ML",700, @0,@0,"bu歌門_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/500200520kms">
「それはあり得ません。
　現にノーコは、現実化している」

{	St("MR",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/500200530fjh">
「だったら、弾丸はどこから？」

{	St("ML",700, @0,@0,"bu歌門_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/500200540kms">
「わかりませんが、河原屋双一が用意したのでしょう」

{	St("MR",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/500200550fjh">
「半田明神から盗んだってことは、あり得ないのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("ML",700, @0,@0,"bu歌門_通常_pride");
	St("ML",700, @0,@0,"bu歌門_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);
	FadeStPro("ML", 200, 2000);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140a]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/500200560kms">
「はい。絶対に、あり得ませ――しまった！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	AgainSt("ML",700, @0,@0,"bu歌門_通常_shock");
DeleteAllSt(200,true);}

{
	CreateMaskAXLSP("絵マ", 800, 0, 0, "ciライン_00_00", true, "ciライン_00_00z");
	SetVertex("@絵マ", center, 144);
	SetVertex("@絵マLine", center, 144);
	Zoom("絵マ*", 0, 1000, 0, Dxl2, true);

	CreateColorSP("絵マ/色", 120, "#cc3300");//952
	CreateTextureSPadd("絵マ/絵背景", 120, 0, 0, "cg/ef/ef003_汎用移動.jpg");
	CreateTextureSP("絵マ/絵11", 190, 222, -128, "cg/bu/buミヅハ_手構え_hard.png");//222,-28
	Move("絵マ/絵11", 0, @100, @0, null, true);

	Move("絵マ/絵11", 200, @-100, @0, Dxl1, false);
	Zoom("絵マ*", 200, 1000, 1000, Dxl2, true);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140b]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/500200570mzh">
「恵那ッ！！」

//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/500200580mzh">
「弾を取ってくる！
　フウリのこと、しばし頼んだぞッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{
	Move("絵マ/絵11", 200, @-100, @0, Dxl1, false);
	Zoom("絵マ*", 200, 1000, 0, Dxl2, true);
	Delete("絵マ*");
}

{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0142]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/500200590fje">
「あ……ええ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2156);}


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("ML",700, @-50,@0,"bu歌門_通常_shout");
	DeleteAllSt(200,false);
Move("@StNameML/ML*", 200, @50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/500200600kms">
「ミヅハ様！　なりません！」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/500200610kms">
「弾を持ち出せば、また新たな悶着が――ミヅハ様ッ！」


{	SetVolume("@xbgm*", 3000, 0, null);}


{Move("@StNameML/ML*", 200, @50, @0, Dxl1, false);
	DeleteAllSt(200,true);
}
{	St("MR",700, @50,@0,"bu平次_通常_shout");
Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/500200620fjh">
「おいふたりとも、待て――」

{	St("ML",700, @0,@0,"bu恵那_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/500200630fje">
「父さんも、行くの？」

{	St("MR",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/500200640fjh">
「恵那……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2157);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/500200650fjh">
「悪い。オレには、やることが――」

{	St("ML",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/500200660fje">
「アザナエル、知ってたんでしょ？
　どうして、教えてくれなかったの？」

{	St("MR",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/500200670fjh">
「…………」

{	St2("ML",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/500200680fje">
「母さんのことに、関係あるんだよね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2158);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("MR",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/500200690fjh">
「星さんから聞いたのか？」

{	St("ML",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/500200700fje">
「関係あるってことしか、教えてくれなかった。
　あとは自分で、父さんに訊けって」

{	St("MR",700, @0,@0,"bu平次_通常_cool");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/500200710fjh">
「……悪ぃが、ミヅハを追いかけなきゃなんねぇ。
　時間がないんだ」

{	St("MR",700, @0,@0,"bu平次_通常_normal");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/500200720fjh">
「いずれ、話してやるからよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2159);}


//	TextBoxDelete(150);

	DeleteAllSt(200,true);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/500200730ksr">
「本当に、そんな時が来んのかァ？」


{	St("MR",700, @0,@0,"bu平次_通常_cool");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/500200740fjh">
「その声――」

{	St("C",700, @0,@0,"buユージローa_通常_hard");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 1000, 0, 10, 0, 10, 500, Axl3, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/21/500200750ujr">
「がるるるるるるるるるるッ！！」

{	St("ML",700, @0,@0,"bu恵那_哀愁_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/500200760fje">
「河原屋、双六――！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



	EndScene();
}
