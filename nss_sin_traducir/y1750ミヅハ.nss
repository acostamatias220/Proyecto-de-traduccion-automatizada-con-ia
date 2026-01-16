
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene y1750ミヅハ.nss_MAIN
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
	$GameName = "";
	$GameCircle=false;

	#START_FLAG=true;
	$SYSTEM_backselect_lock=false;
}

scene y1750ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="550">
////////////header////////////
//file name "y1750ミヅハ.nss"
//title "１０年前のカゴメアソビ"
//previous ""

////////////footer////////////
//next "" "1800○○.nss"

////////////body////////////

//あきゅん「演出：暗転開始スクリプト」

//■再定義定型文
	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒上", 4000, "#000000");
	FadeDelete("上背景", 0, null, true);

{	ClockTime(1746);}

{	//St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
<voice name="ミヅハノメ" class="ミヅハ" src="voice/y17/500200010mhn">
（それは、１０年前――）

{	//St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/y17/500200020mhn">
（雨が激しく降りしきる、夜のこと――）

{	//St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/y17/500200030mhn">
（秋葉原に、１丁の銃があった）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateColorSP("絵色黒", 2100, "#000000");
	DrawTransition("絵色黒", 1000, 0, 300, 100, null, "cg/data/circle_02_00_1.png", true);

	CreateTextureSP("絵背景", 2010, Center, Middle, "cg/img/imgアザナエルa.png");
	CreateColorSP("絵背景黒", 2009, "#000000");

	SoundPlay("@xbgm14_pia",2000,450,true);
	FadeDelete("絵色黒上", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
{	//St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/y17/500200040mhn">
（アザナエル――
　５つの願いと引き替えに、ひとつの命を奪う凶器）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1747);}

	//TextBoxDelete(150);

	CreatePlainSP("絵板写", 2500);
	Delete("絵色黒");
	Delete("絵背景");
	Delete("絵背景黒");
	CreateTextureSP("絵背景下", 2000, Center, Middle, "cg/img/imgアザナエル.jpg");

{	//St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
<voice name="ミヅハノメ" class="ミヅハ" src="voice/y17/500200050mhn">
（うしろの正面の生け贄を、飛び立つタマが狙い撃つ）

{	//St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/y17/500200060mhn">
（禁断の遊戯――<?>
{	FadeDelete("絵板写", 500, null, true);}
カゴメアソビ）

{	//St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/y17/500200070mhn">
（参加したのは、６つの命。６つの願い）






//◆演出指示：ジャブル

{	WaitAction("絵板写", null);
	CreateTextureEX("絵演人影左", 2010, 0, Middle, "cg/ef/efカゴメヒトカゲ.png");
	Fade("絵演人影左", 1000, 1000, null, false);
	//St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/y17/500200080mhn">
（ひとりは――数学の天才だった）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

{	//St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
<voice name="ミヅハノメ" class="ミヅハ" src="voice/y17/500200090mhn">
（彼は、全ての運命を操ることを欲した）

{	//St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/y17/500200100mhn">
（自らが、神に成り代わることを望み――）

{	//St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/y17/500200110mhn">
（運命を見通す、明晰な頭脳を手に入れた）



//◆演出指示：サイババ

{	WaitAction("絵演人影左", null);
	CreateTextureSP("絵演人影中左", 2010, 0, Middle, "cg/ef/efカゴメヒトカゲ.png");
	Move("絵演人影中左", 2000, @160, @0, null, false);
	//St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/y17/500200120mhn">
（ひとりは――電気街の申し子だった）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1748);}

	//TextBoxDelete(150);

{	//St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
<voice name="ミヅハノメ" class="ミヅハ" src="voice/y17/500200130mhn">
（彼女は、世界の全ての秘密を暴くことを欲した）

{	//St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/y17/500200140mhn">
（自らが、電脳世界の盟主になることを望み――）

{	//St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/y17/500200150mhn">
（万物の秘密を握る、長い手を得た）





//◆演出指示：富士見平次

{	WaitAction("絵演人影中左", null);
	CreateTextureSP("絵演人影中", 2010, 160, Middle, "cg/ef/efカゴメヒトカゲ.png");
	Move("絵演人影中", 2000, @160, @0, null, false);
	//St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/y17/500200160mhn">
（ひとりは――正義感の強い警官だった）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

{	//St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
<voice name="ミヅハノメ" class="ミヅハ" src="voice/y17/500200170mhn">
（彼は、世界の悪を打ち砕くことを欲した）

{	//St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/y17/500200180mhn">
（だが、自らの最愛の人を失うことを恐れ――）

{	//St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/y17/500200190mhn">
（トリガーを引かぬまま、家族の元へと帰った）



//◆演出指示：河原屋双六

{	WaitAction("絵演人影中", null);
	CreateTextureSP("絵演人影中右", 2010, 320, Middle, "cg/ef/efカゴメヒトカゲ.png");
	Move("絵演人影中右", 2000, @160, @0, null, false);
	//St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/y17/500200200mhn">
（ひとりは――自然の摂理に逆らう男だった）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1749);}

	//TextBoxDelete(150);

{	//St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
<voice name="ミヅハノメ" class="ミヅハ" src="voice/y17/500200210mhn">
（彼は、永遠の安息を欲していた）

{	//St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/y17/500200220mhn">
（自らが、命を絶たれることだけを望み――）

{	//St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/y17/500200230mhn">
（しかし、その夢は阻まれた）



//◆演出指示：歌門繁

{	WaitAction("絵演人影中右", null);
	CreateTextureSP("絵演人影右", 2010, 480, Middle, "cg/ef/efカゴメヒトカゲ.png");
	Move("絵演人影右", 2000, @160, @0, null, false);
	//St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/y17/500200240mhn">
（ひとりは――神に仕える男だった）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

{	//St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
<voice name="ミヅハノメ" class="ミヅハ" src="voice/y17/500200250mhn">
（彼は、世の災いが除かれることを欲した）

{	//St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/y17/500200260mhn">
（自らが、アザナエルの力を封印することを望み――）

{	//St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/y17/500200270mhn">
（二度と、帰らぬ人となった）






{	WaitAction("絵演人影右", null);
	CreateTextureSP("絵演人影右右", 2010, 640, Middle, "cg/ef/efカゴメヒトカゲ.png");
	Move("絵演人影右右", 2000, @160, @0, null, false);
	//St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/y17/500200280mhn">
（そして最後のひとり、それは――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 3000, 0, null);

	WaitAction("絵演人影右右", null);

	CreateColorEX("絵色黒", 20010, "#000000");

	CreatePlainSP("絵板写", 5000);
	Wait(16);
	Delete("絵演*");
	Fade("絵色黒", 2700, 1000, null, false);
	Move("絵板写", 3000, -4400, 1000, null, false);
	Zoom("絵板写", 3000, 10000, 10000, null, true);

//◆場所：半田明神_拝殿
	OnBG(10,"bg0607100半田明神_拝殿_通常");
	FadeBG(0,true);

	//TextBoxDelete(150);

{	St("C",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("C",0,true);}

	Wait(16);

	CreatePlainSP("絵板写弐", 1900);
	Zoom("絵板写弐", 0, 5000, 5000, null, true);

	Delete("絵演*");
	Delete("絵背景*");
	Delete("絵板写");

	FadeDelete("絵色黒", 300, null, false);
	Zoom("絵板写弐", 450, 1000, 1000, Dxl2, true);
	Delete("絵板写弐");

{	ClockPass(1750);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/y17/500200290mzh">
（わらわじゃ！）

{	St("C",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("C",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/y17/500200300mzh">
（無論、わかっておる！　わかっておるぞ！
　今日がどれだけ大事な日であるか！）

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/y17/500200310mzh">
（１０年前に人間を救うため、神の力を行使した罰――）

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/y17/500200320mzh">
（わらわは力を奪われ、この姿で地上に置き去りにされることとなった……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

	SoundPlay("@xbgm25",0,450,true);

{	St("C",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハ】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
<voice name="ミヅハ" class="ミヅハ" src="voice/y17/500200330mzh">
（あれから１０年――）

{	St("C",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("C",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/y17/500200340mzh">
（わらわはずっと、この半田明神拝殿の中で、苦難の時を過ごしておった）

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/y17/500200350mzh">
（星とふたりきりで、苦難の時を、ずっと、ずっと）

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/y17/500200360mzh">
（アザナエルの呪いは、今や当時とは比べものにならないほどに弱まっておる）

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/y17/500200370mzh">
（今夜年を越したなら、呪いは完全に解けるじゃろう）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1751);}

	//TextBoxDelete(150);


//【ミヅハ】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
<voice name="ミヅハ" class="ミヅハ" src="voice/y17/500200380mzh">
（カゴメアソビが終われば、わらわは自由の身――）

{	St("C",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/y17/500200390mzh">
（もう一息で、わらわの望みが叶う――）



//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/y17/500200400mzh">
（じゃが――）

{	SetVolumeEX("@xbgm*", 500, 0, null);
	St("C",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/y17/500200410mzh">
（しかし――）

{	St("C",700, @0,@0,"buミヅハ_通常_surprise");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/y17/500200420mzh">
（しかし――――ッ！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);






	CreateTextureEX("絵背景", 1000, Center, Middle, "cg/bg/bg0604111半田明神_社務所_通常.jpg");
	Fade("絵背景", 500, 1000, null, true);

//◆場所：半田明神_社務所
	OnBG(10,"bg0604111半田明神_社務所_通常");
	FadeBG(0,true);

	DeleteAllSt(0,true);
	Delete("絵背景");
	SoundPlay("@xbgm13",0,450,true);

//【ミヅハ】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
<voice name="ミヅハ" class="ミヅハ" src="voice/y17/500200430mzh">
（先日、わらわに郵便物が届いた）

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/y17/500200440mzh">
（なんでも通販かたろぐといかいうものらしい。
　長年生きてきたが、こんな経験は初めてじゃ）

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/y17/500200450mzh">
（お目付役の星に秘密で、こっそり中味を見てみると――）

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/y17/500200460mzh">
（日本全国！　うまいものギフトカタログ！
　各地から取り寄せた厳選品が、一同に！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1752);}

	WaitKey(1000);

	//TextBoxDelete(150);

{	St("C",700, @0,@0,"buミヅハ_フラット_happy");
	FadeSt("C",200,true);}
//【ミヅハ】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
<voice name="ミヅハ" class="ミヅハ" src="voice/y17/500200470mzh">
（気付くとわらわの唇からは、涎が垂れていた……）

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/y17/500200480mzh">
（世の中にはわらわの知らぬ美味いものが、山ほどある！
　そう考えたら、いてもたってもいられなくなったのじゃ）

{	St("C",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("C",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/y17/500200490mzh">
（俗世にいられるのも、コレが最後！　ならば――）

{	St("C",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("C",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/y17/500200500mzh">
（今宵、年が明けるまで、わらわも街に出たい！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

{	St("C",700, @0,@0,"buミヅハ_フラット_happy");
	FadeSt("C",200,false);}
//【ミヅハ】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
<voice name="ミヅハ" class="ミヅハ" src="voice/y17/500200510mzh">
（俗世の美味いものを、たらふく腹に納めたい！
　まだ見ぬこの世界を、思いっきり堪能したい！）

{	St("C",700, @0,@0,"buミヅハ_手構え_other");
	FadeSt("C",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/y17/500200520mzh">
（しかし）

{	St("C",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/y17/500200530mzh">
（星の監視は完璧じゃ……）

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/y17/500200540mzh">
（ひとりで逃げ出すのは……ちと怖い）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

{	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("C",200,true);}
//【ミヅハ】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
<voice name="ミヅハ" class="ミヅハ" src="voice/y17/500200550mzh">
（誰かこう……
　わらわを……外の世界に連れて行ってくれる者は……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 3000, 0, null);
	CreateColorEX("絵色黒", 20010, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

	DeleteAllSt(0,true);
	Delete("@OnBG*");

	WaitPlay("@xbgm*", null);

	EndScene();
}
