

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2340千秋_恵那.nss_MAIN
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

	if($CharaName=="千秋"){
		$GameName = "2350沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss";
	}else if($CharaName=="恵那"){
		$GameName = "2350沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss";
	}else{
		$GameName = "2350沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss";
	}

}

scene 2340千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1730">
////////////header////////////
//file name "2340千秋_恵那.nss"
//title "富士見式捕縛術"
//previous "2330千秋_恵那.nss"

////////////footer////////////
//next "千秋" "2350沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss"
//next "恵那" "2350沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);

{	ClockPass(2340);}


//◆場所：エレキセンター_ジャガンナート
	OnBG(10,"bg0902100エレキセンター_ジャガンナート_通常");
	FadeBG(0,true);

	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400400010fje">
「……黒幕は、あなただったわね」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400400020fje">
「ジャブルさん」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	SoundPlay("@xbgm04",2000,450,true);


{	DeleteAllSt(200,false);}

	CreateMaskAXLSP("絵マ", 800, 0, 0, "ciスラッシュ_05_00", true, "ciスラッシュ_05_00z");
	CreateColorSP("絵マ/色", 720, "#cc3300");//952
	CreateTextureSPadd("絵マ/絵背景", 720, -300, 0, "cg/ef/ef003_汎用移動.jpg");

	CreateTextureSP("絵マ/絵立_normal", 721, -116, -4, "cg/bu/buジャブル_通常_cool.png");//ML-16,-4
	CreateTextureEX("絵マ/絵立_pride", 721, -116, -4, "cg/bu/buジャブル_通常_pride.png");//ML-16,-4
	Move("絵マ/*", 0, @-1024, 0, null, false);
	Move("絵マ*", 0, -1024, 0, null, true);

	Move("絵マ/*", 200, @1024, 0, Dxl3, false);
	Move("絵マ*", 200, 0, 0, Dxl3, true);
	SoundPlay("@xbgm24",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]

//	St("ML",700, @-100,@0,"buジャブル_通常_cool");
//Move("@StNameML/ML*", 200, @100, @0, Dxl1, false);
//	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400030jbr">
「その通り。オレが河原屋双一の代理人だ」


{	DeleteAllSt(200,true);}
{	St("R",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("R",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/400400040kit">
「ど、どういうこと！？
　インド人がペラペラ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
{	DeleteAllSt(200,false);}
	Fade("絵マ/絵立_normal", 200, 0, Axl3, false);
	Fade("絵マ/絵立_pride", 200, 1000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//	St("ML",700, @0,@0,"buジャブル_通常_pride");
//	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400050jbr">
「インド人ってのは偽装だよ」

//	St("C",700, @0,@0,"buジャブル_通常_cool");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400060jbr">
「ここまでしゃべり方を変えれば、同一人物とは疑われないだろう？」

//	DeleteAllSt(200,false);}
{	St("R",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("R",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400400070fje">
「で、あなたの要求は？」

{	DeleteAllSt(200,false);}
//	St("ML",700, @0,@0,"buジャブル_通常_cool");
//	FadeSt("ML",200,true);}
{	Fade("絵マ/絵立_pride", 200, 0, Axl3, false);
	Fade("絵マ/絵立_normal", 200, 1000, Dxl2, true);
}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400080jbr">
「アザナエルを、渡してもらおう」

//	DeleteAllSt(200,false);}
{	St("R",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("R",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/400400090kit">
「アザナエル？　そんなもん――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	DeleteAllSt(200,true);}
//◆音声指示：覆い被せるように
{	St("R",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("R",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400400100fje">
「へぇ！　アザナエル、欲しいんだ。
　で、何をするつもりなの？」

{	DeleteAllSt(200,false);}
//	St("ML",700, @0,@0,"buジャブル_通常_pride");
//	FadeSt("ML",200,true);}
{	Fade("絵マ/絵立_normal", 200, 0, Axl3, false);
	Fade("絵マ/絵立_pride", 200, 1000, Dxl2, true);
}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400110jbr">
「もちろん、願いを叶えるんだよ」

{	CreateTextureEX("絵マ/絵立2_angry", 720, -238, -94, "cg/bu/bu平次_通常_angry.png");//L-238,-94
	Move("絵マ/絵立2_angry", 0, @-300, @0, Dxl3, true);

	Fade("絵マ/絵立2_angry", 200, 1000, Dxl2, false);
	Move("絵マ/絵立2_angry", 200, @300, @0, Dxl3, false);
	Move("絵マ/絵立_*", 200, @300, @0, Dxl3, false);
	Move("絵マ/絵背景", 200, @300, @0, Dxl3, true);
}
//	DeleteAllSt(200,false);}
//	St("L",700, @-100,@0,"bu平次_通常_angry");
//Move("@StNameL/L*", 200, @100, @0, Dxl1, false);
//	FadeSt("L",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/400400120fjh">
「はぁ？　ふざけんじゃねぇ！
　誰がてめぇなんかの願いを――」

{	Move("絵マ*", 200, -200, 0, Dxl1, false);
	Move("絵マ/*", 200, @-200, @0, Dxl1, false);
	Fade("絵マ*", 200, 0, null, false);
	Fade("絵マ/*", 200, 0, null, false);
}
//	DeleteAllSt(200,false);}
{	St("MR",700, @100,@0,"bu恵那_通常_angry");
Move("@StNameMR/MR*", 200, @-100, @0, Dxl1, false);
	FadeSt("MR",200,true);}
{	Delete("絵マ*");}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400400130fje">
「父さんは黙ってて！
　私は、ジャブルさんと話してるの」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("MR",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400400140fje">
「あなたはアザナエルを使って、完璧に河原屋双一に成り代わろうとしてる――そう、推理したこともあるわ」

//	St("MR",700, @0,@0,"bu恵那_一休_think");
//	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400400150fje">
「でも、何かが違う」

//	St("MR",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400400160fje">
「あなたがもし河原屋組を乗っ取りたいんだったら、こんな回りくどくカゴメアソビをする必要がない」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400400170fje">
「ねえ、ジャブルさん。
　あなたの本当の望みは――いったい何なの？」

{	DeleteAllSt(200,true);}
//	St("ML",700, @0,@0,"buジャブル_通常_pride");
//	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400180jbr">
「ふふ……ふふふふ……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2341);}


	TextBoxDelete(150);
WaitKey(500);

//◆ＳＥ：ドン！　遠くから爆音

	CreateSE("SE01","se戦闘_爆発02");
	MusicStart("SE01",0,300,0,1000,null,false);

	CreateTextureSP("絵ゆれ", 100, Center, Middle, "cg/bg/bg0902100エレキセンター_ジャガンナート_通常.jpg");

	Shake("絵ゆれ", 1000, 2, 6, 0, 0, 500, Axl3, true);
	Delete("絵ゆれ");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400400190fje">
「な――なに？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @-50,@0,"buジャブル_通常_cool");
Move("@StNameML/ML*", 200, @50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400200jbr">
「『籠』の壁を破った」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/400400210kit">
「破ったって、そんな――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	DeleteAllSt(200,false);}
{	St("R",700, @200,@0,"buユージローb_通常_hard");
Move("@StNameR/R*", 200, @-200, @0, Dxl1, false);
	Shake("@StNameR/R*", 200, 0, 30, 0, 0, 500, Axl3, false);
	FadeSt("R",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/400400220ujr">
「わうぅっ！！」

{Move("@StNameR/R*", 200, @-200, @0, Dxl1, false);
	Shake("@StNameR/R*", 200, 0, 30, 0, 0, 500, Axl3, false);
}
{	DeleteAllSt(200,false);}

{	St("MR",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/400400230kit">
「ちょッ！　ユージロー！！」

{Move("@StNameR/R*", 200, @-200, @0, Dxl1, false);
	Shake("@StNameR/R*", 200, 0, 30, 0, 0, 500, Axl3, false);
	DeleteAllSt(200,false);}
{	St("C",700, @100,@0,"bu恵那_ハルヒ_angry");
Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400400240fje">
「ちょっと、なにするの！？
　まだあそこには、沙紅羅さんと双六も――」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buジャブル_通常_pride");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400250jbr">
「オレの計算が正しければ、問題ない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400400260fje">
「……計算って、なによ」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	DeleteAllSt(200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]

{	St("C",700, @0,@0,"buジャブル_通常_cool");
	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400270jbr">
「昔から、計算は得意でね」

{	St("C",700, @0,@0,"buジャブル_通常_pride");
	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400280jbr">
「それもただの計算じゃない。たくさんの要素が絡み合い、関係し合う、とても複雑な計算だ」

//	St("C",700, @0,@0,"buジャブル_通常_cool");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400290jbr">
「糸と糸が織りなす複雑な模様――
　もちろん、それぞれの糸の模様は単純だ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("C",700, @0,@0,"buジャブル_通常_cool");
	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400300jbr">
「だが、そこから生まれる布のパターンは、目眩がする」


//	St("C",700, @0,@0,"buジャブル_通常_cool");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400310jbr">
「あの時、もし蝶が羽ばたいていなかったら？」

//	St("C",700, @0,@0,"buジャブル_通常_cool");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400320jbr">
「時にはそんな小さな違いが、ドミノのように次の事件を引き起こし、巨大な破滅を巻き起こすことがある」

//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400330jbr">
「もしその因果を見通せたら、どうなる？」

//	St("C",700, @0,@0,"buジャブル_通常_cool");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400340jbr">
「オレはただ、信号の色を変えただけ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//	St("C",700, @0,@0,"buジャブル_通常_cool");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400350jbr">
「それがきっかけで、ひとりの男が警察の手を逃れ、ひとりの男を殺し、殺人の罪を組長が被せられ――」

{	St("C",700, @0,@0,"buジャブル_通常_pride");
	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400360jbr">
「この街が、オレのものになる――なんてことも、あり得るわけだ」

{	CreateSE("SE01","se動作_キーボード01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
{	DeleteAllSt(200,true);}
　ジャブルが無言で、手元のパソコンに指を奔らせる。


{	CreateTextureEX("絵背景p10", 710, Center, Middle, "cg/bg/bg0108200秋葉原_俯瞰_閉店.jpg");

	CreateTextureEX("絵背景pエ", 1000, Center, Middle, "cg/ef/efテレビ画面用効果フィルター.jpg");
	Request("絵背景pエ",AddRender);

	Fade("@絵背景pエ", 200, 300, null, false);
	Fade("@絵背景p10", 200, 1000, null, true);
}
　その途端、店内中のモニタが街の様子を映し出す。



//	St("C",700, @0,@0,"buジャブル_通常_hard");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400370jbr">
「ネットを漁れば、裏の世界を辿れば、年齢、性別、職業、嗜好、あらゆる個人情報が手に入る」

//	St("C",700, @0,@0,"buジャブル_通常_pride");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400380jbr">
「まして、ここは秋葉原だ。
　街にどれだけのカメラがあると思う？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//	St("C",700, @0,@0,"buジャブル_通常_cool");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400390jbr">
「防犯カメラをハッキング？　ナンセンスだ。
　今や携帯電話ひとつで、画像が中継できる」

{	CreateTextureSP("絵背景p11", 709, Center, Middle, "cg/ev/ev2120ノーコ告白c.jpg");
	FadeDelete("@絵背景p10", 200, null, true);
}
//	St("C",700, @0,@0,"buジャブル_通常_cool");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400400jbr">
「いや、カメラになど頼らずともいい。
　例えば――今夜、秋葉原に現れたナイフのゴスロリ少女」

//	St("C",700, @0,@0,"buジャブル_通常_cool");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400410jbr">
「ダベッターの目撃情報を辿るだけで、おおよその足跡は辿れる」

{	CreateTextureSP("絵背景p12", 708, Center, Middle, "cg/ev/ev1900恵那アザナエル発見.jpg");
	FadeDelete("@絵背景p11", 200, null, true);
}
//	St("C",700, @0,@0,"buジャブル_通常_cool");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400420jbr">
「本気を出せば、この街でなにが起こっているのか、知ることくらいは容易いさ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	DeleteAllSt(0,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",0,true);}
	FadeDelete("@絵背景p*", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//	DeleteAllSt(200,false);}
//	St("MR",700, @0,@0,"bu恵那_通常_angry");
//	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400400430fje">
「馬鹿げてる」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"buジャブル_通常_cool");
	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400440jbr">
「おまえの名前は――富士見恵那」

//	St("C",700, @0,@0,"buジャブル_通常_cool");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400450jbr">
「１週間前、何者かにブルマーを盗まれた」

//	St("C",700, @0,@0,"buジャブル_通常_cool");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400460jbr">
「今日は本来、幼馴染みの小碓千秋と共に、半田明神まで御札を納めに行く予定だった」

{	St("C",700, @0,@0,"buジャブル_通常_pride");
	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400470jbr">
「これは毎年の恒例行事だったからな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//	St("C",700, @0,@0,"buジャブル_通常_cool");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400480jbr">
「流れているメールを盗み見るだけで、これだけのことがわかる」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400400490fje">
「ああ、そう。それで？
　それがわかったからどうだっていうの？」


{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"buジャブル_通常_cool");
	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400500jbr">
「ところが小碓千秋は、ブル――」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@100,"bu千秋_頭突き_rage");
Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	Shake("@StNameC/C*", 1000, 6, 0, 0, 0, 500, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/400400510kit">
「わあああああああああ――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2342);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"buジャブル_通常_cool");
	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400520jbr">
「……とある事情で、女装したまま、スーパーノヴァのバイトをする必要が生じてしまった」

//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400530jbr">
「キャンセルのメールを送られた君が、どんな気持ちで半田明神に向かったのか、容易に想像はつく」

//	St("C",700, @0,@0,"buジャブル_通常_cool");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400540jbr">
「結界を解く寸前にトラブルが起き、崩れ落ちてしまった岩盤、秋葉原を局所的に襲う地震、消えたアザナエル――」

//	St("C",700, @0,@0,"buジャブル_通常_cool");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400550jbr">
「父親へのコンプレックスを持つ君が、自分の欲望を満たすため、アザナエルを持ち出すことは充分――」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400400560fje">
「だからって、物事に関与することは出来ない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"buジャブル_通常_cool");
	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400570jbr">
「今日、秋葉原ではたくさんの『都合のいい』出来事が起こった」

{	St("C",700, @0,@0,"buジャブル_通常_pride");
	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400580jbr">
「それが神の『偶然』ではなく、人の手によって引き起こされたものだとしたら？」

//	St("C",700, @0,@0,"buジャブル_通常_cool");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400590jbr">
「河原屋双六にオレのナビゲーションがなければ、彼は恐らくなにも事件を起こすことができなかった」

{	St("C",700, @0,@0,"buジャブル_通常_cool");
	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400600jbr">
「――どうも、最後は愛の力に屈して、命令を無視したらしいがね」

{	DeleteAllSt(200,true);}
　ジャブルは渋い顔で、ブラックアウトした手元のモニタを見つめる。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("C",700, @0,@0,"buジャブル_通常_pride");
	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400610jbr">
「その他にも例えば――そうだな」

//	St("C",700, @0,@0,"buジャブル_通常_cool");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400620jbr">
「都合のいいタイミングで見つかった、似鳥の同人誌。
　それは橘正純のＰＣがあったからこそ、可能だった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	DeleteAllSt(200,true);}
//objノートＰＣ.png

	CreateTextureEX("絵演物", 1010, Center, Middle, "cg/obj/objノートＰＣ.png");
	Move("絵演物", 0, @0, @120, null, true);

	Move("絵演物", 300, @0, @-120, Dxl1, false);
	Fade("絵演物", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0152]
　ジャブルは、スマガのキャラクターがプリントされたノートＰＣを指さして、笑う。


{	FadeDelete("絵演物", 500, null, true);
	St("C",700, @0,@0,"buジャブル_通常_pride");
	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400630jbr">
「驚くほど早く拡散した、年越しライブの情報。
　なぜかネット通販でブーに届けられた、ブラックライト」


{	St("C",700, @0,@0,"buジャブル_通常_cool");
	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400640jbr">
「予想外の出来事もある。
　正直、細やかな調整には手を焼かされた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400650jbr">
「例えば今だって――本当ならばもう少し、似鳥に妨害のメールを送るつもりだったのだが」

{	St("C",700, @0,@0,"buジャブル_通常_cool");
	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400660jbr">
「一番結果が予想できないのは、人間と人間の『出会い』だ。特にあの、沙紅羅だな」

//	St("C",700, @0,@0,"buジャブル_通常_cool");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400670jbr">
「あの女と出会ったことで、千秋が、似鳥が、フウリが変わった。恐らく他にも影響はあるだろう」

{	St("C",700, @0,@0,"buジャブル_通常_pride");
	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400680jbr">
「だがそれも、過去のこと。
　後は、最後の仕上げだけ」

{	St("C",700, @0,@0,"buジャブル_通常_mad");
	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400690jbr">
「この仕上げが成功すれば、オレは河原屋組を完全に手中に収めることになる」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400400700fje">
「……河原屋組を乗っ取るために、こんなことを？」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"buジャブル_通常_pride");
	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400710jbr">
「オレが望むのは、糾える禍福の縄を、思うがままに操ること――運命を、操ること」

{	St("C",700, @0,@0,"buジャブル_通常_mad");
	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400720jbr">
「それ自体が、楽しいのさ」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400400730fje">
「……全然、答えになってないわ」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400400740fje">
「あなたは何故、カゴメアソビを何度も行ったの？」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"buジャブル_通常_cool");
	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400750jbr">
「それを推理するのがおまえの役目だよ、名探偵」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400400760fje">
「…………」

{	SetVolume("@xbgm*", 3000, 0, null);}
{	DeleteAllSt(200,false);}

{	St("C",700, @0,@0,"buジャブル_通常_hard");
	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400770jbr">
「さあ、もういいだろう？」

//	St("C",700, @0,@0,"buジャブル_通常_cool");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400780jbr">
「アザナエルを、渡してもらおうか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);





//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400400790fje">
「ええ、聞くだけのことは、聞いたからね」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400400800fje">
「本当のことを言うと、アザナエルは――」

{	DeleteAllSt(200,false);
	St("C",700, @50,@0,"bu千秋_通常_normal");
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);
	SoundPlay("@xbgm11",0,450,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/400400810kit">
「アザナエルは、ここにある」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400400820fje">
「え……！？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buジャブル_通常_cool");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400830jbr">
「ほう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400400840fje">
「なんでアンタがホントに持ってるの！？
　沙紅羅さんが取り戻すんじゃ――」


{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buジャブル_通常_pride");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400850jbr">
「計算通りだな」

//	St("C",700, @0,@0,"buジャブル_通常_cool");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400860jbr">
「メールを打って、見逃したが……
　やはり、おまえたちが取り戻していたか」



{	DeleteAllSt(200,false);}

{	St("C",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/400400870kit">
「恵那。今日のラッキーアイテム、憶えてるな？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400400880fje">
「ラッキーアイテム？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buジャブル_通常_cool");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400890jbr">
「なにをわけのわからないことを言っている？」

{	St("ML",700, @0,@0,"buジャブル_通常_pride");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400900jbr">
「さあ、早く寄越すんだ！！」


{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/400400910kit">
「まず、恵那のオヤジさんを離せ！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buジャブル_通常_hard");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400920jbr">
「アザナエルを、渡してからだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2343);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/400400930kit">
「だめだ。オヤジさんはまともに動けない。
　先に、解放してもらう」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buジャブル_通常_hard");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400940jbr">
「…………」

{	St("ML",700, @0,@0,"buジャブル_通常_cool");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400950jbr">
「やれやれ、つい先日までとは大違いだ」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/400400960kit">
「いいから、早く！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buジャブル_通常_pride");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400970jbr">
「いいだろう。
　ではまず、床にアザナエルを置け」

//	St("C",700, @0,@0,"buジャブル_通常_cool");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400400980jbr">
「そのままおまえたちが離れたら、平次を解放して、アザナエルを取りに行く」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/400400990kit">
「いいだろう」

{	DeleteAllSt(200,false);}
{	St("L",700, @-200,@0,"bu平次_通常_angry");
Move("@StNameL/L*", 200, @200, @0, Dxl1, false);
	FadeSt("L",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/400401000fjh">
「バカ野郎！　やめろ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	DeleteAllSt(200,false);}
{	St("R",700, @200,@0,"bu恵那_通常_angry");
Move("@StNameR/R*", 200, @-200, @0, Dxl1, false);
	FadeSt("R",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400401010fje">
「そうよ！　それがなくなったらミヅハちゃんが――」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu千秋_朗らか_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/400401020kit">
「さっき、地下で温泉が噴き出してたんだ」

{	St("C",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/400401030kit">
「この銃は、煮立たせたものだ」

{	DeleteAllSt(200,false);}
{	St("L",700, @0,@0,"bu平次_通常_shock");
	FadeSt("L",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/400401040fjh">
「は？　なに言って――」


{	DeleteAllSt(200,false);}
//◆音声指示：小声
{	St("R",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("R",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400401050fje">
「あ、そうか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	St("R",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("R",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400401060fje">
「父さん、お願い！
　千秋の言うことを、聞いて」

{	DeleteAllSt(200,false);}
{	St("L",700, @0,@0,"bu平次_通常_pain");
	FadeSt("L",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/400401070fjh">
「でも――」

{	DeleteAllSt(200,false);}
{	St("R",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("R",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400401080fje">
「いいから！」

{	DeleteAllSt(200,false);}
{	St("L",700, @0,@0,"bu平次_通常_pain");
	FadeSt("L",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/400401090fjh">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	DeleteAllSt(200,false);}
{	St("R",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("R",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400401100fje">
「お願い！」

{	DeleteAllSt(200,false);}
{	St("L",700, @0,@0,"bu平次_通常_hard");
	FadeSt("L",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/400401110fjh">
「わかったよ」

{	SetVolume("@xbgm*", 2000, 0, null);}
{	DeleteAllSt(200,true);}
{	St("C",700, @50,@0,"bu千秋_通常_angry");
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/400401120kit">
「それじゃ、置くぞ！」

{Move("@StNameC/C*", 200, @0, @100, Dxl1, false);
	DeleteAllSt(200,true);}

//◆ＳＥ：ごとっ！
{	CreateSE("SE01","se銃_置く");
	MusicStart("SE01",0,700,0,1000,null,false);
WaitKey(1000);
}

{	St("C",700, @0,@100,"bu千秋_通常_normal");
Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/400401130kit">
「これでいいな？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
{	St("ML",700, @0,@0,"buジャブル_通常_cool");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400401140jbr">
「よし。下がれ」

{	DeleteAllSt(200,true);}
{	St("MR",700, @-50,@0,"bu千秋_通常_normal");
Move("@StNameMR/MR*", 200, @50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/400401150kit">
「恵那、行こう」

{	DeleteAllSt(200,false);}
{	St("R",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("R",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400401160fje">
「うん」

{	CreateSE("SE01","se動作_歩く2人_l");
	MusicStart("SE01",0,700,0,1000,null,false);
}
{Move("@StNameR/R*", 200, @50, @0, Dxl1, false);
	DeleteAllSt(200,true);}
{	SetVolume("SE*", 3000, 0, null);}
　ふたりはゆっくり、後ずさる。

　銃との距離が千秋たちよりも近くなったところで、ジャブルが動いた。

{	St("C",700, @-50,@0,"buジャブル_通常_cool");
Move("@StNameC/C*", 200, @50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400401170jbr">
「…………よし」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//	St("C",700, @0,@0,"buジャブル_通常_cool");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400401180jbr">
「ほら、行け」

{	DeleteAllSt(200,true);}

{	St("MR",700, @100,@0,"bu恵那_哀愁_fear");
Move("@StNameMR/MR*", 200, @-100, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400401190fje">
「父さんッ！！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @-100,@0,"bu平次_通常_pain");
Move("@StNameML/ML*", 200, @100, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/400401200fjh">
「恵那ッ！！」

//	St("ML",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/400401210fjh">
「こ、このバカ野郎ッ！
　なんでオレのために、アザナエルを二度も――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400401220fje">
「二度、同じ過ちは犯さないわよ」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0291]
{	St("C",700, @-100,@0,"buジャブル_通常_pride");
Move("@StNameC/C*", 200, @100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400401230jbr">
「はは、アザナエルさえ手にすれば、こっちのもの――」

{	St("C",700, @0,@0,"buジャブル_通常_cool");
	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400401240jbr">
「ん……？」

{	St("C",700, @0,@0,"buジャブル_通常_shock");
	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400401250jbr">
「な、これは――！？」

//	St("C",700, @0,@0,"buジャブル_通常_cool");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400401260jbr">
「アザナエルじゃない！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
{	St("MR",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("MR",200,true);
	SoundPlay("@xbgm30",0,450,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400401270fje">
「その通り。『偽物』よ！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buジャブル_通常_shock");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400401280jbr">
「な――まさか！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/400401290kit">
「そう。おまえに借りたままのモデルガンさ」

{	St("MR",700, @0,@0,"bu千秋_朗らか_pride");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/400401300kit">
「ポケットの中に入ったまんまになってた」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buジャブル_通常_pinch");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400401310jbr">
「騙したな……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2344);}


//	TextBoxDelete(150);
{	DeleteAllSt(200,true);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
{	St("C",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400401320fje">
「ええ、騙したわよ。ね、千秋？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/400401330kit">
「ラッキーアイテムのおかげだ」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/400401340fjh">
「ラッキーアイテム？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_朗らか_pride");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/400401350kit">
「ああ。タヌキのストラップ」

//	St("ML",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/400401360kit">
「その銃は煮立たせたもの……」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/400401370fjh">
「『ニタタセタモノ』のタヌキで――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);
{	DeleteAllSt(200,true);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
{	St("ML",700, @0,@0,"buジャブル_通常_pinch");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400401380jbr">
「『ニセモノ』だと――？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	SoundPlay("@xbgm30",2000,450,true);


{	DeleteAllSt(200,true);}

	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/bg0902100エレキセンター_ジャガンナート_通常.jpg");
	Zoom("絵背景", 0, 2000, 2000, null, true);
	SetShade("絵背景",MEDIUM);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0321]

{	St("C",700, @0,@100,"fu恵那_ハルヒ_angry");
	Fade("絵背景", 200, 1000, null, false);
Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400401390fje">
「さあ、これでアンタを心置きなくやっつけられるってワケね！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	FadeDelete("絵背景", 200, null, false);
{	DeleteAllSt(200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0322]
{	St("ML",700, @0,@0,"buジャブル_通常_pinch");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400401400jbr">
「はぁ……こんな小細工に引っかかるとは」




</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
{	DeleteAllSt(200,true);}

//◆ＥＶ："ev/ev2340恵那対ジャブル.txt"
	CreateSE("SE01","se戦闘_絞める");
	MusicStart("SE01",0,700,0,1400,null,false);
	CreateTextureEX("絵背景", 1000, -800, -270, "cg/ev/l/ev2340恵那対ジャブル_l.jpg");
	Move("絵背景", 500, -940, @0, Dxl3, false);
	Fade("絵背景", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400401410fje">
「九代連綿と受け継がれたこの富士見式捕縛術！
　犯罪者には、容赦しないわよッ！！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400401420fje">
「さあさあ、観念してお縄につきなさいッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("絵背景", 300, -1024, @0, Dxl3, false);
	FadeDelete("絵背景", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0335]
{	St("C",700, @0,@0,"bu平次_通常_hard");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/400401430fjh">
「恵那……」

{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"buジャブル_通常_cool");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400401440jbr">
「よろしい。それでは君に、お見せしよう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateTextureEX("絵背景", 1000, 0, -576, "cg/ev/l/ev2340恵那対ジャブル_l.jpg");
	SetBlur("絵背景", true, 3, 500, 50, false);
	Move("絵背景", 500, 0, -40, Dxl3, false);
	Fade("絵背景", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
{	St("C",700, @0,@0,"buジャブル_通常_cool");
	FadeSt("C",200,true);}
//【ジャブル】

<voice name="ジャブル" class="ジャブル" src="voice/23/400401450jbr">
「インドと日本の文化融合が生み出した、ヨガ忍法の神髄を！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateSE("SE01","se戦闘_金属弾く05");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("絵色", 1500, "#FFFFFF");
	Fade("絵色", 100, 1000, null, true);
	Delete("絵背景");
	DeleteAllSt(0,true);

	CreateTextureSP("絵背景", 1000, Center, Middle, "cg/ev/ev2340恵那対ジャブル.jpg");
	Zoom("絵背景", 0, 2000, 2000, null, true);
	SetBlur("絵背景", true, 2, 500, 50, false);
	Zoom("絵背景", 200, 1000, 1000, null, false);
	FadeDelete("絵色", 200, null, true);

	CreateTextureEX("絵背景L", 1000, -210, -145, "cg/ev/l/ev2340恵那対ジャブル_l.jpg");
WaitKey(500);

	SetVertex("絵背景L",420,290);
	Zoom("絵背景L", 0, 500, 500, null, true);
	SetBlur("絵背景L", true, 2, 500, 50, false);
	Fade("絵背景L", 0, 1000, null, true);

	Move("絵背景L", 200, 0, -50, Dxl1, false);
	Zoom("絵背景L", 200, 1000, 1000, Dxl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0341]


//	St("C",700, @0,@0,"buジャブル_通常_cool");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400401460jbr">
「ぬりゃあああああああああッ！！」

{	Fade("絵背景L", 0,0, null, true);

	SetVertex("絵背景L",1400,460);
	Move("絵背景L", 0, -700, -230, Dxl1, false);
	Zoom("絵背景L", 0, 500, 500, null, true);
	SetBlur("絵背景L", true, 2, 500, 50, false);
	Fade("絵背景L", 0,1000, null, true);
	Move("絵背景L", 200, -910, -230, Dxl1, false);
	Zoom("絵背景L", 200, 1000, 1000, Dxl3, false);
}
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400401470fje">
「せいやあああああああああッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

//◆ＳＥ：ガキーン！！
	CreateSE("SE01","se戦闘_金属弾く02");

	CreateColorEXadd("絵色", 1500, "#FFFFFF");

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵色", 0, 1000, null, true);
	Delete("絵背景L*");

	Zoom("絵背景", 0, 2000, 2000, null, true);
	SetBlur("絵背景", true, 2, 500, 50, false);
	Zoom("絵背景", 200, 1000, 1000, null, false);

	FadeDelete("絵色", 1000, null, false);
	Wait(200);

	CreateSE("SE02","se戦闘_殴打連続01");
	MusicStart("SE02",0,700,0,1000,null,true);
Wait(800);

	PrintGO("上背景", 20010);
	CreateColorSP("絵色黒", 20000, "#000000");
	FadeDelete("上背景", 1000, null, true);

	SetVolume("SE*", 2000, 0, null);

//	SetVolume("@xbgm*", 2000, 0, null);
WaitKey(2000);

//◆演出指定：で、ブラックアウト


	PrintGO("上背景", 20010);

	OnBG(10,"bg0902100エレキセンター_ジャガンナート_通常");
	FadeBG(0,true);

{	ClockPass(2345);}

	FadeDelete("上背景", 1000, null, true);

	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/bg0902100エレキセンター_ジャガンナート_通常.jpg");
	Zoom("絵背景", 0, 2000, 2000, null, true);
	SetShade("絵背景",MEDIUM);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0345]
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/400401480jbr">
「イデデ、イデデデデデ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	St("ML",700, @0,@0,"bu平次_通常_angry");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/400401490fjh">
「こら！　大人しく隅っこに転がってろ！」

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/400401500fjh">
「悪いな、恵那。こんなことさせちまって。
　まさか、こんなに十手の扱いが上手いとは――」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400401510fje">
「私だって、父さんの娘。
　富士見式捕縛術の、九代目なんだからっ！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/400401520fjh">
「恵那――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400401530fje">
「父さん……ごめんね。
　私、今までずっと誤解してた」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400401540fje">
「父さんは……私たちのことを、心配して、だから――」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu平次_通常_smile");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/400401550fjh">
「おいおい、よせやい」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_感動_happy");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400401560fje">
「私――感謝、してます。
　本当に、ありがとう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu平次_通常_shock");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/400401570fjh">
「な……ちょ、突然なんでぃ！
　まるで、嫁にでも行くみたいに――」

{	DeleteAllSt(200,true);}
{	St("C",700, @200,@0,"fu千秋_気合い_shout");
	Fade("絵背景", 200, 1000, null, false);
Move("@StNameC/C*", 200, @-200, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/400401580kit">
「おおおおおお、お<RUBY text="とう">義父</RUBY>さんッ！！」

{	Fade("絵背景", 200, 0, null, false);}
{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu平次_通常_shock");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/400401590fjh">
「へ？　あ……そういやてめぇ、千秋って！？
　どういうこと――え？　そういうこと！？」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"fu千秋_気合い_shout");
	Fade("絵背景", 200, 1000, null, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/400401600kit">
「恵那は、お、オレが幸せにしますッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	FadeDelete("絵背景", 200, null, false);
	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
{	St("C",700, @0,@0,"bu平次_通常_angry");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/400401610fjh">
「な、なななななななな――――！！」


{	DeleteAllSt(200,true);}

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400401620fje">
「私たち、一足先に半田明神に向かうから！！」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/400401630kit">
「師匠――
　沙紅羅さんが来たら、よろしくお願いします！！」

{Move("@StNameC/C*", 200, @100, @0, Dxl1, false);
	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_smile");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400401640fje">
「よろしくねっ！　父さん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameMR/MR*", 200, @100, @0, Dxl1, false);

//	TextBoxDelete(150);
{	DeleteAllSt(200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
{	St("C",700, @-100,@0,"bu平次_通常_angry");
Move("@StNameC/C*", 200, @100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/400401650fjh">
「ちょ！　待て！　おまえら――」

//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/400401660fjh">
「む、娘は！　オレの娘はおまえなんぞに――！！」




</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolumeEX("@x*", 3000, 0, NULL);


	TextBoxDelete(150);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	DeleteAllSt(0,true);
WaitKey(500);
//◆場所：秋葉原_ガード下_雪

{	ClockPass(2346);}


	OnBG(10,"bg0102400秋葉原_ガード下_雪");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0395]


{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400401670fje">
「うわ…………っ！！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/400401680kit">
「な、なんだ、この雪ッ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400401690fje">
「ふふ、上手くいってるみたいね」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/400401700kit">
「上手くいってる……？
　って、この雪が？」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400401710fje">
「そう。コレも私の作戦通り――」

{	St("C",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/400401720fje">
「ほら、千秋！　行きましょう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
{	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/400401730kit">
「お……おい、待てよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 4000, 0, null);


	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("黒幕", 25000, "BLACK");
	DrawTransition("黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("絵*");
	OnBG(10,"bg0601211半田明神_男坂_雪");
	FadeBG(0,true);

//ちらつき防止のため、次スクリプト冒頭でif文わけしてます
//	DrawDelete("上背景", 500, 100, null, "blind_01_00_1", true);

//	Wait(300);

//	PrintGO("上背景", 5000);
//	FadeDelete("上背景", 1000, null, true);

	EndScene();
}
