
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene c2400沙紅羅.nss_MAIN
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
	$GameName = "c2401沙紅羅_フウリ.nss";//★エンディング中（c）
}

scene c2400沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="170">
////////////header////////////
//file name "c2400沙紅羅_似鳥_フウリ.nss"
//title "厭覇薔薇"
//previous "c2357恵那.nss"

////////////footer////////////
//next "c2401沙紅羅_フウリ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：半田明神_境内_厭覇薔薇エディション
	OnBG(10,"bg0603711半田明神_境内_厭覇薔薇新年");
	FadeBG(0,true);
	#bg0603700半田明神_境内_厭覇薔薇新年 = true;

	CreateSE("SEL01", "seガヤ_歓声_l");
	MusicStart("SEL01", 1000, 300, 0, 1000, null,true);


	FadeDelete("上背景",1000,null,true);

//あきゅん「修正指示：全体的に賑わいな感じを出してください」
//★inc櫻井 修正

{	St("C",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c24/000100010kms">
「しかし、それにしてもまあ……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	CreateSE("SE01", "se擬音_ギャグ_ドーン");


	CreateTextureEX("境内01", 2000, Center, OutBottom, "cg/bg/l/bg0603711半田明神_境内_厭覇薔薇新年_l.jpg");
	Request("@境内01", Smoothing);
	Zoom("境内01", 0, 1500, 1500, null, true);
	SetBlur("境内01", true, 3, 500, 50, false);

	CreateSE("SE02", "se擬音_ギャグ_ドーン");
	CreateTextureEX("境内02", 2100, InRight, InBottom, "cg/bg/l/bg0603711半田明神_境内_厭覇薔薇新年_l.jpg");
	Request("@境内02", Smoothing);
	Zoom("境内02", 0, 1500, 1500, null, true);
	SetBlur("境内02", true, 3, 500, 50, false);


	Move("境内01", 1500, @450, @0, Dxl1, false);
	Fade("境内01", 1000, 1000, null, true);
	DeleteSt("C",0,true);
	MusicStart("SE01", 0, 700, 0, 1000, null,false);
	Wait(500);

	Move("境内02", 1500, @0, @200, Dxl1, false);
	Fade("境内02", 1000, 1000, null, true);

	Delete("境内01");

	MusicStart("SE02", 0, 700, 0, 1000, null,false);

	Wait(500);

	CreateSE("SE03", "se擬音_ギャグ_ドカーン");
	EffectZoom(3000, 1400, 800, "cg/bg/bg0603711半田明神_境内_厭覇薔薇新年.jpg", false);

	FadeDelete("境内*",500,null,true);

	MusicStart("SE03", 0, 1200, 0, 1000, null,false);

	Wait(1500);

{	St("C",700, @0,@0,"bu歌門_通常_think");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c24/000100020kms">
「なんと悪趣味な……頭痛がします」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c24/000100030skr">
「うっせー！　世の中目立ったもん勝ちよ！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c24/000100040skr">
「ミヅハの桜も、似合ってるぞ！」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c24/000100050mzh">
「うむ！　ほれ、見えるであろ？」

{	St("MR",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c24/000100060mzh">
「肉まんの花が満開じゃ！
　くんくん……うう……ウマそうなにおい」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c24/000100070skr">
「素晴らしい！　ちなみにテーマは？」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c24/000100080mzh">
「出会い！　友達！　食欲！」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_shy");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c24/000100090skr">
「天才だ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("MR",200,false);
	Move("@StNameMR/MR*", 150, @0, @+20, Dxl1, true);
	Move("@StNameMR/MR*", 150, @0, @-20, Dxl1, true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c24/000100100mzh">
「うむ！」

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c24/000100110kms">
「……納得いきません」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_後ろ向き_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c24/000100120skr">
「ああん？　納得いかないダァ？」

{	Deletest("ML",200,true);
	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c24/000100130skr">
「コレだけ人が集まったんだ。
　シュビはジョージョーだろ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("ML",200,true);

//★inc櫻井　背景表示と同じ秒数で立ち絵消去

	CreateTextureEX("背景", 2000, @0, Middle, "cg/bg/l/bg0603711半田明神_境内_厭覇薔薇新年_l.jpg");
	Request("@背景", Smoothing);
	Move("背景", 0, @0, @-200, null, true);
	Zoom("背景", 0, 1500, 1500, null, true);

//★inc櫻井　客席に注目するのでSE音量を大きくします
	SetVolumeEX("SEL01", 2000, 1000, null);

	Move("背景", 20000, @-500, @0, null, false);
	Fade("背景", 1000, 1000, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c24/000100140mzh">
「確かに！
　例年と比べても、なかなかの賑わいじゃ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c24/000100150skr">
「だよな、な、な？」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c24/000100160kms">
「まあ、それについては、認めざるを得ませんが……」


{	FadeDelete("背景",1000,null,true);
	St("MR",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c24/000100170mzh">
「おおっ！　出たぞ！　フウリじゃ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	SetVolume("SE*", 1000, 0, null);
	SetVolume("@xbgm*", 1000, 0, null);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(500);


	EndScene();

}
