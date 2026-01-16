
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene aa2110恵那.nss_MAIN
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
	$GameName = "aa2120千秋_恵那.nss";
//	$GameCircle=false;

}

scene aa2110恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1180">
////////////header////////////
//file name "aa2110恵那.nss"
//title "みーちゃんのひとりあそび"
//previous "aa2100恵那.nss"

////////////footer////////////
//next "恵那" "aa2120千秋_恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

	OnBG(10,"bg1704200銭形公園_トイレ個室_水没");
	FadeBG(0,true);

//	CreateColorSPadd("水", 1500, "#00FFFF");
//	Fade("水", 0, 600, null, true);

	CreateTextureEX("絵水中効果", 1000, Center, Middle, "cg/ef/ef水中絵a.jpg");
	Fade("絵水中効果", 0, 800, null, true);
	Zoom("絵水中効果", 0, 1500, 1500, null, true);
	DrawEffect("絵水中効果*", 0, "LowWave", 60, 60, null);

	CreateSE("SEL01","se環境_水中_l");
	MusicStart("SEL01",300,1400,0,1000,null,true);

	FadeDelete("上背景", 300, null, true);

{	ClockPass(2110);}

	SoundPlay("@xbgm24",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @0,@0,"fu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/100200010fje">
（ああ……そうだ……）

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/100200020fje">
（「みーちゃんのひとりあそび」に……のみこまれて……）

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/100200030fje">
（私、このまま……死ぬんだ……）

{	St("C",700, @0,@0,"fu恵那_哀愁_shock");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/100200040fje">
（このまま、このまま……）

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/100200050fje">
（でも……）

{	St("C",700, @0,@0,"fu恵那_一休_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/100200060fje">
（あれ？　なんか……おかしくない？）

{	St("C",700, @0,@0,"fu恵那_一休_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/100200070fje">
（何かが……すごく、引っかかるって言うか……）

{	St("C",700, @0,@0,"fu恵那_一休_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/100200080fje">
（あれ？　もしかして――）

{	St("C",700, @0,@0,"fu恵那_一休_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/100200090fje">
（コレは事件！？）

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/100200100fje">
（集中して考えなさい！
　思い出すのよ、富士見恵那！）

{	St("C",700, @0,@0,"fu恵那_一休_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/100200110fje">
（この違和感の原因を、思い出して――）

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/100200120fje">
（ああ……そうだ……アレは確か、小学生のころ……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：回想開始

	SetVolumeEX("@xbgm*", 300, 0, null);
	SetVolumeEX("SE*", 300, 0, null);
	CreateSE("SE02","se擬音_フラッシュバック");
	MusicStart("SE02",0,700,0,1000,null,false);
	DeleteAllSt(200,false);

	CreateColorEXadd("フラッシュ白", 20000, "WHITE");
	Fade("フラッシュ白",500,1000,null,true);

	ClockDelete(0,true);

	CreateColorSP("絵色白", 5000, "#FFFFFF");
	Delete("水");

	Fade("フラッシュ白", 500, 0, null, true);

	SoundPlay("@xbgm25",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【富士見鈴（幼年）】
<voice name="富士見鈴（幼年）" class="富士見鈴" src="voice/aa21/100200130frc">
「わたしのともだちにね、神社のコがいるの」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200140fec">
「神社の……コ？」

//【富士見鈴（幼年）】
<voice name="富士見鈴（幼年）" class="富士見鈴" src="voice/aa21/100200150frc">
「そう、半田明神の。
　それでね、そのコはお化けが見えるんだって」

//【富士見鈴（幼年）】
<voice name="富士見鈴（幼年）" class="富士見鈴" src="voice/aa21/100200160frc">
「でも、そのせいで怖がられて、いじめられてるの」

//【富士見鈴（幼年）】
<voice name="富士見鈴（幼年）" class="富士見鈴" src="voice/aa21/100200170frc">
「このあいだは、男子トイレの中に閉じ込められてさ、外からかんぬきかけられちゃったんだって」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200180fec">
「そんな……ひどい」

//【富士見鈴（幼年）】
<voice name="富士見鈴（幼年）" class="富士見鈴" src="voice/aa21/100200190frc">
「そのコはお化けのみーちゃんと話せるから、ずっと閉じ込められても平気だったんだけど……」

//【富士見鈴（幼年）】
<voice name="富士見鈴（幼年）" class="富士見鈴" src="voice/aa21/100200200frc">
「それを、みんなおもしろがって。
　しょっちゅう、閉じ込められるようになっちゃったの」

//【富士見鈴（幼年）】
<voice name="富士見鈴（幼年）" class="富士見鈴" src="voice/aa21/100200210frc">
「それって、ひどくない？」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200220fec">
「ひどい！」

//【富士見鈴（幼年）】
<voice name="富士見鈴（幼年）" class="富士見鈴" src="voice/aa21/100200230frc">
「だから、なんとかしてやめさせたいんだけど……」

//【富士見鈴（幼年）】
<voice name="富士見鈴（幼年）" class="富士見鈴" src="voice/aa21/100200240frc">
「ねえねえ恵那ちん。
　なにか、いい方法ってないかな？」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200250fec">
「ふふふ……」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200260fec">
「そういうことならこの名探偵、富士見恵那にお任せ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

// 回想終了？＜指定がありませんでした

	TextBoxDelete(150);

	CreatePlainSP("絵板写", 20000);
	DeleteSt("C",0,true);
	OnBG(10,"bg1704200銭形公園_トイレ個室_水没");
	FadeBG(0,true);
	St("C",700, @0,@0,"fu恵那_一休_think");
	FadeSt("C",200,true);
	Delete("フラッシュ白");
	Delete("絵色白");

{	ClockPass(2110);}

	FadeDelete("絵板写", 500, null, true);
	SetVolumeEX("@xbgm*", 500, 0, null);

	CreateSE("SEL01","se環境_水中_l");
	MusicStart("SEL01",300,700,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/100200270fje">
（私は鈴姉に相談を受けて、それで……
　それで、どうしたんだっけ？）

{	St("C",700, @0,@0,"fu恵那_通常_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/100200280fje">
（あ……ああ、そうだ！
　数日後、千秋と一緒にいるときに……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


// 回想再開？＜指定なし

//◆場所：銭形公園_全景_夕
	SetVolumeEX("SE*", 300, 0, null);
	CreateSE("SE02","se擬音_フラッシュバック");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorEXadd("フラッシュ白", 20000, "WHITE");
	Fade("フラッシュ白",500,1000,null,true);

	ClockDelete(0,true);

{	ClockTime(2111);}

	CreatePlainSP("上背景", 20010);
	DeleteSt("C",0,true);
	OnBG(10,"bg1701200銭形公園_全景_夕");
	FadeBG(0,true);

//	CreateColorSPadd("絵色", 1500, "#847000");
//	Fade("絵色", 0, 200, null, true);
	Fade("絵色", 0, 0, null, true);
	SetTone("@OnBG*",Sepia);
	Delete("フラッシュ白");
	FadeDelete("上背景", 500, null, true);
	SoundPlay("@xbgm25",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200290fec">
「はくしょんッ！」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100200300ktc">
「さむくなってきた……？
　恵那、もう暗くなるし帰ろっか」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200310fec">
「え……でも、ユージローまだ見つかってないよ」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100200320ktc">
「しょうがないだろ。
　さんぽ中に逃げ出すアイツが悪いんだ」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200330fec">
「でも……」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100200340ktc">
「だいじょうぶ。
　また美人のお姉さんについていっただけだって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100200350ktc">
「家に帰れば、きっとケロっとしてごはん食べてるから」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200360fec">
「…………」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100200370ktc">
「ほら、早く帰ろう」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200380fec">
「くらいの、こわいんだ」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100200390ktc">
「ば、バカ言うなよ！　怖いわけないだろ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2112);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
//【富士見恵那（幼年）】
[text0100]
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200400fec">
「うそつきー！　声ふるえてるしー！」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100200410ktc">
「ふ、ふるえてなんてない！」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200420fec">
「じゃあ、ちあき。
　『みーちゃんのひとりあそび』って知ってる？」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100200430ktc">
「あそび？　なんだそれ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
//【富士見恵那（幼年）】
[text0110]
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200440fec">
「鈴姉から聞いた話なんだけどね」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200450fec">
「ともだちにひとり、いじめられっ子がいたんだって」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200460fec">
「その子はちょっと変で、お化けが見えるとか言って、いつも回りを怖がらせてたんだって」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200470fec">
「でね、回りのいじめっ子は、それがきらいで。
　トイレにモップをはさんで、閉じ込めちゃったの」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2113);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
//【富士見恵那（幼年）】
[text0120]
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200480fec">
「その子が急にね、トイレの中で『みーちゃん』と話し始めたんだって」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100200490ktc">
「みーちゃん？」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200500fec">
「もちろん、だあれもいないはずなんだよ」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200510fec">
「それでね、いじめっこはこわくなって、にげちゃったの」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100200520ktc">
「え？　でも、トイレのかぎは……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
//【富士見恵那（幼年）】
[text0130]
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200530fec">
「かけたまま」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200540fec">
「次の日、様子を見に行ったら――
　その子は死んじゃってたの」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100200550ktc">
「し、ししし、死んだ……？」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200560fec">
「うん。死んじゃった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2114);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
//【小碓千秋（幼年）】
[text0140]
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100200570ktc">
「このトイレで……？」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200580fec">
「そう」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100200590ktc">
「う、うっそだー！！」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200600fec">
「こわいの？」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100200610ktc">
「こ、こわいわけあるかっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200620fec">
「でもね……ちあき」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200630fec">
「本当にこわいのは、そこじゃなくてね。
　そのいじめられっ子の死んじゃった原因、実は――」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200640fec">
「溺死、だったんだって」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100200650ktc">
「できし……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2115);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200660fec">
「おぼれ死んでたの。トイレのこしつで」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100200670ktc">
「え？　え？　なんで？　なんで？」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200680fec">
「それからね、夜にひとりでここのトイレに入ると、鍵のかかった個室から、物音がするの」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100200690ktc">
「物音……！？」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200700fec">
「中に入ると、突然鍵が閉まって――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2116);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100200710ktc">
「閉まって――？」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200720fec">
「足元から、どんどん水がせり上がってきて――」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100200730ktc">
「い、嫌だ――助け――」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200740fec">
「そのまま、溺れ死んじゃうんだって」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100200750ktc">
「助けて――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200760fec">
「ちょ、ちょっと待って！」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100200770ktc">
「や、やだ！　もうオレ帰る！」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200780fec">
「へえ、こわいの？」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100200790ktc">
「だから！　こわくなんてないって！」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200800fec">
「だったら、いいでしょ？
　探偵なんだから、ユージローを見つけてあげなきゃ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
//【富士見恵那（幼年）】
[text0190]
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200810fec">
「きっと今ごろ、ひとりぼっちで泣いてるよ！」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100200820ktc">
「それは……かわいそうだけど、でも……」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100200830ktc">
「やっぱり、オレたちだけじゃむりだよ。
　えなのオヤジさんにそうだんして――」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200840fec">
「やだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2117);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
//【小碓千秋（幼年）】
[text0200]
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100200850ktc">
「でも……」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200860fec">
「だめなの！」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200870fec">
「お父さんは、だめ！
　全然、あてにならないんだもん！」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100200880ktc">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200890fec">
「なによ？」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100200900ktc">
「どうして……そんなに、お父さんがきらいなの？」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200910fec">
「ちあきには、かんけいない」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100200920ktc">
「…………」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200930fec">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100200940ktc">
「えなの、バカ！」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200950fec">
「バカって言う方がバカなの」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100200960ktc">
「バカバカバカバカバカ！」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200970fec">
「バカって言うな！」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100200980ktc">
「帰る」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2118);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100200990fec">
「なんで帰るの！　こわいの？」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100201000ktc">
「こわくなんてない！」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100201010fec">
「じゃあ、なんで――」

//◆音声指示：遠くから
//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100201020ktc">
「こわくなんて、ないんだもん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
//【富士見恵那（幼年）】
[text0240]
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100201030fec">
「バーカ、バーカ！　ちあきのバーカ！」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100201040fec">
「こわがっちゃって、おんなのこみたい！」

//◆音声指示：遠くから
//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/aa21/100201050ktc">
「ちがう！　バカ！　そんなわけ――」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100201060fec">
「おんなのこには用事ありません！　べーだ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



//◆演出指定：回想終了

	SetVolumeEX("@xbgm*", 1500, 0, null);

	CreateColorEXadd("フラッシュ白", 20000, "WHITE");
	Fade("フラッシュ白",500,1000,null,true);

{	ClockPass(2119);}

	CreatePlainSP("上背景", 20010);
	DeleteSt("C",0,true);
	OnBG(10,"bg1704200銭形公園_トイレ個室_水没");
	FadeBG(0,true);
	St("C",700, @0,@0,"fu恵那_通常_hard");
	FadeSt("C",200,true);
	SetTone("@OnBG*",null);
	Delete("フラッシュ白");
//	Delete("絵色");
	FadeDelete("上背景", 500, null, true);

	CreateSE("SEL01","se環境_水中_l");
	MusicStart("SEL01",300,350,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/100201070fje">
（そうだ……思い出した……）

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/100201080fje">
（怖がりの千秋が、その話をクラス中に言いふらして……
　それで、誰もトイレに近づかなくなった）

{	St("C",700, @0,@0,"fu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/100201090fje">
（「みーちゃんのひとりあそび」って……
　私が、鈴姉の友達を助けるために、つくったんだ）

{
	SetVolumeEX("SE*", 2000, 0, null);
	St("C",700, @0,@0,"fu恵那_一休_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/100201100fje">
（そう、トイレでおぼれて死んだ人なんていない）

{	St("C",700, @0,@0,"fu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/100201110fje">
（だから、今私が見ているこれも――）

{	St("C",700, @0,@0,"fu恵那_通常_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/100201120fje">
（全部、幻なんだッ！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆演出指定：水が引いていく
	DeleteAllSt(200,false);


	CreateSE("SE01","se戦闘_ガラス割れる01");
	CreateColorEXadd("フラッシュ白", 4900, "WHITE");

	MusicStart("SE01",0,700,0,1200,null,false);
	$SETime = RemainTime("SE01");
	Fade("フラッシュ白",$SETime,1000,null,true);

	WaitKey(500);

	FadeDelete("フラッシュ白", 1500, null, false);
	FadeDelete("絵色", 2500, null, true);
	OnBG(10,"bg1704100銭形公園_トイレ個室_通常");
	FadeBG(2500,true);

	CreateSE("SE01","se環境_水流_l");
	MusicStart("SE01",0,2000,0,1000,null,true);

	Request("@絵水中効果", UnLock);
	FadeDelete("絵水中効果", 3000, null, true);

	SetVolumeEX("SE*", 2000, 700, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	St("C",700, @0,@0,"fu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/100201130fje">
（水が、ひいてく……）

{	SetVolumeEX("SE*", 6000, 0, null);
	St("C",700, @0,@0,"fu恵那_哀愁_shock");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/100201140fje">
（あれ……？　あそこにいるのは……）

{	St("C",700, @0,@0,"fu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/100201150fje">
「がはっ！」

//あきゅん「修正指示：ここから立ち絵無しで」
{
	DeleteAllSt(200,false);
//	Shake("@StNameC/C*", 500, 0, 3, 0, 0, 500, null, false);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/100201160fje">
「がっ、けほっ！　けほっけほっけほっ！」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/100201170fje">
「あ……あ……ああ……」

{
//	St("C",700, @0,@0,"bu恵那_哀愁_worry");
//	FadeSt("C",200,true);
	}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/100201180fje">
「ち……あき……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorEX("絵背景", 20000, "BLACK");
	Fade("絵背景", 2000, 1000, null, true);

	DeleteAllSt(0,true);
	EndScene();
}
//next "恵那" "aa2120千秋_恵那.nss"
