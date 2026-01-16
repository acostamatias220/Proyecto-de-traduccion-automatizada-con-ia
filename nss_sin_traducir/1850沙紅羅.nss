
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1850沙紅羅.nss_MAIN
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
	$GameName = "1900沙紅羅.nss";

//■ムービー再生
	Quake_IsChaeck();
}

scene 1850沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="930">
////////////header////////////
//file name "1850沙紅羅.nss"
//title "Ｈｅｌｌｏ Ａｋｉｈａｂａｒａ！"
//previous "1840沙紅羅.nss"

////////////footer////////////
//next "沙紅羅" "1900沙紅羅.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1850);}

	SoundPlay("@xbgm02",0,450,true);

//◆ＥＶ："ev/ev1850沙紅羅アキバに立つ.txt"
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/ev/ev1850沙紅羅アキバに立つ.jpg");
	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ev/l/ev1850沙紅羅アキバに立つ_l.jpg");
	Move("絵背景100", 0, -502, -181, null, true);
	Request("絵背景100", Smoothing);
	Fade("絵背景100", 0, 1000, null, true);
	Zoom("絵背景100", 0, 1500, 1500, null, true);

	if($PreGameName=="1840沙紅羅.nss"){
	Move("絵背景100", 300, @0, 48, Dxl1, false);
	DrawDelete("上背景", 300, 100, null, "zzex_circle_01_00_1", true);
	}else{
	Move("絵背景100", 0, @0, 48, Dxl1, false);
	DrawDelete("上背景", 0, 100, null, "zzex_circle_01_00_1", true);
	}




	Wait(500);
//◆場所：秋葉原_中央通り
//	OnBG(10,"bg0103111秋葉原_中央通り_通常");
//	FadeBG(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200010skr">
「――来た！」

{	SetBlur("絵背景100", true, 2, 500, 50, false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200020skr">
「来た来た来た！」

{
	Move("絵背景100", 300, -512, -288, Dxl1, false);
	Zoom("絵背景100", 300, 500, 500, Dxl1, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200030skr">
「秋葉原！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200040skr">
「秋葉原！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200050skr">
「秋葉原！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200060skr">
「ってことは――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetBlur("絵背景100", false, 2, 500, 50, false);
	SetBlur("絵背景100", true, 2, 500, 50, false);
	Move("絵背景100", 300, 0, 0, null, false);
	Zoom("絵背景100", 300, 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200070skr">
「メイド！」

{	SetBlur("絵背景100", true, 2, 500, 50, false);
	Move("絵背景100", 300, -1024, -20, Dxl1, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200080skr">
「メイド！」

{	Move("絵背景100", 300, 0, 0, Dxl1, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200090skr">
「メイド！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	Move("絵背景100", 300, -512, -288, Dxl1, false);
	Zoom("絵背景100", 300, 500, 500, Dxl1, true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200100skr">
「すげえ！　テレビと同じだ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	OnBG(100,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);

	St("MR",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("MR",0,true);

	FadeDelete("絵背景*", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200110skr">
「ん、コレは……おでん缶！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200120skr">
「あー、確かコレも秋葉原名物だって言ってたな！」

{	St("MR",700, @0,@0,"bu沙紅羅_前のめり_happy");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200130skr">
「他には――」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200140skr">
「コスプレショップ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆演出指示：ストライプウィッチーズのコスプレ衣装
	CreateMask("マスク１", 200, -283, 0, "cg/mask/ciスラッシュ_05_00.png", false);

	CreateTextureEX("マスク１/絵背景100", 100, -1296, -367, "cg/ev/l/ev1850沙紅羅アキバに立つ_l.jpg");
	CreateTextureEX("絵背景枠100", 100, -283, Middle, "cg/mask/ciスラッシュ_05_01z.png");

	Fade("絵背景枠100", 300, 1000, null, false);
	Move("絵背景枠100", 300, -183, @0, Dxl2, false);
	Move("マスク１", 300, -183, @0, Dxl2, false);
	Fade("マスク１/絵背景100", 300, 1000, null, true);



	St("MR",700, @0,@0,"bu沙紅羅_通常_shy");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200150skr">
「い、いかにもマンガっぽい感じだな……」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200160skr">
「ん、いやでも待て……？
　この服、どっかで見たことあるような」

{	St("MR",700, @0,@0,"bu沙紅羅_後ろ向き_hard");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200170skr">
「確かさっきのパソコンに――」

{
	Move("絵背景枠100", 300, -283, @0, Axl2, false);
	Move("マスク１", 300, -283, @0, Axl2, false);
	Fade("絵背景枠100", 300, 0, null, false);
	Fade("マスク１/絵背景100", 300, 0, null, true);

	CreateSE("SE01","se擬音_ギャグ_ぴょこ");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("L",700, @-50,@0,"buロクローa_通常_shout");
	Move("@StNameL/L*", 200, @+50, @0, Dxl1, false);
	FadeSt("L",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/18/500200180rkr">
「はいはい、何か興味がおありですか！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1851);}


	TextBoxDelete(150);

	Delete("マスク１/絵*");
	Delete("マスク１");
	Delete("絵背景枠100");
	DeleteAllSt(200,true);


	St("MR",700, @-50,@0,"bu沙紅羅_通常_hard");
	Move("@StNameMR/MR*", 200, @+50, @0, Dxl1, false);
	FadeSt("MR",200,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200190skr">
「な、なんだてめぇ？　店員か！？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200200skr">
「悪いけど何も買えねぇぞ！　一文無しだかんな！」

{
	St("ML",700, @0,@0,"buロクローa_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/18/500200210rkr">
「ああ……一文無し！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200220skr">
「え？　なんで笑う？」

{	St("ML",700, @0,@0,"buロクローa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/18/500200230rkr">
「いやいや、でしたらお金が入り用でしょう？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buロクローa_通常_smile");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/18/500200240rkr">
「私なら、いいアルバイトご紹介できますよ！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200250skr">
「だ、だから誰なんだよおまえ！」

{	St("ML",700, @0,@0,"buロクローa_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/18/500200260rkr">
「ええ、私こういうものでございまして」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

//あきゅん「素材：objロクロー名刺」
	CreateTextureEX("絵背景名刺", 100, Center, Middle, "cg/obj/objロクロー名刺.png");
	Move("絵背景名刺", 0, @0, @100, null, true);

	CreateSE("SE01","se擬音_ギャグ_ぴょこ");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵背景名刺", 300, @0, @-100, Dxl1, false);
	Fade("絵背景名刺", 200, 1000, null, true);

	Wait(400);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060b]
　差し出された名刺を、沙紅羅は受け取る。

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200270skr">
（ええ、ぶい、監督？　ロクロー？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{
//	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("MR",200,true);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200280skr">
（ロクロー、ってのは名前だな？
　６人兄弟？　大家族だな）

{
//	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
//	FadeSt("MR",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200290skr">
（監督っつーからには、野球か？　映画か？
　ケンさんと知り合いだったりし……）

{
//	St("MR",700, @0,@0,"bu沙紅羅_頭かき_think");
//	FadeSt("MR",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200300skr">
（ってか、頭のええぶい？　って、何だ？
　なんかの略称？　でも、いったいなんの――）

{
//	St("ML",700, @0,@0,"buロクローa_通常_normal");
//	DeleteAllSt(200,false);
//	FadeSt("ML",200,true);
}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/18/500200310rkr">
「ところでお嬢さん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("絵背景名刺", 300, @0, @100, Axl1, false);
	FadeDelete("絵背景名刺", 300, null, true);


{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_shy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200320skr">
「お……お嬢さん？　アタシのことか？」

{	St("ML",700, @0,@0,"buロクローa_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/18/500200330rkr">
「もちろんですよ、お嬢さん！
　なかなかステキな格好ですねえ！」

{	St("MR",700, @0,@0,"bu沙紅羅_後ろ向き_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200340skr">
「ん？　あ、そうか……
　ふふふ、わかるかおまえにも！」

{	St("ML",700, @0,@0,"buロクローa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/18/500200350rkr">
「はい、もちろんです。
　ずいぶんお金、かかったんでしょう？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu沙紅羅_後ろ向き_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200360skr">
「おーよ！
　おかげでどんだけパチンコにつぎ込んだことか……」

{	St("ML",700, @0,@0,"buロクローa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/18/500200370rkr">
「ええ、何かと物入りな世の中ですしねぇ」

{	St("ML",700, @0,@0,"buロクローa_通常_smile");
	FadeSt("ML",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/18/500200380rkr">
「本当に価値のあるものには、お金がかかる……」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200390skr">
「ああ！　わかってくれんのか……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("MR",200,true);}

{	ClockPass(1852);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200400skr">
「ハッ！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200410skr">
（待ちに待った運命の人って、まさか……！？）

{	St("ML",700, @0,@0,"buロクローa_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/18/500200420rkr">
「ところで、ここら辺の衣装に興味がおありで？」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_shy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200430skr">
「え……ええ、ちょっと」

{	St("ML",700, @0,@0,"buロクローa_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/18/500200440rkr">
「ストライプウィッチーズ・マジカル・ガールズ。
　人気のゲームですからねぇ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	St("MR",700, @0,@0,"bu沙紅羅_前のめり_happy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200450skr">
「す……ストラ！？
　今なんて言ったんすか！？」

{	St("ML",700, @0,@0,"buロクローa_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/18/500200460rkr">
「ええ、ですからストライプウィッチーズ――」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200470skr">
「や！　やったあ…………見つけたぞ！」

{	CreateSE("SE01","se擬音_ギャグ_じゃじゃーん");
	St("MR",700, @0,@0,"bu沙紅羅_前のめり_happy");
	FadeSt("MR",200,true);
	MusicStart("SE01",0,700,0,1000,null,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200480skr">
「『ストラ』いぷういっちーず！
　これが……アタシのラッキーアイテム！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu沙紅羅_通常_shy");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200490skr">
「ってことは、ロクローさん！
　あなたが、アタシの運命の人――」

{	St("ML",700, @0,@0,"buロクローa_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/18/500200500rkr">
「その通り！」

{	DeleteSt("ML",200,true);}
　ロクローは沙紅羅の瞳を真っ直ぐに見つめ――

　手に、何かを乗せた。

{	St("MR",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200510skr">
「え？　な、な……コレは！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 500, 0, null);
	TextBoxDelete(150);

	DeleteAllSt(200,true);

//あきゅん「素材：img縞パン」

	CreateSE("SE01","se擬音_ギャグ_ドッキーン");

	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/img/img縞パン.jpg");
	Zoom("絵背景100", 300, 1300, 1300, Dxl1, false);
	Fade("絵背景100", 300, 1000, null, true);
	Zoom("絵背景100", 300, 1000, 1000, Axl1, true);
	Shake("絵背景100", 500, 5, 5, 0, 0, 1000, Dxl1, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	EffectZoom(10000, 500, 300, "cg/img/img縞パン.jpg", true);

	Wait(200);

	CreateSE("SE11","seガヤ_街中_l");
	MusicStart("SE11",2000,700,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200520skr">
「パンツ！？」

//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/18/500200530rkr">
「縞パンです！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	FadeDelete("絵背景100", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("ML",700, @0,@0,"buロクローa_通常_normal");
	FadeSt("ML",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/18/500200540rkr">
「衣装代は私たちが負担します！」

{	St("ML",700, @0,@0,"buロクローa_通常_smile");
	FadeSt("ML",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/18/500200550rkr">
「さあ、アダルトビデオ界のトップスターに！！」

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200560skr">
「あだると……びでお？？　ええ、ぶい……！」

{	St("ML",700, @0,@0,"buロクローa_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/18/500200570rkr">
「はい、私近年パロディＡＶで活躍しておりまして。
　ＡＶ男優ロクローって、結構すごいんですよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/18/500200580rkr">
「これからこのビルで新作イベントがあったり、ええ」

{	St("ML",700, @0,@0,"buロクローa_通常_smile");
	FadeSt("ML",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/18/500200590rkr">
「で、私が次の題材に選んだアニメ作品！
　それがこの『ストライプウィッチーズ』なのです！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_shy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200600skr">
「…………！！」

{	St("ML",700, @0,@0,"buロクローa_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/18/500200610rkr">
「そんなマイナーコスプレしてないで！
　時流に乗って、天下を獲りましょう！」

//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/18/500200620rkr">
「さあ！　一緒にあの決め台詞を！　せーのッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	CreateSE("SE01","se擬音_ギャグ_爆発");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE11", 200, 0, null);
	DeleteAllSt(200,true);
	St("C",700, @0,@50,"buロクローa_通常_angry");
	Request("@StNameC/C*", Smoothing);
	Zoom("@StNameC/C*", 200, 1300, 1300, Dxl1, false);
	Shake("@StNameC/C*", 2000, 2, 0, 0, 0, 1000, Dxl1, false);
	FadeQ($C_次,0,0,200,0,50,Dxl1,false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/18/500200630rkr">
「縞パンなので恥ずかしくないもんッ！！」

{	SetVolumeEX("SE*", 100, 0, null);
	DeleteAllSt(150,false);
	St("C",700, @0,@0,"fu沙紅羅_通常_rage");
	Shake("@StNameC/C*", 150, 15, 0, 0, 0, 1000, Dxl1, false);
	FadeQ($C_次,0,0,150,0,50,Dxl1,false);
	FadeSt("C",150,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200640skr">
「恥ずかしいわあああああああああああッ！！！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＥＶ："ev/ev0000沙紅羅木刀アタック.txt"

	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ev/ev0000沙紅羅木刀アタック.jpg");
	Zoom("絵背景100", 0, 1200, 1200, null, true);
	SetBlur("絵背景100", true, 3, 500, 100, false);
	CreateTextureEX("絵背景1000", 1100, Center, Middle, "cg/ef/ef木刀剣閃a.jpg");
	SetBlur("絵背景1000", true, 3, 500, 50, false);
	CreateTextureEX("絵背景六", 1510, Center, 0, "cg/bu/buロクローa_通常_cry.png");

	CreateSE("SE01","se戦闘_風切り音10");
	CreateSE("SE02","se戦闘_打撃音03");
	MusicStart("SE01",0,700,0,1000,null,false);


	Zoom("絵背景100", 300, 1000, 1000, Dxl1, false);
	Fade("絵背景100", 300, 1000, Dxl1, true);

	MusicStart("SE02",0,700,0,1000,null,false);
	Zoom("絵背景1000", 200, 1500, 1500, Dxl1, false);
	Fade("絵背景1000", 200, 1000, Dxl1, true);
	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);


//◆ＳＥ：ドカバキ

	CreateSE("SE05","se戦闘_殴打連続02");
	MusicStart("SE05",0,1000,0,1000,null,false);


	Delete("絵背景100");
	Delete("絵背景1000");
	DeleteAllSt(0,true);

	CreateColorSP("フラッシュ黒", 1500, "Black");

	Fade("絵背景六", 0, 1000, null, true);
	Shake("絵背景六", 300, 10, 15, 0, 0, 1000, null, false);
	Move("絵背景六", 300, @0, @300, Axl1, false);
	Zoom("絵背景六", 300, 2000, 2000, Dxl2, false);
	Fade("フラッシュ白",50,0,null,true);

	Wait(100);

	Fade("フラッシュ白",50,1000,null,true);

	Delete("絵背景六");

	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");

	Wait(200);

	Fade("フラッシュ黒",1500,0,null,true);
	Delete("フラッシュ黒");


	CreateSE("SE10","seガヤ_街中_l");
	MusicStart("SE10",2000,700,0,1000,null,true);


	Wait(1000);
	SetVolumeEX("SE0*", 500, 0, null);
	Wait(300);


	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);


{	ClockPass(1853);}




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200650skr">
「ったく。人のトップクバカにした上に――」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200660skr">
「アタシに……あだると・びでお……出ろとか……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200670skr">
「なんて……腐れ外道だッ！」

{	DeleteSt("C",200,true);}
　沙紅羅は吐き捨てながら、道路脇に停めた愛車へ。

{	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200680skr">
「あー、クソ！　さっさととーじんぼー回収して――」

{	DeleteAllSt(200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/500200690fjh">
「はあん？　金閣寺いいい？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu沙紅羅_後ろ向き_hard");
	FadeQ($MR_次,0,0,200,0,30,Dxl1,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200700skr">
「んだぁ？　呼んだか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

//◆演出指定：画面に富士見平次が出る
	St("C",700, @+50,@0,"bu平次_通常_hard");
	Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);

	Wait(700);

	DeleteAllSt(200,true);

	Wait(200);

	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0171]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200710skr">
「ゲ！」

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200720skr">
「アレは……警官？」

　片手にロボット柄のエコバッグを持った中年警官が、携帯電話に向かって呆れ顔で話しかける。

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu平次_通常_normal");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/500200730fjh">
「あのなぁ、ブラパンよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("ML",700, @0,@0,"bu平次_通常_normal");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/500200740fjh">
「こちとらな、この道３０年のベテランだ。熟練の味」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/500200750fjh">
「オマケに生まれも育ちも秋葉原と来てる。地元民だな」

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/500200760fjh">
「そのオレがだ、この秋葉原にあるわきゃねぇ金閣寺を見落とす――」

{
	SetVolumeEX("SE*", 100, 0, null);
	Wait(300);

	CreateSE("SE01","se擬音_平次閃く");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("ML",700, @0,@0,"bu平次_通常_shock");
	Shake("@StNameML/ML*", 200, 15, 5, 0, 0, 1000, Dxl1, false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/500200770fjh">
「いた――――――――ッ！」

{
	SoundPlay("@xbgm03",0,450,true);
	DeleteSt("ML",200,false);
	St("MR",700, @-50,@0,"bu沙紅羅_通常_surprise");
	Move("@StNameMR/MR*", 200, @+50, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200780skr">
「ヤベッ！　見つかった！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	St("C",700, @0,@0,"bu平次_御用だ_shout");
	FadeSt("C",200,false);
	Shake("@StNameC/C*", 200, 15, 5, 0, 0, 1000, Dxl1, false);
	Zoom("@StNameC/C*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameC/C*", 100, 1000, 1000, Axl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/500200790fjh">
「コラ待てぇいっ！」

{
	DeleteAllSt(200,true);

	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200800skr">
「誰が待つかァッ！！」

//◆ＳＥ：原付走る
{
	CreateSE("SE03","seメカ_バイク_発進");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Move("@StNameC/C*", 200, @-250, @0, Axl2, false);
	DeleteAllSt(200,true);

	Wait(300);
	St("C",700, @0,@0,"bu平次_御用だ_angry");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/500200810fjh">
「タイホだあああああッ！！
　大人しく、この富士見平次のお縄につきやがれッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

//◆ＳＥ：急ブレーキの音とか

	CreateSE("SE01","seメカ_バイク_急停止");
	CreateSE("SE02","seメカ_バイク_エンジン加速");
	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景信号黄", 100, -1024, Middle, "cg/bg/l/bg2502200信号機_見上げ_黄標識無_l.jpg");
	CreateTextureEX("絵背景信号赤", 100, -1024, Middle, "cg/bg/l/bg2502300信号機_見上げ_赤標識無_l.jpg");
	#bg2501200信号機_見上げ_黄 = true;
	#bg2501300信号機_見上げ_赤 = true;

	Move("絵背景信号*", 2000, 0, @0, AxlDxl, false);

	FadeDelete("絵板写", 300, null, true);
	Wait(500);
	Fade("絵背景信号赤", 0, 1000, null, true);

	Wait(1000);

//◆演出指定：原付乗りながら
	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

//◆時間：ジャンプ
{	ClockPass(1859);}

	Delete("絵背景信号*");

	Wait(2000);

	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/ef/efバイク走行表現背景.jpg");
	MoveFFP1("@絵演背景",50);

	CreateTextureSPover("道線", 101, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	TurboBlur("@道線");

	Zoom("絵演背景", 0, 2000, 2000, null, true);

	CreateSE("SEL01","seメカ_バイク_走行_l");
	MusicStart("SEL01",2000,400,0,1500,null,true);

	WaitKey(2000);

	SetFrequency("SEL01", 3000, 1300, AxlDxl);
	//FadeDelete("上背景", 0, null, true);
	DrawDelete("黒幕１", 200, 100, Dxl1, "zzex_circle_01_00_1", false);
	Zoom("絵演背景", 200, 1100, 1100, Dxl1, true);
	Wait(1000);

	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200820skr">
「な……なんだったんだあのおっさん」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200830skr">
「足袋なのに、信じられねースピードだし。
　信号変わんなかったらヤバかったな……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200840skr">
「ったく、一難去ったらまた一難ってのはこのこと……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm03", 1000, 300, null);
	SetVolumeEX("SEL01", 1000, 250, null);

	TextBoxDelete(150);

//◆演出指定：地震
	CreateSE("SE01","se動作_走る04_l");
	MusicStart("SE01",0,1500,0,1000,null,false);
	CreatePlainSP("揺用", 109);
	Shake("揺用", 1500, 50, 35, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 1500, 0, Axl2, true);
	Delete("揺用");

	SetVolumeEX("SE01", 1000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0201]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200850skr">
「うぉっ！　たっ！　うわっ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200860skr">
「ちょ――なんだ、地震！？」

{
	CreateSE("SE01","se動作_走る04_l");
	MusicStart("SE01",0,1500,0,1000,null,false);
	CreatePlainSP("揺用", 109);
	Shake("揺用", 2500, 50, 35, 0, 0, 1000, Dxl1, false);
	Wait(300);
	SetVolumeEX("SE01", 4000, 0, Axl2);
	Fade("揺用", 2500, 0, Axl2, false);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200870skr">
「ぬおおおおっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//窓準備
	CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 1520, Center, Middle, "cg/bg/bg1901100ショウビル_正面_通常.jpg");
	Zoom("絵窓/絵演背景", 0, 2000, 2000, null, true);
	Move("絵窓/絵演背景", 0, @0, @100, null, true);
	SetShade("絵窓/絵演背景", HEAVY);

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵ミリ", 10100, center, middle, "cg/bu/buミリＰa_ショータイム_angry.png");
	CreateTextureEX("絵窓/絵演立絵バリ", 10090, center, middle, "cg/bu/buＡＤ_通常_shock.png");
	Move("絵窓/絵演立絵ミリ*", 0, @0, @0, null, true);
	Move("絵窓/絵演立絵*", 0, @0, @70, null, true);


	CreateTextureEX("絵背景枠01", 12000, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 12000, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");

	CutInLine02("@絵背景枠*");

//枠動作
	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 200, @0, 80, Dxl2, false);
	Move("絵背景枠02", 200, @0, 464, Dxl2, false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

//キャラ動作
	Move("絵窓/絵演立絵バリ", 300, @300, @0, Dxl2, false);
	Fade("絵窓/絵演立絵バリ", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0211]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/18/500200880adi">
「きゃああッ！　落ちるッ！！」

{
	Move("絵窓/絵演立絵ミリ*", 300, @-300, @0, Dxl2, false);
	Fade("絵窓/絵演立絵ミリ", 300, 1000, null, true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/18/500200890mrp">
「な、なんとかなさいっ！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200900skr">
（落ちる――？）

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/18/500200910adi">
「危ないッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("SE*", 200, 0, null);
	SetVolumeEX("@xbgm*", 200, 0, null);

	Move("絵背景枠01", 100, @0, 262, null, false);
	Move("絵背景枠02", 100, @0, 262, null, false);
	Zoom("絵窓", 100, 1000, 0, null, true);
	Fade("絵背景枠*", 100, 0, null, true);
	Delete("絵窓*");
	CutInLineStop02();
	Delete("絵背景枠*");
	Delete("揺用");

//◆演出指定：ＵＰ＋の歩道橋から落下するソトカンダー
//あきゅん「素材：imgソトカンダー落下」

	CreateSE("SE01","se戦闘_風切り音10");


	CreateTextureEX("絵背景1000", 2000, Center, Middle, "cg/bg/bg1901100ショウビル_正面_通常.jpg");
	CreateTextureEX("絵背景10000", 2000, Center, Middle, "cg/img/imgソトカンダー落下.jpg");
	Request("絵背景10000", Smoothing);
	Zoom("絵背景10000", 0, 1500, 1500, null, true);
	SetBlur("絵背景10000", true, 2, 500, 100, false);

	MoveFTP3("@絵背景10000", 1000, 6, 5);

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵背景10000", 500, 1000, null, true);
	Delete("絵背景50");
	Delete("絵背景100");
	MoveFFP1stop();
	Request("ProTurboBlur", Stop);
	Delete("Pro*");
	Delete("絵演*");
	Delete("道線");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200920skr">
「うおッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	Zoom("絵背景10000", 300, 1100, 1100, Dxl1, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0226]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/500200930skr">
「なんだありゃああああああッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：急ブレーキ！！
	CreateSE("SE01","seメカ_バイク_急停止");
	MusicStart("SE01",0,1500,0,1000,null,false);

	CreateColorEX("フラッシュ白", 20000, "Black");
	Zoom("絵背景10000", 300, 5500, 5500, Axl1, false);
	Fade("フラッシュ白",300,1000,null,true);

	Wait(1000);

	SetVolumeEX("SE*", 3000, 0, null);
	Wait(3000);

	WaitPlay("SE01", null);

	PrintBG("上背景", 30000);
	ClockDelete(0,true);
	Delete("上背景");

	EndScene();
}
