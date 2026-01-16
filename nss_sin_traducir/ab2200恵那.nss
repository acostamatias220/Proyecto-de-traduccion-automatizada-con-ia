
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ab2200恵那.nss_MAIN
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
	$GameName = "ab2220千秋_恵那.nss";
//	$GameCircle=false;

//※↑ab2051ノーコ.nssの飛び方を参考に設定（mngw 10/14）

}

scene ab2200恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1430">
////////////header////////////
//file name "ab2200恵那.nss"
//title "１０年前"
//previous "ab2150千秋_恵那.nss"

////////////footer////////////
//next "恵那" "ab2220千秋_恵那.nss"


////////////body////////////

//あきゅん「演出：暗転開始スクリプト」

//■再定義定型文
	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 1000, "#000000");

//◆場所：スパコン館_店内
	OnBG(10,"bg1103100スパコン館_店内_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);
	FadeDelete("絵色黒", 2000, null, true);


//◆時間：ジャンプ
{	ClockPass(2205);}


//◆演出指定：時間経過

	CreateTextureEX("絵背景２", 2000, Center, Middle, "cg/ev/ev2150ユージロー転倒b.jpg");
	Fade("絵背景２", 1000, 1000, null, true);

//あきゅん「演出：ＢＧＭ調整」
//	SoundPlay("@xbgm26",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab22/000100010wfu">
「――、――、――、――」


{	Fade("絵背景２", 500, 0, null, true);
	Delete("絵背景２");
	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100020fje">
「………………」

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100030fjh">
「………………」

{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100040fje">
「頑張って……フウリさん」


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100050fje">
「今すぐ、助けが来るから――
　だから、もう少しだけ、ね？」


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100060fje">
「もう少し頑張れば……大丈夫……」

{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100070fje">
「大丈夫……だよね……？」

{	St("ML",700, @0,@0,"bu平次_通常_cool");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100080fjh">
「助かる。絶対、助かる」

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100090fjh">
「だから、フウリ……
　もう少し、頑張ってくれ」


{	CreateTextureEX("絵背景２", 2000, Center, Middle, "cg/ev/ev2150ユージロー転倒b.jpg");
	Fade("絵背景２", 500, 1000, null, true);
	DeleteAllSt(0,false);}

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab22/000100100wfu">
「――、――、――、――」


{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("MR",0,true);
	FadeDelete("絵背景２", 500, null, true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100110fje">
「………………」


{	St("ML",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100120fjh">
「………………」


{	St("MR",700, @0,@0,"bu恵那_通常_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100130fje">
「父さん」


{
//	SoundPlay("@xbgm25",0,450,true);
	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100140fje">
「一緒にいてくれて、ありがとうね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2206);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("ML",700, @0,@0,"bu平次_落ち込み_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100150fjh">
「いや、オレこそ……悪かった」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100160fjh">
「本当のことを伝えてれば、こんなことには――」

{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100170fje">
「私こそ、嘘をついてごめんなさい」

{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100180fje">
「アザナエル……勝手に持ち出したのは、私で……」

{	St("ML",700, @0,@0,"bu平次_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100190fjh">
「ああ、気にすんな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2207);}

	SoundPlay("@xbgm21",0,450,true);


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100200fjh">
「アレは、魔性の銃だ。
　手にした人間の願いを敏感にかぎ取り、作用する」

{	St("ML",700, @0,@0,"bu平次_通常_cool");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100210fjh">
「あんなものを手にしたら、普通の精神状態じゃいられねぇんだ」

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100220fjh">
「おまえのせいじゃねぇ」

{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100230fje">
「でも――」


{	St("ML",700, @0,@0,"bu平次_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100240fjh">
「気にすんな」


{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100250fje">
「…………」

{//	SetVolumeEX("@xbgm*", 3000, 0, null);
	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100260fje">
「アザナエルって、何なの？」

{	St("ML",700, @0,@0,"bu平次_通常_cool");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100270fjh">
「禍福は糾える縄の如し――
　幸せと不幸は、より合わせた縄のように流転する」



//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100280fjh">
「その運命の、象徴さ」

{	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100290fje">
「運命の……？」

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100300fjh">
「由来は知らねぇ」

{	St("ML",700, @0,@0,"bu平次_通常_cool");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100310fjh">
「オレが新米警官やってたころから、日本の裏社会の回転軸になってた……っていうのは言い過ぎか？」

{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100320fje">
「どういう意味？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2208);}




	TextBoxDelete(150);

	CreateTextureEX("絵背景４", 2000, Center, Middle, "cg/img/imgアザナエル.jpg");
	Fade("絵背景４", 1000, 1000, null, true);

//	SoundPlay("@xbgm06",0,450,true);

	DeleteAllSt(0,false);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100330fjh">
「日本の驚異的な戦後復興。
　あれな、アザナエルが原動力になってんだとさ」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100340fje">
「眉唾でしょ？」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100350fjh">
「オレもそう思ってた」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100360fjh">
「けど……それを信じるヤツは、たくさんいた」


{	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",0,true);
	FadeDelete("絵背景４", 1000, null, true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100370fjh">
「そして人が信じる力は、時々現実に影響を及ぼしやがる」

{	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100380fje">
「なにか起こったの？」

{	St("ML",700, @0,@0,"bu平次_通常_cool");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100390fjh">
「国の未来を左右しかねない拳銃だ。
　闇の世界で厳重に守られていたらしいんだがな」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100400fjh">
「あるときそいつをひとりの男が持ち出した」


{	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100410fjh">
「で、欲望のままに銀行に立てこもり、金を盗もうとして失敗した」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100420fjh">
「男はそのまま拳銃自殺。
　で、アザナエルは見事、オレたちの手に」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100430fjh">
「ところがその時、その拳銃の恐ろしさを知っていたのは、その時偶然銀行の側を通りがかった神主――」

{	St("ML",700, @0,@0,"bu平次_通常_cool");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100440fjh">
「<RUBY text="かもんしげる">歌門繁</RUBY>だけだった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2209);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100450fje">
「歌門って、星さんと同じ名字……」

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100460fjh">
「爺さんだよ」

{	St("ML",700, @0,@0,"bu平次_通常_cool");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100470fjh">
「青筋立てて、あの拳銃は危険だ、だから神社に奉納しろ――ってがなり立てる」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100480fjh">
「もちろん、誰も取り合おうとしねぇけどな」

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100490fjh">
「でまあ、やっぱりな、起こるんだよ。奇妙な出来事が」



//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100500fjh">
「アザナエルの管理者が、突然銃を持ち出そうとする。
　それまで冷静沈着で知られた上司が、覗きで捕まる」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100510fjh">
「仏の熊さんってあだ名で知られたベテランが犯人を射殺して、とうとうこりゃマズいってことになった」


{	St("MR",700, @0,@0,"bu恵那_哀愁_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100520fje">
「半田明神に、奉納したの？」


{	St("ML",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100530fjh">
「できればそうしてやりたかったさ。
　だがここは法治国家だ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2210);}


//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100540fjh">
「重大事件の証拠物件、しかも一般人は所持できない拳銃を、神社の神主に預けられるか？」


{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100550fje">
「……確かに」

//あきゅん「修正指示：半田明神鳥居を表示する」
//※対応しました（mngw 11/18）


{	CreateTextureEX("絵背景２", 2000, Center, Middle, "cg/bg/bg0602112半田明神_鳥居_通常.jpg");
	Move("絵背景２", 0, @0, -700, null, true);
	Fade("絵背景２", 2000, 1000, Dxl3, false);
	Move("絵背景２", 6000, @0, -300, Dxl3, false);
	WaitKey(1000);}


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100560fje">
「それじゃあどうやって半田明神にアザナエルが――？」


{	DeleteAllSt(0,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100570fje">
「って、あ！　まさか！」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100580fjh">
「そう、そのまさか」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100590fjh">
「歌門繁が、盗んだのさ」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100600fjh">
「内部から手引きする人間はいる」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100610fjh">
「拳銃がなくなりゃ警察の恥だ。
　発表なんかはせずにもみ消すだろう」

//あきゅん「修正指示：地下ムロ表示」
//※地下ムロというのは祭壇のことでよいでしょうか。「奉納」という言葉から判断。（mngw 11/18）
{	CreateTextureEX("絵背景３", 3000, Center, 0, "cg/bg/bg0702200地下_祭壇_閉門.jpg");
	Move("絵背景３", 1000, @0, -160, null, false);
	Fade("絵背景３", 1000, 1000, null, true);}

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100620fjh">
「両者の思惑が一致しアザナエルは盗まれ、半田明神の地下ムロへと奉納された――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//◆演出指定：時間たっぷり取る
//あきゅん「修正指示：暗転、ＢＧＭ消す」

//※対応しました（mngw 11/18）

	TextBoxDelete(150);

	WaitKey(500);

	SetVolumeEX("@xbgm*", 5000, 0, null);
	PrintFadeNut("上背景", 2000, true);

	DeleteSt("C", 0,true);
	Delete("@OnBG*");
	Delete("絵背景*");

	WaitKey(1000);

	OnBG(10,"bg1103100スパコン館_店内_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 2000, Axl1, true);

{	ClockPass(2211);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100630fje">
「そのアザナエルの封印を、私が解いた？」

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100640fjh">
「…………」

{	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100650fje">
「父さん？」

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100660fjh">
「……違うんだ」

{	St("ML",700, @0,@0,"bu平次_通常_cool");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100670fjh">
「アザナエルの封印は、それ以前に一度、解けた」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100680fjh">
「今から１０年前――母さんが、消えた直後に」



{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100690fje">
「…………」

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100700fjh">
「…………」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	PrintFadeNut("上背景", 3000, true);

	DeleteSt("C", 0,true);
	Delete("@OnBG*");

	WaitKey(4000);


//◆時間：ジャンプ
{	ClockPass(2215);}


//◆演出指定：時間たっぷり取る
//あきゅん「修正指示：暗転処理などで時間入れる」
//※対応しました（mngw 11/18）

	CreateTextureEX("絵背景２", 2000, Center, Middle, "cg/ev/ev2150ユージロー転倒b.jpg");
	Fade("絵背景２", 0, 1000, null, true);
	DeleteAllSt(0,false);

	OnBG(10,"bg1103100スパコン館_店内_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 3000, null, true);


	Shake("絵背景２", 3000, 2, 2, 0, 0, 500, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab22/000100710wfu">
「んん――ん――ん――！」


　苦悶の声を漏らすフウリ。

　汗ばむ額を優しく撫でながら、恵那は呟く。



{
	SoundPlay("@xbgm25",0,450,true);
	St("MR",700, @0,@0,"bu恵那_通常_think");
	FadeSt("MR",0,true);
	Fade("絵背景２", 1000, 0, null, true);
	Delete("絵背景２");}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100720fje">
「あの夜、嵐だった」


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100730fje">
「私はお姉ちゃんとふたりっきりだった」


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100740fje">
「千秋の家でずっと、父さんと母さんの帰りを待ってた」

//あきゅん「修正指示：ロストやりすぎなので調整」
//※sadに変更しました（mngw 11/18）
{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100750fje">
「心細くて……心細くて……」


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100760fje">
「……ねえ、教えて」

{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100770fje">
「あの日、なにがあったの？」

{
	St("MR",700, @0,@0,"bu恵那_哀愁_fear");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100780fje">
「どうして……母さんは、帰ってこなかったの！？」

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100790fjh">
「…………」

{	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);
	Shake("@StNameMR/MR*", 100, 5, 5, 0, 0, 500, null, false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100800fje">
「父さんッ！！」


{	St("ML",700, @0,@0,"bu平次_通常_cool");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100810fjh">
「アザナエルは――長年、人の幸不幸を糾い続けた」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100820fjh">
「生と死――希望と絶望――祈念と怨念――それぞれの運命の起点となったアザナエルは、ひとつの呪術を得たんだ」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100830fjh">
「それが、カゴメアソビ――」

{	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100840fje">
「カゴメアソビ――？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	SoundPlay("@xbgm14_inst",0,450,true);

	CreateTextureEX("絵背景１", 2000, Center, Middle, "cg/data/slide_05_00_0.png");
	CreateTextureEX("絵背景２", 3000, Center, Middle, "cg/img/imgアザナエルマズル弾なし.png");
	Zoom("絵背景２", 0, 850, 850, null, true);
	Move("絵背景２", 0, @0, @50, null, true);
	Fade("絵背景１", 1000, 1000, null, false);
	WaitKey(500);

	CreateSE("SE03","se銃_シリンダー回転");
	MusicStart("SE03",0,1000,0,1000,null,false);

	Move("絵背景２", 1000, @0, @-50, Dxl3, false);
	Fade("絵背景２", 1000, 1000, null, true);
	DeleteAllSt(200,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100850fjh">
「弾丸を入れ、シリンダを回し、トリガーを引く」


{	SetVolumeEX("SE03", 500, 0, null);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100860fjh">
「６分の１の確率で、もし弾が出れば――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2216);}


	TextBoxDelete(0);

	CreateSE("SE02","se戦闘_爆発02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	WaitKey(100);
	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",0,true);
	OnBG(10,"bg1103100スパコン館_店内_通常");
	FadeBG(0,true);
	Fade("絵色白", 2000, 0, null, false);
	WaitKey(666);
	FadeDelete("絵背景１", 2000, null, false);
	FadeDelete("絵背景２", 2000, null, true);

	Delete("絵色白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100870fjh">
「当然、命が奪われる」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100880fjh">
「だが、もし弾が出なかったら――」

{	St("ML",700, @0,@0,"bu平次_通常_cool");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100890fjh">
「そいつの夢が、叶う」

{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000100900fje">
「夢が……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	St("ML",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100910fjh">
「希望の弾丸が、心を読み取る。
　そいつが今一番必要としているものは何か――」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100920fjh">
「オレはあの日、河原屋双一に呼び出された」



//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100930fjh">
「カゴメアソビをするために」



//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100940fjh">
「目の前で、試すみたいに双一がこっちを見てた」



//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100950fjh">
「楽しんでるような……でも、どこか寂しそうな目だ」


{	St("ML",700, @0,@0,"bu平次_通常_cool");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100960fjh">
「オレは、アザナエルを、握ったんだ」



//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100970fjh">
「撃てば……オレの願いが叶うかもしれない」



//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100980fjh">
「河原屋双一を捕まえることだって、殺すことだって、出来るはずだ」



//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000100990fjh">
「母さんを、取り戻すことだって――」



//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000101000fjh">
「オレの本当の望みはどれかなんて、考えるまでもないだろう？」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000101010fjh">
「そう思った。トリガーを引きかけた」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000101020fjh">
「けど――」

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000101030fjh">
「その直前、おまえたちの顔が、頭を過ぎった」

{	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000101040fje">
「そんなの……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2217);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("MR",200,true);
	Shake("@StNameMR/MR*", 100, 5, 5, 0, 0, 500, null, false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000101050fje">
「そんなの、言い訳でしょッ！」


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000101060fje">
「怖じ気づいたの？
　母さんを取り戻すにはそれしかなかったのよ！」

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000101070fje">
「なのに、どうしてできなかったのよ？！」

{	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000101080fje">
「父さんは、母さんを――
　母さんの命を奪われて、悔しくなかったの――！！？」


{
//	SetVolumeEX("@xbgm*", 5000, 0, null);
	St("ML",700, @0,@0,"bu平次_通常_cool");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000101090fjh">
「母さんは、死んでない」

{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000101100fje">
「え……？」

{	St("ML",700, @0,@0,"bu平次_通常_cool");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000101110fjh">
「河原屋組の罠にかかって、殺されたりはしてない。
　拉致されたわけでもない」

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000101120fjh">
「失踪した――オレに愛想を尽かして出てっただけだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//	SoundPlay("@xbgm25",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//あきゅん「修正指示：ロスト調整」
//※pinchに変更しました（mngw 11/18）
{	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000101130fje">
「ウソ……」


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000101140fje">
「それじゃ……母さんは、私たちを捨てて……」

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000101150fjh">
「……すまない」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000101160fjh">
「オレが、なんとかするべきだったんだ」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000101170fjh">
「けど……オレはその時、仕事にかまけて……」


{	St("MR",700, @0,@0,"bu恵那_ハルヒ_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000101180fje">
「どうして！？　どうして黙ってたの！」

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000101190fjh">
「……母さんじゃなく、オレを恨んで欲しかった」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000101200fjh">
「母さんには愛されたままでいるって、信じて欲しかった」

{	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000101210fje">
「…………」

{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000101220fje">
「……だから、アザナエルを撃たなかった？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2218);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{	St("ML",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000101230fjh">
「オレのわがままに付き合わせて、すまねぇ」

{	St("ML",700, @0,@0,"bu平次_通常_cool");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000101240fjh">
「けど……人の心を操るようなことは、できなかった。
　しちゃ、ならないと思ったんだ」

{	St("ML",700, @0,@0,"bu平次_落ち込み_sad");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000101250fjh">
「すまねぇ……本当に……すまねぇ……ッ！」


{	SetVolumeEX("@xbgm*", 4000, 0, null);}

{	St("MR",700, @0,@0,"bu恵那_哀愁_cry");
	Shake("@StNameC/C*", 200, 0, 5, 0, 0, 500, null, false);
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000101260fje">
「ひぐっ、ぅ……ぅぅ……う！」


{	St("ML",700, @0,@0,"bu平次_落ち込み_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000101270fjh">
「……悪い、恵那」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000101280fjh">
「やっぱり……
　こんなときに、こんなこと話すべきじゃ――」

{	St("MR",700, @0,@0,"bu恵那_哀愁_cry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000101290fje">
「ぅぅっ、ううん……」


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000101300fje">
「違う……違うの」


{	St("MR",700, @0,@0,"bu恵那_哀愁_cry");
	Shake("@StNameC/C*", 200, 0, 5, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000101310fje">
「ひっ……もう……」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000101320fje">
「フウリさんが……フウリさんが……」

{	St("ML",700, @0,@0,"bu平次_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000101330fjh">
「な……」


{	DeleteAllSt(200,false);}


　平次は、タヌキの胸元に静かに指先を当てた。


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
	TextBoxDelete(0);


	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

	SetVolumeEX("@xbgm*", 1000, 0, null);

{	ClockPass(2219);}

//◆ＳＥ：バタン！

	CreateSE("SE01","se動作_ドア閉める02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("@OnBG*", 300, 10, 10, 0, 0, 500, null, false);
	Fade("絵色白", 200, 0, null, true);
	Delete("絵色白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]

{	St("MR",700, @120,@0,"buユージローa_通常_normal");
	Move("@StNameMR/MR*", 200, @-120, @0, DxlAuto, false);
	FadeSt("MR",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab22/000101340ujr">
「わうわうわうわう！」


{	DeleteSt("MR", 200,false);
	St("C",650, @120,@0,"bu千秋_通常_shout");
	Move("@StNameC/C*", 200, @-120, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000101350kit">
「恵那！　フウリさんが助かる！」


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000101360kit">
「貫太さんを連れて――」

//「織田さんを連れて――」

{	St("MR",700, @0,@0,"bu恵那_哀愁_cry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000101370fje">
「ひっ、う……う……」

{	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000101380kit">
「ど……どうした？」

{	St("MR",700, @0,@0,"bu恵那_哀愁_cry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/000101390fje">
「う……うう……う……ううう……」


{	St("ML",700, @0,@0,"bu平次_通常_cool");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000101400fjh">
「手遅れだ」

{	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/000101410kit">
「手遅れ？」

{	St("ML",700, @0,@0,"bu平次_通常_cool");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000101420fjh">
「フウリは……」

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/000101430fjh">
「死んだよ」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



	EndScene();
}
