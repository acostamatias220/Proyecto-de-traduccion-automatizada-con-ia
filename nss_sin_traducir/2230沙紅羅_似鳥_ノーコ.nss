
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2230沙紅羅_似鳥_ノーコ.nss_MAIN
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
	if($CharaName=="沙紅羅"){
		$GameName = "2233沙紅羅_似鳥_ノーコ_フウリ.nss";
	}else if($CharaName=="似鳥"){
		$GameName = "2233沙紅羅_似鳥_ノーコ_フウリ.nss";
	}else{
		$GameName = "2233沙紅羅_似鳥_ノーコ_フウリ.nss";
	}
//	$GameCircle=false;

}

scene 2230沙紅羅_似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="940">
////////////header////////////
//file name "2230沙紅羅_似鳥_ノーコ.nss"
//title "ゆめかなう"
//previous "2230カゴメ3.nss"

////////////footer////////////
//next "沙紅羅" "2233沙紅羅_似鳥_ノーコ_フウリ.nss"
//next "似鳥" "2233沙紅羅_似鳥_ノーコ_フウリ.nss"
//next "ノーコ" "2233沙紅羅_似鳥_ノーコ_フウリ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：あにのあな_屋上
	OnBG(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);

//あきゅん「演出：成功演出組み込みました」
//定義
	Kagome_AllEffect_Set(3000);
	FadeDelete("上背景", 200, Axl1, true);

{	ClockPass(2230);}

	Wait(500);

	CreateSE("SE11","se環境_風_l");
	CreateSE("SE10","se環境_風低音_l");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
　希望。

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/300400010nko">
「ぁ――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/300400020nko">
「あ……あ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	St("C",700, @60,@0,"bu似鳥_背張る_shout");

	FadeDelete("絵色100", 3000, null, false);

//動作
	Kagome_AllEffect_Start();
	Wait(3000);

//消去
	Kagome_AllEffect_Delete(3000);

	Wait(3000);

{	Move("@StNameC/C*", 200, @-60, @0, DxlAuto, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/300400030nki">
「ノーコッ！！」

{
	MusicStart("SE11",3000,1200,0,1000,null,true);
	MusicStart("SE10",3000,200,0,1000,null,true);
	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/300400040nki">
「ノーコ……ノーコ……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/300400050nki">
「聞こえるか……？　ノーコ！」

{	DeleteAllSt(200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/300400060nko">
「ぁ……あ……ん……」

{	St("C",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/300400070nki">
「オレだ！　オレ！
　見えるか！？　見えるな！！」

{	DeleteAllSt(200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/300400080nko">
「に……にとり……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	St("C",700, @0,@70,"fuノーコb_銃構え_normal");

	CreateSE("SE01","se人体_倒れる04");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("@StNameC/C*", 1000, @0, @-50, Dxl1, false);
	FadeSt("C",500,true);

	Wait(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{
	DeleteAllSt(400,true);

	St("C",700, @0,@0,"buノーコb_銃構え_normal");
	FadeSt("C",400,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/300400090nko">
「あ……あれ……？」

{	St("C",700, @0,@0,"buノーコb_通常_fear");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/300400100nko">
「なんで……どうして……？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/300400110nko">
「わたし……いきてる？」

{	St("C",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/300400120nko">
「しにたいと、おもったのに……」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400130mrp">
「アザナエルが……不発だった？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/300400140skr">
「ちげーよ」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/300400150skr">
「あの音、聞いただろ。
　ちゃんと、カゴメアソビは成功した」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_pinch");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400160mrp">
「じゃあ、願いが叶うなんて嘘だった？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/300400170skr">
「さあ、わかんねぇ。
　わかんねぇけど――」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/300400180skr">
「もしかしたら、これがあいつらの願いだったのかもな」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400190mrp">
「似鳥の心を、変えたってこと……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 3000, 0, null);

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	Wait(300);

	SoundPlay("@xbgm28",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("MR",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("MR",300,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/300400200nko">
「にとり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/300400210nko">
「しんじられなくて、ごめん」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/300400220nki">
「そういうとこもひっくるめて、全部、おまえだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("ML",700, @0,@0,"bu似鳥_背張る_happy");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/300400230nki">
「ぜんぶ、ひっくるめて、愛してやる」

{	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/300400240nki">
「だから……もう二度と、そんな自分を嫌ったりすんな」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/300400250nko">
「くらくて、ねたんでばっかりで、メンヘルで」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/300400260nko">
「ぜんぜん、ふつうじゃないけれど」

{	St("MR",700, @0,@0,"buノーコb_通常_fear");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/300400270nko">
「わたしでいいの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2231);}

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/300400280nki">
「信じられないか？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/300400290nko">
「でも、だって……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/300400300nki">
「なあ、ノーコ」

{	St("ML",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/300400310nki">
「これからオレ、何回も間違うだろうし」

{	St("ML",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/300400320nki">
「こんな性格だから凹んでばっかりで」

{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/300400330nki">
「おまえを、落胆させるかもしれないけど」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//おがみ：β要演出箇所：優先度Ａ　ここから大きいBUで演出予定

{	St("ML",700, @0,@0,"bu似鳥_背張る_smile");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/300400340nki">
「それでも、オレを好きになってくれるな？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_銃構え_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/300400350nko">
「……はい」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/300400360nki">
「その言葉、オレは信じられる」

{	St("ML",700, @0,@0,"bu似鳥_背張る_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/300400370nki">
「ノーコは、信じるか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buノーコb_通常_cry");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/300400380nko">
「……はい、しんじます」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/300400390nko">
「わたしは……」

{	St("MR",700, @0,@0,"buノーコb_通常_shy");
	St("MR",700, @0,@0,"buノーコb_通常_smile");
	FadeSt("MR",200,true);
	FadeStPro("MR", 400, 6200);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/300400400nko">
「わたしは、にとりを、あいしてる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	AgainSt("MR",700, @0,@0,"buノーコb_通常_smile");
	TextBoxDelete(150);
	Move("@StNameMR/MR*", 500, @-30, @0, Axl1, false);
	DeleteAllSt(500,true);

	CreateSE("SE01","se動作_抱く");
	CreateSE("SE02","se人体_倒れる04");
	MusicStart("SE01",0,600,0,1000,null,false);
	MusicStart("SE02",0,400,0,1000,null,false);


	Wait(1200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400410mrp">
「うん、違うわ。違う」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/300400420skr">
「違うって、なにがだよ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_pinch");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400430mrp">
「これが、アザナエルが叶えた夢？　バカ言わないでよ」

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400440mrp">
「愛を勝ち取ったのは、ノーコちゃんの意思。
　アザナエルは、別に願いを叶えてるはずよ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/300400450skr">
「そ……そうかなぁ……？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400460mrp">
「おいおい、沙紅羅ちゃん！
　あなたちゃんと、恋愛してるの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/300400470skr">
「れれれれれれ……恋愛！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400480mrp">
「恋してれば、目を閉じてても見えるのよ」

{	St("MR",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400490mrp">
「真実……ってものがネ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_shy");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/300400500skr">
「そ……そうなのか……！」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/300400510skr">
「目をつぶる――ん？　んんんん？　ん？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);
	SetVolumeEX("@xbgm*", 600, 0, null);


{	ClockPass(2232);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//◆演出指定：拡声器
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/22/300400520fjr">
『もじゃもじゃ――――――――――ッ！！』

{	St("ML",700, @0,@0,"bu沙紅羅_後ろ向き_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/300400530skr">
「え？　今の音、なに！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400540mrp">
「……鈴ちゃんの声？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/300400550skr">
「スズ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400560mrp">
「いや、第一宇宙速度のリーダーの――」

{	St("MR",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400570mrp">
「って、ボーッとしてる場合じゃない！　時間！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	SoundPlay("@xbgm16_noint",0,450,true);


//窓準備
	CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef_カット汎用01.jpg");

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1550, center, middle, "cg/bu/buミリＰb_ショータイム_happy.png");
	CreateTextureEX("絵窓/絵演立絵2", 1550, center, middle, "cg/bu/buミリＰb_ショータイム_normal.png");
	Move("絵窓/絵演立絵", 0, @100, @100, null, true);
	Move("絵窓/絵演立絵2", 0, @100, @100, null, true);

	CreateTextureEX("絵背景枠01", 12000, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 12000, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");

//動作
	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 300, @0, 80, Dxl2, false);
	Move("絵背景枠02", 300, @0, 464, Dxl2, false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, false);
	Move("絵窓/絵演立絵*", 300, @-100, @0, Dxl2, false);
	Fade("絵窓/絵演立絵", 300, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400580mrp">
『というところで、全国ゆるキャラバンはここで終了よ！』

{	Fade("絵窓/絵演立絵", 300, 0, Axl3, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400590mrp">
『みなさん、番組を見てくれてどうもありがとう！』

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400600mrp">
『ハプニングでマスコットキャラは発表できなかったけど、また後日発表させていただきます！』

{	Fade("絵窓/絵演立絵2", 300, 0, Axl3, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400610mrp">
『それじゃ、バイならー！！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 4000, 0, null);
	Move("絵背景枠01", 300, @0, 262, null, false);
	Move("絵背景枠02", 300, @0, 262, null, false);
	Zoom("絵窓", 300, 1000, 0, null, true);
	Delete("絵窓*");
	Delete("絵背景枠*");

	Wait(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("MR",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400620mrp">
「…………よし！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/300400630skr">
「お疲れさん」

{
	SoundPlay("@xbgm02",0,450,true);

	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400640mrp">
「ふぅ……これで合格点……もらえると良いんだけど。
　さすがにちょっと、無理よねぇ……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/300400650skr">
「そうか？　結構面白かった気がするけど」

{
//おがみ：β演出：携帯着信　汎用かなにか無いかな
	CreateSE("SE01","seメカ_携帯_メール着信_フウリ_l");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400660mrp">
「ほら、早速ＡＤからメール」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆ＳＥ：ぴこぴこ
	SetVolumeEX("SE01", 100, 0, null);

	CreateSE("SE01a","seメカ_携帯_電子音02");
	MusicStart("SE01a",0,700,0,1000,null,false);


	Wait(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("MR",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400670mrp">
「あーあ……やっぱり。
　苦情電話、鳴りっぱなしだってさ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/300400680skr">
「それにしては随分、やりきった顔じゃねーか」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_ショータイム_pride");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400690mrp">
「ま、やることはやったわけだしね。
　ネットの評判は悪くないみたいだし」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("MR",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400700mrp">
「また一から出直し――なんじゃないかな」

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400710mrp">
「あとは、目玉だったはずのマスコット発表ができなかったのだけが心残りかな……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/300400720skr">
「マスコット……？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400730mrp">
「うん。全国ゆるキャラバンって、元々マスコットキャラをプロデュースしていく企画でね」

{	St("MR",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400740mrp">
「最初のころは、レイジ君と二人三脚でやっててね。
　あーあ、もう少し上手くできればなあ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("MR",700, @0,@0,"buミリＰa_通常_pinch");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400750mrp">
「もしかしたら、神様からの最後のチャンス！
　って思ったんだけど」

{	St("MR",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400760mrp">
「これじゃ、あはは……
　レイジ君にも顔向けが……できないわ……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/300400770skr">
「おい、ミリＰ？
　ちょっと、元気出せよ！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/300400780skr">
「別に、何かが終わっちまったわけじゃねぇだろ？
　そりゃ、失敗はしたかもしんねーけどさ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/300400790skr">
「生きてりゃやり直しはきくんだから、な？
　落ち込んでる場合じゃねーってば」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400800mrp">
「なんか……不思議ね」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/300400810skr">
「ん？　なにが？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400820mrp">
「あなたの声を聞くと、なんだか自分が悩んでるのが、バカらしく思えてくるわ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/300400830skr">
「ん……？　誉められてるような、そうでないような」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_ショータイム_happy");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400840mrp">
「誉めてるの！
　――悪いけどアタシ、先にお暇するわね！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/300400850skr">
「ん？　なんか用事か？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400860mrp">
「さっきの鈴ちゃんの叫び声が気になってね！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400870mrp">
「今日のライブの結果で、私が彼女をプロデュースするかどうか決めなきゃなんないし」

{	St("MR",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400880mrp">
「急いで様子、見に行かないと！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/300400890skr">
「そ、そうなのか……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_ショータイム_happy");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300400900mrp">
「それじゃ、バイなら～」

{	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @300, @0, Axl2, true);
	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/300400910skr">
「おいミリＰ？
　もう少しゆっくりしていっても――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 2000, 0, null);

	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",0,1000,0,1000,null,true);


	TextBoxDelete(150);
	DeleteAllSt(200,true);

	SetVolumeEX("SE01", 3000, 0, Axl2);


//おがみ：β要演出箇所：優先度Ｂ　沙紅羅一人になったが、大きい顔の使う？
	Wait(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/300400920skr">
「……あーあ。行っちゃった」

{	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/300400930skr">
「しかしまあ、なんていうか……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/300400940skr">
「へんなやつ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);


	EndScene();
}
