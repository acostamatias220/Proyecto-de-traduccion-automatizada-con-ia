
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2131恵那.nss_MAIN
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
	//$GameName = "";
	//$GameCircle=false;

	//★徒歩：フラグ修正
	if($myRoute=="トゥルー"){
		$GameName="2134恵那.nss";
	}else{
		$GameName="b2134恵那.nss";
	}
}

scene 2131恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="340">
////////////header////////////
//file name "2131恵那.nss"
//title "立ちふさがる鈴"
//previous "2130恵那.nss"
//previous "b2130恵那.nss"

////////////footer////////////
//next "恵那"（"flkagome2" = true） "b2134恵那.nss"
//next "恵那" "2134恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);

	SetVolume("@xbgm*", 2000, 0, null);


//◆場所：スーパーノヴァ_控え室

	OnBG(10,"bg0503100スーパーノヴァ_控え室_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 200, null, true);

{	ClockPass(2131);}

	SetVolumeEX("@xbgm*", 100, 0, null);

{	SoundPlay("@xbgm03",0,450,true);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @100,@0,"bu鈴_シリアス_normal");
Move("@StNameC/C*", 300, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/310200010fjr">
「どこに行くって？」


{	St("MR",700, @-50,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
Move("@StNameMR/MR*", 200, @50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/310200020kms">
「――――ッ！！」

{	St("ML",700, @0,@0,"bu恵那_哀愁_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/310200030fje">
「鈴姉……」


{	St("C",700, @0,@0,"bu鈴_シリアス_sad");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/310200040fjr">
「せっかく、ガラスも直った。
　音楽機器も揃ってる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/310200050fjr">
「なのに、職場放棄して逃げるわけ？」


{	St("MR",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/310200060kms">
「確かにアッキー様がここから消えたのは、私が彼女を追い立てたからでしょう」

{	St("MR",700, @0,@0,"bu歌門_威圧_shout");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/310200070kms">
「しかし、それには深い理由が――」

{	St("ML",700, @0,@0,"bu恵那_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/310200080fje">
「そうなの！　詳しく説明してるヒマはないけど、人の命がかかったことよ！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/310200090fje">
「鈴姉には悪いけど、どうか――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/310200100fjr">
「アナタたちには、アナタたちなりの理屈があるのよね」

{	St("C",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/310200110fjr">
「けど！」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/310200120fjr">
「アタシにはアタシの理屈があるんだよっ！！」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/310200130fjr">
「フウリちゃんと約束したんだ。
　絶対に、今夜のライブを成功させるって――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2132);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/310200140fjr">
「そのためには――」

{	St("C",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/310200150fjr">
「ひとりもバイトから抜けさせられないッ！」





{	St("MR",700, @0,@0,"bu歌門_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/310200160kms">
「横暴な……」

{	St("ML",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/310200170fje">
「じゃあ、私は――」


{	St("C",700, @0,@0,"bu鈴_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/310200180fjr">
「恵那ちん！
　アームチェア・ディテクティブを知っているかしら？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("ML",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/310200190fje">
「安楽椅子に座って事件を解決しちゃう探偵のことでしょ」

{	St("ML",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/310200200fje">
「って、まさか――」

{	St("C",700, @0,@0,"bu鈴_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/310200210fjr">
「立ち直りさえすれば、恵那ちんは現場に立ち会わなくとも事件解決なんてちょちょいのちょい！」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/310200220fjr">
「バイト・ディテクティブの完成よ！！」


{	St("ML",700, @0,@0,"bu恵那_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/310200230fje">
「……私まで、バイトの頭数に入ってるって言うのね？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("MR",700, @0,@0,"bu歌門_威圧_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/310200240kms">
「そのような暴挙、許すわけにはいきません！」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/310200250kms">
「力尽くでも、抜けさせていただきます！」

{	St("ML",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/310200260fje">
「私も、助太刀するわ！」

{	St("ML",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/310200270fje">
「私だって、富士見家の子孫！
　鈴姉ほどじゃないけど、腕に覚えはあるんだから！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2133);}

//	TextBoxDelete(150);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/310200280fjr">
「ふふふ……いいわ！　それだけ言うなら――」



{	St("C",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/310200290fjr">
「アタシの大気圏突破式ドロップキックが火を噴くわっ！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 1000, 0, null);

	CreateSE("SE00","se擬音_ゴング01");
	MusicStart("SE00",0,700,0,1000,null,false);

	DeleteSt("C", 200,true);
	TextBoxDelete(150);

//◆ＳＥ：カーン！

//◆ＳＥ：ドカスカバキ！！

//◆ＳＥ：カンカンカン！！


	CreateTextureEX("絵背景", 120, Center, Middle, "cg/ev/ev1830鈴ドロップキック.jpg");
	Zoom("絵背景", 0, 2000, 2000, Dxl2, true);
	SetBlur("絵背景", true, 2, 500, 50, false);

	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵背景", 200, 1000, null, false);
	Zoom("絵背景", 200, 1000, 1000, Dxl2, true);

	Zoom("絵背景", 200, 5000, 5000, Axl3, false);
	FadeF4("絵背景", 200, 1000, 3000, 0, 0, Axl3, false);

	Wait(200);
	CreateSE("SE02","se戦闘_殴打連続01");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorEXadd("絵色", 1500, "#FFFFFF");
	Fade("絵色", 300, 1000, null, true);
	Delete("絵背景");

//	OnBG(10,"bg0502211スーパーノヴァ_ライブ会場_ガラス補修");
//	FadeBG(0,true);

	FadeDelete("絵色", 500, null, false);

	CreateTextureSP("絵ゆれ", 100, Center, Middle, "cg/bg/bg0503100スーパーノヴァ_控え室_通常.jpg");

	Shake("絵ゆれ", 500, 10, 20, 10, 0, 500, AxlAuto, true);
	Shake("絵ゆれ", 500, 10, 20, 0, 0, 500, Axl3, true);
	Request("絵ゆれ",Disused);

	CreateSE("SE00","se擬音_ゴング02");
	MusicStart("SE00",0,700,0,1000,null,false);

WaitKey(500);

{	St("C",700, @0,@120,"bu鈴_通常_happy");
Move("@StNameC/C*", 200, @0, @-120, Dxl3, false);
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/310200300fjr">
「ウィ――――――――！！」


{	DeleteSt("C", 200,true);}
{	St("ML",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/21/310200310fje">
「ぐふ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
{Move("@StNameML/ML*", 300, @0, @50, Dxl3, false);
	Shake("@StNameML/ML*", 300, 10, 0, 0, 0, 700, Dxl3, false);
	DeleteSt("ML", 200,true);
}//<br>

	CreateSE("SE02","se人体_倒れる04");
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("MR",700, @0,@0,"bu歌門_通常_pinch");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/21/310200320kms">
「つ……つよい……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{Move("@StNameMR/MR*", 200, @0, @100, Dxl1, false);
	Shake("@StNameMR/MR*", 300, 8, 0, 0, 0, 700, Dxl1, false);
	DeleteSt("MR", 200,true);
}

	CreateSE("SE01","se人体_倒れる04");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]

{	St("C",700, @0,@50,"bu鈴_シリアス_normal");
Move("@StNameC/C*", 300, @0, @-50, Dxl3, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/310200330fjr">
「武者修業時代を久しぶりに思い出してしまったわ……」

//あきゅん「演出："b2134恵那.nss"と表情合わせています」
{	St("C",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/21/310200340fjr">
「いい？　ふたりとも、あと５分で準備してねっ！
　ちゃんと働けば、早く帰してあげるからっ！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



	EndScene();
}
