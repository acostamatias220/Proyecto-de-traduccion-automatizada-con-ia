
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1940似鳥.nss_MAIN
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
	$GameName = "1950沙紅羅_似鳥.nss";
//	$GameCircle=false;

}

scene 1940似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1870">
////////////header////////////
//file name "1940似鳥.nss"
//title "暗闇の中で委託"
//previous "1930似鳥.nss"

////////////footer////////////
//next "似鳥" "1950沙紅羅_似鳥.nss"



////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆演出指定：以下の演出、所々1930沙紅羅.nssのコピペでＯＫな箇所アリ


//◆時間：ジャンプ
{	ClockPass(1941);}

//◆場所：あにのあな_正面_停電
	OnBG(10,"bg0301211あにのあな_正面_停電");
	FadeBG(0,true);
	CreateTextureSP("絵背景100", 100, Center, 0, "cg/bg/bg0301211あにのあな_正面_停電.jpg");
	#bg0301200あにのあな_正面_停電 = true;

	CreateSE("SE10","seガヤ_交通少_l");
	CreateSE("SE11","seガヤ_街中_l");
	MusicStart("SE10",2000,400,0,1000,null,true);
	MusicStart("SE11",2000,600,0,1000,null,true);

	Fade("上背景", 1000, 0, null, true);
	FadeDelete("上背景", 0, null, true);
	Wait(500);

	Move("絵背景100", 2500, @0, -1152, AxlDxl, true);

	Wait(500);

	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300010nki">
（中が暗い……？）

{	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300020nki">
（さっきの地震で停電でもしたのか？
　客商売なんだから、ちゃんとしろよな）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 1000, 0, null);

	TextBoxDelete(150);

	DeleteAllSt(200,true);

/*
	CreateSE("SE01","se戦闘_殴打連続01");
	CreateSE("SE02","se戦闘_殴打連続02");
	CreateSE("SE03","se戦闘_殴打連続01");
	CreateSE("SE04","se戦闘_殴打連続02");

	MusicStart("SE01",0,400,0,1000,null,false);
	CreatePlainSP("揺用", 2005);
	Shake("揺用", 1000, 15, 5, 0, 0, 1000, Dxl1, false);
*/

	CreateWindow("win01", 1500, 0, 96, 1024, 384, false);
	SetAlias("win01","win01");

	CreateTextureSP("win01/絵背景100", 1000, Center, Middle, "cg/bg/bg0302211あにのあな_店内_停電.jpg");
	Zoom("win01", 0, 1000, 0, null, true);
	Zoom("win01/絵背景100", 0, 1200, 1200, null, true);

	CreateTextureEX("絵背景枠01", 12000, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 12000, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");


	CutInLine02("@絵背景枠*");

	CreateSE("SE01","seガヤ_客暴動_l");
	MusicStart("SE01",1000,700,0,1000,null,true);


//動作
	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);

	Move("絵背景枠01", 200, @0, 80, Dxl2, false);
	Move("絵背景枠02", 200, @0, 464, Dxl2, false);
	Zoom("win01", 200, 1000, 1000, null, true);

	Shake("win01/絵背景100", 1000, 10, 10, 0, 0, 750, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆演出指定：とらのあな内部から阿鼻叫喚の声が聞こえる
//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/19/400300030e07">
「うおおおおおお！！」

{	Shake("win01/絵背景100", 500, 3, 2, 0, 0, 1000, null, false);}
//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/19/400300040e08">
「それはオレの本だあああ！！」

{	Shake("win01/絵背景100", 500, 3, 5, 0, 0, 1000, null, false);}
//【オタクＥ】
<voice name="オタクＥ" class="その他男声" src="voice/19/400300050e09">
「ＵＲＹＹＹＹＹＹ！！」

{	Shake("win01/絵背景100", 500, 10, 1, 0, 0, 1000, null, false);}
//【オタクＦ】
<voice name="オタクＦ" class="その他男声" src="voice/19/400300060e10">
「殺してでも奪い取る！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 1000, 0, null);

	Move("絵背景枠01", 100, @0, 262, null, false);
	Move("絵背景枠02", 100, @0, 262, null, false);
	Zoom("win01", 100, 1000, 0, null, true);
	Fade("絵背景枠*", 100, 0, null, true);
	Delete("win01*");
	CutInLineStop02();
	Delete("絵背景枠*");

	CreateSE("SE10","seガヤ_交通少_l");
	CreateSE("SE11","seガヤ_街中_l");
	MusicStart("SE10",2000,400,0,1000,null,true);
	MusicStart("SE11",2000,600,0,1000,null,true);

	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300070nki">
（なんか禍々しいけど……）

{	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300080nki">
（在庫を現金に換えないと……ああ、クソ！
　なんでオレがこんな目に）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 1000, 0, null);


	TextBoxDelete(150);

	DeleteAllSt(200,true);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateColorSPmul("絵停電色", 2999, "BLUE");
	Fade("絵停電色", 0, 300, null, true);

	Delete("絵背景100");
	OnBG(10,"bg0302211あにのあな_店内_停電");
	FadeBG(0,true);
	CreateColorSP("絵色黒幕１", 500, "BLACK");
	CreateColorSP("絵色黒幕２", 1500, "BLACK");
	DrawTransition("絵色黒幕２", 0, 500, 500, 200, null, "cg/data/circle_02_00_1.png", true);

	DrawDelete("絵黒幕", 300, 100, null, "blind_01_00_1", true);

{	ClockPass(1942);}

//◆場所：あにのあな_店内_停電
//◆ＳＥ：合戦ＳＥ・ホラ貝とか鳴る
	CreateSE("SE01","seガヤ_合戦_l");
	CreateSE("SE02","se擬音_ホラ貝");
	CreateSE("SE03","seガヤ_客暴動_l");

	MusicStart("SE01",1000,1000,0,1000,null,true);


	Wait(500);

	CreatePlainSP("揺用", 15000);
	Shake("揺用", 1000, 0, 18, 0, 0, 1000, Dxl1, false);
	FadeF4("揺用", 1000, 1000, 3000, 0, 0, Dxl1, false);
	Fade("揺用", 1000, 0, null, false);


	MusicStart("SE02",0,700,0,1000,null,false);
	MusicStart("SE03",0,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/19/400300090e07">
「うおおおおお！！」

//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/19/400300100e08">
「突撃ぃぃ！！」

//【オタクＥ】
<voice name="オタクＥ" class="その他男声" src="voice/19/400300110e09">
「ちぇすと――ッ！！」

//【オタクＦ】
<voice name="オタクＦ" class="その他男声" src="voice/19/400300120e10">
「天誅ッ！！」

{	Delete("揺用");
	SetVolumeEX("SE*", 2000, 400, null);
	St("C",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300130nki">
「合戦！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300140nki">
（停電のせいか……？
　っつーか、騒ぐなよ）

{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300150nki">
（店の中で騒がないとか、マナーだろ？　常識だろ？）

//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/19/400300160e07">
「邪魔だあっ！」

{	CreateSE("SE04","se戦闘_打撃音07");
	MusicStart("SE04",0,700,0,1000,null,false);
	St("C",700, @0,@0,"bu似鳥_通常_shock");
	Shake("@StNameC/C*", 200, 15, 0, 0, 0, 1000, Dxl1, false);
	FadeF4("@StNameC/C*", 1000, 1000, 3000, 0, 0, Dxl1, false);
//	Move("@StNameC/C*", 200, @0, @50, Dxl2, false);
	FadeSt("C",200,true);
	DeleteAllSt(200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300170nki">
「ぐはっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 3000, 0, null);

	TextBoxDelete(150);
	Wait(200);

	St("C",700, @0,@50,"bu似鳥_眼鏡上げ_mad");
	FadeSt("C",200,false);
	Move("@StNameC/C*", 400, @0, @-50, Dxl2, true);

	Wait(200);

	SoundPlay("@xbgm05",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300180nki">
（い、い……痛ぇじゃねぇか……）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300190nki">
（懐中電灯持ってるからって調子に乗って！）

{	St("C",700, @0,@0,"bu似鳥_通常_rage");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300200nki">
（ああああ、もう！　腹立つ！！）

{	St("C",700, @0,@0,"bu似鳥_ラッパー_rage");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300210nki">
「地元住民を、舐めんなあッ！！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300220nki">
「どけッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1943);}

	TextBoxDelete(150);

	Move("@StNameC/C*", 100, @-200, @0, Axl2, false);
	DeleteAllSt(100,true);

	CreateSE("SE01","se戦闘_打撃音06");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEXadd("揺用", 5000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	Fade("揺用", 0, 1000, null, true);
	Rotate("揺用", 0, @0, @180, @0, null,true);
	Zoom("揺用", 0, 1200, 1200, null, true);
	FadeF4("揺用", 500, 1000, 3000, 0, 0, Dxl1, false);
	Shake("揺用", 500, 5, 15, 0, 0, 1000, Dxl1, false);

	Fade("揺用", 350, 0, Axl1, true);
	Delete("揺用");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【オタクＥ】
<voice name="オタクＥ" class="その他男声" src="voice/19/400300230e09">
「ぎゃふんっ！」

{	St("C",700, @-200,@0,"bu似鳥_眼鏡上げ_mad");
	Move("@StNameC/C*", 100, @200, @0, Dxl2, false);
	FadeSt("C",100,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300240nki">
「邪魔なんだよッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	Move("@StNameC/C*", 100, @200, @0, Axl2, false);
	DeleteAllSt(100,true);

	CreateSE("SE01","se戦闘_打撃音07");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEXadd("揺用", 5000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
//	Rotate("揺用", 0, @0, @180, @0, null,true);
	Fade("揺用", 0, 1000, null, true);
	Zoom("揺用", 0, 1200, 1200, null, true);
	FadeF4("揺用", 500, 1000, 3000, 0, 0, Dxl1, false);
	Shake("揺用", 500, 5, 15, 0, 0, 1000, Dxl1, false);

	Fade("揺用", 350, 0, Axl1, true);
	Delete("揺用");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【オタクＦ】
<voice name="オタクＦ" class="その他男声" src="voice/19/400300250e10">
「ぬふぅっ！」

{	St("C",700, @200,@0,"bu似鳥_通常_pinch");
	Move("@StNameC/C*", 100, @-200, @0, Dxl2, false);
	FadeSt("C",100,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300260nki">
（１年３６５日――）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300270nki">
（雨の日も、風の日も、雪の日も――
　オレは、あにのあなに通い続けた！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",700, @0,@0,"bu似鳥_通常_angry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300280nki">
（各階のアルバイトの顔も、既にバッチリ覚えてる！）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300290nki">
（そんなオレが――
　最上階の買取カウンターまで辿り着くくらい――）

{
	Move("@StNameC/C*", 150, @0, @100, Axl1, false);
	DeleteAllSt(150,true);
	St("C",2000, @0,@100,"fu似鳥_通常_rage");
	Move("@StNameC/C*", 150, @0, @-100, Dxl1, false);
	FadeSt("C",150,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300300nki">
（目をつむってでも、できるんだよッ！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//おがみ：β調整済み


	TextBoxDelete(150);

	CreateSE("SE01","se戦闘_殴打連続01");
	CreateSE("SE02","se戦闘_殴打連続02");

	Move("@StNameC/C*", 150, @0, @50, Axl2, false);
	DeleteAllSt(150,true);

	CreateTextureEXadd("揺用", 5000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	Rotate("揺用", 0, @0, @180, @0, null,true);
	Zoom("揺用", 0, 1200, 1200, null, true);

	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("揺用", 0, 1000, null, true);
	FadeF4("揺用", 500, 1000, 3000, 0, 0, Dxl1, false);
	Shake("揺用", 500, 5, 15, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 350, 0, null, true);

	Rotate("揺用", 0, @0, @0, @180, null,true);
	Zoom("揺用", 0, 1200, 1200, null, true);
	Fade("揺用", 0, 1000, null, true);
	FadeF4("揺用", 500, 1000, 3000, 0, 0, Dxl1, false);
	Shake("揺用", 500, 5, 15, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 350, 0, null, true);

	MusicStart("SE02",0,700,0,1000,null,false);

	Rotate("揺用", 0, @0, @180, @0, null,true);
	Zoom("揺用", 0, 1200, 1200, null, true);
	Fade("揺用", 0, 1000, null, true);
	FadeF4("揺用", 500, 1000, 3000, 0, 0, Dxl1, false);
	Shake("揺用", 500, 5, 15, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 350, 0, null, true);
	Delete("揺用");

	Wait(1000);

	SetVolumeEX("@xbgm*", 2000, 0, null);


	St("C",700, @0,@50,"bu似鳥_通常_normal");
	Move("@StNameC/C*", 200, @0, @-50, Dxl2, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300310nki">
「ん――？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300320nki">
「人垣が……なくなってる？」

//◆演出指定：暗闇の向こうから聞こえる声
{	DeleteAllSt(200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/400300330skr">
「どーだ？　わかったか？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/400300340skr">
「このフロアは、アタシの<RUBY text="シマ">領地</RUBY>だッ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/400300350skr">
「福島最強！　月下に誇る狂い咲き！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/400300360skr">
「暴走集団百野殺駆<RUBY text="ヘッド">頭</RUBY>・月夜乃沙紅羅」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/400300370skr">
「夜露死苦ぅッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
//◆演出指定：シーン――
	CreateSE("SE01","se擬音_ギャグ_寒い風");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);
	WaitKey(500);

	SoundPlay("@xbgm22",0,450,true);


	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);

{	ClockPass(1944);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300380nki">
「おい、そこ……」

{	DeleteAllSt(200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/400300390skr">
「んぁ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/400300400skr">
「ナンダァ？　アタシがいい気分に浸ってるのに――」

{	St("C",700, @0,@0,"bu似鳥_通常_angry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300410nki">
「そこ、邪魔だ」

{	DeleteAllSt(200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/400300420skr">
「なんだと？」

{	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300430nki">
「邪魔だから退けって言ってんだ」

{	DeleteAllSt(200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/400300440skr">
「……いい根性してるじゃねーか」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/400300450skr">
「だが、勝手に通すワケには――」

{	St("C",700, @0,@0,"bu似鳥_通常_rage");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300460nki">
「いいから退けよおっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameC/C*", 200, @0, @50, Axl2, false);
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	DeleteAllSt(200,true);
//◆演出指定：つかみかかられる
	CreateSE("SE01","se人体_倒れる04");
	MusicStart("SE01",0,700,0,1000,null,false);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/400300470skr">
「ぐわっ！　ちょ！」

{	St("C",2000, @0,@50,"fu似鳥_通常_rage");
	Move("@StNameC/C*", 200, @0, @-50, Dxl2, false);
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300480nki">
「こっちは、こっちはな！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	St("C",2000, @0,@0,"fu似鳥_ラッパー_rage");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300490nki">
「オレの命がかかってるんだあああッ！」

{	DeleteAllSt(200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/400300500skr">
「うっせー！　知るかあッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：木刀バキッ！！
	St("C",700, @0,@0,"bu似鳥_通常_shock");

	CreateSE("SE01","se戦闘_風切り音05");
	CreateSE("SE02","se戦闘_打撃音07");

	CreateTextureEXadd("揺用", 5000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	Rotate("揺用", 0, @180, @0, @0, null,true);
	Zoom("揺用", 0, 1200, 1200, null, true);

	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/ef木刀剣閃a.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Wait(200);

	MusicStart("SE02",0,700,0,1000,null,false);

	Fade("絵背景100", 100, 0, null, false);
	Fade("揺用", 0, 1000, null, true);
	FadeF4("揺用", 500, 1000, 3000, 0, 0, Dxl1, false);
	Shake("揺用", 500, 5, 15, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 350, 0, null, true);


	Shake("@StNameC/C*", 200, 15, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @80, @50, Dxl1, false);
	FadeSt("C",200,true);

	Delete("絵背景100");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300510nki">
「んがッ！」

{	DeleteAllSt(200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/400300520skr">
「こっちだってなぁ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/400300530skr">
「血を分けた、弟の命がかかってんだよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_風切り音05");
	CreateSE("SE02","se戦闘_打撃音07");

	CreateTextureEXadd("揺用", 5000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	Rotate("揺用", 0, @180, @180, @0, null,true);
	Zoom("揺用", 0, 1200, 1200, null, true);

	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/ef木刀剣閃a.jpg");
	Rotate("絵背景100", 0, @0, @180, @0, null,true);
	Fade("絵背景100", 0, 1000, null, true);

	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Wait(200);

	MusicStart("SE02",0,700,0,1000,null,false);

	Fade("絵背景100", 100, 0, null, false);
	Fade("揺用", 0, 1000, null, true);
	FadeF4("揺用", 500, 1000, 3000, 0, 0, Dxl1, false);
	Shake("揺用", 500, 5, 15, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 350, 0, null, true);
	Delete("揺用");

	St("C",700, @80,@0,"bu似鳥_通常_shock");
	Move("@StNameC/C*", 200, @-80, @0, Dxl1, false);
	Shake("@StNameC/C*", 200, 15, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300540nki">
「どわっは！」

{	St("C",700, @0,@0,"bu似鳥_通常_pain");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300550nki">
「イデデデデ……」

{	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300560nki">
（ってか、何？　バールのようなもの！？）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300570nki">
（コイツ何者だ？　本気でオレを殺す気か？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/400300580skr">
「おいてめー！
　どーじんしってのは、どこで売ってる？」

{	St("C",700, @0,@0,"bu似鳥_通常_pain");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300590nki">
「…………」

{	DeleteAllSt(200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/400300600skr">
「どこで売ってっかって訊いてんだよ！」

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300610nki">
「４階から……７階だ」

{	DeleteAllSt(200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/400300620skr">
「いよっしゃ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 2000, 0, null);

	TextBoxDelete(150);

	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,1200,0,1000,null,false);

	WaitKey(1000);

	SetVolumeEX("SE*", 2000, 0, null);

	WaitKey(1500);


//◆ＳＥ：どたどたどたどた！　沙紅羅の走る足音
	St("C",700, @0,@0,"bu似鳥_通常_angry");
	FadeSt("C",200,true);

{	ClockPass(1945);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300630nki">
（なんだよ、今のバカ女……？　あー、腹立つ！
　ってか、普通いきなり人殴るか？）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300640nki">
（ああいう自己中のバカがいるから、周りが迷惑すんだ。
　きっと、周りに嫌われてんだぜ）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300650nki">
（ああ、アレ？　いわゆるひとつのＤＱＮってヤツ？
　きっと、パチンコ屋で子供置き去りにしたりすんだぜ）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300660nki">
（まったく、人間のくずだな……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_倒れる04");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	St("C",700, @0,@50,"bu似鳥_通常_pain");
	FadeSt("C",200,false);
	Move("@StNameC/C*", 500, @0, @-50, Dxl2, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300670nki">
「ん……んしょっ、くぅぅ……」

{	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300680nki">
「あー、痛ぇ……
　あいつ、本気で殴りやがって……」


{	St("C",700, @0,@0,"bu似鳥_通常_angry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300690nki">
「損害賠償求めるぞ、マジで」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	CreateSE("SE01","se戦闘_打撃音03");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/400300700mso">
「おいコラ」

{	St("C",700, @0,@0,"bu似鳥_通常_shock");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameC/C*", 200, @20, @50, Dxl1, false);
	Shake("@StNameC/C*", 300, 15, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300710nki">
「いでッ！」

{	DeleteAllSt(200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/400300720mso">
「姐さんどこ行ったか、しらねーか？」

{	St("C",700, @0,@50,"bu似鳥_通常_rage");
	Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	Shake("@StNameC/C*", 200, 15, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300730nki">
「知るかよ！」

{	DeleteAllSt(200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/400300740buu">
「なぁ、思い出してくれよォ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/400300750buu">
「木刀持った、カッコいいお姉様なんだぜ」

{	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300760nki">
「木刀？
　もしかして、バールのようなものじゃなくて……」

{	DeleteAllSt(200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/400300770mso">
「知ってんのか！？」

{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300780nki">
「さっき、オレをぶん殴って上の階に」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/400300790mso">
「よし、行くぞブー」

//【ブー】
<voice name="ブー" class="ブー" src="voice/19/400300800buu">
「ああ……」

{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300810nki">
（あれ？　このやりとり、どっかで聞いたような……）

{	DeleteAllSt(200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/400300820mso">
「おい？　どうしたブー」

//【ブー】
<voice name="ブー" class="ブー" src="voice/19/400300830buu">
「いや、ちょっとひっかかることが……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Wait(500);

//◆演出指定：ブー、ブラックライトを近づける

	DrawTransition("絵色黒幕２", 0, 500, 500, 200, null, "cg/data/slide_05_00_0.png", true);
	CreateColorSPover("絵色100", 1500, "#5500FF");

	St("L",700, @0,@100,"buみそa_通常_hard");
	St("R",700, @0,@100,"buブーa_通常_hard");
	Move("@StNameL/L*", 500, @0, @-100, Dxl1, false);
	Move("@StNameR/R*", 500, @0, @-100, Dxl1, false);
	FadeSt("L",500,false);
	FadeSt("R",500,true);

	Wait(500);


/*
//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/400300840buu">
「あ――！」

//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/400300850mso">
「あ――！」

//◆音声指示：同時
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300860nki">
「ぬあああああ！」

*/
	St("L",700, @0,@0,"buみそa_通常_angry");
	St("R",700, @0,@0,"buブーa_通常_angry");
	St("C",2001, @0,@100,"fu似鳥_通常_shock");
	Shake("@StNameL/L*", 200, 15, 0, 0, 0, 1000, Dxl1, false);
	Shake("@StNameR/R*", 200, 15, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("L",200,false);
	FadeSt("R",200,true);


	Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,false);



	SoundPlay("@xbgm05",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/400300840">
「あ――！」「あ――！」
「ぬあああああ！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300870nki">
「やべっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：ダッシュ
	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,1000,0,1000,null,true);

	Move("@StNameC/C*", 150, @300, @0, Axl1, false);
	DeleteSt("C", 150,true);

	Delete("絵色100");

	Wait(200);

	St("L",700, @0,@0,"buみそa_通常_angry");
	St("R",700, @0,@0,"buブーa_通常_angry");
	FadeSt("L",200,false);
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/400300880mso">
「にげんな！」

//【ブー】
<voice name="ブー" class="ブー" src="voice/19/400300890buu">
「待ちやがれ！」

{	DeleteAllSt(200,true);
	St("C",2001, @-200,@0,"fu似鳥_通常_pain");
	Move("@StNameC/C*", 150, @200, @0, Dxl1, false);
	FadeSt("C",150,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400300900nki">
（クソッ！　なんでよりによって、こんなところで！）

{	Move("@StNameC/C*", 150, @300, @0, Axl1, false);
	DeleteAllSt(150,true);}
　暗闇の中、似鳥は冷や汗を掻きながら階段を上る。

{	St("L",700, @0,@0,"buみそa_オラオラ_angry");
	St("R",700, @0,@0,"buブーa_オラオラ_angry");
	FadeSt("L",200,false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/400300910buu">
「てめーのせいで、散々だったんだぜ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1946);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/400300920mso">
「そうだそうだ！」

//【ブー】
<voice name="ブー" class="ブー" src="voice/19/400300930buu">
「あの双六とか言うバカにボコボコにぶん殴られてよ！」

//【みそ】
<voice name="みそ" class="みそ" src="voice/19/400300940mso">
「そうだそうだ！」

//【ブー】
<voice name="ブー" class="ブー" src="voice/19/400300950buu">
「オマケに、突然幼女を誘拐しろとか言われるしよ！」

//【みそ】
<voice name="みそ" class="みそ" src="voice/19/400300960mso">
「そうだそうだ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("R",700, @0,@0,"buブーa_通常_ero");
	FadeSt("R",200,false);
	Zoom("@StNameR/R*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameR/R*", 100, 1000, 1000, Axl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/400300970buu">
「それはちょっと興奮したけどよ！」

{	SetVolumeEX("SE01", 2000, 0, null);
	CreateSE("SE02","se人体_倒れる01");
	MusicStart("SE02",0,700,0,1000,null,false);
	St("L",700, @0,@0,"buみそa_通常_fear");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/400300980mso">
「それはまずいぞ！」

{	St("R",700, @0,@0,"buブーa_オラオラ_angry");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/400300990buu">
「とにかく、それもコレも、みんなてめーのせいだ」

{	St("L",700, @0,@0,"buみそa_オラオラ_angry");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/400301000mso">
「そうだそうだ！」

{	St("L",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/400301010mso">
「……で、アイツは誰だっけ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se擬音_ギャグ_ドーン");
	MusicStart("SE01",0,700,0,1000,null,false);


	St("R",700, @0,@0,"buブーa_通常_shock");
	Move("@StNameR/R*", 200, @0, @100, Dxl1, false);
	Shake("@StNameR/R*", 200, 15, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/400301020buu">
「ズコー！」

{	St("R",700, @0,@100,"buブーa_通常_pinch");
	Move("@StNameR/R*", 200, @0, @-100, AxlDxl, false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/400301030buu">
「なんだよ！　憶えてねーのかみそ！」

{	St("L",700, @0,@0,"buみそa_通常_angry");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/400301040mso">
「アホか！　オレが憶えてると思うか？」

{	St("R",700, @0,@0,"buブーa_通常_angry");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/400301050buu">
「思わねぇ！」

{	St("L",700, @0,@0,"buみそa_通常_pride");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/400301060mso">
「正解！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);
	St("C",2001, @0,@0,"fu似鳥_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301070nki">
（よし！　今のうち……）

{	DeleteAllSt(200,true);}
　似鳥はここぞとばかり、必死に階段を駆け上がった。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
//◆場所：あにのあな_店内_停電
	SetVolumeEX("@xbgm*", 3000, 0, null);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	OnBG(10,"bg0302200あにのあな_店内_停電");
	FadeBG(0,true);
	Delete("絵色黒幕*");
	Wait(500);

//おがみ：後で本番素材を確認　サクラの顔が見えないように調整
	CreateColorSP("絵色黒幕２", 1500, "BLACK");
	CreateColorSP("絵色黒幕３", 1500, "BLACK");
	DrawTransition("絵色黒幕２", 0, 500, 500, 200, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("絵色黒幕３", 0, 550, 550, 250, null, "cg/data/slide_06_00_0.png", true);
	Fade("絵色黒幕３", 0, 500, null, true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0251]
　途中の階には目もくれず、最上階に。

{	St("C",2001, @0,@0,"bu似鳥_眼鏡上げ_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301080nki">
「はぁっ、はぁっ……着いた……！」

{	SoundPlay("@xbgm24",0,450,true);
	St("C",2001, @0,@0,"bu似鳥_通常_shout");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301090nki">
「あ、あの！　すいません！」

{	DeleteAllSt(200,true);}
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/400301100e13">
「はい、いらっしゃいませ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",2001, @0,@0,"bu似鳥_通常_shout");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301110nki">
「あの、同人誌の買い切りをお願いしたいんですけど！」

{	DeleteAllSt(200,true);}
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/400301120e13">
「ええと、基本的に買い切りはこちらからご提案させていただくことになってるんですけれども……」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/400301130e13">
「これまで弊社で商品を取り扱わせていただいたことは？」

{	St("C",2001, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301140nki">
「それは……ないです」

{	DeleteAllSt(200,true);}
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/400301150e13">
「でしたら、最初は委託という形で」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/400301160e13">
「そちらで評判がよろしいようでしたら、こちらから買い切りのご相談をさせていただく形式になります」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	1940Nitori_VoiceSet(1000);
	1940Nitori_VoiceStart();


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301170nki">
（そんなんじゃ、間に合わない！）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301180nki">
（今日中に現金がないと、オレは家を追い出されて――）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301190nki">
（腎臓を売られたり、カニ漁につれてかれたり――）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301200nki">
（それは、絶対に嫌だ！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//◆演出指定：これらの台詞、上の台詞に被せる感じ？
//おがみ：β調整済み

//	1940Nitori_VoiceDelete(300);

{	ClockPass(1947);}

/*

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/400301210e13">
「ご不満も、ええ、あるかと思うんですが。
　そういう規則になっておりまして」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/400301220e13">
「とりあえずこちらの用紙にジャンルなど記入していただいて、はい、見本を査定させていただくと」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/400301230e13">
「まずはサークル名から、教えていただきたいんですが」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/400301240e13">
「あの……お客様？　聞いてらっしゃいますか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
*/
	St("C",2001, @0,@0,"bu似鳥_通常_angry");
	FadeSt("C",200,false);
	1940Nitori_VoiceDelete(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301250nki">
「２ｂｉｒｄって知らないんですか！？」

{	St("C",2001, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301260nki">
「ほら、半年前によつばちゃんねるで有名になった――
　<RUBY text="ピクシー">ＰＩＸＩ</RUBY>でも知る人ぞ知る！」

{	St("C",2001, @0,@0,"bu似鳥_通常_shout");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301270nki">
「だからチャンスなんですよ！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301280nki">
「最新刊！　『ＮＯ　ＣＯＮＴＲＯＬ』の１１！
　コレを逃すと機会なんてないんです！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/400301290e13">
「いや、でもこちらにも色々規則がありまして……」

{	St("C",2001, @0,@0,"bu似鳥_ラッパー_rage");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301300nki">
「バカ言わないでください！
　そういうのって損なんですよ！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301310nki">
「わかります？　聞いてます？
　黙ってないで、なんか話してく――」

{	DeleteAllSt(200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/400301320skr">
「ちょっと待ったあああああ！！」

{	St("C",2001, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301330nki">
「え？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指定：注釈：このシーンで、似鳥は沙紅羅が気合いの入ったヤンキー姿していることを知らない。

	DeleteAllSt(200,true);

	Wait(500);

	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/400301340skr">
「おまえ、ツーバードのどーじんしつったな？」

{	DeleteAllSt(200,true);
	St("MR",2001, @0,@0,"fu似鳥_通常_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301350nki">
「あ、その声――」

{	St("MR",2001, @0,@0,"fu似鳥_通常_angry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301360nki">
（さっきオレをぶん殴った、あの木刀女だ！）

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/400301370skr">
「頼む！　ツーバードのどーじんし！　売ってくれ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,true);
	St("MR",2001, @0,@0,"fu似鳥_通常_normal");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301380nki">
「へえ、探してたのか……売って欲しい？」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/400301390skr">
「売って欲しい！　頼む！　この通り！」

{	DeleteAllSt(200,true);
	St("MR",2001, @0,@0,"fu似鳥_通常_happy");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301400nki">
（買い手がついた……！）

{	St("MR",2001, @0,@0,"fu似鳥_通常_hard");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301410nki">
（でも……待てよ。
　１冊売れただけじゃ、なにも解決しねーだろ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("MR",2001, @0,@0,"fu似鳥_通常_smile");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301420nki">
（コイツには恨みもあるし、絞れるだけ絞らねーと……）

{	St("MR",2001, @0,@0,"fu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301430nki">
「どうしても、売って欲しい？」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/400301440skr">
「どうしても、売って欲しい！」

{	DeleteAllSt(200,true);
	St("MR",2001, @0,@0,"fu似鳥_通常_pinch");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301450nki">
「いくら出す？」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/400301460skr">
「いくらって……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);
	St("MR",2001, @0,@0,"fu似鳥_通常_normal");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301470nki">
「ただで貰える思ってるわけじゃねーだろ？」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/400301480skr">
「うぐ、うぐぐぐぐぐぐ……」

{	DeleteAllSt(200,true);
	St("MR",2001, @0,@0,"bu似鳥_通常_pride");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301490nki">
「しかもこの本は、市場では流通してない激レアモンだ」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/400301500skr">
「ぐぐぐ、ぐぐぐぐぐぐ……」

{	DeleteAllSt(200,true);
	St("MR",2001, @0,@0,"fu似鳥_通常_smile");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301510nki">
「どーしても欲しいっつーんなら……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/400301520skr">
「ふんぐ、ふぐぐぐぐぐ……」

{	DeleteAllSt(200,true);
	St("MR",2001, @0,@0,"fu似鳥_通常_shout");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301530nki">
「あんたの覚悟、見せてもらおうじゃねーの！」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/400301540skr">
「うがががががががががああああッ！！」

{	DeleteAllSt(200,true);
	St("MR",2001, @0,@0,"fu似鳥_通常_smile");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301550nki">
（困ってる困ってる！　ザマァ！
　因果応報ってやつだっつーの）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	St("MR",2001, @0,@0,"fu似鳥_通常_pride");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301560nki">
（その悔しい顔、見れないのが残念だな）

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/400301570skr">
「あと２分！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/400301580skr">
「２分だけ、待っててくれ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 1000, 0, null);

	DeleteAllSt(200,true);

//おがみ：ＳＥ走り去る
	CreateSE("SE00","se動作_走る02_l");
	MusicStart("SE00",0,700,0,1000,null,false);

	Wait(800);
	St("C",2001, @0,@0,"fu似鳥_通常_shock");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0361]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301590nki">
「え？　え、おいちょっと――」

{	St("C",2001, @0,@0,"fu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301600nki">
（逃げられた……？
　クソ、あんまり強気で迫りすぎたか……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(1948);}


	SoundPlay("@xbgm12",0,450,true);

	St("C",2001, @0,@0,"fu似鳥_通常_hard");
	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301610nki">
（いやいや、たかが一人、逃しただけだ！
　オレの相手は――）

{	St("C",2001, @0,@0,"fu似鳥_通常_shout");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301620nki">
「店員さん！　お願いします！」

{	DeleteAllSt(200,true);}
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/400301630e13">
「いや、だからまずは審査させてくださいって」

{	St("C",2001, @0,@0,"fu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301640nki">
「審査したら買い取ってくれるんですか！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/400301650e13">
「何度も言いますが、ソレとコレとは話が別で……」

{	St("C",2001, @0,@0,"fu似鳥_通常_shout");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301660nki">
「コレが見本ですッ！」

{	DeleteAllSt(200,true);}
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/400301670e13">
「あ、ああ、ああ、はい。わかりました。
　審査の上、後ほどご連絡を――」

{	St("C",2001, @0,@0,"fu似鳥_通常_angry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301680nki">
「今日中でお願いします！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/400301690e13">
「…………」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/4003012001e13">
「あの……お客さん？」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/400301710e13">
「私たちもね、商売なんですよ。わかります？」

{	St("C",2001, @0,@0,"fu似鳥_ラッパー_rage");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301720nki">
「だから、オレはおまえたちに儲けさせてやろうって――」

{	DeleteAllSt(200,true);}
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/400301730e13">
「目、覚ましなよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/400301740e13">
「アンタさ、自分の作ってるモノがホントに面白いと思ってる？　そんなに売れる自信ある？」

{	St("C",2001, @0,@0,"fu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301750nki">
「も、もちろん！」

{	DeleteAllSt(200,true);}
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/400301760e13">
「でも実際、売れてないんだよね？
　そんな本、聞いたことないし」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/400301770e13">
「オレたちはアンタの本が商品にならないと判断した」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
{	ClockPass(1949);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/400301780e13">
「自信とか関係ないの。売れているか、売れてないか。
　わかる？」

{	St("C",2001, @0,@0,"fu似鳥_通常_shout");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301790nki">
「そんなの……売ってみねぇとわかんねーじゃねぇか！」

{	DeleteAllSt(200,true);}
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/400301800e13">
「確かに、売れるかもね」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/400301810e13">
「でも、売れないかもしれないね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――





//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/400301820e13">
「だから、危ない橋は渡れない。買えない」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/400301830e13">
「わかる？」

{	St("C",2001, @0,@0,"fu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301840nki">
「…………ち……畜生ッ！」

{	St("C",2001, @0,@0,"fu似鳥_通常_rage");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301850nki">
「願い下げだあッ！！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/400301860nki">
「誰がこんな店に売ってやるもんかァ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	Wait(500);

	SetVolumeEX("@xbgm*", 100, 0, null);
//おがみ：BGMとめる演出　リバーブ？
//◆音声指示：遠くから

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/400301870skr">
「良し！　その本買ったッッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	EndScene();
}
