
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ba2250沙紅羅_千秋_恵那_似鳥_ノーコ.nss_MAIN
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
	$GameName = "ba2300カゴメ.nss";
}

scene ba2250沙紅羅_千秋_恵那_似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1470">
////////////header////////////
//file name "ba2250沙紅羅_千秋_恵那_似鳥_ノーコ.nss"
//title "乾坤一擲！"
//previous "ba2240沙紅羅.nss"
//previous "ba2240千秋_恵那.nss"
//previous "ba2240似鳥_ノーコ.nss"

////////////footer////////////
//next "沙紅羅" "ba2300カゴメアソビ.nss"
//next "千秋" "ba2300カゴメアソビ.nss"
//next "恵那" "ba2300カゴメアソビ.nss"
//next "似鳥" "ba2300カゴメアソビ.nss"
//next "ノーコ" "ba2300カゴメアソビ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2250);}

//	SceneOut(5000, 0, "slide_01_01_0");
	OnBG(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);
	FadeDelete("上背景", 300, null, true);

	SetVolumeEX("@x*", 2000, 0, NULL);

	CreateStencil("マスク右",16100,center,Middle,128,"cg/mask/ciスラッシュ_05_01.png",false);
	CreateTextureEX("マスク枠", 2000,center,Middle, "cg/mask/ciスラッシュ_05_01z.png");
	CreateTextureEX("マスク右/絵背景100", 1000, Center, -650, "cg/bg/bg0107400秋葉原_遠景_破壊.jpg");
	Zoom("マスク右/絵背景100", 0, 1500, 1500, null, true);
	SetShade("マスク右/絵背景100", HEAVY);

	CreateTextureEX("マスク右/キャラ右", 1100, 250, 50, "cg/bu/bu平次_通常_cool.png");

//	SceneIn(300, "blind_01_01_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]

//◆演出指示：ここ、あにのあなの屋上と男坂の二元中継とかにしたいなあ

{	St("L",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("L",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/500100010ksr">
「もしもし」

{
	Fade("マスク*", 300, 1000, null, false);
	Move("マスク右/キャラ右", 300, @50, @-100, Dxl1, false);
	Move("マスク右/絵背景100", 300, @30, @-50, Dxl1, false);
	Fade("マスク右/絵背景100", 300, 1000, null, false);
	Fade("マスク右/キャラ右", 300, 1000, null, false);

//	St("C",700, @0,@0,"bu平次_通常_cool");
//	FadeSt("C",200,true);
}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/500100020fjh">
「おう、双六か。いったいなんの用――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指示：みそブー、受話器に割り込む（画面に割り込む？）感じで

//★ wam井野 みそブーのfu L素材がないためいったんぼかしました。

/*
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/500100030mso">
「姐さ――――――――ん！！」
//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/500100040buu">
「姐さ――――――――ん！！」
*/

	CreateTextureEX("マスク右/キャラ右2", 1100, 320, -50, "cg/bu/bu平次_通常_shock.png");
	CreateTextureEX("マスク右/キャラ右L", 1210, 260, 150, "cg/bu/buみそa_通常_cry.png");
	CreateTextureEX("マスク右/キャラ右R", 1200, 640, 120, "cg/bu/buブーa_通常_cry.png");
	CreateTextureEX("マスク右/キャラ右L2", 1210, 360, 100, "cg/bu/buみそa_通常_happy.png");
	CreateTextureEX("マスク右/キャラ右R2", 1200, 540, 70, "cg/bu/buブーa_通常_happy.png");

	Request("マスク右/キャラ右*", Smoothing);

//	SetShade("マスク右/キャラ右L", MEDIUM);
//	SetShade("マスク右/キャラ右R", MEDIUM);

	Zoom("マスク右/キャラ右L", 0, 2000, 2000, null, false);
	Zoom("マスク右/キャラ右R", 0, 2000, 2000, null, false);

	CreateSE("SE01","se擬音_ギャグ_ひょいひょい");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("マスク右/キャラ右L", 300, @100, @-50, Dxl1, false);
	Move("マスク右/キャラ右R", 300, @-100, @-50, Dxl1, false);
	Fade("マスク右/キャラ右L", 300, 1000, null, false);
	Fade("マスク右/キャラ右R", 300, 1000, null, false);
	Shake("マスク右/キャラ右L", 300, 30, 0, 0, 0, 500, null, false);
	Shake("マスク右/キャラ右R", 300, 30, 0, 0, 0, 500, null, false);
	Fade("マスク右/キャラ右", 300, 0, null, false);
	Fade("マスク右/キャラ右2", 200, 1000, null, true);

	St("L",700, @0,@0,"bu双六a_通常_shock");
	FadeSt("L",200,false);

	MusicStart("@xbgm03",0,500,0,1000,null,true);

//	St("C",700, @0,@0,"buみそa_通常_cry");
//	FadeSt("C",200,true);
//	St("C",700, @0,@0,"buブーa_通常_cry");
//	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/500100030mso">
「姐さ――――――――ん！！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/ba22/500100040buu">
//「姐さ――――――――ん！！」

</PRE>
	SetText();
	AddText(1,"「姐さ――――――――ん！！」","みそ","ba22/500100030mso",false,false,1000);
	AddText(2,"「姐さ――――――――ん！！」","ブー","ba22/500100040buu",true,true,1600);
	TypeBeginD();//―――――――――――――――――――――――――――

/*
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/500100050mso">
「お帰りなさいッ！！」
//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/500100060buu">
「お帰りなさいッ！！」
*/

//	SetShade("マスク右/キャラ右L2", MEDIUM);
//	SetShade("マスク右/キャラ右R2", MEDIUM);
	Zoom("マスク右/キャラ右L2", 0, 2000, 2000, null, false);
	Zoom("マスク右/キャラ右R2", 0, 2000, 2000, null, false);
	Fade("マスク右/キャラ右L", 300, 0, null, false);
	Fade("マスク右/キャラ右R", 300, 0, null, false);
	Fade("マスク右/キャラ右L2", 200, 1000, null, false);
	Fade("マスク右/キャラ右R2", 200, 1000, null, true);

	Shake("マスク右/キャラ右L2", 100, 0, 10, 0, 0, 500, null, false);
	Shake("マスク右/キャラ右R2", 100, 0, 10, 0, 0, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/500100050">
「「お帰りなさいッ！！」」

{	St("L",700, @-50,@0,"bu沙紅羅_前のめり_happy");
	Move("@StNameL/L*", 300, @50, @0, Dxl2, false);
	FadeSt("L",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/500100070skr">
「おう、ただいま！」

{
	CreateSE("SE01","se擬音_ギャグ_ぴょこ");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("マスク右/キャラ右L2", 300, @60, @0, Dxl2, false);
	Move("マスク右/キャラ右R2", 300, @40, @0, Dxl2, true);

//	St("C",700, @0,@0,"buみそa_通常_happy");
//	FadeSt("C",200,true);
}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/500100080mso">
「やっぱり生きてたんですね！」


{
	CreateSE("SE01","se擬音_ギャグ_ぴょこ");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("マスク右/キャラ右L2", 300, @-120, @0, Dxl2, false);
	Move("マスク右/キャラ右R2", 300, @-80, @0, Dxl2, true);

//	St("C",700, @0,@0,"buブーa_通常_happy");
//	FadeSt("C",200,true);
}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/500100090buu">
「さすがは姐さん、信じてました！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolumeEX("@x*", 500, 0, NULL);

	CreateColorEXadd("マスク右/フラッシュ白", 15000, "WHITE");

	CreateTextureEX("マスク右/キャラ右", 1100, 320, -50, "cg/bu/bu平次_御用だ_angry.png");
	Request("マスク右/キャラ右", Smoothing);

	Fade("マスク右/フラッシュ白", 0, 1000, null, true);
	Fade("マスク右/キャラ右2", 0, 0, null, false);
	Fade("マスク右/キャラ右", 0, 1000, null, true);

	Fade("マスク右/フラッシュ白", 200, 0, null, false);

	CreateSE("SE02","se擬音_ギャグ_ドカーン");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateSE("SE01","se戦闘_打撃音01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Zoom("マスク右/キャラ右", 0, 1600, 1600, null, false);
	Shake("マスク右/キャラ右", 300, 20, 0, 0, 0, 500, null, false);
	Move("マスク右/キャラ右L2", 400, @-150, @0, Dxl2, false);
	Move("マスク右/キャラ右R2", 400, @150, @0, Dxl2, false);
	Fade("マスク右/キャラ右L2", 400, 0, null, false);
	Fade("マスク右/キャラ右R2", 400, 0, null, true);

	St("L",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("L",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{
//	St("C",700, @0,@0,"bu平次_御用だ_angry");
//	FadeSt("C",200,true);
}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/500100100fjh">
「おまえらうるせぇッ！　ひっこんでろ！」

{
	Zoom("マスク右/キャラ右", 300, 1000, 1000, Dxl2, true);
	CreateTextureEX("マスク右/キャラ右2", 1100, 320, -50, "cg/bu/bu平次_通常_hard.png");

	Fade("マスク右/キャラ右", 300, 0, null, false);
	Fade("マスク右/キャラ右2", 200, 1000, null, true);

//	St("C",700, @0,@0,"bu平次_通常_hard");
//	FadeSt("C",200,true);
}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/500100110fjh">
「で、なんの用事だ？」

{	St("L",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("L",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/500100120ksr">
「こっちにアザナエルがある」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2251);}

//	TextBoxDelete(150);
	CreateTextureEX("マスク右/キャラ右", 1100, 620, 20, "cg/bu/bu歌門_通常_hard.png");

	Move("マスク右/キャラ右2", 300, @-50, @0, Dxl2, false);
	Fade("マスク右/キャラ右2", 200, 0, Axl1, true);
	Move("マスク右/キャラ右", 300, @-50, @0, Dxl2, false);
	Fade("マスク右/キャラ右", 200, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ba22/500100130kms">
「素晴らしい――！」

{
	CreateTextureEX("マスク右/キャラ右2", 1100, 570, 20, "cg/bu/bu歌門_通常_normal.png");
	Fade("マスク右/キャラ右", 300, 0, Axl2, false);
	Fade("マスク右/キャラ右2", 200, 1000, null, true);

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);
}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ba22/500100140kms">
「では、それを私が――」


{
	SoundPlay("@xbgm24",0,450,true);
	St("L",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("L",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/500100150ksr">
「コイツは、大狸に撃ち込む」


{
	CreateTextureEX("マスク右/キャラ右", 1100, 570, 20, "cg/bu/bu歌門_通常_shock.png");
	Fade("マスク右/キャラ右2", 300, 0, Axl2, false);
	Fade("マスク右/キャラ右", 200, 1000, null, true);

//	St("C",700, @0,@0,"bu歌門_通常_shock");
//	FadeSt("C",200,true);
}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ba22/500100160kms">
「な……なんですって？」


{	St("L",700, @100,@0,"bu双六a_横向き_normal");
	FadeSt("L",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/500100170ksr">
「そうすればきっと、あいつの願いが叶う」

{	St("L",700, @100,@0,"bu双六a_横向き_pride");
	FadeSt("L",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/500100180ksr">
「死んだヤツが生き返ればいいんだろ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateTextureEX("マスク右/キャラ右2", 1100, 200, 20, "cg/bu/bu歌門_威圧_hard.png");
	Fade("マスク右/キャラ右", 300, 0, null, false);
	Fade("マスク右/キャラ右2", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ba22/500100190kms">
「し、しかし――
　まかり間違って、全ての破壊を願ったら？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SceneOut(5000, 300, "slide_01_01_0");

	OnBG(10,"bg0107400秋葉原_遠景_破壊");
	FadeBG(0,true);

	DeleteAllSt(0,false);

	CreateTextureSP("絵背景400", 100, Center, -650, "cg/bg/bg0107400秋葉原_遠景_破壊.jpg");

	Delete("マスク右/キャラ*");
	Fade("マスク右/絵背景100", 0, 0, null, true);
	Fade("マスク*", 0, 0, null, true);

	SceneIn(300, "slide_01_01_1");



	St("C",19010, @0,@50,"fu恵那_一休_think");
	Move("@StNameC/C*", 300, @0, @-50, Dxl2, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/500100200fje">
「それが、彼の本当の願い？」

{	St("C",19010, @0,@0,"fu恵那_ハルヒ_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/500100210fje">
「……いえ、私の推理が正しければ、あり得ません。
　私は、タヌキに撃ち込むのに賛成」


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/500100220fje">
「誰かを殺すよりも、生き返らせることで救うなら、そっちの方がいいに決まってるわ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/500100230kit">
「お、オレも！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ba22/500100240fjr">
「アタシもそう思う！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ba22/500100250mzh">
「うむ。同感じゃ！」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu歌門_通常_think");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ba22/500100260kms">
「く――」

{
//	SetVolumeEX("@x*", 2000, 0, NULL);

	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu平次_通常_hard");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/500100270fjh">
「でも、なんで撃たねぇんだ？」

{	St("C",700, @0,@0,"bu平次_落ち込み_pain");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/500100280fjh">
「早くしねぇと被害が――」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2252);}

	TextBoxDelete(150);

	SceneOut(5000, 300, "slide_01_01_0");

	Fade("絵背景400", 0, 0, null, true);

	OnBG(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);

	DeleteAllSt(0,false);

//	SoundPlay("@xbgm22",0,450,true);

//	CreateSE("SE10","se環境_風_l");
//	MusicStart("SE10",3000,700,0,1000,null,true);


	SceneIn(300, "slide_01_01_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/500100290nko">
「あのかわが、じゃまをする。
　あのせいで、アザナエルがほんたいまでとどかない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//マスク準備
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureEX("絵マスク/絵背景100", 1000, 512, -650, "cg/bg/bg0107400秋葉原_遠景_破壊.jpg");
	Zoom("絵マスク/絵背景100", 0, 1200, 1200, null, true);
	SetShade("絵マスク/絵背景100", HEAVY);

//立ち絵準備
	CreateTextureEX("絵マスク/絵立絵", 1530, 630, middle, "cg/bu/bu千秋_朗らか_sad.png");
	Request("絵マスク/絵立絵", Smoothing);

//動作準備
	Fade("マスク*", 0, 0, null, false);
	Move("マスク*", 0, 1024, 0, null, false);
	Move("絵マスク", 0, 1024, 0, null, false);
	Move("絵マスク/絵立絵", 0, 212, 200, null, true);

//動作

	Move("絵マスク/絵背景100", 200, @-30, @0, Dxl1, false);
	Fade("絵マスク/絵背景100", 200, 1000, null, false);

	Fade("マスク*", 200, 1000, null, false);
	Move("マスク*", 200, 200, 0, Dxl3, false);
	Move("絵マスク", 200, 200, 0, Dxl3, false);
	Fade("絵マスク/絵立絵", 200, 1000, null, false);
	Move("絵マスク/絵立絵", 200, 680, middle, Dxl1, true);


//	St("C",700, @0,@0,"bu千秋_朗らか_sad");
//	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/500100300kit">
「でも……さっき切れなかっただろ？
　だったらどうやって、アザナエルを届かせる？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("マスク*", 200, 0, null, false);
	Move("マスク*", 200, 1024, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵立絵", 200, 730, 0, Axl1, false);
	Move("絵マスク/絵背景100", 200, @-30, @0, Axl1, false);
	Fade("絵マスク/絵立絵", 200, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/500100310skr">
「…………」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_pinch");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/500100320ksr">
「…………」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/500100330nko">
「…………」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥堕皇_通常_hard");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/500100340nki">
「…………」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SceneOut(5000, 300, "slide_01_01_0");

//	OnBG(10,"bg0107400秋葉原_遠景_破壊");
//	FadeBG(0,true);

	Fade("絵背景400", 0, 1000, null, true);

	DeleteAllSt(0,false);

	SceneIn(300, "slide_01_01_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]


{	St("C",700, @0,@0,"bu平次_通常_hard");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/500100350fjh">
「…………」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ba22/500100360fjr">
「…………」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ba22/500100370mzh">
「…………」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu歌門_通常_think");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ba22/500100380kms">
「…………」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/500100390mso">
「…………」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_hard");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/500100400buu">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolumeEX("@x*", 5000, 0, NULL);
//	SetVolumeEX("SE*", 5000, 0, NULL);

{	ClockPass(2253);}

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_一休_pride");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/500100410fje">
「……ふ…………ふふふふ」


{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"bu平次_通常_cool");
	FadeSt("R",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/500100420fjh">
「ん？」

{	MusicStart("@xbgm32",0,450,0,1000,null,true);
	DeleteAllSt(200,false);
	St("C",19010, @0,@0,"fu恵那_一休_smile");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/500100430fje">
「そんなもの、この名探偵富士見恵那にかかればお茶の子さいさいよ！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/500100440kit">
「は？　でもどうやって……」


{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_一休_smile");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/500100450fje">
「絶対に破れない素材が周囲を完璧に覆ってたら、どんなことをしても内側まで届かない」

{	St("C",700, @0,@0,"bu恵那_一休_pride");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/500100460fje">
「でもよく考えてみて。
　あれは元々、タヌキの股間についてた袋よ」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/500100470fje">
「いくら完璧に周囲を覆ったつもりでも、どこかに結び目ができるはず」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//マスク準備
	CreateTextureEX("マスク枠2", 2000, 0, 0, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	CreateMask("絵マスク左", 6000, 0, 0, "cg/mask/ciスラッシュ_05_00.png", false);
	CreateTextureEX("絵マスク/絵演背景", 1520, 300, Middle, "cg/bg/bg0303100あにのあな_屋上_通常.jpg");
	CreateTextureEX("絵マスク左/絵演背景", 1520, center, Middle, "cg/bg/bg0303100あにのあな_屋上_通常.jpg");
	SetShade("絵マスク/絵演背景", HEAVY);
	SetShade("絵マスク左/絵演背景", HEAVY);

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/bu似鳥堕皇_通常_pinch.png");
	CreateTextureEX("絵マスク左/絵演立絵", 1530, center, middle, "cg/bu/buノーコa_通常_pain.png");

//動作準備

	Move("マスク枠", 200, 1024, 0, Dxl3, false);
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵", 0, 712, 200, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);

	Move("マスク枠2", 200, -1024, 0, Dxl3, false);
	Move("絵マスク左", 0, -1024, 0, null, true);
	Move("絵マスク左/絵演立絵", 0, -512, 200, null, true);
	Fade("絵マスク左/絵演背景", 0, 1000, null, true);

//イン動作

	Fade("マスク枠2", 200, 1000, null, false);
	Move("マスク枠2", 200, -250, 0, Dxl3, false);
	Move("絵マスク左", 200, -250, 0, Dxl3, false);
	Fade("絵マスク左/絵演立絵", 200, 1000, null, false);
	Move("絵マスク左/絵演立絵", 200, -180, 50, Dxl1, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]



{
//	St("C",700, @0,@0,"buノーコa_通常_pain");
//	FadeSt("C",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/500100480nko">
「むすびめ……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//イン動作
	Fade("マスク枠", 200, 1000, null, false);
	Move("マスク枠", 200, 250, 0, Dxl3, false);
	Move("絵マスク", 200, 250, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, -350, -250, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0115]

{
//	St("C",700, @0,@0,"bu似鳥堕皇_通常_pinch");
//	FadeSt("C",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/500100490nki">
「でも、そんなものどこにも見えなかったぞ」

{
//アウト動作

	DeleteAllSt(200,false);

	Move("マスク枠", 200, 1024, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵", 200, 512, 200, Axl1, false);
	Move("絵マスク/絵演背景", 200, @-100, @50, Axl1, false);
	Fade("絵マスク/*", 200, 0, null, false);

	Move("マスク枠2", 200, -1024, 0, Axl3, false);
	Move("絵マスク左", 200, -1024, 0, Axl3, false);
	Move("絵マスク左/絵演立絵", 200, -512, 200, Axl1, false);
	Move("絵マスク左/絵演背景", 200, @100, @50, Axl1, false);
	Fade("マスク枠*", 200, 0, null, false);
	Fade("絵マスク左/*", 200, 0, null, true);


	St("R",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("R",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ba22/500100500fjr">
「弱点を隠してる――？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/500100510fje">
「そゆこと」



{	CreateSE("SE01","se擬音_ギャグ_じゃじゃーん");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("C",19010, @0,@0,"fu恵那_ハルヒ_angry");
	FadeSt("C",200,true);
	}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/500100520fje">
「恐らく結び目は――袋の裏に隠れてる！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	DeleteAllSt(150,false);

	SceneOut(5000, 300, "slide_01_01_0");

	OnBG(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);

	Fade("絵背景400", 0, 0, null, true);

	DeleteAllSt(0,false);

	SceneIn(300, "slide_01_01_1");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//★ wam井野 ここと下の気がつくところ、同時でなくて良いのでしょうか？
{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/500100530skr">
「――――！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_shock");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/500100540ksr">
「――――！？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/500100550nko">
「――――！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥堕皇_通常_rage");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/500100560nki">
「――――！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	SceneOut(5000, 300, "slide_01_01_0");

//	OnBG(10,"bg0107400秋葉原_遠景_破壊");
//	FadeBG(0,true);

	Fade("絵背景400", 0, 1000, null, true);

	DeleteAllSt(0,false);

	SceneIn(300, "slide_01_01_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]

{	St("ML",700, @0,@0,"bu平次_通常_shock");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/500100570fjh">
「――――！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ba22/500100580fjr">
「――――！？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ba22/500100590mzh">
「――――！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu歌門_口覆い_shock");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ba22/500100600kms">
「――――！？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_オラオラ_shock");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/500100610mso">
「――――！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolumeEX("@x*", 1000, 0, NULL);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	DeleteAllSt(200,false);
	CreateSE("SE01","se擬音_ギャグ_セクシーボイス");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("C",700, @0,@0,"buブーa_通常_ero");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/500100620buu">
「…………なんかエロイな」

{	St("R",700, @50,@0,"bu鈴_シリアス_angry");
	Move("@StNameR/R*", 100, @-50, @0, Dxl2, false);
	FadeSt("R",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ba22/500100630fjr">
「あちょ！」

//◆ＳＥ：チョップ！
{	Move("@StNameR/R*", 200, @-100, @0, Dxl2, false);
	DeleteSt("R",200,false);

	CreateSE("SE01","se戦闘_打撃音01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",50,1000,null,true);

	St("C",700, @0,@0,"buブーa_通常_cry");
	FadeSt("C",0,true);
	Fade("フラッシュ白",500,0,null,false);
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, null, true);
	Move("@StNameC/C*", 300, @0, @50, Dxl2, false);
	DeleteAllSt(200,false);
}

//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/500100640buu">
「がうっ！」

{
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu平次_通常_cool");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/500100650fjh">
「とにかく、あのタヌキを裏返してやればいいんだな？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/500100660fje">
「そういうこと」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2254);}

//	TextBoxDelete(150);


	CreateStencil("マスク左",16100,-1024,Middle,128,"cg/mask/ciスラッシュ_05_00.png",false);

	CreateTextureEX("マスク左/絵背景100", 1000, Center, Middle, "cg/bg/bg0303100あにのあな_屋上_通常.jpg");
	Zoom("マスク左/絵背景100", 0, 1500, 1500, null, true);
	SetShade("マスク左/絵背景100", HEAVY);

	CreateTextureEX("マスク左/キャラ左", 1100, -240, 20, "cg/bu/bu沙紅羅_頭かき_sigh.png");
	Move("マスク枠", 0, -1024, 0, Dxl1, false);

	Move("マスク左/キャラ左", 200, @-50, @-100, Dxl1, false);
	Move("マスク左/絵背景100", 200, @-30, @-50, Dxl1, false);
	Fade("マスク左/絵背景100", 200, 1000, null, false);
	Fade("マスク左/キャラ左", 200, 1000, null, false);
	Move("マスク枠", 200, -80, 0, Dxl1, false);
	Move("マスク左", 200, -80, 0, Dxl1, false);
	Fade("マスク枠", 200, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/500100670skr">
「でも、あんなデカいものをどうやって――？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buみそa_オラオラ_shout");
	Move("@StNameC/C*", 300, @100, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/500100680mso">
「姐さん！　そいつは――」

{	DeleteAllSt(200,false);
	St("R",700, @-50,@0,"buブーa_オラオラ_shout");
	Move("@StNameR/R*", 300, @50, @0, Dxl2, false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/500100690buu">
「オレたちにお任せ下さいッ！」

{	CreateTextureEX("マスク左/キャラ左2", 1100, -300, -70, "cg/bu/bu沙紅羅_通常_surprise.png");
	Fade("マスク左/キャラ左", 300, 0, null, false);
	Fade("マスク左/キャラ左2", 200, 1000, null, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/500100700skr">
「え？　みそブー？」

{	CreateTextureEX("マスク左/キャラ左", 1100, -300, -70, "cg/bu/bu沙紅羅_通常_hard.png");
	Fade("マスク左/キャラ左2", 300, 0, null, false);
	Fade("マスク左/キャラ左", 200, 1000, null, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/500100710skr">
「おまえらに……なんとかできんのか？」

{	DeleteAllSt(200,false);
	St("C",700, @50,@0,"buみそa_オラオラ_pride");
	FadeSt("C",200,false);
	Zoom("@StNameC/C*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameC/C*", 100, 1000, 1000, Axl2, true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/500100720mso">
「はいっ！」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_オラオラ_normal");
	FadeSt("R",200,false);
	Zoom("@StNameR/R*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameR/R*", 100, 1000, 1000, Axl2, true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/500100730buu">
「もちろんです」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Move("マスク枠*", 200, -1024, @0, Dxl1, false);
	Move("マスク左", 200, -1024, @0, Dxl1, false);
	Move("マスク左/キャラ左", 200, @-30, @0, Dxl1, false);
	Move("マスク左/絵背景100", 200, @-30, @0, Dxl1, false);
	Fade("マスク左/絵背景100", 200, 0, null, false);
	Fade("マスク枠*", 200, 0, null, false);
	Fade("マスク左/キャラ左", 200, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu平次_通常_normal");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/500100740fjh">
「なぁに、心配すんな。
　ちゃんと、タヌキをひっくり返して見せっからよ」


{	St("C",700, @0,@0,"bu平次_通常_smile");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/500100750fjh">
「楽しみに、待ってな」


{	St("C",700, @0,@0,"bu平次_通常_hard");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/500100760fjh">
「あとは、よろしく頼んだぜ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	TextBoxDelete(150);

//◆ＳＥ：電話切れる
	CreateSE("SE02","seメカ_携帯_切れる");
	MusicStart("SE02",0,700,0,1000,null,false);

	SceneOut(5000, 300, "slide_05_00_0");

	WaitKey(500);

	CreateSE("SE03","seメカ_携帯_電話切れる01_l");
	MusicStart("SE03",0,700,0,1000,null,true);

	DeleteAllSt(0,false);

//◆場所：あにのあな_屋上
	OnBG(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);

	Fade("絵背景400", 0, 0, null, true);

	WaitKey(1000);

	SceneIn(300, "slide_05_00_1");

	Wait(1000);

	SetVolumeEX("SE02", 100, 0, NULL);



{	ClockPass(2255);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{
	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/500100770nko">
「きれた……」

{	SetVolumeEX("SE*", 100, 0, NULL);
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/500100780skr">
「任せろって……どうするつもりだ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥堕皇_通常_hard");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/500100790nki">
「あんなでかいの、ひっくり返すアテがあるのか？」


{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/500100800ksr">
「あるのさ」

{	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/500100810ksr">
「アイツは、そういう所でウソはつかねぇ男だからな」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/500100820skr">
「ふたりとも、大狸がもしひっくり返ったら――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥堕皇_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/500100830nki">
「わかってる。協力するよ」

{	St("MR",700, @0,@0,"bu似鳥堕皇_通常_hard");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/500100840nki">
「オレがこの力を身につけたのも……たぶん、運命だ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/500100850nko">
「フウリがしんだの、わたしのせい」

{	St("ML",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/500100860nko">
「せめてものつみほろぼし、したい」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/500100870skr">
「……悪ぃな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("C",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/500100880ksr">
「しかし……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：めきめき、崩れていくビル


	CreateSE("SE01","se環境_地鳴り03");
	MusicStart("SE01",0,700,0,1000,null,false);

	SceneOut(5000, 300, "slide_01_01_0");

	CreateTextureEX("タヌ", 1000, Center, Middle, "cg/ev/l/ev2220太四郎ビル大破壊b_l.jpg");
	Zoom("タヌ", 0, 520, 520, null, true);
	Fade("タヌ", 0, 1000, null, true);
	Shake("タヌ", 3000, 4, 2, 0, 0, 500, AxlDxl, false);
	Zoom("タヌ", 1000, 550, 550, null, false);
	SceneIn(300, "slide_01_01_1");
	#ev2220太四郎ビル大破壊b = true;



//	CreatePlainSP("揺用", 15000);
//	Shake("揺用", 500, 20, 15, 0, 0, 1000, Dxl1, false);
//	Fade("揺用", 500, 0, null, true);
//	Delete("揺用");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/500100890ksr">
「そんなに時間は残されてねぇぞ。
　このままじゃ、そろそろ半田明神まで――」

//◆ＳＥ：打ち上げ「ひゅー！」
{
	DeleteAllSt(200,false);

	CreateSE("SE01","se環境_花火打ち上げ");
	MusicStart("SE01",0,700,0,1000,null,false);
	WaitKey(1000);


//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/500100900skr">
「ん？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：炸裂「パン！」

	CreateSE("SE01","se環境_花火01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SEどかーん","se戦闘_爆発02");
	MusicStart("SEどかーん",0,700,0,1000,null,false);

	Shake("タヌ", 3000, 8, 5, 0, 0, 500, AxlDxl, false);

	CreateColorEXadd("絵色１", 10000, "#FF8888");
	CreateTextureEX("花火", 1100, Center, Middle, "cg/ef/ef花火_m.png");
//	SetBlur("花火", true, 3, 500, 100, false);
	Request("花火", Smoothing);
	Fade("絵色１", 0, 500, null, false);
	Fade("花火", 0, 1000, null, false);
	Zoom("花火", 2000, 1300, 1300, Dxl3, false);

	Shake("タヌ", 10000, 10, 5, 0, 0, 500, AxlDxl, false);
	MoveFTP3("@タヌ", 3000, 6, 5);
//	MoveFTP3stop();

	Wait(1000);

	Move("花火", 1000, @0, @30, null, false);

	Fade("絵色１", 1000, 0, null, false);
	Fade("花火", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200a]
//あきゅん「素材：ef花火」
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/500100910tsr">
「ぐおおおおおおおおお！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateTextureEX("マスク左/キャラ左2", 1100, -300, -70, "cg/bu/bu沙紅羅_通常_surprise.png");

	CreateStencil("マスク左",16100,-80,Middle,128,"cg/mask/ciスラッシュ_05_00.png",false);

	CreateTextureEX("マスク左/絵背景100", 1000, Center, Middle, "cg/bg/bg0303100あにのあな_屋上_通常.jpg");
	Zoom("マスク左/絵背景100", 0, 1500, 1500, null, true);
	SetShade("マスク左/絵背景100", HEAVY);

	CreateTextureEX("マスク左/キャラ左", 1100, -300, 30, "cg/bu/bu沙紅羅_通常_surprise.png");


	Move("マスク枠", 0, -1024, 0, Dxl1, false);
	Move("マスク左", 0, -1024, 0, Dxl1, false);
	Move("マスク左/キャラ左", 200, @-50, @-100, Dxl1, false);
	Move("マスク左/絵背景100", 200, @-30, @-50, Dxl1, false);
	Fade("マスク左/絵背景100", 200, 1000, null, false);
	Fade("マスク左/キャラ左", 200, 1000, null, false);
	Move("マスク左", 200, -80, 0, Dxl1, false);
	Move("マスク枠", 200, -80, 0, Dxl1, false);
	Fade("マスク枠", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/500100920skr">
「は……花火！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("マスク左/キャラ左", 200, @50, @100, Dxl1, false);
	Move("マスク左/絵背景100", 200, @30, @50, Dxl1, false);
	Fade("マスク左/絵背景100", 200, 0, null, false);
	Move("マスク枠", 200, -1024, 0, Dxl1, false);
	Move("マスク左", 200, -1024, 0, Dxl1, false);
	Fade("マスク枠", 200, 0, null, false);
	Fade("マスク左/キャラ左", 200, 0, null, true);


//◆演出指示：花火が連続してパンパン上がる
	MusicStart("@xbgm07_noint",0,450,0,1000,null,true);

	CreateSE("SE01","se環境_花火打ち上げ");
	MusicStart("SE01",0,700,0,1000,null,false);
	WaitKey(1000);
	CreateSE("SE02","se環境_花火打ち上げ");
	MusicStart("SE02",0,700,0,1000,null,false);
	WaitKey(500);
	CreateSE("SE03","se環境_花火打ち上げ");
	MusicStart("SE03",0,700,0,1000,null,false);
	WaitKey(1000);

	CreateSE("SE04","se環境_花火連打02");
	MusicStart("SE04",0,700,0,1000,null,false);

	Shake("タヌ", 3000, 8, 5, 0, 0, 500, AxlDxl, false);

	CreateColorEXadd("絵色１", 10000, "#FF8888");
//	CreateColorEXadd("絵色２", 10000, "#88FF88");
//	CreateColorEXadd("絵色３", 10000, "#8888FF");
	CreateTextureEX("花火", 1100, Center, Middle, "cg/ef/ef花火_m.png");
	Request("花火", Smoothing);


//	SetBlur("花火", true, 3, 500, 100, false);
	Zoom("花火", 0, 300, 300, Dxl3, false);
	Fade("絵色１", 0, 500, null, false);
	Fade("花火", 0, 1000, null, false);
	Zoom("花火", 2000, 1300, 1300, Dxl3, false);
	Wait(1000);
	Move("花火", 1000, @0, @30, null, false);
	Fade("絵色１", 1000, 0, null, false);
	Fade("花火", 1000, 0, null, true);

	Shake("タヌ", 3000, 15, 8, 0, 0, 500, AxlDxl, false);

	Zoom("花火", 0, 300, 300, Dxl3, false);
	Move("花火", 0, @-150, @50, null, false);
	Fade("絵色１", 0, 500, null, false);
	Fade("花火", 0, 1000, null, false);
	Zoom("花火", 2000, 1300, 1300, Dxl3, false);
	Wait(1000);
	Move("花火", 1000, @0, @30, null, false);
	Fade("絵色１", 1000, 0, null, false);
	Fade("花火", 1000, 0, null, true);

	Shake("タヌ", 10000, 20, 15, 0, 0, 500, AxlDxl, false);

	CreateSE("SEどかーん","se戦闘_爆発02");
	MusicStart("SEどかーん",0,700,0,1000,null,false);
	Zoom("花火", 0, 300, 300, Dxl3, false);
	Move("花火", 0, @300, @-150, null, false);
	Fade("絵色１", 0, 500, null, false);
	Fade("花火", 0, 1000, null, false);
	Zoom("花火", 2000, 1800, 1800, Dxl3, false);
	Wait(1000);
	Move("花火", 1000, @0, @30, null, false);
	Fade("絵色１", 2000, 0, null, false);
	Fade("花火", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210a]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/500100930tsr">
「ぐおおおおおおおおお！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//マスク準備
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureEX("絵マスク/絵背景100", 1500, 512, -650, "cg/bg/bg0107400秋葉原_遠景_破壊.jpg");
	Zoom("絵マスク/絵背景100", 0, 1200, 1200, null, true);
	SetShade("絵マスク/絵背景100", HEAVY);

//立ち絵準備
	CreateTextureEX("絵マスク/絵立絵", 1530, 630, middle, "cg/bu/bu平次_通常_shock.png");
	Request("絵マスク/絵立絵", Smoothing);

//動作準備
	Move("マスク枠", 0, 1024, 0, null, false);
	Move("絵マスク", 0, 1024, 0, null, false);
	Move("絵マスク/絵立絵", 0, 212, 200, null, true);

	Move("絵マスク/絵背景100", 300, @-30, @0, Dxl1, false);
	Fade("絵マスク/絵背景100", 300, 1000, null, false);

	Move("マスク枠", 200, 200, 0, Dxl3, false);
	Move("絵マスク", 200, 200, 0, Dxl3, false);
	Fade("絵マスク/絵立絵", 200, 1000, null, false);
	Fade("マスク枠", 200, 1000, null, false);
	Move("絵マスク/絵立絵", 200, 400, -50, Dxl1, true);


//	St("C",700, @0,@0,"bu平次_通常_shock");
//	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210b]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/500100940fjh">
「すごい……効いてる！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	Move("マスク枠", 200, 1024, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵立絵", 200, 730, 0, Axl1, false);
	Move("絵マスク/絵背景100", 200, @-30, @0, Axl1, false);
	Fade("マスク枠", 200, 0, null, false);
	Fade("絵マスク/絵立絵", 200, 0, null, true);

	TextBoxDelete(150);


	SceneOut(5000, 300, "slide_01_01_0");

	Fade("タヌ", 0, 0, null, true);


{	ClockPass(2256);}

//◆場所：半田明神_男坂
//	OnBG(10,"bg0107400秋葉原_遠景_破壊");
//	FadeBG(0,true);

	Fade("絵背景400", 0, 1000, null, true);

	SceneIn(300, "slide_01_01_1");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	St("L",700, @-50,@30,"buみそa_オラオラ_happy");
	Move("@StNameL/L*", 300, @50, @-30, Dxl2, false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/500100950mso">
「た――まや――！！」

{	St("R",700, @50,@30,"buブーa_オラオラ_happy");
	Move("@StNameR/R*", 300, @-50, @-30, Dxl2, false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/500100960buu">
「か――ぎや――！！」


{	St("C",700, @0,@100,"buユージローa_通常_pride");
	Move("@StNameC/C*", 300, @0, @-50, Dxl2, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ba22/500100970ujr">
「わお――――――んっ！！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@50,"bu平次_通常_happy");
	Move("@StNameC/C*", 300, @0, @-50, Dxl2, false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/500100980fjh">
「はっはっは！　どうでぇ！」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/500100990fjh">
「ゆるキャラバン開催記念！
　年越しの瞬間に上げるはずだった花火！」

{	St("C",700, @0,@0,"bu平次_御用だ_happy");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/500101000fjh">
「好きなだけ、くらいやがれッ！！」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu歌門_口覆い_shock");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ba22/500101010kms">
「すごい……どんどん、縮んでいく」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_一休_smile");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/500101020fje">
「花火のせいだけじゃない。
　一緒に飛ばしたコンニャクが効いてる！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

	TextBoxDelete(150);

	SceneOut(5000, 300, "slide_01_01_0");

	CreateTextureEX("タヌ", 1000, Center, Middle, "cg/ev/l/ev2220太四郎ビル大破壊b_l.jpg");
	Zoom("タヌ", 0, 1100, 1100, null, true);
	Fade("タヌ", 0, 1000, null, true);
	Shake("タヌ", 3000, 4, 2, 0, 0, 500, AxlDxl, false);
	Zoom("タヌ", 500, 1000, 1000, null, false);
	SceneIn(300, "slide_01_01_1");

	CreateSE("SE01","se環境_花火打ち上げ");
	MusicStart("SE01",0,700,0,1000,null,false);
	WaitKey(1000);
	CreateSE("SE02","se環境_花火打ち上げ");
	MusicStart("SE02",0,700,0,1000,null,false);
	WaitKey(500);
	CreateSE("SE03","se環境_花火打ち上げ");
	MusicStart("SE03",0,700,0,1000,null,false);
	WaitKey(1000);

	CreateSE("SE04","se環境_花火連打02");
	MusicStart("SE04",0,700,0,1000,null,false);

	Shake("タヌ", 3000, 8, 5, 0, 0, 500, AxlDxl, false);

	CreateColorEXadd("絵色１", 10000, "#FF8888");
//	CreateColorEXadd("絵色２", 10000, "#88FF88");
//	CreateColorEXadd("絵色３", 10000, "#8888FF");
	CreateTextureEX("花火", 1100, Center, Middle, "cg/ef/ef花火_m.png");
	Request("花火", Smoothing);

	CreateSE("SEどかーん","se戦闘_爆発02");
	MusicStart("SEどかーん",0,700,0,1000,null,false);
	Zoom("花火", 0, 300, 300, Dxl3, false);
	Fade("絵色１", 0, 500, null, false);
	Fade("花火", 0, 1000, null, false);
	Zoom("花火", 2000, 1600, 1600, Dxl3, false);
	Zoom("タヌ", 1000, 800, 800, Dxl2, false);
	Wait(1000);
	Move("花火", 1000, @0, @30, null, false);
	Fade("絵色１", 1000, 0, null, false);
	Fade("花火", 1000, 0, null, true);

	Shake("タヌ", 3000, 15, 8, 0, 0, 500, AxlDxl, false);

	Zoom("花火", 0, 300, 300, Dxl3, false);
	Move("花火", 0, @-200, @50, null, false);
	Fade("絵色１", 0, 500, null, false);
	Fade("花火", 0, 1000, null, false);
	Zoom("花火", 2000, 1700, 1700, Dxl3, false);
	Zoom("タヌ", 1000, 750, 750, Dxl2, false);
	Wait(1000);
	Move("花火", 1000, @0, @30, null, false);
	Fade("絵色１", 1000, 0, null, false);
	Fade("花火", 1000, 0, null, true);

	Shake("タヌ", 3000, 15, 8, 0, 0, 500, AxlDxl, false);

	Zoom("花火", 0, 300, 300, Dxl3, false);
	Move("花火", 0, @300, @-250, null, false);
	Fade("絵色１", 0, 500, null, false);
	Fade("花火", 0, 1000, null, false);
	Zoom("花火", 2000, 1700, 1700, Dxl3, false);
	Zoom("タヌ", 30000, 600, 600, Dxl2, false);
	Wait(1000);
	Move("花火", 1000, @0, @30, null, false);
	Fade("絵色１", 1000, 0, null, false);
	Fade("花火", 1000, 0, null, true);
	Zoom("タヌ", 30000, 550, 550, Dxl2, false);

	Shake("タヌ", 30000, 15, 8, 0, 0, 500, AxlDxl, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]


　花火と共に放たれた缶詰が破裂。

　そのたびに、大狸の袋が大きく揺れる。


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SceneOut(5000, 300, "slide_01_01_0");
	Fade("タヌ", 0, 0, null, true);
	SceneIn(300, "slide_01_01_1");


	St("MR",700, @0,@0,"bu鈴_通常_happy");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ba22/500101030fjr">
「良い塩梅でしょ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_happy");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/500101040kit">
「ああ。さすが鈴姉」

{
	DeleteAllSt(200,false);
}
　打ち上げられた弾にコンニャク缶を張り付けるのは、鈴率いるスーパーノヴァアルバイトの面々だ。

{	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ba22/500101050fjr">
「それじゃそろそろ、とっておきのヤツ行くわよ！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu平次_通常_shout");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/500101060fjh">
「いよっしゃ！　みそブー！」

{	DeleteAllSt(200,false);
	St("R",700, @50,@0,"buブーa_通常_pinch");
	Move("@StNameR/R*", 1000, @-50, @0, Dxl2, false);
	Shake("@StNameR/R*", 1000, 3, 1, 0, 0, 500, null, false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/500101070buu">
「ん……しょ、ん……しょ、ん……んん！！」

{	DeleteAllSt(200,false);
	St("L",700, @-50,@0,"buみそa_通常_pinch");
	Move("@StNameL/L*", 1000, @50, @0, Dxl2, false);
	Shake("@StNameL/L*", 1000, 3, 1, 0, 0, 500, null, false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/500101080mso">
「うぐ……うぐぐぐ……さすがにおもい……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,false);


{	St("C",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ba22/500101090mzh">
「で……でっかい！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/500101100kit">
「ってか、もう大砲って感じだな」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ba22/500101110kms">
「でも、これでダメだったら――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_ハルヒ_shock");
	FadeSt("C",200,true);
	Zoom("@StNameC/C*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameC/C*", 100, 1000, 1000, Axl2, true);
}

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/500101120fje">
「大丈夫！」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/500101130fje">
「きっと、成功するわ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2257);}

//	TextBoxDelete(150);

	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu平次_通常_hard");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/500101140fjh">
「――ふたりとも、準備いいな？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

/*
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/500101150mso">
「おう！」
//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/500101160buu">
「おう！」
*/
	DeleteAllSt(200,true);
	St("L",700, @0,@50,"buみそa_オラオラ_pride");
	St("R",700, @0,@50,"buブーa_オラオラ_normal");
	Move("@StNameL/L*", 300, @0, @-50, Dxl2, false);
	Move("@StNameR/R*", 300, @0, @-50, Dxl2, false);
	FadeSt("L",200,false);
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0261]
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/500101150">
「「おう！」」

{	SetVolumeEX("@x*", 2000, 0, NULL);
	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu平次_通常_shout");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/500101170fjh">
「みんな下がれッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　男坂の皆が、斜めになった打ち上げ筒から離れる。

{	St("C",700, @0,@0,"bu平次_通常_shout");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/500101180fjh">
「こいつが、オレたち街の人間の、意地だ！」

{	St("C",700, @0,@0,"bu平次_御用だ_shout");
	FadeSt("C",200,false);
	Zoom("@StNameC/C*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameC/C*", 100, 1000, 1000, Axl2, true);
}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/500101190fjh">
「たぁんとくらいやがれッ！！」

{

	St("C",700, @0,@0,"bu平次_御用だ_angry");
	FadeSt("C",200,true);

	CreateSE("SE01","se環境_点火");
	MusicStart("SE01",0,700,0,1000,null,false);

}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/500101200fjh">
「みんな行くぜ！　せーのっ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

	TextBoxDelete(150);

//	St("C",700, @0,@0,"bu平次_御用だ_shout");
//	St("C",700, @0,@0,"buみそa_オラオラ_shout");
//	St("C",700, @0,@0,"buブーa_オラオラ_shout");
//	St("C",700, @0,@0,"bu鈴_シリアス_angry");
//	St("C",700, @0,@0,"bu恵那_ハルヒ_angry");
//	St("C",700, @0,@0,"bu千秋_気合い_hard");
//	St("C",700, @0,@0,"buミヅハ_フラット_happy");
//	St("C",700, @0,@0,"bu歌門_威圧_shout");
//	St("C",700, @0,@0,"bu村崎_通常_happy");


/*
//◆音声指示：同時
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/500101210fjh">
「発射！！」
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/500101220mso">
「発射！！」
//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/500101230buu">
「発射！！」
//◆音声指示：同時
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ba22/500101240fjr">
「発射！！」
//◆音声指示：同時
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/500101250fje">
「発射！！」
//◆音声指示：同時
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/500101260kit">
「発射！！」
//◆音声指示：同時
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ba22/500101270mzh">
「発射！！」
//◆音声指示：同時
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ba22/500101280kms">
「発射！！」
//◆音声指示：同時
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ba22/500101290msi">
「発射！！」

*/

//立ち絵準備
	CreateTextureEX("立絵10", 880, 640, 152, "cg/bu/buミヅハ_フラット_happy.png");
	CreateTextureEX("立絵20", 870, 387, 154, "cg/bu/bu恵那_ハルヒ_angry.png");
	CreateTextureEX("立絵30", 860, 186, 137, "cg/bu/bu千秋_気合い_hard.png");
	CreateTextureEX("立絵40", 850, 350, -42, "cg/bu/bu歌門_威圧_shout.png");
	CreateTextureEX("立絵50", 840, 17, 71, "cg/bu/bu鈴_シリアス_angry.png");
	CreateTextureEX("立絵60", 830, -185, 78, "cg/bu/bu村崎_通常_happy.png");
	CreateTextureEX("立絵70", 820, -93, -326, "cg/bu/buみそa_オラオラ_shout.png");
	CreateTextureEX("立絵80", 810, 35, -171, "cg/bu/bu平次_御用だ_shout.png");
	CreateTextureEX("立絵90", 800, 365, -175, "cg/bu/buブーa_オラオラ_shout.png");
	CreateTextureEX("立絵100", 800, -200, -100, "cg/bu/buユージローa_通常_angry.png");

//動作準備
	Move("立絵10", 0, @-50, @100, null, false);
	Move("立絵20", 0, @-10, @100, null, false);
	Move("立絵30", 0, @10, @100, null, false);
	Move("立絵40", 0, @-50, @100, null, false);
	Move("立絵50", 0, @50, @100, null, false);
	Move("立絵60", 0, @50, @100, null, false);
	Move("立絵70", 0, @30, @100, null, false);
	Move("立絵80", 0, @0, @100, null, false);
	Move("立絵90", 0, @-30, @100, null, true);

	Wait(16);

//立ち絵移動表示
	Shake("立絵*", 10000, 1, 2, 0, 0, 500, null, false);
	Move("立絵20", 200, @10, @-100, Dxl2, false);
	Move("立絵30", 200, @-10, @-100, Dxl2, false);
	Fade("立絵20", 200, 1000, null, talse);
	Fade("立絵30", 200, 1000, null, talse);
	Wait(50);
	Move("立絵10", 200, @50, @-100, Dxl2, false);
	Move("立絵50", 200, @-50, @-100, Dxl2, false);
	Fade("立絵10", 200, 1000, null, talse);
	Fade("立絵50", 200, 1000, null, talse);
	Wait(50);
	Move("立絵40", 200, @50, @-100, Dxl2, false);
	Move("立絵60", 200, @-50, @-100, Dxl2, false);
	Fade("立絵40", 200, 1000, null, talse);
	Fade("立絵60", 200, 1000, null, talse);
	Wait(50);
	Move("立絵70", 200, @-30, @-100, Dxl2, false);
	Fade("立絵70", 200, 1000, null, talse);
	Wait(50);
	Move("立絵80", 200, @0, @-100, Dxl2, false);
	Move("立絵90", 200, @30, @-100, Dxl2, false);
	Move("立絵100", 200, @-30, @-50, Dxl2, false);
	Fade("立絵80", 200, 1000, null, talse);
	Fade("立絵90", 200, 1000, null, true);
	Fade("立絵100", 200, 1000, null, true);

	Wait(16);

//揺れと集中線
	CreatePlainSP("揺用", 19010);


	CreateMovieEX("ムービー１", 19020, Center, Middle, true, true, "dx/mv_集中線白a1.ngs");
	Zoom("ムービー１", 0, 4000, 2500, null, true);
	Fade("ムービー１", 100, 1000, null, false);

	Wait(16);

	Delete("立絵*");
	Shake("揺用", 2000, 1, 2, 0, 0, 500, null, false);
	Zoom("揺用", 0, 1005, 1005, Dxl2, true);
	Zoom("揺用", 20000, 1020, 1020, Dxl2, false);

	MusicStart("@xbgm19",0,450,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//◆音声指示：同時
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/500101210">
「発射！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2258);}

	DeleteAllSt(0,false);

//	TextBoxDelete(150);

//◆演出指示：花火が飛ぶ

//	SetShade("@OnBG*", HEAVY);

	CreateSE("SE01","se動作_煙幕");
	MusicStart("SE01",0,700,0,1000,null,false);


	CreateSE("SE02","se環境_花火打ち上げ");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateColorEXadd("絵色１", 19040, "#FF8888");
	CreateColorEXadd("フラッシュ白", 19050, "WHITE");

	Fade("絵色１", 100, 500, null, false);
	Wait(100);
	Fade("フラッシュ白",50,1000,null,true);
	Fade("フラッシュ白",500,0,null,false);
	Fade("絵色１", 1000, 0, null, true);


	Fade("揺用", 500, 200, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
{	St("C",19010, @50,@0,"fu恵那_哀愁_pinch");
	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/500101300fje">
「お願い！」

{	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	DeleteAllSt(200,true);
	St("C",19010, @50,@0,"fu千秋_気合い_hard");
	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/500101310kit">
「頼む！」

//★ wam井野 ミズハfu素材がないのでひとまずzoomにて
{	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	DeleteAllSt(200,true);
	St("C",19010, @50,@0,"buミヅハ_通常_angry");
	Request("@StNameC/C*", Smoothing);
	Zoom("@StNameC/C*", 0, 1500, 1500, null, true);
	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ba22/500101320mzh">
「行くのじゃ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//◆演出指示：花火「ドドドドドドドン！！」

	DeleteAllSt(200,false);

	Zoom("タヌ", 0, 500, 500, null, true);
	Fade("タヌ", 0, 1000, null, true);
	FadeDelete("揺用", 1000, null, false);

	Zoom("タヌ", 700, 800, 800, Axl1, true);

	Fade("フラッシュ白", 0, 1000, null, true);
	Fade("フラッシュ白", 500, 0, null, false);


	CreateSE("SE05","se環境_花火01");
	MusicStart("SE05",0,700,0,1000,null,false);
	CreateSE("SE06","se環境_花火連打01");
	MusicStart("SE06",0,700,0,1000,null,false);


	CreateTextureEX("花火", 1100, Center, Middle, "cg/ef/ef花火_m.png");
//	SetBlur("花火", true, 3, 500, 100, false);
	Zoom("花火", 0, 300, 300, Dxl3, false);
	Fade("絵色１", 0, 500, null, false);
	Fade("花火", 0, 1000, null, false);
	Zoom("花火", 2000, 1300, 1300, Dxl3, false);

	Zoom("タヌ", 15000, 600, 600, null, false);

	Shake("タヌ", 3000, 20, 15, 0, 0, 500, AxlDxl, false);
	Move("タヌ", 300, @30, @20, Dxl2, false);

	Wait(1000);
	Move("花火", 1000, @0, @30, null, false);
	Fade("絵色１", 1000, 0, null, false);
	Fade("花火", 1000, 0, null, true);

	Zoom("花火", 0, 300, 300, Dxl3, false);
	Fade("絵色１", 0, 500, null, false);
	Fade("花火", 0, 1000, null, false);
	Zoom("花火", 2000, 2000, 2000, Dxl3, false);
	Wait(1000);
	Move("花火", 1000, @0, @30, null, false);
	Fade("絵色１", 3000, 0, null, false);
	Fade("花火", 1000, 0, null, true);


	Shake("タヌ", 30000, 20, 15, 0, 0, 500, AxlDxl, false);
	Move("タヌ", 15000, @30, @20, Dxl2, false);

//	SetVolumeEX("@x*", 2000, 0, NULL);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0301]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/500101330tsr">
「ぐおおおおおおおおおんんん！！！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	CreateColorSP("黒幕１", 25000, "BLACK");
//	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

//	CreateSE("SE01","se人体_倒れる03");
//	MusicStart("SE01",0,700,0,1000,null,false);
//◆ＳＥ：ずでーん！
	CreateSE("SE02","se戦闘_倒壊04");
	MusicStart("SE02",0,700,0,1000,null,false);



//	OnBG(10,"bg1101500スパコン館_裏面_廃墟");
//	FadeBG(0,true);

	Fade("フラッシュ白", 2000, 1000, null, true);

	CreateMovie("ムービー１", 1200, 227, 151, true, true, "dx/mvk100.ngs");
	Zoom("ムービー１", 0, 3000, 3000, null, true);
	CreateMovie("ムービー２", 1200, 227, 151, true, true, "dx/mvk100.ngs");
	Rotate("ムービー２", 0, @0,180,@0, null,true);
	Zoom("ムービー２", 0, 3000, 3000, null, true);

	Zoom("ムービー１", 1500, 40000, 3000, Dxl1, false);
	Zoom("ムービー２", 1500, 30000, 3000, Axl1, false);

	Fade("フラッシュ白", 1000, 700, null, true);

//	DrawDelete("黒幕１", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0305]
　濛々と巻き上がる煙。

　大狸の身体が、廃墟の真ん中でひっくり返る。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

//あきゅん「素材：ev2220太四郎ビル大破壊c」
//	SceneOut(5000, 1000, "blind_01_00_0");

	Fade("フラッシュ白", 1000, 1000, null, true);


	CreateTextureEX("タヌ", 1000, Center, Middle, "cg/ev/l/ev2220太四郎ビル大破壊c_l.jpg");
//	SetBlur("タヌ", true, 5, 500, 50, false);
	Zoom("タヌ", 0, 1000, 1000, null, true);
	Fade("タヌ", 0, 1000, null, true);

	#ev2220太四郎ビル大破壊c = true;

	FadeDelete("ムービー１", 2000, null, false);
	FadeDelete("ムービー２", 2500, null, false);
	Fade("フラッシュ白", 5000, 0, null, false);

//	MusicStart("@xbgm30",0,700,0,0,null,true);

	SceneIn(1000, "blind_01_00_1");

//	Shake("タヌ", 30000, 4, 2, 0, 0, 500, AxlDxl, false);
	Zoom("タヌ", 10000, 550, 550, Dxl2, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　裏返ったその真ん中――

　確かに、袋と袋が合わさったかすかな隙間がある。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(2259);}

//◆場所：秋葉原_上空



	SceneOut(15000, 300, "slide_01_01_0");

	CreateTextureEX("絵背景100", 100, Center, -512, "cg/bg/bg2401100空_上空_通常.jpg");
	Zoom("絵背景100", 0, 1500, 1500, null, false);
	Fade("絵背景100", 0, 1000, null, true);
	Fade("タヌ", 0, 0, null, true);

	CreateMovie("ムービー１", 500, 0, 0, true, true, "dx/mvk100.ngs");
	Zoom("ムービー１", 0, 20000, 5000, Dxl1, false);


	DeleteAllSt(0,false);
	Zoom("@OnBG*", 0, 2000, 2000, null, true);
	SceneIn(200, "slide_01_01_1");

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");

	CreateSE("SE06","se戦闘_金属弾く04");
	MusicStart("SE06",0,700,0,1000,null,false);
	CreateSE("SE02","se戦闘_鎖01");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("MR",700, @0,@0,"fu似鳥堕皇_通常_rage");
	Fade("フラッシュ白", 0, 1000, null, true);
	Fade("フラッシュ白", 700, 0, null, false);
	Move("@StNameMR/MR*", 500, @-400, @0, Dxl2, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0315]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/500101340nki">
「シュヴァルツシルト・チェイン――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE07","se戦闘_刃物構える");
	CreateSE("SE08","se戦闘_カッター_刃出す02早いa");
	MusicStart("SE07",0,700,0,1000,null,false);
	MusicStart("SE08",0,700,0,1000,null,false);

	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"fuノーコa_幽霊_normal");
	Zoom("@StNameML/ML*", 0, 700, 700, null, true);
	Move("@StNameML/ML*", 0, @0, @80, Dxl1, false);
	Request("@StNameML/ML*", Smoothing);
	Fade("フラッシュ白", 0, 1000, null, true);
	Fade("フラッシュ白", 700, 0, null, false);
	Move("@StNameML/ML*", 500, @400, @0, Dxl2, false);
	FadeSt("ML",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0316]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/500101350nko">
「イシュタムのみちびき――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Zoom("絵背景100", 20000, 1100, 1100, null, false);
	Move("絵背景100", 20000, @0, @300, Dxl2, false);

	DeleteAllSt(200,false);
	St("MR",690, @-400,@50,"bu似鳥堕皇_通常_rage");
	Request("@StNameMR/MR*", Smoothing);
	Zoom("@StNameMR/MR*", 0, 1500, 1500, null, true);
	Zoom("@StNameMR/MR*", 3000, 1000, 1000, Dxl2, false);
	Move("@StNameMR/MR*", 3000, @0, @-50, Dxl2, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0317]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/500101360nki">
「繋ぐ鎖に――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	DeleteAllSt(200,false);
	St("ML",700, @400,@-50,"buノーコa_幽霊_normal");
	Request("@StNameML/ML*", Smoothing);
	Zoom("@StNameML/ML*", 0, 1500, 1500, null, true);
	Zoom("@StNameML/ML*", 3000, 1000, 1000, Dxl2, false);
	Move("@StNameML/ML*", 3000, @0, @50, Dxl2, false);
	FadeSt("ML",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0318]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/500101370nko">
「たつやいば――」

{
//	DeleteAllSt(200,false);
	St("MR",690, @-100,@0,"bu似鳥堕皇_通常_angry");
	Move("@StNameMR/MR*", 300, @200, @0, Dxl2, false);
	Move("@StNameML/ML*", 300, @-450, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/500101380nki">
「ふたつが合わさり――」

{	St("ML",700, @-50,@0,"buノーコa_幽霊_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/500101390nko">
「ひとつになる――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameMR/MR*", 300, @-50, @-50, Dxl2, false);
	Move("@StNameML/ML*", 300, @50, @-50, Dxl2, false);
	DeleteAllSt(200,false);
	Wait(500);



	CreateSE("SE01","se戦闘_金属衝突01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureEXadd("合体", 1010, Center, -200, "cg/ef/ef036_無我の境地.jpg");
	Fade("フラッシュ白", 100, 1000, null, true);
	SetBlur("合体", true, 1, 300, 300, false);
	Fade("合体", 0, 1000, null, true);
	Zoom("合体", 0, 500, 500, null, true);
//	Shake("合体", 300000, 1, 1, 0, 0, 1000, null, false);
	Rotate("合体", 900000, @0, @0, 72000, Dxl1, false);
	Fade("フラッシュ白", 1500, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0319a]
　上空で合わさる、ふたつの人影。

　突き出された刃は、ただ真っ直ぐ、あらわになった裂け目目掛けて突き進み――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

/*

//◆音声指示：同時
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/500101400nki">
「行け――」
//◆音声指示：同時
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/500101410nko">
「ゆけ――」

*/
	Fade("フラッシュ白", 10000, 1000, Axl3, false);
	CreateSE("SE00","se環境_地鳴り02_l");
	MusicStart("SE00",0,700,0,1000,null,true);
	CreateSE("SE03","se戦闘_金属弾く04");
	MusicStart("SE03",0,700,0,1000,null,false);


	Zoom("合体", 10000, 5000, 5000, Axl1, false);
	Rotate("合体", 900000, @0, @0, 720000, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0319b]
//◆音声指示：同時
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/500101400nki">
「行け――」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ノーコ】
//<voice name="ノーコ" class="ノーコ" src="voice/ba22/500101410nko">
//「ゆけ――」

</PRE>
	SetText();
	AddText(1,"「行け――」","似鳥戴斗","ba22/500101400nki",false,false,1000);
	AddText(2,"「ゆけ――」","ノーコ","ba22/500101410nko",true,true,1600);
	TypeBeginD();//―――――――――――――――――――――――――――

	TextBoxDelete(150);

/*
//◆音声指示：同時
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/500101420nki">
「デッド・ノー・アンジェラスッ！！」
//◆音声指示：同時
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/500101430nko">
「デッド・ノー・アンジェラスッ！！」
*/
	CreateSE("SE11","se動作_ジャンプ");
	MusicStart("SE11",0,700,0,1000,null,false);


	CreateColorSP("絵黒幕", 25000, "BLACK");

	Fade("フラッシュ白", 0, 0, null, false);

	DrawTransition("絵黒幕", 100, 0, 1000, 0, null, "cg/data/circle_02_00_1.png", true);

	Move("マスク枠", 0, 0, 0, null, false);
	Fade("マスク枠", 0, 1000, null, false);

	Delete("ムービー１");
	Fade("合体", 0, 0, null, true);
//	Delete("合体");

	CreateStencil("マスク右",16100,center,Middle,128,"cg/mask/ciスラッシュ_05_01.png",false);

	CreateColorSP("マスク右/絵演色右", 1450, "#FF0000");
	CreateColorSP("絵演色左", 1300, "#00FF00");

	CreateTextureSPmul("マスク右/絵演背景", 1460, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	CreateTextureSPmul("絵背景100", 1350, Center, Middle, "cg/ef/ef001_汎用移動.jpg");

	CreateTextureEX("マスク右/キャラ似鳥", 1470, Center, Middle, "cg/fu/fu似鳥堕皇_通常_rage.png");
	CreateTextureEX("キャラノーコ", 1370, Center, Middle, "cg/fu/fuノーコa_カッター_angry.png");

	Zoom("キャラノーコ", 0, 700, 700, null, true);

	Move("マスク右/キャラ似鳥", 0, @200, @-150, Dxl1, false);
	Move("キャラノーコ", 0, @-300, @0, Dxl1, false);

	Request("キャラノーコ", Smoothing);

	Zoom("絵背景100", 0, 1500, 1500, null, true);
	Move("絵背景100", 0, @-400, @0, null, true);

	Fade("マスク右/絵背景右", 300, 1000, null, false);
	Fade("絵背景100", 0, 1000, null, true);

	DrawDelete("絵黒幕", 100, 0, null, "circle_02_00_1", true);

	Move("マスク右/キャラ似鳥", 300, @50, @-100, Dxl1, false);
	Move("キャラノーコ", 300, @-50, @-100, Dxl1, false);

	Fade("マスク右/キャラ似鳥", 300, 1000, null, false);

	Fade("キャラノーコ", 300, 1000, null, true);


	CreateSE("SE09","se戦闘_氷砕ける");
	MusicStart("SE09",0,700,0,1000,null,false);


	Fade("フラッシュ白", 0, 1000, null, true);
	Fade("フラッシュ白", 700, 0, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//◆音声指示：同時
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/500101420nki">
「デッド・ノー・アンジェラスッ！！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ノーコ】
//<voice name="ノーコ" class="ノーコ" src="voice/ba22/500101430nko">
//「デッド・ノー・アンジェラスッ！！」

</PRE>
	SetText();
	AddText(1,"「デッド・ノー・アンジェラスッ！！」","似鳥戴斗","ba22/500101420nki",false,false,1000);
	AddText(2,"「デッド・ノー・アンジェラスッ！！」","ノーコ","ba22/500101430nko",true,true,1600);
	TypeBeginD();//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@*", 2000, 0, NULL);

	CreateSE("SE12","se戦闘_爆発01");
	MusicStart("SE12",0,700,0,1000,null,false);

	Fade("フラッシュ白", 200, 1000, null, true);


	Fade("合体", 0, 1000, null, true);
	Zoom("合体", 0, 5000, 5000, null, true);
	SetBlur("合体", false, 1, 300, 300, false);
	Move("合体", 0, @0, -1000, Axl1, true);
	Rotate("合体", 900000, @0, @0, 720000, Dxl1, false);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 400, 0, 1000, 100, null, "cg/data/circle_02_00_0.png", true);

	Fade("フラッシュ白", 0, 0, null, false);

	Zoom("タヌ", 0, 1000, 1000, null, true);
	Move("タヌ", 0, -600, 0, Axl1, true);
	Fade("タヌ", 0, 1000, null, true);
	DeleteAllSt(0,false);
	Fade("絵背景1000", 0, 0, null, true);
	Fade("マスク右/絵背景右", 0, 0, null, false);
	Fade("マスク右/キャラ恵那*", 0, 0, null, false);
	Fade("絵背景100", 0, 0, null, true);
	Fade("キャラ千秋*", 0, 0, null, true);
	Fade("絵演色*", 0, 0, null, true);

	CreatePlainSP("揺用", 15000);

	Delete("マスク*");
	Delete("キャラ*");
	Delete("絵背景*");
	Delete("絵演色*");
	Fade("揺用", 0, 0, null, true);
	Delete("揺用");

	DrawDelete("絵黒幕", 300, 100, null, "circle_02_00_1", true);

	CreateSE("SE01","se戦闘_倒壊03");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("合体", 300, @0, 0, Axl1, true);
	Zoom("合体", 2000, 8000, 8000, null, false);

	Fade("フラッシュ白", 2000, 1000, null, false);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/500101440tsr">
「ぐおおおおおおおおおんんん！！！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆演出指示：なかから、金色の液体が漏れる

	CreateMovie("ムービー１", 1500, Center, 0, true, true, "dx/mvk100.ngs");
	Zoom("ムービー１", 0, 3000, 8000, Dxl1, false);

	CreateColorEXadd("黄色", 1500, "#FFFF00");
	Fade("黄色", 1000,200, null, true);
	Fade("フラッシュ白", 2000, 300, null, false);

	SetVolumeEX("@x*", 2000, 0, NULL);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340a]
　金の皮が、禿げた。

　中から現れた大狸は――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	CreateColorEX("フラッシュ白", 15000, "White");
//	Fade("フラッシュ白",0,1000,null,true);
	CreateTextureEX("タヌ２", 1100, center, 0, "cg/ev/l/ev2220太四郎ビル大破壊d_l.jpg");
	Fade("タヌ２", 1500, 1000, null, false);

	FadeDelete("合体",300,null,false);
	Fade("フラッシュ白",500,0,null,false);

	FadeDelete("ムービー１",1500, null, true);
	FadeDelete("黄色",1500, null, true);


	Wait(1000);
	Move("タヌ２", 2000, @0, -288, AxlDxl, false);
	Zoom("タヌ２", 2000, 500, 500, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340b]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/500101450tsr">
「ぐおおおおおおおおおんんん…………」

//あきゅん「素材：ev2220太四郎ビル大破壊d」
　子供のように、泣いていた。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//窓準備
	CreateAXLWindowEX("絵窓", "Y", 2600, 100, 300, false);
	WindowAXLZoom("絵窓", "Y", 0, 0, null, true);
	CreateColorSP("絵窓/絵演色", 1510, "#009999");
	CreateTextureSPadd("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Move("絵窓/絵演背景", 0, @0, @0, null, true);

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1600, center, middle, "cg/fu/fu沙紅羅_後ろ向き_hard.png");
	Move("絵窓/絵演立絵", 0, @300, @-200, null, true);

//動作
	Fade("絵窓/絵演立絵", 200, 1000, null, false);
	Move("絵窓/絵演立絵*", 200, @-200, @0, Dxl2, false);
	WindowAXLZoom("絵窓", "Y", 200, 1000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0341]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/500101460skr">
「その涙――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

//◆ＳＥ：ロシアンルーレット・シリンダ回す
	CreateSE("SE01","se銃_シリンダー回転");
	MusicStart("SE01",0,700,0,1000,null,false);

//◆ＥＶ："ev/ev2250沙紅羅銃構え.txt"


	Wait(1000);

//収納
	Move("絵窓/絵演立絵*", 200, @-200, @0, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, false);
	WindowAXLZoom("絵窓", "Y",200, 0, Axl2, true);
	Delete("@絵窓*");

	CreateSE("SE02","se銃_シリンダー装填");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateColorEX("フラッシュ白", 15000, "White");
	Fade("フラッシュ白",0,1000,null,true);
	CreateTextureEX("絵背景２_m", 1000, -512, 0, "cg/ev/m/ev2250沙紅羅銃構え_m.jpg");
	Fade("絵背景２_m", 0, 1000, null, true);
	SetBlur("絵背景２_m", true, 5, 500, 50, false);
	Move("絵背景２_m", 500, @50, @0, Dxl2, false);
	Fade("フラッシュ白",500,0,null,faise);

	Delete("タヌ*");

	Wait(1000);

	CreateSE("SE03","se銃_セーフ解除");
	MusicStart("SE03",0,700,0,1000,null,false);
	CreateSE("SE04","se戦闘_風切り音10");
	MusicStart("SE04",0,700,0,1000,null,false);

	Fade("フラッシュ白",0,1000,null,true);

	SetBlur("絵背景２_m", true, 5, 500, 50, false);
	Move("絵背景２_m", 0, 0, 0, Dxl2, false);
	Move("絵背景２_m", 500, @-50, @0, Dxl2, false);
	Fade("フラッシュ白",500,0,null,faise);

	Wait(1000);

//	CreateSE("SE03","se戦闘_木刀_激突");
//	MusicStart("SE03",0,700,0,1000,null,false);

//ギャグっぽいので削除
//	CreateSE("SE05","se擬音_百野殺駆登場");
//	MusicStart("SE05",0,700,0,1000,null,false);



	Fade("フラッシュ白",0,1000,null,true);

	CreateTextureEX("絵背景２_l", 1100, center, middle, "cg/ev/l/ev2250沙紅羅銃構え_l.jpg");
	Request("絵背景２_l", Smoothing);
	SetBlur("絵背景２_l", true, 5, 500, 50, false);
	Fade("絵背景２_l", 0, 1000, null, true);
	Fade("フラッシュ白",1500,0,null,faise);

	Zoom("絵背景２_l", 1200, 500, 500, Dxl3, true);

	CreateTextureSP("絵場面", 2010, Center, Middle, "cg/ev/ev2250沙紅羅銃構え.jpg");
	FadeDelete("絵背景２_l", 2000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0345]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/500101470skr">
「アタシが、止めてやるよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreatePlainSP("絵板写", 5000);
	Wait(15);

	Delete("絵マスク*");
	Delete("花火*");
	Delete("ムービー*");
	Delete("合体");
	Delete("フラッシュ*");
	Delete("@NutFTP*");

	EndScene();
}
