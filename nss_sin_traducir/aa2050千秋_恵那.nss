
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene aa2050千秋_恵那.nss_MAIN
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
//	$GameName = "";
//	$GameCircle=false;

	//★徒歩：フラグ修正
	if($CharaName=="千秋"){
		if(Substr($myRoute,0,2)=="ab"){
			$GameName="ab2100千秋_恵那.nss";//繋ぎ確認済
		}else{
			$GameName="aa2100千秋_フウリ.nss";//繋ぎ確認済
		}
	}else{
		if(Substr($myRoute,0,2)=="ab"){
			$GameName="ab2100千秋_恵那.nss";//繋ぎ確認済
		}else{
			$GameName="aa2100恵那.nss";//繋ぎ確認済
		}
	}

}

scene aa2050千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1420">
////////////header////////////
//file name "aa2050千秋_恵那.nss"
//title "容疑者大追跡"
//previous "a2040千秋.nss"
//previous "2040恵那.nss"

////////////footer////////////
//next "千秋" （"flkagome1" = true） "ab2100千秋_恵那.nss"
//next "千秋" "aa2100千秋_フウリ.nss"
//next "恵那" （"flkagome1" = true） "ab2100千秋_恵那.nss"
//next "恵那" "aa2100恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//事件定義
	KoreJikenSet();


	if($LFlag_NowFile == "2040恵那.nss"){

	SetVolumeEX("@xbgm*", 500, 0, null);
	CreateColorSP("絵色黒", 5000, "#000000");
	DrawDelete("@上背景", 250, 50, null, "circle_02_00_0", true);

	OnBG(10,"bg0501300スーパーノヴァ_正面_ガラス補修");
	FadeBG(0,true);

	DrawDelete("絵色黒", 250, 50, null, "circle_02_00_1", true);


	}else if($LFlag_NowFile == "a2040千秋.nss"){

	OnBG(10,"bg0501300スーパーノヴァ_正面_ガラス補修");
	FadeBG(0,true);
	St("ML",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("ML",0,true);
	FadeDelete("上背景", 0, null, true);

	}else{

	OnBG(10,"bg0501300スーパーノヴァ_正面_ガラス補修");
	FadeBG(0,true);
	St("ML",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("ML",0,true);
	FadeDelete("上背景", 0, null, true);

	}

{	ClockPass(2050);}

/*
//◆場所：スーパーノヴァ_正面
	OnBG(10,"bg0501300スーパーノヴァ_正面_ガラス補修");
	FadeBG(0,true);
	St("ML",700, @0,@0,"bu千秋_通常_pain");
	FadeSt("ML",0,true);
	FadeDelete("上背景", 0, null, true);
*/

	SoundPlay("@xbgm03",0,450,true);

	St("ML",700, @0,@0,"bu千秋_通常_pinch");
	Shake("@StNameML/ML*", 500, 6, 0, 0, 0, 1000, Dxl2, false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa20/500200010kit">
「ち、ちくしょうッ！　この――裏切り者！」

// メモ：前のファイルの流れから、ユージローは b？
// a2040千秋.nss（この時点でb) -> aa2050_千秋_恵那 -> aa2100恵那 (ここまで外す機会なしかと思われる）

{	WaitAction("@StNameML/ML*", null);
	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buユージローa_通常_ero");
	Shake("@StNameC/C*", 200, 0, 8, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/aa20/500200020ujr">
「わうわうわうわう！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu平次_通常_pain");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aa20/500200030fjh">
「だ、大丈夫か嬢ちゃんッ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa20/500200040kit">
「いいから、あのふたりを――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu平次_通常_shout");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aa20/500200050fjh">
「バッキャロー！　そういうわけにはいかねぇだろ！
　ウチの犬が、なんてことを――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_smile");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa20/500200060mso">
「はっはー！　ざまあみろ！」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_smile");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa20/500200070buu">
「よくやった、犬！　褒めて――」

{
	DeleteAllSt(200,false);
	SetVolumeEX("@xbgm*", 1500, 0, null);
	St("C",700, @0,@0,"bu恵那_通常_pride");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500200080fje">
「ユージローって言うのよ。犬の名前」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa20/500200090buu">
「むむ！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_hard");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa20/500200100mso">
「なんだぁ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2051);}

	DeleteAllSt(200,true);
//	TextBoxDelete(150);

	CreateAXLWindowEX("中恵那", "X",1500, 256,512, false);
	WindowAXLZoom("中恵那", "X",0, 0, null, true);
	CreateTextureSP("中恵那/絵背景", 1400, 0, Middle, "cg/bg/bg0501300スーパーノヴァ_正面_ガラス補修.jpg");
	SetShade("中恵那/絵背景", HEAVY);
	Zoom("中恵那/絵背景", 0, 2000, 2000, null, true);

	CreateTexture("中恵那/恵那", 1410, @0, InBottom, "cg/bu/bu恵那_ハルヒ_shout.png");
	SetAlias("中恵那/恵那","中恵那/恵那");
	Move("中恵那/恵那", 0, 256, @96, null, true);
	WindowAXLZoom("中恵那", "X",300, 1000, Dxl2, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030a]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500200110fje">
「ユージロー、『まて』！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	WindowAXLZoom("中恵那", "X",300, 0, Dxl2, true);
//	Zoom("中恵那", 300, 0, 1000, Dxl2, false);
//	Fade("中恵那/絵背景", 200, 0, Dxl2, false);
//	Fade("中恵那/恵那", 200, 0, Dxl2, false);
	Delete("@中恵那*");

	CreateSE("SE01","se擬音_ギャグ_ぴょこ");
	St("C",700, @-30,@0,"buユージローa_通常_normal");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameC/C*", 300, @30, @60, DxlAuto, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030b]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/aa20/500200120ujr">
「わう？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500200130fje">
「アッキーちゃんは私の友人よ。
　噛みついたりしないの」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buユージローa_通常_sad");
	FadeSt("ML",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/aa20/500200140ujr">
「わ、わう……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500200150fje">
「アッキーちゃん、大丈夫？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa20/500200160kit">
「つ……捕まえてくれ！
　そのふたりが……犯人だ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500200170fje">
「犯人って……？」

{
	DeleteAllSt(200,false);
	SoundPlay("@xbgm08_noint",0,450,true);
	St("ML",700, @0,@0,"bu千秋_通常_think");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa20/500200180kit">
「誰も出入りしていなかったはずのバックギャモン――」

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa20/500200190kit">
「インド人により監視されていたその部屋から、ひょっこりふたりが現れた」

{	St("ML",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa20/500200200kit">
「即ち、バックギャモンは密室状態！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa20/500200210kit">
「そこから現れたおまえたちが、殺人犯ってことだッ！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa20/500200220mso">
「いや、だから誤解だって！
　オレたち誰も殺してなんて――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500200230fje">
「そう……やっぱりそっちのアフロが、アザナエルを持ってたんだ」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_pride");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa20/500200240buu">
「ふふふふ……」

{	St("R",700, @0,@0,"buブーa_通常_shout");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa20/500200250buu">
「おまえもこの緑のアフロの虜だな……ッ！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500200260fje">
「――許さない！」

{	St("C",700, @0,@0,"bu恵那_ハルヒ_shock");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500200270fje">
「大人しく、お縄に――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2052);}


	TextBoxDelete(150);

//◆ＳＥ：矢突き刺さる

	SetVolumeEX("@xbgm*", 1500, 0, null);
//	CreateSE("SE01","se戦闘_弓矢_刺さる01");
//	MusicStart("SE01",0,700,0,1000,null,false);
//	Shake("@OnBG*", 300, 0, 10, 0, 0, 500, null, false);

	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/ef破魔矢飛来a.jpg");
//	Rotate("絵背景100", 0, @0, 180, @0, null,true);

	Zoom("絵背景100", 0, 1500, 1500, null, true);
	SetBlur("絵背景100", true, 3, 500, 50, false);

	CreateSE("SE01","se戦闘_弓矢_矢放つ");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("絵背景100", 300, 1000, 1000, Dxl1, false);

	Fade("絵背景100", 300, 1000, Dxl1, true);

	Delete("絵マスク/絵*");
	Delete("絵マスク");

	CreateSE("SE02","se戦闘_弓矢_刺さる01");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",300,1000,null,true);

	Delete("絵背景100");
	Delete("絵背景101");
	DeleteAllSt(0,true);

	Fade("フラッシュ白",200,0,null,true);
	Delete("フラッシュ白");

{	St("R",700, @0,@0,"buブーa_通常_shock");
	FadeSt("R",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa20/500200280buu">
「ひぇっ！　これ――矢！？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@-50,"bu歌門_威圧_angry");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/aa20/500200290kms">
「縄なんて生ぬるいわ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＥＶ："ev/ev0000歌門破魔弓.txt"
	CreateSE("SE01","se戦闘_弓矢_弓しなる");
	CreateTextureEX("イベント1", 10000, -1024, -430, "cg/ev/l/ev0000歌門破魔弓_l.jpg");

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("イベント1", 500, 1000, null, false);
	$SETime = RemainTime("SE01");
	Move("イベント1",$SETime,-550,@0,null,true);
	DeleteAllSt(0,true);

	SoundPlay("@xbgm22",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0074]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/aa20/500200300kms">
「穴くらい開けてしまいましょう」

//【ブー】
<voice name="ブー" class="ブー" src="voice/aa20/500200310buu">
「ちょ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("イベント1", 500, 0, null, true);
	Delete("イベント1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("L",700, @0,@0,"buみそa_通常_fear");
	FadeSt("L",200,true);
	Shake("@StNameL/L*", 300, 0, 10, 0, 0, 500, null, false);
	}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa20/500200320mso">
「えええええええ！？」

{
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa20/500200330kit">
「星さん！」

{
	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu歌門_威圧_shout");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/aa20/500200340kms">
「それが嫌なら、ミヅハ様の居場所を教えなさい！」

{
	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu平次_通常_normal");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aa20/500200350fjh">
「おうそうだ、思い出した！
　ミヅハなら半田明神にいるぞ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2053);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/aa20/500200360kms">
「え……平次様？」

{	St("C",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/aa20/500200370kms">
「それは、確かな情報ですか？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu平次_通常_normal");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aa20/500200380fjh">
「おう！　オレがさっき、送ってきたばっかりだ。
　ところがおまえがいないもんだから……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu歌門_通常_pinch");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/aa20/500200390kms">
「くぅっ！　灯台もと暗しとはまさにこのこと――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("C",700, @0,@0,"bu歌門_威圧_angry");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/aa20/500200400kms">
「ふたり組よ、憶えておきなさい！」

{	St("C",700, @0,@0,"bu歌門_威圧_shout");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/aa20/500200410kms">
「次回会ったときは、この借り、きちんと返させていただきますからね！」

//◆ＳＥ：走り去るＳＥ
{
	SetVolumeEX("@xbgm*", 1500, 0, null);
	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("@SE01*", 1500, 0, null);
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	DeleteSt("C",200,true);
}


{
	St("L",700, @0,@0,"buみそa_通常_sad");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa20/500200420mso">
「な……なんだったんだ？」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_sad");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa20/500200430buu">
「わ、わかんねぇ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{
	DeleteAllSt(200,false);
	SoundPlay("@xbgm03",0,450,true);
	St("L",700, @0,@0,"buみそa_通常_hard");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa20/500200440mso">
「って、そんなことしてる場合じゃねぇし！
　逃げるぞブー！」

{	CreateSE("SE01","se擬音_ギャグ_逃げる");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameL/L*", 300, @1200, @0, Dxl2, false);
	DeleteSt("L",200,true);
	St("R",700, @0,@0,"buブーa_通常_shout");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa20/500200450buu">
「おうよ！」


{	CreateSE("SE02","se擬音_ギャグ_逃げる");
	MusicStart("SE02",0,700,0,1000,null,false);
	Move("@StNameR/R*", 300, @-1200, @0, Dxl2, false);
	DeleteSt("R",200,true);
	St("MR",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500200460fje">
「ユージロー、追うわよ！」

{	CreateSE("SE03","se動作_走る05_l");
	MusicStart("SE03",0,700,0,1000,null,true);
	Move("@StNameMR/MR*", 300, @50, @0, Dxl2, false);
	DeleteSt("MR",200,true);
	St("C",700, @0,@0,"buユージローa_通常_pride");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/aa20/500200470ujr">
「わ……わう！」

{	SetVolumeEX("SE03", 3000, 0, null);
	CreateSE("SE04","se動物_イヌ_走る_l");
	MusicStart("SE04",0,700,0,1000,null,true);
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	DeleteSt("C",200,true);
	St("ML",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa20/500200480kit">
「ちょっと待て！　オレも行く！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE04", 3000, 0, null);
	CreateSE("SE05","se動作_走る02_l");
	MusicStart("SE05",0,700,0,1000,null,true);
	Move("@StNameML/ML*", 300, @50, @0, Dxl2, false);
	DeleteSt("ML",200,true);

	TextBoxDelete(150);


{	ClockPass(2054);}

//◆場所：秋葉原_中央通り
	SetVolumeEX("SE*", 1000, 0, null);
	SceneOut(5000, 300, "slide_01_01_0");

	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);
	DeleteAllSt(0,true);

	CreateSE("SEL01","se動作_集団走る");
	MusicStart("SEL01",0,1100,0,1000,null,true);
	SceneIn(300, "slide_01_01_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]

{	St("L",700, @-50,@0,"buみそa_通常_pinch");
	Move("@StNameL/L*", 300, @50, @0, Dxl2, false);
	FadeSt("L",200,true);
	}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa20/500200490mso">
「クソッ！　今来た道を後戻りか！」

{
	DeleteAllSt(200,false);
	St("R",700, @-50,@0,"buブーa_通常_shout");
	Move("@StNameR/R*", 300, @50, @0, Dxl2, false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa20/500200500buu">
「みそ！　人ごみに紛れよう！　駅だ！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_smile");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa20/500200510mso">
「さすがはブー！　賢いな！」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_smile");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa20/500200520buu">
「へっへっへ、それほどでも――
　ってやってる場合じゃねぇ！」

{
	St("R",700, @0,@0,"buブーa_通常_shout");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa20/500200530buu">
「急ぐぞ！」

{	Move("@StNameR/R*", 300, @50, @0, Dxl2, false);
	DeleteSt("R",200,true);
	St("L",700, @0,@0,"buみそa_通常_shout");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa20/500200540mso">
「おうよ！」

{	CreateSE("SEDOG","se動物_イヌ_走る_l");
	MusicStart("SEDOG",500,800,0,1000,null,true);
	Move("@StNameL/L*", 300, @50, @0, Dxl2, false);
	DeleteSt("L",200,true);
	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500200550fje">
「まずい！　駅に逃げ込まれたら厄介――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500200560fje">
「誰か、そいつらを捕まえてください！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa20/500200570kit">
「あれ？　オヤジさんは？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500200580fje">
「知らないわよ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa20/500200590kit">
「クソッ！　この一番大変なときに――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);
	CreateTextureEX("絵背景100", 11, Center, @-200, "cg/bg/m/bg0103111秋葉原_中央通り_通常_m.jpg");

//	Move("絵背景100", 0, @0, @-200, null, true);
	Fade("絵背景100", 200, 1000, null, true);

	FadeBG(200,true);

	SetVolumeEX("SE*", 600, 0, null);

	CreateSE("SEX01","se擬音_ギャグ_ドーン");
	St("C",700, @-50,@0,"bu平次_御用だ_happy");

	MusicStart("SEX01",0,700,0,1000,null,false);
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aa20/500200600fjh">
「オレを呼んだか？」

　駅方面へと逃げ込もうとしたみそブー。

　その前に、十手を構えた富士見平次が立ちはだかった。

{
	DeleteAllSt(200,false);
	Fade("絵背景100", 200, 0, null, true);
	St("ML",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa20/500200610kit">
「回り道……してたのか」

{	DeleteAllSt(200,false);
	Fade("絵背景100", 200, 1000, null, true);
	St("L",700, @0,@0,"buみそa_通常_angry");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa20/500200620mso">
「くそっ！　退けてめぇ！」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_shout");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa20/500200630buu">
「邪魔する奴は、容赦しねぇぞ！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu平次_御用だ_angry");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aa20/500200640fjh">
「そいつはこっちのセリフだぜ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2055);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aa20/500200650fjh">
「なにをやったかは知らねぇが、お嬢さんを困らせる悪党共を、黙って見過ごすわけにはいかねぇなあ！」

{	St("C",700, @0,@0,"bu平次_御用だ_shout");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aa20/500200660fjh">
「さあ、大人しくお縄につけいっ！」


{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_angry");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa20/500200670buu">
「やなこった！　行け、みそ！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_オラオラ_pride");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa20/500200680mso">
「おうよ！　任せとけ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//窓準備

	CreateAXLWindowEX("絵窓", "Y", 1600, 96, 384, false);
	SetAlias("絵窓","絵窓");
	WindowAXLZoom("絵窓", "Y", 0, 1000, null, true);
	CreateColorSP("絵窓/絵演色", 1510, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
//	CreateColorSP("絵窓/絵演背景", 1520, "#FFFFFF");


//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1530, center, middle, "cg/bu/buみそa_通常_angry.png");
	Move("絵窓/絵演立絵", 0, @0, @200, null, true);
	Request("絵窓/絵演立絵2", Smoothing);

//動作
	WindowAXLZoom("絵窓", "Y", 200, 1000, Dxl2, false);
	Move("絵窓/絵演立絵*", 200, @0, @-100, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);

	Shake("絵窓/絵演立絵", 1000, 0, 10, 0, 0, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161a]
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa20/500200690mso">
「どりゃあああああああ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
{
	WindowAXLZoom("絵窓", "Y", 200, 0, Axl2, true);
	Delete("絵窓*");

	St("C",700, @0,@0,"bu平次_御用だ_shout");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161b]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aa20/500200700fjh">
「せいっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：十手一閃
	DeleteSt("C",50,false);
	CreateSE("SE01","se戦闘_風切り音03");
	CreateSE("SE02","se戦闘_金属衝突01");
	Wait(16);
	MusicStart("SE01",0,1400,0,1000,null,false);
	CreateColorSP("絵色白", 710, "#FFFFFF");
	Wait(50);
	MusicStart("SE02",0,700,0,1000,null,false);
	FadeDelete("絵色白", 600, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]


{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"buみそa_通常_fear");
	Shake("@StNameC/C*", 200, 8, 0, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa20/500200710mso">
「な……なんだと……ぐふっ！」

{	Move("@StNameC/C*", 300, @0, @100, Dxl2, false);
	DeleteSt("C",200,true);
	CreateSE("SE01","se人体_倒れる02");
	MusicStart("SE01",0,700,0,1000,null,false);
	WaitPlay("SE01",null);

	St("R",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa20/500200720buu">
「そんな、みその『侠は折れず、曲がらず』の根性焼きが捺されたスーパーリーゼントが打ち負けるなんて……！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu平次_御用だ_angry");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aa20/500200730fjh">
「御先祖様から伝わる、富士見式捕縛術！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2056);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	St("C",700, @0,@0,"bu平次_御用だ_happy");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aa20/500200740fjh">
「てめえらのようなチンピラをカタすくらい、朝飯前のコンコンチキだ！　がははははははは！」

{	DeleteAllSt(200,false);
	Fade("絵背景100", 200, 0, null, true);
	St("ML",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa20/500200750kit">
「おまえのオヤジさん、見た目に寄らず強いんだ……！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500200760fje">
「その見た目がヤバすぎるんだって！」

{
	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500200770fje">
「なのに父さん、ちっちゃいころからずっと、私にアレを教え込もうってカッコ悪いポーズを――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu平次_通常_angry");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aa20/500200780fjh">
「か、カッコ悪いとはなんでぇ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("C",700, @0,@0,"bu平次_御用だ_happy");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aa20/500200790fjh">
「ほーら！　輝く十手！　煌めく寛永通宝！
　コイツをこうやって、悪党に――！！」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aa20/500200800fjh">
「悪党に――」

{	St("C",700, @0,@0,"bu平次_御用だ_pain");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aa20/500200810fjh">
「あくとう……は、どこだ？」

{	St("C",700, @0,@0,"bu平次_通常_shock");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aa20/500200820fjh">
「あれ？　いない？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa20/500200830kit">
「あっちだ！」

{	DeleteAllSt(200,false);
	Fade("絵背景100", 200, 1000, null, true);
	St("R",700, @0,@0,"buブーa_通常_shock");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa20/500200840buu">
「げ！　見つかった！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_shout");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa20/500200850mso">
「全力ダッシュで逃げろ！」

{	DeleteAllSt(200,false);
	Fade("絵背景100", 200, 0, null, true);
	St("MR",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500200860fje">
「待ちなさいッ！！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu平次_落ち込み_shock");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aa20/500200870fjh">
「な……なんでだ！？
　もう立てないくらいに痛めつけたはずなのに――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	DeleteAllSt(200,false);
	Fade("絵背景100", 200, 1000, null, true);
	St("L",700, @0,@0,"buみそa_通常_angry");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa20/500200880mso">
「バッキャロー！」

{	St("L",700, @0,@0,"buみそa_オラオラ_pride");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa20/500200890mso">
「オレは頑丈なのが取り柄だぞッ！」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_オラオラ_happy");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa20/500200900buu">
「いよっ！　みそ！　カッコイイ！」

{	DeleteAllSt(200,false);
	Fade("絵背景100", 200, 0, null, true);
	St("ML",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa20/500200910kit">
「かっこいいか……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 1500, 0, null);


{	ClockPass(2057);}

//◆場所：ＵＰ＋_屋外セット_炎上
	SceneOut(5000, 300, "slide_01_01_0");
	DeleteAllSt(0,true);
	Delete("絵背景100");
	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	CreateTextureEX("絵背景100", 11, Center, @-200, "cg/bg/m/bg1201211ＵＰ＋_屋外セット_炎上_m.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	FadeBG(0,true);
	SceneIn(300, "slide_01_01_1");

	SoundPlay("@xbgm16",0,450,true);

	CreateSE("SE02","seガヤ_歓声_l");
	MusicStart("SE02",0,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	St("R",700, @-50,@0,"buブーa_通常_normal");
	Move("@StNameR/R*", 300, @50, @0, Dxl2, false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa20/500200920buu">
「お……なんか人だかりが！」

{	DeleteAllSt(200,false);
	St("L",700, @-50,@0,"buみそa_通常_shout");
	Move("@StNameL/L*", 300, @50, @0, Dxl2, false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa20/500200930mso">
「よっしゃ！　飛び込むぞ！」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_shout");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa20/500200940buu">
「お、おうッ！」

// ここからaa2050沙紅羅_フウリに表情をあわせる
//あきゅん「修正指示：aa2050沙紅羅_フウリと共に表情の調整をお願いします」

//◆音声指示：スピーカー越し
// 遠間からなので、立ち絵なし
{
	DeleteAllSt(200,false);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa20/500200950mrp">
『な、なんという頭脳派！』

//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa20/500200960mrp">
『山と積まれたクリマンの包装を、先んじて剥いてしまう作戦に出た！』

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_ero");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa20/500200970buu">
「な……なんかエロス！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_shout");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa20/500200980mso">
「おい、ブー！　あれ……」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_shock");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa20/500200990buu">
「え？　姐さん！？」

{	DeleteAllSt(200,false);
	Fade("絵背景100", 200, 0, null, true);

	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500201000fje">
「ヤバい！　あの中に飛び込まれたら――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa20/500201010kit">
「見失うことはないだろ。
　あの頭だし、あのカッコだし」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500201020fje">
「……確かに」

{
	SetVolumeEX("@SE02*", 1500, 0, null);
	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu平次_通常_normal");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aa20/500201030fjh">
「で、あいつらはなにをしでかしたんだ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500201040fje">
「だからさっきから言ってるでしょ？　殺人よ」

{	St("MR",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500201050fje">
「そう。河原屋双六を殺したのは――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu平次_通常_pain");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aa20/500201060fjh">
「ちょ――ちょっと待て！」

{	St("C",700, @0,@0,"bu平次_通常_hard");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aa20/500201070fjh">
「おまえ、勘違いしてるぞ」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aa20/500201080fjh">
「河原屋双六は、死んでない」

{
	DeleteAllSt(200,false);
	SetVolumeEX("@xbgm*", 1500, 0, null);
	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500201090fje">
「え……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
//あきゅん「修正指示：双六死体絵をフラッシュバック」

	SetVolumeEX("@xbgm*", 500, 0, null);
	SetVolumeEX("@SE1*", 500, 0, null);
	CreateSE("SE02","se擬音_フラッシュバック");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorEXadd("フラッシュ白", 20000, "WHITE");
	Fade("フラッシュ白",500,1000,null,true);

	ClockDelete(0,true);

	PrintGO("上背景", 20010);
	DeleteAllSt(200,false);
	CreateTextureEX("絵背景", 1000, Center, Middle, "cg/img/img双六死に手.jpg");
	Fade("絵背景", 0, 1000, null, true);
	FadeBG(0,true);
//	SetTone("@OnBG*",Sepia);
//	SetTone("@StNameC/C*",Sepia);

	Fade("絵色", 0, 200, null, true);
	Delete("フラッシュ白");
	FadeDelete("上背景", 500, null, true);


	WaitKey(1000);

	CreateColorEXadd("フラッシュ白", 20000, "WHITE");
	Fade("フラッシュ白",500,1000,null,true);

{	ClockPass(2057);}

	PrintGO("上背景", 20010);
	DeleteSt("C",0,true);
	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	CreateTextureEX("絵背景100", 11, Center, @-200, "cg/bg/m/bg1201211ＵＰ＋_屋外セット_炎上_m.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	FadeBG(0,true);
//	SetTone("@OnBG*",null);
//	SetTone("@StNameC/C*",null);
	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	FadeSt("MR",200,true);

	CreatePlainSP("絵板写", 100);
	SetShade("絵板写", SEMIHEAVY);

	Delete("フラッシュ白");
	FadeDelete("上背景", 500, null, true);

//	SoundPlay("@xbgm16",0,450,true);
	CreateSE("SEL01","seガヤ_歓声_l");
	MusicStart("SEL01",0,350,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500201100fje">
「でも、双六の頭は――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu平次_通常_normal");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aa20/500201110fjh">
「何かの見間違いだろ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500201120fje">
「そんな……私、この目でハッキリと見たのよ！
　ね、あなたも見たでしょ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa20/500201130kit">
「ぁ…………」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500201140fje">
「ねえ、アッキーちゃん？　聞いてるの！？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa20/500201150kit">
「うそ……だろ？
　あそこに……あそこに……」

{	St("ML",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa20/500201160kit">
「あそこに、オレが！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500201170fje">
「は？　なにワケわかんないこと――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(2058);}


//◆場所：ＵＰ＋_セット上
	SetVolumeEX("SE*", 300, 0, null);
	SceneOut(5000, 300, "slide_01_01_0");
	DeleteAllSt(200,false);
	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);
	Fade("絵背景100", 0, 0, null, true);
	Delete("絵板写");

	SceneIn(300, "slide_01_01_1");
	SoundPlay("@xbgm03",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{	St("L",700, @-50,@0,"buみそa_通常_cry");
	Move("@StNameL/L*", 300, @50, @0, Dxl2, false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa20/500201180mso">
「姐さ――――んッ！！」

{	DeleteAllSt(200,false);
	St("R",700, @-50,@0,"buブーa_通常_cry");
	Move("@StNameR/R*", 300, @50, @0, Dxl2, false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa20/500201190buu">
「た、助けてくださいいいッ！！」

//◆音声指示：スピーカー越し
{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buミリＰb_通常_shock");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa20/500201200mrp">
『な、どうしたのッ！？』

//◆音声指示：スピーカー越し
{	St("R",700, @0,@0,"buミリＰb_通常_shout");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa20/500201210mrp">
『突然観客席から、ヤンキーコンビが乱入ッ！！』

//◆音声指示：スピーカー越し
{	St("R",700, @0,@0,"buミリＰb_通常_shock");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa20/500201220mrp">
『ステージは大混乱よッ！！』


{	DeleteAllSt(200,false);
	St("ML",700, @-50,@0,"bu平次_御用だ_angry");
	Move("@StNameML/ML*", 300, @50, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aa20/500201230fjh">
「なにしてやがるッ！
　てめぇら、さっさとステージを下りろッ！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa20/500201240skr">
「よし、ずらかるぞッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);
	Wait(16);
{	DeleteAllSt(0,false);
	St("R",700, @0,@0,"buブーa_通常_shout");
	St("L",700, @0,@0,"buみそa_通常_shout");
	FadeSt("R",0,false);
	FadeSt("L",0,true);}
	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0289]
//◆音声指示：同時
//テキスト結合演出予定
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa20/500201250mso">
「応っ！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/aa20/500201260buu">
//「応っ！」

</PRE>
	SetText();
	AddText(1,"「応っ！」","みそ","aa20/500201250mso",false,false,1000);
	AddText(2,"「応っ！」","ブー","aa20/500201260buu",true,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

	CreateSE("SE01","se擬音_ギャグ_逃げる");
	CreateSE("SE02","se擬音_ギャグ_逃げる");
	Wait(16);
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameL/L*", 250, @1224, @0, null, false);
	Wait(100);
	MusicStart("SE02",0,700,0,950,null,false);
	Move("@StNameR/R*", 200, @-1224, @0, null, false);


// aa2050_沙紅羅_フウリ に合わせる
//あきゅん「修正指示：aa2050_沙紅羅の演出の統一をお願いします」
//↑(11/14)現状で、台詞が同じ所は「aa2050_沙紅羅_フウリ」と同一の表情にしています。
// 　ただし、ボイスが未着（ブー、千秋、平次、ミリＰ）の為、詳細まで調整できません。

// メモ：前のファイルの流れから、ユージローは b？
// a2040千秋.nss（この時点でb) -> aa2050_千秋_恵那 -> aa2100恵那 (ここまで外す機会なしかと思われる）


	TextBoxDelete(150);
	DeleteAllSt(200,false);

	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateColorEX("絵マスク/絵演色", 1510, "#993399");
	CreateTextureEX("スラッシュ", 1620, 700, Middle, "cg/mask/ciスラッシュ_05_01z.png");
	CreateTextureEXadd("絵マスク/絵演背景", 1520, 300, Middle, "cg/ef/ef002_汎用移動.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵s_s", 1530, 450, middle, "cg/bu/buミリＰb_ショータイム_shout.png");
	Request("絵マスク/絵演立絵2", Smoothing);

//動作準備
	Move("絵マスク", 0, 1024, 0, null, true);
	Fade("スラッシュ", 200, 1000, null, false);
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク/絵演立絵s_s", 0, 450, InBottom, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);

	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵s_n", 200, 1000, null, false);
	Move("絵マスク/絵演立絵s_n", 200, 450, InBottom, Dxl1, true);

	CreateSE("SE01","seガヤ_大歓声_l");
	MusicStart("SE01",0,700,0,1000,null,true);

	Fade("絵マスク/絵演立絵s_s", 200, 1000, Dxl1, false);
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク", 200, 0, 0, Dxl3, true);


{	ClockPass(2059);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa20/500201270mrp">
『沙紅羅選手、二人組と共にステージ上から撤収！？』

{
	SetVolumeEX("@SE01*", 1500, 0, null);
	Move("スラッシュ", 200, 700, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500201280fje">
「ちょ！　こら！　待ちなさいッ！！」

{
	St("C",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500201290fje">
「ユージロー！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
{
	St("ML",700, @0,@50,"buユージローa_通常_ero");
	DeleteSt("C",200,false);
	Move("@StNameML/ML*", 300, @0, @-50, Dxl2, false);
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 1000, 0, 3, 0, 0, 500, null, false);
}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/aa20/500201300ujr">
「わうわうわうわうッ！！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500201310fje">
「よし、そのまま行け――あれ？」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_驚天_shock");
	FadeSt("MR",200,true);
	Shake("@StNameMR/MR*", 300, 0, 10, 0, 0, 500, null, false);
	}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa20/500201320ktt">
「ぎゃああああああ！！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buユージローa_通常_ero");
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 1000, 0, 10, 0, 0, 500, null, false);
	}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/aa20/500201330ujr">
「わうわうわうわうッ！！」

{
	St("C",700, @0,@0,"bu恵那_一休_think");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500201340fje">
「ちょっとユージローッ！！
　アッキーちゃん追いかけてる場合じゃ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵背景", 1000, Center, -288, "cg/bg/l/bg1201211ＵＰ＋_屋外セット_炎上_l.jpg");
	Fade("絵背景", 300, 1000, null, false);
	Move("絵背景", 300, 0, @0, AxlDxl, true);
	DeleteAllSt(0,true);

	St("L",1010, @-512,@0,"bu千秋_通常_sad");
	FadeSt("L",0,true);
	Move("@StNameL/L*", 200, @512, @0, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa20/500201350kit">
「オレ……さっきから、ここにいるんだけど……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("R",1110, @512,@0,"bu千秋_朗らか_shock");
	CreateTextureEX("絵背景上", 1100, 0, -500, "cg/bg/l/bg1202300ＵＰ＋_セット上_炎上_l.jpg");

	FadeSt("R",0,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0321]
{
	LcPro_aa2050sakura_huuri_hutari();
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500201360fje">
「え？　は？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 3000);
	Wait(16);
	Request("Pro", Stop);
	Delete("Pro");
	DeleteAllSt(0,true);
	St("R",1110, @512,@0,"bu千秋_朗らか_shock");
	CreateTextureSP("絵背景上", 1100, 0, -500, "cg/bg/l/bg1202300ＵＰ＋_セット上_炎上_l.jpg");
	Wait(16);
	Move("@StNameL/L*", 0, @-1024, @0, AxlDxl, false);
	Move("絵背景", 0, -1024, @0, AxlDxl, false);
	Move("絵背景上", 0, -1024, @0, AxlDxl, true);
	FadeSt("R",0,true);
	Move("@StNameR/R*", 0, @-512, @0, Dxl1, true);

	CreateMaskAXLSP("マスク", 2100, 0, 0, "ciスラッシュ_05_00", false, "ciスラッシュ_05_00z");
	CreateTextureSP("マスク/絵背景", 2000, 0, -500, "cg/bg/l/bg1201211ＵＰ＋_屋外セット_炎上_l.jpg");
	CreateTextureSP("マスク/絵立絵", 2010, 65, 7, "cg/bu/bu千秋_通常_worry.png");
	Move("@マスク*", 0, @-768, @0, null, true);
	Wait(16);
	Delete("絵板写");

	Move("@マスク*", 600, @768, @0, DxlAuto, true);

	WaitKey(1000);

	St("C",19010, @0,@120,"fu恵那_通常_pinch");
	Move("@StNameC/C*", 500, @0, @-120, DxlAuto, false);
	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0322]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500201370fje">
「アッキーちゃんが、ふたり！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	WaitAction("@StNameC/C*", null);

	DeleteAllSt(450,false);
	CreatePlainSP("絵板写", 3000);
	Wait(16);
	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

	DeleteSt("R", 0,true);
	Delete("@マスク*");
	Delete("絵背景*");
	St("X",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("X",0,true);
	Wait(16);
	FadeDelete("絵板写", 300, null, true);

// aa2100恵那.nss に進んだ場合、直後にも「コレは事件ッ！？」カットインが表示されるが、このままでもよいか？

// fuより前に出すコレは事件カットインを一応用意
//	KoreJikenStart_Front();
	KoreJikenStart();

//	DeleteAllSt(200,false);
//	St("C",19010, @0,@0,"fu恵那_一休_think");
//	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0323]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500201380fje">
「コレは事件ッ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	DeleteAllSt(200,true);
	DeleteAllSt(0,true);
	TextBoxDelete(150);

	KoreJikenEnd(true);

/*
	DeleteAllSt(450,false);
	CreatePlainSP("絵板写", 3000);
	Wait(16);
	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

	DeleteSt("R", 0,true);
	Delete("@マスク*");
	Delete("絵背景*");
	St("X",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("X",0,true);
	Wait(16);
	FadeDelete("絵板写", 300, null, true);
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
{
	St("ML",700, @0,@0,"buユージローa_通常_ero");
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 1000, 0, 3, 0, 0, 500, null, false);
	}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/aa20/500201390ujr">
「わうわうわうわうっ！！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_驚天_shock");
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa20/500201400ktt">
「たすけて――っ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se擬音_ギャグ_逃げる");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameMR/MR*", 250, @1224, @0, null, false);

	Wait(200);

	St("ML",700, @0,@0,"buユージローa_通常_ero");
	CreateSE("SE02","se擬音_ギャグ_逃げる");
	FadeSt("ML",200,true);
	MusicStart("SE02",0,700,0,1000,null,false);
	Move("@StNameML/ML*", 250, @1224, @0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0331]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500201410fje">
「ユージロー！　ちょっと！」

{	St("C",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa20/500201420fje">
「待て！　待ちなさいって！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	DeleteAllSt(200,true);

	WaitAction("@StNameC/C*", null);

	EndScene();
}
//next "千秋" （"flkagome1" = true） "ab2100千秋_恵那.nss"
//next "千秋" "aa2100千秋_フウリ.nss"
//next "恵那" （"flkagome1" = true） "ab2100千秋_恵那.nss"
//next "恵那" "aa2100恵那.nss"
