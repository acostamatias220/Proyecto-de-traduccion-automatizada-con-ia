
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2345似鳥.nss_MAIN
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
	$GameName = "2350沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss";
//	$GameCircle=false;

}

scene 2345似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="700">
////////////header////////////
//file name "2345似鳥.nss"
//title "才能の在処"
//previous "2340似鳥.nss"

////////////footer////////////
//next "似鳥" "2350沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

	St("C",700, @0,@0,"fu似鳥_通常_sigh");
	FadeSt("C",0,true);

	SoundPlay("@xbgm12",0,450,true);

{	ClockPass(2345);}

//◆場所：半田明神_拝殿_布地
	OnBG(10,"bg0607300半田明神_拝殿_布地");
	FadeBG(0,true);
	CreateTextureSP("絵背景BG", 50, Center, Middle, "cg/bg/l/bg0607300半田明神_拝殿_布地_l.jpg");
	Request("絵背景BG", Smoothing);
	SetShade("絵背景BG", HEAVY);
	Zoom("絵背景BG", 0, 650, 650, null, true);

	FadeDelete("上背景", 200, null, true);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100010nki">
「そりゃ、さ」

{	St("C",700, @0,@0,"fu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100020nki">
「オレはノーコが好きだよ」

{	St("C",700, @0,@0,"fu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100030nki">
「それはホント。今も迷いない」

{	St("C",700, @0,@0,"fu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100040nki">
「でもさ、それが世の中に認められるかどうかってわかんないじゃない」

{	St("C",700, @0,@0,"fu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100050nki">
「ってか、オレ売れるもの創れる自信ないし」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"fu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100060nki">
「パンツとか見せればいいんだろ？
　ツンデレとかにすりゃいいんだろ？」

{	St("C",700, @0,@0,"fu似鳥_通常_angry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100070nki">
「でも、そこでおもねったら、死ぬ。
　オレの、一番大事なところが、死ぬ」

{	St("C",700, @0,@0,"fu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100080nki">
「っていうか、何回かやろうとして、失敗した。
　そういうのダメ。全然面白くない」

{	St("C",700, @0,@0,"fu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100090nki">
「オレに描けるのは今のノーコで、それ以外は無理」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("C",700, @0,@0,"fu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100100nki">
「受け入れられないよな。
　嫌われてもしょうがない、そんなのわかってる」

{	St("C",700, @0,@0,"fu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100110nki">
「でも……嫌われるのが耐えられないんだもんな」

{	St("C",700, @0,@0,"fu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100120nki">
「……辛い。マジで、辛い」

{	St("C",700, @0,@0,"fu似鳥_通常_smile");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100130nki">
「こんなならさ、『結局の所はシュミです』とか言いながら、部屋に籠もってオナニーしてた方が……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm12", 10000, 300, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100140nki">
「…………」

{	St("C",700, @0,@0,"fu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100150nki">
「引きこもってりゃ良かった……」

{	St("C",700, @0,@0,"fu似鳥_通常_lost");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100160nki">
「ひとりのまま……ずっと、部屋の中で……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100170nki">
「深海に積もるクジラの骨みたいに……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100180nki">
「同人誌に埋もれて……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100190nki">
「死んでいきたい……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100200nki">
「死ねば良かった……」

{	St("C",700, @0,@0,"fu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100210nki">
「死ねば……よかったけど……」

{	St("C",700, @0,@0,"fu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100220nki">
「死ねなかったんだよな」

{	St("C",700, @0,@0,"fu似鳥_通常_smile");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100230nki">
「死にたく、なかったんだよな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2346);}


	SetVolumeEX("@xbgm12", 10000, 200, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("C",700, @0,@0,"fu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100240nki">
「無理矢理、外に引っ張り出されて」

{	St("C",700, @0,@0,"fu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100250nki">
「命懸けのギャンブルをさせられたり」

{	St("C",700, @0,@0,"fu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100260nki">
「人前で突然キャラデザをやれって言われたり」

{	St("C",700, @0,@0,"fu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100270nki">
「挙げ句の果てに、現実化したノーコに追いかけられて」

{	St("C",700, @0,@0,"fu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100280nki">
「死にかけて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("C",700, @0,@0,"fu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100290nki">
「死にかけたのに……」

{	St("C",700, @0,@0,"fu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100300nki">
「まだ……」

{	St("C",700, @0,@0,"fu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100310nki">
「まだ、前に進もうとしてる……？」

{	St("C",700, @0,@0,"fu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100320nki">
「ったく、なんなんだよ」

{	St("C",700, @0,@0,"fu似鳥_通常_shout");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100330nki">
「なんでノーコが、現実の存在に――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 400, 0, null);


	TextBoxDelete(150);
	DeleteAllSt(200,true);

	Wait(200);

	CreateTextureEX("絵背景100ｂ", 200, Center, Middle, "cg/bg/bg0303100あにのあな_屋上_通常.jpg");
	SetShade("絵背景100ｂ", HEAVY);
	Zoom("絵背景100ｂ", 0, 1500, 1500, null, true);

	CreateSE("SE01","se擬音_フラッシュバック");
	MusicStart("SE01",0,1500,0,1000,null,false);


	CreateColorEXadd("絵色100", 20000, "WHITE");
	Fade("絵色100", 100, 1000, null, true);

	ClockDelete(0,true);
	ClockTime(2346);

	CreateTextureSP("絵背景100", 200, Center, Middle, "cg/img/imgノーコントロール11.jpg");
	Request("絵背景100", Smoothing);
	Zoom("絵背景100", 0, 1300, 1300, null, true);

	Zoom("絵背景100", 800, 1000, 1000, null, false);
	Fade("絵色100", 100, 100, null, true);
	Wait(400);

	Fade("絵色100", 100, 1000, null, true);
	CreateTextureSP("絵背景100", 200, -400, -220, "cg/ev/ev2230カゴメアソビ3.jpg");
	Move("絵背景100", 800, @0, -130, null, false);
	Fade("絵色100", 100, 100, null, true);
	Wait(400);

	Fade("絵色100", 100, 1000, null, true);
	Delete("絵背景100");
	Fade("絵背景100ｂ", 0, 1000, null, true);
	CreateTextureSP("絵背景200", 200, Center, Middle, "cg/fu/fuノーコb_幽霊_smile.png");
	Move("絵背景200", 0, -200, -350, null, true);

	Move("絵背景200", 1800, -200, -280, null, false);
	Move("絵背景100ｂ", 1800, @0, @40, null, false);
	Fade("絵色100", 200, 100, null, true);
	Wait(1000);

	Fade("絵色100", 500, 1000, null, true);
	Delete("絵背景100ｂ");
	Delete("絵背景200");

{	ClockPass(2346);}

	Wait(300);
	Fade("絵色100", 1000, 0, null, true);

	Wait(700);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100340nki">
「…………ああ」

{	St("C",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100350nki">
「そっか」

{	St("C",700, @0,@0,"bu似鳥_通常_happy");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100360nki">
「知られたかったんだ」

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100370nki">
「もう、独りは嫌だったんだ」

{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100380nki">
「今日の出来事は、そういう話で――」

{	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100390nki">
「だから、ノーコは現実化して、友達が出来て」

{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100400nki">
「だからオレは、今オレは逃げないで、ここにこうしているんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SoundPlay("@xbgm30",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100410nki">
「反撃開始――そう、沙紅羅も言ってたじゃないか」

{	St("C",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100420nki">
「あー、酷い筋書きだ」

{	St("C",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100430nki">
「こんなに酷く参ってて、精神的にギリギリまで追い詰められて、もう時間もないってのに――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);
	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("C",700, @0,@100,"fu似鳥_背張る_normal");
	Move("@StNameC/C*", 300, @0, @-100, Dxl2, false);
	FadeSt("C",300,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100440nki">
「ひとりでウダウダ悩んで、でも考え方を変えただけで、サクッと立ち直っちゃうとか」

{	St("C",700, @0,@0,"fu似鳥_背張る_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100450nki">
「ありえねー。シナリオとしちゃ不合格」

{	St("C",700, @0,@0,"fu似鳥_背張る_happy");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100460nki">
「ってか、モノローグで立ち直れんなら最初っから立ち直れって話」

{	St("C",700, @0,@0,"fu似鳥_背張る_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100470nki">
「でも――たぶん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2347);}

	TextBoxDelete(150);
	Move("@StNameC/C*", 200, @0, @100, Axl1, false);
	DeleteAllSt(200,true);

//◆ＥＶ："ev/ev2330似鳥お絵かきタイム.txt"

	CreateColorEX("絵色100", 1500, "BLACK");
	CreateColorEX("絵色白", 2500, "WHITE");
	Fade("絵色100", 500, 1000, null, true);

	CreateTextureEX("絵背景", 100, -1000, -10, "cg/ev/l/ev2330似鳥お絵かきタイム_l.jpg");
	Move("絵背景", 0, -710, -112, null, true);
	Request("絵背景", Smoothing);
	SetBlur("絵背景", true, 2, 500, 100, false);
	CreateTextureEX("絵背景200", 100, Center, Middle, "cg/ev/ev2330似鳥お絵かきタイム.jpg");
	Zoom("絵背景200", 0, 2000, 2000, null, true);
	SetBlur("絵背景200", true, 2, 500, 50, false);

	CreateTextureEX("絵背景筆01", 3000, Center, Middle, "cg/ef/ef筆字04.png");
	Zoom("絵背景筆01", 0, 800, 800, null, true);
	SetBlur("絵背景筆01", true, 2, 500, 100, false);
	CreateTextureEX("絵背景筆02", 3000, Center, Middle, "cg/ef/ef筆字03.png");
	Zoom("絵背景筆02", 0, 800, 800, null, true);
	SetBlur("絵背景筆02", true, 2, 500, 100, false);
	CreateTextureEX("絵背景筆03", 3000, Center, Middle, "cg/ef/ef筆字02.png");
	Zoom("絵背景筆03", 0, 800, 800, null, true);
	SetBlur("絵背景筆03", true, 2, 500, 100, false);

//	CreateTextureEX("絵背景筆しぶき01", 3000, Center, Middle, "cg/ef/ef筆雫02.png");
//	CreateTextureEX("絵背景筆しぶき02", 3000, Center, Middle, "cg/ef/ef筆雫03.png");


	Fade("絵背景", 0, 1000, null, true);

	MoveFTP3("@絵背景", 2000, 12, 3);



	Wait(500);

	CreateSE("SE01","se環境_水に落ちる");
	CreateSE("SE02","se戦闘_ペイント弾直撃");
	CreateSE("SE11","se動作_毛筆書き");
	MusicStart("SE01",0,500,0,4000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE11",0,700,0,1000,null,false);

	EffectZoom(10000, 2000, 400, "cg/ef/ef筆雫01.png", false);

	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);


	Move("絵背景筆01", 1100, @100, @100, Dxl2, false);
	Zoom("絵背景筆01", 500, 1000, 1000, Dxl1, false);

	Fade("絵背景筆01", 0, 1000, null, true);
	DrawTransition("絵背景筆01", 80, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", true);

	Fade("絵背景筆01", 1000, 0, null, false);
	Wait(200);
	Fade("絵色白", 500, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100480nki">
「そうするしかないんだよな」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100490nki">
「みんなで頑張るとか、みんなのおかげでとか言うけど」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100500nki">
「こういう仕事は、やっぱり個人戦で」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100510nki">
「ギリギリのところで、自分と戦わなきゃいけなくて」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100520nki">
「オレはオレとしか戦えなくて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se環境_水に落ちる");
	MusicStart("SE01",0,700,0,3000,null,false);


	EffectZoom(10000, 2000, 400, "cg/ef/ef筆雫02.png", false);

	SetBlur("絵背景筆01", false, 2, 500, 100, false);
	Fade("絵色白", 0, 1000, null, true);
	Move("絵背景", 0, -512, -288, null, true);
	Fade("絵色100", 0, 0, null, true);
	Rotate("絵背景筆01", 0, @0, @180, @0, null,true);
	Zoom("絵背景筆01", 0, 800, 800, null, true);
	SetBlur("絵背景筆01", true, 2, 500, 100, false);


	Move("絵背景筆01", 1100, @-200, @100, Dxl2, false);
	Zoom("絵背景筆01", 500, 1000, 1000, Dxl1, false);

	Fade("絵背景筆01", 0, 1000, null, true);
	DrawTransition("絵背景筆01", 80, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", true);

	Fade("絵背景筆01", 1000, 0, null, false);
	Wait(200);
	Fade("絵色白", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100530nki">
「オレはオレにしか救えなくて」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100540nki">
「だから、何にも解決してねぇけど」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100550nki">
「っていうか未来永劫、何かが解決するとか思えねーけど」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100560nki">
「１００人に笑われたって、１０００人に指さされたって、１万人にけなされたって、いい！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100570nki">
「良くないけど、嫌だけど、しょうがない！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se環境_水に落ちる");
	CreateSE("SE02","se戦闘_ペイント弾直撃");
	CreateSE("SE11","se動作_毛筆書き");
	MusicStart("SE01",0,500,0,4000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE11",0,700,0,1000,null,false);

	EffectZoom(10000, 2000, 400, "cg/ef/ef筆雫03.png", false);
	Fade("絵色白", 0, 1000, null, true);
	Move("絵背景", 0, -15, -500, null, true);
	Fade("絵色100", 0, 0, null, true);


	Move("絵背景筆03", 1100, @100, @0, Dxl2, false);
	Zoom("絵背景筆03", 500, 900, 900, Dxl1, false);

	Fade("絵背景筆03", 0, 1000, null, true);
	DrawTransition("絵背景筆03", 80, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", true);

	Fade("絵背景筆03", 1000, 0, null, false);
	Wait(200);
	Fade("絵色白", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100580nki">
「何回も何回も傷つくだろうし！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100590nki">
「何度も何度も、死にたくなるけど！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100600nki">
「描きたいから！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100610nki">
「描き続けなきゃ、やっぱり、オレは死ぬから！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100620nki">
「だから！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se環境_水に落ちる");
	CreateSE("SE02","se戦闘_ペイント弾直撃");
	CreateSE("SE11","se動作_毛筆書き");
	MusicStart("SE01",0,500,0,4000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE11",0,700,0,1000,null,false);

	EffectZoom(10000, 2000, 400, "cg/ef/ef筆雫04.png", false);

	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);
	Move("絵背景", 0, -720, -130, null, true);


	Move("絵背景筆02", 1100, @-100, @-50, Dxl2, false);
	Zoom("絵背景筆02", 500, 1000, 1000, Dxl1, false);

	Fade("絵背景筆02", 0, 1000, null, true);
	DrawTransition("絵背景筆02", 80, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", true);

	Fade("絵背景筆02", 1000, 0, null, false);
	Wait(200);
	Fade("絵色白", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100630nki">
「描いて！　描いて！　描いて！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100640nki">
「ありったけを、ぶちまけてやる！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100650nki">
「んで、そのありったけが――」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100660nki">
「きっと、誰かに届くから」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100670nki">
「誰かに届けば！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	SetBlur("絵背景筆01", false, 2, 500, 100, false);
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);
	Rotate("絵背景筆01", 0, @0, @180, @0, null,true);
	Zoom("絵背景筆01", 0, 800, 800, null, true);
	SetBlur("絵背景筆01", true, 2, 500, 100, false);

	CreateSE("SE01","se環境_水に落ちる");
	CreateSE("SE02","se戦闘_ペイント弾直撃");
	CreateSE("SE11","se動作_毛筆書き");
	MusicStart("SE01",0,500,0,4000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE11",0,700,0,1000,null,false);

	EffectZoom(10000, 2000, 400, "cg/ef/ef筆雫06.png", false);

	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);

	Move("絵背景筆01", 1100, @100, @100, Dxl2, false);
	Zoom("絵背景筆01", 500, 1000, 1000, Dxl1, false);

	SetBlur("絵背景", false, 2, 500, 100, false);
	Zoom("絵背景", 100, 1200, 1200, Dxl1, true);
	SetBlur("絵背景", true, 2, 500, 100, false);

	Fade("絵背景筆01", 0, 1000, null, true);
	DrawTransition("絵背景筆01", 80, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", true);

	Fade("絵背景筆01", 1000, 0, null, false);
	Wait(200);
	Fade("絵色白", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100680nki">
「オレは！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100690nki">
「それで！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/450100700nki">
「満足なんだよ――――ッッ！！！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01x","se環境_水に落ちる");
	CreateSE("SE02x","se戦闘_ペイント弾直撃");
	CreateSE("SE01a","se環境_水に落ちる");
	CreateSE("SE02a","se戦闘_ペイント弾直撃");
	CreateSE("SE01b","se環境_水に落ちる");
	CreateSE("SE02b","se戦闘_ペイント弾直撃");
	CreateSE("SE01c","se環境_水に落ちる");
	CreateSE("SE02c","se戦闘_ペイント弾直撃");
	CreateTextureEX("絵背景筆雫01", 5100, Center, Middle, "cg/ef/ef筆字03.png");
	CreateTextureEX("絵背景筆雫02", 5100, Center, Middle, "cg/ef/ef筆字02.png");
	Rotate("絵背景筆雫02", 0, @0, @180, @0, null,true);
	CreateTextureEX("絵背景筆雫03", 5100, Center, Middle, "cg/ef/ef筆字04.png");

	SetVolumeEX("@xbgm*", 10000, 0, null);


	CreateSE("SE01","se環境_水に落ちる");
	MusicStart("SE01",0,700,0,3000,null,false);


	EffectZoom(10000, 2000, 400, "cg/ef/ef筆雫02.png", false);

	SetBlur("絵背景筆01", false, 2, 500, 100, false);
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);
	Rotate("絵背景筆01", 0, @0, @180, @0, null,true);
	Zoom("絵背景筆01", 0, 800, 800, null, true);
	SetBlur("絵背景筆01", true, 2, 500, 100, false);


	Move("絵背景筆01", 1100, @-200, @100, Dxl2, false);
	Zoom("絵背景筆01", 500, 1000, 1000, Dxl1, false);

	Fade("絵背景筆01", 0, 1000, null, true);
	DrawTransition("絵背景筆01", 80, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", true);

	Fade("絵背景筆01", 1000, 0, null, false);
	Wait(200);
	Fade("絵色白", 500, 0, null, true);




	SetBlur("絵背景筆03", false, 2, 500, 100, false);
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);
	Rotate("絵背景筆03", 0, @0, @180, @0, null,true);
	Zoom("絵背景筆03", 0, 800, 800, null, true);
	SetBlur("絵背景筆03", true, 2, 500, 100, false);

	CreateSE("SE01","se環境_水に落ちる");
	CreateSE("SE02","se戦闘_ペイント弾直撃");
	CreateSE("SE11","se動作_毛筆書き");
	MusicStart("SE01",0,500,0,4000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE11",0,700,0,1000,null,false);

	EffectZoom(10000, 2000, 400, "cg/ef/ef筆雫03.png", false);
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);


	Move("絵背景筆03", 1100, @100, @0, Dxl2, false);
	Zoom("絵背景筆03", 500, 900, 900, Dxl1, false);

	Fade("絵背景筆03", 0, 1000, null, true);
	DrawTransition("絵背景筆03", 80, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", true);

	Fade("絵背景筆03", 1000, 0, null, false);
	Wait(200);
	Fade("絵色白", 500, 0, null, true);



	SetBlur("絵背景筆02", false, 2, 500, 100, false);
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);
	Rotate("絵背景筆02", 0, @0, @180, @0, null,true);
	Zoom("絵背景筆02", 0, 800, 800, null, true);
	Move("絵背景筆02", 0, @100, @0, null, true);
	SetBlur("絵背景筆02", true, 2, 500, 100, false);


	CreateSE("SE01","se環境_水に落ちる");
	CreateSE("SE02","se戦闘_ペイント弾直撃");
	CreateSE("SE11","se動作_毛筆書き");
	MusicStart("SE01",0,500,0,4000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE11",0,700,0,1000,null,false);

	EffectZoom(10000, 2000, 400, "cg/ef/ef筆雫04.png", false);

	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);


	Move("絵背景筆02", 1100, @-100, @-50, Dxl2, false);
	Zoom("絵背景筆02", 500, 1000, 1000, Dxl1, false);

	Fade("絵背景筆02", 0, 1000, null, true);
	DrawTransition("絵背景筆02", 80, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", true);

	Fade("絵背景筆02", 1000, 0, null, false);
	Wait(100);
	Fade("絵色白", 400, 0, null, true);




	SetBlur("絵背景筆01", false, 2, 500, 100, false);
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);
	Rotate("絵背景筆01", 0, @0, @180, @0, null,true);
	Zoom("絵背景筆01", 0, 800, 800, null, true);
	SetBlur("絵背景筆01", true, 2, 500, 100, false);

	CreateSE("SE01","se環境_水に落ちる");
	CreateSE("SE02","se戦闘_ペイント弾直撃");
	CreateSE("SE11","se動作_毛筆書き");
	MusicStart("SE01",0,500,0,4000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE11",0,700,0,1000,null,false);

	EffectZoom(10000, 2000, 400, "cg/ef/ef筆雫06.png", false);

	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);


	Move("絵背景筆01", 1100, @100, @100, Dxl2, false);
	Zoom("絵背景筆01", 500, 1000, 1000, Dxl1, false);

	Fade("絵背景筆01", 0, 1000, null, true);
	DrawTransition("絵背景筆01", 80, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", true);

	Fade("絵背景筆01", 1000, 0, null, false);
	Wait(100);
	Fade("絵色白", 400, 0, null, true);





	SetBlur("絵背景筆03", false, 2, 500, 100, false);
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);
	Rotate("絵背景筆03", 0, @0, @180, @0, null,true);
	Zoom("絵背景筆03", 0, 800, 800, null, true);
	Move("絵背景筆03", 0, @-200, @0, null, true);
	SetBlur("絵背景筆03", true, 2, 500, 100, false);

	CreateSE("SE01","se環境_水に落ちる");
	CreateSE("SE02","se戦闘_ペイント弾直撃");
	CreateSE("SE11","se動作_毛筆書き");
	MusicStart("SE01",0,500,0,4000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE11",0,700,0,1000,null,false);

	EffectZoom(10000, 2000, 400, "cg/ef/ef筆雫03.png", false);
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);


	Move("絵背景筆03", 1100, @100, @0, Dxl2, false);
	Zoom("絵背景筆03", 500, 900, 900, Dxl1, false);

	Fade("絵背景筆03", 0, 1000, null, true);
	DrawTransition("絵背景筆03", 80, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", true);

	Fade("絵背景筆03", 1000, 0, null, false);
	Wait(100);
	Fade("絵色白", 300, 0, null, true);





/*
	CreateSE("SE01d","se環境_水に落ちる");
	CreateSE("SE02d","se戦闘_ペイント弾直撃");
*/

/*
	CreateTextureEX("絵背景筆雫04", 5100, Center, Middle, "cg/ef/ef筆字03.png");
	CreateTextureEX("絵背景筆雫05", 5100, Center, Middle, "cg/ef/ef筆雫06.png");
*/
	Zoom("絵背景筆雫*", 0, 900, 900, null, false);


	Zoom("絵背景200", 200, 3000, 3000, Axl1, false);
	Wait(200);
	Fade("絵色白", 0, 1000, null, true);

	Zoom("絵背景筆雫01", 200, 1300, 1300, Dxl1, false);
	MusicStart("SE01x",0,700,0,2500,null,false);
	MusicStart("SE02x",0,1200,0,800,null,false);
	Fade("絵背景筆雫01", 0, 1000, null, true);
	Wait(200);

	Zoom("絵背景筆雫02", 200, 1300, 1300, Dxl1, false);
	MusicStart("SE01a",0,700,0,4500,null,false);
	MusicStart("SE02a",0,1200,0,1200,null,false);
	Fade("絵背景筆雫02", 0, 1000, null, true);
	Wait(200);

	Zoom("絵背景筆雫03", 200, 1300, 1300, Dxl1, false);
	MusicStart("SE01b",0,700,0,3500,null,false);
	MusicStart("SE02b",0,1200,0,1300,null,false);
	Fade("絵背景筆雫02", 0, 0, null, true);
	Fade("絵背景筆雫03", 0, 1000, null, true);
	Wait(200);

/*
	MusicStart("SE01c",0,700,0,4500,null,false);
	MusicStart("SE02c",0,1200,0,1000,null,false);
	Fade("絵背景筆雫03", 0, 0, null, true);
	Fade("絵背景筆雫04", 0, 1000, null, true);
	Wait(100);

	MusicStart("SE01d",0,700,0,2500,null,false);
	MusicStart("SE02d",0,1200,0,800,null,false);
	Fade("絵背景筆雫04", 0, 0, null, true);
	Fade("絵背景筆雫05", 0, 1000, null, true);
	Wait(100);
*/
	MusicStart("SE01c",0,700,0,4500,null,false);
	MusicStart("SE02c",0,1200,0,1000,null,false);

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 300, Axl1, "cg/data/zzex_circle_01_00_0.png", true);

	SetVolumeEX("@xbgm*", 2000, 0, null);
	SetVolumeEX("SE*", 2000, 0, Axl2);

	Wait(2500);

	Delete("絵*");
	OnBG(10,"bg0601211半田明神_男坂_雪");
	FadeBG(0,true);

//	FadeDelete("黒幕１", 1000, null, true);
//	Wait(300);

	EndScene();
}
