
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene bab2359沙紅羅_フウリ.nss_MAIN
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

	//★エンディング中（bab）
	//★エンドロール
	PreSetRoll(0);
	TheEND(0);

	$GameName = "";
	$GameCircle=false;
	$GameClear=true;
}

scene bab2359沙紅羅_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1730">
////////////header////////////
//file name "bab2359沙紅羅_フウリ.nss"
//title "神様の意味"
//previous "bab2358似鳥_ノーコ.nss"

////////////footer////////////
//flag "flbab"
//next オシマイ

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);


//◆場所：柳神社_境内
	OnBG(10,"bg1501100柳神社_境内_通常");
	FadeBG(0,true);

{	ClockPass(2356);}

	CreateSE("SE10", "se環境_風と葉っぱ_l");
	MusicStart("SE10", 2000, 400, 0, 1000, null,true);

	WaitKey(1000);

	CreateSE("SE00", "se動作_歩く04_l");
	MusicStart("SE00", 200, 700, 0, 1000, null,false);

	FadeDelete("上背景",1500,null,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @-100,@0,"bu沙紅羅_通常_normal");
	Move("@StNameC/C*", 600, @100, @0, Dxl1, false);
	SetVolume("SE00", 600, 0, null);
	FadeSt("C",600,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100010skr">
「ここだな……」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"buみそa_通常_fear");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/bab23/590100020mso">
「こ……こんな遅くに、大丈夫ですかね？」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_頭かき_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100030skr">
「ビビってんのか？」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"buみそa_通常_sad");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/bab23/590100040mso">
「そ、そんな意地悪言わないでもらえますか！」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100050skr">
「なあに、大丈夫だよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
//	MusicStart("林", 0, 700, 0, 1000, null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100060skr">
「年が明けたら、初詣客も来るし。
　――ってか、早くしねぇとやべぇな」


{	CreateSE("neko", "se動物_ネコ_鳴き声02");
	MusicStart("neko", 0, 700, 0, 1000, null);
	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buブーa_通常_happy");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/bab23/590100070buu">
「うわ！　ね、猫がたくさん！」

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100080skr">
「なに！？　ほ……ホントだ！」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/bab23/590100090mso">
「おいなりさんがタヌキなのに、猫だらけだな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateSE("neko02", "se動物_ネコ_鳴き声01");
	MusicStart("neko02", 0, 700, 0, 1000, null);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_shy");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100100skr">
「やばい……にゃんにゃんパラダイスじゃねぇか……」


{	DeleteSt("C",200,false);
	St("MR",700, @50,@0,"buブーa_オラオラ_happy");
	Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/bab23/590100110buu">
「オレ、ここに住んでいいですか！？」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/bab23/590100120mso">
「それもいいけど、こいつらを埋めてからにしようぜ」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buブーa_通常_hard");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/bab23/590100130buu">
「む……けち！」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buみそa_通常_normal");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/bab23/590100140mso">
「恵那ちゃんの話だと、確かここら辺に――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆場所：柳神社_お墓

{	ClockPass(2357);}

	CreatePlainSP("絵板写", 5000);
	DeleteSt("ML",0,false);
	OnBG(10,"bg1502100柳神社_お墓_通常");
	FadeBG(0,true);
	DrawDelete("絵板写", 1000, 100, null, "blind_01_00_1", true);

	SetVolume("SE01", 1000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100150skr">
「……ここか」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/bab23/590100160mso">
「みたいですね」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100170skr">
「ブー」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buブーa_通常_shout");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/bab23/590100180buu">
「はい、ただいま！」

{	DeleteSt("MR",200,false);}
　ブーはどこからか、折りたたみのシャベルを取り出す。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("MR",700, @0,@0,"buブーa_通常_normal");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/bab23/590100190buu">
「ほら、みそ！　後は頼んだ！」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buみそa_通常_smile");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/bab23/590100200mso">
「あいよッ！！」


{	CreateSE("SE002", "se動作_一歩");
	MusicStart("SE002", 0, 700, 0, 1000, null,false);
	Move("@StNameML/ML*", 150, @10, @150, Dxl1, false);
	DeleteSt("ML",100,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/bab23/590100210mso">
「よいしょっ！　んしょっ！　こらしょっ！」

//◆ＳＥ：スコップで土を掘る

{	CreateSE("SE02", "se動作_土掘る");
	MusicStart("SE02", 0, 700, 0, 1000, null,true);}

　墓穴を作り始めたみそを尻目に、沙紅羅は抱きかかえた狸の身体に向かって囁く。


{	SetVolumeEX("SE10", 3000, 0, null);
	SoundPlay("@xbgm26", 0, 450, true);
	St("C",19010, @0,@0,"fu沙紅羅_通常_normal");
	MusicStart("SE02", 1000, 0, 0, 1000, null,true);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100220skr">
「ごめんな、お前たち」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("C",19010, @0,@0,"fu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100230skr">
「本当は、助けてやりたかったんだけど」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100240skr">
「アタシには、力不足だったみたいだ」

{	DeleteSt("C",200,true);
	St("MR",700, @0,@0,"buブーa_通常_sad");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/bab23/590100250buu">
「姐さん。自分を責めないでください」

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100260skr">
「……そんなんじゃねぇよ」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100270skr">
「ただ……なんていうか、神様は残酷だなあって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100280skr">
「これでも願いが通じないなら、ちょっと、辛いよな」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buブーa_通常_sad");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/bab23/590100290buu">
「姐さん……」

//★inc櫻井　みその立ち絵がないのは作業を終えて遠くから声をかけている、と想定しているためです。
{
	DeleteSt("MR",200,true);
	SetVolume("@xbgm26", 1000, 0, null);
	CreateSE("SE02", "se動作_土掘る");
	MusicStart("SE02", 0, 700, 0, 1000, null,false);
}
//【みそ】
<voice name="みそ" class="みそ" src="voice/bab23/590100300mso">
「大丈夫ですよ、姐さん！」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100310skr">
「え……？」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"buみそa_オラオラ_normal");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/bab23/590100320mso">
「そのときのために、オレたちがいるんです！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2358);}


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buブーa_通常_normal");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/bab23/590100330buu">
「そ、そうです！
　オレたちが、いつでも側にいますから！」

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100340skr">
「みそ、ブー……！！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100350skr">
「ふたりとも……あんがとな」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100360skr">
「アタシ、この旅で、色んな人と会った」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	SoundPlay("@xbgm25", 0, 450, true);

	CreateColorEX("白幕", 15000, WHITE);
	Fade("白幕", 600, 1000, null, true);
	DeleteSt("C",0,false);

	CreateTextureSP("akb", 1500, @0, @0, "cg/bg/bg0108100秋葉原_俯瞰_通常.jpg");
	CreateTextureEX("色々なこと01", 1510, @0, @0, "cg/ev/ev1850沙紅羅アキバに立つ.jpg");
	CreateTextureEX("色々なこと02", 1530, @0, @0, "cg/ev/ev2130沙紅羅双六に一目惚れb.jpg");
	CreateTextureEX("色々なこと03", 1540, @0, @0, "cg/ev/ev2150沙紅羅対ノーコ.jpg");

	Zoom("akb", 60000, 2000, 2000, null, false);

	CreateEffect("セピア", 1600, @0, @0, 1024, 576, "Sepia");

	SetShade("akb", HEAVY);
	Fade("白幕", 600, 0, null, true);

//★ inc遠藤 もったいない。アキバ俯瞰をもう500秒ぐらいは表示させてあげたい。
// あとモノクロではなくセピアっぽい色にならないかね？

	Wait(500);
	Fade("色々なこと01", 1000, 1000, null, false);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100370skr">
「色んなことを知って、色々楽しいこともあって――」

{	FadeDelete("色々なこと01",1000,null,false);
	Fade("色々なこと02", 1000, 1000, null, false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100380skr">
「もちろん、辛いこともあった」


{	FadeDelete("色々なこと02",1000,null,false);
	Fade("色々なこと03", 1000, 1000, null, false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100390skr">
「それが全部吹っ飛ぶ、なんて都合のいいことはない」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	Fade("白幕", 600, 1000, null, true);

	Delete("akb");
	Delete("色々なこと03");
	Delete("セピア");


	FadeDelete("白幕", 600, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100400skr">
「けど――あんたたちのおかげで、なんとか明日も、歩いて行けそうだよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteSt("C",200,true);

/*
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/bab23/590100410mso">
「どこまでも、お供します」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/bab23/590100420buu">
「どこまでも、お供します」
*/

{	St("L",700, @0,@0,"buみそa_通常_normal");
	St("R",700, @0,@0,"buブーa_通常_normal");
	FadeAllSt(200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101a]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/bab23/590100410mso">
「どこまでも、お供します」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/bab23/590100420buu">
//「どこまでも、お供します」

</PRE>
	SetText();
	AddText(1,"「どこまでも、お供します」","みそ","bab23/590100410mso",false,false,1000);
	AddText(2,"「どこまでも、お供します」","ブー","bab23/590100420buu",true,true,1600);
	TypeBeginD();//―――――――――――――――――――――――――――

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101b]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100430skr">
「……ありがと」


{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buブーa_通常_normal");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/bab23/590100440buu">
「んじゃ、そろそろ時間です」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/bab23/590100450mso">
「埋めてあげましょう」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100460skr">
「ああ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2359);}

//	TextBoxDelete(150);
	SetVolume("@xbgm25", 1000, 0, null);
	DeleteSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　ブーがゆっくりと、２匹の狸を穴に横たえた。

　みそから沙紅羅に、スコップが手渡される。


{	CreateSE("SE002", "se動作_土かける");
	MusicStart("SE002", 0, 700, 0, 1000, null,false);
	WaitKey(700);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100470skr">
「――ふぅ」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100480skr">
「どうか天国でも……幸せに暮らしてください」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buブーa_通常_sad");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/bab23/590100490buu">
「なむなむ……なむなむ……」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/bab23/590100500mso">
「どうか化けてでないでくださいお願いします」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);




{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100510skr">
「おいバカ！　なに縁起でもねぇこと――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//◆演出指示：羽根が舞う

{	ClockPass(2400);}


//◆ＳＥ：遠くから花火
	CreateSE("花火音", "se環境_花火02");
	MusicStart("花火音", 0, 700, 0, 1000, null,false);
	CreateTextureEXadd("花火", 2500, @0, @0, "cg/data/circle_12_00_0.png");

	CreateColorEX("花火色100", 1500, "red");
	CreateColorEX("花火色210", 1500, "blue");
	CreateColorEX("花火色200", 1500, "green");

	Fade("花火", 100, 1000, Axl1, false);
	Fade("花火色100", 50, 500, Axl1, true);
	Fade("花火色210", 50, 200, Axl1, true);
	Fade("花火色200", 50, 200, Axl1, true);
	Delete("花火色2*");
	Fade("花火", 1000, 0, Axl1, false);
	FadeDelete("花火色100", 1500, null, true);

	FeatherDrop(100);
	DeleteSt("C",200,true);

	WaitKey(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0124]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590100520wfu">
「はれ？」

//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/bab23/590100530tsr">
「ん、んん……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100540skr">
「ん？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buブーa_通常_sad");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/bab23/590100550buu">
「な、なんだ？」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buみそa_通常_fear");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/bab23/590100560mso">
「わわ、わわわわわ！」

//【みそ】
<voice name="みそ" class="みそ" src="voice/bab23/590100570mso">
「や、やっぱりお化け！」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100580skr">
「バーカ！　そんなわけ――」

{	DeleteSt("C",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590100590wfu">
「ゆ……夢だったんですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/bab23/590100600tsr">
「夢……」


{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100610skr">
「え？」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buブーa_通常_shock");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/bab23/590100620buu">
「この声――」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buみそa_通常_fear");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/bab23/590100630mso">
「しゃべってる――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//★ inc櫻井　同時らしいので、コメントアウトしています。
/*

//◆音声指示：同時
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100640skr">
「ぎゃああああああああッ！！」

//【ブー】
<voice name="ブー" class="ブー" src="voice/bab23/590100650buu">
「ぎゃああああああああッ！！」

//◆音声指示：同時

//【みそ】
<voice name="みそ" class="みそ" src="voice/bab23/590100660mso">
「ぎゃああああああああッ！！」

*/
	SetVolumeEX("花火音", 1000, 0, null);


	DeleteSt("ML",200,true);
	St("R",700, @0,@0,"buブーa_通常_cry");
	St("L",700, @0,@0,"buみそa_通常_fear");
	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	Shake("@StNameC/C*", 300, 5, 0, 0, 0, 800, Axl1, false);
	Shake("@StNameL/L*", 300, 5, 0, 0, 0, 800, Axl1, false);
	Shake("@StNameR/R*", 300, 5, 0, 0, 0, 800, Axl1, false);

	FadeAllSt(200,true);

	SoundPlay("@xbgm03",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//◆音声指示：同時
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100640">
「「「ぎゃああああああああッ！！」」」

{	DeleteAllSt(200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590100670wfu">
「え？　しゃべってるって――あ！」

//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/bab23/590100680tsr">
「――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateSE("SE01","se動物_タヌキ_走る_l");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("タヌキ", 2000, 1024, 100, "cg/obj/objタヌキ小走り.png");
	FadeXH2("タヌキ",300,1000,1000,-1500,130,null,true);

	CreateSE("茂み", "se動作_茂み_l");
	MusicStart("茂み", 0, 700, 0, 1000, null,false);

	Delete("タヌキ");

	Wait(500);

	SetVolumeEX("茂み", 1000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　目を覚ました２匹の狸が、一目散にその場を逃げ出す。

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100690skr">
「な……なな、な……今の……見たか？」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/bab23/590100700buu">
「み……見たような……幻覚だったような……」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buみそa_通常_fear");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/bab23/590100710mso">
「幻覚じゃない！　確かにアレは、タヌキ！」

{	St("ML",700, @0,@0,"buみそa_オラオラ_pinch");
	St("ML",700, @0,@0,"buみそa_オラオラ_shock");
	FadeSt("ML",200,false);
	FadeStPro("ML", 200, 2500);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/bab23/590100720mso">
「タヌキが――タヌキが――アレ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2401);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	AgainSt("ML",700, @0,@0,"buみそa_オラオラ_shock");
	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",200,false);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/bab23/590100730mso">
「なんでオレたち、こんなにびびってるんだ？」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buブーa_通常_shout");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/bab23/590100740buu">
「そ、そりゃお前、タヌキがしゃべったからだろ！」

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100750skr">
「そうだよ！
　しゃべるタヌキなんて、びっくりするだろ」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100760skr">
「びっくり？
　いや、でもアレって、フウリの声だったよな？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	St("C",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("C",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100770skr">
「フウリがしゃべるタヌキって、あれ？
　アタシ知ってるような……」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/bab23/590100780mso">
「ってか、なんかもっと重要な問題があったような……」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100790skr">
「重要な問題？」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buブーa_通常_normal");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/bab23/590100800buu">
「って、なんだ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 3000, 0, null);

	FeatherDropDelete(100);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buみそa_オラオラ_shock");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/bab23/590100810mso">
「いや、そりゃお前、その……あれ？　なんだっけ？」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100820skr">
「…………」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buブーa_通常_sad");
	FadeSt("mR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/bab23/590100830buu">
「…………」


{	DeleteSt("MR",200,false);
	St("ML",700, @-30,@0,"buフウリ_胸手_sad");
	Move("@StNameML/ML*", 600, @30, @0, null, false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590100840wfu">
「あ……あの……」

//★ inc櫻井 Cだとフウリと沙紅羅の距離が近すぎるので、沙紅羅をMRに切り替えます。

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100850skr">
「わ！　さっきの――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	SoundPlay("@xbgm10", 0, 450, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590100860wfu">
「こ、こんばんは」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100870skr">
「どうも」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590100880wfu">
「あの……」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590100890wfu">
「やっぱり、見ちゃいました？」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100900skr">
「見ちゃった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590100910wfu">
「ですよね……きゅうっ」

{	St("ML",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("ML",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590100920wfu">
「タヌキの<RUBY text="さと">郷</RUBY>のしきたりで、人間にはばれちゃいけないことになってるんですが……」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100930skr">
「そ、そうなのか？　まずいな」

{	DeleteSt("MR",200,false);
	St("C",700, @0,@60,"buフウリ_前のめり_hard");
	Move("@StNameC/C*", 300, @0, @-60, null, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590100940wfu">
「まずいんです！
　本当は、始末しないといけないという古い掟が――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2402);}

//	TextBoxDelete(150);


//★ inc櫻井　みそたちは沙紅羅の背後にいると想定してRにしています。

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	DeleteSt("C",200,false);
	St("R",700, @0,@0,"buみそa_オラオラ_pinch");
	FadeSt("R",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/bab23/590100950mso">
「始末！？」

{	DeleteSt("R",200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590100960wfu">
「いや、でもそれはあんまりですし！」

{	St("ML",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("ML",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590100970wfu">
「結構適当な掟なので、あの……
　バレてたこと、ヒミツにしてくれますか？」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590100980skr">
「ヒミツ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	DeleteSt("MR",200,false);
	St("R",700, @0,@0,"buブーa_通常_sad");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/bab23/590100990buu">
「って、そんなんでいいの？」

{	DeleteSt("R",200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_smile");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590101000wfu">
「はい！　黙っててくれれば、大丈夫！」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590101010skr">
「いや、まあそれでいいんなら、いいけど」

{	St("MR",700, @0,@0,"bu沙紅羅_後ろ向き_normal");
	FadeSt("MR",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590101020skr">
「な、ふたりとも。ヒミツにしておけるよな？」

{	DeleteSt("MR",200,false);
	St("R",700, @0,@0,"buブーa_通常_shout");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/bab23/590101030buu">
「は、はい！　もちろん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	DeleteSt("R",200,false);
	St("R",700, @0,@0,"buみそa_オラオラ_shout");
	FadeSt("R",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/bab23/590101040mso">
「天に誓って！　誰にも言いません！」

{	DeleteSt("R",200,false);
	St("C",700, @0,@0,"buフウリ_前のめり_smile");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590101050wfu">
「ありがとうございます！」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_smile");
	FadeSt("ML",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590101060wfu">
「ふぅ――よかった。一時はどうなることかと」

{	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590101070skr">
「でもさ、なんでこんなところでこんなカッコで？」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_hard");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590101080wfu">
「なんでって、それは――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590101090wfu">
「それは、あれ？」

{	St("ML",700, @0,@0,"buフウリ_頬手_shock");
	FadeSt("ML",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590101100wfu">
「私……なんでこんなところにいたんでしょう」

{	DeleteSt("ML",200,false);
	St("R",700, @0,@0,"buブーa_通常_sad");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/bab23/590101110buu">
「っていうか、さっき隣にいたもう一匹の狸は？」

{	DeleteSt("R",200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590101120wfu">
「もう一匹？」

{	SetComic(@-220,@0,17);
	FadeComic();
	St("ML",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("ML",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590101130wfu">
「……寝ぼけてて、全然気づきませんでした」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	DeleteComic();
	St("ML",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("ML",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590101140wfu">
「あれ？　ところで今は何時――」

{	DeleteSt("ML",200,false);
	St("R",700, @0,@0,"buブーa_通常_normal");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/bab23/590101150buu">
「そういやそろそろ、日付も変わって――」

{	SetVolume("@xbgm10", 1000, 0, null);
	DeleteSt("R",200,false);
	St("ML",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590101160wfu">
「え！？」

{	St("ML",700, @0,@0,"buフウリ_頬手_shock");
	FadeSt("ML",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590101170wfu">
「日付が変わった！？　って、たいへん！」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590101180skr">
「ど、どした！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2403);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_頬手_shock");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590101190wfu">
「スーパー・スーパーノヴァが、もう始まってる！」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590101200skr">
「え、でもライブって中止じゃ――」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_hard");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590101210wfu">
「そ、そうかもしれません」

{	St("ML",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("ML",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590101220wfu">
「どうしよう！　今日のライブ――
　メジャーデビューがかかった、大事なライブなのに」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590101230skr">
「迷ってる場合かよ。近いんだろ？　ほら、走れって」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590101240wfu">
「いや、でも――」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590101250skr">
「きっと、みんな待ってる」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590101260wfu">
「…………」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590101270skr">
「大丈夫。アタシを信じろ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
{	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("MR",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590101280skr">
「手遅れなんて、なにひとつありゃしねーんだよ」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590101290wfu">
「手遅れなんて、ない……？」


//◆ＳＥ：携帯鳴る
{	CreateSE("携帯", "seメカ_携帯_メール着信_フウリ_l");
	MusicStart("携帯", 0, 700, 0, 1000, null,true);

	Shake("@StNameML/ML*", 300, 12, 3, 0, 0, 300, null, false);
	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590101300wfu">
「きゅううう！　呼び出し電話が――！」

{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("ML",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590101310wfu">
「バンドのリーダーからだ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590101320skr">
「ほら、いいから出てみなって」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590101330wfu">
「う……うう……」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590101340skr">
「ほら！」

{	DeleteSt("MR",200,false);
	St("ML",2100, @0,@0,"buフウリ_胸手_shout");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590101350wfu">
「は……はい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：携帯とる
	SetVolume("携帯", 1000, 0, null);
	Wait(300);
	CreateSE("携帯02", "seメカ_携帯_電子音01");
	MusicStart("携帯02", 0, 700, 0, 1000, null,false);

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310a]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590101360wfu">
「あ……もしもし鈴ちゃん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SoundPlay("@xbgm20_noeff",0,350,true);

	CreatePlainSP("絵板写", 2010);
	Wait(16);

	CreateMaskAXLSP("マスク", 2000, 0, 0, "ciスラッシュ_06_01", false, "ciスラッシュ_06_01z");
	CreateTextureSP("マスク/絵背景", 1010, Center, Middle, "cg/bg/m/bg0503100スーパーノヴァ_控え室_通常_m.jpg");
	CreateTextureSP("マスク/絵演立絵01", 1100, 600, -30, "cg/bu/bu鈴_シリアス_angry.png");
	Shake("マスク/絵演立絵01", 600, 0, 12, 0, 0, 500, null, false);
	Shake("マスク/絵背景", 1200, 0, 12, 0, 0, 1000, null, false);

	DrawDelete("絵板写", 200, 10, null, "slide_01_03_0", false);


{	St("ML",2010, @0,@0,"buフウリ_胸手_worry");
	Move("@StNameML/ML*", 300, @-150, @0, Dxl3, false);
	Shake("@StNameML/ML*", 300, 8, 0, 0, 0, 500, null, false);
	FadeSt("ML",200,false);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310b]
//◆音声指示：電話越し
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/bab23/590101370fjr">
『コラー！　フウリちゃん！　どこで油売ってるのッ！！』

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590101380wfu">
「ご、ごめんなさい！　今……柳神社に――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureSP("マスク/絵演立絵10", 1090, 600, -30, "cg/bu/bu鈴_シリアス_hard.png");
	FadeDelete("マスク/絵演立絵0*", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0312]
//◆音声指示：電話越し
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/bab23/590101390fjr">
『すぐそこじゃないの！　さっさと来なさい！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2404);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//◆音声指示：電話越し
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/bab23/590101400fjr">
『今はロクロー様に時間を保たせてもらってるから！』

//◆音声指示：電話越し
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/bab23/590101410fjr">
『ニコちゃんも待ってるんだから！
　そしたら速攻でライブ始めるわよ！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);
	Wait(16);
{	St("L",2100, @0,@0,"buフウリ_胸手_cry");
	DeleteAllSt(0,true);
	FadeSt("L",0,true);}
	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0324a]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590101420wfu">
「え？　でももう――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("マスク/絵演立絵01", 1090, 600, -30, "cg/bu/bu鈴_シリアス_smile.png");
	Fade("マスク/絵演立絵01", 200, 1000, Axl1, false);
	FadeDelete("マスク/絵演立絵1*", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0324b]
//◆音声指示：電話越し
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/bab23/590101430fjr">
『こんなにお客さんが来てるのに、時間通りに始まんないないからって休むわけに行かないでしょ！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("L",2100, @0,@0,"buフウリ_通常_hard");
	FadeSt("L",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330a]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590101440wfu">
「わ、わかりました！　すぐに行きます！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：携帯切る
//★ inc櫻井　ここからフウリと沙紅羅をセンター表示にします。
	SetVolumeEX("@xbgm*", 2000, 0, null);

	DeleteSt("ML",200,false);
	CreateSE("携帯03", "seメカ_携帯_切れる");

	CreatePlainSP("絵板写", 5000);

	Delete("マスク*");

	MusicStart("携帯03", 0, 1000, 0, 1000, null);
	FadeDelete("絵板写", 300, null, true);

	Wait(1000);

	SoundPlay("@xbgm28",0,450,true);

	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buフウリ_胸手_shy");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330b]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590101450wfu">
「沙紅羅ちゃん！　ありがとうございます！」

{	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590101460wfu">
「おかげさまで――」

{	DeleteSt("C",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590101470skr">
「いいからいいから。それよりほら、早く行きな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
{	DeleteSt("C",200,false);
	St("C",700, @0,@0,"buフウリ_前のめり_smile");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590101480wfu">
「は……はい！
　ホントに、ありがとうございました！」

{	DeleteSt("C",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590101490skr">
「ああ。それじゃ、な」


//◆ＳＥ：遠くに走る

{	DeleteSt("C",200,false);
	CreateSE("遠く走る", "se動作_走る02_l");
	MusicStart("遠く走る", 0, 1000, 0, 1000, null);
	Wait(500);
	SetVolume("遠く走る", 1000, 0, null);}


//◆音声指示：遠くから

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590101500wfu">
「あ……あの！」

{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590101510skr">
「なんだ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	CreatePlainSP("絵板写", 5000);
	DeleteSt("C",0,false);
	OnBG(10,"bg1501100柳神社_境内_通常");
	FadeBG(0,true);
	DrawDelete("絵板写", 1000, 100, null, "blind_01_00_1", true);


{	St("C",700, @0,@120,"buフウリ_前のめり_shout");
	Move("@StNameC/C*", 300, @0, @-120, Dxl2, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590101520wfu">
「もしよかったら――ライブ、見に来てください！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590101530wfu">
「スーパーノヴァで、いつでも待ってますんで！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590101540skr">
「おう、サンキュー！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590101550skr">
「お前も、がんばれよ！」

{	St("C",700, @0,@0,"buフウリ_前のめり_smile");
	FadeSt("C",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/bab23/590101560wfu">
「は……はいっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);




	SceneOut(5000, 500, "blind_01_00_0");

	DeleteSt("C",0,false);

	OnBG(10,"bg1502100柳神社_お墓_通常");
	FadeBG(0,true);

	SceneIn(500, "blind_01_00_1");






//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590101570skr">
「…………ふぅ」

//★inc櫻井 見切れているのはわざとです。
//inc久保田　速度と店舗を調整
{	DeleteSt("C",200,false);
	St("R",700, @100,@0,"buみそa_通常_fear");
	Move("@StNameR/R*", 1000, @-50, @0, Dxl2, false);
	FadeSt("R",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/bab23/590101580mso">
「い、行きましたか？」

{	DeleteSt("R",200,false);
	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590101590skr">
「ったく、いつまで震えてやがんだよ」

{	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590101600skr">
「元がタヌキってだけで、立派な可愛い女の子じゃねぇか」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buブーa_通常_ero");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/bab23/590101610buu">
「オレはもうちょっと未成熟な身体が――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2405);}


//	TextBoxDelete(150);

	CreateSE("木刀", "se戦闘_木刀_構える");
	MusicStart("木刀", 0, 1000, 0, 1000, null,false);
{	DeleteSt("MR",200,false);
	St("C",700, @0,@80,"bu沙紅羅_木刀_angry");
	Move("@StNameC/C*", 200, @0, @-80, Dxl1, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590101620skr">
「ブー？　なんか言ったか？」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buブーa_通常_shock");
	Move("@StNameC/C*", 200, @100, @0, Dxl1, false);
	FadeSt("MR",200,true);
	Move("@StNameC/C*", 200, @30, @0, Dxl1, false);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/bab23/590101630buu">
「何でもありませんッ！！」

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590101640skr">
「ふぅ……なんか、アレだな」

{	St("C",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("C",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590101650skr">
「よくわかんねーけど、スッと肩の荷が下りた感じだな！」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/bab23/590101660mso">
「ですね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buブーa_通常_smile");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/bab23/590101670buu">
「じゃ……この調子で、行きますか？」

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590101680skr">
「ん――そうすっか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	PrintGO("上背景", 5000);
	CreateTextureSP("絵背景200", 100, @0, @-300, "cg/bg/bg2401100空_上空_通常.jpg");
	DeleteSt("C",0,false);
	FadeDelete("上背景", 500, null, false);
	Move("絵背景200", 2000, @0, -100, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590101690skr">
「どーじんしは見つからなかったけど……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590101700skr">
「去年中には間に合わなかったけど……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590101710skr">
「今からでも、会いに行ける」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590101720skr">
「手遅れなんてない」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bab23/590101730skr">
「なあ、そうだろ？　神様……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 5000, 0, null);

	TextBoxDelete(150);
	CreateColorEX("絵色100", 10000, "BLACK");

	CreateSE("SE01","se環境_花火打ち上げ");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1800);
	CreateSE("SE02","se環境_花火連打02");


	CreateTextureSPadd("花火", 3000, Center, InBottom, "cg/ef/ef花火_m.png");
	DrawTransition("花火", 500, 0, 1000, 100, null, "cg/data/zzex_circle_01_00_0.png", false);
	Zoom("花火", 3000, 1200, 1200, Dxl1, false);
	Move("花火", 3000, @0, @30, AxlDxl, false);
	FadeDelete("花火", 3000, Axl3, false);

	fireworks_set(3500);

	Wait(200);
	MusicStart("SE02",0,700,0,1000,null,true);


	Wait(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]

　沙紅羅の見上げる星空に、明るく花火が瞬いた。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 5000, 0, null);
	TextBoxDelete(150);


	Fade("絵色100", 5000, 1000, null, true);

	fireworks_Delete(100,true);


//	ClearWaitAll(2000, 2000);

	EndingReady();
	EndScene();
}
