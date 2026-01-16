
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ab2200千秋.nss_MAIN
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
	$GameName = "ab2210千秋.nss";
//	$GameCircle=false;

//※↑ab2051ノーコ.nssの飛び方を参考に設定（mngw 10/14）

}

scene ab2200千秋.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="970">
////////////header////////////
//file name "ab2200千秋.nss"
//title "織田貫太を捜せ！"
//previous "ab2150千秋_恵那.nss"

////////////footer////////////
//next "千秋" "ab2210千秋.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

	//PrintFadeNut("上背景２", 0, true);
	//DeleteSt("C", 0,true);
	//Delete("@OnBG*");


//◆場所：スパコン館_通路
	OnBG(10,"bg1102100スパコン館_通路_通常");
	FadeBG(0,true);

	SoundPlay("@xbgm05",0,450,true);

	//FadeDelete("上背景２", 2000, null, true);
	DrawDelete("上背景", 200, 100, null, "slide_01_03_1", true);

{	ClockPass(2200);}

	CreateAXLWindowEX("横割り", "Y",1500, 50,384, false);
	WindowAXLZoom("横割り", "Y",0, 0, null, true);
	CreateTextureSP("横割り/絵背景", 1400, 0, Middle, "cg/bg/bg1102100スパコン館_通路_通常.jpg");
	SetShade("横割り/絵背景", HEAVY);
	Zoom("横割り/絵背景", 0, 2000, 2000, null, true);

	CreateTexture("横割り/千秋", 1415, @0, InBottom, "cg/bu/bu千秋_通常_fear.png");
	CreateTexture("横割り/千秋think", 1410, @0, InBottom, "cg/bu/bu千秋_通常_think.png");
	SetAlias("横割り/千秋","横割り/千秋");
	
	Fade("横割り/千秋think", 0, 0, null, true);
	Move("横割り/千秋think", 0, 384, 0, DxlAuto, true);


	Fade("横割り/千秋", 0, 0, null, true);
	Move("横割り/千秋", 0, 768, 0, null, true);

	CreateTexture("横割り/ユージロー", 1410, @0, InBottom, "cg/bu/buユージローa_通常_hard.png");
	SetAlias("横割り/ユージロー","横割り/ユージロー");
	Fade("横割り/ユージロー", 0, 0, null, true);
	Move("横割り/ユージロー", 0, 384, 150, null, true);

	WindowAXLZoom("横割り", "Y",300, 1000, Dxl2, true);
	Fade("横割り/千秋", 200, 1000, null, false);
	Move("横割り/千秋", 200, 384, 0, DxlAuto, true);

//	St("MR",700, @120,@0,"bu千秋_通常_fear");
//	Move("@StNameMR/MR*", 200, @-120, @0, DxlAuto, false);
//	FadeSt("MR",200,true);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300010kit">
「はぁっ、はぁっ、はぁっ、はぁっ――！」

{	Fade("横割り/千秋", 200, 0, null, false);
	Move("横割り/千秋", 200, @-384, @0, DxlAuto, true);
	Fade("横割り/ユージロー", 200, 1000, null, false);
	Move("横割り/ユージロー", 200, 0, @0, DxlAuto, true);
	}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab22/000300020ujr">
「ハッハッハッハッハ――！」

{	Fade("横割り/ユージロー", 200, 0, null, false);
	Move("横割り/ユージロー", 200, @-384, @0, DxlAuto, true);
	Move("横割り/千秋", 200, 768, @0, DxlAuto, true);
	Fade("横割り/千秋", 200, 1000, null, false);
	Move("横割り/千秋", 200, 384, @0, DxlAuto, true);
	}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300030kit">
（自分の命を、蘇らせるようなヤツだ）


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300040kit">
（貫太さんならきっと、フウリさんのケガの治し方も知ってるに違いない！）

{	Fade("横割り/千秋think", 0, 1000, null, false);
	Fade("横割り/千秋", 200, 0, null, true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300050kit">
（でも――貫太さんはどこに？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fade("横割り/千秋think", 200, 0, null, false);
	Move("横割り/千秋think", 200, @-384, @0, DxlAuto, true);

	WindowAXLZoom("横割り", "Y",300, 0, Dxl2, true);

	TextBoxDelete(150);
	WaitKey(150);

	SceneOut(5000, 300, "slide_01_01_0");

	DeleteAllSt(200,false);
	Delete("@OnBG*");

	Delete("横割り*");
	Delete("横割り/千秋*");
	Delete("横割り/ユージロー");
	Delete("横割り/絵背景");


{	ClockPass(2201);}

//◆場所：スパコン館_裏面_電柱折れ
	OnBG(10,"bg1101300スパコン館_裏面_電柱折れ");
	FadeBG(0,true);

	SceneIn(300, "slide_01_00_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("MR",700, @120,@0,"bu千秋_通常_think");
	Move("@StNameMR/MR*", 200, @-120, @0, DxlAuto, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300060kit">
（貫太さんがいそうなところ……）


{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300070kit">
（フウリさんを捜すって言ってたけど、当の彼女はスパコン館にいたわけで――）


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300080kit">
（まだ、それを理解してないとすると――）

{	St("MR",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300090kit">
「わかんないけど……
　とりあえず、ゆるキャラバンの会場に！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	SetVolumeEX("@xbgm*", 4000, 0, null);

	Move("@StNameMR/MR*", 200, @-384, @0, DxlAuto, false);
	DeleteAllSt(200,false);
	TextBoxDelete(150);


	SceneOut(20000, 1000, "blind_01_00_0");

	DeleteAllSt(200,false);
	Delete("@OnBG*");

//◆時間：ジャンプ
{	ClockPass(2203);}
	Wait(1000);

//◆場所：ＵＰ＋_屋外セット
	OnBG(10,"bg1201200ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

	SceneIn(1000, "blind_01_00_1");

//あきゅん「修正指示：ゆるキャラ終了＆意気消沈してるのでガヤ音に燃えてるＳＥを裏でうっすらと」
//※ゆるキャラバン会場を去るまで上記のＳＥが鳴るようにしました（mngw 11/18）
//※下倉注：ここはメインの「千秋が秋葉原を駆け回るパート」というストーリーラインを強調するので、もうちょい引っ張って天丼します。 2010/11/25

//	SoundPlay("@xbgm16",0,450,true);

//	CreateSE("SE01","seガヤ_ざわざわ_l");
//	CreateSE("SE02","se環境_燃える_l");

//	MusicStart("SE01",1000,200,0,1000,null,true);
//	MusicStart("SE02",1000,300,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("ML",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ab22/000300100adi">
「はぁ………………」



//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ab22/000300110adi">
「はぁぁぁぁぁぁぁ………………」



//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ab22/000300120adi">
「はぁ……どうしよう……」



//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ab22/000300130adi">
「私たち……クビだわ……」


{	DeleteAllSt(200,true);
	St("MR",700, @120,@0,"bu千秋_通常_shout");
	Move("@StNameMR/MR*", 200, @-120, @0, DxlAuto, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300140kit">
「あの！　すいません！」


{	St("MR",700, @0,@0,"bu千秋_通常_think");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300150kit">
「あの、ここに……ええと……なんていうのかな？」

{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300160kit">
「フウリさん探してたり、なんかこう後ろを向いてて、あとなんとなくタヌキっぽいひと、来ませんでしたか？」


{	St("ML",700, @0,@0,"buＡＤ_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ab22/000300170adi">
「…………はい？」

{	St("MR",700, @0,@0,"bu千秋_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300180kit">
「だから……ええと……」

{	SetVolumeEX("@xbgm*", 3000, 0, null);
	St("C",700, @0,@0,"buユージローa_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 0, 5, 0, 0, 500, null, false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab22/000300190ujr">
「わうわうわうっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("MR",700, @0,@0,"bu千秋_驚天_shy");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300200kit">
「ってうお！　何ですかそのモニタ！」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300210kit">
「生首？　本物ッ！？」

{	SoundPlay("@xbgm24",0,450,true);
	St("ML",700, @0,@0,"buＡＤ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ab22/000300220adi">
「本物」

{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300230kit">
「コレ、映っちゃったんですか！？」

{	St("ML",700, @0,@0,"buＡＤ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ab22/000300240adi">
「ミリＰさんが、これは特ダネだって飛び出して。
　生中継で、私はここで中継要員」


{	St("ML",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ab22/000300250adi">
「誰も止める人がいなくて、変なゴスロリちゃんに追いついたのはいいんだけど、そこで戦いになっちゃって……」

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300260kit">
「戦い……？」

{	St("ML",700, @0,@0,"buＡＤ_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ab22/000300270adi">
「テレビ中継してる前で、切断しちゃったのよね……」


//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ab22/000300280adi">
「あの絵描きさんの首を――」

{	St("ML",700, @0,@0,"buＡＤ_通常_shock");
	Shake("@StNameML/ML*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ab22/000300290adi">
「グサっと！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2204);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("MR",700, @0,@0,"bu千秋_驚天_shock");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 300, 10, 10, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300300kit">
「ひぃぃいっ！！」

{	St("ML",700, @0,@0,"buＡＤ_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ab22/000300310adi">
「切り口、見ます？　結構、綺麗に……」

{	St("MR",700, @0,@0,"bu千秋_驚天_shy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300320kit">
「ちょ……勘弁……して……」

{	St("ML",700, @0,@0,"buＡＤ_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ab22/000300330adi">
「しかも！」

{	St("MR",700, @0,@0,"bu千秋_驚天_shock");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 300, 10, 10, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300340kit">
「ひゃあああッ！！」


{	St("ML",700, @0,@0,"buＡＤ_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ab22/000300350adi">
「あのゴスロリ女も、後を追って首を『ぶしゅー』」

{	St("MR",700, @0,@0,"bu千秋_驚天_shock");
	Shake("@StNameMR/MR*", 300, 5, 5, 0, 0, 500, null, false);
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300360kit">
「えええええええ……」


{	St("ML",700, @0,@0,"buＡＤ_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ab22/000300370adi">
「おかげで本社には非難囂々。
　今も電話が鳴り止まないらしくて」


{	St("ML",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ab22/000300380adi">
「ゴスロリ女は魔法みたいに消えちゃって。
　だからみんな、ＣＧだって疑ってるみたいです」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2205);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("ML",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ab22/000300390adi">
「一応、ドキュメンタリー風のフィクションだって説明はしてるみたいですけど……」

{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300400kit">
「嘘……ですよね」

{	St("ML",700, @0,@0,"buＡＤ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ab22/000300410adi">
「嘘に決まってます」

{	St("ML",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ab22/000300420adi">
「ああ……どうしよう……
　このままじゃ……若原Ｄに申し訳が……」


{	SetVolumeEX("@xbgm*", 3000, 0, null);
	St("MR",700, @0,@0,"bu千秋_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300430kit">
「なんか……大変そうですね……」

{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300440kit">
「あ、あの、それじゃオレも急ぐんで……」

{	St("ML",700, @0,@0,"buＡＤ_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ab22/000300450adi">
「え？　ああ……行っちゃうんですか？」

{	St("MR",700, @0,@0,"bu千秋_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300460kit">
「失礼しますっ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolumeEX("SE*", 4000, 0, null);
//	SetVolumeEX("@xbgm*", 4000, 0, null);
	
	Move("@StNameMR/MR*", 200, @-120, @0, DxlAuto, false);
	DeleteAllSt(200,false);
	TextBoxDelete(150);

	SceneOut(5000, 300, "slide_01_01_0");


	SoundPlay("@xbgm05",0,450,true);

{	ClockPass(2206);}
//◆場所：秋葉原_中央通り

	OnBG(10,"bg0103200秋葉原_中央通り_閉店");
	FadeBG(0,true);

//	CreateSE("SEL01","seガヤ_交通_l");
//	MusicStart("SEL01",2000,500,0,1000,null,true);

	SceneIn(300, "slide_01_01_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("MR",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300470kit">
（駄目だ……見つからない……）

{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300480kit">
（っていうか、探す方法あるのか？
　そもそも貫太さんを知ってる人も少ないわけで……）

{	St("MR",700, @0,@0,"bu千秋_通常_think");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300490kit">
（貫太さんを、知ってる人……？）

{	DeleteAllSt(200,false);
	}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab22/000300500msi">
「さあさあ……よってらっしゃい見てらっしゃい……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(2207);}

//◆場所：アキバスポット_正面_修復後
	OnBG(10,"bg0401300アキバスポット_正面_修復後");
	FadeBG(1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]


//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab22/000300510msi">
「秋葉名物クリスマス饅頭……
　年末特別大特価ですよォ……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);
	PrintGO("上背景", 30000);
	OnBG(10,"bg0103200秋葉原_中央通り_閉店");
	FadeBG(0,true);
	DrawDelete("上背景", 500, 100, null, "blind_01_00_0", true);

	St("MR",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300520kit">
「この声……！」

{	St("MR",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300530kit">
「そうだ――
　確か貫太さん、村崎のおっさんの部下だったんだ！」

{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300540kit">
「さっきの撮影会の件もあるし……
　一発、ガツンと言ってやるか！」


{	St("C",700, @0,@0,"buユージローa_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 100, 0, 5, 0, 0, 500, null, false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab22/000300550ujr">
「わうっ！！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	PrintGO("上背景", 30000);

//◆場所：アキバスポット_正面_修復後
	OnBG(10,"bg0401300アキバスポット_正面_修復後");
	FadeBG(0,true);

//	SetVolumeEX("SE*", 500, 0, null);
//	SoundPlay("@xbgm11",0,450,true);

	DrawDelete("上背景", 500, 100, null, "blind_01_00_0", true);
	DeleteAllSt(0,true);

	St("MR",700, @120,@0,"bu千秋_気合い_shout");
	Move("@StNameMR/MR*", 200, @-120, @0, DxlAuto, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300560kit">
「おいコラ！　村崎のおっさん！」

{	St("MR",700, @0,@0,"bu千秋_気合い_hard");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300570kit">
「何食わぬ顔して仕事してるんじゃねーよ！」


{	SetVolumeEX("@xbgm*", 1000, 0, null);}

//◆演出指定：村崎の顔、何故かボコボコ

{	St("ML",700, @0,@0,"bu村崎_通常_other");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab22/000300580msi">
「ああ……これはこれは……
　ええと、アッキーちゃん」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab22/000300590msi">
「いやあ……先ほどは、どうもすみませんでした」

{	St("MR",700, @0,@0,"bu千秋_驚天_shock");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 300, 2, 8, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300600kit">
「ど、どうしたんだその顔！？」

{	St("ML",700, @0,@0,"bu村崎_通常_other");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab22/000300610msi">
「ええ、この顔ですか？
　それは……ふふふ、そうですね……」


//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab22/000300620msi">
「きっと、あなたのブルマーとしまぱんを売りさばこうとしたバチが当たったのでしょう……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2208);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300630kit">
「バチ……ですか？」

{
	SoundPlay("@xbgm02",0,450,true);
	St("ML",700, @0,@0,"bu村崎_通常_other");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab22/000300640msi">
「そう！
　幾多もの命の危機を乗り越えて、私は改心したのです」

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300650kit">
「かいしん？？」

{	St("ML",700, @0,@0,"bu村崎_通常_other");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab22/000300660msi">
「聞いてくれますか！？　これはですね！　実はですね！
　聞くも涙……語るも涙の物語……ううっ！」


{	St("ML",700, @0,@0,"bu村崎_通常_other");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab22/000300670msi">
「あの後ブルマーとしまぱんを売りさばこうとした私は、一路バックギャモンに向かったわけでございます」


//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab22/000300680msi">
「ところが私の借金の取り立て屋、河原屋双六さんはなかなか私の言い値でモノを買ってくれない」


//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab22/000300690msi">
「交渉決裂！　挙げ句の果てに殴られて、バックギャモンで気絶するハメに――」

{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300700kit">
「え、いや――話、長くなります？」


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300710kit">
「急ぐんで、できればその話はまた後で――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("ML",700, @0,@0,"bu村崎_通常_other");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab22/000300720msi">
「そ、そうですか」

{	St("MR",700, @0,@0,"bu千秋_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300730kit">
「それよりあの、貫太さんを見なかった？」

{	St("ML",700, @0,@0,"bu村崎_通常_other");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab22/000300740msi">
「カンタ？　って、どちらの？」

{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300750kit">
「ほら、昔村崎のおっさんと一緒に働いてた――」

{	St("ML",700, @0,@0,"bu村崎_通常_other");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab22/000300760msi">
「かんた――貫太――
　って、もしかして――織田貫太ですか？」


{	St("ML",700, @0,@0,"bu村崎_通常_other");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab22/000300770msi">
「急に何故……」

{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300780kit">
「アイツ、今秋葉原に来てるんだよ」

{	St("ML",700, @0,@0,"bu村崎_通常_other");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab22/000300790msi">
「ほ、本当ですか！？
　どこに……」

{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300800kit">
「いや、オレもそれを探してる――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	OnBG(10,"bg0401300アキバスポット_正面_修復後");
	FadeBG(0,true);

//	TextBoxDelete(150);

//あきゅん「修正指示：ここから村崎の顔修復してください、一度ズーム処理等でぶにゅんとしてしまってもいいかも」
//※対応しました（mngw 11/18）

	CreateSE("SE01","se擬音_ギャグ_ぷに");
	MusicStart("SE01",0,700,0,1000,null,false);
	WaitKey(100);

	St("ML",700, @0,@0,"bu村崎_通常_other");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 100, 0, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);

	Move("@StNameML/ML*", 300, @0, 200, Dxl1, false);
	Zoom("@StNameML/ML*", 300, 1500, 150, Dxl1, true);

	CreateSE("SE02","se擬音_ギャグ_ぴょこ");
	MusicStart("SE02",0,700,0,1000,null,false);
	WaitKey(100);

	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

	St("ML",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("ML",200,false);
	Move("@StNameML/ML*", 0, @0, 200, null, true);
	Zoom("@StNameML/ML*", 0, 1500, 150, Dxl3, true);
	Move("@StNameML/ML*", 100, @0, 0, Axl1, false);
	Zoom("@StNameML/ML*", 100, 1000, 1000, Axl1, false);
	FadeDelete("絵色白", 100, null, true);

	Shake("@StNameML/ML*", 300, 0, 10, 0, 0, 500, null, false);
	Shake("@OnBG*", 300, 5, 5, 0, 0, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab22/000300810msi">
「な――なんというッ！！」


//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab22/000300820msi">
「わかりましたッ！！
　私も一緒に手分けして探しましょうッ！！」


{	DeleteAllSt(200,false);}


　立ち上がるやいなや、村崎は千秋に名刺を渡す。


{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab22/000300830msi">
「電話番号はこちらですッ！
　見つかったらすぐに連絡を！」

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300840kit">
「は、はあ」


{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab22/000300850msi">
「ああ……織田君が……
　織田君が、帰ってくるなんて……」

{	St("ML",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab22/000300860msi">
「神様は本当に……
　私を生まれ変わらせようとしているのかも！」

{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab22/000300870msi">
「では、失礼ッ！！」

{	SetVolumeEX("@xbgm*", 4000, 0, null);
	CreateSE("SEL01","seガヤ_交通_l");
	MusicStart("SEL01",2000,500,0,1000,null,true);
	Move("@StNameML/ML*", 200, @-120, @0, DxlAuto, false);
	DeleteAllSt(200,true);
	Wait(500);
	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300880kit">
「行っちゃった……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2209);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	St("C",700, @0,@0,"buユージローa_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab22/000300890ujr">
「わぅーん」


{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300900kit">
（まあ、村崎のおっさんも会ってないみたいだしな……）

{	St("MR",700, @0,@0,"bu千秋_通常_think");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300910kit">
（っていうか、フウリさんを探してるのに、こんなところに来るわけない……か）



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300920kit">
（貫太さんを……知ってる人がいて……
　フウリさんが行きそうな場所で……）


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300930kit">
（ん？　んん？　んんんん――？）


{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300940kit">
「鈴姉の所、か……！」

{	St("MR",700, @0,@0,"bu千秋_通常_think");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300950kit">
「あそこはフウリさんのバイト先で、鈴姉も貫太さんのことを知ってる！！」

{	St("MR",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000300960kit">
「行くぞ、ユージロー！！」

{	St("C",700, @0,@0,"buユージローa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 200, 0, 5, 0, 0, 500, null, false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab22/000300970ujr">
「わうっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolumeEX("SE*", 2000, 0, null);


	TextBoxDelete(150);

	SceneOut(20000, 1000, "blind_01_00_0");

	DeleteAllSt(0,true);
	Delete("@OnBG*");

	Wait(500);

	EndScene();
}
