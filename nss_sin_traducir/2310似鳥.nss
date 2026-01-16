
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2310似鳥.nss_MAIN
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
		$GameName = "2320カゴメ5.nss";
	}else{
		$GameName = "c2340恵那.nss";//★エンディングへ（d）

		//★画面推移演出
		SetVolumeEX("@xbgm*", 2000, 0, null);
		CreateColorEX("絵色100", 25000, "BLACK");
		Fade("絵色100", 1500, 1000, null, true);
		SnowDropDelete(0);
		Wait(500);
	}
}

scene 2310似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="800">
////////////header////////////
//file name "2310似鳥.nss"
//title "ライブへの道！"
//previous "2301似鳥_ノーコ.nss"

////////////footer////////////
//next （flkagome4=false） "c2340恵那.nss"
//next "似鳥" "2320似鳥.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2310);}

//◆場所：半田明神_男坂
	OnBG(10,"bg0601100半田明神_男坂_通常");
	FadeBG(0,true);

	CreateSE("SE11","seガヤ_交通少_l");
	MusicStart("SE11",2000,350,0,1000,null,true);


	WaitKey(500);

	FadeDelete("上背景", 1000, null, true);

	WaitKey(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/100400010mrp">
「突然人が変わったみたいね。
　覚悟、できたんだ」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/100400020nki">
「ノーコがアザナエルを撃って、その願いがなんだか、ついさっきまではわかりませんでした」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/100400030nki">
「でも――きっと、これがそうなんだと思います」

{	St("C",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/100400040nki">
「オレたちの本。
　オレたちが、ここに来るまでの、道筋」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/100400050nki">
「だからもう、迷いません」

{	St("C",700, @0,@0,"bu似鳥_背張る_shout");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/100400060nki">
「今度こそ、絶対、成功させてみせます！！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/100400070mrp">
「……良い顔してるじゃない」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/100400080fjr">
「あ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2311);}

	TextBoxDelete(150);
	DeleteAllSt(200,true);


//	CreatePlainSP("揺用", 20005);


//◆演出指定：空を見上げる
//おがみ：β要演出箇所：優先度Ａ　雪降り始め演出　もうちょっと強化したい



	OnBG(10,"bg0107200秋葉原_遠景_閉店");
	CreateTextureEX("絵背景20006", 11, 0, 0, "cg/bg/l/bg0108200秋葉原_俯瞰_閉店_l.jpg");
	SnowDrop(1000);


	Move("絵背景20006", 15000, -500, -300, null, false);
	Fade("絵背景20006", 1000, 1000, null, true);

//	Delete("揺用");


	Wait(10000);
	FadeBG(0,true);
	Fade("絵背景20006", 2000, 0, null, true);

//※下倉注：ここで秋葉原遠景に雪のエフェクト……？




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("C",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/100400090fjr">
「雪……！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/100400100adi">
「今年初めて……かな？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/100400110nki">
「マズい！　急がないと――！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/100400120mrp">
「え？　急ぐって――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//	SnowDropDelete(1000);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	SetVolumeEX("SE*", 1000, 0, null);


//◆場所：半田明神_鳥居_ペンキ
	OnBG(10,"bg0602211半田明神_鳥居_ペンキ");
	FadeBG(0,true);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg0602211半田明神_鳥居_ペンキ.jpg");
	Move("絵背景100", 0, @0, -780, AxlDxl, true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);
	Wait(500);

	SoundPlay("@xbgm30",0,450,true);

//◆ＳＥ：マシンガン乱射
	CreateSE("SE01","se銃_マシンガン乱射_l");
	MusicStart("SE01",0,700,0,1000,null,true);


	EffectZoomadd(10000, 300, 1000, "cg/ef/efペイント弾飛来.jpg", true);
	EffectZoomadd(10000, 300, 1000, "cg/ef/efペイント弾飛来.jpg", true);
	EffectZoomadd(10000, 300, 1000, "cg/ef/efペイント弾飛来.jpg", true);
	EffectZoomadd(10000, 300, 1000, "cg/ef/efペイント弾飛来.jpg", true);
	EffectZoomadd(10000, 300, 1000, "cg/ef/efペイント弾飛来.jpg", true);
	EffectZoomadd(10000, 300, 1000, "cg/ef/efペイント弾飛来.jpg", true);
	EffectZoomadd(10000, 300, 1000, "cg/ef/efペイント弾飛来.jpg", true);


//	Wait(2000);

	SetVolumeEX("SE*", 1000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("ML",700, @0,@0,"buみそa_オラオラ_angry");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/100400130mso">
「どりゃあああああああああ！！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_オラオラ_angry");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/23/100400140buu">
「うりゃあああああああああ！！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/100400150mrp">
「な……なにあれ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu鈴_通常_happy");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/100400160fjr">
「なんか楽しそうっ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/100400170adi">
「っていうか鳥居が――黄色い？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/100400180nki">
「説明は後回しです！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


{	ClockPass(2312);}

	Delete("絵背景100");
//◆場所：半田明神_境内_ペンキ
	OnBG(10,"bg0603200半田明神_境内_ペンキ");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

	Wait(500);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("C",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/100400190mrp">
「黄色いのは鳥居だけじゃない――」

{	St("C",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/100400200mrp">
「さすがにこれじゃ、ちょっと見栄えが悪いわね」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buＡＤ_通常_angry");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/100400210adi">
「ですね……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/100400220nki">
「そのための、雪です」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/100400230mrp">
「そのための……？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/100400240nki">
「ペイント弾が塗ったのは本殿の屋根と、石畳。
　雪が厚く積もってしまえば、覆い隠せます」

{	St("C",700, @0,@0,"bu似鳥_背張る_smile");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/100400250nki">
「ま、鳥居は無理なんで、いっそ黄色く塗っちゃうことになりましたが……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("C",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/100400260nki">
「ちなみに、雪の効果はそれだけじゃありません」

{	St("C",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/100400270nki">
「深く積もった雪には吸音効果があって、辺りいっぱいに雪が積もれば、大音量の音も吸い込むはず――」

{	St("C",700, @0,@0,"bu似鳥_通常_happy");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/100400280nki">
「いやまあ、全部名探偵の受け売りなんですが……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/100400290fjr">
「でもそれってまるで、雪を積もらせること前提の物言いよね？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_背張る_happy");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/100400300nki">
「神様が味方ですから」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2313);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/100400310adi">
「神様？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/100400320mrp">
「……ＯＫ、わかったわ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/100400330adi">
「ミリＰさん、わかっちゃったんですか！？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミリＰa_通常_shout");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/100400340mrp">
「あんなモノ見せられた後よ！
　今さらその程度で驚いてられますかっての！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("C",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/100400350mrp">
「ほらゴンちゃん！
　積もる前に、準備終わらせちゃうわよ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/100400360adi">
「は、はいっ！　わかりましたあっ！！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/100400370fjr">
「どれどれ、それじゃあアタシも――」

{	DeleteAllSt(200,true);
	CreateSE("SE01","seメカ_車_トラック停車");
	MusicStart("SE01",1000,700,0,1000,null,false);}
　富士見鈴が振り返るのに合わせるように、神社の裏から一台のトラックがやってくる。

{	St("ML",700, @-100,@0,"bu村崎_通常_happy");
	Shake("@StNameML/ML*", 300, 0, 8, 0, 0, 1000, Dxl1, false);
	Move("@StNameML/ML*", 200, @100, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/23/100400380msi">
「お、お待たせしましたッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	DeleteAllSt(200,false);
	St("MR",700, @100,@0,"buバリー_通常_happy");
	Shake("@StNameMR/MR*", 300, 0, 8, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 200, @-100, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【バリー・ヘリントン】
<voice name="バリー・ヘリントン" class="バリー・ヘリントン" src="voice/23/100400390e03">
「荷物！　降ろす！　愛のタメ！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/100400400fjr">
「オッケー。
　今日だけは、過去のことを水に流すわ」

{	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/100400410fjr">
「さあ、スーパーノヴァバイト諸君！
　今からチョートッキューで会場設営よ！」

{	St("C",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/100400420fjr">
「なんとしても年越しライブ『スーパー・スーパーノヴァ』を、成功させるんだからッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


//◆時間：ジャンプ
{	ClockPass(2317);}
	Wait(1000);

//◆場所：半田明神_社務所
	OnBG(10,"bg0604100半田明神_社務所_通常");
	FadeBG(0,true);


	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

	WaitKey(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("C",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/100400430mrp">
「会場設営ＯＫ、雪もＯＫ、放送もＯＫ」

{	St("C",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/100400440mrp">
「フウリちゃんの到着はノーコちゃん信じるとして、あとはどうやってライブの情報を拡散させるか――」

{	St("C",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/100400450mrp">
「事務所の人間に、メルマガで告知しろって言っといたけど、読んでる人とはターゲットが違うし……」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/100400460mrp">
「鈴ちゃんは、なんとかなりそう？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/100400470fjr">
「お店のお客さんにも、特別ライブだから友達呼んでー、とは言っておきましたけど――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：メール
	CreateSE("SE01","seメカ_携帯_メール着信_似鳥_l");
	MusicStart("SE01",0,500,0,1000,null,false);

	TextBoxDelete(150);
	DeleteAllSt(200,true);


	Wait(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("C",700, @0,@0,"bu似鳥_背張る_smile");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/100400480nki">
「あ、来た来た！」

{	SetVolumeEX("SE*", 10, 0, null);
	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,400,0,1000,null,false);
	St("C",700, @0,@0,"bu似鳥_背張る_happy");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/100400490nki">
「ウシ！　良い感じ良い感じ――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/100400500mrp">
「ん？　ガッツポーズなんてして、どうしたの？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/100400510nki">
「ミリＰさん！　鈴さん！
　あとついでにバリーさんも！　写真いいですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/100400520fjr">
「ちょっと！　この忙しいときに写真なんて――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_背張る_smile");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/100400530nki">
「違うんです！　コレ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/100400540mrp">
「え？　コレは……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_背張る_smile");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/100400550nki">
「ダベッターってＳＮＳ。知ってるでしょ？」

{	St("C",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/100400560nki">
「実はオレの友人の大刀刃那ってヤツが、アキバ系の中で結構有名で。ああ、そいつ沙紅羅の弟なんだけど」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
{	St("C",700, @0,@0,"bu似鳥_背張る_happy");
	FadeSt("C",200,true);}
//【似鳥戴斗】
[text0140]
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/100400570nki">
「そいつに協力を頼んだら、ホラ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/100400580fjr">
「なになに……？
　『ＲＤ：第一宇宙速度緊急年越しライブｉｎ半田明神』」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/100400590fjr">
「『ゆるキャラバンで話題騒然、フウリちゃんのカウントダウンライブ＜スーパー・スーパーノヴァ＞』」

{	St("ML",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/100400600fjr">
「『あのミリＰさんがプロデュース！　バリー・ヘリントン他ゲスト多数。秋葉原新マスコット発表もあり！』」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2318);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/100400610fjr">
「『今晩２３：５０開始！
　ニヤ生でも同時中継を予定！　皆、見逃すな！！』」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/100400620mrp">
「って、今もＲＤの数がどんどん増えてるけど――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_背張る_smile");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/100400630nki">
「大刀刃那に協力して、色んな人が拡散してるってこと」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/100400640nki">
「ダベッターだけじゃなく、ブログとか掲示板にも告知が広まってるみたいだし――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_smile");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/100400650mso">
「参道も、ライブ待ちの客でいっぱいだ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_happy");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/23/100400660buu">
「ってか、大刀刃那さんの知り合いとかすげぇな！
　今度、紹介してくれる？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_背張る_smile");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/100400670nki">
「別にいいけど――ま、それより先に写真！」

{	DeleteAllSt(200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/100400680nki">
「じゃ、撮りますよー！
　みんな、こっち見て！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/100400690nki">
「せーのっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：写真撮る

	CreatePlainSP("揺用2", 18000);

	ClockDelete(0,true);
	ClockTime(2318);

	CreatePlainSP("揺用", 105);
	SetShade("揺用", HEAVY);

	CreateColorSP("絵色100", 16500, "BLACK");
	Move("絵色100", 0, @768, @0, null, true);
	CreateColorSP("絵色200", 16500, "BLACK");
	Move("絵色200", 0, @-768, @0, null, true);


	CreateTextureEX("絵背景100", 120, 354, 69, "cg/bu/buミリＰa_ショータイム_happy.png");
	Request("絵背景100", Smoothing);
	Zoom("絵背景100", 0, 900, 900, null, true);
	CreateTextureEX("絵背景200", 110, 60, -64, "cg/bu/buバリー_通常_normal.png");
	Request("絵背景200", Smoothing);
	Zoom("絵背景200", 0, 800, 800, null, true);
	CreateTextureEX("絵背景300", 120, 162, 80, "cg/bu/bu鈴_シリアス_smile.png");
	Fade("絵背景100", 0, 1000, null, true);
	Fade("絵背景200", 0, 1000, null, true);
	Fade("絵背景300", 0, 1000, null, true);

	CreateSE("SE01","seメカ_携帯_カメラチャイム");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("揺用3", 17000);

	CreateColorSP("黒幕１", 19000, "BLACK");
	DrawTransition("黒幕１", 50, 0, 1000, 100, null, "cg/data/slide_05_00_0.png", true);

	Delete("揺用2");

	DrawDelete("黒幕１", 50, 100, null, "slide_05_00_0", true);


	WaitKey(1500);

	CreatePlainSP("揺用2", 18000);
	ClockPass(2318);
	Delete("揺用");
	Delete("揺用3");
	Delete("絵色*");
	Delete("絵背景*");
	Fade("揺用2", 500, 0, null, true);
	Delete("揺用2");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0171]
{	St("C",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/100400700nki">
「よし、コレを大刀刃那に添付して……と」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/100400710mrp">
「えーと、なんだかよくわかんないけど、雪もじゃんじゃん降ってるし、ともかくこれで上手くいきそう――」

{	ClockPass(2319);}

//◆ＳＥ：メール
{
	CreateSE("SE01","seメカ_携帯_メール着信_鈴_l");
	MusicStart("SE01",0,400,0,1000,null,true);
	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/100400720fjr">
「あ……電話？　ニコちゃんから！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);

	SetVolumeEX("@xbgm30", 2000, 250, null);
	SetVolumeEX("SE*", 10, 0, null);
	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,400,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/100400730fjr">
「もしもし？　ニコちゃん？　どう？　大丈夫？」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/100400740fjr">
「……え？　あ、あの、もっかい言ってくれる？」

{	St("C",700, @0,@0,"buミリＰa_ショータイム_pinch");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/100400750mrp">
「なにか、トラブルでも？」

{	DeleteAllSt(200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/100400760fjr">
「雪で……」

{	St("C",700, @0,@100,"bu鈴_もじゃ_shock");

	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);

	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/100400770fjr">
「急な雪で、車が立ち往生してるううううう！！？？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);


/*
	St("C",700, @0,@0,"buミリＰa_通常_normal");
	St("C",700, @0,@0,"buみそa_通常_normal");
	St("C",700, @0,@0,"buブーa_通常_normal");
	FadeSt("C",200,true);
	FadeSt("C",200,true);
	FadeSt("C",200,true);
*/

/*
//◆音声指示：同時
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/100400780mrp">
「ええええええええええッッ！！？？」

//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/100400790mso">
「ええええええええええッッ！！？？」

//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/23/100400800buu">
「ええええええええええッッ！！？？」

*/

	CreateSE("SE01","se擬音_ギャグ_ドーン");

//窓準備
	CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef_カット汎用01.jpg");

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 19100, center, middle, "cg/bu/buみそa_通常_fear.png");
	CreateTextureEX("絵窓/絵演立絵2", 19100, center, middle, "cg/bu/buブーa_通常_shock.png");
	CreateTextureEX("絵窓/絵演立絵3", 19100, center, middle, "cg/bu/buミリＰa_ショータイム_angry.png");
	Move("絵窓/絵演立絵", 0, @-100, @0, null, true);
	Move("絵窓/絵演立絵2", 0, @100, @0, null, true);
	Move("絵窓/絵演立絵3", 0, @0, @100, null, true);
	Move("絵窓/絵演立絵*", 0, @0, @70, null, true);

	CreateTextureEX("絵背景枠01", 19200, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 19200, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");

	CutInLine02("@絵背景枠*");

	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 200, @0, 80, Dxl2, false);
	Move("絵背景枠02", 200, @0, 464, Dxl2, false);

//動作
	MusicStart("SE01",0,700,0,1000,null,false);
	Zoom("絵窓", 200, 1000, 1000, Dxl2, true);
	Move("絵窓/絵演立絵", 300, @-250, @0, Dxl2, false);
	Fade("絵窓/絵演立絵", 300, 1000, null, false);

	Move("絵窓/絵演立絵2", 300, @250, @0, Dxl2, false);
	Fade("絵窓/絵演立絵2", 300, 1000, null, false);

	Move("絵窓/絵演立絵3", 300, @0, @-100, Dxl2, false);
	Fade("絵窓/絵演立絵3", 300, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//◆音声指示：同時
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/100400780">
「「「ええええええええええッッ！！？？」」」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
//	DeleteAllSt(200,true);

	Move("絵背景枠01", 100, @0, 262, null, false);
	Move("絵背景枠02", 100, @0, 262, null, false);
	Zoom("絵窓", 100, 1000, 0, null, true);
	Fade("絵背景枠*", 100, 0, null, true);
	Delete("絵窓*");
	CutInLineStop02();
	Delete("絵背景枠*");

	EndScene();
}
