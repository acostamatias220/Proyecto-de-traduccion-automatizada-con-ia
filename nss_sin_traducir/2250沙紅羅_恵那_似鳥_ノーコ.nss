
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2250沙紅羅_恵那_似鳥_ノーコ.nss_MAIN
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
		$GameName = "2300沙紅羅_恵那_似鳥_ノーコ.nss";
	}else if($CharaName=="恵那"){
		$GameName = "2300沙紅羅_恵那_似鳥_ノーコ.nss";
	}else if($CharaName=="似鳥"){
		$GameName = "2300沙紅羅_恵那_似鳥_ノーコ.nss";
	}else{
		$GameName = "2300沙紅羅_恵那_似鳥_ノーコ.nss";
	}
//	$GameCircle=false;

}

scene 2250沙紅羅_恵那_似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1810">
////////////header////////////
//file name "2250沙紅羅_恵那_似鳥_ノーコ.nss"
//title "たったひとつの冴えたやり方"
//previous "2240沙紅羅_恵那_似鳥_ノーコ.nss"

////////////footer////////////
//next "沙紅羅" "2300沙紅羅_恵那_似鳥_ノーコ.nss"
//next "恵那" "2300沙紅羅_恵那_似鳥_ノーコ.nss"
//next "似鳥" "2300沙紅羅_恵那_似鳥_ノーコ.nss"
//next "ノーコ" "2300沙紅羅_恵那_似鳥_ノーコ.nss"


////////////body////////////



//■再定義定型文
	PrintBG("上背景", 30000);

//事件定義
	KoreJikenSet();

{	ClockPass(2250);}

//◆場所：半田明神_境内_ペンキ
	OnBG(10,"bg0603200半田明神_境内_ペンキ");
	FadeBG(0,true);
	DeleteAllSt(0,true);

	SoundPlay("@xbgm07_noint",0,450,true);

//	CreateSE("SE10","seガヤ_半田明神01_l");
//	MusicStart("SE10",1500,500,0,1000,null,true);

	FadeDelete("上背景", 200, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/500300010skr">
「アンタ、自分を名探偵だって名乗っただろ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/500300020nko">
「あ……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/500300030nki">
「そういえば……そうだった！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_哀愁_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500300040fje">
「あ、いやいや。名探偵とは言うけれども――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/500300050kms">
「確かに恵那様は探偵を目指していることで有名ですね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/500300060mzh">
「わらわが甘いものを食べたいのを、見事に見抜いた！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_pride");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/500300070mso">
「それだけじゃねぇ！　悪を許さぬ正義の心もある！」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_shout");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/500300080buu">
「自分の危険を顧みない、勇気も！！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_哀愁_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500300090fje">
「え……いや、あは、あはははは……ちょっと待って。
　今回のは推理とかとは別ジャンルで」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("C",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500300100fje">
「私は名探偵志望だけど、確かに今までも色んな事件を解決したけれど、ソレとコレとは話が――」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/500300110mzh">
「……違うのか？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500300120fje">
「う……そ、そんな泣きそうな顔で見なくても……」

{	SetVolumeEX("@xbgm*", 4000, 0, null);
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/500300130skr">
「頼む名探偵！！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/500300140mso">
「お願いします！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2251);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_happy");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/500300150buu">
「いよっ！　名探偵！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_shout");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/500300160nki">
「おまえだけが頼りなんだッ！！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/500300170nko">
「あなただけがたより……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/500300180kms">
「もしもなにか名案があれば――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/500300190mzh">
「助けてはくれぬか……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 2000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500300200fje">
「ふぅ……やれやれ……」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500300210fje">
「そう、考えてみれば当然よ。
　元はといえば、私がまいた種――即ち！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	KoreJikenStart();
	DeleteAllSt(0,true);

	SoundPlay("@xbgm08_onlyint",0,600,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500300220fje">
「コレは事件よ！！」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500300230fje">
「解決は、名探偵富士見恵那に任せなさいッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//◆ＳＥ：たくさんの拍手
	CreateSE("SE01","se動作_拍手01_l");
	MusicStart("SE01",0,700,0,1000,null,false);


/*
//◆音声指示：同時
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/500300240skr">
「おおおおお…………！！」

//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/500300250mso">
「おおおおお…………！！」

//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/500300260buu">
「おおおおお…………！！」

//◆音声指示：同時
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/500300270nki">
「おおおおお…………！！」

//◆音声指示：同時
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/500300280nko">
「おおおおお…………！！」

//◆音声指示：同時
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/500300290kms">
「おおおおお…………！！」

//◆音声指示：同時
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/500300300mzh">
「おおおおお…………！！」
*/


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
//◆音声指示：同時
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/500300240">
「「「「「「「おおおおお…………！！」」」」」」」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("SE01", 2500, 0, null);

	KoreJikenEnd(true);


	SetVolumeEX("@xbgm*", 500, 0, null);

	Wait(300);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/500300310skr">
「で！　なにか名案はあるのか！？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500300320fje">
「焦ってはだめよ！」

{	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500300330fje">
「この事件は、色々な要素が複雑に絡み合っているわ！
　ひとつずつ、問題点を明らかにしていきましょう！」

{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500300340fje">
「まず最初に、私たちの目的は――？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2252);}

	SoundPlay("@xbgm08_noint",0,450,true);

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//窓準備
	CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 1520, Center, Middle, "cg/bg/bg0603200半田明神_境内_ペンキ.jpg");
	SetShade("絵窓/絵演背景", HEAVY);
	Zoom("絵窓/絵演背景", 0, 2000, 2000, null, true);

//左キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1910, center, middle, "cg/bu/buミヅハ_手構え_hard.png");
	Move("絵窓/絵演立絵", 0, @0, @80, null, true);
//右キャラ準備
	CreateTextureEX("絵窓/絵演立絵2", 1900, center, middle, "cg/bu/bu歌門_通常_normal.png");
	Move("絵窓/絵演立絵2", 0, @0, @80, null, true);

	CreateTextureEX("絵背景枠01", 1920, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 1920, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");


//左キャラ動作
	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 200, @0, 80, Dxl2, false);
	Move("絵背景枠02", 200, @0, 464, Dxl2, false);
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	Move("絵窓/絵演立絵", 200, @-200, @0, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);




//※下倉注：台詞変更 2010/11/17

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/500200320mzh">
「アザナエルの呪いを解くこと！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//右キャラ動作
	Move("絵窓/絵演立絵2", 200, @200, @0, Dxl2, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/500300360kms">
「そして、ミヅハ様に元の力を取り戻させて差し上げる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	Move("絵背景枠01", 200, @0, 262, null, false);
	Move("絵背景枠02", 200, @0, 262, null, false);
	Fade("絵背景枠*", 200, 0, null, false);
	Zoom("絵窓", 200, 1000, 0, null, true);
	Delete("絵窓*");
	Delete("絵背景枠*");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500300370fje">
「そのためには、この神社に人々の『想い』を集めなければならない」

{	St("C",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500300380fje">
「でも、この状態じゃ初詣どころじゃないわよね」

{	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500300390fje">
「屋根に張り付いたペンキ――
　石畳についた弾痕――」

{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500300400fje">
「コレをなんとかしないと」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//窓準備
	CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 1520, Center, Middle, "cg/bg/bg0603200半田明神_境内_ペンキ.jpg");
	SetShade("絵窓/絵演背景", HEAVY);
	Zoom("絵窓/絵演背景", 0, 2000, 2000, null, true);

//左キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1910, center, middle, "cg/bu/buみそa_通常_pinch.png");
	Move("絵窓/絵演立絵", 0, @0, @0, null, true);
//右キャラ準備
	CreateTextureEX("絵窓/絵演立絵2", 1900, center, middle, "cg/bu/buブーa_通常_pinch.png");
	Move("絵窓/絵演立絵2", 0, @0, @0, null, true);
//中キャラ準備
	CreateTextureEX("絵窓/絵演立絵3", 1920, center, middle, "cg/bu/bu沙紅羅_通常_hard.png");
	Move("絵窓/絵演立絵3", 0, @0, @100, null, true);
	CreateTextureEX("絵背景枠01", 1921, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 1921, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");

//窓開き動作
	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 200, @0, 80, Dxl2, false);
	Move("絵背景枠02", 200, @0, 464, Dxl2, false);
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);

//中キャラ動作
	Move("絵窓/絵演立絵3", 200, @0, @-100, Dxl2, false);
	Fade("絵窓/絵演立絵3", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/500300410skr">
「ったく、しゃーねーな！
　時間がねぇけどきっちり大掃除するしか――」

//右キャラ動作
{	Move("絵窓/絵演立絵2", 200, @300, @0, Dxl2, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/500300420buu">
「それが……だめなんです」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/500300430skr">
「だめ？」

//【ブー】
<voice name="ブー" class="ブー" src="voice/22/500300440buu">
「さっき、みそが果敢にブラシ洗いチャレンジしたんですが――」

//左キャラ動作
{	Move("絵窓/絵演立絵", 200, @-300, @0, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/500300450mso">
「全然、取れませんでしたッ！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/500300460skr">
「全力でもか？」

//【みそ】
<voice name="みそ" class="みそ" src="voice/22/500300470mso">
「はい、全力でもです！」

{	CreateTextureEX("絵窓/絵演立絵3b", 1920, center, middle, "cg/bu/bu沙紅羅_通常_think.png");
	Fade("絵窓/絵演立絵3", 300, 0, Axl1, false);
	Fade("絵窓/絵演立絵3b", 200, 1000, null, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/500300480skr">
「ぐ……そうか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	Move("絵背景枠01", 200, @0, 262, null, false);
	Move("絵背景枠02", 200, @0, 262, null, false);
	Fade("絵背景枠*", 200, 0, null, false);
	Zoom("絵窓", 200, 1000, 0, null, true);

	Delete("絵背景枠*");
	Delete("絵窓*");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500300490fje">
「犯罪者用のペイントボール、簡単に色が取れたら困るもんね……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,false);

/*
	CreateTextureEX("絵マスク枠", 2010, 300, Middle, "cg/mask/ciスラッシュ_05_00z.png");
	Move("絵マスク枠", 0, 1024, 0, null, true);
	Fade("絵マスク枠", 0, 1000, null, true);
	Move("絵マスク枠", 300, 0, 0, Dxl2, false);
*/
//マスク準備
	CreateTextureEX("絵マスク枠", 2010, 300, Middle, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureSP("絵マスク/絵演背景", 1520, Center, Middle, "cg/bg/bg0603200半田明神_境内_ペンキ.jpg");
	SetShade("絵マスク/絵演背景", HEAVY);
	Zoom("絵マスク/絵演背景", 0, 1500, 1500, null, true);

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buノーコb_幽霊_think.png");
	Request("絵マスク/絵演立絵", Smoothing);

//動作準備
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵", 0, 512, 200, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);
	Move("絵マスク枠", 0, 1024, 0, null, true);
	Fade("絵マスク枠", 0, 1000, null, true);


//イン動作
	Move("絵マスク枠", 200, 0, 0, Dxl3, false);
	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, 350, middle, Dxl1, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/500300500nko">
「それに、あのたまはとくしゅ」

{	St("L",700, @-50,@50,"bu似鳥_背張る_normal");
	Move("@StNameL/L*", 200, @50, @-50, Dxl2, false);
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/500300510nki">
「屋根は？　瓦は換えればいいだろ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

/*
	CreateTextureEX("絵背景枠01", 19200, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 19200, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");
	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 200, @0, 80, Dxl2, false);
	Move("絵背景枠02", 200, @0, 464, Dxl2, false);

	Move("絵背景枠01", 200, @0, 262, null, false);
	Move("絵背景枠02", 200, @0, 262, null, false);
	Fade("絵背景枠*", 200, 0, null, false);
	Delete("絵背景枠*");
*/
//窓準備
	CreateWindow("絵窓", 7000, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 15200, Center, Middle, "cg/bg/bg0603200半田明神_境内_ペンキ.jpg");
	SetShade("絵窓/絵演背景", HEAVY);
	Zoom("絵窓/絵演背景", 0, 1300, 1300, null, true);

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 19100, center, middle, "cg/bu/bu歌門_通常_think.png");
	Move("絵窓/絵演立絵", 0, @200, @80, null, true);

	CreateTextureEX("絵背景枠01", 19200, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 19200, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");

//動作
	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 300, @0, 80, Dxl2, false);
	Move("絵背景枠02", 300, @0, 464, Dxl2, false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);
	Move("絵窓/絵演立絵", 300, @-200, @0, Dxl2, false);
	Fade("絵窓/絵演立絵", 300, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0122]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/500300520kms">
「無論そちらも問い合わせてはみたんですが、この時間からではもう……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("絵背景枠01", 200, @0, 262, null, false);
	Move("絵背景枠02", 200, @0, 262, null, false);
	Fade("絵背景枠*", 200, 0, null, false);
	Zoom("絵窓", 200, 1000, 0, null, false);
//アウト動作
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク枠", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵", 200, 512, 200, Axl1, false);
	Fade("絵マスク/絵演立絵", 200, 0, null, false);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0125]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500300530fje">
「間に合わない、か」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2253);}

	TextBoxDelete(150);
	DeleteAllSt(200,true);
	Delete("絵マスク*");
	Delete("絵窓*");
	Delete("絵背景枠*");

//窓準備
	CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 1520, Center, Middle, "cg/bg/bg0603200半田明神_境内_ペンキ.jpg");
	SetShade("絵窓/絵演背景", HEAVY);
	Zoom("絵窓/絵演背景", 0, 2000, 2000, null, true);

//左キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1910, center, middle, "cg/bu/bu似鳥_背張る_normal.png");
	Move("絵窓/絵演立絵", 0, @0, @50, null, true);
//右キャラ準備
	CreateTextureEX("絵窓/絵演立絵2", 1900, center, middle, "cg/bu/buみそa_通常_pinch.png");
	Move("絵窓/絵演立絵2", 0, @0, @50, null, true);
//中キャラ準備
	CreateTextureEX("絵窓/絵演立絵3", 1920, center, middle, "cg/bu/buミヅハ_通常_hard.png");
	Move("絵窓/絵演立絵3", 0, @0, @180, null, true);
	CreateTextureEX("絵窓/絵演立絵3b", 1920, center, middle, "cg/bu/buミヅハ_手構え_pride.png");
	Move("絵窓/絵演立絵3b", 0, @0, @180, null, true);

	CreateTextureEX("絵背景枠01", 1940, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 1940, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");


//窓開き動作
	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 200, @0, 80, Dxl2, false);
	Move("絵背景枠02", 200, @0, 464, Dxl2, false);
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);

//左キャラ動作
	Move("絵窓/絵演立絵", 200, @-300, @0, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/500300540nki">
「いっそ、土砂降りでも降ってくれれば――」

//中キャラ動作
{	Move("絵窓/絵演立絵3*", 200, @0, @-100, Dxl2, false);
	Fade("絵窓/絵演立絵3", 200, 1000, null, true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/500300550mzh">
「やってみるか？」

//右キャラ動作
{	Move("絵窓/絵演立絵2", 200, @300, @0, Dxl2, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/500300560mso">
「へ？　やってみるって？」

{	Fade("絵窓/絵演立絵3", 300, 0, Axl2, false);
	Fade("絵窓/絵演立絵3b", 200, 1000, null, true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/500300570mzh">
「わらわはミヅハノメ！
　つまり水の神様じゃぞ！」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/500300580mzh">
「雨くらい、お茶の子さいさい屁の河童じゃ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//マスク準備
	CreateTextureEX("絵マスク枠", 7010, 300, Middle, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureSP("絵マスク/絵演背景", 5510, Center, Middle, "cg/bg/bg0603200半田明神_境内_ペンキ.jpg");
	SetShade("絵マスク/絵演背景", HEAVY);
	Zoom("絵マスク/絵演背景", 0, 1500, 1500, null, true);

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 5530, center, middle, "cg/bu/bu恵那_通常_hard.png");
	Request("絵マスク/絵演立絵", Smoothing);

//動作準備
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵", 0, 552, 200, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);
	Move("絵マスク枠", 0, 1024, 0, null, true);
	Fade("絵マスク枠", 0, 1000, null, true);



//イン動作
	Move("絵マスク枠", 200, 0, 0, Dxl3, false);
	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, 550, middle, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500300590fje">
「あ……天気、変えられるんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//アウト動作
	Move("絵マスク枠", 200, 1024, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵", 200, 512, 200, Axl1, false);
	Fade("絵マスク/絵演立絵", 200, 0, null, true);

	Delete("絵マスク*");

	CreateTextureEX("絵窓/絵演立絵4", 1890, center, middle, "cg/bu/buブーa_通常_hard.png");
	Move("絵窓/絵演立絵4", 0, @630, @50, null, true);
	Fade("絵窓/絵演立絵4", 200, 1000, null, false);
	Move("絵窓/絵演立絵*", 200, @-300, @0, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/500300600buu">
「確かに今日、天気全体的におかしかったよな……
　突然雨だったり……雷が鳴ったり……」

{	Fade("絵窓/絵演立絵3b", 300, 0, null, false);
	Fade("絵窓/絵演立絵3", 200, 1000, null, true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/500300610mzh">
「まあ、なんというか……
　今日はわらわにも色々あったからのう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	Move("絵背景枠01", 200, @0, 262, null, false);
	Move("絵背景枠02", 200, @0, 262, null, false);
	Fade("絵背景枠*", 200, 0, null, false);
	Zoom("絵窓", 200, 1000, 0, null, true);
	Delete("絵窓*");
	Delete("絵背景枠*");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0142]
{	St("C",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500300620fje">
「でもさっき、みそさんが全力で洗ったんでしょ？
　それなのに、今さら雨ごときで取れるとは思えないわ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――




	DeleteAllSt(200,true);


/*
//◆音声指示：同時
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/500300630skr">
「う――ん…………」

//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/500300640mso">
「う――ん…………」

//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/500300650buu">
「う――ん…………」

//◆音声指示：同時
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/500300660nki">
「う――ん…………」

//◆音声指示：同時
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/500300670nko">
「う――ん…………」

//◆音声指示：同時
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/500300680kms">
「う――ん…………」

//◆音声指示：同時
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/500300690mzh">
「う――ん…………」
*/
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//◆音声指示：同時
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/500300630">
「「「「「「「う――ん…………」」」」」」」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2254);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("C",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/500300700mzh">
「やはりここは、わらわがアザナエルの力を使うしか……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/500300710skr">
「バカ言うなよ！
　ロシアンルーレットなんて危ねーじゃねーか！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/500300720mzh">
「ふふん。わらわの力を見くびるでない」

{	St("C",700, @0,@0,"buミヅハ_手構え_pride");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/500300730mzh">
「わらわは勝負事の神として奉られておる。
　本来の力を発揮すれば、願いが叶わぬはずがなかろ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/500300740kms">
「しかしミヅハ様。それではそもそも、本末転倒――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/500300750mzh">
「確かにわらわが禁を破り、自らの力を使うならば、罰の期間は延びるじゃろう。じゃが――」

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/500300760mzh">
「アザナエルを封じるためなら、致し方あるまいて」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/500300770kms">
「なりません！
　それではミヅハ様が、余りに不憫――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500300780fje">
「まあまあ、落ち着いて。
　それもアザナエルを取り返してからじゃないと」

{	St("C",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500300790fje">
「確かアザナエルは、警官に返したのよね」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/500300800nko">
「そう」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/500300810nki">
「悪い、そんなものだとは思わなくて――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/500300820kms">
「我々にも、警察にツテはあります。
　事情を説明すれば、すぐに返却されるはず――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_一休_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500300830fje">
「……確かにね。
　でも、問題はそれだけじゃないわ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/500300840skr">
「他にもなんかあんのか？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500300850fje">
「参拝客はどうやって来る？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	St("ML",700, @0,@0,"bu似鳥_背張る_hard");
//	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/500300860nki">
「今日は終日運転してるから、電車で――あ！」

{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/500300870nki">
「高架下、崩れたんだっけ？
　電車、止まってる……？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_幽霊_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/500300880nko">
「ごめんなさい……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500300890fje">
「ま、地下鉄は走ってるから致命傷にならないとは思うけど、普通に人が減っちゃうでしょうね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2255);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/500300900kms">
「それは……困ります」

{	St("MR",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/500300910kms">
「例年よりも多く人が集まらねば……
　そのために、ソトカンダーの垂れ幕を用意したのです」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/500300920nki">
「ゆるキャラバンがああなっちゃ、『ソトカンダーってなに？』ってレベルだからな……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_一休_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500300930fje">
「これで問題は全て出そろったってわけ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//◆音声指示：遠くからスピーカー越し
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/22/500300940fjr">
『もじゃ――――ッ！！』

{	St("C",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500300950fje">
「ハァ……他にも、問題があった……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/500300960skr">
「っつーかさ、さっきからなんなんだあの叫び声？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500300970fje">
「あれはなんていうか……ウチのお姉ちゃんで……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/500300980nki">
「おねーちゃん？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500300990fje">
「ま、いいわ。ソレとコレとは関係ない！」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500301000fje">
「とにかく、アザナエルを浄化するため！」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500301010fje">
「ミヅハちゃんを元通りにしてあげるため！」

{	St("C",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500301020fje">
「これらの問題を、解決しなきゃならないって寸法ね！」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/500301030skr">
「なにか――名案があるのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500301040fje">
「ふふ、ふふふふふ……」

{	St("C",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500301050fje">
「ふふふふふふふ……」

{	St("C",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500301060fje">
「焦ることはないわッ！　まだ時間はあるッ！！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/500301070nko">
「おもいついてない……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500301080fje">
「うるさいわねっ！
　一人の頭じゃ、名案は思い浮かばないのよ！」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500301090fje">
「みんなで考えましょうッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);




/*
//◆音声指示：同時
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/500301100skr">
「う――ん…………」

//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/500301110mso">
「う――ん…………」

//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/500301120buu">
「う――ん…………」

//◆音声指示：同時
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/500301130nki">
「う――ん…………」

//◆音声指示：同時
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/500301140nko">
「う――ん…………」

//◆音声指示：同時
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/500301150kms">
「う――ん…………」

//◆音声指示：同時
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/500301160mzh">
「う――ん…………」
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//◆音声指示：同時
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/500301100">
「「「「「「「う――ん…………」」」」」」」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);


//窓準備
	CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 1520, Center, Middle, "cg/bg/bg0603200半田明神_境内_ペンキ.jpg");
	SetShade("絵窓/絵演背景", HEAVY);
	Zoom("絵窓/絵演背景", 0, 2000, 2000, null, true);

//左キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1910, center, middle, "cg/bu/bu似鳥_通常_sigh.png");
	Move("絵窓/絵演立絵", 0, @0, @100, null, true);
//右キャラ準備
	CreateTextureEX("絵窓/絵演立絵2", 1900, center, middle, "cg/bu/bu歌門_通常_shout.png");
	Move("絵窓/絵演立絵2", 0, @0, @100, null, true);
//中キャラ準備
	CreateTextureEX("絵窓/絵演立絵3", 1920, center, middle, "cg/bu/bu沙紅羅_頭かき_think.png");
	Move("絵窓/絵演立絵3", 0, @0, @150, null, true);

	CreateTextureEX("絵背景枠01", 1940, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 1940, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");

//窓開き動作
	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 200, @0, 80, Dxl2, false);
	Move("絵背景枠02", 200, @0, 464, Dxl2, false);
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);


//中キャラ動作
	Move("絵窓/絵演立絵3", 200, @0, @-50, Dxl2, false);
	Fade("絵窓/絵演立絵3", 200, 1000, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/500301170skr">
「ああッ！　めんどくせー！　もうこうなったらよ！
　全部真っ黄色にすりゃいいんじゃね？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/500301180skr">
「木を隠して森隠さず！
　一部だけが黄色いから気になるんだって！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/500301190skr">
「いっそ全部、パーッと塗りたくっちまえば――」

//右キャラ動作
{	Move("絵窓/絵演立絵2", 200, @300, @0, Dxl2, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/500301200kms">
「な、なにを罰当たりなことを！！
　ここは、御先祖様から代々受け継がれた……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2256);}


	CreateTextureEX("絵窓/絵演立絵2b", 1900, center, middle, "cg/bu/bu歌門_通常_shock.png");
	Move("絵窓/絵演立絵2b", 0, @300, @100, null, true);

//左キャラ動作
	Move("絵窓/絵演立絵", 200, @-350, @0, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/500301210nki">
「ソトカンダーの垂れ幕、飾る気だったんだろ？
　それでカクシキがどうのこうの言うのか？」

{	Fade("絵窓/絵演立絵2", 300, 0, Axl2, false);
	Fade("絵窓/絵演立絵2b", 200, 1000, null, true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/500301220kms">
「う……それは、そうですが……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//マスク準備
	CreateTextureEX("絵マスク枠", 7010, 300, Middle, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク左", 6000, 0, 0, "cg/mask/ciスラッシュ_05_00.png", false);
	SetAlias("絵マスク左","絵マスク左");
	CreateTextureSP("絵マスク左/絵演背景", 6520, Center, Middle, "cg/bg/bg0603200半田明神_境内_ペンキ.jpg");
	SetShade("絵マスク左/絵演背景", MIDEUM);
	Zoom("絵マスク左/絵演背景", 0, 1500, 1500, null, true);

//立ち絵準備
	CreateTextureEX("絵マスク左/絵演立絵", 6530, center, middle, "cg/bu/buミヅハ_通常_think.png");
	Request("絵マスク左/絵演立絵", Smoothing);

//動作準備
	Move("絵マスク左", 0, -1024, 0, null, true);
	Move("絵マスク左/絵演立絵", 0, -512, 200, null, true);
	Fade("絵マスク左/絵演背景", 0, 1000, null, true);
	Fade("絵マスク左/絵演色", 0, 1000, null, true);
	Move("絵マスク枠", 0, -1024, 0, null, true);
	Fade("絵マスク枠", 0, 1000, null, true);

//イン動作
	Move("絵マスク枠", 200, 0, 0, Dxl3, false);
	Move("絵マスク左", 200, 0, 0, Dxl3, false);
	Fade("絵マスク左/絵演立絵", 200, 1000, null, false);
	Move("絵マスク左/絵演立絵", 200, 0, middle, Dxl1, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0291]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/500301230mzh">
「権威に構ってる場合ではないかもしれんの」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/500301240kms">
「しかし真っ黄色というのは、余りにも――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//アウト動作
	Move("絵マスク左", 200, -1024, 0, Axl2, false);
	Move("絵マスク枠", 200, -1024, 0, Axl2, false);
	Move("絵マスク左/絵演立絵", 200, -512, 200, Axl2, false);

	Move("絵背景枠01", 200, @0, 262, Axl2, false);
	Move("絵背景枠02", 200, @0, 262, Axl2, false);
	Fade("絵背景枠*", 200, 0, null, false);
	Zoom("絵窓", 200, 1000, 0, Axl2, true);

//デリート
	Delete("絵マスク*");
	Delete("絵背景枠*");
	Delete("絵窓*");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
{	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/500301250mso">
「でも、姐さん。
　屋根をみんな塗りたくるにはペンキが足りないんです」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/500301260skr">
「ゲ……マジでか？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/500301270buu">
「鳥居くらいはなんとかなるかもしれないですけど……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500301280fje">
「鳥居は朱色のイメージが強いけれども、確たる決まり事があるワケじゃないわ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
{	St("C",700, @0,@0,"bu恵那_一休_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500301290fje">
「石の鳥居やコンクリートの鳥居――
　白や黒の鳥居だってある」

{	St("C",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500301300fje">
「全部黄色に塗っちゃえば、ソレはソレで――」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/500301310kms">
「屋根瓦や、石畳はどうするのですか？
　今からでは到底、交換など間に合いません」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);


/*
//◆音声指示：同時
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/500301320skr">
「う――ん…………」

//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/500301330mso">
「う――ん…………」

//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/500301340buu">
「う――ん…………」

//◆音声指示：同時
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/500301350nki">
「う――ん…………」

//◆音声指示：同時
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/500301360nko">
「う――ん…………」

//◆音声指示：同時
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/500301370kms">
「う――ん…………」

//◆音声指示：同時
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/500301380mzh">
「う――ん…………」

*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//◆音声指示：同時
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/500301320">
「「「「「「「う――ん…………」」」」」」」

{	St("C",700, @0,@0,"buブーa_通常_sad");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/500301390buu">
「ええと……人、集めなきゃダメなんだよな」

{	St("C",700, @0,@0,"buブーa_通常_smile");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/500301400buu">
「ネットを使うってのはどうだ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/500301410skr">
「おお！　インターネットか！
　すげえ！　それだ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/500301420mzh">
「いんたあねっと？
　サイババア様の使ってたあれか？」

{	St("MR",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/500301430mzh">
「しかし……それでいったい、何ができるんじゃ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/500301440skr">
「写真とか、音楽とか、映像とか！
　色々あるんだよ、いろいろ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2257);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_フラット_happy");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/500301450mzh">
「いろいろあるのか？
　ケバブも食えるか！？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/500301460skr">
「食える！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/500301470nki">
「無理だろ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/500301480kms">
「で、インターネットで、なにができるというのです？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buブーa_通常_smile");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/500301490buu">
「ふふふふ……みんなッ！！」

{	St("C",700, @0,@0,"buブーa_通常_happy");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/500301500buu">
「これを見るんだッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆演出指定：Twitterとか2chとか。ブーの携帯
//おがみ：β要演出箇所：優先度Ａ　obj演出素材まち
//あきゅん「素材：objブーの携帯に表示される2ch」

//窓準備
	CreateWindow("絵窓", 1500, 0, 182, 1024, 212, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 1520, Center, Middle, "cg/obj/objIF背景_ブー.png");
	CreateTextureSP("絵窓/絵演背景DABE", 1510, Center, -1370, "cg/obj/objブーの携帯に表示される2ch.png");

	CreateTextureEX("絵背景枠01", 19200, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 19200, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");

//動作
	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 200, @0, 162, Dxl2, false);
	Move("絵背景枠02", 200, @0, 380, Dxl2, false);

	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	Move("絵窓/絵演立絵", 200, @-200, @0, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);

	WaitKey(1500);

	DABEclick("@絵窓/絵演背景DABE",20,1000);


//	Move("絵窓/絵演背景DABE", 16000, @0, 155, null, false);
	Fade("絵背景100", 1000, 1000, null, true);


	Fade("絵背景100", 500, 0, null, true);
	Delete("絵背景100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
{
//	St("MR",700, @0,@0,"bu歌門_通常_hard");
//	FadeSt("MR",200,true);
}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/500301510kms">
「……なんですか、コレは？」

{
//	DeleteAllSt(200,false);
//	St("ML",700, @0,@0,"buノーコb_通常_shock");
//	FadeSt("ML",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/500301520nko">
「わたし……？」

{
//	DeleteAllSt(200,false);
//	St("C",700, @0,@0,"buブーa_通常_shout");
//	FadeSt("C",200,true);
}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/500301530buu">
「そう！　ゆるキャラバンの放送のおかげで、今ネットはノーコの話題で持ちきりなんだッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	Move("絵背景枠01", 200, @0, 262, Dxl1, false);
	Move("絵背景枠02", 200, @0, 262, Dxl1, false);
	Zoom("絵窓", 200, 1000, 0, Dxl1, true);
	Fade("絵背景枠*", 100, 0, null, true);

	DABEclickStop();

	Delete("絵背景枠*");
	Delete("絵窓*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
{
//	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/500301540skr">
「うわ！　さっきの写真！？
　アタシが写ってる！？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500301550fje">
「秋葉原とネットは、親和性が高い……
　リアルタイムで目撃情報があってもおかしくないわ」

{	St("C",700, @0,@0,"bu恵那_一休_surprise");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500301560fje">
「あ……もしかしてさっきの太四郎さんも、その情報を基にスパコン館に……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/500301570nki">
「ってコレ！　オレの卒アルがうｐされてるし！！
　マズいだろッ！！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_shout");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/500301580buu">
「しかし！　ピンチはチャンス！！」

{	St("MR",700, @0,@0,"buブーa_通常_happy");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/500301590buu">
「この話題性を活かすことで、半田明神に人を呼び寄せることができれば……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_happy");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/500301600mso">
「さすがはブー！　天才だッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_normal");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/500301610buu">
「いやあ、それほどでも……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500301620fje">
「電車は動かなくなったけど、それって逆に考えれば、コミマ帰りのオタクが帰れなくなったってことか」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeStPro("C", 200, 1900);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500301630fje">
「もしかしたら――行ける？」

{	AgainSt("C",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/500301640kms">
「しかしもし秋葉原で一夜を明かすなら、それにふさわしいイベントが街で行われているのでは？」

{	St("C",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/500301650kms">
「確かに新年を初詣で祝う、という発想は一般的ですが、わざわざ彼らを呼んでこれるかどうか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

/*
//◆音声指示：同時
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/500301660skr">
「う――ん…………」

//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/500301670mso">
「う――ん…………」

//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/500301680buu">
「う――ん…………」

//◆音声指示：同時
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/500301690nki">
「う――ん…………」

//◆音声指示：同時
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/500301700nko">
「う――ん…………」

//◆音声指示：同時
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/500301710kms">
「う――ん…………」

//◆音声指示：同時
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/500301720mzh">
「う――ん…………」
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//◆音声指示：同時
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/500301660">
「「「「「「「う――ん…………」」」」」」」

{	St("C",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500301730fje">
「いやいや、雪山じゃないんだから、みんな、そんな静まりかえらないで――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_幽霊_think");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/500301740nko">
「ゆきやま？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500301750fje">
「雪って言うのは音を吸い込むから――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(150,true);

//おがみ：β要演出箇所：優先度Ａ　BGMとめる演出
//おがみ：間をおく　BGMとめる　マンプいれたい
	SetVolumeEX("@xbgm*", 1000, 0, null);
	SetVolumeEX("SE*", 1000, 0, null);

	Wait(800);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
{	St("C",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500301760fje">
「あ――雪、山――？」

{	CreateSE("SE01","se擬音_恵那閃く");

	SetComic(@-150,@-200,16);
	FadeComic();

	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",700, @0,@0,"bu恵那_一休_surprise");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500301770fje">
「雪山……そうか、雪！　雪よっ！！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/500301780skr">
「ん？　どした名探偵？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu恵那_通常_happy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500301790fje">
「――あは、あはははははははは！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	CreateSE("SE01","se環境_雷01");
	MusicStart("SE01",0,500,0,1000,null,false);
	SoundPlay("@xbgm08_onlyint",0,450,false);

	cutin_EX(2000,50,0,Dxl2,"cg/bu/bu恵那_ハルヒ_angry.png","cg/bg/bg0603200半田明神_境内_ペンキ.jpg");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500301800fje">
「みんな、よ――く聞きなさいッ！！
　たったひとつの冴えたやり方ッ！！」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/500301810fje">
「名探偵富士見恵那が――
　この難題を、一気に解決しちゃったのよッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	cutout_EX();

	SetVolumeEX("@xbgm*", 1000, 0, null);


	Wait(500);
//■再定義定型文
	PrintBG("上背景", 30000);
	CreateColorEXadd("上背景絵色100", 30100, "WHITE");

//◆場所：半田明神_境内_ペンキ
	OnBG(10,"bg0603200半田明神_境内_ペンキ");
	FadeBG(0,true);

	CreateTextureSP("回転用背景", 100, Center, 450, "cg/bg/bg0603200半田明神_境内_ペンキ.jpg");
	CreateColorSPmul("回転用背景100", 110, "BLACK");
	Move("回転用背景*", 0, @0, 450, null, true);
	Zoom("回転用背景*", 0, 1600, 1200, null, true);
	Rotate("回転用背景*", 0, @90, @0, @0, null,true);

	CreateSE("SE01","se擬音_ギャグ_逃げる");
	MusicStart("SE01",0,700,0,1200,null,false);

	ClockDelete(0,true);
	ClockTime(2257);

	Move("上背景*", 1000, @0, -400, AxlDxl, false);
	Zoom("上背景*", 1000, 2200, 1200, null, false);
	Rotate("上背景*", 1000, @-90, @0, @0, null,false);
	Fade("上背景絵色100", 1000, 500, null, false);
	Fade("回転用背景100", 1000, 0, Axl3, false);
	Rotate("回転用背景*", 1000, @-90, @0, @0, null,false);
	Move("回転用背景*", 1000, @0, 0, AxlDxl, false);
	Zoom("回転用背景*", 1000, 1000, 1000, null, true);

	Delete("回転用背景*");
	Delete("上背景*");

	CreatePlainSP("揺用", 2005);
	Shake("揺用", 1000, 5, 5, 0, 0, 1000, Dxl1, false);

	CreateSE("SE02","se銃_シリンダー装填");
	MusicStart("SE02",0,1200,0,1000,null,false);

	Fade("揺用", 500, 0, null, true);
	Delete("揺用");

	SetVolumeEX("SE*", 500, 0, null);
	Wait(500);



	EndScene();
}

