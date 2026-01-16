
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2010似鳥.nss_MAIN
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
	$GameName = "2020カゴメ1.nss";
//	$GameCircle=false;

}

scene 2010似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1690">
////////////header////////////
//file name "2010似鳥.nss"
//title "絶好のチャンス"
//previous "2000似鳥.nss"


////////////footer////////////

//next "似鳥" "2020カゴメ1.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

	SoundPlay("@xsong01",2000,450,true);


{	ClockPass(2010);}

//◆場所：バックギャモン_店内
	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);

	CreateSE("SE10","seガヤ_AV_l");
	MusicStart("SE10",4000,100,0,1000,null,true);

	if($PreGameName=="2000似鳥.nss"){
	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);
	}else{
	FadeDelete("上背景", 0, null, true);
	}




//◆演出指定：ＢＧＭにＡＶの声流しながら、しばらく無言


	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300010nki">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

//◆演出指示：以下の地の文、演出でフォローできるかな？　澱みきった空気を、テレビスピーカーから流れる嬌声だけが揺らしていた。店の奥には、村崎が鼻血を流して倒れている。


//マスク準備
	CreateTextureEX("絵マスク枠", 6610, 0, 0, "cg/mask/ciスラッシュ_05_01z.png");
	CreateTextureEX("絵マスク枠2", 6610, 0, 0, "cg/mask/ciスラッシュ_05_01z.png");
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureEX("絵マスク/絵演背景", 6520, 300, 0, "cg/img/imgノビている村崎.jpg");
	Request("絵マスク/絵演背景", Smoothing);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);

//動作準備
	Move("絵マスク枠", 0, 1024, 0, null, true);
	Move("絵マスク", 0, 1024, 0, null, true);
	Fade("絵マスク枠", 0, 1000, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);

	Wait(200);

//イン動作
	Move("絵マスク*", 200, 0, 0, null, false);
//	Move("絵マスク枠", 2500, 0, 0, null, false);

	Move("絵マスク/絵演背景", 5000, @-200, @0, null, false);
	Wait(1000);
	WaitKey(3000);

//アウト動作
	Move("絵マスク", 200, 1024, 0, Axl1, false);
	Move("絵マスク枠", 200, 1024, 0, Axl1, true);
	Delete("絵マスク*");

	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300020nki">
（あのとき、電話の向こうで殴られたまま？）

{	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300030nki">
（ってか、双六はどこに……？）

{	DeleteAllSt(200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300040ksr">
「ここだ」

{
	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	FadeSt("C",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300050nki">
「――っ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);


//窓準備
	CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 1520, Center, Middle, "cg/bg/bg1002100バックギャモン_店内_通常.jpg");
	Request("絵窓/絵演背景", Smoothing);
	SetShade("絵窓/絵演背景", HEAVY);
	Zoom("絵窓/絵演背景", 0, 2000, 2000, null, true);

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1910, center, middle, "cg/bu/bu双六a_横向き_normal.png");
	Move("絵窓/絵演立絵", 0, @-250, @150, null, true);

	CreateTextureEX("絵背景枠01", 2200, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 2200, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");

//動作
	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 200, @0, 80, Dxl2, false);
	Move("絵背景枠02", 200, @0, 464, Dxl2, false);
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	Move("絵窓/絵演立絵", 400, @100, @-150, Dxl2, false);
	Fade("絵窓/絵演立絵", 400, 1000, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　カウンターから、ひょいと河原屋双六が顔を上げる。

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300060ksr">
「見るか？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300070nki">
「え？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300080ksr">
「無修正」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	SetVolumeEX("SE10", 1000, 200, null);

WaitKey(100);


{	ClockPass(2011);}

	Fade("絵背景枠01", 100, 0, null, false);
	Fade("絵背景枠02", 100, 0, null, false);
	Move("絵背景枠01", 200, @0, 250, null, false);
	Move("絵背景枠02", 200, @0, 250, null, false);
	Zoom("絵窓", 200, 1000, 0, null, true);
	Delete("絵窓*");
	Delete("絵背景枠*");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　カウンターの下から、桃色の光源が頬を照らしていた。

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300090nki">
「い……いえ。あの、い、いいです」

{	DeleteAllSt(200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300100ksr">
「嫌いか？　ゲイか？　そっちのもある――」

{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300110nki">
「そうじゃないです」

{	DeleteAllSt(200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300120ksr">
「そうか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：無言でＡＶ流れる。たぶんロクローさんのパロディＡＶ「きす☆たら」

	SetVolumeEX("SE10", 3000, 700, null);



	WaitKey(2500);

	SetVolumeEX("SE10", 2000, 100, null);


	St("ML",700, @0,@0,"fu似鳥_通常_worry");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300130nki">
「…………」

{	DeleteAllSt(200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300140ksr">
「…………」

{	St("ML",700, @0,@0,"fu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300150nki">
「あ、あの――」

{	DeleteAllSt(200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300160ksr">
「やっぱり見るか？」

{	St("ML",700, @0,@0,"fu似鳥_通常_angry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300170nki">
「違います！　それより例の――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300180ksr">
「焦んなよ。いいトコだ」

{	St("ML",700, @0,@0,"fu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300190nki">
「…………」

{	DeleteAllSt(200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300200ksr">
「セックス好きか？」

{	St("ML",700, @0,@0,"fu似鳥_通常_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300210nki">
「…………」

{	DeleteAllSt(200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300220ksr">
「まさか童貞？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("ML",700, @0,@0,"fu似鳥_通常_sad");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300230nki">
「…………」

{	DeleteAllSt(200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300240ksr">
「まあ、どっちでもいいけどよ」

{	St("ML",700, @0,@0,"fu似鳥_通常_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300250nki">
（くそっ！　なんなんだよ、こいつ……）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300260nki">
（そんなＡＶなんて、どうでもいいだろ！）

{	DeleteAllSt(200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300270ksr">
「まあおちつけ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300280ksr">
「ＡＶな、毎日流すと飽きる。麻痺してくんだわ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300290ksr">
「近づいて、細かくなって、分解されて、見えなくなる」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300300ksr">
「肉と肉が擦れて何がエロいのか、わかんなくなる」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300310ksr">
「そっからが、本番だ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300320ksr">
「人間はな、無意味に堪えらんねぇ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2012);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300330ksr">
「メーカー、環境音、カメラ、カット、構成、男優、女優、声、演技、湿り具合、光り加減、射精の瞬間、精液」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300340ksr">
「ひとつひとつの断片は、ただの断片だ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300350ksr">
「でもそっから、全体が立ち現れる瞬間がある」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300360ksr">
「ひとりの女が、新たな命を宿すために、全身を傾けるその瞬間から、そいつの人生がポン！　って」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300370ksr">
「ストーリーが、出来上がる。そういう瞬間があんだ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300380ksr">
「セックスは、そういうもんなんだ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300390ksr">
「女にとっちゃな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xsong01", 2000, 0, null);


//◆演出指定：ここでＡＶが切れて立ち上がる
	SetVolumeEX("SE*", 2000, 0, null);
	CreateSE("SE01","se日常_物置く");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(500);
	St("MR",700, @0,@50,"bu双六a_通常_normal");
	Move("@StNameMR/MR*", 300, @0, @-50, Dxl1, false);
	FadeSt("MR",300,true);

	SoundPlay("@xbgm24",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300400ksr">
「じゃあ、男にとってのそれは、なんだ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300410nki">
「拳銃、返します。これで借金は消えますよね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300420ksr">
「コイツでちょいと仕事をしてもらわなきゃだめだ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300430nki">
「な……嘘ついたんですか？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_angry");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300440ksr">
「ブッ殺すぞてめぇ！！」

//◆ＳＥ：蹴る
{	St("MR",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300450ksr">
「双一親分が、そんな適当なこと抜かすわけねぇだろ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2013);}

	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300460nki">
「は…………はい」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300470ksr">
「親分はな、てめぇに夢を叶えるチャンスをやる、って言ったんだ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300480ksr">
「コレは言わば、夢を叶える福引き券」

{	St("MR",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300490ksr">
「当たるかどうかは、てめぇ次第だ」

{	CreateSE("SE01","se銃_薬莢落とす");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(200,true);}
　双六が放り投げたのは――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵演背景", 1000, Center, Middle, "cg/obj/objアザナエル弾丸.png");
	Move("絵演背景", 0, @0, @120, null, true);

	Move("絵演背景", 300, @0, @-120, DxlAuto, false);
	Fade("絵演背景", 300, 1000, null, true);

	Wait(1000);

	FadeDelete("絵演背景", 500, null, true);

	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300500nki">
「弾……？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300510ksr">
「ただの弾じゃない」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300520ksr">
「籠の底で拾い集めた空薬莢に、丁寧に火薬を詰めた、特別製だ」

{	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300530ksr">
「ここに、もう１発ある」

{	DeleteAllSt(200,true);}
　その指に、似鳥が受け取ったのと同じ弾丸がもう１発。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	St("ML",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300540nki">
「それで？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300550ksr">
「アザナエルを出せ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300560nki">
「…………」

{	DeleteAllSt(200,true);
	CreateSE("SE01","se動作_ジッパー開ける01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
//◆ＳＥ：ジッパーを開ける
　ジッパーの狭間から、鈍く光る銃身が覗く。

{	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300570ksr">
「どうだ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2014);}


	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300580nki">
「…………」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300590ksr">
「重いだろ？　思ったより」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300600nki">
「……はい」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300610ksr">
「弾の籠め方、わかるか？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300620nki">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


/*
	TextBoxDelete(150);

	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300630ksr">
「手元のサムピース、押せ。そう、それだ」

{	CreateSE("SE01","se銃_セーフ解除");
	DeleteAllSt(200,true);
	MusicStart("SE01",0,1200,0,1000,null,false);
	Wait(300);
	St("ML",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300640nki">
「…………」

*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300650ksr">
「シリンダに弾、籠めろ」

{	CreateSE("SE01","se銃_シリンダー装填");
	DeleteAllSt(200,true);
	MusicStart("SE01",0,1200,0,1000,null,false);
	Wait(300);
	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300660nki">
「…………」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300670ksr">
「まわせ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 1000, 0, null);

	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300680nki">
「……まわす？」

{	St("ML",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300690nki">
「どうして？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300700ksr">
「テレビとか映画とかで、見たことあるだろ？」

{	St("MR",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300710ksr">
「ロシアンルーレットだ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300720nki">
「――――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SoundPlay("@xbgm06",0,450,true);

	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300730nki">
「……冗談、ですよね？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300740ksr">
「本気だぜ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300750nki">
「オレ……こんなところで、そんな真似……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300760ksr">
「てめえの人生はな」

{	St("MR",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300770ksr">
「クソだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2015);}

	TextBoxDelete(150);
	DeleteAllSt(200,true);


	CreateTextureEX("絵マスク枠", 2010, center, middle, "cg/mask/ciスラッシュ_05_00z.png");
	CreateStencil("マスク０",16100,center,Middle,128,"cg/mask/ciスラッシュ_05_00.png",false);
	CreateTextureEX("マスク０/絵背景100", 1000, Center, Middle, "cg/bg/bg1002100バックギャモン_店内_通常.jpg");
	Zoom("マスク０/絵背景100", 0, 2000, 2000, null, true);
	SetShade("マスク０/絵背景100", HEAVY);
	CreateTextureEX("マスク０/キャラ双六", 1100, -100, Middle, "cg/bu/bu双六a_横向き_pride.png");


	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg1002100バックギャモン_店内_通常.jpg");
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	Rotate("絵背景100", 0, @0, @180, @0, null,true);
	Move("絵背景100", 0, @-150, @-150, null, true);

	SetShade("絵背景100", HEAVY);
	CreateTextureEX("キャラ似鳥", 120, 400, Middle, "cg/bu/bu似鳥_眼鏡上げ_shock.png");

	Fade("絵マスク枠", 300, 1000, null, false);
	Fade("マスク０/絵背景100", 300, 1000, null, true);
	Move("マスク０/キャラ双六", 500, @-20, @0, Dxl2, false);
	Fade("マスク０/キャラ双六", 300, 1000, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300780ksr">
「漫然と毎日生きて、漠然と夢を見て」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300790ksr">
「逃げたって、死んでんのと同じだ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300800ksr">
「だったらなんで、死ぬのを怖がるんだよ？」

{	Fade("絵背景100", 300, 1000, null, true);
	Move("キャラ似鳥", 500, @20, @0, Dxl2, false);
	Fade("キャラ似鳥", 300, 1000, null, true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300810nki">
「……狂ってる」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300820ksr">
「はは、よくわかったな！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300830ksr">
「監視カメラ、あるだろ？
　あそこから、双一親分が見てる」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300840ksr">
「生と死が交錯するその瞬間」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300850ksr">
「人の命が光を放つその瞬間」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300860ksr">
「そのイカレた輝きを、見たいんだ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300870ksr">
「全部、双一親分の受け売りだがな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreatePlainSP("揺用", 15000);

	Delete("マスク０*");
	Delete("絵マスク枠");
	Delete("キャラ*");
	Delete("絵背景*");
	Fade("揺用", 300, 0, null, true);
	Delete("揺用");

//◆ＳＥ：ドン！
	CreateSE("SE01","se戦闘_打撃音04");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("揺用", 500);
	Shake("揺用", 300, 15, 5, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 300, 0, null, true);
	Delete("揺用");


	St("C",700, @0,@0,"bu似鳥_通常_angry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300880nki">
「ふざけんな！」

{	DeleteAllSt(200,true);}
　怒りにまかせて、アザナエルをカウンターに叩き付ける。

{	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300890nki">
「なんでオレが、じいさんひとりのために、命を懸けてロシアンルーレットなんて――！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300900ksr">
「ああ、そうだ悪い。教えるのを忘れてた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300910ksr">
「それは、ただのロシアンルーレットじゃない」

{	St("C",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300920ksr">
「カゴメアソビつってな」

{	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300930ksr">
「弾を籠めてトリガーを引く。
　そうすれば、銃口の先にいたヤツの願いが叶う」

{	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300940ksr">
「失敗して、鉛の弾が弾け飛ばなきゃな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2016);}

	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300950ksr">
「そういう呪いが、アザナエルには籠められてる」


{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300960nki">
「――――」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300970ksr">
「信じられないか？　んなわきゃねぇよな。
　触りゃあわかるはずだ」


{	St("C",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100300980ksr">
「そいつは、普通の銃じゃねぇ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100300990nki">
「――――」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu双六a_横向き_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301000ksr">
「なりたいものが、あんだろ？」

{	St("C",700, @0,@0,"bu双六a_横向き_sad");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301010ksr">
「でも、努力しない。できない」

{	St("C",700, @0,@0,"bu双六a_横向き_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301020ksr">
「そりゃなぜだ？」

{	St("C",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301030ksr">
「――怖いからだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301040ksr">
「打ち込んで、努力して、それでも望みが破れたとき、おまえはもうどこにもよりどころをなくしちまうからだ」

{	St("C",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301050ksr">
「そしてきっとおまえは、心の内のどこかで、自分の才能を信じ切れていないんだ」

{	St("C",700, @0,@0,"bu双六a_通常_pinch");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301060ksr">
「それでいいのか？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301070nki">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//おがみ：ＳＥ：シリンダー回る音
	CreateSE("SE00","se銃_シリンダー回転");
	MusicStart("SE00",0,700,0,1000,null,false);

//★カメラ設定
	CreateCamera("カメラ１", Center, Middle, 500);
	SetAlias("カメラ１","カメラ１");

	CreateTextureEX("カメラ１/絵背景100a", 500, Center, Middle, "cg/bu/l/st河原屋双六a_通常_normal_x09.png");
	CreateTextureEX("カメラ１/絵背景200a", 500, Center, Middle, "cg/bu/l/st河原屋双六a_通常_normal_x09.png");
	CreateTextureEX("カメラ１/絵背景100c", 400, Center, Middle, "cg/bu/l/st似鳥_通常_pinch.png");
	Request("カメラ１/絵背景100a", Smoothing);
	Request("カメラ１/絵背景200a", Smoothing);
	Request("カメラ１/絵背景100c", Smoothing);
	SetShade("カメラ１/絵背景200a", HEAVY);
	Move("カメラ１/絵背景100a", 0, @100, @450, null, true);
	Move("カメラ１/絵背景200a", 0, @100, @450, null, true);
	Move("カメラ１/絵背景100c", 0, @-1600, @400, null, true);

	WaitKey(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　双六は弾丸を確認すると、シリンダを回す。

　ルーレットが回り、止まる。

{	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301080ksr">
「ほらよ」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	Shake("@StNameML/ML*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301090nki">
「――――っ」

{	DeleteAllSt(200,true);}
　双六は準備の整ったアザナエルを再び似鳥の手に戻すと、ゆっくりと距離を開ける。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	CreatePlainSP("上背景", 2005);


	CreateTextureEX("カメラ１/絵背景100b", 300, center, Middle, "cg/bg/bg1002100バックギャモン_店内_通常.jpg");
	CreateTextureEX("カメラ１/絵背景200b", 300, 0, Middle, "cg/bg/bg1002100バックギャモン_店内_通常.jpg");
	Request("カメラ１/絵背景100b", Smoothing);
	Request("カメラ１/絵背景200b", Smoothing);
	Zoom("カメラ１/絵背景100b", 0, 3000, 3000, null, true);
	Zoom("カメラ１/絵背景200b", 0, 3000, 3000, null, true);
	SetShade("カメラ１/絵背景200b", HEAVY);
	Move("カメラ１/絵背景100b", 0, @-400, @0, null, true);
	Move("カメラ１/絵背景200b", 0, @-400, @0, null, true);


	Fade("カメラ１/*", 0, 1000, null, true);
	Fade("カメラ１/絵背景200b", 0, 0, null, true);
	MoveCamera("@カメラ１", 0, @-150, @0, @0, null, true);


//	CreateMovieEX("ムービー１", 5000, Center, Middle, true, true, "dx/mvk100.ngs");
//	Request("ムービー１", AddRender);
//	Zoom("ムービー１", 0, 3000, 3000, null, true);
//	Fade("ムービー１", 0, 1000, null, true);


	MoveFTP1("@カメラ１/*",7000,14,3);

	FadeDelete("上背景", 800, null, true);

	Wait(300);

	Fade("カメラ１/絵背景200b", 1000, 1000, null, false);
	Fade("カメラ１/絵背景200a", 1000, 0, null, true);

	Wait(200);

{	ClockPass(2017);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{
//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);
}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301100ksr">
「アザナエルで自分を撃つ――カゴメアソビ」

{
//	St("C",700, @0,@0,"bu双六a_通常_hard");
//	FadeSt("C",200,true);
}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301110ksr">
「そいつが、借金をチャラにする条件だ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301120ksr">
「命懸けのロシアンルーレット。
　弾が出る確率は、６分の１」

{
//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);
}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301130ksr">
「６人やったら５人が夢を叶えるんだ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301140ksr">
「オマケに借金もチャラ」

{
//	St("C",700, @0,@0,"bu双六a_通常_pride");
//	FadeSt("C",200,true);
}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301150ksr">
「絶好のチャンスだぜ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	MoveCamera("@カメラ１", 500, -1200, @0, @0, AxlDxl, false);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	DrawDelete("絵黒幕", 200, 100, null, "slide_01_01_1", true);


//	St("C",700, @0,@0,"bu似鳥_通常_pinch");
//	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301160nki">
「……もしも逃げれば？」

{
//	DeleteAllSt(200,true);
//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);
}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301170ksr">
「借金のカタに人生を奪われて、こう思うだろうな」

{
//	St("C",700, @0,@0,"bu双六a_通常_sad");
//	FadeSt("C",200,true);
}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301180ksr">
「『あの時死んだ方がまだマシだった』」

{
//	DeleteAllSt(200,true);
//	St("C",700, @0,@0,"bu似鳥_通常_worry");
//	FadeSt("C",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301190nki">
「…………」

{	ClockPass(2018);}

{
//	St("C",700, @0,@0,"bu似鳥_通常_sad");
//	FadeSt("C",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301200nki">
「オレは……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreatePlainSP("揺用", 15000);

	MoveFTP1stop();
	Delete("カメラ*");
	Delete("カメラ１/*");


	CreateTextureEX("絵枠", 5000, 0, 274, "cg/mask/ciウィンドウ横02.png");
	CreateWindow("絵ＷＬ", 3150, Center, 0, 1024, 288, true);
	SetAlias("絵ＷＬ","絵ＷＬ");
	CreateTextureSP("絵ＷＬ/絵背景Ｌ100", 3100, Center, middle, "cg/bg/bg1002100バックギャモン_店内_通常.jpg");
	CreateTextureSP("絵ＷＬ/絵ＳＴＬ", 3500, Center, -100, "cg/bu/bu双六a_通常_pride.png");
	Request("絵ＷＬ*", Smoothing);
	SetAlias("絵ＷＬ","絵ＷＬ");
	SetShade("絵ＷＬ/絵背景Ｌ100", HEAVY);

	CreateWindow("絵ＷＲ", 3150, Center, 288, 1024, 288, true);
	SetAlias("絵ＷＲ","絵ＷＲ");
	CreateTextureSP("絵ＷＲ/絵背景Ｒ100", 3100, Center, InBottom, "cg/bg/bg1002100バックギャモン_店内_通常.jpg");
	CreateTextureSP("絵ＷＲ/絵ＳＴＲ", 3500, 250, -100, "cg/bu/bu似鳥_通常_pinch.png");
	Request("絵ＷＲ*", Smoothing);
	SetAlias("絵ＷＲ","絵ＷＲ");
	SetShade("絵ＷＲ/絵背景Ｒ100", HEAVY);

	Rotate("絵ＷＲ/絵背景Ｒ100", 0, @0, @-180, @0, null,true);


	Rotate("絵枠", 300, @720, @0, @0, null,false);
	Fade("絵枠", 300, 1000, null, false);
	Move("絵ＷＬ/絵背景Ｌ100", 300, @0, @0, null, false);
	Move("絵ＷＲ/絵背景Ｒ100", 300, @0, @0, null, false);
	Move("絵ＷＬ/絵ＳＴＬ", 300, @200, @0, Dxl2, false);
	Move("絵ＷＲ/絵ＳＴＲ", 300, @-200, @0, Dxl2, false);

	Fade("揺用", 300, 0, null, true);
	Delete("揺用");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301210ksr">
「さあ！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301220nki">
「オレは――」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301230ksr">
「さあさあッ！！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301240nki">
「オレは――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01a","se戦闘_風切り音10");
	MusicStart("SE01a",0,700,0,1000,null,false);


//◆演出指定：似鳥、銃を河原屋双六に向ける
	CreatePlainSP("揺用", 15000);
	SetBlur("揺用", true, 3, 1000, 50, false);


	Delete("絵Ｗ*");
	Delete("絵枠");
	Delete("絵ＷＬ/*");
	Delete("絵ＷＲ/*");

	CreateTextureEX("絵背景200", 1000, 0, -576, "cg/ev/l/ev2020カゴメアソビ1a_l.jpg");
	CreateTextureEX("絵背景100", 120, Center, Middle, "cg/ev/ev2020カゴメアソビ1a.jpg");
	Fade("絵背景200", 0, 1000, null, true);


	Zoom("揺用", 200, 10000, 10000, null, false);

	FadeDelete("揺用", 200, null, true);

	CreateSE("SE02","se動作_着地");
	CreateSE("SE00","se銃_構える");
	CreateSE("SE01","se動作_足踏み");
	MusicStart("SE01",0,1500,0,1000,null,false);

	Wait(500);

	Move("絵背景200", 1000, @0, -520, null, false);

	Wait(850);
	MusicStart("SE02",0,1500,0,1000,null,false);
	Wait(150);
	MusicStart("SE00",0,1500,0,1000,null,false);
	Move("絵背景200", 300, @0, 0, AxlDxl, true);
	Fade("絵背景100", 0, 1000, null, true);

	Wait(500);

	Delete("絵Ｗ*");

	Fade("絵背景200", 800, 0, null, true);
	Delete("絵背景200");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301250nki">
「やっぱり、嫌だ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301260ksr">
「へぇ。そうやって――」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301270nki">
「動くな！　撃つぞ！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301280nki">
「６分の１……？　夢が叶う……？　ふざけんな」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301290nki">
「オレが６人に１人にならないって保証がどこにある？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301300ksr">
「次に鉛玉が出るとは限らねぇぞ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301310nki">
「弾が出るまでトリガーを引く！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301320nki">
「鉛弾が飛び出すか、オレの夢が叶っておまえが死ぬか」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301330nki">
「どっちにしろ、おまえは死ぬんだ！！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301340nki">
「それが嫌だったら、オレの借金をチャラに――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵マスク枠", 1910, center, middle, "cg/mask/ciスラッシュ_05_00z.png");
	CreateStencil("マスク０",16100,center,Middle,128,"cg/mask/ciスラッシュ_05_01.png",false);
	CreateTextureEX("マスク０/絵背景100", 1000, Center, Middle, "cg/bg/bg1002100バックギャモン_店内_通常.jpg");
	Zoom("マスク０/絵背景100", 0, 2000, 2000, null, true);
	SetShade("マスク０/絵背景100", HEAVY);

//おがみ：β調整済み
	CreateTextureEX("マスク０/キャラ双六", 1100, 350, 100, "cg/bu/bu双六a_横向き_pride.png");


	Fade("絵マスク枠", 300, 1000, null, false);
	Move("マスク０/キャラ双六", 300, @50, @-100, Dxl1, false);
	Move("マスク０/絵背景100", 300, @30, @-50, Dxl1, false);
	Fade("マスク０/絵背景100", 300, 1000, null, false);
	Fade("マスク０/キャラ双六", 300, 1000, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301350ksr">
「はははは！　おまえさ、見た目より賢いのな」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301360ksr">
「でもな、ひとつ間違いがあるんだよ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301370nki">
「……なんだと？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301380ksr">
「確かにアザナエルは、願いを叶える銃だ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301390ksr">
「だが願いが叶うのは、トリガーを引いたヤツじゃない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301400ksr">
「銃口の先にいた奴だ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301410nki">
「じゃあこうしろ！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301420nki">
「オレが、おまえの願いを叶えてやる！
　だから、オレの借金はチャラだ！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301430ksr">
「オレがもし、おまえの死を願っていたら？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301440nki">
「そんな願いを叶えて、なんの意味がある？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301450ksr">
「双一親分がそれを望むだろう」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301460nki">
「嘘だ！　馬鹿げてる！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301470ksr">
「そう思うなら、トリガーを引けばいい」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301480ksr">
「オレに撃てば、死の確率は６分の５」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301490ksr">
「自分に撃てば、死の確率は６分の１」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301500ksr">
「さて、オレが嘘をついている確率はいくつだ？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301510nki">
「そんなの……そんなの、知るか！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301520ksr">
「流されて、言い繕って、仕方なかったとオレを撃つか」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301530ksr">
「腹を決めて、狂いながら、夢を追って自分を撃つか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301540ksr">
「ふたつにひとつ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301550ksr">
「さあ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100301560ksr">
「てめぇが決めろ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2019);}

	CreateTextureEX("絵背景200", 2000, -200, 0, "cg/ev/l/ev2020カゴメアソビ1a_l.jpg");
	Fade("絵背景200", 1000, 1000, null, false);
	Move("絵背景200", 30000, 0, @0, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301570nki">
「わかってる」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301580nki">
「夢はただの夢で、オレはクズで、命になんの価値もなくて、これはたったひとつのチャンスで――」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301590nki">
「オレは、全部間違ってる」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301600nki">
「わかってる。わかってるんだよ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301610nki">
「でも、もううんざりだ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301620nki">
「今更、変えようがないだろ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301630nki">
「オレは、どこまでいってもオレだろ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301640nki">
「夢に向かって努力するとか……
　自分の才能を磨くとか……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301650nki">
「そんなの、無理なんだ……！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301660nki">
「オレはホントにクソで！　クズで！
　ヘタレで！　死んだ方が良くて！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301670nki">
「命を懸けることすらできないんだッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Delete("マスク０*");
	Delete("絵マスク枠");


	SetBlur("絵背景200", true, 2, 500, 50, false);
	Zoom("絵背景200", 500, 500, 500, Dxl2, false);
	Fade("絵背景200", 500, 0, Axl3, false);
	Move("絵背景200", 500, -512, -288, Dxl2, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301680nki">
「変わることなんて……できないんだあああッ！！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100301690nki">
「うおおおおおおおおおおおおお――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se擬音_銃光る");
	MusicStart("SE01",0,700,0,1000,null,false);

	TextBoxDelete(150);
	SetVolumeEX("@xbgm*", 50, 0, null);

	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateColorEX("絵色200", 15000, "BLACK");

	Fade("絵背景200", 50, 1000, null, false);
	Move("絵背景200", 300, 812, 1100, Axl1, false);
	Zoom("絵背景200", 300, 5000, 5000, Axl1, false);
	Fade("絵色100", 300, 1000, Axl2, true);

	Wait(3000);

	SetVolumeEX("SE*", 2000, 0, null);

	Fade("絵色200", 2000, 1000, Axl2, true);


	EndScene();
}
