
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ab2150千秋_恵那.nss_MAIN
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

	if($CharaName=="千秋"){
		$GameName = "ab2200千秋.nss";
	}else if($CharaName==""){
		$GameName = "恵那";
	}else{
		$GameName = "ab2200恵那.nss";
	}

//	$GameName = "";
//	$GameCircle=false;


}

scene ab2150千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1050">
////////////header////////////
//file name "ab2150千秋_恵那.nss"
//title "懇願"
//previous "ab2140千秋_恵那.nss"

////////////footer////////////
//next "千秋" "ab2200千秋.nss"
//next "恵那" "ab2200恵那.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);


//◆場所：スパコン館_店内
	OnBG(10,"bg1103100スパコン館_店内_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

	SoundPlay("@xbgm22_onint",0,450,true);


{	ClockPass(2150);}

//◆演出指定：フウリが倒れてる絵

	CreateTextureEX("絵背景２", 2000, Center, Middle, "cg/ev/ev2150ユージロー転倒b.jpg");
	Fade("絵背景２", 2000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200010fje">
「タヌキ……？」


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/500200020kit">
「これって……あの……もしかして……」

{	St("MR",700, @0,@0,"bu恵那_哀愁_fear");
	DeleteSt("ML", 200,false);
	Fade("絵背景２", 500, 0, null, true);
	Delete("絵背景２");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200030fje">
「わかんない」

{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200040fje">
「でも、街中でタヌキなんて見たことないし。
　きっと……たぶん……」


{	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/500200050kit">
「……だよな」

{	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200060fje">
「助けなきゃ――！！」

{	St("C",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200070fjh">
「傷の具合から見て……
　さっきのカッター女が傷つけたのか？」

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_shock");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 300, 10, 10, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200080fje">
「推理なんていいから、医者を！」


{	St("C",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200090fjh">
「おい恵那、落ち着けよ。
　確かにかわいそうだけど、そこまで取り乱すことは――」

{	St("MR",700, @0,@0,"bu恵那_通常_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200100fje">
「――――ッ！！」

{	St("C",700, @0,@0,"bu平次_落ち込み_sad");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200110fjh">
「お……おい、そんな睨まなくても――」

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/500200120kit">
「恵那のオヤジさん、誰かを追ってここまで来たんですよね？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2151);}


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("C",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200130fjh">
「あ、ああ。
　カッター女と、追いかけられた男だったけど」

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/500200140kit">
「その追いかけられた男っていうのがきっと、タヌキです」

{	St("C",700, @0,@0,"bu平次_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200150fjh">
「…………は？」



//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200160fjh">
「タヌキ？」


{	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/500200170kit">
「はい」

{	St("C",700, @0,@0,"bu平次_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200180fjh">
「冗談だろ？」

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200190fje">
「こんな時に、冗談なんて言うわけないでしょっ！！」

{	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/500200200kit">
「恵那！　少し落ち着けって」

{	St("ML",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/500200210kit">
「車に轢かれて、あんな酷い傷負ってても、ちゃんと生き返ったんだから」


{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/500200220kit">
「きっと今度も――」

{	St("C",700, @0,@0,"buユージローa_通常_hard");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 300, 0, 10, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab21/500200230ujr">
「わうわうっ！！」


{	CreateTextureEX("絵背景２", 2000, Center, Middle, "cg/ev/ev2150ユージロー転倒b.jpg");
	Fade("絵背景２", 500, 1000, null, true);
	DeleteAllSt(0,true);
	}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/500200240wfu">
「ノーコ……ちゃん……ダメ……」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200250fjh">
「タヌキがしゃべった！？」


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200260fje">
「貫太さんの声じゃない……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2152);}


//	TextBoxDelete(150);

	DeleteAllSt(0,true);

	St("ML",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("ML",0,true);

	Fade("絵背景２", 500, 0, null, true);
	Delete("絵背景２");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/500200270kit">
「この声――フウリさん？」

{	St("MR",700, @0,@0,"bu恵那_哀愁_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200280fje">
「フウリさんって確か……
　鈴姉と一緒にバンド組んでる、ドラマーの？」

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/500200290kit">
「声聞いたばっかりだし、間違いない！」

{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200300fje">
「そうか……
　貫太さんが好きだったのは、同族の仲間だったから……」


{	CreateTextureEX("絵背景２", 2000, Center, Middle, "cg/ev/ev2150ユージロー転倒b.jpg");
	Fade("絵背景２", 500, 1000, null, true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/500200310wfu">
「んぁ……ん、くぅ……ぅ……！」

{	DeleteAllSt(0,false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200320fje">
「フウリさん――！」


　恵那は、ハンカチで傷口をきつく縛り付ける。


{	Fade("絵背景２", 500, 0, null, true);
	Delete("絵背景２");
	St("MR",700, @0,@60,"bu恵那_哀愁_pinch");
	Move("@StNameMR/MR*", 500, @0, @-60, Dxl3, false);
	FadeSt("MR",500,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200330fje">
「やっぱりだめ……
　フウリさんがこのまま生き返れるか……わかんないし」

{	St("ML",700, @0,@0,"bu千秋_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/500200340kit">
「くそっ！　獣医を呼んで――」


{	St("C",700, @0,@0,"bu平次_通常_shout");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200350fjh">
「待て！」

{	St("C",700, @0,@0,"bu平次_通常_hard");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200360fjh">
「モノノケ相手に、普通の医者が通用するか？
　それに大晦日だ。すぐに診れる医者は近くにいねぇぞ」

{	St("ML",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/500200370kit">
「だからって、他に手は――」

{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200380fje">
「私……助けたいの……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2153);}

	TextBoxDelete(150);

	CreateTextureEX_mono("絵背景３", 2000, Center, Middle, "cg/ev/ev2210ユージロー事故b.jpg");
	ClockDelete(500,true);
	Fade("絵背景３", 500, 1000, null, true);


//	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
//	FadeSt("MR",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200390fje">
「１０年前、貫太さんがいなくなってから、私はずっと、後悔してたの……」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200400fje">
「もう、誰も失わない……
　二度とこんなことはないようにする……」


{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(0,false);
	FadeSt("MR",0,true);
	FadeDelete("絵背景３", 500, null, true);}
{	ClockPass(2153);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200410fje">
「そう誓って、探偵になろうって決めたの……」

{	St("C",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200420fjh">
「恵那――」


{	St("MR",700, @0,@0,"bu恵那_通常_shy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200430fje">
「彼女は、貫太さんが会いに来た、友達だから。
　死なせるわけにはいかない！」

{	St("MR",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200440fje">
「父さんがいくらやめろって言っても、私は――！」

{	St("C",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200450fjh">
「恵那」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200460fjh">
「本気なんだな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2154);}


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("MR",700, @0,@0,"bu恵那_通常_think");
DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200470fje">
「……うん」

{	St("C",700, @0,@0,"bu平次_通常_cool");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200480fjh">
「待ってろ。心当たりがある」

{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200490fje">
「心当たり――？」

{	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200500fje">
「それで、フウリさんが？」

{	St("C",700, @0,@0,"bu平次_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200510fjh">
「安心しな」


{	St("C",700, @0,@0,"bu平次_通常_hard");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200520fjh">
「オレが、なんとかする」

{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200530fje">
「父さん…………？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2155);}


	OnBG(10,"bg1103100スパコン館_店内_通常");
	FadeBG(0,true);

	DeleteAllSt(200,false);
	TextBoxDelete(150);
	WaitKey(1000);

	CreateSE("SE01","seメカ_携帯_電子音02");
	MusicStart("SE01",0,700,0,1000,null,false);
	WaitKey(4000);

	SetVolumeEX("SE01", 0, 0, null);
	CreateSE("SE02","seメカ_携帯_コール01_l");
	MusicStart("SE02",0,700,0,1000,null,false);
	WaitKey(6000);
	SetVolumeEX("SE02", 0, 0, null);

//	CreateSE("SE03","seメカ_携帯_切れる");
//	MusicStart("SE03",0,700,0,1000,null,false);
//	WaitKey(500);
//	SetVolumeEX("SE03", 0, 0, null);
	WaitKey(500);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200540fjh">
「……もしもし」



//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200550fjh">
「ああ、星さんか？
　ちょっと、ミヅハに話が――」


{	St("ML",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/500200560kit">
「ミヅハに……？」

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/500200570kit">
「いったい、何の話を……」

{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200580fje">
「……わかんない」

{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200590fje">
「けどミヅハちゃんなら、もしかしたら……」

{	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/500200600kit">
「は？　あの子供になにが？」


{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200610fje">
「自分のことを、神様って言ってた」

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/500200620kit">
「そんな話、信じるのか？」

{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200630fje">
「正直、わかんない。でも――」


{	DeleteAllSt(200,true);
	}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200640fjh">
「アザナエルで、願いを叶える」



//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200650fjh">
「お願いできるな、ミヅハ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2156);}


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200660fjh">
「……頼んだぞ」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200670fjh">
「じゃあ、星さんに代わってくれ」


{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200680fje">
「あんな父さんの顔、初めて見たから……」


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200690fje">
「あの父さんは、信じてあげなきゃいけないなって、そう思った」

{	St("ML",700, @0,@0,"bu千秋_通常_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/500200700kit">
「確かに……そうかもな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/500200710kit">
「あんなオヤジさんの顔見たの、もしかしたら初めて――」

{	St("MR",700, @0,@0,"bu恵那_通常_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200720fje">
「…………」

{	St("ML",700, @0,@0,"bu千秋_通常_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/500200730kit">
「いやまあ、あんまり会ったことあるワケじゃないけど」


{	DeleteAllSt(200,true);
	}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200740fjh">
「ちょ――ちょっと待った、星さん！
　待ってくれ！」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200750fjh">
「実は新たな情報が！
　アザナエルの場所がわかって――」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200760fjh">
「おい、星さん！　星さ――――んッ！！」


{	CreateSE("SE04","seメカ_携帯_切れる");
	MusicStart("SE04",0,700,0,1000,null,false);
	WaitKey(500);
	SetVolumeEX("SE04", 0, 0, null);}

{	CreateSE("SE05","seメカ_携帯_電話切れる02_l");
	MusicStart("SE05",0,700,0,1000,null,false);
	WaitKey(4000);
	SetVolumeEX("SE05", 0, 0, null);}

{	St("C",700, @0,@0,"bu平次_通常_pain");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);
	}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200770fjh">
「クソっ！！」


{	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/500200780kit">
「オヤジさん……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2157);}


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("C",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200790fjh">
「ん……あ、ああ。大丈夫だ！」



//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200800fjh">
「ちゃんと、時間は稼げた。
　ミヅハは逃げ出して――逃げ出したはず――」

{	St("C",700, @0,@0,"bu平次_落ち込み_sad");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200810fjh">
「逃げ出せた、はず……だ」



//◆ＳＥ：ガン！
{	St("C",700, @0,@0,"bu平次_通常_angry");
	FadeSt("C",200,false);
	CreateSE("SE01","se動作_ドア閉める02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("@OnBG*", 100, 5, 5, 0, 0, 500, null, false);
	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);
	}


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200820fjh">
「ああっ！　クソッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("C",700, @0,@0,"bu平次_通常_pain");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200830fjh">
「畜生ッ！　なんだ――なんなんだ！？」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200840fjh">
「オレは――オレはこんなとき――
　娘の力にも――なれねぇ――」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200850fjh">
「なんで、こんな……こんなときに……ッ！」


{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200860fje">
「大丈夫」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200870fje">
「父さん、ミヅハちゃんにお願いしてもらえたんだよね」

{	St("C",700, @0,@0,"bu平次_落ち込み_sad");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200880fjh">
「お……おお」

{	St("MR",700, @0,@0,"bu恵那_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200890fje">
「ミヅハちゃん、本物の、神様なんだよね」

{	St("C",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200900fjh">
「……そうだ」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200910fje">
「だったら、大丈夫」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2158);}



//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	St("MR",700, @0,@0,"bu恵那_通常_happy");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200920fje">
「ミヅハちゃんは、いいこだから」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200930fje">
「きっと、私たちの願い、叶えてくれる」

{	St("C",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200940fjh">
「あ……ああ」



{	St("ML",700, @0,@0,"bu千秋_通常_pinch");
	Shake("@StNameML/ML*", 100, 5, 5, 0, 0, 500, null, false);
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/500200950kit">
「――――ッ！」



{	St("C",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200960fjh">
「嬢ちゃん、どこに――？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);

{	ClockPass(2159);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/500200970kit">
「心当たりがあって――貫太さん、探してくる！」

{	St("C",700, @0,@0,"bu平次_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/500200980fjh">
「貫太？　って、織田貫太――？」

{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500200990fje">
「私も――」

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/500201000kit">
「恵那は、ここでフウリさんの様子、見てて」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/500201010kit">
「オヤジさんも……恵那のこと、よろしく頼みます！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	St("C",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見平次】

<voice name="富士見平次" class="富士見平次" src="voice/ab21/500201020fjh">
「お……おう、わかった」

{	St("ML",700, @0,@0,"bu千秋_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/500201030kit">
「それじゃ！」

{	Move("@StNameML/ML*", 200, @-120, @0, null, false);
	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"bu恵那_哀愁_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/500201040fje">
「待って！　代わりにユージローを」

{	DeleteAllSt(200,false);
	St("C",700, @120,@0,"buユージローa_通常_normal");
	Move("@StNameC/C*", 200, @-120, @0, DxlAuto, false);
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab21/500201050ujr">
「わうっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameC/C*", 300, @-120, @0, null, false);
	DeleteAllSt(300,true);

	SetVolumeEX("@xbgm*", 3000, 0, null);

	if($CharaName=="千秋"){

	TextBoxDelete(150);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 300, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	WaitPlay("@x*", null);

	}else{

	TextBoxDelete(150);

	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);
	WaitPlay("@x*", null);

	WaitKey(2000);

	}
	EndScene();
}
