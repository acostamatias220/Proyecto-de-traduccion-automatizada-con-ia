
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene c2250沙紅羅_恵那_似鳥.nss_MAIN
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
	if($CharaName=="沙紅羅"||$CharaName=="似鳥"){
		$GameName="c2300沙紅羅_似鳥.nss";
	}else if($CharaName=="恵那"){
		$GameName="c2300恵那.nss";
	}
}

scene c2250沙紅羅_恵那_似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1690">
////////////header////////////
//file name "c2250沙紅羅_恵那_似鳥.nss"
//title "名探偵、惨状"
//previous "c2240沙紅羅_恵那_似鳥.nss"

////////////footer////////////
//next "沙紅羅" "c2300沙紅羅_似鳥.nss"
//next "恵那" "c2300恵那.nss"
//next "似鳥" "c2300沙紅羅_似鳥.nss"


////////////body////////////

//■再定義定型文

	PrintGO("上背景", 30000);

//事件定義
	KoreJikenSet();

	SoundPlay("@xbgm07", 0, 450, true);

	OnBG(10,"bg0603200半田明神_境内_ペンキ");
	FadeBG(0,true);

//あきゅん「修正指示：これは新年明け用です」
//★inc櫻井　c2240沙紅羅_恵那_似鳥と同じものに変更しました。

//	CreateSE("c2250ガヤ", "seガヤ_交通少_l");
//	MusicStart("c2250ガヤ", 2000, 350, 0, 1000, null,true);
//	SetVolume("@c2240ガヤ", 2000, 0, null);

//	St("C",700, @0,@0,"bu恵那_通常_sigh");
//	FadeSt("C",0,true);

	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",0,true);

	FadeDelete("上背景", 200, null, true);

	ClockPass(2250);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500200010skr">
「アンタ、自分を名探偵だって名乗っただろ？」

{	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/500200020nki">
「そういえば……そうだった！」

//★inc櫻井　話の中心が恵那になっているので恵那をセンターに

{	St("C",700, @0,@0,"bu恵那_哀愁_pinch");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200030fje">
「あ、いやいや。名探偵とは言うけれども――」

{	St("R",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c22/500200040kms">
「確かに恵那様は探偵を目指していることで有名ですね」

{	St("MR",700, @0,@0,"buミヅハ_手構え_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/500200050mzh">
「わらわが甘いものを食べたいのを、見事に見抜いた！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @-80,@0,"buみそa_オラオラ_pride");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @80, @0, Dxl3, false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【みそ】
<voice name="みそ" class="みそ" src="voice/c22/500200060mso">
「それだけじゃねぇ！　悪を許さぬ正義の心もある！」

{	St("MR",700, @80,@0,"buブーa_オラオラ_shout");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @-80, @0, Dxl3, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/c22/500200070buu">
「自分の危険を顧みない、勇気も！！」

{	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 200, 0, 10, 0, 0, 500, Dxl3, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200080fje">
「え……いや、あは、あはははは……ちょっと待って」

{	St("C",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200090fje">
「私は名探偵志望だけど、確かに今までも色んな事件を解決したけれど、ソレとコレとは話が――」

{	St("MR",700, @20,@0,"buミヅハ_通常_sigh");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @-20, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/500200100mzh">
「……違うのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu恵那_哀愁_pinch");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 200, 0, 10, 0, 0, 500, Dxl3, false);
	Move("@StNameC/C*", 200, @-30, @0, Dxl1, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200110fje">
「う……そ、そんな泣きそうな顔で見なくても……」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @50, @0, Axl3, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500200120skr">
「頼む名探偵！！」

{	St("ML",700, @-50,@50,"buみそa_オラオラ_pinch");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @50, @-50, Dxl3, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/c22/500200130mso">
「お願いします！！」


{	ClockPass(2251);}


{	St("MR",700, @50,@50,"buブーa_オラオラ_happy");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @-50, @-50, Dxl3, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/c22/500200140buu">
「いよっ！　名探偵！」

{	St("ML",700, @0,@0,"bu似鳥_通常_pinch");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @40, @0, Dxl3, false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/500200150nki">
「おまえだけが頼りなんだッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("R",700, @0,@0,"bu歌門_通常_think");
	DeleteAllSt(200,false);
	Move("@StNameR/R*", 200, @-40, @0, Dxl1, false);
	FadeSt("R",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c22/500200160kms">
「もしもなにか名案があれば――」

{	St("MR",700, @0,@0,"buミヅハ_通常_sad");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @-30, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/500200170mzh">
「助けてはくれぬか……！」

{	SetVolumeEX("@xbgm*", 2000, 0, null);
	St("C",700, @0,@0,"bu恵那_一休_shy");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 200, @0, @30, AxlDxl, false);
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 500, Dxl3, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200180fje">
「ふぅ……やれやれ……」

{	St("C",700, @0,@40,"bu恵那_一休_angry");
	Move("@StNameC/C*", 200, @0, @-40, Axl3, false);
	FadeSt("C",200,true);
	St("C",700, @0,@0,"bu恵那_一休_hard");
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 6900);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200190fje">
「そう、考えてみれば当然よ。
　元はといえば、私がまいた種――即ち！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//★立ち絵プロセス：再定義
	AgainSt("C",700, @0,@0,"bu恵那_一休_hard");

//	TextBoxDelete(150);
//	SetVolume("c2250ガヤ", 1000, 0, null);

//あきゅん「修正指示：ＢＧＭ不要」
//★inc櫻井　修正しました。
//※下倉注：ここはメインルートを踏襲して推理流させて下さい……

	KoreJikenStart();
	DeleteAllSt(0,true);
	SoundPlay("@xbgm08", 0, 450, true);

//	DeleteSt("C",0,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200200fje">
「コレは事件よ！！」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200210fje">
「解決は、名探偵富士見恵那に任せなさいッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：たくさんの拍手
	CreateSE("拍手", "se動作_拍手01_l");
	MusicStart("拍手", 0, 700, 0, 1000, null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//◆音声指示：同時
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500200220">
「おおおおお…………！！」

////◆音声指示：同時
////【みそ】
//<voice name="みそ" class="みそ" src="voice/c22/500200230mso">
//「おおおおお…………！！」
////◆音声指示：同時
////【ブー】
//<voice name="ブー" class="ブー" src="voice/c22/500200240buu">
//「おおおおお…………！！」
////◆音声指示：同時
////【似鳥戴斗】
//<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/500200250nki">
//「おおおおお…………！！」
////◆音声指示：同時
////【歌門星】
//<voice name="歌門星" class="歌門星" src="voice/c22/500200260kms">
//「おおおおお…………！！」
////◆音声指示：同時
////【ミヅハ】
//<voice name="ミヅハ" class="ミヅハ" src="voice/c22/500200270mzh">
//「おおおおお…………！！」

</PRE>
	SetText();
	AddText(1,"「おおおおお…………！！」","沙紅羅","c22/500200220skr",false,false,1000);
	AddText(2,"「おおおおお…………！！」","みそ","c22/500200230mso",false,false,1000);
	AddText(3,"「おおおおお…………！！」","ブー","c22/500200240buu",false,false,1000);
	AddText(4,"「おおおおお…………！！」","似鳥戴斗","c22/500200250nki",false,false,1000);
	AddText(5,"「おおおおお…………！！」","歌門星","c22/500200260kms",false,false,1000);
	AddText(6,"「おおおおお…………！！」","ミヅハ","c22/500200270mzh",false,false,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	KoreJikenEnd(true);

	Wait(300);

	SetVolume("拍手", 1000, 0, null);

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500200280skr">
「で！　なにか名案はあるのか！？」


{	St("C",700, @0,@0,"bu恵那_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200290fje">
「焦ってはだめよ！」

{	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200300fje">
「この事件は、色々な要素が複雑に絡み合っているわ！
　ひとつずつ、問題点を明らかにしていきましょう！」

{	St("C",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200310fje">
「まず最初に、私たちの目的は――？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2252);}

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buミヅハ_手構え_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/500200320mzh">
「アザナエルの呪いを解くこと！」

{	St("R",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c22/500200330kms">
「そして、ミヅハ様の元の力を取り戻して差し上げる」

{	DeleteAllSt(200,false);
	CreateSE("SETB", "se動作_歩く02_l");
	MusicStart("SETB", 0, 1000, 0, 700, null, true);

	CreateTextureEX("絵背景100", 50, -478, -198, "cg/bg/l/bg0603200半田明神_境内_ペンキ_l.jpg");
//	CreateTextureEX("絵背景100", 698, -478, -198, "cg/bg/l/bg0603200半田明神_境内_ペンキ_l.jpg");
	SetShade("絵背景100", HEAVY);
	St("C",19010, -81, -259,"fu恵那_一休_hard");

	Move("絵背景100", 15000, 0, @0, Dxl1, false);
	Move("@StNameC/C*", 15000, -355, @0, Dxl1, false);
	Fade("絵背景100", 200, 1000, null, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200340fje">
「そのためには、この神社に人々の『想い』を集めなければならない」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200350fje">
「でも、この状態じゃ初詣どころじゃないわよね」

{	SetVolume("SETB", 0, 0, null);
	SetShade("絵背景100", NULL);
	DeleteSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200360fje">
「屋根に張り付いたペンキ――
　石畳についた弾痕――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200370fje">
「コレをなんとかしないと」

{
//	CreateSE("c2250ガヤ", "seガヤ_交通少_l");
//	MusicStart("c2250ガヤ", 0, 350, 0, 1000, null,true);
	FadeDelete("絵背景100", 200, null, false);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500200380skr">
「ったく、しゃーねーな！
　時間がねぇけどきっちり大掃除するしか――」

{	St("MR",700, @0,@0,"buブーa_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/c22/500200390buu">
「それが……だめなんです」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500200400skr">
「だめ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buブーa_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ブー】
<voice name="ブー" class="ブー" src="voice/c22/500200410buu">
「さっき、みそが果敢にブラシ洗いチャレンジしたんですが――」

{	St("C",700, @0,@0,"buみそa_通常_cry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/c22/500200420mso">
「全然、取れませんでしたッ！！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500200430skr">
「全力でもか？」

{	St("C",700, @0,@0,"buみそa_通常_shout");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/c22/500200440mso">
「はい、全力でもです！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500200450skr">
「ぐ……そうか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2253);}

{	St("C",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200460fje">
「犯罪者用のペイントボール、簡単に色が取れたら困るもんね……」

{	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/500200470nki">
「いっそ、土砂降りでも降ってくれれば――」

{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/500200480mzh">
「やってみるか？」

{	St("ML",700, @0,@0,"buみそa_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/c22/500200490mso">
「へ？　やってみるって？」

{	St("MR",700, @0,@0,"buミヅハ_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/500200500mzh">
「わらわはミヅハノメ！
　つまり水の神様じゃぞ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2254);}

{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/500200510mzh">
「雨くらい、お茶の子さいさい屁の河童じゃ！！」

{	St("C",700, @0,@0,"bu恵那_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200520fje">
「あ……天気、変えられるんだ」

{	St("R",700, @0,@0,"buブーa_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/c22/500200530buu">
「確かに今日、天気全体的におかしかったよな……」

{	St("MR",700, @0,@0,"buミヅハ_通常_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/500200540mzh">
「まあ、なんというか……
　今日はわらわにも色々あったからのう」

{	St("C",700, @0,@0,"bu恵那_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200550fje">
「でもさっき、みそさんが全力で洗ったんでしょ？」

{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200560fje">
「それなのに、今さら雨ごときで取れるとは思えないわ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵演うーん300a", 10500, 1412, Middle, "cg/bu/buみそa_通常_hard.png");
	CreateTextureEX("絵演うーん300b", 10600, 1512, Middle, "cg/bu/bu沙紅羅_通常_sad.png");
	CreateTextureEX("絵演うーん300c", 10400, 2212, Middle, "cg/bu/buブーa_通常_sad.png");
	CreateTextureEX("絵演うーん300d", 10300, 2812, Middle, "cg/bu/bu似鳥_通常_sad.png");
	CreateTextureEX("絵演うーん300e", 10200, 3412, Middle, "cg/bu/buミヅハ_通常_think.png");
	CreateTextureEX("絵演うーん300f", 10100, 3612, Middle, "cg/bu/bu歌門_通常_pride.png");

	CreateTextureEX("絵演うーん300", 50, 512, Middle, "cg/bg/bg0603200半田明神_境内_ペンキ.jpg");
//	CreateTextureEX("絵演うーん300", 10000, 512, Middle, "cg/bg/bg0603200半田明神_境内_ペンキ.jpg");
	Zoom("絵演うーん300", 0, 2000, 2000, null, true);
	SetShade("絵演うーん300", HEAVY);

	Move("絵演うーん300a", 10000, -5512, @0, null, false);
	Move("絵演うーん300b", 10000, -4712, @0, null, false);
	Move("絵演うーん300c", 10000, -3912, @0, null, false);
	Move("絵演うーん300d", 10000, -3112, @0, null, false);
	Move("絵演うーん300e", 10000, -2312, @0, null, false);
	Move("絵演うーん300f", 10000, -1512, @0, null, false);

	Move("絵演うーん300", 8000, -312, @0, null, false);

	Fade("絵演うーん300a", 1500, 1000, null, false);
	Fade("絵演うーん300b", 1500, 1000, null, false);
	Fade("絵演うーん300c", 1500, 1000, null, false);
	Fade("絵演うーん300d", 1500, 1000, null, false);
	Fade("絵演うーん300e", 1500, 1000, null, false);
	Fade("絵演うーん300f", 1500, 1000, null, false);

	Fade("絵演うーん300", 1500, 1000, null, false);

//あきゅん「修正指示：下記全キャラ表示、流れるように右から左へスススススと」
//inc櫻井　修正。　流れるようにとのことなので気持ち早めです。
//　　　　　演出終わるまで待つと長くなってしまうので、WaitKeyコマンドをこのテキストボックスの下に配置しています。

{	DeleteSt("C",200,false);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//◆音声指示：同時
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500200570">
「「「「「「う――ん…………」」」」」」

//◆音声指示：同時
//【みそ】
//<voice name="みそ" class="みそ" src="voice/c22/500200580mso">
//「う――ん…………」

////◆音声指示：同時
////【ブー】
//<voice name="ブー" class="ブー" src="voice/c22/500200590buu">
//「う――ん…………」

////◆音声指示：同時
////【似鳥戴斗】
//<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/500200600nki">
//「う――ん…………」

////◆音声指示：同時
////【歌門星】
//<voice name="歌門星" class="歌門星" src="voice/c22/500200610kms">
//「う――ん…………」

////◆音声指示：同時
////【ミヅハ】
//<voice name="ミヅハ" class="ミヅハ" src="voice/c22/500200620mzh">
//「う――ん…………」

</PRE>
	SetText();
	AddText(1,"「う――ん…………」","沙紅羅","c22/500200570skr",false,false,1000);
	AddText(2,"「う――ん…………」","みそ","c22/500200580mso",false,false,1000);
	AddText(3,"「う――ん…………」","ブー","c22/500200590buu",false,false,1000);
	AddText(4,"「う――ん…………」","似鳥戴斗","c22/500200600nki",false,false,1000);
	AddText(5,"「う――ん…………」","歌門星","c22/500200610kms",false,false,1000);
	AddText(6,"「う――ん…………」","ミヅハ","c22/500200620mzh",false,false,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Position("絵演うーん300", $うーんX, $うーんY);
	if($うーんX==-312){
	Wait(500);
	}else{
	Wait(3000);
	}

//	FadeDelete("絵背景*",1000,null,true);
	Fade("絵演うーん300*", 1000, 0, null, true);

{	St("MR",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/500200630mzh">
「せめて、アザナエルが使えればのう……」

{	St("R",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c22/500200640kms">
「ミヅハ様。無茶をおっしゃってはなりません。
　ノーコがカゴメアソビを失敗し、もう弾はない」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c22/500200650kms">
「そもそもアザナエルを封じるためにアザナエルを使うなど、本末転倒ではありませんか」

{	St("MR",700, @0,@0,"buミヅハ_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/500200660mzh">
「わかっておる！
　そのくらい、わかっておるのじゃ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2255);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("MR",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/500200670mzh">
「じゃが……しかし……
　ならばどうすれば……」

{	St("C",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200680fje">
「でも、問題はそれだけじゃないわ」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500200690skr">
「他にもなんかあんのか？」

{	St("C",700, @0,@0,"bu恵那_通常_think");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200700fje">
「参拝客はどうやって来る？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//あきゅん「β演出：音声同期表情変化」
//★inc櫻井　専用コマンド適用箇所
//cono：「β演出：音声同期表情変化」対応

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("ML", 200, 3000);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/500200710nki">
「今日は終日運転してるから、電車で――あ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//★立ち絵プロセス：再定義
	AgainSt("ML",700, @0,@0,"bu似鳥_通常_shock");

	TextBoxDelete(150);

//★inc櫻井　高架下背景を回想で
//あきゅん「修正指示：テンポ悪いのでフラッシュバック的に切り替え」
//★inc櫻井　修正しました。
	CreateSE("SET00A", "se擬音_フラッシュバック");
	MusicStart("SET00A", 0, 700, 0, 1000, null, false);

	CreateColorSPadd("絵色白", 20000, WHITE);
	Wait(16);

	ClockDelete(0,true);

	CreateEffect("モノクロ", 14500, @0, @0, 1024, 576, "Monochrome");
	CreateTextureSP("高架下", 14000, Center, InBottom, "cg/bg/l/bg0102300秋葉原_ガード下_破壊_l.jpg");
	Move("高架下", 0, @200, @150, null, true);
//	DeleteSt("ML",200,false);
	Fade("絵色白", 300, 0, null, true);

	Wait(1200);

	CreatePlainSP("絵板写", 20000);
	FadeDelete("高架下", 0, null, false);
	FadeDelete("モノクロ", 0, null, true);

{	ClockPass(2255);}

	FadeDelete("絵板写", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/500200720nki">
「電車、止まってる……？」

{	St("C",700, @0,@0,"bu恵那_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200730fje">
「高架下、崩れたんだっけ？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500200740skr">
「ノーコのアレのせいだな」

{	St("C",700, @0,@0,"bu恵那_通常_think");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200750fje">
「ま、地下鉄は走ってるから致命傷にならないとは思うけど、普通に人が減っちゃうでしょうね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2256);}

{	St("R",700, @0,@0,"bu歌門_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("R",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c22/500200760kms">
「それは……困ります」

{	St("R",700, @0,@0,"bu歌門_通常_think");
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c22/500200770kms">
「例年よりも多く人が集まらねば……
　そのために、ソトカンダーの垂れ幕を用意したのです」

{	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/500200780nki">
「こうなっちゃ、『ソトカンダーってなに？』ってレベルだからな……」

{	St("C",700, @0,@0,"bu恵那_一休_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200790fje">
「これで問題は全て出そろったってわけ――」

{	DeleteAllSt(200,true);}
//◆音声指示：遠くからスピーカー越し
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c22/500200800fjr">
『もじゃ――――ッ！！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//★inc櫻井　間を作る。
//あきゅん「修正指示：なんか間が中途半端なのでキレが悪い、ここの間は無しで」
//★inc櫻井　削除しました。

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("C",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200810fje">
「ハァ……他にも、別の問題があった……」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500200820skr">
「ってかさ、さっきからなんなんだあの叫び声？」

{	St("C",700, @0,@0,"bu恵那_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200830fje">
「あれはなんていうか……ウチのお姉ちゃんで……」

{	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/500200840nki">
「おねーちゃん？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("C",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200850fje">
「ま、いいわ。ソレとコレとは関係ない！」

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200860fje">
「とにかく、アザナエルを浄化するため！」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200870fje">
「ミヅハちゃんを元通りにしてあげるため！」

{	Move("@StNameC/C*", 200, @40, @0, Dxl3, false);
//	DeleteAllSt(200,false);
	St("C",700, @40,@0,"bu恵那_ハルヒ_angry");
	Move("@StNameC/C*", 200, @-40, @0, Dxl3, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200880fje">
「これらの問題を、解決しなきゃならないって寸法ね！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500200890skr">
「なにか――名案があるのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	St("C",700, @0,@0,"bu恵那_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200900fje">
「ふふ、ふふふふふ……」

{	Move("@StNameC/C*", 200, @0, @40, Dxl3, false);
	DeleteAllSt(200,true);
	St("C",19010, @0,@40,"fu恵那_通常_smile");
	Move("@StNameC/C*", 200, @0, @-40, Dxl3, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200910fje">
「焦ることはないわッ！　まだ時間はあるッ！！」

{	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/500200920nki">
「思いついてない……」

{	St("C",700, @0,@60,"bu恵那_ハルヒ_angry");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 200, @0, @-60, Dxl3, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200930fje">
「うるさいわねっ！
　一人の頭じゃ、名案は思い浮かばないのよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220a]
{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500200940fje">
「みんなで考えましょうッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2257);}

{	DeleteAllSt(200,true);}

//あきゅん「修正指示：上記のうーん演出天丼」
//★inc櫻井　修正
//	CreateTextureEX("絵演うーん300a", 10500, 1412, Middle, "cg/bu/buみそa_通常_pinch.png");
//	CreateTextureEX("絵演うーん300b", 10600, 1512, Middle, "cg/bu/bu沙紅羅_通常_hard.png");
//	CreateTextureEX("絵演うーん300c", 10400, 2212, Middle, "cg/bu/buブーa_通常_hard.png");
//	CreateTextureEX("絵演うーん300d", 10300, 2812, Middle, "cg/bu/bu似鳥_通常_worry.png");
//	CreateTextureEX("絵演うーん300e", 10200, 3412, Middle, "cg/bu/buミヅハ_通常_think.png");
//	CreateTextureEX("絵演うーん300f", 10100, 3612, Middle, "cg/bu/bu歌門_通常_think.png");
	Move("絵演うーん300a", 0, 1412, @0, null, true);
	Move("絵演うーん300b", 0, 1512, @0, null, true);
	Move("絵演うーん300c", 0, 2212, @0, null, true);
	Move("絵演うーん300d", 0, 2812, @0, null, true);
	Move("絵演うーん300e", 0, 3412, @0, null, true);
	Move("絵演うーん300f", 0, 3612, @0, null, true);

//	CreateTextureEX("絵演うーん300", 100, 512, Middle, "cg/bg/bg0603200半田明神_境内_ペンキ.jpg");
//	CreateTextureEX("絵演うーん300", 10000, 512, Middle, "cg/bg/bg0603200半田明神_境内_ペンキ.jpg");
//	Zoom("絵演うーん300", 0, 2000, 2000, null, true);
//	SetShade("絵演うーん300", HEAVY);

	Move("絵演うーん300", 0, 512, @0, null, true);

	Wait(16);

	Move("絵演うーん300a", 10000, -5512, @0, null, false);
	Move("絵演うーん300b", 10000, -4712, @0, null, false);
	Move("絵演うーん300c", 10000, -3912, @0, null, false);
	Move("絵演うーん300d", 10000, -3112, @0, null, false);
	Move("絵演うーん300e", 10000, -2312, @0, null, false);
	Move("絵演うーん300f", 10000, -1512, @0, null, false);

	Move("絵演うーん300", 8000, -312, @0, null, false);

	Fade("絵演うーん300a", 1500, 1000, null, false);
	Fade("絵演うーん300b", 1500, 1000, null, false);
	Fade("絵演うーん300c", 1500, 1000, null, false);
	Fade("絵演うーん300d", 1500, 1000, null, false);
	Fade("絵演うーん300e", 1500, 1000, null, false);
	Fade("絵演うーん300f", 1500, 1000, null, false);

	Fade("絵演うーん300", 1500, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220b]
//◆音声指示：同時
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500200950">
「「「「「「う――ん…………」」」」」」

////◆音声指示：同時
////【みそ】
//<voice name="みそ" class="みそ" src="voice/c22/500200960mso">
//「う――ん…………」
////◆音声指示：同時
////【ブー】
//<voice name="ブー" class="ブー" src="voice/c22/500200970buu">
//「う――ん…………」
////◆音声指示：同時
////【似鳥戴斗】
//<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/500200980nki">
//「う――ん…………」
////◆音声指示：同時
////【歌門星】
//<voice name="歌門星" class="歌門星" src="voice/c22/500200990kms">
//「う――ん…………」
////◆音声指示：同時
////【ミヅハ】
//<voice name="ミヅハ" class="ミヅハ" src="voice/c22/500201000mzh">
//「う――ん…………」

</PRE>
	SetText();
	AddText(1,"「う――ん…………」","沙紅羅","c22/500200950skr",false,false,1000);
	AddText(2,"「う――ん…………」","みそ","c22/500200960mso",false,false,1000);
	AddText(3,"「う――ん…………」","ブー","c22/500200970buu",false,false,1000);
	AddText(4,"「う――ん…………」","似鳥戴斗","c22/500200980nki",false,false,1000);
	AddText(5,"「う――ん…………」","歌門星","c22/500200990kms",false,false,1000);
	AddText(6,"「う――ん…………」","ミヅハ","c22/500201000mzh",false,false,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Position("絵演うーん300", $うーんX, $うーんY);
	if($うーんX==-312){
	Wait(500);
	}else{
	Wait(3000);
	}

//	FadeDelete("絵背景*",1000,null,true);
	Fade("絵演うーん300*", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500201010skr">
「ああッ！　めんどくせー！　もうこうなったらよ！
　全部真っ黄色にすればいいんじゃね？」

{	St("R",700, @0,@40,"bu歌門_口覆い_fear");
	DeleteAllSt(200,false);
	FadeT("@StNameR/R*",0,0,200,0,-40,Dxl1,false);
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c22/500201020kms">
「全部――黄色に！？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500201030skr">
「そうそう！　木を隠して森隠さず！
　一部だけが黄色いから気になるんだって！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500201040skr">
「いっそ全部、パーッと塗りたくっちまえば――」

{	St("R",700, @-50,@0,"bu歌門_威圧_shout");
	DeleteAllSt(200,false);
	Move("@StNameR/R*", 200, @50, @0, Dxl3, false);
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c22/500201050kms">
「な、なにを罰当たりなことを！！
　ここは、御先祖様から代々受け継がれた……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/500201060nki">
「……ソトカンダーの垂れ幕、飾る気だったんだろ？」

{	St("R",700, @0,@0,"bu歌門_通常_shock");
	DeleteAllSt(200,false);
	Shake("@StNameR/R*", 200, 0, 15, 0, 0, 500, Dxl1, false);
	Move("@StNameR/R*", 200, @40, @0, Dxl1, false);
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c22/500201070kms">
「う……それは、そうですが……」

{	St("MR",700, @0,@0,"buミヅハ_通常_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/500201080mzh">
「権威に構ってる場合ではないかもしれんの」

{	St("R",700, @40,@0,"bu歌門_通常_shout");
	DeleteAllSt(200,false);
	Move("@StNameR/R*", 200, @-40, @0, Dxl3, false);
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c22/500201090kms">
「そんな！　しかし真っ黄色というのは、余りにも――」

{	St("ML",700, @0,@0,"buみそa_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/c22/500201100mso">
「いやそれ以前に、屋根をみんな塗りたくるにはペンキが足りねぇぞ」

{	St("MR",700, @0,@0,"buブーa_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/c22/500201110buu">
「だな。ま、鳥居くらいはなんとかなるかもしれねぇが」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//あきゅん「修正指示：ここら辺良い感じですね」

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateTextureEX("鳥居", 50, @0, @-100, "cg/bg/bg0602200半田明神_鳥居_ペンキ.jpg");
	Move("鳥居", 25000, @0, @-290, null, false);
////	DeleteSt("MR",0,true);
	Fade("鳥居", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500201120fje">
「鳥居は朱色のイメージが強いけれども、確たる決まり事があるワケじゃないわ」

{	ClockPass(2258);}

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500201130fje">
「石の鳥居やコンクリートの鳥居――
　白や黒の鳥居だってある」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500201140fje">
「全部黄色に塗っちゃえば、ソレはソレで――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//あきゅん「修正指示：アップする場所は屋根に、うーんまで時間たっぷりめに」
//★inc櫻井　修正
	CreateTextureEX("境内", 50, Center, Middle, "cg/bg/l/bg0603200半田明神_境内_ペンキ_l.jpg");
	Request("@境内", Smoothing);
	Zoom("境内", 15000, 1500, 1500, null, false);
	Move("境内", 15000, @0, @400, null, false);
	Fade("境内", 1000, 1000, null, true);
	Delete("鳥居");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c22/500201150kms">
「屋根瓦や、石畳はどうするのですか？」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c22/500201160kms">
「今からでは到底、交換など間に合いません」

//【みそ】
<voice name="みそ" class="みそ" src="voice/c22/500201170mso">
「塗料も、もうないし……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 20000);

//あきゅん「修正指示：天丼して下さい」
//★inc櫻井　修正
//	CreateTextureEX("絵演うーん300a", 10500, 1412, Middle, "cg/bu/buみそa_通常_hard.png");
//	CreateTextureEX("絵演うーん300b", 10600, 1512, Middle, "cg/bu/bu沙紅羅_通常_think.png");
//	CreateTextureEX("絵演うーん300c", 10400, 2212, Middle, "cg/bu/buブーa_通常_sad.png");
//	CreateTextureEX("絵演うーん300d", 10300, 2812, Middle, "cg/bu/bu似鳥_通常_sad.png");
//	CreateTextureEX("絵演うーん300e", 10200, 3412, Middle, "cg/bu/buミヅハ_通常_think.png");
//	CreateTextureEX("絵演うーん300f", 10100, 3612, Middle, "cg/bu/bu歌門_通常_think.png");
	Move("絵演うーん300a", 0, 1412, @0, null, true);
	Move("絵演うーん300b", 0, 1512, @0, null, true);
	Move("絵演うーん300c", 0, 2212, @0, null, true);
	Move("絵演うーん300d", 0, 2812, @0, null, true);
	Move("絵演うーん300e", 0, 3412, @0, null, true);
	Move("絵演うーん300f", 0, 3612, @0, null, true);

//	CreateTextureEX("絵演うーん300", 100, 512, Middle, "cg/bg/bg0603200半田明神_境内_ペンキ.jpg");
//	Zoom("絵演うーん300", 0, 2000, 2000, null, true);
//	SetShade("絵演うーん300", HEAVY);
	Move("絵演うーん300", 0, 512, @0, null, true);
	Wait(16);

	Fade("絵演うーん300a", 0, 1000, null, false);
	Fade("絵演うーん300b", 0, 1000, null, false);
	Fade("絵演うーん300c", 0, 1000, null, false);
	Fade("絵演うーん300d", 0, 1000, null, false);
	Fade("絵演うーん300e", 0, 1000, null, false);
	Fade("絵演うーん300f", 0, 1000, null, false);
	Fade("絵演うーん300", 0, 1000, null, true);

	Delete("境内*");
	FadeDelete("絵板写", 1500, null, false);

	Move("絵演うーん300a", 10000, -5512, @0, null, false);
	Move("絵演うーん300b", 10000, -4712, @0, null, false);
	Move("絵演うーん300c", 10000, -3912, @0, null, false);
	Move("絵演うーん300d", 10000, -3112, @0, null, false);
	Move("絵演うーん300e", 10000, -2312, @0, null, false);
	Move("絵演うーん300f", 10000, -1512, @0, null, false);

	Move("絵演うーん300", 8000, -312, @0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0264]
//◆音声指示：同時
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500201180">
「「「「「「う――ん…………」」」」」」

////◆音声指示：同時
////【みそ】
//<voice name="みそ" class="みそ" src="voice/c22/500201190mso">
//「う――ん…………」
////◆音声指示：同時
////【ブー】
//<voice name="ブー" class="ブー" src="voice/c22/500201200buu">
//「う――ん…………」
////◆音声指示：同時
////【似鳥戴斗】
//<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/500201210nki">
//「う――ん…………」
////◆音声指示：同時
////【歌門星】
//<voice name="歌門星" class="歌門星" src="voice/c22/500201220kms">
//「う――ん…………」
////◆音声指示：同時
////【ミヅハ】
//<voice name="ミヅハ" class="ミヅハ" src="voice/c22/500201230mzh">
//「う――ん…………」

</PRE>
	SetText();
	AddText(1,"「う――ん…………」","沙紅羅","c22/500201180skr",false,false,1000);
	AddText(2,"「う――ん…………」","みそ","c22/500201190mso",false,false,1000);
	AddText(3,"「う――ん…………」","ブー","c22/500201200buu",false,false,1000);
	AddText(4,"「う――ん…………」","似鳥戴斗","c22/500201210nki",false,false,1000);
	AddText(5,"「う――ん…………」","歌門星","c22/500201220kms",false,false,1000);
	AddText(6,"「う――ん…………」","ミヅハ","c22/500201230mzh",false,false,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Position("絵演うーん300", $うーんX, $うーんY);
	if($うーんX==-312){
	Wait(500);
	}else{
	Wait(3000);
	}

	Delete("境内");
//	FadeDelete("絵背景*",1000,null,true);
	Fade("絵演うーん300*", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
{	St("MR",700, @0,@0,"buブーa_通常_sad");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/c22/500201240buu">
「ええと……人、集めなきゃダメなんだよな」

{	St("MR",700, @0,@0,"buブーa_通常_smile");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/c22/500201250buu">
「それじゃ、ネットを使うってのはどうだ？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500201260skr">
「おお！　インターネットか！　すげえ！　それだ！」

{	St("MR",700, @0,@0,"buミヅハ_通常_surprise");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/500201270mzh">
「いんたあねっと？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500201280skr">
「おーよ！　写真とか、音楽とか、映像とか！
　色々あるんだよ、いろいろ！」

{	St("MR",700, @0,@0,"buミヅハ_フラット_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/500201290mzh">
「ケバブも食えるか！？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_rage");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500201300skr">
「食える！」

{	St("L",700, @0,@0,"bu似鳥_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/500201310nki">
「無理だろ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
{	St("R",700, @0,@0,"bu歌門_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c22/500201320kms">
「で、インターネットで、なにができるというのです？」

{	St("MR",700, @0,@0,"buブーa_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/c22/500201330buu">
「それは……まあ確かに……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	DeleteSt("C",200,false);

{	SetVolumeEX("@xbgm*", 7000, 0, null);
	DeleteAllSt(200,true);}

//あきゅん「修正指示：飽きてきたけど天丼続ける」
//★inc櫻井　修正
//	CreateTextureEX("絵演うーん300a", 10500, 1412, Middle, "cg/bu/buみそa_通常_hard.png");
//	CreateTextureEX("絵演うーん300b", 10600, 1512, Middle, "cg/bu/bu沙紅羅_通常_think.png");
//	CreateTextureEX("絵演うーん300c", 10400, 2212, Middle, "cg/bu/buブーa_通常_sad.png");
//	CreateTextureEX("絵演うーん300d", 10300, 2812, Middle, "cg/bu/bu似鳥_通常_sad.png");
//	CreateTextureEX("絵演うーん300e", 10200, 3412, Middle, "cg/bu/buミヅハ_通常_think.png");
//	CreateTextureEX("絵演うーん300f", 10100, 3612, Middle, "cg/bu/bu歌門_通常_think.png");
	Move("絵演うーん300a", 0, 1412, @0, null, true);
	Move("絵演うーん300b", 0, 1512, @0, null, true);
	Move("絵演うーん300c", 0, 2212, @0, null, true);
	Move("絵演うーん300d", 0, 2812, @0, null, true);
	Move("絵演うーん300e", 0, 3412, @0, null, true);
	Move("絵演うーん300f", 0, 3612, @0, null, true);

//	CreateTextureEX("絵演うーん300", 100, 512, Middle, "cg/bg/bg0603200半田明神_境内_ペンキ.jpg");
//	Zoom("絵演うーん300", 0, 2000, 2000, null, true);
//	SetShade("絵演うーん300", HEAVY);
	Move("絵演うーん300", 0, 512, @0, null, true);
	Wait(16);

	Move("絵演うーん300a", 10000, -5512, @0, null, false);
	Move("絵演うーん300b", 10000, -4712, @0, null, false);
	Move("絵演うーん300c", 10000, -3912, @0, null, false);
	Move("絵演うーん300d", 10000, -3112, @0, null, false);
	Move("絵演うーん300e", 10000, -2312, @0, null, false);
	Move("絵演うーん300f", 10000, -1512, @0, null, false);

	Move("絵演うーん300", 8000, -312, @0, null, false);

	Fade("絵演うーん300a", 1500, 1000, null, false);
	Fade("絵演うーん300b", 1500, 1000, null, false);
	Fade("絵演うーん300c", 1500, 1000, null, false);
	Fade("絵演うーん300d", 1500, 1000, null, false);
	Fade("絵演うーん300e", 1500, 1000, null, false);
	Fade("絵演うーん300f", 1500, 1000, null, false);

	Fade("絵演うーん300", 1500, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//◆音声指示：同時
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500201340">
「「「「「「う――ん…………」」」」」」

////◆音声指示：同時
////【みそ】
//<voice name="みそ" class="みそ" src="voice/c22/500201350mso">
//「う――ん…………」

////◆音声指示：同時
////【ブー】
//<voice name="ブー" class="ブー" src="voice/c22/500201360buu">
//「う――ん…………」

////◆音声指示：同時
////【似鳥戴斗】
//<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/500201370nki">
//「う――ん…………」

////◆音声指示：同時
////【歌門星】
//<voice name="歌門星" class="歌門星" src="voice/c22/500201380kms">
//「う――ん…………」

////◆音声指示：同時
////【ミヅハ】
//<voice name="ミヅハ" class="ミヅハ" src="voice/c22/500201390mzh">
//「う――ん…………」

</PRE>
	SetText();
	AddText(1,"「う――ん…………」","沙紅羅","c22/500201340skr",false,false,1000);
	AddText(2,"「う――ん…………」","みそ","c22/500201350mso",false,false,1000);
	AddText(3,"「う――ん…………」","ブー","c22/500201360buu",false,false,1000);
	AddText(4,"「う――ん…………」","似鳥戴斗","c22/500201370nki",false,false,1000);
	AddText(5,"「う――ん…………」","歌門星","c22/500201380kms",false,false,1000);
	AddText(6,"「う――ん…………」","ミヅハ","c22/500201390mzh",false,false,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Position("絵演うーん300", $うーんX, $うーんY);
	if($うーんX==-312){
	Wait(500);
	}else{
	Wait(3000);
	}

	FadeDelete("絵演うーん300*",1000,null,true);

{	ClockPass(2259);}

{	St("C",700, @0,@40,"bu恵那_一休_sigh");
	FadeT("@StNameC/C*",0,0,200,0,-40,Dxl1,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500201400fje">
「だめだ……何にも思いつかない……」

{	St("ML",700, @0,@0,"bu似鳥_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/500201410nki">
「そんな、名探偵……！」

{	St("C",700, @0,@0,"bu恵那_ハルヒ_shout");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500201420fje">
「あなただって、わかるでしょ！」

{	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500201430fje">
「私だって、どうにかしたいけど……こんな短時間で、小説みたいなすごいアイディア閃くわけないじゃない！」

{	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/500201440nki">
「そ……それは、そうだろうけど……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteAllSt(200,false);
	CreateSE("SE", "se日常_布はたく");
	MusicStart("SE", 0, 400, 0, 800, null,false);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_think");
	Shake("@StNameML/ML*", 1000, 3, 2, 0, 0, 300, Axl1, false);
	FadeSt("ML",200,false);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500201450skr">
「ううううううううう…………」

{	St("L",700, @-40,@0,"buみそa_オラオラ_shock");
	DeleteAllSt(200,false);
	Move("@StNameL/L*", 200, @40, @0, Dxl3, false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/c22/500201460mso">
「あ、姐さん！？」

{	St("MR",700, @40,@0,"buブーa_オラオラ_pinch");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @-40, @0, Dxl3, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/c22/500201470buu">
「頭から湯気が！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_rage");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 200, 0, 35, 0, 0, 500, Dxl3, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500201480skr">
「ああああああッ！！　ダメだアアアアッ！！」

{	Move("@StNameML/ML*", 200, @0, @60, AxlDxl, false);
	DeleteAllSt(200,false);
	CreateSE("SE01","se人体_倒れる04");
	MusicStart("SE01",0,700,0,1000,null,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500201490skr">
「あ、アタシの脳みそがオーバーオールしちまう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu恵那_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/500201500fje">
「オーバーオール……？」

{	St("MR",700, @0,@0,"buミヅハ_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/500201510mzh">
「だ、大丈夫か？　無理はいかんぞ！
　自分にできる範囲で、やればいいのじゃ」

{	St("ML",700, @0,@60,"bu沙紅羅_通常_shy");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @0, @-60, Dxl1, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500201520skr">
「あ……アタシに、できる範囲？」

//あきゅん「修正指示：ここでは閃き漫符」
//★inc櫻井　修正
{
//	SetVolume("c2250ガヤ", 1000, 0, null);
	SoundPlay("@xbgm07", 0, 450, true);
	CreateSE("SE01","se擬音_ギャグ_キラーン01");
	MusicStart("SE01",0,650,0,1000,null,false);
	SetComic(@-250,@-250,16);
	FadeComic();
	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500201530skr">
「あ！　あ！　ああああああああああああ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteComic();
	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500201540skr">
「そうかっ！　そうかっ！　そうだよなっ！！
　アタシにできることをやればいいんだ……」

{	St("MR",700, @0,@0,"buミヅハ_手構え_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c22/500201550mzh">
「なにか、解決策が……？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500201560skr">
「ああ、わかったぜ」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500201570skr">
「昔の人は言いました――恥の上塗りと！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("L",700, @0,@0,"bu似鳥_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("L",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/500201580nki">
「恥の……？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500201590skr">
「このペンキが恥に見えるなら！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500201600skr">
「更にデカい大恥で、塗り潰しちまえばいいんだッ！！」

{	St("R",700, @0,@0,"bu歌門_通常_shock");
	DeleteAllSt(200,false);
	Shake("@StNameR/R*", 200, 0, 15, 0, 0, 500, Dxl3, false);
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c22/500201610kms">
「は？　なにを馬鹿なことを――」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500201620skr">
「おまえにも、協力してもらうからな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500201630skr">
「テーマはズバリッ！」

{	Move("@StNameML/ML*", 200, @0, @50, Dxl3, false);
	DeleteAllSt(200,true);
	St("C",19010, @0,@50,"fu沙紅羅_通常_rage");
	CreateSE("SE05","se擬音_ギャグ_じゃじゃーん");
	MusicStart("SE05",0,700,0,1000,null,false);
	Move("@StNameC/C*", 200, @0, @-50, Dxl3, false);
	Shake("@StNameC/C*", 1000, 12, 0, 0, 0, 500, Dxl1, false);
	FadeSt("C",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/500201640skr">
「半田明神改！
　<RUBY text="アキハバラ">厭覇薔薇</RUBY>バージョンだアアッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：拍手
//あきゅん「修正指示：音入れる」
//★inc櫻井　修正

{	CreateSE("拍手", "se動作_拍手01_l");
	MusicStart("拍手", 0, 700, 0, 1000, null,false);}

//あきゅん「β演出：みそぶーと他のセリフを２行並行表示マクロ使用する」
//★inc櫻井　質問中
//◆音声指示：同時
{	St("L",700, @0,@0,"buみそa_通常_happy");
	St("R",700, @0,@0,"buブーa_通常_happy");
	DeleteAllSt(200,false);
	FadeAllSt(200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0361]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/c22/500201650mso">
「おおおおおおおおおおおおおお！！」
{WaitAddText();}<BR>

////◆音声指示：同時
////【ブー】
//<voice name="ブー" class="ブー" src="voice/c22/500201660buu">
//「おおおおおおおおおおおおおお！！」

</PRE>
	SetText();
	AddText(1,"「おおおおおおおおおおおおおお！！」","みそ","c22/500201650mso",false,false,1000);
	AddText(2,"「おおおおおおおおおおおおおお！！」","ブー","c22/500201660buu",true,true,1300);
	TypeBeginD();//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);

////	DeleteSt("L",200,false);
////	DeleteSt("R",200,true);

	CreatePlainSP("絵板写", 5000);

	St("MR",710, @30,@50,"bu恵那_ハルヒ_sigh");
	St("ML",710, @10,@100,"buミヅハ_フラット_shock");
	SetVertex("@StNameMR/MR*", center, bottom);
	SetVertex("@StNameML/ML*", center, bottom);
	Request("@M*", Smoothing);
	Zoom("@M*", 0, 930, 930, null, true);

	St("L",700, @-110,@-50,"bu似鳥_通常_worry");
	St("R",700, @100,@-10,"bu歌門_通常_shock");

	FadeAllSt(0,true);
	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//◆音声指示：同時
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/500201670">
「「「「ええええええええ………………？？」」」」

////◆音声指示：同時
////【歌門星】
//<voice name="歌門星" class="歌門星" src="voice/c22/500201680kms">
//「ええええええええ………………？？」

////◆音声指示：同時
////【ミヅハ】
//<voice name="ミヅハ" class="ミヅハ" src="voice/c22/500201690mzh">
//「ええええええええ………………？？」

////◆音声指示：同時
////【恵那】
//<voice name="ミヅハ" class="ミヅハ" src="voice/c22/500201700fje">
//「ええええええええ………………？？」

</PRE>
	SetText();
	AddText(1,"「ええええええええ………………？？」","似鳥戴斗","c22/500201670nki",false,false,1000);
	AddText(2,"「ええええええええ………………？？」","歌門星","c22/500201680kms",false,false,1000);
	AddText(3,"「ええええええええ………………？？」","ミヅハ","c22/500201690mzh",false,false,1000);
	AddText(4,"「ええええええええ………………？？」","恵那","c22/500201700fje",false,false,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	SetVolume("@xbgm*", 1500, 0, null);
	SetVolume("拍手", 1000, 0, null);

	if($CharaName=="恵那"){
	SetVolumeEX("@xbgm*", 2000, 0, null);
	}else{}

	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

	EndScene();
}
