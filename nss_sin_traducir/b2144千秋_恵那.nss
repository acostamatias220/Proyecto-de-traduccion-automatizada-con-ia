
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene b2144千秋_恵那.nss_MAIN
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
		$GameName = "b2150千秋_恵那.nss";
	}else if($CharaName=="恵那"){
		$GameName = "b2150千秋_恵那.nss";
	}else{
		$GameName = "b2150千秋_恵那.nss";
	}

}

scene b2144千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="620">
////////////header////////////
//file name "b2140千秋_恵那.nss"
//title "荒ぶる鈴！"
//previous "2143恵那.nss"

////////////footer////////////
//next "千秋" "b2150千秋_恵那.nss"
//next "恵那" "b2150千秋_恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：スーパーノヴァ_正面_ガラス車イン
	OnBG(10,"bg0501400スーパーノヴァ_正面_ガラス車イン");
	FadeBG(0,true);

	SoundPlay("@xbgm20",0,1,true);


//あきゅん「演出：下記の村崎の表情に合わせて別ファイル"2143恵那.nss"も同期させています、修正する時は気を付けてくだしあ」
	St("C",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("C",0,true);

{	ClockPass(2143);}

	FadeDelete("上背景", 0, null, true);

{	ClockPass(2144);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/440100010fje">
「カッター女！？」

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/440100020fje">
「あ、コレ――折れたカッターナイフの刃！！」

{	St("MR",700, @0,@0,"bu恵那_一休_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/440100030fje">
「ってことはやっぱり、テレビに出てたあの……」

{
//	SoundPlay("@xbgm08_onlyint",0,450,false);
	St("MR",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/440100040fje">
「――くっ！　追いかけたいけど――」



{
	SetVolumeEX("@xbgm20", 2000, 300, null);
	DeleteAllSt(200,false);
	St("C",700, @50,@0,"bu千秋_朗らか_lost");
	Rotate("@StNameC/C*", 0, @0, @0, @-8, null,true);
	Request("@StNameC/C*", Smoothing);
	Move("@StNameC/C*", 30000, @-100, @0, Dxl2, false);
	FadeSt("C",200,true);
//	SetVolumeEX("@xbgm*", 300, 0, null);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/440100050kit">
「宇宙……宇宙が見える……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/440100060fje">
「それどころじゃないか」

{	St("MR",700, @0,@0,"bu恵那_一休_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/440100070fje">
「大体、今から追いかけても見つかるかどうか――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	CreateSE("SEL01","seガヤ_交通少_l");
//	MusicStart("SEL01",4000,400,0,1000,null,true);

//	TextBoxDelete(150);

	DeleteAllSt(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆音声指示：遠くから
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b21/440100080fjh">
「うお！　発見！」

//◆音声指示：遠くから
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b21/440100090fjh">
「待てぇいッ！！　御用だ御用だ御用だッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	ClockPass(2145);}



{	St("C",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/440100100fje">
「父さんが追いかけてるのって、まさか――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("MR",200,true);
	Zoom("@StNameMR/MR*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameMR/MR*", 100, 1000, 1000, Axl2, true);
}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/b21/440100110ujr">
「わう！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/440100120fje">
「え？　ユージロー？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buユージローa_通常_angry");
	Shake("@StNameMR/MR*", 1000, 0, 10, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/b21/440100130ujr">
「わうわうわうわうッ！！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/440100140fje">
「ん、そう。助太刀に行くのね」


//	TextBoxDelete(150);
//ムー：↓の恵那の台詞本来鈴の台詞なので修正しました。

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/440100150fje">
「わかったわ。
　父さんを、お願いね！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("MR",200,true);
	Zoom("@StNameMR/MR*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameMR/MR*", 100, 1000, 1000, Axl2, true);
}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/b21/440100160ujr">
「わうっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se動物_イヌ_走る_l");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("@StNameMR/MR*", 300, @200, @0, Dxl2, false);
	DeleteSt("MR",300,true);

	St("C",700, @-100,@0,"bu鈴_シリアス_angry");
	Move("@StNameC/C*", 300, @100, @0, Dxl2, false);
	FadeSt("C",200,true);

//	SoundPlay("@xbgm20_noeff",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【富士見鈴】
//<voice name="富士見恵那" class="富士見恵那" src="voice/b21/440100170fje">
<voice name="富士見鈴" class="富士見鈴" src="voice/b21/440100170fjr">
「スクリュー・パイル・ドロップキ――ック！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//★ wam井野 ドロップキックは前シーン同様他のシナリオにあわせて要調整 10/11/15
//★ wam井野 2143恵那.nssからいただきました 10/11/18

	CreateTextureEX("絵背景", 1000, Center, Middle, "cg/ev/ev1830鈴ドロップキック.jpg");
	Zoom("絵背景", 0, 2000, 2000, Dxl2, true);
	SetBlur("絵背景", true, 2, 500, 50, false);

	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵背景", 200, 1000, null, false);
	Zoom("絵背景", 200, 1000, 1000, Dxl2, true);


	Zoom("絵背景", 200, 5000, 5000, Axl3, false);
	FadeF4("絵背景", 200, 1000, 3000, 0, 0, Axl3, false);

	Wait(200);
	CreateSE("SE02","se戦闘_打撃_ドロップキック01");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorEXadd("絵色", 1500, "#FFFFFF");
	Fade("絵色", 300, 1000, null, true);
	FadeDelete("絵背景",0,null,false);

	St("C",700, @0,@0,"bu村崎_通常_cry");
	FadeSt("C",0,true);

	FadeDelete("絵色", 500, null, false);

	Shake("@StNameC/C*", 1000, 10, 0, 0, 0, 1000, Dxl1, false);
	Wait(300);

	Move("@StNameC/C*", 300, @0, @50, Dxl2, false);
	DeleteAllSt(200,false);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]


//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/440100180msi">
「ぎゃあああッ！！」


{	CreateSE("SE01","se戦闘_打撃音03");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StML*", 200, @-100, @0, Dxl2, false);
	DeleteAllSt(200,true);


	St("MR",700, @0,@0,"bu恵那_哀愁_fear");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/440100190fje">
「鈴姉！　そのくらいにしてあげて！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/b21/440100200fjr">
「恵那ちん？　邪魔しないでちょうだい！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/440100210fje">
「それどころじゃないの！
　千秋をこんなにしたの、鈴姉でしょ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2146);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	DeleteAllSt(200,false);
	CreateSE("SE01","se擬音_ギャグ_痙攣");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("C",700, @0,@50,"bu千秋_朗らか_lost");
	Rotate("@StNameC/C*", 0, @0, @0, @8, null,true);
	Request("@StNameC/C*", Smoothing);
	Move("@StNameC/C*", 3000, @0, @-50, Dxl2, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/440100220kit">
「うおー！　オレ、魚になっちゃったー！
　ぎょぎょぎょぎょぎょー！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu鈴_シリアス_smile");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/b21/440100230fjr">
「いやいや、千秋ちゃんは元々こんなでしょ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/440100240fje">
「ホラやっぱり！
　鈴姉、コイツが千秋だって知ってるじゃない！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/b21/440100250fjr">
「あ……しまった！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/440100260fje">
「なんでこんなことさせたの？
　私をからかって楽しんでたわけ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/b21/440100270fjr">
「いやいや、違う！　違います！」

{	St("ML",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/b21/440100280fjr">
「これにはね聞いてビックリ深ーいワケが……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/440100290fje">
「ないでしょ」

{
	CreateSE("SE01","se擬音_ギャグ_ぷにょーん");
	DeleteAllSt(200,false);
	SetComic(@0,@0,11);
	Move("@Comic*", 0, @-200, @-160, null, true);
	St("ML",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("ML",200,true);
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeComic();}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/b21/440100300fjr">
「ないんだけどねっ♪」

{	DeleteComic();
	DeleteAllSt(200,false);
	St("C",700, @0,@50,"bu村崎_通常_fear");
	Move("@StNameC/C*", 1500, @0, @-50, Dxl2, false);
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/440100310msi">
「あの、おふたりとも……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,false);
	St("MR",700, @50,@0,"bu恵那_通常_angry");
	St("ML",700, @-50,@0,"bu鈴_シリアス_angry");
	Move("@StNameMR/MR*", 200, @-50, @0, Dxl2, false);
	Move("@StNameML/ML*", 200, @50, @0, Dxl2, false);
	FadeSt("MR",200,false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080a]
//◆音声指示：同時
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/440100320fje">
「なによ！？」
{WaitAddText();}<BR>

//◆音声指示：同時
//【富士見鈴】
//<voice name="富士見鈴" class="富士見鈴" src="voice/b21/440100330fjr">
//「なによ！？」

</PRE>
	SetText();
	AddText(1,"「なによ！？」","富士見恵那","b21/440100320fje",false,false,1000);
	AddText(2,"「なによ！？」","富士見鈴","b21/440100330fjr",true,true,1200);
	TypeBeginD();//―――――――――――――――――――――――――――

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu村崎_通常_pinch");
	Move("@StNameC/C*", 500, @0, @30, Dxl2, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080b]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/440100340msi">
「さっきから、彼が大変なことに……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2147);}


	DeleteAllSt(200,true);

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]

{	St("C",700, @0,@0,"bu千秋_朗らか_lost");
	Shake("@StNameC/C*", 30000, 5, 0, 0, 0, 250, null, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/440100350kit">
「あ……こけしさんの首がぐるぐるまわってる……
　ぐるぐるぐるぐるぐる……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("ML",200,true);
}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/b21/440100360fjr">
「さ……さすがにマズいわね」


{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu村崎_通常_pinch");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/440100370msi">
「あの、良かったら私が送りましょうか？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_surprise");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/440100380fje">
「お、お願いできますか！？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu村崎_通常_pinch");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/440100390msi">
「ええ。せめてもの罪滅ぼしで……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/b21/440100400fjr">
「逃げる気？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu村崎_通常_cry");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, null, false);}
//【村崎勇】

<voice name="村崎勇" class="村崎勇" src="voice/b21/440100410msi">
「ひえええええ！　すいません！
　勘弁してくださぁい……！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/440100420fje">
「ごめん鈴姉！　怒りたい気持ちはわかるけど！
　私、千秋を家に連れて行かないと！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/b21/440100430fjr">
「……そう、ね」

{	St("ML",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/b21/440100440fjr">
「でもここに散らばった荷物、どうしようかしら」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2148);}


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/440100450fje">
「荷物？」


{	Move("@StNameMR/MR*", 200, @200, @0, Dxl2, false);
	DeleteAllSt(200,false);}


　恵那はぐるりとトラックの陰へと回る。


//あきゅん「修正指示："imgノーコントロール車の荷台から溢れる"を表示してください」
//★ wam井野 修正いたしました。10/11/18

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SceneOut(5000, 300, "slide_01_02_0");

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/img/imgノーコントロール車の荷台から溢れる.jpg");

	DeleteAllSt(0,false);

	SceneIn(300, "slide_01_02_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/440100460fje">
「あ、これ……同人誌？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SceneOut(5000, 300, "slide_01_02_1");
	Delete("絵背景100");
	SceneIn(300, "slide_01_02_0");

	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/b21/440100470fjr">
「アタシたちは今それどころじゃないし。
　片付けてもらわないと――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]


//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/b21/440100480e06">
「あ！　あの！」

//【オタクＢ】

<voice name="オタクＢ" class="その他男声" src="voice/b21/440100490e06">
「それ、オレたちがやります！　なあ？」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/b21/440100500e05">
「あ、うん」

{	St("C",700, @50,@0,"bu恵那_通常_happy");
	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/440100510fje">
「本当ですか！？
　お願いしちゃっていいですか！？」

{
	DeleteAllSt(200,false);
}

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/b21/440100520e05">
「が、がんばります！」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/b21/440100530e05">
「ダベッター情報で追いかけてきて良かった……」

//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/b21/440100540e06">
「だな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2149);}


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]

{	St("C",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/440100550fje">
「それじゃ、こっちはいいとして……」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/440100560fje">
「村崎さん！
　運転、お願いします！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@50,"bu村崎_通常_happy");
	Move("@StNameL/L*", 200, @0, @-50, Dxl2, false);
	FadeSt("L",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/440100570msi">
「わかりましたァ！」


{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/440100580fje">
「ほら、千秋も乗って！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_朗らか_lost");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/440100590kit">
「ほえ？　ほえほえ？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/440100600fje">
「いいから！　ん――しょっと！」


//◆ＳＥ：ドン！　扉閉まる

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	DeleteAllSt(200,false);
	WaitKey(800);

	CreateSE("SE01","se動作_ドア閉める02");
	MusicStart("SE01",0,700,0,1000,null,false);

	WaitKey(1000);

//窓準備
	CreateAXLWindowEX("絵窓", "Y", 1600, 160, 256, false);
	WindowAXLZoom("絵窓", "Y", 0, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef_カット汎用01.jpg");
	Move("絵窓/絵演背景", 0, @0, @0, null, true);

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1530, center, middle, "cg/bu/bu村崎_通常_normal.png");
	CreateTextureEX("絵窓/絵演立絵2", 1530, center, middle, "cg/bu/bu村崎_通常_happy.png");
	Move("絵窓/絵演立*", 0, @0, @100, null, true);


//動作
	Fade("絵窓/絵演立絵", 200, 1000, null, false);
	WindowAXLZoom("絵窓", "Y", 200, 1000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{
//	St("C",700, @0,@0,"bu村崎_通常_normal");
//	FadeSt("C",200,true);
}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/440100610msi">
「乗りましたね？」

{
	Fade("絵窓/絵演立絵", 300, 0, null, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, true);
//	St("C",700, @0,@0,"bu村崎_通常_happy");
//	FadeSt("C",200,true);
}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b21/440100620msi">
「それじゃ、出発進行ー！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","seメカ_車_トラックエンジン_l");
	MusicStart("SE01",100,700,0,1000,null,true);

	WindowAXLZoom("絵窓", "Y",200, 0, Axl2, true);
	Delete("@絵窓*");

	PrintGO("上背景", 5000);
	CreateTextureSP("絵背景100", 50, Center, 0, "cg/bg/bg2401100空_上空_通常.jpg");
	FadeDelete("上背景", 2000, null, false);

	Wait(1000);

	SetVolumeEX("SE*", 3000, 0, null);
	SetVolumeEX("@x*", 3000, 0, NULL);

	WaitAction("@絵背景100", null);

	Wait(3000);

	SetVolumeEX("SE*", 300, 0, null);
	SetVolumeEX("@x*", 300, 0, NULL);
	WaitPlay("SE*", null);

	EndScene();
}
