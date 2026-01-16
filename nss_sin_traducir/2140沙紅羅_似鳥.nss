
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2140沙紅羅_似鳥.nss_MAIN
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
		$GameName = "2150沙紅羅_似鳥_ノーコ.nss";
	}else{
		$GameName = "2150沙紅羅_似鳥_ノーコ.nss";
	}
//	$GameCircle=false;

}

scene 2140沙紅羅_似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1850">
////////////header////////////
//file name "2140沙紅羅_似鳥.nss"
//title "雪辱の誓い"
//previous "2130沙紅羅_似鳥_ノーコ.nss"

////////////footer////////////
//next "沙紅羅" "2150沙紅羅_似鳥_ノーコ.nss"
//next "似鳥" "2150沙紅羅_似鳥_ノーコ.nss"


////////////body////////////





//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2140);}

//◆場所：エレキセンター_廊下
	OnBG(10,"bg0901200エレキセンター_廊下_閉店");
	FadeBG(0,true);

	SoundPlay("@xbgm04",0,450,true);

//おがみ：前ファイルの立ち絵引きつぎ
	St("ML",700, @0,@0,"bu双六a_通常_pinch");
	FadeSt("ML",0,true);

	FadeDelete("上背景", 200, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300010ksr">
「おい、似鳥」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/400300020nki">
「は――！？　双六さん！？」

{	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/400300030nki">
「な……お前、死んだんじゃ！？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300040ksr">
「バケモノ扱いすんじゃねぇよ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300050ksr">
「あの弾、誰が用意した？
　空薬莢と血糊。見え透いた手だろ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/400300060nki">
「なんで……あんなことを？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300070ksr">
「びっくりしただろ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/400300080nki">
「……驚かすためだけに？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_angry");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300090ksr">
「あぁん？
　双一親分の思いつきが、不服だって言うのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/400300100nki">
「え……あいや、そういうわけじゃ……ないですけど」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300110ksr">
「はっ！　つくづく、煮えきらねぇ野郎だ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300120ksr">
「テレビ見てたぞ。随分無様だったな」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/400300130nki">
「…………」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300140ksr">
「ほら、どっか行け。
　おまえみたいな負け犬見っと、腹が立ってかなわねぇ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300150skr">
「そんな、そこまで言わなくても――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300160ksr">
「嬢ちゃん、こいつはな。
　オレとの約束を破って、裏切った」

{	St("ML",700, @0,@0,"bu双六a_通常_pinch");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300170ksr">
「同情する余地なんてねぇ、腰抜けのクズ野郎だ」

{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300180ksr">
「オマケにどーじんしだ？　マンガ家になりたいだ？
　ほざくのも大概にしろってんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300190ksr">
「こういうニートの腐れゴミは、燃やしちまった方がよっぽど社会貢献になるってモンだぜ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_乙女_shout");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300200skr">
「――そんなこと、言わないでください」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300210ksr">
「ん？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_乙女_shy2");
	St("MR",700, @0,@0,"bu沙紅羅_乙女_shy");
	FadeSt("MR",200,true);
	FadeStPro("MR", 200, 4200);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300220skr">
「もちろん、ここ一番で情けねーところもあります。
　コイツはちゃんと、優しいところも持ってるんです」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	AgainSt("MR",700, @0,@0,"bu沙紅羅_乙女_shy");
	St("MR",700, @0,@0,"bu沙紅羅_乙女_shy2");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300230skr">
「無理を言って頭を下げるアタシに同人誌をくれたし、急なテレビの仕事も引き受けてくれた」

{	St("MR",700, @0,@0,"bu沙紅羅_乙女_shout");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300240skr">
「人の気持ちが、ちゃんとわかるヤツなんです」

{	St("MR",700, @0,@0,"bu沙紅羅_乙女_shy2");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300250skr">
「一度や二度、失敗したからって……
　全部否定するのは、酷すぎんじゃないですか？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_横向き_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300260ksr">
「おい、嬢ちゃん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2141);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300270ksr">
「オレが誰だかわかるか？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_乙女_shy");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300280skr">
「え……いや、それは……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_横向き_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300290ksr">
「河原屋双六。
　秋葉原の伝説の大親分、河原屋双一の跡取りだ」

{	St("ML",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300300ksr">
「それを知ってて、そういうデカい口が叩けンだろうな？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_乙女_shy2");
	St("MR",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("MR",200,true);
	FadeStPro("MR", 200, 2200);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300310skr">
「河原屋双一の……跡取り？」

{	AgainSt("MR",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300320ksr">
「へっ、ビビっちまって声も出ねぇか」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_乙女_shy2");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300330skr">
「…………信じられません」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300340skr">
「河原屋双一って名前くらい、アタシも知ってます」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300350skr">
「あなたは、親分の顔に、泥を塗ってる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300360ksr">
「ん？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300370skr">
「アタシは、自分が口にした言葉の意味くらい、ちゃんと知ってます！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300380skr">
「あなたの考え方は、おかしいです！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300390ksr">
「はっはっは――！！
　はっはっはっはっは――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300400skr">
「え――？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300410ksr">
「嬢ちゃん、ひとりもんだな？
　よし、オレについてこい！」

{	St("ML",700, @0,@0,"bu双六a_通常_smile");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300420ksr">
「面倒見てやるよ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300430skr">
「面倒って――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300440ksr">
「おまえが気に入ったのさ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_乙女_shy2");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300450skr">
「きき、気に入ったって、まさか……」

{	St("MR",700, @0,@0,"bu沙紅羅_乙女_shy");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300460skr">
「両想い……！？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_smile");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300470ksr">
「なんか欲しいものあっか？
　なんでも買ってやるよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_乙女_shy");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300480skr">
「欲しいもの――！！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_shy");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300490skr">
「あの……それじゃ、どーじんし……
　探してるんですけど……」

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_shy");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300500skr">
「あ、いや！
　アタシが読みたいわけじゃなくて、その、弟が……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_smile");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300510ksr">
「まかしときな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300520skr">
「え、ホントですか！？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300530ksr">
「オレたちゃ天下の河原屋組だ。
　秋葉原でみつからねぇものなんてひとつもないさ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300540ksr">
「オレが号令かけりゃ、すぐに見つけ出してみせる」

{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300550ksr">
「オレたちはメシでも食って待ってりゃいいのさ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2142);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_乙女_shy2");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300560skr">
「待ってれば……いい……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300570ksr">
「ウシ！　それじゃ早速探しに――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_乙女_shout");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300580skr">
「あっ、あの！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300590ksr">
「ん？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300600skr">
「やっぱり！
　やっぱりいいです！　ごめんなさい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300610ksr">
「……どういうこった？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_乙女_shy2");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300620skr">
「これ、私とマーくん……弟の、大切な約束で。
　だから、これだけは、アタシの力で探したい」

{	St("MR",700, @0,@0,"bu沙紅羅_乙女_shout");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300630skr">
「自分の力で叶えなきゃ、意味のない夢なんです」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300640ksr">
「自分の力で叶えなきゃならない夢……か」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/400300650nki">
「いや、でもオレの家に来ればすぐ叶う――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_angry");
	FadeQ($C_次,0,0,200,0,50,Dxl1,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300660ksr">
「てめぇはすっこんでろ！」

{	DeleteAllSt(200,true);
	CreateSE("SE01","se戦闘_打撃音07");
	St("MR",700, @0,@0,"bu似鳥_通常_shock");

	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("@StNameMR/MR*", 400, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 300, @50, @50, Dxl1, false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/400300670nki">
「がっ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_後ろ向き_shout");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300680skr">
「似鳥！」

{	DeleteAllSt(200,false);
	St("MR",700, @50,@50,"bu似鳥_通常_pain");
	Shake("@StNameMR/MR*", 400, 5, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 300, @0, @30, Axl1, false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/400300690nki">
「かはっ、く――かはっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_angry");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300700ksr">
「自分の身分をわきまえろ！　しゃべんな！
　てめぇは目の前のおっきなチャンスを見逃したんだよ！」

{	St("ML",700, @0,@0,"bu双六a_通常_pinch");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300710ksr">
「敗北者ってヤツだ。わかるだろ？」

{	St("ML",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300720ksr">
「てめぇ自身でも、自分がいったい何者か、薄々きづいちゃってんだろ？　なぁ！？」

{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300730ksr">
「一生、負け犬の人生を歩むんだな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se環境_風_l");
	MusicStart("SE01",3000,500,0,600,null,true);

	SetVolumeEX("@xbgm*", 4000, 0, null);

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_乙女_shy2");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300740skr">
「一度失敗したら――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300750ksr">
「ん……？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300760skr">
「失敗したら、そこで終わりなんですか？」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300770skr">
「やり直すことは、できないんですか」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300780ksr">
「できないね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300790skr">
「ほんとうに？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300800ksr">
「このクズ野郎がまっとうな人間として生まれ変わるなんて、不可能だ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_乙女_shy2");
	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("MR",200,true);
	FadeStPro("MR", 200, 3400);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300810skr">
「アタシは――それは、間違いだと思います」

{	AgainSt("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteAllSt(200,true);}
　沙紅羅は、道路に転がる木刀を拾い上げた。

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300820ksr">
「……そうか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("ML",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300830ksr">
「合わねぇんだったら、それまでか」

{	St("ML",700, @0,@0,"bu双六a_通常_smile");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300840ksr">
「お別れだな」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_乙女_shout");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300850skr">
「それも嫌ですっ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300860ksr">
「ん……？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_乙女_shy");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300870skr">
「あ、アタシは、アタシは……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	St("MR",700, @0,@0,"bu沙紅羅_乙女_shy2");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300880skr">
「双六さんに、ついて……ついていきたい……」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300890skr">
「――だからッ！！」

{	SetVolumeEX("SE*", 1000, 0, null);
	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300900skr">
「アタシが、あなたの目、覚まさせてあげます！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_shock");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300910ksr">
「は？」

{	DeleteAllSt(200,false);
	SoundPlay("@xbgm07_noint",0,450,true);
	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300920skr">
「失敗しても、やり直せるって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300930skr">
「間違っても、それに意味があるって」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300940skr">
「アタシが、似鳥で証明します！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/400300950nki">
「オレで？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300960ksr">
「嬢ちゃん、名前は？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400300970skr">
「沙紅羅」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300980ksr">
「沙紅羅。おまえ――」

{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400300990ksr">
「最高に、いい女だな」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_乙女_shy2");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400301000skr">
「い――いい、女？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2143);}


	TextBoxDelete(150);

	CreateSE("SE01","se戦闘_風切り音03");
	CreateSE("SE02","se戦闘_風切り音06");
	CreateSE("SE03","se動作_足踏み");


	DeleteAllSt(200,true);

//窓準備
	CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef_カット汎用01.jpg");

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1900, center, middle, "cg/bu/buみそa_通常_happy.png");
	CreateTextureEX("絵窓/絵演立絵2", 1900, center, middle, "cg/bu/buブーa_通常_shock.png");
	CreateTextureEX("絵窓/絵演立絵3", 1900, center, middle, "cg/bu/buミリＰb_ショータイム_shout.png");
	Move("絵窓/絵演立絵3", 0, @0, @100, null, true);
	Move("絵窓/絵演立絵*", 0, @0, @70, null, true);

	CreateTextureEX("絵背景枠01", 2200, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 2200, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");

//動作
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 200, @0, 80, Dxl2, false);
	Move("絵背景枠02", 200, @0, 464, Dxl2, false);
	Zoom("絵窓", 200, 1000, 1000, Dxl2, true);
	Move("絵窓/絵演立絵", 200, @-250, @0, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/400301010mso">
「いたああッ！」

{	MusicStart("SE02",0,700,0,1000,null,false);
	Move("絵窓/絵演立絵2", 300, @250, @0, Dxl2, false);
	Fade("絵窓/絵演立絵2", 300, 1000, null, true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/400301020buu">
「あ、姐さん、こんなところに――！」

{	MusicStart("SE03",0,700,0,1000,null,false);
	Move("絵窓/絵演立絵3", 300, @0, @-100, Dxl2, false);
	Fade("絵窓/絵演立絵3", 300, 1000, null, true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/400301030mrp">
「ふたりともッ！！　行くわよッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	Fade("絵背景枠01", 100, 0, null, false);
	Fade("絵背景枠02", 100, 0, null, false);
	Move("絵背景枠01", 200, @0, 250, Axl2, false);
	Move("絵背景枠02", 200, @0, 250, Axl2, false);
	Zoom("絵窓", 200, 1000, 0, Axl2, true);
//	CreatePlainSP("揺用", 2000);
	Delete("絵窓*");
	Delete("絵背景枠*");
//	Fade("揺用", 200,0, null, true);
//	Delete("揺用");
	St("C",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0245]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/400301040nki">
「ゲ！　あいつらは――」

{	DeleteAllSt(200,true);}
　遙か遠くから走ってくるのは、マイクを持ったミリＰと、放送機材を持ったみそブー。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//マスク準備
	CreateTextureEX("絵マスク枠", 6010, 300, Middle, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureSP("絵マスク/絵演背景", 1520, Center, Middle, "cg/ef/ef_カット汎用01.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buミリＰb_ショータイム_normal.png");
	Request("絵マスク/絵演立絵", Smoothing);
	Move("絵マスク/絵演立絵", 0, @280, @50, null, true);

//動作準備
	Move("絵マスク*", 0, @650, @0, null, true);
	Move("絵マスク枠", 0, 1024, 0, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);
	Fade("絵マスク枠", 0, 1000, null, true);

//動作
	Move("絵マスク枠", 200, 0, 0, Dxl2, false);
	Move("絵マスク", 300, @-650, @0, Dxl2, true);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, @-50, @-50, Dxl2, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//※北原メモ：→差分は作るのかな？
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/400301050mrp">
『さあ！　全国ゆるキャラバンが予定より早く終了したため、急遽お送りしているドキュメント秋葉原！』

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/400301060mrp">
『突如現れた謎のゴスロリ女！
　突如として崩れ落ちた高架下！』

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/400301070mrp">
『風雲急を告げる秋葉原の中、アタシたちはとうとう、中心人物の似鳥君と沙紅羅ちゃんを発見したわ！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("絵マスク枠", 200, 1024, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵*", 200, 700, 200, Axl1, false);
	Fade("絵マスク/絵演立絵*", 200, 0, null, true);
	Delete("絵マスク/絵*");
	Delete("絵マスク*");

	St("C",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0255]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/400301080nki">
「え……？　中継の続きをしてる……？！」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/400301090mso">
「姐さん！　ご無事で！？　って、聞こえてますか？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/400301100buu">
「姐さんッ！　しっかりしてください！　姐さん！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_乙女_shy2");
	SetComic(@0,@0,13);
	CreateSE("SE01","se動物_タヌキ_化ける02");
	Move("@Comic*", 0, @-140, @-165, null, true);
	FadeSt("C",200,true);
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeComic();}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400301110skr">
「いい女……アタシが、いい女……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	DeleteComic();
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_fear");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/400301120mso">
「な、なんか顔が赤い！！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_shock");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/400301130buu">
「意識も朦朧としてるし、なにか病気でも！？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/400301140mrp">
「これは――」

{	St("C",700, @0,@0,"buミリＰa_通常_happy");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/400301150mrp">
「恋の病ねっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,false);
	SetVolumeEX("@xbgm07_noint", 200, 0, null);

	St("L",700, @0,@0,"buみそa_通常_normal");
	St("R",700, @0,@0,"buブーa_通常_normal");
	FadeSt("L",200,false);
	FadeSt("R",200,true);

/*
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/400301160mso">
「ないない」

//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/400301170buu">
「ないない」
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270a]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/400301160mso">
「ないない」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/21/400301170buu">
//「ないない」

</PRE>
	SetText();
	AddText(1,"「ないない」","みそ","21/400301160mso",false,false,1000);
	AddText(2,"「ないない」","ブー","21/400301170buu",true,true,1400);
	TypeBeginD();//―――――――――――――――――――――――――――

{	SoundPlay("@xbgm07_noint",0,450,true);
	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_木刀_rage");
	FadeQ($C_次,0,0,200,0,50,Dxl1,false);
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270b]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400301180skr">
「ふんっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,false);

//おがみ：ＳＥ殴る
	CreateSE("SE00","se擬音_ギャグ_頭打つ");
	CreateSE("SE01","se擬音_ギャグ_頭打つ");

	St("L",700, @0,@0,"buみそa_通常_cry");
	St("R",700, @0,@0,"buブーa_通常_cry");

	MusicStart("SE00",0,700,0,1000,null,false);

	EffectZoomadd(10000, 400, 300, "cg/ef/ef034_精神汚染.jpg", false);

	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("@StNameL/L*", 200, 15, 5, 0, 0, 1000, Dxl1, false);
	Shake("@StNameR/R*", 200, 15, 5, 0, 0, 1000, Dxl1, false);
	FadeSt("L",200,false);
	FadeSt("R",200,true);

/*
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/400301190mso">
「ぎゃー！！」

//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/400301200buu">
「ぎゃー！！」
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0271]
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/400301190mso">
「ぎゃー！！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/21/400301200buu">
//「ぎゃー！！」

</PRE>
	SetText();
	AddText(1,"「ぎゃー！！」","みそ","21/400301190mso",false,false,1000);
	AddText(2,"「ぎゃー！！」","ブー","21/400301200buu",true,true,1400);
	TypeBeginD();//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　ふたつにわれた喝雄不死で、沙紅羅がみそブーを同時に殴りつける。

{	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400301210skr">
「あ、アタシだって、恋の病くらいかかるっ！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400301220skr">
「っていうかアンタたち、何してんの！？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_smile");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/400301230mso">
「なにってそりゃ、中継の手伝いを。な、ブー？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_smile");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/400301240buu">
「おう！
　ＡＤさんに脱便を助けてもらったから……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400301250skr">
「だつべん……？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400301260ksr">
「おう、みそブーじゃねぇか」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pride");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/400301270mso">
「あ……双六さんっ！？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400301280skr">
「ああ？　おまえら、知り合いなのか？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/400301290mso">
「え、ええ。まあ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2144);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400301300ksr">
「おいてめーら！
　ちゃんと部屋の掃除、終わったんだろうな」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pride");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/400301310mso">
「はい！　それはもちろん！
　今頃トラックに載って――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400301320ksr">
「ちゃんと、始末したんだな？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_normal");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/400301330mso">
「結構貴重なものもあって、もったいないくらいでした。
　アレだけの同人誌を売ったら、たぶん結構カネに――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 2000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/400301340nki">
「部屋の……掃除？　同人誌……！？」

{	St("C",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/400301350nki">
「って、もしかして――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400301360ksr">
「てめぇ、約束破っただろ？
　次の借り主は決まってる。部屋を片付けねぇとな」

{	St("MR",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/400301370ksr">
「あの部屋の本、みんな捨てさせたから」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"fu似鳥_通常_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/400301380nki">
「な――――！？」

{	St("C",700, @0,@0,"fu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/400301390nki">
「嘘、だ……嘘、うそ……」

{	St("C",700, @0,@0,"fu似鳥_通常_shout");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/400301400nki">
「嘘だあああああああ――――ッ！！」

{
	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("@StNameC/C*", 200, 0, 10, 0, 0, 500, null, false);
	Move("@StNameC/C*", 200, @250, @0, Axl1, false);
	DeleteAllSt(200,true);
	Wait(50);

	SetVolumeEX("SE01", 2000, 0, null);
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400301410skr">
「な――おい、待て！　待てって！」

{
	CreateSE("SE02","se動作_走る01_l");
	MusicStart("SE02",0,700,0,1000,null,false);

	DeleteAllSt(200,false);
	Move("@StNameC/C*", 200, @250, @0, Axl1, true);
	SetVolumeEX("SE02", 2000, 0, null);
	St("C",700, @0,@0,"buミリＰb_通常_shout");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/400301420mrp">
『おっと！　似鳥君、突然走り出したわ！
　沙紅羅ちゃんも、慌てて後を追う！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
{	St("C",700, @0,@0,"buミリＰb_ショータイム_pinch");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/400301430mrp">
『こうしちゃいられないわ！
　アタシたちも、追いかけましょう！！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

	St("L",700, @0,@0,"buみそa_通常_normal");
	St("R",700, @0,@0,"buブーa_通常_normal");
	FadeSt("L",200,false);
	FadeSt("R",200,true);

/*
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/400301440mso">
「おう！」

//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/400301450buu">
「おう！」

*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0332]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/400301440">
「「おう！」」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆演出指定：街中をダッシュで移動
//おがみ：ＳＥダッシュ
	CreateSE("SE00","se動作_集団走る");
	MusicStart("SE00",0,700,0,1000,null,true);

	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	ClockPass(2145);
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg0201211秋葉原駅_正面_閉店.jpg");
	#bg0201200秋葉原駅_正面_閉店 = true;

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

	Wait(500);

	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg0103211秋葉原_中央通り_閉店.jpg");

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

	Wait(500);

	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	ClockPass(2146);
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg0106100秋葉原_蔵前橋通り_通常.jpg");

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

	Wait(500);

	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	ClockPass(2147);
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg1301100似鳥マンション_エントランス_通常.jpg");

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

	Wait(500);

	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

{	ClockPass(2148);}

	Delete("絵背景50");
	OnBG(10,"bg1302100似鳥マンション_正面_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

	Wait(500);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
{	St("C",700, @0,@0,"fu似鳥_通常_shout");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/400301460nki">
「うおおおおおおおおッ！！」

//◆ＳＥ：扉が開く
{	DeleteAllSt(200,true);
	Wait(50);
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400301470skr">
「オイ似鳥！　待てって――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/400301480mso">
「あ……姐さん！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/400301490buu">
「あの、急に飛び込んじゃ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	SetVolumeEX("SE*", 1000, 0, null);
	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆場所：似鳥マンション_玄関_カレー
	OnBG(10,"bg1303200似鳥マンション_玄関_カレー");
	FadeBG(0,true);

	CreateSE("SE01","se動作_ドア閉める02");
	MusicStart("SE01",0,700,0,1000,null,false);


	DrawDelete("絵黒幕", 300, 100, null, "blind_01_00_1", true);


	Wait(300);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
{	St("ML",700, @0,@0,"bu沙紅羅_通常_pain");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400301500skr">
「う……げほっ、げほっ！！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_pain");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/400301510nki">
「な……なんだ、このカレー臭？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/400301520mrp">
「なんかコンロの上に……黄色い物体が……
　なんか……すごくでろでろして……」

{	DeleteAllSt(200,true);}
　沙紅羅はふたつに折れた喝雄不死の片割れを手に取ると、恐る恐るつついてみる。

//◆ＳＥ：ぷにょぷにょ
{
	CreateSE("SE01","se擬音_ギャグ_ぷにょぷにょ");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400301530skr">
「うお！　ねばねばしてる！　なにこの弾力！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_pinch");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/400301540mrp">
「接着剤みたい……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400301550skr">
「ん？」

{	DeleteAllSt(200,true);}
　試しに、喝雄不死の切断面に黄色いルーをくっつけ――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se戦闘_木刀_構える");
	CreateSE("SE02","se戦闘_木刀_構える");
	CreateSE("SE03","se戦闘_刃物01");
	CreateSE("SE04","se擬音_ギャグ_エロセンサー");

	CreateTextureEX("絵背景奇跡背景", 100, Center, Middle, "cg/yur/yurIF背景03.png");
	CreateTextureEX("絵背景奇跡", 100, Center, Middle, "cg/yur/yur沙紅羅木刀復活_沙紅羅.png");
	CreateTextureEX("絵背景奇跡枠", 100, Center, Middle, "cg/yur/yurIF枠.png");
	CreateTextureEX("絵背景漫符", 100, Center, Middle, "cg/yur/yur沙紅羅木刀復活_漫符.png");

	Fade("絵背景奇跡*", 200, 1000, null, true);
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("絵背景奇跡", 100, @0, @20, Axl1, true);
	MusicStart("SE02",0,700,0,1000,null,false);
	Move("絵背景奇跡", 100, @0, @-20, Dxl1, true);
	Move("絵背景奇跡", 100, @0, @20, Axl1, true);
	MusicStart("SE03",0,1000,0,1000,null,false);
	Move("絵背景奇跡", 100, @0, @-20, Dxl1, true);

	Wait(100);

	MusicStart("SE04",0,1000,0,1000,null,false);
	Fade("絵背景漫符", 0, 1000, null, true);
	Wait(32);
	Fade("絵背景漫符", 0, 0, null, true);
	Wait(32);
	Fade("絵背景漫符", 0, 1000, null, true);
	Wait(32);
	Fade("絵背景漫符", 0, 0, null, true);
	Wait(32);
	Fade("絵背景漫符", 0, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0361]
//◆ＳＥ：ぶんぶん！！
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400301560skr">
「すげえ！　奇跡！　復活した！！」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/400301570mrp">
「ウソでしょ……？」

{
	FadeDelete("絵背景奇跡*", 200, null, false);
	FadeDelete("絵背景漫符", 200, null, false);

	St("MR",700, @0,@0,"buミリＰa_通常_pinch");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/400301580mrp">
「って、驚いてる場合じゃない！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400301590skr">
「お、おう！　そうだった！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreatePlainSP("絵板写", 20000);

//◆場所：似鳥マンション_リビング_掃除後
	OnBG(10,"bg1304300似鳥マンション_リビング_掃除後");
	FadeBG(0,true);

	DrawDelete("絵板写", 300, 100, null, "blind_01_00_1", true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
{	St("L",700, @0,@0,"fu沙紅羅_通常_shout");
	FadeSt("L",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400301600skr">
「おい似鳥！　大丈夫――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	SoundPlay("@xbgm12",0,450,true);

	DeleteAllSt(200,true);
	Wait(200);
	St("C",700, @0,@50,"bu似鳥_通常_smile");
	Move("@StNameC/C*", 500, @0, @-50, Dxl1, false);
	FadeSt("C",500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/400301610nki">
「あは……あははははは……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/400301620nki">
「ほんとに……ほんとになくなってる……」

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/400301630nki">
「オレの……同人誌が……」

{	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/400301640nki">
「オレの、生きてきた証が……」

{	St("C",700, @0,@0,"bu似鳥_通常_happy");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/400301650nki">
「あはははっ、あははははははは…………！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se人体_倒れる04");

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
{	Move("@StNameC/C*", 500, @20, @100, Axl1, false);
	DeleteAllSt(500,true);
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400301660skr">
「…………」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/400301670mso">
「…………」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_sad");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/400301680buu">
「…………」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/400301690mrp">
「今は……そっとしておいてあげましょう」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400301700skr">
「だな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);


{	ClockPass(2149);}

	CreateColorSP("絵黒幕", 10000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆場所：似鳥マンション_正面
	OnBG(10,"bg1302100似鳥マンション_正面_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400301710skr">
「ホントに、おまえらがやったのか？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_sad");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/400301720mso">
「姐さん……勘弁して下さい！
　オレたちだって、悪気があったワケじゃないんです」

//【みそ】
<voice name="みそ" class="みそ" src="voice/21/400301730mso">
「双六さんに手伝ってくれって頼まれたから、超特急で荷物運びを手伝っただけで……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400301740skr">
「荷物はどこに？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/400301750buu">
「それが、一緒に荷物運びをした村崎ってオッサンが、トラックに載せてどこかに――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400301760skr">
「連絡先は！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/400301770buu">
「すいません……わかりません」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_pinch");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400301780skr">
「クソッ！
　せっかくどーじんしが、見つかったと思ったのに――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_sad");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/400301790buu">
「どーじんし？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400301800skr">
「アイツが、アタシが探してた本の作者なんだよ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_fear");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/400301810mso">
「ってことは、オレたちが運んじまった本が――！？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/400301820skr">
「たぶんな」

{	SetVolumeEX("@xbgm*", 1000, 0, null);
	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/400301830buu">
「す、す――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	St("L",700, @0,@0,"buみそa_通常_cry");
	St("R",700, @0,@0,"buブーa_通常_cry");
	Shake("@StNameL/L*", 200, 15, 0, 0, 0, 1000, Dxl1, false);
	Shake("@StNameR/R*", 200, 15, 0, 0, 0, 1000, Dxl1, false);
	FadeQ($L_次,0,0,200,0,50,Dxl1,false);
	FadeQ($R_次,0,0,200,0,50,Dxl1,false);
	FadeSt("L",200,false);
	FadeSt("R",200,true);

/*
//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/21/400301840buu">
「すいませんでした――っ！！」

//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/400301850mso">
「すいませんでした――っ！！」
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/21/400301850mso">
「すいませんでした――っ！！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/21/400301840buu">
//「すいませんでした――っ！！」

</PRE>
	SetText();
	AddText(1,"「すいませんでした――っ！！」","みそ","21/400301850mso",false,false,1000);
	AddText(2,"「すいませんでした――っ！！」","ブー","21/400301840buu",true,true,1400);
	TypeBeginD();//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 200, 1000, null, true);

	EndScene();
}
