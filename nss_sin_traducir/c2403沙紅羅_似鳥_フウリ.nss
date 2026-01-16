
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene c2403沙紅羅_似鳥_フウリ.nss_MAIN
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
	$GameName = "c2404沙紅羅.nss";//★エンディング中（c）
}

scene c2403沙紅羅_似鳥_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="180">
////////////header////////////
//file name "c2403沙紅羅_似鳥_フウリ.nss"
//title "厭覇薔薇"
//previous "c2402沙紅羅.nss"

////////////footer////////////
//next "沙紅羅" ""c2404沙紅羅.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：半田明神_境内_厭覇薔薇エディション
	OnBG(10,"bg0603711半田明神_境内_厭覇薔薇新年");
	FadeBG(0,true);

	DrawDelete("上背景", 300, 100, null, "blind_01_00_1", true);

//窓準備
	CreateWindow("絵窓", 1500, 0, 0, 1024, 600, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorEX("絵窓/絵色", 1520, RED);
	Fade("絵窓/絵色", 0, 1000, null, false);

	CreateTextureSPadd("絵窓/絵演背景", 1530, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
//	SetShade("絵窓/絵演背景", HEAVY);
//	Zoom("絵窓/絵演背景", 0, 2000, 2000, null, true);

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1910, center, -46, "cg/bu/bu鈴_通常_smile.png");
	Move("絵窓/絵演立絵", 0, @160, @0, null, true);

	St("C",700, @0,@0,"buロクローa_通常_smile");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c24/030100010rkr">
「それじゃあみんな、カウントダウン――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――




//動作
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	Move("絵窓/絵演立絵", 200, @-200, @0, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, false);

	CreateTextureEX("ライン", 5000, @-200, @0, "cg/mask/ciスラッシュ_05_00z.png");
	CreateTextureEX("ライン02", 5000, @200, @0, "cg/mask/ciスラッシュ_05_00z.png");
	Zoom("ライン", 0, 0, 1000, Dxl1, true);
	Zoom("ライン02", 0, 0, 1000, Dxl1, true);

	Fade("ライン", 200, 1000, null, false);
	Fade("ライン02", 200, 1000, null, false);

	Zoom("ライン", 200, 1000, 1000, Dxl1, false);
	Zoom("ライン02", 200, 1000, 1000, Dxl1, false);


//マスク準備
	CreateMask("絵マスク", 4000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateColorEX("絵マスク/絵演色", 4510, "#993399");
	CreateTextureEXadd("絵マスク/絵演背景", 4520, 300, Middle, "cg/ef/ef002_汎用移動.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 4530, center, middle, "cg/bu/buそに子_通常_happy.png");
	Request("絵マスク/絵演立絵", Smoothing);

//動作準備
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵", 0, 712, 200, null, false);
	Fade("絵マスク/絵演背景", 0, 1000, null, false);
	Fade("絵マスク/絵演色", 0, 1000, null, false);


//マスク準備
	CreateMask("絵マスク左", 4000, 0, 0, "cg/mask/ciスラッシュ_05_00.png", false);
	SetAlias("絵マスク左","絵マスク左");
	CreateColorEX("絵マスク左/絵演色", 4510, "#993399");
	CreateTextureEXadd("絵マスク左/絵演背景", 1520, 300, Middle, "cg/ef/ef002_汎用移動.jpg");


//立ち絵準備
	CreateTextureEX("絵マスク左/絵演立絵", 4530, center, middle, "cg/bu/buフウリ_頬手_smile.png");
	Request("絵マスク左/絵演立絵", Smoothing);

//動作準備
	Move("絵マスク左", 0, -1024, 0, null, false);
	Move("絵マスク左/絵演立絵", 0, -512, 200, null, false);
	Fade("絵マスク左/絵演背景", 0, 1000, null, false);
	Fade("絵マスク左/絵演色", 0, 1000, null, false);


//イン動作
	Move("絵マスク", 200, 200, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, 560, -10, Dxl1, false);


//イン動作
	Move("絵マスク左", 200, -200, 0, Dxl3, false);
	Fade("絵マスク左/絵演立絵", 200, 1000, null, false);
	Move("絵マスク左/絵演立絵", 200, -80, -30, Dxl1, true);


	DeleteSt("C",0,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011a]
//◆音声指示：同時
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c24/030100020">
「「「いってみよー！！」」」

////◆音声指示：同時
////【綿抜フウリ】
//<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c24/030100030wfu">
//「いってみよー！！」
////◆音声指示：同時
////【そに子】
//<voice name="そに子" class="そに子" src="voice/c24/030100040snk">
//「いってみよー！！」

</PRE>
	SetText();
	AddText(1,"「いってみよー！！」","富士見鈴","c24/030100020fjr",false,false,1000);
	AddText(2,"「いってみよー！！」","綿抜フウリ","c24/030100030wfu",false,false,1000);
	AddText(3,"「いってみよー！！」","そに子","c24/030100040snk",false,false,1000);
	TypeBeginD();//―――――――――――――――――――――――――――


	TextBoxDelete(150);
	
//あきゅん「修正指示：窓少し見た目雑なので、きれいに調整するかバッサリ切って居場所背景に調整」
//★inc櫻井　修正　動作が重くなるようなので背景切り替えにしています。


//あきゅん「修正指示：音でかい、狙ってこの音量でしょうか？」
//★inc櫻井　修正　特別なイベントなので、1000にしていましたが、基本値に
	SoundPlay("@xbgm17", 0, 450, true);


	SceneOut(6000, 500, "blind_01_00_0");

	Delete("絵マスク*");
	Delete("絵窓*");
	Delete("ライン*");

	OnBG(10,"bg0604111半田明神_社務所_通常");
	FadeBG(0,true);

	SceneIn(500, "blind_01_00_1");

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}

	CountDownSE("10", 700, 0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c24/030100050skr">
「１０！」

{	St("MR",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("MR",200,true);
	CountDownSE("09", 700, 0);}
//★inc櫻井　沙紅羅はわざと消していません。
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c24/030100060mzh">
「９！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SceneOut(6000, 500, "blind_01_00_0");

	CreateTextureSP("境内01", 10, Center, Middle, "cg/bg/l/bg0603711半田明神_境内_厭覇薔薇新年_l.jpg");
	DeleteAllSt(0,true);

	SceneIn(500, "blind_01_00_1");
	St("C",700, @0,@0,"buフウリ_通常_smile");
	FadeSt("C",200,true);

	CountDownSE("08", 700, 0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c24/030100070wfu">
「８！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SceneOut(6000, 500, "blind_01_00_0");
	DeleteAllSt(0,true);
//	OnBG(10,"bg0605300半田明神_屋根_雪");
	OnBG(10,"bg0605200半田明神_屋根_ペンキ");
	FadeBG(0,true);
	SceneIn(500, "blind_01_00_1");
	St("ML",700, @0,@0,"bu似鳥_通常_happy");
	FadeSt("ML",200,true);

	CountDownSE("07", 700, 0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c24/030100080nki">
「７！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

{	SceneOut(6000, 500, "blind_01_00_0");
	DeleteAllSt(0,true);

	CreateTextureSP("境内01", 10, Center, Middle, "cg/bg/l/bg0603711半田明神_境内_厭覇薔薇新年_l.jpg");

	SceneIn(500, "blind_01_00_1");}

	St("L",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("L",200,true);

	CountDownSE("06", 700, 0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c24/030100090fjr">
「６！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	St("R",700, @0,@0,"buそに子_通常_happy");
	FadeSt("R",200,true);

	CountDownSE("05", 700, 0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【そに子】
<voice name="そに子" class="そに子" src="voice/c24/030100100snk">
「５！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

{	SceneOut(6000, 500, "blind_01_00_0");

	DeleteAllSt(0,true);
	OnBG(10,"bg0107200秋葉原_遠景_閉店");
	FadeBG(0,true);

	SceneIn(500, "blind_01_00_1");}

{	St("C",700, @0,@0,"bu貫太_横向き_normal");
	FadeSt("C",200,true);}

	CountDownSE("04", 700, 0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/c24/030100110okt">
「４――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	SceneOut(6000, 500, "blind_01_00_0");
	DeleteAllSt(0,true);

	OnBG(10,"bg0604111半田明神_社務所_通常");
	FadeBG(0,true);

	SceneIn(500, "blind_01_00_1");}

//★inc櫻井　みそブーはセットで同時に立たせています。
{	St("L",700, @0,@0,"buみそa_オラオラ_happy");
	St("R",700, @0,@0,"buブーa_オラオラ_happy");
	FadeAllSt(200,true);}

	CountDownSE("03", 700, 0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【みそ】
<voice name="みそ" class="みそ" src="voice/c24/030100120mso">
「３！」

{	CountDownSE("02", 700, 0);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/c24/030100130buu">
「２！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	SceneOut(6000, 500, "blind_01_00_0");
	DeleteAllSt(0,true);

	OnBG(10,"bg0607100半田明神_拝殿_通常");
	FadeBG(0,true);

	SceneIn(500, "blind_01_00_1");}

	St("C",700, @0,@0,"bu歌門_通常_smile");
	FadeSt("C",200,true);

	CountDownSE("01", 700, 0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c24/030100140kms">
「――１」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	DeleteAllSt(0,true);

	OnBG(10,"bg0605200半田明神_屋根_ペンキ");
	FadeBG(0,true);
	CreateTextureSP("絵背景100", 100, -766, 202, "cg/bg/bg0605200半田明神_屋根_ペンキ.jpg");
	Zoom("絵背景100", 0, 2500, 2500, null, true);
	Request("絵背景100", Smoothing);
	SetShade("絵背景100", MEDIUM);

	St("C",700, @0,@+50,"fu似鳥_背張る_shout");

	Move("絵背景100", 300, @0, @+200, Dxl1, false);
	Move("@StNameC/C*", 300, @0, @-50, Dxl1, false);
	FadeSt("C",200,false);
	DrawDelete("絵黒幕", 200, 100, null, "slide_02_01_1", true);

//あきゅん「修正指示：ここで似鳥は出しましょう」
//★inc櫻井　修正
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040a]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c24/030100150nki">
「いっけ――――！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2400);}


	CreateTextureEX("背景02", 2500, Center, -250, "cg/bg/l/bg0603711半田明神_境内_厭覇薔薇新年_l.jpg");

	Move("背景02", 200, @0, -350, Dxl1, false);
	Fade("背景02", 200, 1000, null, true);

	DeleteAllSt(0,true);

	Move("背景02", 5000, @0, -400, null, false);

//生成
	CreateSE("SE03","se人体_倒れる01");

	CreateTextureEX("背景03", 2500, -507, 068, "cg/bg/l/bg0603911半田明神_境内_厭覇薔薇新年新カンダー_l.jpg");
	Request("背景03", Smoothing);
	Zoom("背景03", 0, 2000, 2000, null, false);

	CreateTextureEX("背景04", 2500, -779, -369, "cg/bg/l/bg0603911半田明神_境内_厭覇薔薇新年新カンダー_l.jpg");
	Zoom("背景04", 0, 2000, 2000, null, false);
	Request("背景04", Smoothing);

	MusicStart("SE03",0,700,0,1200,null,false);
	Move("背景03", 1000, @0, -494, Axl1, false);
	Fade("背景03", 1000, 800, null, true);

//
	CreateSE("SE03","se人体_倒れる01");

	Delete("背景02");

	Zoom("背景04", 200, 1200, 1200, null, false);
	Move("背景04", 200, -500, -371, Axl1, false);
	MusicStart("SE03",0,700,0,1200,null,false);
	Fade("背景04", 200, 1000, null, false);
	Shake("背景04", 800, 8, 8, 0, 0, 1000, AxlAuto, true);

//
	CreateSE("SE03","se人体_倒れる01.ogg");
	MusicStart("SE03",0,700,0,1200,null,false);

	CreateTextureEX("背景05", 2500, -237, -369, "cg/bg/l/bg0603911半田明神_境内_厭覇薔薇新年新カンダー_l.jpg");
	Zoom("背景05", 0, 2000, 2000, null, false);
	Request("背景05", Smoothing);

	Zoom("背景05", 200, 1200, 1200, null, false);
	Move("背景05", 200, -500, -371, Axl1, false);
	MusicStart("SE03",0,700,0,1200,null,false);
	Fade("背景05", 200, 1000, null, false);
	Shake("背景05", 800, 8, 8, 0, 0, 1000, AxlAuto, true);

	Wait(200);
//
	CreateSE("SE01","se擬音_ギャグ_リーゼント");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("背景06", 2500, -500, -371, "cg/bg/l/bg0603911半田明神_境内_厭覇薔薇新年新カンダー_l.jpg");
	Zoom("背景06", 0, 2000, 2000, null, false);
	Request("背景06", Smoothing);

	Zoom("背景06", 300, 1200, 1200, null, false);
	Move("背景06", 300, -500, -371, Axl1, false);
	Fade("背景06", 300, 1000, null, false);
	Shake("背景06", 800, 12, 12, 0, 0, 1000, AxlAuto, true);


	Delete("背景03");
	Delete("背景04");
	Delete("背景05");


// それが終わると歓声とモッシュ
	CreateTextureEX("背景07", 2500, -500, -371, "cg/bg/l/bg0603911半田明神_境内_厭覇薔薇新年新カンダー_l.jpg");
	Zoom("背景07", 0, 2000, 2000, null, false);
	Request("背景07", Smoothing);
	CreatePlainSP("揺用", 2600);

	CreateSE("SE", "seガヤ_大歓声_l");
	MusicStart("SE", 1000, 700, 0, 1000, null,true);
	SetBlur("揺用", true, 1, 500, 100, false);
	MoveFTP1("@揺用",2500,8,4);


//

	Wait(3000);

	OnBG(3000,"bg0603911半田明神_境内_厭覇薔薇新年新カンダー");
	#bg0603900半田明神_境内_厭覇薔薇新年新カンダー = true;
	#imgソトカンダー真イラスト = true;
	#imgソトカンダー真イラスト_big = true;

	FadeBG(1000,true);
	Delete("背景*");
	Delete("揺用");
	MusicStart("SE", 1000, 300, 0, 1000, null,true);
	MoveFTP1stop();

//あきゅん「修正指示：新年演出はここに入れる」
//★inc櫻井　修正
//	CreateColorSP("絵黒幕", 25000, "BLACK");
//	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
//	DeleteSt("ML",0,true);
//	OnBG(10,"bg0605300半田明神_屋根_雪");
//	FadeBG(0,true);
//	CreateTextureSP("絵背景100", 100, Center, 0, "cg/bg/l/bg0603911半田明神_境内_厭覇薔薇新年新カンダー_l.jpg");
//	DrawDelete("絵黒幕", 200, 100, null, "slide_02_01_1", false);
//	Move("絵背景100", 2500, @0, -350, Dxl1, false);
//	CreateSE("花火音02", "se環境_花火02");
//	MusicStart("花火音02", 0, 1000, 0, 1000, null,false);
//	DrawDelete("絵黒幕", 200, 100, null, "slide_02_01_1", false);
//	CreateTextureEXadd("花火", 2500, @0, @0, "cg/data/circle_10_00_1.png");
//	CreateColorEX("花火色100", 1500, "red");
//	CreateColorEX("花火色210", 1500, "blue");
//	CreateColorEX("花火色200", 1500, "green");
//	Fade("花火", 100, 1000, Axl1, false);
//	Fade("花火色100", 50, 500, Axl1, true);
//	Fade("花火色210", 50, 200, Axl1, true);
//	Fade("花火色200", 50, 200, Axl1, true);
//	Delete("花火色2*");
//	Fade("花火", 1000, 0, Axl1, false);
//	FadeDelete("花火色100", 1500, null, true);
	CountDownSE("おめでとうございます", 700, 0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040b]
//◆音声指示：同時
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c24/030100160">
「「「あけましておめでとうございま――――すッ！！」」」

////◆音声指示：同時
////【綿抜フウリ】
//<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c24/030100170wfu">
//「あけましておめでとうございま――――すッ！！」

////◆音声指示：同時
////【そに子】
//<voice name="そに子" class="そに子" src="voice/c24/030100180snk">
//「あけましておめでとうございま――――すッ！！」

</PRE>
	SetText();
	AddText(1,"「あけましておめでとうございま――――すッ！！」","富士見鈴","c24/030100160fjr",false,false,1000);
	AddText(2,"「あけましておめでとうございま――――すッ！！」","綿抜フウリ","c24/030100170wfu",false,false,1000);
	AddText(3,"「あけましておめでとうございま――――すッ！！」","そに子","c24/030100180snk",false,false,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("@xbgm*", 1000, 0, null);
	SetVolume("@SE*", 1000, 0, null);

	CreateColorEX("フラッシュ白", 15000, "Black");
	Fade("フラッシュ白",300,1000,null,true);

	Delete("境内01");
	Delete("絵背景100");


//◆演出指示：花火が打ち上がり、会場にソトカンダーの画が描かれた「謹賀新年」という垂れ幕が落ちる



	EndScene();
}
