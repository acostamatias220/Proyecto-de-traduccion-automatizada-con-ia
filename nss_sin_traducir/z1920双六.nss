
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1920双六.nss_MAIN
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
	EndScript();

}

scene z1920双六.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="100">
////////////header////////////
//file name "z1920双六.nss"
//title "助かる"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1920);}


//◆場所：半田明神_涸れ井戸_崩壊
	OnBG(10,"bg0606100半田明神_涸れ井戸_通常");
	FadeBG(0,true);

	CreateSE("SE01","se環境_風と葉っぱ_l");
	MusicStart("SE01",500,700,0,1000,null,true);

	St("ML",700, @0,@0,"bu双六a_通常_smile");
	FadeSt("ML",0,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z19/200400010ksr">
「助けてくれて、アリガトよ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/z19/200400020kms">
「死なれては寝覚めが悪いので助けたまで！」

{	St("MR",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/z19/200400030kms">
「さあ、大人しくアザナエルを――」

{	DeleteAllSt(200,false);
	St("ML",700, @-100,@,"bu双六a_横向き_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z19/200400040ksr">
「ねぇよ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu歌門_通常_shout");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/z19/200400050kms">
「何ですって！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z19/200400060ksr">
「土砂崩れに埋まってる間、誰かに盗まれた」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu歌門_通常_shout");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/z19/200400070kms">
「な――だれが、そんな言葉を信じますかッ！！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z19/200400080ksr">
「身体、調べるか？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu歌門_通常_pinch");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/z19/200400090kms">
「――ッ！！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z19/200400100ksr">
「ああ、そういえば埋まってる間、女の声を聞いた気がするなあ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
