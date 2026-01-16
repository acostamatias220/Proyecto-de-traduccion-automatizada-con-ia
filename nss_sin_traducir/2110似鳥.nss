
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2110似鳥.nss_MAIN
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
	$GameName = "2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nss";
//	$GameCircle=false;

}

scene 2110似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="630">
////////////header////////////
//file name "2110似鳥.nss"
//title "アマチュア"
//previous "2100似鳥.nss"

////////////footer////////////
//next "似鳥" "2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：ＵＰ＋_屋外セット_炎上
	OnBG(10,"bg1203100ＵＰ＋_セット裏_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 500, null,true);

	CreateSE("SE10","seガヤ_歓声_l");
	MusicStart("SE10",3000,200,0,1000,null,true);


	Wait(1000);

{	ClockPass(2110);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300010nki">
「ふぅ、コレで一息、か……」

{	DeleteAllSt(200,false);
	St("ML",700, @100,@0,"buユージローa_通常_ero");
	Move("@StNameML/ML*", 200, @-100, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/21/100300020ujr">
「ハッハッハッハッ！」

{	DeleteAllSt(200,false);
	St("L",700, @100,@0,"buミヅハ_通常_angry");
	Move("@StNameL/L*", 200, @-100, @0, Dxl1, false);
	FadeSt("L",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/100300030mzh">
「ばかー！　やめぬかー！　はなせー！」

{	Move("@StNameL/L*", 200, @-100, @0, Axl1, false);
	DeleteAllSt(200,false);
	St("MR",700, @-30,@0,"bu似鳥_通常_hard");
	FadeF2("@StNameMR/MR*", 400, 500, 500, 0, 0, Dxl1, false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300040nki">
「コラ」

{	St("ML",800, @40,@0,"buユージローa_通常_sad");
	CreateSE("SE01","se擬音_ギャグ_ぷに");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("@StNameML/ML*", 400, 10, 0, 0, 0, 1000, null, false);
	FadeF2("@StNameML/ML*", 400, 500, 500, 0, 0, Dxl1, false);
//	Move("@StNameML/ML*", 200, @50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/21/100300050ujr">
「きゃうーん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("MR",700, @-30,@0,"bu似鳥_通常_angry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300060nki">
「ったくバカ犬！　やめろよな」

{	DeleteAllSt(200,false);
	St("ML",700, @-50,@0,"buミヅハ_通常_angry");
	Move("@StNameML/ML*", 200, @50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/100300070mzh">
「そうじゃそうじゃ、このバカ犬！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300080nki">
「獣姦は創作の中だけ！　リアルはちょっと萎えるから」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buユージローa_通常_normal");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/21/100300090ujr">
「わう？」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/100300100mzh">
「似鳥よ、すまなかったな。恩に着るぞ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300110nki">
「…………」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/100300120mzh">
「な……なんじゃ、似鳥？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300130nki">
「……お前、確か神様なんだよな」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/100300140mzh">
「その通りじゃ！　じゃが、それがどうした？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300150nki">
「いや……なんかこう、オレの才能が一気に開花するような奇跡、起こしてくれないかなって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2111);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/100300160mzh">
「無理じゃ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300170nki">
「だよな」

{	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300180nki">
「自分の力で、やるしかない……か」

{	St("MR",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300190nki">
「やるしかない……んだよな？」

{	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300200nki">
「でも……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300210nki">
「できるのか……？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300220nki">
（ノーコがちょっとネットでもてはやされたからって調子に乗って……）

{	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300230nki">
（コミマの同人誌は散々で……）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300240nki">
（ソトカンダーはスタッフからバカにされ……）

{	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300250nki">
（そんなオレが……こんな短い時間で……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/100300260mzh">
「ほら、似鳥！　なにをボサッとしておる！」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/100300270mzh">
「早くしないと、時間が終わってしまうぞ！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300280nki">
「あ、ああ！　わかってるっつーの！」

{	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_pride");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300290nki">
「……よし。やるか！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("@StNameC/C*", 300, @0, @50, Axl1, false);
	DeleteAllSt(300,true);

	SetVolumeEX("SE*", 2000, 0, null);


	CreateColorEX("絵黒幕", 15000, "BLACK");
	Fade("絵黒幕", 1000, 1000, null, true);


	Wait(1000);

{	ClockPass(2112);}


//◆演出指定：時間空く・以下、ダイジェスト
//◆ＳＥ：ペンが走る

	CreateSE("SE01","se動作_書く");
	MusicStart("SE01",0,500,0,700,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//◆音声指示：独り言
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300300nki">
「ん……ん……んん……」

//◆ＳＥ：紙破る

//◆音声指示：独り言
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300310nki">
「ああ、クソッ！」

//◆音声指示：独り言
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300320nki">
「アイディア……アイディア……」

//◆音声指示：独り言
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300330nki">
「秋葉原……秋葉原だろ……」

//◆音声指示：独り言
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300340nki">
「こんなじゃ――全然――足りないし――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//あきゅん「演出：時間一気に流す」
	SetFrequency("SE01", 500, 1200, null);
	ClockPass(2113);
	Wait(1000);
	SetFrequency("SE01", 250, 1500, null);
	ClockPass(2114);
	Wait(500);
	SetFrequency("SE01", 50, 2000, null);
	ClockPass(2115);
	Wait(100);
	ClockPass(2116);
	Wait(100);

//◆時間：ジャンプ
{	ClockPass(2117);}

	SetVolumeEX("SE*", 200, 0, null);
	Wait(200);
	Fade("絵黒幕", 800, 0, null, true);
	Delete("絵黒幕");

	SoundPlay("@xbgm12",0,450,true);

	CreateSE("SE01","se戦闘_打撃音05");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("揺用", 2005);
	Shake("揺用", 300, 5, 4, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 300, 0, null, true);
	Delete("揺用");


{	St("C",700, @0,@50,"fu似鳥_通常_rage");
	Move("@StNameC/C*", 200, @0, @-50, Dxl2, false);
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300350nki">
「あああああッ！　ダメだ！」

{	St("C",700, @0,@0,"fu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300360nki">
「…………無理！」


{	Move("@StNameC/C*", 200, @0, @50, Axl2, false);
	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/100300370mzh">
「なんじゃ？　もう諦めるのか？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@50,"bu似鳥_通常_pinch");
	Move("@StNameML/ML*", 200, @0, @-50, Dxl2, false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300380nki">
「もうとか言うな！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("ML",700, @0,@0,"bu似鳥_通常_rage");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300390nki">
「オレだって必死だよ！
　やることちゃんとやってるよ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/100300400mzh">
「先ほどあのミリＰとかいう者も言っておったじゃろう？」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/100300410mzh">
「できる限りの時間で、できる限りのことをやる。
　それが、おぬしの役目じゃと」

{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/100300420mzh">
「自分が全力を出したと納得できるのであれば、それでよいのではないか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300430nki">
「あいつの言ってることが、正しいことだってのはわかる」

{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300440nki">
「ソトカンダーの適当な仕事、一発で見抜いたのはすごい」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300450nki">
「そうやってプロフェッショナルにやってきたからこそ、ああいう売れっ子プロデューサーだってのも、わかるよ」

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300460nki">
「でも……違うんだ。嫌なんだ」

{	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300470nki">
「お客を騙す？　見た目だけ取り繕う？
　時間内に、できる限り力を出せばいい？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2118);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300480nki">
「それってさ、駄目だろ？　おかしいだろ？」

{	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300490nki">
「頭の中には、あるんだよ。
　絶対、みんなにすごいって言ってもらえるアイディア」

{	St("C",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300500nki">
「でも、それを形にした途端、消えるんだ。
　もっと、もっと、できるはずなのに」

{	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300510nki">
「だから結局、ソトカンダーみたいな適当なので、お茶を濁して……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/100300520mzh">
「ふむ……」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/100300530mzh">
「おぬしとノーコは、なんだか似ておるのう」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300540nki">
「オレとノーコが似てる？　どこが？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/100300550mzh">
「ん、いや……どこがと訊ねられると困るのだが」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/100300560mzh">
「なんかこう、煮え切らぬ感じというか……
　自分を信じられぬ感じというか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("MR",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/100300570mzh">
「まあおぬしが創り出したものならば、性格が似るのも仕方なかろうが……」

{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/100300580mzh">
「おぬし、ノーコがおぬしにとってどんな存在か、今一度考えてみてはどうじゃ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300590nki">
「オレにとって、ノーコが……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	Wait(200);

	SetVolumeEX("@xbgm*", 1500, 0, null);

{	ClockPass(2119);}



//◆演出指定：フォン、マイクがハウり、辺りが暗闇に音いる
	CreateSE("SE00","se環境_ハウリング");
	MusicStart("SE00",0,700,0,1000,null,false);

	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/bg1203200ＵＰ＋_セット裏_暗闇.jpg");
	Fade("絵背景", 2000, 1000, null, true);

	OnBG(10,"bg1203200ＵＰ＋_セット裏_暗闇");
	FadeBG(0,true);

	Delete("絵背景");

	Wait(500);

	St("ML",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("ML",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/100300600nki">
「ん……なんだ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/21/100300610mzh">
「この気配は……もしや！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	Wait(500);

	CreateSE("SE01","se戦闘_カッター_刃出す01普通a");
	CreateSE("SE02","se擬音_光迸る");
	MusicStart("SE01",0,1500,0,250,null,false);
	MusicStart("SE02",0,700,0,900,null,false);


//◆演出指定：暗闇から浮き出るように
	CreateTextureSP("絵背景100", 5000, Center, Middle, "cg/bg/bg1203200ＵＰ＋_セット裏_暗闇.jpg");
	CreateColorSP("絵色100", 500, "BLACK");

	St2("C",700, @0,@0,"fuノーコa_通常_normal","cg2/",".png");
	FadeSt("C",0,true);

	CreatePlainSP("浮出用", 1500);
	Request("浮出用", AddRender);
	Delete("絵色100");
	CreateTextureSP("絵背景200", 800, Center, Middle, "cg/bg/bg1203200ＵＰ＋_セット裏_暗闇.jpg");
	DrawTransition("絵背景100", 1500, 1000, 0, 100, null, "cg/data/random_01_00_0.png", false);
	Fade("絵背景100", 1500, 0, null, true);
	Fade("絵背景200", 500, 0, null, false);

	SetVolumeEX("SE*", 2000, 0, null);

	Fade("浮出用", 500, 0, null, true);
	Delete("浮出用");
	Delete("絵背景*");

	Wait(800);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100810nko">
「にとり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100820nko">
「にとりは、どこ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――




	EndScene();
}
