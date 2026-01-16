
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2100恵那.nss_MAIN
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
	$GameName = "2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nss";
	//$GameCircle=false;

}

scene 2100恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1430">
////////////header////////////
//file name "2100恵那.nss"
//title "カゴメアソビ縁起"
//previous "2050恵那.nss"

////////////footer////////////
//next "恵那" "2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);

{	ClockPass(2100);}

	SoundPlay("@xbgm20",1000,200,true);

//※下倉注：ここ本来は補修跡有り
//◆場所：スーパーノヴァ_正面_ガラス補修
	OnBG(10,"bg0501200スーパーノヴァ_正面_ガラス割れ");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);


	CreateTextureEX("絵背景", 2000, -295, -88, "cg/ev/m/ev1830鈴ドロップキック_m.jpg");//-256x-144
	Zoom("絵背景", 0, 2000, 2000, Dxl2, true);
	SetBlur("絵背景", true, 2, 500, 50, false);

	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵背景", 200, 1000, null, false);
	Zoom("絵背景", 200, 1000, 1000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//	St("C",700, @0,@0,"bu鈴_通常_happy");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/000200010fjr">
「オラー！　働け働けー！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("L",700, @0,@0,"buみそa_通常_pinch");
	St("R",700, @0,@0,"buブーa_通常_pinch");
	St("C",700, @0,@0,"bu村崎_通常_fear");

	Zoom("絵背景", 300, 5000, 5000, Axl3, false);
	FadeF4("絵背景", 300, 1000, 3000, 0, 0, Axl3, false);

	Wait(200);
	Fade("絵背景", 100, 0, null, true);
	Delete("絵背景");
	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef034_精神汚染.jpg", false);

	CreateSE("SE02","se戦闘_打撃_ドロップキック01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Shake("@StNameC/C*", 1000, 10, 0, 0, 0, 1000, Dxl1, false);
	Shake("@StNameL/L*", 1000, 10, 0, 0, 0, 1000, Dxl1, false);
	Shake("@StNameR/R*", 1000, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,false);
	FadeSt("L",200,false);
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//	St("MR",700, @0,@0,"bu村崎_通常_fear");
//	DeleteAllSt(200,false);
//	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/21/000200020msi">
「わかりましたよぉ！　反省してます！
　反省してますからぁ！」

{	CreateSE("SE01","se人体_倒れる05");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("@StNameC/C*", 1000, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @0, @100, Dxl3, false);
	DeleteSt("C", 200,true);
}
//	St("ML",700, @0,@0,"buみそa_通常_pinch");
//	DeleteAllSt(200,false);
//	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/000200030mso">
「ぐはっ！　なんてキック力！」

{	CreateSE("SE01","se人体_倒れる04");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("@StNameL/L*", 1000, 8, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameL/L*", 200, @0, @100, Dxl3, false);
	DeleteSt("L", 200,true);
}
//	St("MR",700, @0,@0,"buブーa_通常_pinch");
//	DeleteAllSt(200,false);
//	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/000200040buu">
「オレたちが、手玉にとられるなんて……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	CreateSE("SE01","se人体_倒れる04");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("@StNameR/R*", 1000, 8, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameR/R*", 200, @0, @100, Dxl3, false);
	DeleteSt("R", 200,true);
WaitKey(500);

{	St("C",700, @0,@50,"bu鈴_シリアス_smile");
	St("C",700, @0,@50,"bu鈴_シリアス_angry");
	DeleteAllSt(200,false);
Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);
	FadeStPro("C", 200, 5400);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/000200050fjr">
「あんたたちがガラス張りのスキルを持ってるなんて、運命としか思えないわ！　ほら、さっさとやる！」

{	AgainSt("C",700, @0,@0,"bu鈴_シリアス_angry");
	St("MR",700, @0,@100,"buブーa_通常_angry");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 200, 8, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 200, @0, @-100, Dxl3, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/000200060buu">
「クソ！　学校の窓ガラスを割ったばっかりに……」

{	St("ML",700, @0,@100,"buみそa_通常_angry");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 200, 8, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameML/ML*", 200, @0, @-100, Dxl3, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/000200070mso">
「センコーめ！　修理費ケチりやがって！」

{	St("C",700, @0,@100,"bu村崎_通常_pinch");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 1000, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 1000, @0, @-100, Dxl3, false);
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/21/000200080msi">
「まあでも、それで粉々にならずに済んだんですし……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	SetVolumeEX("@xbgm20", 2000, 450, null);



	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);





//※下倉注：ここ本来は補修跡有り
//◆場所：スーパーノヴァ_ライブ会場
	OnBG(10,"bg0502111スーパーノヴァ_ライブ会場_ガラス割れ");
	FadeBG(0,true);

//※下倉注：ここ本来は補修跡有り
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg0502111スーパーノヴァ_ライブ会場_ガラス割れ.jpg");
	SetShade("絵背景",MEDIUM);
	Zoom("絵背景", 0, 2000, 2000, null, true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("C",19700, @0,@0,"fu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000200090fje">
（こんなところで、ガラス問題が解決するなんて……）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000200100fje">
（何かこう、運命めいたものを感じるわね。
　考え過ぎかしら……？）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000200110fje">
（……ま、とりあえずそれはおいといて）



{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeDelete("絵背景", 200, null, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000200120fje">
「星さん、あの……ちょっと、時間をもらえませんか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2101);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("ML",700, @0,@0,"bu歌門_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200130kms">
「交代してくださるのですかッ！？
　私、ミヅハ様を捜しに参らねば――」

{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000200140fje">
「あ……えと、それはまあ置いといて」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000200150fje">
「聞きたいことがあるんです。
　アザナエルについて」

{	St("ML",700, @0,@0,"bu歌門_通常_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200160kms">
「……あなたに話すことは、なにもありません」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000200170fje">
「あなたが私の身の危険を案じるのはよくわかります」

{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000200180fje">
「けど、アザナエルを地下ムロから取り出したのは私。
　防ぎようのないことだと言われても、納得できません」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000200190fje">
「情報をいただけようがいただけまいが、私はアザナエルを取り返すため、全力で行動するでしょう」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000200200fje">
「情報が多い方が、安全だとは思いませんか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2102);}


//	TextBoxDelete(150);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("ML",700, @0,@0,"bu歌門_通常_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200210kms">
「しかし……私には、できない」



{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000200220fje">
「わかりました」

{	DeleteAllSt(200,true);}
　恵那は深く頷くと、懐から携帯電話を取り出す。

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000200230fje">
「もしもこのまま、なにも教えてもらえないのなら」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：携帯カメラピンピロリン
	CreateSE("SE01","seメカ_携帯_カメラチャイム");
	CreateColorEXadd("絵色白", 2000, "#FFFFFF");

	Fade("絵色白", 0, 1000, null, true);
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(100);
	FadeDelete("絵色白", 500, null, true);

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_pride");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000200240fje">
「星さんの給仕姿を、全世界に配信します！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	DeleteAllSt(200,true);}

{	St("ML",700, @0,@0,"bu歌門_威圧_shout");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200250kms">
「なんたる外道！
　これが富士見家の血！？」


{	DeleteAllSt(200,true);}

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000200260fje">
「星さん、教えてください」

{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000200270fje">
「アザナエルとは、いったい何ですか？」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000200280fje">
「ただの拳銃が、どうして半田明神の地下ムロに？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2103);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("ML",700, @0,@0,"bu歌門_通常_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200290kms">
「…………」

{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000200300fje">
「――――」


{	St("ML",700, @0,@0,"bu歌門_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200310kms">
「……あなたの決意は揺るがないようですね」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000200320fje">
「教えてくれるんですね！？」

{	St("ML",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200330kms">
「ただし――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//	St("ML",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200340kms">
「写真は消してください」

{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000200350fje">
「……やっぱり気にしてるんですか」

{	St("ML",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200360kms">
「当たり前です」




</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 2000, 0, null);

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


//◆時間：ジャンプ
{	ClockPass(2106);}
	Wait(500);

//◆場所：スーパーノヴァ_控え室
	OnBG(10,"bg0503100スーパーノヴァ_控え室_通常");
	FadeBG(0,true);

//◆ＳＥ：ＢＧＭで「全国ゆるキャラバン」の様子が流れている。後で編集

//	SoundPlay("@xbgm16",1000,200,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0095]

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000200370fje">
「………………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200380kms">
「………………」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200390kms">
「では、どこから話したものか……」

{	St("C",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200400kms">
「多少長い話になりますが……そうですね」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200410kms">
「『カゴメアソビ』の成り立ちから、お教えしましょう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	SetVolume("@xbgm*", 1000, 0, null);

	TextBoxDelete(150);
//	DeleteAllSt(200,true);


{	ClockPass(2107);}

	PrintGO("上背景", 5000);
	FadeDelete("上背景", 500, null, true);


	PrintGO("上背景", 5000);

	CreateTextureSP("絵背景", 120, Center, Middle, "cg/img/img戦後の秋葉原.jpg");

	FadeDelete("上背景", 500, null, true);


//◆演出指定：戦後秋葉原のイメージ画が必要
//あきゅん「素材：img戦後の秋葉原」

	SoundPlay("@xbgm21",2000,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200420kms">
「戦後、秋葉原が電気街として生まれ変わった直接の原因を、知っていますか？」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000200430fje">
「ええと……確か、ＧＨＱの指導によりガード下に露天商が集められた、でしたっけ？」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200440kms">
「さすが、会長の娘さんですね」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000200450fje">
「……父さんは関係ないです」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200460kms">
「まあ、とにかくそうして、秋葉原という街は戦後復興の第一歩を踏み出しました」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200470kms">
「――表向きには」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000200480fje">
「表向きには？」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200490kms">
「日本を支配したＧＨＱ」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200500kms">
「彼らの中には、確かに日本を建て直すべく、理想に燃えていた人も多くいました」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200510kms">
「しかし当時の日本は、各国の思惑が入り乱れる極東の要地。当然、綺麗事で済むことばかりではありません」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2108);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200520kms">
「決して表沙汰にできない数々の事件が、人知れず闇へと葬られていきました」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200530kms">
「しかし、人々は争いに厭きていました」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200540kms">
「単なる鬱憤晴らしか、それともそれ自体が日本の未来を定める危険なゲームとなったのか――」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200550kms">
「各国の要人や、日本の政治家、財閥の有力者が集まり、秋葉原の地下でとある賭博が行われるようになったのです」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000200560fje">
「賭博――？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	PrintGO("上背景", 5000);

	CreateTextureSP("絵背景", 1000, Center, Middle, "cg/img/imgアザナエル.jpg");
	//Fade("絵背景", 500, 1000, null, true);

	FadeDelete("上背景", 500, null, true);


//◆演出指定：アザナエルのイメージ画
//あきゅん「素材：imgアザナエル」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200570kms">
「ロシアンルーレット。
　巨額の富と弾丸が行き交う命懸けのギャンブル」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200580kms">
「焦土となった東京で、明日の夢を失った命知らずのならず者たちが、地下鉄万世橋駅遺構に集められました」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200590kms">
「円形のコロシアムの下、６人の男たちが輪を描き、後ろの人間が、前の人間の頭に銃を突きつけます」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200600kms">
「引き金を引き、外れれば前の人間に銃が手渡され、当たれば死者を除いてもう一度」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2109);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200610kms">
「ひとり……またひとり……」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200620kms">
「ゆっくりと、時間をかけて、輪が縮まっていきます」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200630kms">
「やがて輪は線となり――点となる」




//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200640kms">
「生き残ったひとりの手元には、莫大な掛け金の一部が手渡されます」




//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000200650fje">
「そんな、馬鹿げたことが――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200660kms">
「今の時代に生きるあなたは、信じないでしょう」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200670kms">
「しかし当時のそこには、夢も、富も、絶望も、死も、全てが混ざり合い、混沌と渦を巻いていた」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200680kms">
「そしてその渦は、何よりも人々を魅了した」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200690kms">
「自分の命の価値を、忘れさせるほどに」



//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200700kms">
「賭博は繰り返され、その舞台は『籠』、ロシアンルーレットは『カゴメアソビ』と呼ばれるようになりました」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2110);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200710kms">
「繰り返される『カゴメアソビ』で、人々の希望と恐怖をのせ、生死を分けたその拳銃は、禍福を糾えるもの――」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200720kms">
「『アザナエル』として、人々から畏れ崇められるようになりました」


//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000200730fje">
「それが、あの銃ですか」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000200740fje">
「でも、どうして半田明神の地下に？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	PrintGO("上背景", 5000);
	FadeDelete("上背景", 500, null, true);


	PrintGO("上背景", 5000);

	OnBG(10,"bg0503100スーパーノヴァ_控え室_通常");
	FadeBG(0,true);

{	St("C",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0175]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200750kms">
「アザナエルが、本物になったのです」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2111);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000200760fje">
「本物……？」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200770kms">
「生と死の狭間に立った人間たちの強い情念は、いつしかその銃に人知を越えた恐ろしい呪いを植え付けました」


//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200780kms">
「１発の弾丸を入れ――」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200790kms">
「シリンダを回し――」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200800kms">
「トリガーを引く」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("C",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200810kms">
「願いが叶うのは一度だけ」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200820kms">
「飛び出すのは、希望かそれとも弾丸か」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200830kms">
「希望が飛び出せば、当たった者の願いが叶う」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200840kms">
「弾丸が飛び出せば、命が絶たれる」

{	St("C",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200850kms">
「規則はそれだけです」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2112);}


//	TextBoxDelete(150);

//	CreateTextureEX("絵背景", 1000, Center, Middle, "cg/img/img戦後の秋葉原.jpg");
//	Fade("絵背景", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200860kms">
「死の危険と引き替えに、願いを叶える奇跡の銃。
　アザナエルは戦後の闇社会を転々としました」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200870kms">
「戦後の復興は、もしかするとアザナエルを抜きには語れなかったかもしれない」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200880kms">
「しかし、人間を惑わす危険な呪物には違いない」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200890kms">
「だから私たちは、アザナエルを封印しました」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//	FadeDelete("絵背景", 500, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000200900fje">
「でも……それ、リスクが少なすぎませんか？」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200910kms">
「というと？」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000200920fje">
「だって、死ぬ確率は６分の１なんでしょう？」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000200930fje">
「命を投げ出すくらい絶望してる人はたくさんいる」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000200940fje">
「その人たちがカゴメアソビに参加しない理由って、あります？」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200950kms">
「そういう考え方もあるでしょう」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200960kms">
「そしてほとんどの人間が、あなたと同じ考えで、アザナエルに命を絶たれた」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2113);}


//	TextBoxDelete(150);

	CreateTextureEX("絵背景", 1001, Center, Middle, "cg/img/imgアザナエル.jpg");
	Fade("絵背景", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]


//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200970kms">
「まず第一に――
　誰もが自分の本当の願いを知らない」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200980kms">
「巨万の富を得ようと願ったつもりが、しかしカゴメアソビで、全てを投げ出し愛人と逃げ出した者がいる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000200990kms">
「愛する重病人の命を救おうとして、しかしカゴメアソビの後、重病人の命を絶ってしまった者がいる」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000201000kms">
「自分の表向きの希望と、心が本当に求めている願いとは、しばしば食い違うものなのです」



//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000201010kms">
「そして第二に――
　カゴメアソビは麻薬のように人を魅了する」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000201020kms">
「一度叶ってしまった願いが、更なる欲望を生み出すのか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2114);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000201030kms">
「それとも、カゴメアソビという命懸けのギャンブル自体が、彼らの心を掴んで離さないのか」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000201040kms">
「一度経験した者のほとんどは、二度、三度――幾度となく自分の命を盆へと投げ出し、やがて命を失う」


{	CreateTexture("絵背景2", 1000, Center, Middle, "cg/img/img河原屋双一.jpg");
	FadeDelete("絵背景", 500, null, true);
}
//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",0,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000201050kms">
「わずかに今も残る生き残り――」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000201060kms">
「それが、河原屋双一なのです」

//	St("C",700, @0,@0,"bu恵那_一休_think");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000201070fje">
「河原屋組の組長……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2115);}

//	TextBoxDelete(150);

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",0,true);}
//	FadeDelete("絵背景*", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000201080kms">
「彼らが大組織の傘下にならず、一匹狼のように秋葉原の街を仕切れるのは、アザナエルの加護があればこそ」



//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000201090kms">
「全ては祖父に聞いた話です」

//	St("C",700, @0,@0,"bu歌門_通常_pride");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000201100kms">
「あるいはいい加減な祖父のことですから、どこかに誇張があるやもしれません」

{	St("C",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("C",0,true);
	FadeDelete("絵背景*", 500, null, true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000201110kms">
「しかし、現実に、アザナエルは存在します」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000201120fje">
「呪いをとくことは……できないんですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000201130kms">
「かつて、私の祖父がそれを試みたことはあります」

{	St("C",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000201140kms">
「しかし――試みは失敗した。
　怨念の力が、強すぎたのです」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000201150kms">
「辛うじて、ひとりが引き金を引けるのは一度――という制限をつけ、多くの被害者が出ないようにはできました」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000201160kms">
「しかしそれでも、アザナエルを求める者は後を絶たない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2116);}


//	TextBoxDelete(150);

//1024x1757
	CreateTextureEX("絵背景", 1000, Center, Middle, "cg/bg/bg0702100地下_祭壇_通常.jpg");
	Move("絵背景", 5000, @0, -100, null, false);
	Fade("絵背景", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000201170fje">
「だから、アザナエルをあの地下ムロに封じた」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000201180kms">
「祖父が封じたそのアザナエルを、私はずっと守っておりました」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000201190kms">
「新年を迎える度、半田明神の参拝者へ少しずつ『願い』を分け与えることで、徐々に呪力を薄めてきたのです」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000201200kms">
「５０年の時を経て、まさに今晩、アザナエルの呪いが祓われる――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu歌門_通常_think");
	FadeSt("C",0,true);}
	FadeDelete("絵背景", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000201210kms">
「そのはずでした」


//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000201220kms">
「しかし今晩、河原屋双一にアザナエルが盗まれた」

{	DeleteAllSt(200,true);}

{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000201230fje">
「いえ、それは……私のせいです」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000201240kms">
「本来、その社は結界で覆われておりました。
　祖父が最後に拵えた結界です」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000201250kms">
「１０年の時が経過したといえども、そう易々と破られるようなものではない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2117);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
{	St("C",700, @0,@0,"bu歌門_通常_think");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000201260kms">
「ただ、ほんの一瞬で結界が破られたのだとすれば、やはり何者か、強力な力の持ち主が……」


{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000201270fje">
「でも、やっぱり私のせいです！
　そこですぐ、星さんに返していれば――」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000201280kms">
「あなたはその銃を手にしたとき、自分の中に眠る欲望に魅入られたのではありませんか？」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000201290fje">
「欲望――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2118);}

	SetVolume("@xbgm*", 5000, 0, null);

//	TextBoxDelete(150);

	CreateColorEXadd("絵色0", 20000, "#FFFFFF");
	Fade("絵色0", 0, 1000, null, true);
	DeleteAllSt(0,true);

	ClockDelete(0,true);
	ClockTime(2118);

	CreateColorEXadd("絵背景色", 2000, "#FFFFFF");
	CreateTextureEX("絵背景", 1000, Center, Middle, "cg/ev/ev1900恵那アザナエル発見.jpg");
	Fade("絵背景", 0, 1000, null, false);

	Fade("絵背景色", 0, 200, null, true);
	Fade("絵色0", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000201300fje">
（そうだ……私、拳銃を手にして……）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000201310fje">
（もし警察に届ければ、自分が父さんに認めてもらえるって信じて、それで――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE00","se環境_ハウリング");
	MusicStart("SE00",0,700,0,1000,null,false);
	Fade("絵色0", 0, 1000, null, true);

	Delete("絵背景*");
	ClockPass(2118);

{	St("MR",700, @50,@0,"bu歌門_通常_think");
//Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",0,true);}

	FadeDelete("絵色0", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0305]

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000201320kms">
「ん……」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000201330kms">
「あの……テレビに映っているのは……」

{	St("ML",700, @0,@0,"bu恵那_一休_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000201340fje">
「テレビ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);




{	ClockPass(2119);}


//◆演出指定：テレビ画面。映っているのはノーコ
//あきゅん「演出：走査線を使用してテレビ画面っぽく」
//あきゅん「演出："2110ノーコ.nss"と合わせました」

	PrintGO("上背景", 5000);
	DeleteAllSt(0,true);

	OnBG(120,"bg1203200ＵＰ＋_セット裏_暗闇");
	FadeBG(0,true);
	CreateTextureEX("絵背景", 1000, Center, Middle, "cg/ef/efテレビ画面用効果フィルター.jpg");
	Request("絵背景",AddRender);
	Fade("絵背景", 0, 300, null, true);
{	St2("C",700, @0,@0,"fuノーコa_通常_normal","cg2/",".png");
	FadeSt("C",0,true);}
	FadeDelete("上背景", 200, null, true);

//	SoundPlay("@xbgm16",1000,200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//◆音声指示：テレビ越し
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100300620nko">
『にとり』

//◆音声指示：テレビ越し
//	St("C",700, @0,@0,"buノーコa_通常_normal");
//	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100300630nko">
『にとりは、どこ』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	PrintGO("上背景", 5000);
	DeleteAllSt(0,true);
	OnBG(10,"bg0503100スーパーノヴァ_控え室_通常");
	FadeBG(0,true);
{	St("ML",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("ML",0,true);}
	FadeDelete("上背景", 200, null, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0315]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000201370fje">
「ん？　なに、この人」

{	St("MR",700, @0,@0,"bu歌門_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000201380kms">
「……見えるのですか！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
{	St("ML",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000201390fje">
「え？　何が？」

{	St("MR",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000201400kms">
「だから画面の真ん中に、黒い服を着た女性が――」

{	St("ML",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/000201410fje">
「見えるじゃないですか」

{	St("MR",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000201420kms">
「なんですって！　まさか彼女――」

{	St("MR",700, @0,@0,"bu歌門_通常_shout");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/000201430kms">
「アザナエルの力で、現実化した！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 1000, 0, null);
	TextBoxDelete(150);
	EndFileBlackOut(20000,2000);
	EndScene();
}
