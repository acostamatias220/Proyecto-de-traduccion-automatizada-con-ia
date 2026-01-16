
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2301沙紅羅.nss_MAIN
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
	if($myRoute=="トゥルー"){
		DeleteAllSt(200,true);
		$GameName = "2304沙紅羅.nss";
	}else{
		//あきゅん「演出："d2304沙紅羅.nss"への繋ぎ処理があるので修正したら報告してね」
		$GameName = "d2304沙紅羅.nss";
	}
}

scene 2301沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="920">
////////////header////////////
//file name "2301沙紅羅.nss"
//title ""
//previous "2300沙紅羅_恵那_似鳥_ノーコ.nss"

////////////footer////////////
//next "沙紅羅"（"flkagome4" = false） "d2304沙紅羅.nss"
//next "沙紅羅" "2304沙紅羅.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：半田明神_拝殿

{	ClockPass(2300);}


//前ファイルの曲引継ぎ
	SoundPlay("@xbgm23",0,450,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

	OnBG(10,"bg0607100半田明神_拝殿_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);


	St("ML",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200010skr">
「やれやれ。あの名探偵も、大したヤツだぜ……
　なんという素晴らしい作戦！」

{	St("MR",700, @0,@0,"buミヅハ_通常_pride");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/010200020mzh">
「うむ！　全く、沙紅羅の言う通りじゃ！」

{	St("C",700, @0,@0,"bu歌門_通常_think");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/010200030kms">
「しかし……
　今回の計画は、余りにも神事を馬鹿にしている……！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200040skr">
「ハッ、ピーチクパーチク文句ばっかり言いやがって！
　だったらてめぇに名案あんのか！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("C",700, @0,@0,"bu歌門_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/010200050kms">
「それは……その……」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/010200060mzh">
「星よ、頼む。
　今度ばかりは、わらわの顔を立てると思って……な？」

{	St("C",700, @0,@0,"bu歌門_通常_think");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/010200070kms">
「……ミヅハ様がそこまで言うのなら」

{	St("ML",700, @0,@0,"bu沙紅羅_後ろ向き_smile");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200080skr">
「ウシ！　じゃ、アタシはみそブーの様子見てくっから、こっちの方、よろしく頼むぜ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/010200090mzh">
「沙紅羅よ！」

{	St("ML",700, @0,@0,"bu沙紅羅_後ろ向き_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200100skr">
「ん――？」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/010200110mzh">
「おぬしがいなければ……きっと、諦めていた」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/010200120mzh">
「おぬしだけではない。
　みそやブーから、わらわは多くのものを教わった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/010200130mzh">
「あと、けばぶというものももらった！」

{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/010200140mzh">
「おぬしらには、心より感謝しておる」

{	St("MR",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/010200150mzh">
「――ありがとう」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_think");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200160skr">
「おいおい、そんな誉めんなって！
　なにも出ねぇから！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200170skr">
「あと、礼を言うんだったら上手くいってからにしろ！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200180skr">
「アタシと名探偵で、ちゃーんとアザナエル、持ってきてやっからよ！」

{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/010200190mzh">
「約束じゃな？」

{	St("ML",700, @0,@0,"bu沙紅羅_後ろ向き_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200200skr">
「ああ、約束だ！
　ちゃんと待って――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



	St("MR",700, @0,@0,"buミヅハ_手構え_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/010200210mzh">
「のう、沙紅羅よ！」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200220skr">
「なんだよ？　まだあるのか？」

{	St("MR",700, @0,@0,"buミヅハ_通常_sigh");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/010200230mzh">
「あの……あの、じゃな……
　お願いが、あるのじゃ」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/010200240mzh">
「みそとブーは、わらわのお友達になってくれた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("MR",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/010200250mzh">
「だからおぬし……おぬしも……」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/010200260mzh">
「わらわの、お友達になってくれぬか？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200270skr">
「お、おおおお……お友達？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200280skr">
「ば、バッキャロー！」

{	St("ML",700, @0,@0,"bu沙紅羅_後ろ向き_shy");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200290skr">
「あ、アタシたちはな！　ワルなんだぞ！
　イイコはお友達になんてなっちゃいけねーんだよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("MR",700, @0,@0,"buミヅハ_通常_think");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/010200300mzh">
「む……むう……」

{	St("MR",700, @0,@0,"buミヅハ_ダウナー_sad");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/010200310mzh">
「だめか……そうか……だめなのか……」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_shy");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200320skr">
「そ、そうだよ！　そうに決まってんだろ！
　それが世の中の道理ってもんよ！」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/010200330mzh">
「世の中の……道理……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/010200340mzh">
「いや、しかしみそブーは『世の中が間違ってるなら、決まりなんて破っちまえ！』と……」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200350skr">
「は？　あ、あいつら――」

{	St("MR",700, @0,@0,"buミヅハ_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/010200360mzh">
「のう……だ……だめかの？」

{	St("MR",700, @0,@0,"buミヅハ_ダウナー_sad");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/010200370mzh">
「やはり、決まり事は守らねば――」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_think");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200380skr">
「あああああああああああッ！！　もう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2301);}


//	TextBoxDelete(150);

	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200390skr">
「わーったわーった！　アレだアレ！」

{	St("MR",700, @0,@0,"buミヅハ_フラット_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/010200400mzh">
「アレ？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200410skr">
「友達の、友達は、友達！　な？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200420skr">
「みそブーは、アタシのシャテーだ！
　まあ、友達みてーなもんだ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200430skr">
「ってことは、みそブーの友達であるおまえも、アタシの友達だ！　な？　わかるだろ？」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/010200440mzh">
「友達の、友達は、友達？」

{	St("MR",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/010200450mzh">
「うむ……良い言葉ではないか！　あいわかった！
　それでは、おぬしはわらわの友達じゃ！」


{	DeleteSt("MR",200,true);
	St("MR",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/010200460kms">
「沙紅羅様……
　あまり、ミヅハ様におかしなことを吹き込まぬよう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200470skr">
「あぁーん？　んだと？
　アタシがいつ、おかしなことを――」

{	St("MR",700, @0,@0,"bu歌門_威圧_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/010200480kms">
「本心を忌憚なく言わせていただければ、あなたがミヅハ様と話していること自体が、おかしなことです」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200490skr">
「キタンってなんだよキタンって！　難しい言葉使っていい気になってんじゃねーぞオラ！」

{	DeleteSt("ML",200,true);

	SetVolumeEX("@xbgm23", 500, 1, null);

	St("C",700, @0,@+50,"buミヅハ_通常_angry");
	Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/010200500mzh">
「ふたりとも、友達同士でやめんか！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	DeleteSt("C",200,true);

//嶋：間
	Wait(1000);

	St("R",700, @0,@0,"bu歌門_通常_shock");
	St("L",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("R",200,false);
	FadeSt("L",200,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//◆音声指示：同時
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200520skr">
「友達同士？」
{WaitAddText();}<BR>

//◆音声指示：同時
//【歌門星】
//<voice name="歌門星" class="歌門星" src="voice/23/010200510kms">
//「友達同士？」

</PRE>
	SetText();
	AddText(1,"「友達同士？」","沙紅羅","23/010200520skr",false,false,1000);
	AddText(2,"「友達同士？」","歌門星","23/010200510kms",true,true,1600);
	TypeBeginD();//―――――――――――――――――――――――――――


//	TextBoxDelete(150);

	DeleteAllSt(200,true);
	SetVolumeEX("@xbgm23", 3000, 450, null);

{	St("C",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/010200530mzh">
「うむ！　沙紅羅はわらわの友達じゃ！」

{	St("C",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/010200540mzh">
「ならば星よ、わらわの友達であるおぬしも、沙紅羅の友達なのじゃろう？」

{	St("MR",700, @0,@0,"bu歌門_通常_shock");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/010200550kms">
「え……」

{	St("MR",700, @0,@0,"bu歌門_通常_think");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/010200560kms">
「私が……ミヅハ様の、友達……？」

{	St("C",700, @0,@0,"buミヅハ_通常_surprise");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/010200570mzh">
「ん、なんじゃ？　なにか悲しげな顔――」

{	St("MR",700, @0,@0,"bu歌門_通常_shock");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/010200580kms">
「いえ、そのようなことは――」

{	DeleteSt("MR",200,true);
	St("ML",700, @0,@0,"bu沙紅羅_後ろ向き_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200590skr">
「はいはい、世界に広がる友達の輪ね！
　おつかれさーん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu沙紅羅_後ろ向き_smile");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200600skr">
「それじゃ、またな！」

{	St("MR",700, @0,@0,"buミヅハ_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/010200610mzh">
「おい沙紅羅――！？」

{	St("ML",700, @0,@0,"bu沙紅羅_後ろ向き_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200620skr">
「大丈夫。そんな泣きそうな顔すんなって、神様！
　おまえの力、信じてるぜ！」

{	St("MR",700, @0,@0,"buミヅハ_通常_smile");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/010200630mzh">
「おう！　おぬしもアザナエルを、よろしく頼んだぞ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("SE*", 2000, 0, null);
//	SetVolumeEX("@xbgm*", 2000, 0, null);

	DeleteAllSt(200,true);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

{	ClockPass(2302);}

//◆場所：半田明神_境内
	OnBG(10,"bg0603200半田明神_境内_ペンキ");
	FadeBG(0,true);

//あきゅん「演出：新年前は禁止でお願いします」
//	CreateSE("SE10","seガヤ_半田明神01_l");
//	MusicStart("SE10",1500,500,0,1000,null,true);


	DrawDelete("黒幕１", 1000, 100, null, "blind_01_00_1", true);


{	St("C",700, @+100,@0,"bu沙紅羅_後ろ向き_normal");
	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200640skr">
「さて――と」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200650skr">
「名探偵も待ってるだろうし」

{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200660skr">
「サクッとあいつらの様子見てくっか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("SE10", 3000, 350, null);


	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteAllSt(0,true);


{	ClockPass(2303);}

//◆場所：半田明神_鳥居_ペンキ
	OnBG(10,"bg0602211半田明神_鳥居_ペンキ");
	FadeBG(0,true);
	CreateTextureSP("絵背景100", 100, Center, -780, "cg/bg/bg0602211半田明神_鳥居_ペンキ.jpg");


	DrawDelete("黒幕１", 500, 100, null, "blind_01_00_1", true);


{	St("ML",700, @-100,@0,"buみそa_通常_happy");
	Move("@StNameML/ML*", 200, @+100, @0, Dxl1, false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/010200670mso">
「あ、姐さん！」

{	St("MR",700, @+100,@0,"buブーa_通常_shout");
	DeleteSt("ML",200,false);
	Move("@StNameMR/MR*", 200, @-100, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/23/010200680buu">
「お疲れ様ですッ！！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200690skr">
「ああ。お疲れさん」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200700skr">
「準備は順調か？」

{	St("MR",700, @0,@0,"buブーa_通常_smile");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/23/010200710buu">
「はい、もちろんです！」

{	St("ML",700, @0,@0,"buみそa_オラオラ_pride");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/010200720mso">
「コイツを、思いっきりぶっ放してやりますよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_smile");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200730skr">
「ん、そかそか。頼んだぞ」

{	St("MR",700, @0,@0,"buブーa_通常_shout");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/23/010200740buu">
「姐さんこそ、気をつけて！」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200750skr">
「いやいや、大丈夫だろ。
　警察行ってアザナエルを返してもらうだけ――」

{	St("MR",700, @0,@0,"buブーa_通常_hard");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/23/010200760buu">
「いえ！　やつらは狡猾です！
　どんな口実で姐さんをパクろうとしてくるか――」

{	St("ML",700, @0,@0,"buみそa_通常_shout");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/010200770mso">
「あ、そうだ！　是非これを！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateTextureEX("絵背景200", 100, Center, Middle, "cg/obj/obj御札.png");
	Move("絵背景200", 0, @0, @100, null, true);

	Move("絵背景200", 500, @0, @-100, Dxl1, false);
	Fade("絵背景200", 500, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200780skr">
「ん？　御札……？」

//【みそ】
<voice name="みそ" class="みそ" src="voice/23/010200790mso">
「はい！
　とある場所で見つけた、霊験あらたかな御札です！」

　みそが差し出した２枚の御札を、沙紅羅はまじまじと見つめる。

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200800skr">
「でもコレ、健康祈願・家内安全って――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("絵背景200", 500, 0, null, true);
	Delete("絵背景200");

{	St("ML",700, @0,@0,"buみそa_通常_shout");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/010200810mso">
「効きます！
　どうかオレたちだと思ってコレを！」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200820skr">
「いや、でも――」

{	St("MR",700, @0,@0,"buブーa_オラオラ_shout");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/23/010200830buu">
「オレたちは、コレのおかげで暗闇のダンジョンを突破できました！　命の恩人です！」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200840skr">
「ん……ああ、そうか」

{	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200850skr">
「そこまで言うなら、遠慮なくもらっておくか」

{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200860skr">
「おまえらも、がんばれよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteSt("C",200,true);

	St("L",701, @0,@0,"buみそa_通常_shout");
	St("R",700, @0,@0,"buブーa_通常_shout");

	FadeSt("L",200,false);
	FadeSt("R",200,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/010200870mso">
「押忍ッ！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/23/010200880buu">
//「押忍ッ！」

</PRE>
	SetText();
	AddText(1,"「押忍ッ！」","みそ","23/010200870mso",false,false,1000);
	AddText(2,"「押忍ッ！」","ブー","23/010200880buu",true,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteAllSt(0,true);

	Delete("絵背景100");
//◆場所：半田明神_境内
	OnBG(10,"bg0603200半田明神_境内_ペンキ");
	FadeBG(0,true);

	SetVolumeEX("SE10", 2000, 700, null);


	DrawDelete("黒幕１", 500, 100, null, "blind_01_00_1", true);


{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}

	SetVolumeEX("@xbgm*", 4000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200890skr">
「んじゃ一丁、名探偵と一緒に――」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200900skr">
「…………あれ？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200910skr">
「アイツ、どこ行った？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/010200920skr">
「名探偵？
　おい名探偵、いねえのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	SetVolumeEX("SE*", 200, 0, null);



	EndScene();
}
