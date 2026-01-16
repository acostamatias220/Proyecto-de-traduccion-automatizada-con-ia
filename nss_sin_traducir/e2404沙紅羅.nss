
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene e2404沙紅羅.nss_MAIN
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

	//★エンディング中（e）
	//★エンドロール
	PreSetRoll(0);
	TheEND(0);

	$GameName = "";
	$GameCircle=false;
	$GameClear=true;
}

scene e2404沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="400">
////////////header////////////
//file name "e2404沙紅羅.nss"
//title "未来に夜露死苦"
//previous "e2400沙紅羅.nss"

////////////footer////////////
//flag "fle"
//next オシマイ

////////////body////////////

{	ClockPass(2408);}

//■再定義定型文
	PrintBG("上背景", 30000);
//	FadeDelete("上背景", 0, null, true);

//◆場所：泰然堂大学病院_正面_雪
//※下倉注：ここ、背景ないので廊下他で誤魔化す？？

//★inc櫻井　仮背景を設置しています。

//あきゅん「修正指示：廊下で」

	OnBG(10,"bg1403100泰然堂大学病院_廊下_通常");
	FadeBG(0,true);

//あきゅん「修正指示：新年深夜の空気感を効果音でだす、音量はうっすらと」

	CreateSE("歓声05", "seガヤ_大歓声_l");
	MusicStart("歓声05", 1000, 200, 0, 1000, null,true);

	FadeDelete("上背景", 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e24/040100010skr">
「アタシは、何もできなかった」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e24/040100020skr">
「年を越しても、どーじんしも手に入らず」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e24/040100030skr">
「約束……守れなかったな」

//★ inc遠藤 さすがに歓声そろそろFOします。
{	SetVolume("歓声05", 3000, 0, null);}

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e24/040100040skr">
「今度こそ……やり直せると思ったのに」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e24/040100050skr">
「結局……あのふたりも死んで……双六さんも救えず……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//★ inc遠藤 代わりに放浪する感でも。ゆっくり。音大きめでもいいすかね。

	CreateSE("Sleepwalker", "se動作_歩く02_l");
	MusicStart("Sleepwalker", 1000, 1000, 0, 600, null,true);

	SceneOut(5000, 1000, "blind_01_00_0");
	DeleteSt("C",0,false);
	OnBG(10,"bg1403100泰然堂大学病院_廊下_通常");
	FadeBG(0,true);

	SceneIn(1000, "blind_01_00_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e24/040100060skr">
「やっぱりアタシは、手遅れだった――」


//【みそ】
<voice name="みそ" class="みそ" src="voice/e24/040100070mso">
「もしそうだとしても、オレたちはそばについてます」

{
	SetVolume("Sleepwalker", 0, 0, null);
}

//【ブー】
<voice name="ブー" class="ブー" src="voice/e24/040100080buu">
「だから、そんな悲しい顔をしないで下さい」

{	St("L",700, @0,@0,"buみそa_通常_hard");
	St("R",700, @0,@0,"buブーa_通常_normal");
	FadeAllSt(200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e24/040100090skr">
「みそ……ブー……！」

//【みそ】
<voice name="みそ" class="みそ" src="voice/e24/040100100mso">
「それに、ミヅハが大人になれたのは、姐さんがアザナエルを取り戻してくれたからです」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	St("R",700, @0,@0,"buブーa_通常_sad");
	FadeSt("R",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ブー】
<voice name="ブー" class="ブー" src="voice/e24/040100110buu">
「オレたちは確かに、出来損ないで迷惑かけてばっかりかもしれねぇけど……」

{	St("R",700, @0,@0,"buブーa_通常_normal");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/e24/040100120buu">
「それでも、ちゃんとここにいる意味があるんです」

{	St("L",700, @0,@0,"buみそa_通常_smile");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/e24/040100130mso">
「だから……もう一回、最初からやり直しましょう」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e24/040100140skr">
「みそ！」

{	DeleteSt("C",200,false);
	St("L",700, @0,@0,"buみそa_通常_shout");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/e24/040100150mso">
「はいっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	DeleteSt("L",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e24/040100160skr">
「ブー！」

{	DeleteSt("C",200,false);
	St("R",700, @0,@0,"buブーa_通常_shout");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/e24/040100170buu">
「はいっ！」

{	DeleteSt("R",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e24/040100180skr">
「あんがとな……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e24/040100190skr">
「アタシが今、ここにこうしていられるのは……
　おまえたちの、おかげだよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2409);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	DeleteSt("C",200,false);
	St("L",700, @0,@0,"buみそa_通常_smile");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/e24/040100200mso">
「なあに言ってんですか」

{	DeleteSt("L",200,false);
	St("R",700, @0,@0,"buブーa_通常_smile");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/e24/040100210buu">
「それは、オレたちの台詞ですよ」

{	DeleteSt("R",200,false);
	St("C",700, @0,@0,"bu沙紅羅_頭かき_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e24/040100220skr">
「へっ！　言うじゃねぇか」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e24/040100230skr">
「んじゃま、そろそろ夜も遅ぇし――」

{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"fu沙紅羅_後ろ向き_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e24/040100240skr">
「郡山まで<RUBY text="ぶっちぎり">仏恥義理</RUBY>だぜ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	DeleteSt("C",200,false);
	St("L",700, @0,@0,"buみそa_通常_shout");
	St("R",700, @0,@0,"buブーa_通常_shout");
	FadeAllSt(200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/e24/040100250mso">
「押忍ッ！！」
{WaitAddText();}<BR>

/*

//◆音声指示：同時
{	St("C",700, @0,@0,"buブーa_通常_normal");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/e24/040100260buu">
「押忍ッ！！」

*/

</PRE>
	SetText();
	AddText(1,"「押忍ッ！！」","みそ","e24/040100250mso",false,false,1000);
	AddText(2,"「押忍ッ！！」","ブー","e24/040100260buu",true,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――


//◆演出指示：月夜に原付を走らせながら
//あきゅん「修正指示："1800沙紅羅.nss"などを参考に修正」

/////
	PrintBG("上背景", 30000);

	CreateTextureEX("絵背景スクロール１", 100, -3988, @0, "cg/ev/ex/ev0000沙紅羅原付ライダーb_exbg.jpg");
	CreateTextureEX("絵背景スクロール２", 100, -3988, @0, "cg/ev/ex/ev0000沙紅羅原付ライダーb_exbg.jpg");

	CreateTextureSP("絵背景ライダー", 102, center, middle, "cg/ev/ex/ev0000沙紅羅原付ライダーa_ex01.png");
	Request("絵背景ライダー", Smoothing);
	Move("絵背景ライダー", 0, -442, -800, Dxl1, false);
	Zoom("絵背景ライダー", 0, 1000, 1000, null, true);
	SetBlur("絵背景ライダー", true, 2, 300, 80, false);

	CreateSE("SEL01","seメカ_バイク_走行_l");
	MusicStart("SEL01",2000,700,0,1100,null,true);
	SetFrequency("SEL01", 200, 1000, null);

	MoveFTP3("@絵背景ライダー", 2000, 6, 5);

	CloudZoomSet(4000);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(0,@-1000,@0,null,false);

	CreateSCR1("@絵背景スクロール１","@絵背景スクロール２",300,@3500,@0);

	DrawDelete("上背景", 300, 100, null, "slide_01_01_1", true);
/////
/*
	DeleteAllSt(0,false);
	OnBG(10,"bg2401100空_上空_通常");
	FadeBG(0,true);

	SceneIn(300, "slide_01_01_1");
*/


//動作
	Zoom("絵窓", 1000, 1000, 1000, Dxl2, false);
	Move("絵窓/絵演立絵", 500, @-300, @0, Axl2, false);
	Fade("絵窓/絵演立絵", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e24/040100270skr">
（正直、生きてくってのは辛い）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e24/040100280skr">
（たくさんの出会いがあって――
　たくさんの別れがあって――）


{	SetVolume("SEL01", 4000, 100, null);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e24/040100290skr">
（苦しみの連続で、逃げ出したくなる。けど――）


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e24/040100300skr">
（本当に辛い時、本当に大事なものがわかる）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e24/040100310skr">
（たった３人の暴走集団。
　それがアタシにとって、何にも代えがたい宝で――）

{
	CloudZoomDelete(0,true);
	SCR1stop();
	Delete("絵背景*");
	CreateTextureEX("絵背景100", 100, Center, 0, "cg/bg/bg2401100空_上空_通常.jpg");
	Move("絵背景100", 60000, @0, -448, DxlAuto, false);
	Fade("絵背景100", 400, 1000, null, true);
}

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e24/040100320skr">
（こいつらがいる限り、アタシは前に進める）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e24/040100330skr">
（……そう、信じよう）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 1000, 0, null);
	TextBoxDelete(1000);
	Wait(500);

	SoundPlay("@xbgm07",0,900,true);

	WaitKey(9200);

{	ClockPass(2410);}

//あきゅん「修正指示：最後演出入ってないですよ？　きっちり名乗りを決めてくれ！　夜露死苦！！」

	SetVolume("SEL01", 1000, 0, null);

	CreatePlainSP("絵板写", 5000);

	//CreateMask("マスクサク", 0, 0, 0, "cg/mask/ciスラッシュ_07_00.png", false);
	//SetAlias("マスクサク","マスクサク");
	CreateMaskAXLSP("マスクサク", 1200, 0, 0, "ciスラッシュ_07_00", false, "ciスラッシュ_07_00z");

	CreateTextureSP("マスクサク/絵背景", 1000, Center, Middle, "cg/ef/ef029_物理限界速度域.jpg");

	Wait(32);
	DrawDelete("絵板写", 200, 100, null, "slide_02_01_0", true);

	//CreateStencil("マスクサク/ステ",0,20,150,128,"cg/bu/bu沙紅羅_後ろ向き_shout.png",false);
	//CreateColorEX("マスクサク/ステ/絵色黒", 1100, "#000000");
	CreateTextureEX("マスクサク/ステ絵色黒", 1100, 20,150, "cg/bu/l/bu沙紅羅_後ろ向き_shadow_s.png");
	CreateTextureEX("マスクサク/絵演立絵", 1110, 20,150, "cg/bu/bu沙紅羅_後ろ向き_shout.png");

	Wait(32);
	Move("マスクサク/絵演立絵", 10000, 20, -110, null, false);
	Move("マスクサク/ステ絵色黒", 10000, 20, -110, null, false);
	Fade("マスクサク/ステ絵色黒", 300, 1000, null, true);

	SetVolumeEX("@xbgm07", 2000, 500, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e24/040100340skr">
「<RUBY text="ヘッド">頭</RUBY>・月夜乃沙紅羅！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("マスクサク/絵演立絵", 300, 20, -110, Dxl1, false);
	Move("マスクサク/ステ", 300, 20, -110, Dxl1, true);

	CreateSE("SE01","se動物_トラ_鳴き声");
	MusicStart("SE01",0,1200,0,1000,null,false);
	CreateColorSP("絵色白", 5000, "#FFFFFF");
	Wait(32);

	Fade("マスクサク/絵演立絵", 0, 1000, null, true);
	Delete("マスクサク/ステ*");
	FadeDelete("絵色白", 300, null, true);

	$SETime = RemainTime("SE01");
	WaitKey($SETime);

/////
/////
	CreatePlainSP("絵板写", 5000);

	//CreateMask("マスクミソ", 0, 0, 0, "cg/mask/ciスラッシュ_06_00.png", false);
	//SetAlias("マスクミソ","マスクミソ");
	//CreateMaskAXLSP("マスクミソ", 800, 0, 0, "ciスラッシュ_06_00", false, "ciスラッシュ_06_00z");
	CreateWindowEX("マスクミソ", 0, 0, 512, 576, false);

	CreateTextureSP("マスクミソ/絵背景", 100, Center, Middle, "cg/ef/ef001_汎用移動.jpg");

	Wait(32);
	DrawDelete("絵板写", 200, 100, null, "slide_01_01_0", true);

	//CreateStencil("マスクミソ/ステ",0,130,150,128,"cg/bu/buみそa_オラオラ_normal.png",false);
	//CreateColorEX("マスクミソ/ステ/絵色黒", 700, "#000000");
	CreateTextureEX("マスクミソ/ステ絵色黒", 700, -69, 350, "cg/bu/l/buみそa_オラオラ_shadow_s.png");
	CreateTextureEX("マスクミソ/絵演立絵", 710, -69, 350, "cg/bu/buみそa_オラオラ_hard.png");

	Wait(32);
	Move("マスクミソ/絵演立絵", 10000, -240, -180, null, false);
	Move("マスクミソ/ステ絵色黒", 10000, -240, -180, null, false);
	Fade("マスクミソ/ステ絵色黒", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【みそ】
<voice name="みそ" class="みそ" src="voice/e24/040100350mso">
「特攻隊長・頑丈のみそ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("マスクミソ/絵演立絵", 300, -240, -180, Dxl1, false);
	Move("マスクミソ/ステ", 300, -240, -180, Dxl1, true);

	CreateSE("SE01","se擬音_ギャグ_リーゼント");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 5000, "#FFFFFF");
	Wait(32);

	Fade("マスクミソ/絵演立絵", 0, 1000, null, true);
	Delete("マスクミソ/ステ*");
	FadeDelete("絵色白", 300, null, true);

	$SETime = RemainTime("SE01");
	WaitKey($SETime);
/////
/////
	CreatePlainSP("絵板写", 5000);

	//CreateMask("マスクブー", 0, 0, 0, "cg/mask/ciスラッシュ_06_01.png", false);
	//SetAlias("マスクブー","マスクブー");
	//CreateMaskAXLSP("マスクブー", 900, 0, 0, "ciスラッシュ_06_01", false, "ciスラッシュ_06_01z");
	CreateWindowEX("マスクブー", 512, 0, 512, 576, false);

	CreateTextureSP("マスクブー/絵背景", 800, Center, Middle, "cg/ef/ef002_汎用移動.jpg");

	Wait(32);
	DrawDelete("絵板写", 200, 100, null, "slide_01_01_1", true);

	//CreateStencil("マスクブー/ステ",0,150,290,128,"cg/bu/buブーa_オラオラ_hard.png",false);
	//CreateColorEX("マスクブー/ステ/絵色黒", 800, "#000000");
	CreateTextureEX("マスクブー/ステ絵色黒", 800, 380, 240, "cg/bu/l/buブーa_オラオラ_shadow_s.png");
	CreateTextureEX("マスクブー/絵演立絵", 810, 380, 240, "cg/bu/buブーa_オラオラ_hard.png");

	Wait(32);
	Move("マスクブー/絵演立絵", 10000, 460, -30, null, false);
	Move("マスクブー/ステ絵色黒", 10000, 460, -30, null, false);
	Fade("マスクブー/ステ絵色黒", 300, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081b]

//【ブー】
<voice name="ブー" class="ブー" src="voice/e24/040100360buu">
「参謀役・クラッシャー・ブー！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	Move("マスクブー/絵演立絵", 300, 460, -30, Dxl1, false);
	Move("マスクブー/ステ", 300, 460, -30, Dxl1, true);

	CreateSE("SE01","se擬音_ギャグ_アフロ");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 5000, "#FFFFFF");
	Wait(32);

	Fade("マスクブー/絵演立絵", 0, 1000, null, true);
	Delete("マスクブー/ステ*");
	FadeDelete("絵色白", 300, null, true);

	$SETime = RemainTime("SE01");
	WaitKey($SETime);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e24/040100370skr">
「我ら郡山に狂い咲く暴走集団<RUBY text="もものせっく">百野殺駆</RUBY>」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//※下倉注：下の沙紅羅の台詞も一緒です
	CreateSE("SE01","se擬音_百野殺駆登場");
	MusicStart("SE01",0,700,0,1000,null,false);

	$SETime = RemainTime("SE01");

	CreatePlainEXadd("絵板写", 5000);
	Fade("絵板写", 0, 300, null, true);
	Zoom("絵板写", $SETime, 1200, 1200, Dxl2, false);
	Shake("絵板写", 300, 5, 15, 0, 0, 1000, DxlAuto, false);
	FadeDelete("絵板写", $SETime, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e24/040100380skr">
「「「夜露死苦ぅ！」」」

/*
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/e24/040100390mso">
「夜露死苦ぅ！」

//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/e24/040100400buu">
「夜露死苦ぅ！」

*/

</PRE>
	SetText();
	AddText(1,"「夜露死苦ぅ！」","沙紅羅","e24/040100380skr",false,false,1000);
	AddText(2,"「夜露死苦ぅ！」","みそ","e24/040100390mso",false,true,1000);
	AddText(3,"「夜露死苦ぅ！」","ブー","e24/040100400buu",false,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

	TextBoxDelete(1000);
	Wait(1000);

	CreatePlainSP("絵板写", 10000);
	Wait(16);

	Delete("NutFT*");
	Delete("絵演背景*");
	Delete("マスク*");

	CreateColorSP("絵色黒上", 100, "#000000");
	FadeDelete("絵板写", 2000, null, true);

//	ClearWaitAll(1500, 1500);


	EndingReady();
	EndScene();
}
