
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1950恵那.nss_MAIN
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
	$GameName = "2000千秋_恵那.nss";
	//$GameCircle=false;

}

scene 1950恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1690">
////////////header////////////
//file name "1950恵那.nss"
//title "迷推理、炸裂！？"
//previous "1940恵那.nss"

////////////footer////////////
//next "恵那" "2000千秋_恵那.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);

//事件定義
	KoreJikenSet();

{	ClockPass(1950);}

//	SoundPlay("@xbgm20",0,450,true);

	OnBG(10,"bg0502111スーパーノヴァ_ライブ会場_ガラス割れ");
	FadeBG(0,true);

	FadeDelete("上背景", 200, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/19/500300010ktt">
「謎が……解けた？」

{	St("C",700, @0,@0,"bu鈴_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300020fjr">
「な、なに言ってるのよ？」

{	SetVolume("@xbgm*", 1000, 0, null);}

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300030fje">
「しらばっくれないで！
　もう、私は真実を見通してるのよ！」

{	SoundPlay("@xbgm32",0,450,true);}

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300040fje">
「鈴姉、あなたはこの店のバイト長よね？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300050fje">
「このお店の鍵を開けるのは鈴姉なんじゃない？」

{	St("ML",700, @0,@0,"bu鈴_シリアス_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300060fjr">
「……そうだけど、それが？」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300070fje">
「なら、バイトの誰にも見られずに、千秋をこのお店に連れてくることが可能だった。違う？」

{	St("ML",700, @0,@0,"bu鈴_シリアス_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300080fjr">
「連れ込んで、どうするのかな？」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300090fjr">
「まさか、アタシがお店の中に監禁してるとか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300100fje">
「千秋は私が電話をかけた６時過ぎ、鈴姉の側にいた」

{	St("ML",700, @0,@0,"bu鈴_シリアス_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300110fjr">
「ライブの直前よ。
　アタシはお店にいたし、バイトのコだってたくさんいた」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300120fjr">
「千秋ちゃんを見かけないなんて、不可能――」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300130fje">
「千秋のままだったらね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("ML",700, @0,@0,"bu鈴_シリアス_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300140fjr">
「まま……だったら？」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300150fje">
「ところで、アッキーちゃん。
　あなたはなんで、千秋の携帯電話を？」

{	St("L",700, @0,@0,"bu千秋_朗らか_sad");
	DeleteAllSt(200,false);
	FadeSt("L",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/19/500300160ktt">
「え、それは……」

{	St("ML",700, @0,@0,"bu鈴_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300170fjr">
「千秋ちゃんから借りてるんだもんねー」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("L",700, @0,@0,"bu千秋_朗らか_normal");
	DeleteAllSt(200,false);
	FadeSt("L",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/19/500300180ktt">
「あ……ああ。そうだ！」

{	St("C",700, @50,@0,"bu恵那_ハルヒ_pride");
	DeleteAllSt(200,false);
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300190fje">
「苦しい言い訳！」

{	St("C",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300200fje">
「この名探偵富士見恵那が、真実を教えてあげるわ！」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300210fje">
「千秋がこの店に入った後、バイトのみんなに本人と悟られなかったのは、彼が別人に化けていたから――」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300220fje">
「携帯電話も、借りてるわけじゃない。
　本人がそのまま持っていただけよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300230fje">
「そう。つまり――」


{	St("C",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300240fje">
「アッキーちゃん！　あなたの正体は、千秋なのよ！！」

{	St("ML",700, @0,@0,"bu鈴_シリアス_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300250fjr">
「な――」

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_pride");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300260fje">
（決まった！　決まったわ――！）

{	St("C",700, @-50,@0,"bu鈴_シリアス_shout");
	DeleteAllSt(200,false);
Move("@StNameC/C*", 200, @50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300270fjr">
「ちょ……ちょっと待って！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("C",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300280fjr">
「こんなに可愛い子が男の子のはずないじゃない！」

{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300290fje">
「鈴姉！
　ずっと、千秋を女装させたいって言ってたわよね！」

{	St("ML",700, @0,@0,"bu鈴_シリアス_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300300fjr">
「いやまあ、それは言ってたかもしれないけど」

{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300310fje">
「大体、言葉遣いも声も背格好も、似すぎてるのよ！
　コレで赤の他人って方がおかしいわ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("ML",700, @0,@0,"bu鈴_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300320fjr">
「だ、だから赤の他人じゃなくて！
　ほら！　冬休みだし、千秋ちゃんの親戚が――」

{	SetVolumeEX("@xbgm*", 3000, 0, null);
	St("C",700, @50,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300330fje">
「さあ、アッキーちゃん。覚悟はいいわね」

{	St("ML",700, @50,@0,"bu千秋_朗らか_sad");
	DeleteAllSt(200,false);
Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/19/500300340ktt">
「え？　覚悟……？」

{	SoundPlay("@xbgm03",0,450,true);
	St("C",700, @50,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
Move("@StNameC/C*", 200, @-90, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300350fje">
「あなたが、男じゃないって言うのなら……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("ML",700, @50,@0,"bu千秋_朗らか_shock");
	DeleteAllSt(200,false);
Move("@StNameML/ML*", 200, @-90, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/19/500300360ktt">
「ちょ……ちょっと！？」

{	St("C",700, @50,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
Move("@StNameC/C*", 200, @-130, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300370fje">
「その、身体で！」

{	St("ML",700, @50,@0,"bu千秋_朗らか_shock");
	DeleteAllSt(200,false);
Move("@StNameML/ML*", 200, @-130, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/19/500300380ktt">
「え？　お、おい！」

{	St("C",700, @50,@0,"bu恵那_通常_shout");
	DeleteAllSt(200,false);
Move("@StNameC/C*", 200, @-170, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300390fje">
「証明！」

{	St("ML",700, @50,@0,"bu千秋_朗らか_cry");
	DeleteAllSt(200,false);
Move("@StNameML/ML*", 200, @-170, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/19/500300400ktt">
「や……やめろっ！」

{	St("C",700, @50,@0,"bu恵那_通常_shout");
	DeleteAllSt(200,false);
Move("@StNameC/C*", 200, @-200, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300410fje">
「してちょーだいッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	DeleteAllSt(200,true);

{	ClockPass(1951);}


//	TextBoxDelete(150);



//◆ＥＶ："ev/ev1950恵那チンコを掴め！.txt"


//◆ＳＥ：スカスカ外れ音

	CreateMask("ゆる窓", 0, Center, Middle, "cg/yur/yurIF背景マスク.png", false);
	SetAlias("ゆる窓","ゆる窓");

	CreateTextureEX("ゆる枠", 110, Center, Middle, "cg/yur/yurIF枠.png");
	CreateTextureSP("ゆる窓/絵背景", 100, Center, Middle, "cg/yur/yurIF背景03.png");
	//291,133
	CreateTextureEX("ゆる窓/絵ゆるm千秋", 100, Center, Middle, "cg/yur/yurチンコを掴め恵那千秋_千秋.png");
	CreateTextureEX("ゆる窓/絵ゆるm恵那", 100, Center, Middle, "cg/yur/yurチンコを掴め恵那千秋_恵那.png");

	CreateTextureEX("ゆる窓/絵ゆるs千秋", 100, Center, Middle, "cg/yur/yurチンコを掴め恵那千秋引き_千秋.png");
	CreateTextureEX("ゆる窓/絵ゆるs恵那", 100, Center, Middle, "cg/yur/yurチンコを掴め恵那千秋引き_恵那.png");

	Move("ゆる*", 0, @40, @0, null, true);
	Move("ゆる窓/絵*", 0, @40, @0, null, true);

	Move("ゆる*", 200, @-40, @0, Dxl2, false);
	Move("ゆる窓/絵*", 200, @-40, @0, Dxl2, false);
	Fade("@ゆる枠",  200, 1000, null, false);
	Fade("@ゆる窓/絵背景",  200, 1000, null, false);
	Fade("@ゆる窓/絵ゆるs*",  200, 1000, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	SetVolumeEX("@xbgm*", 300, 0, null);
	CreateSE("SE02","se動作_掴み損ねる");
	MusicStart("SE02",0,700,0,1000,null,false);
//WaitKey(200);
	BezierMove("ゆる窓/絵ゆるs千秋", 200, (291,133){301,103}{311,133}{321,143}(351,133), Dxl3, false);//60
	BezierMove("ゆる窓/絵ゆるs恵那", 200, (291,133){251,133}{211,133}(171,133), Dxl3, false);//120
}

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300420fje">
「ふんっ！」


{	CreateSE("SE02","se動作_掴み損ねる");
	MusicStart("SE02",0,700,0,1000,null,false);
	Move("ゆる窓/絵ゆるs*", 0, 201,133, null, true);
	Rotate("ゆる窓/絵ゆるs*", 0, 0,180,0, null, true);
	BezierMove("ゆる窓/絵ゆるs千秋", 200, (291,133){281,103}{271,133}{321,143}(231,133), Dxl3, false);
	BezierMove("ゆる窓/絵ゆるs恵那", 200, (291,133){331,133}{371,133}(411,133), Dxl3, false);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300430fje">
「ふんっ！」

{yurutinStart();}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300440fje">
「ふんっ！　ふんっ！　ふんっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
yurutinDelete();
yurutin2Start();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//	St("C",700, @0,@0,"bu恵那_通常_shout");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300450fje">
「ふんっ！　………………あれ？」

{yurutin2Delete();}
{	St("C",700, @-50,@0,"bu恵那_通常_shy");
Move("@StNameC/C*", 200, @50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300460fje">
「な……ない？」

{	DeleteAllSt(200,true);}

{	St("C",700, @0,@0,"bu千秋_通常_shy");
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/19/500300470ktt">
「やめ！　やめろよっ！！」


{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300480fje">
「そんなはずは、ないっ！」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu千秋_通常_pain");
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/19/500300490ktt">
「うきゅ――――っ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolume("@xbgm*", 3000, 0, null);



//◆ＳＥ：ドロン！　狸幻覚

	SoundPlay("@xbgm27",0,450,true);

	CreateSE("SE02","se動物_タヌキ_化ける01");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateColorSPadd("絵色", 1500, "#FFFFFF");
	DeleteAllSt(0,true);
WaitKey(100);

	FadeDelete("絵色", 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("C",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300500fje">
「え……？　あれ？　アッキーちゃん？」

//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300510fje">
「どこに――」

{	DeleteAllSt(200,true);}

{	St("C",700, @0,@100,"bu平次_通常_happy");
Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/500300520fjh">
「はっはっはー！」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300530fje">
「げ！　父さん！」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu平次_通常_smile");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/500300540fjh">
「我が娘よ！
　日々、富士見式捕縛術の鍛錬は積んでいるか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300550fje">
「いやいや、誰がそんな鍛錬――」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu平次_通常_shout");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/500300560fjh">
「良かろう！
　その努力に免じて、富士見式捕縛術の奥義――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆ＳＥ：ぴょこっ！　毛が取れる
//あきゅん「素材：obj平次の頭」

	CreateTextureEX("絵アフ", 100, 214, -130, "cg/obj/obj平次の頭_枠なし.png");//576x576
	Zoom("絵アフ", 0, 750, 750, null, true);
	#obj平次の頭 = true;

	Fade("絵アフ", 200, 1000, null, false);
	Move("絵アフ", 200, @0, -400, Dxl1, false);

	CreateSE("SE01","se擬音_ギャグ_ぴょこ");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("絵アフ", 1000, 214, -600, "cg/obj/obj平次の頭_枠なし.png");

{	St("C",700, @0,@0,"bu平次_通常_other");
	FadeSt("C",200,true);
	Move("絵アフ", 200, @0, 210, Dxl1, true);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0135]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/500300570fjh">
「このモジャ毛を、おまえに授けるッ！！」

{	Fade("絵アフ", 200, 0, null, false);
	DeleteAllSt(200,true);
}

{	St("C",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300580fje">
「え？　それ取れるの！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Fade("絵アフ", 200, 1000, null, false);
{	St("C",700, @0,@0,"bu平次_通常_other");
	FadeSt("C",200,true);}

	CreateEffect("上震度", 1200, 0, 0, 1024, 576, "Plain");
	SetAlias("上震度","上震度");
	Request("上震度",Passive);

	DeleteAllSt(0,true);
	Delete("絵アフ");
	Request("上震度",Smoothing);

	CreateColorEX("絵黒", 1500, "#000000");
	Fade("絵黒", 8000, 1000, Axl3, false);

	Move("上震度", 8000, @0, -570, null, false);
	Zoom("上震度", 8000, 3000, 3000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300590fje">
「てか嫌ッ！　やだ、ちょっとやめ――」

//	St("C",700, @0,@0,"bu恵那_通常_shy");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300600fje">
「いやああああああああああ――――っ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("絵黒", 0, 1000, null, true);
	Delete("上震度");

	CreateColorEXadd("絵色", 1500, "#FFFFFF");
	Fade("絵色", 200, 1000, null, true);

	Delete("絵黒");


	SetVolumeEX("@xbgm*", 2000, 0, null);

//◆演出指示：幻終わり

{	ClockPass(1952);}






//◆場所：スーパーノヴァ_正面_ガラス割れ
	OnBG(10,"bg0501200スーパーノヴァ_正面_ガラス割れ");
	FadeBG(0,true);

	FadeDelete("絵色", 200, null, true);
//	DrawDelete("上背景", 200, 100, null, "slide_01_00_1", true);
WaitKey(500);

	CreateColorEXadd("絵色", 1500, "#FFFFFF");
	Fade("絵色", 200, 1000, null, true);


//◆場所：スーパーノヴァ_ライブ会場_地震後
	OnBG(10,"bg0502111スーパーノヴァ_ライブ会場_ガラス割れ");
	FadeBG(0,true);

	FadeDelete("絵色", 200, null, true);
	//DrawDelete("上背景", 200, 100, null, "slide_01_00_1", true);

	SoundPlay("@xbgm20",5000,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0145]

{	St("C",700, @-50,@0,"bu鈴_シリアス_shout");
Move("@StNameC/C*", 200, @50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300610fjr">
「恵那ちんっ！　恵那ちんってば！」

{	St("MR",700, @-50,@0,"bu恵那_哀愁_worry");
	DeleteAllSt(200,false);
Move("@StNameMR/MR*", 200, @50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300620fje">
「え……？　あ、あれ？
　今のは……幻？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("ML",700, @0,@0,"bu鈴_シリアス_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300630fjr">
「ハァ……どれだけショックだったのよっ」

{	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300640fje">
「ショック……？　ショックって――あ、そうか！
　ついてなくて……びっくりして……」

{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300650fje">
「そうだ！　アッキーちゃんは！？」

{	St("ML",700, @0,@0,"bu鈴_シリアス_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300660fjr">
「トイレに逃げ込んじゃったわよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300670fje">
「嘘……絶対に、自信があったのに……
　なんで……？　どこで間違えたの？」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300680fje">
「まさか、ホントに千秋の親戚……？」

{	St("ML",700, @0,@0,"bu鈴_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300690fjr">
「そ……そうそう！　そうなのよ！
　だから、声も体つきも似てる」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300700fjr">
「学校の課題で『職業体験』があるらしくて、ちょうどいいからうちで受け入れたってわけ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu恵那_一休_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300710fje">
「……携帯は？」

{	St("ML",700, @0,@0,"bu鈴_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300720fjr">
「昨日、いきなり電池がダメになっちゃったの！　再契約まで、一時的に千秋ちゃんから借りてるだけよ」

{	St("MR",700, @0,@0,"bu恵那_一休_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300730fje">
「でも、６時に電話したとき、千秋も一緒に――」

{	St("ML",700, @0,@0,"bu鈴_シリアス_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300740fjr">
「ああ、だからそれよ。そこで、携帯電話借りたの」

{	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300750fje">
「なんで、隠してたの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300760fjr">
「千秋ちゃんから、秘密にしてって言われてたんだけど」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300770fjr">
「恵那ちんにね、どうしても、渡さなきゃならないものがあったんだって」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300780fje">
「渡さなきゃならないもの……？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300790fjr">
「でも、それがなくなっちゃって、探しに行ったの」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300800fjr">
「何かはわかんないけどさ。すごく大切そうだった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300810fjr">
「秘密で用意して、驚かせたかったのかもね」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300820fje">
「…………」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300830fje">
「私……酷いや……」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300840fje">
「好きな人を信じるのは、当たり前とか言って……」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300850fje">
「自分が、全然、千秋を信じてなかったんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300860fjr">
「あのね、恵那ちん」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300870fjr">
「アタシ今日、フウリちゃんとケンカしたんだ」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300880fje">
「フウリさんって……バンドの？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300890fjr">
「そ。
　リハーサルなのに、フウリちゃんったら全然元気なくて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300900fjr">
「でもその理由、教えてくれないの。
　コレだけ一緒にいるのにさ」

{	St("C",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300910fjr">
「で、アタシ頭に来ちゃって、ガッカリしちゃって、『バンド解散だー！』とか言っちゃったりしてね」


{	St("C",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300920fjr">
「でも、さ。アタシだって同じで」


//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300930fjr">
「なんで自分がメジャーになりたいのか、フウリちゃんに話したことすらなかったの」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300940fjr">
「自分の事になると、急に見えなくなっちゃうんだよね」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300950fje">
「鈴姉……」


{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300960fjr">
「でも！　一度失敗したら、もう同じ轍は踏まないよ」


//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300970fjr">
「今度会ったら、絶対、フウリちゃんと仲直りする！」


//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500300980fjr">
「だからさ、恵那ちんも、次にアッキーちゃんとか千秋ちゃんに会ったとき、ちゃーんと謝れば――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);



{	ClockPass(1953);}


//◆ＳＥ：電話がかかってくる
	CreateSE("SE01","seメカ_携帯_メール着信_恵那_l");
	MusicStart("SE01",0,700,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	St("C",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500300990fje">
「あ、千秋の携帯から――！」

{	St("C",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301000fje">
（……ってことは、アッキーちゃんから？）


　通話ボタンにかけた親指が、止まる。

　まるで掌に冷たい膜が張ったように、汗が噴き出す。


{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301010fje">
（……ちゃんと、謝らなきゃ。さっきのこと）

//◆音声指示：深呼吸
//	St("C",700, @0,@0,"bu恵那_通常_hard");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301020fje">
「――――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolume("SE01", 10, 0, null);

	SetVolumeEX("@xbgm*", 2000, 200, null);


//◆ＳＥ：通話
	CreateSE("SE02","seメカ_携帯_電子音01");
	MusicStart("SE02",0,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301030fje">
「……もしもし」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/500301040kit">
『…………』

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301050fje">
「もしもし……？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/500301060kit">
『…………』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301070fje">
「あの……アッキーちゃん、だよね？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/500301080kit">
『え……？　あ、うん』

{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301090fje">
「さっきは……ゴメンね。
　鈴姉から、みんな聞いたよ」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301100fje">
「親戚の子が来てるなんて、想像もしてなかったし」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301110fje">
「それにさ、声が、アッキーちゃんそっくりじゃない？」

{	St("C",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301120fje">
「って、言ってもわかんないか。
　自分の声って、自分じゃわかりづらいしね」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/500301130kit">
『あ……ああ、うん』

{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301140fje">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/500301150kit">
『…………』



{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301160fje">
「だから、その……」

{	St("C",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301170fje">
「さっきは、あなたを疑っちゃって、ごめんなさい！」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/500301180kit">
『あ、いや、そんな謝らなくても――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301190fje">
「私がもっと、千秋を信じてあげられたらよかったの」

{	DeleteAllSt(200,true);}

//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/500301200kit">
『…………』


{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301210fje">
「あの、それでね！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301220fje">
「ほら、携帯なくしたり、家で千秋とふたりっきりだったりで、大変でしょ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301230fje">
「だから、私にできることがあったらいつでも――」


{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/500301240kit">
『お願い！　一生の、お願い！』

//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/500301250kit">
『スパコン館、わかるよな！』

{	St("C",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301260fje">
「スパコン館ってあの……
　潰れちゃった、スーパーコンピューター館？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/500301270kit">
『そう、そこ！
　裏口が開いてるんだ！　それで――』

//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/500301280kit">
『地下１階のスタジオに、持ってきて欲しいんだ』

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301290fje">
「持ってくるって……何を？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//◆音声指示：小声で「下着」
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/500301300kit">
『…………』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
{	St("C",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301310fje">
「え？　何？　聞こえない！」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/500301320kit">
『だから……下着……だよ』

//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/500301330kit">
『パンツ、持ってきて欲しいんだ！』

{	St("C",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301340fje">
「パンツ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301350fje">
「なんで？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/500301360kit">
『悪いけど、急ぐんだ！
　理由は聞くな！』

//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/500301370kit">
『お願い……できるか？』


{	SetVolumeEX("@xbgm*", 1000, 0, null);
	SoundPlay("@xbgm23",0,450,true);
	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301380fje">
「もちろん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
{	St("C",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301390fje">
「わかった！　スパコン館ね！　すぐ行くから！」




{	CreateSE("SE02","seメカ_携帯_電子音01");
	MusicStart("SE02",0,700,0,1000,null,false);
//	SetVolumeEX("@xbgm20", 2000, 450, null);
}



{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301400fje">
「鈴姉！」

{	St("ML",700, @0,@0,"bu鈴_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500301410fjr">
「なに？」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301420fje">
「なんか予備の下着とかない？」

{	St("ML",700, @0,@0,"bu鈴_シリアス_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/500301430fjr">
「たしか裏に、イベント用の予備があったかも……」

{	St("C",700, @0,@0,"bu恵那_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301440fje">
「ありがと！」




</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	SetVolume("@xbgm*", 2000, 0, null);

	TextBoxDelete(150);
	DeleteAllSt(200,true);




	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);



{	ClockPass(1954);}



//◆場所：スーパーノヴァ_控え室



	OnBG(10,"bg0503100スーパーノヴァ_控え室_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]

{	St("C",700, @50,@0,"bu恵那_通常_angry");
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301450fje">
「あった！」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301460fje">
「柄は――この際、気にしない！！」







</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


//◆場所：スーパーノヴァ_正面_ガラス割れ
	OnBG(10,"bg0501200スーパーノヴァ_正面_ガラス割れ");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0345]

{	St("C",700, @-50,@0,"bu恵那_通常_shout");
Move("@StNameC/C*", 200, @50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301470fje">
「どいてどいてッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
Move("@StNameC/C*", 200, @50, @0, Dxl1, false);
	DeleteAllSt(200,true);

//◆ＳＥ：ドン！！　押しのける
	CreateSE("SE01","se戦闘_打撃音05");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
{	St("C",700, @0,@0,"buフウリ_通常_shock");
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/500301480wfu">
「きゅっ！！」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301490fje">
「待っててアッキーちゃん！　パンツ、届けるわ！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301500fje">
「私、今度は――あなたを、信じてみせる！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);



	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);
WaitKey(500);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg0101111秋葉原_裏通り_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);



//	CreateSE("SE01","seガヤ_交通少_l");
//	MusicStart("SE01",1000,700,0,1000,null,false);




//◆演出指定：場所を移動。扉を開けるところなど、ややたっぷりめに

	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/bg0101111秋葉原_裏通り_通常.jpg");
	Request("絵背景",Smoothing);
	Zoom("絵背景", 0, 2000, 2000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
{	St("C",19700, @0,@0,"fu恵那_一休_angry");
	Fade("絵背景", 0, 1000, null, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301510fje">
（でも……変ね）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301520fje">
（さっきまで側にいたのに、なんでスパコン館の地下に？）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301530fje">
（それに下着が欲しいなんて……）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301540fje">
（いったいアッキーちゃんに、何が起こったの？）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
//	FadeDelete("絵背景", 200, null, false);
//	DeleteAllSt(200,true);



	SetVolumeEX("@xbgm*", 2000, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Delete("絵背景");
	DeleteAllSt(0,true);

WaitKey(500);


//◆演出指定：移動


//◆時間：ジャンプ
{	ClockPass(1957);}


//◆場所：スパコン館_裏面
	OnBG(10,"bg1101111スパコン館_裏面_通常");
	FadeBG(0,true);
	#bg1101100スパコン館_裏面_通常 = true;


	CreateSE("SE10","seガヤ_交通少_l");
	MusicStart("SE10",2000,400,0,1000,null,true);


	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0365]
{	St("C",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301550fje">
（ここ……かな）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);



//◆ＳＥ：トントントン！

//◆ＳＥ：ドンドンドン！

	CreateSE("SE01","se動作_ノック01");
	MusicStart("SE01",0,700,0,1000,null,false);

WaitKey(1000);

	CreateSE("SE01","se動作_ノック02");
	MusicStart("SE01",0,700,0,1000,null,false);

WaitKey(2000);
	SetVolume("SE0*", 100, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301560fje">
（返事がない……？）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301570fje">
（私を呼んでおいて、出てこられないなんて――）

{	St("C",700, @0,@0,"bu恵那_一休_shy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301580fje">
（ま、まさか――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	KoreJikenStart();
	DeleteAllSt(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0375]

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301590fje">
「コレは事件！？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(1958);}


{	St("C",700, @0,@0,"bu恵那_通常_angry");
	KoreJikenEnd(false);
	FadeSt("C",200,true);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301600fje">
（緊急事態発生ね！）


//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301610fje">
（非常手段を使うしかないわ……）

{	DeleteAllSt(200,true);}
　恵那は側からコンクリートの重しを拾う。

{	St("C",700, @0,@200,"bu恵那_通常_pinch");
Move("@StNameC/C*", 200, @0, @-200, Dxl1, false);
	Shake("@StNameC/C*", 200, 30, 0, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301620fje">
「うぬぬぬぬぬ……」

{	St("C",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301630fje">
「とりゃ！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteSt("C", 200,false);
	Move("@StNameC/C*", 100, @0, @-60, DxlAuto, true);
	Move("@StNameC/C*", 200, @0, @60, DxlAuto, true);

//◆ＳＥ：がんっ！！
	CreateSE("SE01","se戦闘_金属衝突03");
	CreateSE("SE02","se戦闘_破壊03");
	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorSP("絵色白白", 2000, "#FFFFFF");
	Wait(100);
	FadeDelete("絵色白白", 500, null, true);

WaitKey(500);

	CreateSE("SE04","se動作_屋上ドア開ける");
	MusicStart("SE04",0,700,0,1000,null,false);
WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0385]
{	St("C",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301640fje">
「よし、開いた！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE*", 2000, 0, null);
	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);




{	ClockPass(1959);}

//◆演出指定：ここら辺、緊迫感のある演出で

//◆場所：スパコン館_通路
	OnBG(10,"bg1102100スパコン館_通路_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);


	CreateSE("SE01","se動作_歩く01_l");
	CreateSE("SE02","se動作_歩く01_l");
	SoundEffect("SE02","SEWERPIPE");
	MusicStart("SE01",0,700,0,800,null,true);
	MusicStart("SE02",0,700,0,800,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301650fje">
（たしか地下だったわよね？）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301660fje">
（かすかな灯り――あの部屋！？）


{	SetVolumeEX("@xbgm*", 500, 0, null);
	St("C",700, @0,@0,"bu恵那_一休_shy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301670fje">
（中から物音はしないみたいだけど――まさか！）

{	DeleteAllSt(200,true);}
　恵那は、部屋の前で大きく息を吸い込んで――


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);




//◆ＳＥ：ノック（大きめの音）
	CreateSE("SE01","se動作_ノック02");
	MusicStart("SE01",0,700,0,1000,null,false);
WaitKey(1000);
	SetVolume("SE0*", 100, 0, null);


//→扉の向こうの部屋内での音声（音声加工）//β時（千代子）
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/500301680kit">
「うひゃああッ！！」


{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/500301690fje">
「え？　アッキーちゃんッ！！？」

{	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,700,0,1000,null,false);
}
{	DeleteAllSt(200,true);}
　たまらず、部屋の中へと駆け込んだ。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	SetVolume("SE*", 1000, 0, null);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateSE("SE02","se動作_ドア開ける02");
	MusicStart("SE02",0,700,0,1000,null,false);


	OnBG(10,"bg1104100スパコン館_スタジオ_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);
	SetVolume("SE*", 1000, 0, null);

	SetVolumeEX("@xbgm*", 2000, 0, null);

	EndScene();
}
