
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2100似鳥.nss_MAIN
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
	$GameName = "2110似鳥.nss";
//	$GameCircle=false;

}

scene 2100似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="840">
////////////header////////////
//file name "2100似鳥.nss"
//title "プロフェッショナル"
//previous "2050沙紅羅_似鳥_フウリ.nss"

////////////footer////////////
//next "似鳥" "2110似鳥.nss"

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：ＵＰ＋_屋外セット_炎上
	OnBG(10,"bg1203100ＵＰ＋_セット裏_通常");
	FadeBG(0,true);

	SetVolumeEX("@xbgm*", 1000, 0, null);

	CreateSE("SE10","seガヤ_歓声_l");
	MusicStart("SE10",1000,700,0,1000,null,true);

	if($PreGameName=="2050沙紅羅_似鳥_フウリ.nss"){
	FadeDelete("上背景", 1000, null, true);
	}else{
	FadeDelete("上背景", 0, null, true);
	}

{	ClockPass(2100);}

	Wait(500);

	SetVolumeEX("SE10", 3000, 200, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("ML",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400010mrp">
「……ステージは、無事に進行してるみたいね」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/000400020nki">
「そうだな」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400030mrp">
「その犬、知り合い？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/000400040nki">
「まさか」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/000400050mzh">
「この助平犬め！　えい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_打撃音01");

	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buユージローa_通常_ero");

	MusicStart("SE01",0,700,0,1500,null,false);
	Shake("@StNameC/C*", 400, 25, 0, 0, 0, 1000, null, false);
	Move("@StNameC/C*", 400, @0, @50, Dxl1, false);
	FadeSt("C",200,true);

	Wait(100);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/21/000400060ujr">
「ぬふぅん……」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/000400070mzh">
「な……鳴き声もきもちわるい……」

{	DeleteAllSt(200,true);
	St("C",700, @0,@20,"buユージローa_通常_hard");
	Move("@StNameC/C*", 400, @0, @-20, Dxl1, false);
	Shake("@StNameC/C*", 400, 5, 0, 0, 0, 1000, null, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/21/000400080ujr">
「わう！　わうわうわう！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/000400090nki">
「あー、うんわかったわかった。
　ブルマーな。ほら」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2101);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/000400100nki">
「こうやって、首輪の所に――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@5,"buユージローa_通常_normal");
	FadeF2("@StNameC/C*", 400, 500, 500, 0, 0, Dxl1, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/21/000400110ujr">
「くぅーん」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/000400120mzh">
「な！？　ブルマーが消えた！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/000400130nki">
「いや、ただくくりつけてるだけだ。
　体毛に隠れて、見えなくなってるだけ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/000400140nki">
「それにしてもまあ、よくこんなに上手く収納できるな」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400150mrp">
「ま、その犬は良いとして」

{	St("ML",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400160mrp">
「さっきはごめんなさい。
　番組中で、ちょっと周りが見えなくなってて」

{	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400170mrp">
「急に話を振った、アタシが悪かったわ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2102);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/000400180nki">
「……ったく、ホントだよ。
　もうああいうの、勘弁してくれよな」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400190mrp">
「こっちも好きでやってるわけじゃないんだけど……
　わかったわ」

{	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400200mrp">
「今度から、あなたの創作風景はテレビに出さない」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/000400210nki">
「……絶対だぞ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400220mrp">
「約束するわ。
　その代わり、時間までにソトカンダーを仕上げて頂戴」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/000400230nki">
「……はぁ。どうだかねぇ」

{	St("MR",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/000400240nki">
「大体さ、オレただでさえモチベーション落ちてるわけ」

{	St("MR",700, @0,@0,"bu似鳥_通常_angry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/000400250nki">
「デザインしたソトカンダー、壊れちゃったとか。
　そんなんで次のデザインさせられる方の身にも――」

{	DeleteAllSt(200,false);
	SetVolumeEX("SE*", 5000, 0, null);
	St("ML",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400260mrp">
「あのロボット手抜きでしょ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/000400270nki">
「な……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2103);}


	SoundPlay("@xbgm12",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400280mrp">
「出来合いのものをちょちょっと小細工して再提出。
　町内会の素人だからって、手抜き仕事したのよね」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/000400290nki">
「おまえの勝手な想像だろ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400300mrp">
「一目でわかるわよ。番組出演拒否してたのも、自分で自分の創ったものの価値がわかってたからでしょ？」

{	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400310mrp">
「それとも、自分で創った物の価値も判断できない？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/000400320nki">
「…………」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400330mrp">
「アタシは目にハイライトを入れるか入れないかで、５００枚も売り上げが違うような、そんな世界に住んでるのよ」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400340mrp">
「素人の三流仕事くらい、匂いでかぎ分けられるわ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2105);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("ML",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400350mrp">
「あなたは最初から時間が足りないって言い訳して、自分で勝手に諦めちゃって、適当なデザインを渡した」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/000400360nki">
「あんな時間で、まともなの創れるわけねーだろ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400370mrp">
「そうやって逃げ出すから、アンタは素人なのよ」

{	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400380mrp">
「時間がなくて思い通りのものが創れなくとも、それはあなたがおなかを痛めて産んだ子供でしょ？」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400390mrp">
「そりゃ、みんなできることならいいものが創りたいわ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("ML",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400400mrp">
「たっぷりの時間とお金をかけて、一つの後悔もない、最高の作品が創りたい、そう思ってるわ」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400410mrp">
「でもね、そんなの現実に可能だと思う？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/000400420nki">
「だからって、妥協すんのか？
　世の中にまた、くだらないものを氾濫させんのか？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400430mrp">
「素人が、常に最高のものを見分けられると思う？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2105);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/000400440nki">
「え？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400450mrp">
「見せかけだけでも仕方ないわ。
　そこを突き詰めて見せなさい」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/000400460nki">
「でも……それじゃ納得できない」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400470mrp">
「納得するのはあなたじゃない。
　テレビの前の視聴者よ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("ML",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400480mrp">
「自尊心なんて、腹の足しにもならないわ」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400490mrp">
「できる限りの時間で、できる限りの仕事をやる。
　それがあなたの役目。それがプロフェッショナルよ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/000400500nki">
「…………」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400510mrp">
「嫌だ嫌だって駄々こねてても、仕事は来ない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2106);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("ML",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400520mrp">
「やりたいことがあるなら、まずはその環境をつくるだけの実績を生み出さなきゃ」

{	St("ML",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400530mrp">
「もしもその先に、本当に創りたい物があるなら――
　あなたはそれができるはずよ」

//◆音声指示：スピーカー越し
{	SetVolumeEX("@xbgm*", 2000, 0, null);
	DeleteAllSt(200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/000400540adi">
『ミリＰさ～ん！』

{	St("ML",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400550mrp">
「――間が持たなかったみたいね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/000400560nki">
「でも、オレはまだ――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400570mrp">
「大丈夫。
　約束したとおり、あなたにカメラは振らないわ」

{	St("ML",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400580mrp">
「デザインの続き、頑張りなさい」

{	DeleteAllSt(200,true);}
//◆音声指示：スピーカー越し
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/000400590adi">
『ミリＰさん、聞こえますか～？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	CreateTextureEX("絵背景テレビ", 100, Center, Middle, "cg/bg/l/bg1203100ＵＰ＋_セット裏_通常_l.jpg");
	Request("絵背景テレビ", Smoothing);
	Zoom("絵背景テレビ", 0, 800, 800, null, true);
	Move("絵背景テレビ", 0, @-300, @0, null, true);


//◆音声指示：すぐに変わり身で
//◆音声指示：スピーカー越し
	SoundPlay("@xbgm16_noint",0,450,true);

	Move("絵背景テレビ", 500, @100, @0, Dxl1, false);
	Fade("絵背景テレビ", 500, 1000, null, true);

	St("C",700, @50,@50,"buミリＰb_ショータイム_happy");
	Request("@StNameC/C*", Smoothing);
	Zoom("@StNameC/C*", 0, 1200, 1200, null, true);
	Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400600mrp">
『はぁあーい』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2107);}

	St("C",700, @50,@0,"buミリＰb_通常_happy");
	Request("@StNameC/C*", Smoothing);
	Zoom("@StNameC/C*", 0, 1200, 1200, null, true);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150a]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400610mrp">
『こちら控え室！
　今、似鳥君が一生懸命デザインをしてるところよーん』

//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400620mrp">
『それじゃ早速、似鳥君にお話を――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("L",700, @-300,@0,"bu似鳥_眼鏡上げ_mad");
	Request("@StNameL/L*", Smoothing);
	Zoom("@StNameL/L*", 0, 1200, 1200, null, true);
	FadeSt("L",200,false);
	Move("@StNameL/L*", 500, @200, @0, AxlDxl, false);
	Move("@StNameC/C*", 500, @200, @0, AxlDxl, false);
	Move("絵背景テレビ", 500, @100, @0, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//◆音声指示：スピーカー越し
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/000400630nki">
『ふんぐ！　んぐ……んぐぐぐぐぐ……』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//おがみ：ライターチェック、整合性のため
/*
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400640mrp">
『聞けそうにもないわねぇ』

<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400650mrp">
『さっきの没で闘争本能に火がついたのかしら？
　集中して、アタシの声も聞こえないみたいね……』

*/


	St("C",700, @250,@0,"buミリＰb_通常_sad");
	Request("@StNameC/C*", Smoothing);
	Zoom("@StNameC/C*", 0, 1200, 1200, null, true);
	Move("@StNameL/L*", 500, @-200, @0, AxlDxl, false);
	Move("@StNameC/C*", 500, @-200, @0, AxlDxl, false);
	Move("絵背景テレビ", 500, @-100, @0, AxlDxl, 300);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160a]
//おがみ：ライターチェック「2100沙紅羅_フウリ」よりボイスを転用
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000300500mrp">
『さっきの没で闘争本能に火がついたのかしら？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",700, @50,@0,"buミリＰb_通常_hard");
	Request("@StNameC/C*", Smoothing);
	Zoom("@StNameC/C*", 0, 1200, 1200, null, true);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160b]
//おがみ：ライターチェック「2100沙紅羅_フウリ」よりボイスを転用
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000300510mrp">
『集中して、アタシの声も聞こえないみたいね』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	Move("@StNameC/C*", 200, @0, @100, Axl2, false);
	FadeDelete("絵背景テレビ", 200, null, false);
	DeleteAllSt(200,true);

	Wait(200);

//◆音声指示：スピーカー越し
	St("C",700, @0,@50,"buミリＰb_通常_happy");
	Move("@StNameC/C*", 200, @0, @-50, Dxl2, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160c]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400660mrp">
『それじゃあ、応援の方にお話を聞いてみましょう！』

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/000400670mzh">
「え？　わ、わらわか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("MR",700, @0,@0,"buミリＰb_ショータイム_normal");
	FadeSt("MR",200,true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400680mrp">
『はい、お嬢ちゃん、お名前は？』

//◆音声指示：スピーカー越し
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/000400690mzh">
『わらわの名前はミヅハじゃ！　神様じゃ！』

//◆音声指示：スピーカー越し
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰb_通常_normal");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400700mrp">
『はいはい、ミヅハちゃんね？
　今日はお兄ちゃんの応援に来たの？』

//◆音声指示：スピーカー越し
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/000400710mzh">
『こやつは兄ではない！
　わらわの恩人の、とても大切な人じゃ』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2108);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//◆音声指示：スピーカー越し
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/000400720mzh">
『その恩人は訳あって似鳥と離れてしまったが、今でも似鳥を強く想っておる』

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰb_通常_hard");
	FadeSt("MR",200,true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400730mrp">
『そうなんだ……
　よくわからないけど、そんな悲劇的な背景が……』

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("ML",200,true);}
//◆音声指示：スピーカー越し
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/000400740mzh">
『恩人の恩人は恩人じゃ！
　だからわらわも、似鳥を応援する！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰb_通常_smile");
	FadeSt("MR",200,true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400750mrp">
『なるほど！
　それじゃ、元気いっぱい応援して頂戴――』

{	DeleteAllSt(200,true);
	St("C",700, @0,@50,"buユージローa_通常_normal");
	Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/21/000400760ujr">
「わうわう！！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_ダウナー_cry");
	Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/000400770mzh">
「ぎゃあ！　犬が蘇った！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buユージローa_通常_ero");
	Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/21/000400780ujr">
「わうーん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	DeleteAllSt(200,false);
	St("ML",700, @-50,@0,"buミヅハ_ダウナー_cry");
	Shake("@StNameML/ML*", 300, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/000400790mzh">
「ぎゃああああああ！　はなちてええええええ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2109);}

	St("C",700, @50,@0,"buミリＰb_ショータイム_normal");



//◆演出指定：ミヅハたちを隠すように
//◆音声指示：スピーカー越し
	Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	DeleteSt("ML", 200,true);
	Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0201]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400800mrp">
『はいはーい！
　それじゃ一端ステージの方に……ん？』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_通常_normal");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400810mrp">
『あら？　いなくなっちゃった？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",700, @0,@0,"buミリＰb_通常_sad");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400820mrp">
『しょうがないわねー……』

{	St("C",700, @0,@0,"buミリＰb_ショータイム_happy");
	FadeSt("C",200,true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400830mrp">
『それじゃ、アタシが再び全国ゆるキャラバン大食い選手権、リポートを再開しちゃうわよ～ん！』

//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000400840mrp">
『レッツゴー！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 3000, 0, null);

	TextBoxDelete(150);

	Move("@StNameC/C*", 200, @-100, @0, Axl1, false);
	DeleteAllSt(200,true);



	EndScene();
}
