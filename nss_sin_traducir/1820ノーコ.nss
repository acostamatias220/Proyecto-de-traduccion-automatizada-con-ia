
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1820ノーコ.nss_MAIN
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
	$GameName = "1830似鳥_ノーコ.nss";

}

scene 1820ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="650">
////////////header////////////
//file name "1820ノーコ.nss"
//title "沢山の在庫の中で彼女は自分の存在意義を訝しむ"
//previous "1810ノーコ_フウリ.nss"

////////////footer////////////

//next "ノーコ" "1830似鳥_ノーコ.nss"



////////////body////////////

//あきゅん「演出：暗転開始スクリプト」

//■再定義定型文
	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 20000, "#000000");

	if($PreGameName=="1810ノーコ_フウリ.nss"){
	Wait(1000);
	FadeDelete("上背景",500,null,true);
	}else{
	FadeDelete("上背景",0,null,true);
	}

	CreateSE("SE11","seガヤ_交通少_l");
	MusicStart("SE11",1000,700,0,1000,null,true);

//◆場所：秋葉原_蔵前橋通り
	PrintGO("上背景", 20000);

	OnBG(10,"bg0106100秋葉原_蔵前橋通り_通常");
	FadeBG(0,true);
	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",0,true);

//◆時間：ジャンプ
{	ClockPass(1821);}

	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

	//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100010nko">
「へん」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100020nko">
「すごくへん」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100030nko">
「わたし、フウリをどうしてささなかった？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100040nko">
「いつもならさしてた」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100050nko">
「さすのはわるいこと？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100060nko">
「ふつうははんのうしない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100070nko">
「みんなみんな、きづかない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100080nko">
「いくらさしても、きづかない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100090nko">
「はんのうするのはにとりだけ」

{	St("C",700, @0,@0,"buノーコa_通常_shy");
	FadeSt("C",200,true);}

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100100nko">
「にとりだけがとくべつ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1822);}

	TextBoxDelete(150);

	Wait(2000);

//	MusicStart("@xbgm26",0,450,0,1000,null,true);

	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100110nko">
「とくべつな……はずだったのに」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100120nko">
「でも……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100130nko">
「フウリは、いたがる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100140nko">
「ささないでっていう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100150nko">
「どうして？」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100160nko">
「わたしには、にとりがいる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100170nko">
「にとりはずっととくべつ」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100180nko">
「とくべつ……とくべつな、はず……」

{	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100190nko">
「フウリも、とくべつ？」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100200nko">
「こんなきもち、おかしい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100210nko">
「そわそわする」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100220nko">
「おちつかない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100230nko">
「どうして？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE*", 2000, 0, null);


	TextBoxDelete(150);

{	ClockPass(1823);}

//◆場所：似鳥マンション_エントランス
	PrintFadeNut("上背景", 1000, true);
	OnBG(10,"bg1301100似鳥マンション_エントランス_通常");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, null, true);
	Wait(2000);

//◆場所：似鳥マンション_正面
	PrintFadeNut("上背景", 1000, true);
	OnBG(10,"bg1302100似鳥マンション_正面_通常");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, null, true);
	Wait(2000);


{	ClockPass(1824);}


//◆場所：似鳥マンション_玄関
	PrintFadeNut("上背景", 1000, true);
	OnBG(10,"bg1303100似鳥マンション_玄関_通常");
	FadeBG(0,true);

//◆ＳＥ：テレビ
//◆演出指定：テレビがつけっぱなしになっているので、始終関係ない番組が流れていて欲しい。ジョイまっくすの番組を流すのがベストか？

	//★徒歩：ＳＥ
	//▼べー：ＳＥ欠番につきコメントアウト
//	CreateSE("SE00","seガヤ_テレビ_TV番組_l");
//	MusicStart("SE00",1000,500,0,1000,null,true);

	FadeDelete("上背景", 1000, null, true);

	Wait(1000);

	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100240nko">
「にとり？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100250nko">
「にとり、どこ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100260nko">
「かくれてたら、きる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100270nko">
「…………」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100280nko">
「いない？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1825);}
//◆時間：ジャンプ
{	ClockPass(1827);}


	TextBoxDelete(150);

	DeleteSt("C",500,true);

//◆場所：似鳥マンション_リビング
	OnBG(10,"bg1304100似鳥マンション_リビング_通常");
	MusicStart("SE00",1000,700,0,1000,null,true);
	FadeBG(1000,true);



	SoundPlay("@xbgm24",10000,450,true);

	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100290nko">
「…………」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100300nko">
「にとり……おそい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100310nko">
「かえってこない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100320nko">
「…………」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100330nko">
「こんなこと、なかった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);

{	ClockPass(1828);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　乱雑に積み上げられたマンガと、同人誌と、フィギュアと、エロゲーと、新刊在庫の段ボール。

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100340nko">
「しんかん、うれなかった？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100350nko">
「でも、それがふつう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100360nko">
「いままでずっと、そうだった」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100370nko">
「こんどはがんばるって、にとりはいった」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100380nko">
「たくさんたくさん、ほんをすった」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100390nko">
「たくさんたくさん、ざいこができた」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100400nko">
「こんなこと、なかった」

{	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("C",200,true);}
　ノーコの視線が在庫の段ボールの向こう、古びた本棚に向けられる。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵演背景", 2000, Center, Middle, "cg/img/imgノーコントロール01.jpg");
	Fade("絵演背景", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100410nko">
「……さいしょの、ほん」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100420nko">
「にとりがかいた、さいしょのほん」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100430nko">
「とっても、とっても、だいじなほん」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100440nko">
「でも……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	FadeDelete("絵演背景", 500, null, true);

{	St("C",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100450nko">
「にとりはもう、あのほんをよまない」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100460nko">
「……やっぱり、だめだ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100470nko">
「いままでとおなじがいい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100480nko">
「かわらなくていい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100490nko">
「ふたりがいい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100500nko">
「うそでもにせものでもいい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100510nko">
「このままがいい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100520nko">
「でも……」

{	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100530nko">
「かわってしまうの？」

//あきゅん「修正：エコーしていたのを修正しました」
{	SetVolumeEX("@xbgm24", 10000, 550, null);}

//◆ＳＥ：カッターナイフの音、だんだん激しく
{	//★徒歩：ＳＥ
	MusicStart("SE00",3000,1,0,1000,null,false);
	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);
	CreateSE("SE01","se戦闘_カッター_刃出す03遅い");
	MusicStart("SE01",0,700,0,1000,null,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100540nko">
「そんなの……いや」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100550nko">
「わたしたちはかわらない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100560nko">
「なにもかわらない」

{	MusicStart("SE01",1000,1000,0,1000,null,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100570nko">
「かわりたくない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100580nko">
「いつものにとりと――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100590nko">
「いつものわたしで――」

{	MusicStart("SE01",1000,1200,0,1000,null,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100600nko">
「それで、ずっと――ずっと、ずっと――」

{	CreateSE("SE01","se戦闘_カッター_刃出す02早い");
	MusicStart("SE01",1000,1500,0,1000,null,true);
	St("C",700, @0,@0,"buノーコa_通常_smile");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100610nko">
「そのためには――そのためには――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1829);}

//◆ＳＥ：鍵を開ける
	CreateSE("SE01","se動作_鍵開ける");
	MusicStart("SE01",0,1200,0,1000,null,false);

	SetVolume("@x*", 500, 0, NULL);
	MusicStart("SE00",500,700,0,1000,null,false);

	St("C",700, @0,@0,"fuノーコa_幽霊_smile");
	FadeSt("C",0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100620nko">
「きた！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆ＳＥ：扉を開ける
	CreateSE("SE01","se動作_ドア開ける01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolume("@SE00", 500, 0, NULL);

	DeleteSt("C",200,true);

	Wait(500);

	PrintGO("上背景", 30000);

	CreateTextureSP("絵背景100", 200, Center, Middle, "cg/img/imgカッターバラe.jpg");
	#imgカッター全体 = true;

//	FadeDelete("上背景", 300, null, true);

//◆演出指定：カッターナイフが目立つ感じの演出
	//▼カッターマクロセット
	NocoCutSet("IN",10,2000);

//	CreatePlainSP("上背景", 10000);

	//▼カッターマクロフェード
	NocoCutFade();

	FadeDelete("上背景", 200, null, true);

	//▼カッターマクロフェード
	NocoCut("OUT",10,200,100,200);

	Wait(500);

/*
	CreateColorEX("絵色１", 10000, "#000000");
	Fade("絵色１", 1000, 1000, null, true);
	Wait(500);
*/

//◆ＳＥ：ザシュッ！　と血が噴き出す
//★徒歩：画像が無いので血のエフェクトいれて！
	CreateSE("SE03","se戦闘_切断03");
	CreateTextureEX("上背景", 10000, Center, Middle, "cg/ef/ef006_汎用血しぶき.jpg");
	Zoom("上背景", 0, 2000, 2000, null, true);
	Fade("絵背景100", 0, 1000, null, true);

	MusicStart("SE03",0,500,0,1000,null,false);
	Zoom("上背景", 200, 1000, 1000, Dxl2, false);
	Fade("上背景", 200, 1000, null, true);

	PrintGO("デリート用", 1000);
	Delete("絵短刃*");
	Delete("絵色*");
	Delete("デリート用");

	Wait(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/200100630nki">
「え……？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/200100640nki">
「ノーコ？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/200100650nko">
「しんで」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	FadeDelete("上背景", 1000, null, true);


//	ClearFadeNut(0, true);

	EndScene();
}
