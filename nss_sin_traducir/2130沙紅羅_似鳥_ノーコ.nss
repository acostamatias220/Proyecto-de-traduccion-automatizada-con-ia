
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2130沙紅羅_似鳥_ノーコ.nss_MAIN
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

	//★徒歩：フラグ修正
	if(Substr($myRoute,0,2)=="ab"){
		//ab
		if($CharaName=="沙紅羅"){
			$GameName = "ab2140沙紅羅_似鳥.nss";
		}else if($CharaName=="似鳥"){
			$GameName = "ab2140沙紅羅_似鳥.nss";
		}else{
			$GameName = "2140ノーコ_フウリ.nss";
		}
	}else{
		//トゥルー・b
		if($CharaName=="沙紅羅"){
			$GameName = "2140沙紅羅_似鳥.nss";
		}else if($CharaName=="似鳥"){
			$GameName = "2140沙紅羅_似鳥.nss";
		}else{
			$GameName = "2140ノーコ_フウリ.nss";
		}
	}
}

scene 2130沙紅羅_似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1960">
////////////header////////////
//file name "2130沙紅羅_似鳥_ノーコ.nss"
//title "オトメロココ"
//previous "2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nss"

////////////footer////////////
//next "沙紅羅"（"flkagome1a" = true） "ab2140沙紅羅_似鳥.nss"
//next "似鳥"（"flkagome1a" = true） "ab2140沙紅羅_似鳥.nss"
//next "沙紅羅" "2140沙紅羅_似鳥.nss"
//next "似鳥" "2140沙紅羅_似鳥.nss"
//next "ノーコ" "2140ノーコ_フウリ.nss"

////////////body////////////
//■再定義定型文
	PrintBG("上背景", 30000);

	SoundPlay("@xbgm09",0,450,true);

	CreateSE("SE22","se動作_集団走る");
	MusicStart("SE22",1000,700,0,1000,null,true);

//◆場所：スパコン館_裏面
	OnBG(10,"bg1101200スパコン館_裏面_閉店");
	FadeBG(0,true);

	if($PreGameName=="2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nss"){
	DrawDelete("上背景", 300, 100, null, "slide_01_01_1", true);
	}else{
	FadeDelete("上背景", 0, null, true);
	}

{	ClockPass(2130);}

//◆ＳＥ：遠くから悲鳴
	CreateSE("SE21","seガヤ_阿鼻叫喚_l");
	MusicStart("SE21",2000,300,0,1000,null,true);


	St("ML",700, @-100,@0,"bu沙紅羅_木刀_angry");
	Move("@StNameML/ML*", 200, @100, @0, Dxl1, false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300010skr">
「オラオラ、走れ走れ走れ！」

{	DeleteAllSt(200,false);
	St("MR",700, @-100,@0,"bu似鳥_通常_shock");
	Move("@StNameMR/MR*", 200, @100, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/300300020nki">
「いや、あのでも……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_木刀_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300030skr">
「んだよ！？　助けてやったのに」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/300300040nki">
「ホントに……逃げて、いいのかな」

{
	SetVolume("SE21", 4000, 0, null);
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300050skr">
「ったく、オトメロココがわかってねー奴だな！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/300300060nki">
「ロココ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300070skr">
「あんな状態で、まともに話したって聞かねぇだろ。
　だから、ちょっと時間をおくんだよ」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300080skr">
「下手に手出ししたら、こっちが痛い目見るからな。
　四十八手逃げるにしかず！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/300300090nki">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300100skr">
「しかし、それにしてもあのカッター女……
　どっかで見たことあるような気がすんだよな……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/300300110nki">
「ああ、オレの同人誌だろ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300120skr">
「あ！　そっか！
　確かに、『のーこんとろーる』で……」

{
	SetVolume("SE*", 1000, 0, null);

	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300130skr">
「っていや待て！　おまえ、今なんて――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_angry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/300300140nki">
「だから、オレの同人誌で――
　アイツは、元々オレの創作物だったんだよ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300150skr">
「ええと……つまり……」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300160skr">
「『のーこんとろーる』描いたのって、おまえ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/300300170nki">
「そうだけど」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300180skr">
「な、ななななな――
　なんだとおおお――――う！！」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300190skr">
「ってことは、もしかして、他にも『のーこんとろーる』の新刊とかは――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/300300200nki">
「家に在庫、たくさんあるけど」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300210skr">
「な、なんてこったあああ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("ML",700, @0,@0,"bu沙紅羅_通常_cry");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300220skr">
「これが……幸せの黄色い鳥……！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/300300230nki">
「なんかちょっと違うような……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300240skr">
「あ、あの！　悪いけど、もう１冊！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300250skr">
「もう１冊、新刊を譲ってもらえないか！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/300300260nki">
「別に余ってるからいいけど……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_cry");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300270skr">
「あ――ありがとうッ！！　心の友よおお――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆演出指定：暗闇から幽霊じみた登場をするノーコ
	CreateTextureSP("絵背景100", 109, Center, Middle, "cg/bg/bg1101200スパコン館_裏面_閉店.jpg");
	CreateColorSP("絵色100", 50, "BLACK");

	St("C",70, @0,@0,"stノーコa_通常_mad");
	FadeSt("C",0,true);

	CreatePlainSP("浮出用", 108);
	Request("浮出用", AddRender);
	Delete("絵色100");
	CreateTextureSP("絵背景200", 80, Center, Middle, "cg/bg/bg1101200スパコン館_裏面_閉店.jpg");
	Fade("絵背景100", 500, 0, null, true);
	Fade("絵背景200", 500, 0, null, false);
	Fade("浮出用", 500, 0, null, true);
	Delete("浮出用");
	Delete("絵背景*");

	Wait(200);

	St("C",700, @0,@0,"stノーコa_通常_mad");
	FadeSt("C",0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300300280nko">
「ともだちはいらない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300300290nko">
「いるのはわたしとにとり、ふたりだけ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300300300nko">
「ちかづかないで」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	FadeQ($C_次,0,0,200,0,50,Dxl1,false);
	DeleteAllSt(100,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/300300310nki">
「ノーコ！！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_pinch");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300320skr">
「くそっ！　逃げるぞ！」

{	DeleteAllSt(200,true);
	CreateSE("SE01","se戦闘_刃物構える");
	St("C",700, @0,@50,"buノーコa_カッター_angry");
	Zoom("@StNameC/C*", 0, 600, 600, null, true);
	Request("@StNameC/C*", Smoothing);

//	Move("@StNameC/C*", 200, @0, @0, Dxl1, false);
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeQ($C_次,0,0,200,0,10,Dxl1,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300300330nko">
「にがさない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2131);}

	TextBoxDelete(150);
	Move("@StNameC/C*", 200, @0, @50, Axl1, false);
	DeleteAllSt(200,true);

//おがみ：β調整済み
//◆ＳＥ：シュパーン！　どごーん！

	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");
	CreateTextureEX("絵背景200", 100, -824, -576, "cg/ev/l/ev0000ノーコカッターc_l.jpg");
	CreateTextureEX("絵背景300", 100, Center, Middle, "cg/ev/ev0000ノーコカッターc.jpg");
	Zoom("絵背景300", 0, 2000, 2000, null, true);
	SetBlur("絵背景300", true, 2, 500, 50, false);
	SetBlur("絵背景200", true, 1, 500, 20, false);

	CreateSE("SE01","se戦闘_カッター_刃出す01普通b");
	CreateSE("SE02","se戦闘_風切り音05");
	CreateSE("SE03","se戦闘_風切り音10");
	CreateSE("SE04","se戦闘_切断破壊");
	CreateSE("SE05","se戦闘_倒壊01");
	MusicStart("SE01",0,700,0,900,null,false);

	Fade("絵背景200", 300, 1000, null, false);
	BezierMove("絵背景200", 1500, (-824,-576){-1000,-100}{-1000,-100}(-1024,0){0,0}{0,0}(0,-288), Axl2, false);

	Wait(1000);

	MusicStart("SE03",0,700,0,1000,null,false);
	Wait(300);
	MusicStart("SE02",0,1200,0,1000,null,false);
	Fade("絵背景300", 200, 1000, null, false);
	Zoom("絵背景300", 300, 1000, 1000, Dxl2, true);


	Fade("絵背景100", 0, 1000, null, true);

	MusicStart("SE04",0,1200,0,1000,null,false);
	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Wait(200);


//◆演出指定：電柱が崩れ落ちる
	OnBG(10,"bg1101300スパコン館_裏面_電柱折れ");
	FadeBG(0,true);

	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景100");
	Delete("絵背景200");
	Delete("絵背景300");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg1101300スパコン館_裏面_電柱折れ.jpg");
	Zoom("絵背景100", 0, 1800, 1800, null, true);
	Rotate("絵背景100", 0, @0, @0, -40, null,true);
	SetBlur("絵背景100", true, 2, 500, 50, false);


	Wait(600);


	Rotate("絵背景100", 1200, @0, @0, 0, Axl1,false);
	Fade("絵色100", 1000, 0, Axl1, false);
	Shake("絵背景100", 2500, 5, 5, 0, 0, 1000, Dxl1, false);
	FadeF4("絵背景100", 2000, 2000, 2000, 0, 0, Dxl2, false);
	Zoom("絵背景100", 2500, 1000, 1000, Axl2, 1200);

	SetBlur("絵背景100", false, 0, 0, 0, false);
	MusicStart("SE05",0,1500,0,1000,null,false);
	Shake("絵背景100", 1900, 20, 15, 0, 0, 1000, Dxl1, false);

	Wait(1300);
	Wait(600);

	Delete("絵背景100");
	Delete("絵色100");

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300340skr">
「で、電柱切れた！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/300300350nki">
「いやいや、おかしいだろ！　普通切れないだろ！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"stノーコa_通常_mad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300300360nko">
「わたしの『イシュタムのみちびき』に、きれないものはない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300300370nko">
「ね、にとり――ぜんせの、カイザー・オブ・ダークネス、ルシフェルさま」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300380skr">
「前世？　ザーカイうっぷダメデスるしふぇる？
　な……なんか知らねーけど……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("ML",700, @0,@0,"bu沙紅羅_通常_shy");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300390skr">
「かっこいい……！！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/300300400nki">
「格好良くねーよ！　ただの厨二病妄想だ」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"stノーコa_通常_mad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300300410nko">
「うそ」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"bu似鳥_通常_rage");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/300300420nki">
「ウソじゃない！
　そういう設定は、捨てたんだ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	DeleteAllSt(200,true);
	St("C",700, @0,@50,"buノーコa_カッター_shock");
	Zoom("@StNameC/C*", 0, 600, 600, null, true);
	Request("@StNameC/C*", Smoothing);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300300430nko">
「どうして？　どうして、そういうことを――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_rage");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/300300440nki">
「逃げるぞ、沙紅羅！」

{	Move("@StNameMR/MR*", 200, @50, @0, Axl1, false);
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300450skr">
「お、おう！」

{	Move("@StNameML/ML*", 200, @-50, @0, Axl1, false);
	DeleteAllSt(200,true);
	St("C",700, @0,@50,"buノーコa_カッター_smile");
	Zoom("@StNameC/C*", 0, 600, 600, null, true);
	Request("@StNameC/C*", Smoothing);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300300460nko">
「まちなさい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_風切り音03");
	MusicStart("SE01",0,700,0,1000,null,false);


	TextBoxDelete(150);

	Zoom("@StNameC/C*", 200, 1000, 1000, Axl1, false);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);



{	ClockPass(2132);}


//◆場所：秋葉原駅_正面
	OnBG(10,"bg0201111秋葉原駅_正面_通常");
	FadeBG(0,true);

	CreateSE("SE22","se動作_集団走る");
	MusicStart("SE22",1000,700,0,1000,null,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);



//◆ＳＥ：後ろから聞こえる急ブレーキや悲鳴
	CreateSE("SE01","seガヤ_渋滞_l");
	MusicStart("SE01",1000,400,0,1000,null,true);

	Wait(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300470skr">
「あー、クソッ！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300480skr">
「下手に逃げると、巻き添えくらわせちまう！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300490skr">
「あんまり戦いたくはねーんだけど……」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/300300500nki">
「沙紅羅……」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300510skr">
「わかってる。ちゃんと手加減するよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2133);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/300300520nki">
「そうじゃない」

{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/300300530nki">
「――死なないでくれよ」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300540skr">
「ったりめーだろ」

{	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300550skr">
「どーじんしを手に入れるまで、死ねるかってんだ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 2000, 0, null);

	SetVolume("SE*", 2000, 0, null);

	TextBoxDelete(150);
	DeleteAllSt(200,true);




{	ClockPass(2134);}

//◆場所：秋葉原_ガード下

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	OnBG(10,"bg0102200秋葉原_ガード下_閉店");
	FadeBG(0,true);

	CreateTextureSP("絵背景100", 100, 500, -200, "cg/bg/bg0102200秋葉原_ガード下_閉店.jpg");
	SetShade("絵背景100", HEAVY);
	Zoom("絵背景100", 0, 2000, 2000, null, true);


	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

	Wait(300);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("ML",700, @0,@0,"fu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300560skr">
「この辺でいいな」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"fu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/300300570nki">
「ここって、でも――」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"fu沙紅羅_通常_angry");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300580skr">
「いいからテメーはすっこんでろ！」

{	DeleteAllSt(200,true);
	CreateSE("SE01","se戦闘_打撃音02");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("MR",700, @0,@0,"fu似鳥_通常_shock");
	Shake("@StNameMR/MR*", 200, 15, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 200, @50, @50, Dxl1, false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/300300590nki">
「ふぎゃっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("@StNameMR/MR*", 200, @250, @50, Axl1, false);
	DeleteAllSt(200,true);

	CreateSE("SE01","se戦闘_破壊03");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("揺用", 2005);
	Shake("揺用", 1000, 8, 5, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 1000, 0, null, true);
	Delete("揺用");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　沙紅羅は、既に多くの店が閉まりかけたエレキセンターの方向に、似鳥を蹴り飛ばす。

{	FadeDelete("絵背景100", 300, null, true);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300600skr">
「さて――と」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300610skr">
「おいノーコとかいうヤツ！
　テメーとは話したいことがある！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300620skr">
「一度、顔をつき合わせて――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(150,true);

//◆演出指定：後ろから逆さで出てくる。ちょっと非人間部分を出す
	CreateSE("SE10","se戦闘_カッター_刃出す02早いa");

	CreateTextureEX("ノーコ100", 700, Center, Middle, "cg/bu/buノーコa_カッター_smile.png");
	Rotate("ノーコ100", 0, @0, @0, @180, null,true);
	Fade("ノーコ100", 0, 0, null, true);
	Move("ノーコ100", 0, @0, @-120, null, true);
	Zoom("ノーコ100", 0, 800, 800, null, true);
	SetBlur("ノーコ100", true, 2, 500, 50, false);

	CreateTextureEXadd("ノーコ200", 700, Center, Middle, "cg/bu/buノーコa_カッター_smile.png");
	Rotate("ノーコ200", 0, @0, @0, @180, null,true);
	Fade("ノーコ200", 0, 0, null, true);
	Move("ノーコ200", 0, @0, @-120, null, true);
	Zoom("ノーコ200", 0, 800, 800, null, true);

	MusicStart("SE10",0,1500,0,400,null,false);
	SetFrequency("SE10", 1000, 200, null);

	Move("ノーコ*", 300, @0, @30, Dxl1, false);
	Zoom("ノーコ*", 600, 1000, 1000, Dxl1, false);
	Fade("ノーコ200", 300, 1000, null, true);
	Move("ノーコ*", 300, @0, @-30, Axl1, false);
	Fade("ノーコ200", 300, 0, null, false);
	Fade("ノーコ100", 300, 1000, null, true);
	Delete("ノーコ200");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300300630nko">
「ことわる」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300640skr">
「な――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：びゅん！　カッターナイフ振る
	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/efカッター剣閃b.jpg");
	Rotate("絵背景100", 0, @0, @0, @180, null,true);

	CreateSE("SE01","se戦闘_風切り音05");
	MusicStart("SE01",0,700,0,1000,null,false);

	Zoom("ノーコ100", 200, 1200, 1200, Axl1, false);

	Wait(100);
	Fade("絵背景100", 100, 1000, null, true);

	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Delete("ノーコ100");

	Wait(200);
	Fade("絵背景100", 100, 0, null, true);
	Delete("絵背景100");

	CreateSE("SE05","se動作_一歩");
	MusicStart("SE05",0,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161]
{	St("C",700, @100,@0,"bu沙紅羅_通常_pain");
	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300650skr">
「くぅっ！」

{	DeleteAllSt(200,true);}
　背後から突き出されたカッターナイフを、沙紅羅は間一髪で躱す。

{	SoundPlay("@xbgm22",0,450,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300660skr">
「おまえ、どっから出てきた？」

//◆ＳＥ：キリキリキリキリ
{	DeleteAllSt(200,true);
	St("C",700, @0,@50,"stノーコa_通常_mad");
	FadeQ($C_次,0,0,200,0,50,Dxl1,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300300670nko">
「にとりはわたさない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300680skr">
「上から逆さづりになってただろ」

//◆ＳＥ：キリキリキリキリ
{	DeleteAllSt(200,true);
	St("C",700, @0,@50,"buノーコa_カッター_smile");
	Request("@StNameC/C*", Smoothing);
	Zoom("@StNameC/C*", 0, 600, 600, null, true);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300300690nko">
「にとりはどこ？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_pinch");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300700skr">
「おまえ、ホントに、人間か？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);


//◆ＳＥ：キリキリキ、と途中で音が止まる。
	CreateSE("SE01","se戦闘_カッター_刃出す03遅いa");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(800);

	St("C",700, @0,@50,"buノーコa_幽霊_think");
	Request("@StNameC/C*", Smoothing);
	Zoom("@StNameC/C*", 0, 600, 600, null, true);
	FadeSt("C",800,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0171]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300300710nko">
「わたしは」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	St("C",700, @0,@50,"buノーコa_幽霊_normal");
	Request("@StNameC/C*", Smoothing);
	Zoom("@StNameC/C*", 0, 600, 600, null, true);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300300720nko">
「げんじつのそんざい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300300730nko">
「まぼろしではない」

{	St("C",700, @0,@50,"buノーコa_カッター_rage");
	Request("@StNameC/C*", Smoothing);
	Zoom("@StNameC/C*", 0, 600, 600, null, true);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300300740nko">
「まぼろしでは、ない！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_風切り音10");
	CreateSE("SE02","se戦闘_金属弾く02");
	MusicStart("SE01",0,700,0,1000,null,false);

	TextBoxDelete(150);
	Zoom("@StNameC/C*", 200, 1000, 1000, Axl1, false);
	DeleteAllSt(200,true);

//◆演出指定：戦闘剣線演出
//◆ＳＥ：びゅん！　カッターナイフ振る
	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");


	Wait(100);
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("絵背景100", 100, 1000, null, true);

	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Wait(200);
	Fade("絵背景100", 100, 0, null, true);
	Delete("絵背景100");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]
{	St("C",700, @-50,@50,"fu沙紅羅_木刀_angry");

	Shake("@StNameC/C*", 200, 10, 5, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @50, @-50, Dxl1, false);

	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300750skr">
「――ッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	DeleteAllSt(200,true);
	St("R",700, @100,@-100,"buノーコa_通常_fear");
	Rotate("@StNameR/R*", 0, @0, @0, -90, null,true);
	Move("@StNameR/R*", 200, @-100, @0, Dxl2, false);
	FadeSt("R",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300300760nko">
「げんじつになって！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2135);}


	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆演出指定：戦闘剣線演出
//◆ＳＥ：びゅん！　カッターナイフ振る
	CreateSE("SE01","se戦闘_風切り音05");
	CreateSE("SE02","se戦闘_金属弾く02");

	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/efカッター剣閃b.jpg");
	Rotate("絵背景100", 0, @180, @0, @0, null,true);


	Wait(100);
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("絵背景100", 100, 1000, null, true);

	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Wait(200);
	Fade("絵背景100", 100, 0, null, true);
	Delete("絵背景100");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0191]
{	St("C",700, @50,@0,"bu沙紅羅_木刀_pinch");
	Shake("@StNameC/C*", 400, 0, 5, 0, 0, 500, Dxl1, false);
	Move("@StNameC/C*", 200, @-50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300770skr">
「くぅッ！」

{	DeleteAllSt(200,true);
	St2("L",700, @0,@-50,"buノーコa_通常_mad","cg2/",".png");
	Rotate("@StNameL/L*", 0, @0, @0, 90, null,true);
	Move("@StNameL/L*", 200, @100, @0, Dxl2, false);
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300300780nko">
「あいしてもらえる！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆演出指定：戦闘剣線演出
//◆ＳＥ：びゅん！　カッターナイフ振る
	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/efカッター剣閃b.jpg");
	CreateSE("SE01","se戦闘_風切り音02");
	CreateSE("SE02","se戦闘_金属弾く04");

	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(100);
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("絵背景100", 100, 1000, null, true);

	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Wait(200);
	Fade("絵背景100", 100, 0, null, true);
	Delete("絵背景100");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0192]
{	St("C",700, @-50,@0,"bu沙紅羅_木刀_pain");
	Shake("@StNameC/C*", 400, 0, 5, 0, 0, 500, Dxl1, false);
	Move("@StNameC/C*", 200, @50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300790skr">
「がはっ！！」

{	DeleteAllSt(200,true);
	St2("C",700, @0,@0,"buノーコa_通常_mad","cg2/",".png");
	FadeQ($C_次,0,0,200,0,50,Dxl1,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300300800nko">
「だれにもじゃまは――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);



//◆ＳＥ：ガキィッ！　と沙紅羅の木刀がぶつかる
	CreateSE("SE01","se戦闘_金属弾く04");
	CreateSE("SE02","se戦闘_木刀_激突");

	CreateColorEXadd("絵色100", 7500, "WHITE");
	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ev/ev0000ノーコカッターc.jpg");
	CreateTextureEX("絵背景200", 2000, Center, Middle, "cg/ev/ev0000沙紅羅木刀アタック.jpg");
	Request("絵背景200", Smoothing);
	CreateTextureEX("絵背景ライン", 5000, Center, Middle, "cg/mask/ciウィンドウ縦01.png");
//	Rotate("絵背景ライン", 0, @0, @0, 90, null,true);
	Zoom("絵背景ライン", 0, 1000, 2000, null, true);

	Fade("絵背景100", 100, 1000, null, false);

	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Dxl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Wait(200);

	Fade("絵背景200", 100, 1000, null, false);

	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("絵背景200", 300, 5, 8, 0, 0, 1000, Dxl1, false);
	Zoom("絵背景200", 300, 1200, 1200, Dxl2, false);

	Wait(200);


	Delete("絵背景100");
	Fade("絵色100", 100, 1000, null, true);
	Zoom("絵背景200", 0, 1000, 1000, null, true);
	Fade("EF100", 0, 1000, null, true);


//カット準備
	CreateWindow("絵窓右", 4000, 512, 0, 512, 576, false);
	SetAlias("絵窓右","絵窓右");
	CreateTextureSP("絵窓右/絵演背景", 2000, Center, Middle, "cg/ev/ev0000ノーコカッターc.jpg");
	Request("絵窓右/絵演背景", Smoothing);
	Zoom("絵窓右/絵演背景", 0, 1100, 1100, null, true);

	Move("絵背景200", 0, -100, 0, null, true);
	Zoom("絵背景200", 0, 1100, 1100, null, true);


	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("揺用", 2005);
	SetBlur("絵窓右/絵演背景", true, 1, 500, 100, false);
	SetBlur("絵背景200", true, 1, 500, 100, false);


	MoveFTP1("@絵窓右/絵演背景", 1500, 3, 2);
	MoveFTP2("@絵背景200", 1300, 2, 3);
//	MoveFTP1stop();
//	MoveFTP2stop();

	CutInLine01("@絵背景ライン");
	Fade("@絵背景ライン", 0, 1000, null, true);

	Fade("絵色100", 1000, 0, null, false);
	Shake("揺用", 1000, 15, 5, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 1000, 0, null, true);
	Delete("揺用");
	Wait(500);


//おがみ：β調整済み
//	CreateTextureEXadd("EF100", 2100, Center, Middle, "cg/ef/ライトニング.png");
//	Rotate("EF100", 0, @0, @0, @90, null,true);
//	Rotate("EF100", 5000, @0, @36000, @0, null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//	St("C",700, @0,@0,"bu沙紅羅_木刀_hard");
//	FadeSt("C",200,true);
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300810skr">
「わかるよ」

//	DeleteAllSt(200,true);
//	St("C",700, @0,@0,"buノーコa_カッター_pinch");
//	FadeSt("C",200,true);
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300300820nko">
「わかる？」

//	St("C",700, @0,@0,"buノーコa_カッター_angry");
//	FadeSt("C",200,true);
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300300830nko">
「あなたに、わたしの、なにがわかる？」

//	DeleteAllSt(200,true);
//	St("C",700, @0,@0,"bu沙紅羅_木刀_pride");
//	FadeSt("C",200,true);
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300840skr">
「実らぬ恋ってのがね」

//	DeleteAllSt(200,true);
//	St("C",700, @0,@0,"buノーコa_カッター_shock");
//	FadeSt("C",200,true);
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300300850nko">
「みのる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//	DeleteAllSt(200,true);
//	St("C",700, @0,@0,"bu沙紅羅_木刀_hard");
//	FadeSt("C",200,true);
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300860skr">
「てめーとあいつが、どんな関係だったのかはしらねー」

//	DeleteAllSt(200,true);
//	St("C",700, @0,@0,"buノーコa_カッター_shock");
//	FadeSt("C",200,true);
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300300870nko">
「かんけいない」

//	DeleteAllSt(200,true);
//	St("C",700, @0,@0,"bu沙紅羅_木刀_angry");
//	FadeSt("C",200,true);
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300880skr">
「しらねーけどよ、おまえの愛情はよーくわかる」

//	DeleteAllSt(200,true);
//	St("C",700, @0,@0,"buノーコa_カッター_shock");
//	FadeSt("C",200,true);
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300300890nko">
「わからない」

//	DeleteAllSt(200,true);
//	St("C",700, @0,@0,"bu沙紅羅_木刀_hard");
//	FadeSt("C",200,true);
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300900skr">
「だから、憎しみも、よくわかる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//	DeleteAllSt(200,true);
//	St("C",700, @0,@0,"buノーコa_カッター_shock");
//	FadeSt("C",200,true);
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300300910nko">
「にくしみはない」

//	DeleteAllSt(200,true);
//	St("C",700, @0,@0,"bu沙紅羅_木刀_pride");
//	FadeSt("C",200,true);
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300920skr">
「その刃から、ビンビンと、感じるね」

//	St("C",700, @0,@0,"bu沙紅羅_木刀_hard");
//	FadeSt("C",200,true);
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300930skr">
「でもな」

//	St("C",700, @0,@0,"bu沙紅羅_木刀_angry");
//	FadeSt("C",200,true);
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300940skr">
「本当に愛してんなら――」

//	St("C",700, @0,@0,"bu沙紅羅_木刀_rage");
//	FadeSt("C",200,true);
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300950skr">
「似鳥を、困らせるようなことするんじゃねぇっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//	DeleteAllSt(200,true);
//	St("C",700, @0,@0,"buノーコa_カッター_shock");
//	FadeSt("C",200,true);
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300300960nko">
「わたしが――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300300970nko">
「にとりを、こまらせる？」

//	St("C",700, @0,@0,"buノーコa_カッター_rage");
//	FadeSt("C",200,true);
{
	Fade("@絵背景ライン", 300, 0, Axl3, false);
	Move("@絵背景ライン", 300, 0, @0, Dxl2, false);
	Zoom("絵窓右", 300, 3000, 1000, Dxl2, true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300300980nko">
「ふざけるな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
//	DeleteAllSt(200,true);

	CutInLineStop01();
//◆ＳＥ：ジャキーン！！

//◆演出指示：カッターの数が増える
	CreateSE("SE01","se戦闘_金属弾く01");
	CreateSE("SE02","se戦闘_金属弾く01");
	CreateSE("SE02b","se戦闘_金属弾く01");
	CreateSE("SE03","se戦闘_金属弾く02");
	CreateSE("SE04","se戦闘_カッター_GOC");

	CreateTextureEX("絵背景300", 3000, center, -576, "cg/ev/ev0000ノーコカッターd_big.jpg");
	CreateTextureEX("絵背景400", 3000, center, middle, "cg/ev/ev0000ノーコカッターd.jpg");
	Zoom("絵背景400", 0, 1200, 1200, null, true);
	SetBlur("絵背景400", true, 2, 500, 50, false);
	Zoom("絵背景300", 0, 2000, 2000, null, true);
	SetBlur("絵背景300", true, 2, 500, 50, false);

	MusicStart("SE04",0,800,0,1000,null,false);
	MusicStart("SE01",0,700,0,1000,null,false);

	MoveFTP1stop();
	MoveFTP2stop();

	Fade("絵背景300", 200, 1000, null, false);
	Move("絵背景300", 300, @0, 0, Dxl1, false);
	Zoom("絵背景300", 300, 1000, 1000, Dxl2, 100);

	MusicStart("SE02",0,700,0,1000,null,false);

	Move("絵背景300", 300, -327, -167, Axl1, false);
	Wait(100);
	MusicStart("SE02b",0,700,0,1000,null,false);

	Wait(100);
	MusicStart("SE03",0,700,0,1000,null,false);

	Wait(100);

	Fade("絵背景400", 500, 1000, null, false);
	Zoom("絵背景400", 500, 1000, 1000, Dxl2, true);

	Delete("絵窓右*");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0231]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300300990skr">
「な！　増えるって――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//おがみ：β調整済み
//◆演出指示：喝雄不死が折れる
//◆ＳＥ：カラカラーン
	CreateSE("SE01a","se戦闘_刃物02");
	CreateSE("SE01b","se戦闘_刃物02");
	CreateSE("SE01c","se戦闘_刃物02");
	CreateSE("SE02","se戦闘_切断破壊");
	CreateSE("SE03","se戦闘_破壊01");
	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 4000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");
	CreateTextureEX("絵背景400", 4000, Center, Middle, "cg/ef/efカッター剣閃b.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	Fade("絵背景400", 0, 1000, null, true);

	MusicStart("SE01a",0,700,0,1000,null,false);
	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Wait(200);

	MusicStart("SE01b",0,700,0,1000,null,false);
	Shake("絵背景400", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景400", 300, 1200, 1200, Dxl2, false);

	Wait(200);

	MusicStart("SE01c",0,700,0,1000,null,false);
	Zoom("絵背景100", 0, 1000, 1000, null, true);
	Fade("絵背景400", 0, 0, null, true);
	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Wait(200);

	MusicStart("SE02",0,700,0,1000,null,false);
	Zoom("絵背景400", 0, 1000, 1000, null, true);
	Fade("絵背景400", 0, 1000, null, true);
	Shake("絵背景400", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景400", 300, 1200, 1200, Dxl2, false);

	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景100");
	Delete("絵背景200");
	Delete("絵背景300");
	Delete("絵背景400");
	CreateTextureSPadd("絵背景100", 100, Center, Middle, "cg/ef/ef045_スパーク.jpg");
	Zoom("絵背景100", 0, 1100, 1100, null, true);

	Wait(600);

	Fade("絵色100", 500, 0, null, false);

	MusicStart("SE03",0,700,0,1000,null,false);
	Shake("絵背景100", 1500, 5, 5, 0, 0, 1000, Dxl1, false);
	FadeF4("絵背景100", 1000, 1000, 1000, 0, 0, Dxl2, false);
	Zoom("絵背景100", 1500, 1300, 1300, null, false);

	Wait(600);
	Fade("絵背景100", 400, 0, Axl1, true);

	Delete("絵背景100");
	Delete("絵色100");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	St("C",700, @0,@100,"bu沙紅羅_通常_pinch");
	Move("@StNameC/C*", 200, @0, @-100, Dxl2, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300301000skr">
「喝雄不死――！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_pain");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300301010skr">
「アタシの喝雄不死が――！！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_カッター_rage");
	FadeQ($C_次,0,0,200,0,50,Dxl1,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301020nko">
「これは、わたしのいかり」

{	Move("@StNameC/C*", 200, @50, @50, Axl1, false);
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300301030skr">
「な……！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2136);}


	SetVolume("SE*", 1000, 0, null);
	SetVolume("@xbgm*", 1000, 0, null);


	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateTextureEX("絵背景100", 4000, Center, middle, "cg/ef/efカッター剣閃a.jpg");
	Request("絵背景100", Smoothing);
//	Zoom("絵背景100", 0, 2000, 2000, null, true);
//	Rotate("絵背景100", 0, @0, @0, @90, null,true);
//	Move("絵背景100", 0, @100, @0, null, true);

//◆ＳＥ：どごーん！　橋脚が崩れる

//◆演出指定：濛々と沸き上がる土煙

//◆演出指定：ゆっくり煙が晴れ、その向こうからノーコが歩いてくる

//おがみ：β調整済み
	CreateSE("SE01","se戦闘_切断04");
	CreateColorEXadd("絵色100", 4500, "WHITE");

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵色100", 0, 1000, null, true);

	Fade("絵背景100", 0, 1000, null, true);

	Fade("絵色100", 200, 0, null, true);

//◆場所：秋葉原_ガード下_破壊

	OnBG(10,"bg0102300秋葉原_ガード下_破壊");
	FadeBG(0,true);

	Fade("絵色100", 200, 1000, null, true);

	CreateSE("SE02","se戦闘_倒壊03");
	CreateSE("SE03","se戦闘_倒壊02");
	MusicStart("SE02",0,300,0,1000,null,false);

	CreateTextureSP("絵背景100", 100, 412, 200, "cg/bg/bg0102300秋葉原_ガード下_破壊.jpg");
	Request("絵背景100", Smoothing);
	Zoom("絵背景100", 0, 3000, 3000, null, true);
	Rotate("絵背景100", 0, @0, @0, 20, null,true);

	CreateMovieEX("ムービー１", 200, Center, Middle, true, true, "dx/mvk100.ngs");
	Request("ムービー１", AddRender);
	Zoom("ムービー１", 0, 3000, 3000, null, true);
	Fade("ムービー１", 0, 1000, null, true);

	Wait(300);

	Fade("絵色100", 1000, 0, Axl1, false);
	Rotate("絵背景100", 2500, @0, @0, 0, Axl1,false);
	Shake("絵背景100", 2500, 5, 5, 0, 0, 1000, Dxl1, false);
	FadeF4("絵背景100", 2000, 2000, 2000, 0, 0, Dxl2, false);
	Zoom("絵背景100", 2500, 2000, 2000, Axl2, 2500);

	MusicStart("SE03",0,1500,0,1000,null,false);
	SetBlur("絵背景100", false, 0, 0, 0, false);
	MusicStart("SE05",0,1500,0,1000,null,false);
	Shake("絵背景100", 3000, 12, 7, 0, 0, 1000, null, false);
	FadeF4("絵背景100", 3000, 2000, 2000, 0, 0, Dxl2, false);

	Wait(1300);
	Wait(600);

	Fade("絵背景100", 1500, 0, null, true);


	Delete("絵背景100");
	Delete("絵色100");

	SetVolume("SE02", 1000, 0, null);

	Wait(1000);

	CreateTextureEX("ノーコ100", 100, Center, InBottom, "cg/st/stノーコa_通常_mad.png");
	Request("ノーコ100", Smoothing);
	Move("ノーコ100", 0, @0, @80, null, true);
	Zoom("ノーコ100", 0, 900, 900, null, true);

	SetVolume("SE*", 4000, 0, Axl3);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300301040skr">
「う――ウソォッ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	Zoom("ノーコ100", 5000, 1000, 1000, null, false);
	Fade("ノーコ100", 5000, 1000, null, false);
	Wait(1000);
	Delete("絵背景100");

	SoundPlay("@xbgm24",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0251]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301050nko">
「わたしは、しっている」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301060nko">
「にとりは、にげているだけ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301070nko">
「わたしは、にとりの、ねがいからうまれた」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301080nko">
「すなおになれば、にとりは――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301090nko">
「きっと、わたしをみとめてくれる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	Fade("ノーコ100", 200, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300301100skr">
「それが、おまえの勘違い――」

{	DeleteAllSt(200,true);
	Fade("ノーコ100", 200, 1000, null, true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301110nko">
「ちがう」

{	Fade("ノーコ100", 200, 0, null, true);
	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300301120skr">
「それでも、拒絶されたら？」

{	DeleteAllSt(200,true);
	Fade("ノーコ100", 200, 1000, null, true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301130nko">
「ありえない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
{	Fade("ノーコ100", 200, 0, null, true);
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300301140skr">
「でも――」

{	DeleteAllSt(200,true);
	Fade("ノーコ100", 200, 1000, null, true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301150nko">
「うるさい！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301160nko">
「わたしと、にとりの、じゃまをするやつ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301170nko">
「ほふる」

{	Fade("ノーコ100", 200, 0, null, true);
	St("C",700, @0,@0,"bu沙紅羅_通常_pinch");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300301180skr">
「――くそっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);


//◆ＳＥ：木刀がはね飛ばされる
//◆ＳＥ：カッター
	CreateSE("SE01","se戦闘_刃物02");
	CreateSE("SE02","se戦闘_木刀_転がる");


	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/efカッター剣閃b.jpg");

	Zoom("絵背景100", 200, 1200, 1200, Axl1, false);

	Wait(100);
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵背景100", 100, 1000, null, true);

	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);


	Wait(200);
	Fade("絵背景100", 100, 0, null, true);
	Delete("絵背景100");

	MusicStart("SE02",0,1000,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{	St("C",700, @0,@0,"bu沙紅羅_通常_pain");
	Shake("@StNameC/C*", 200, 15, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @-30, @20, Dxl1, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300301190skr">
「きゃっ！」

{	DeleteAllSt(200,true);
	Fade("ノーコ100", 200, 1000, null, true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301200nko">
「おれたぼくとうで、ふせげるとでも？」

{	Fade("ノーコ100", 200, 0, null, true);
	St("C",700, @0,@0,"bu沙紅羅_通常_pinch");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300301210skr">
「う……うう……この……」

{	DeleteAllSt(200,true);
	Fade("ノーコ100", 200, 1000, null, true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301220nko">
「わたしのじゃまをしたむくい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301230nko">
「しね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 1000, 0, null);

	TextBoxDelete(150);
	Fade("ノーコ100", 200, 0, null, true);

//◆ＳＥ：シュパーン！　どごーん！
	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");
	CreateTextureEX("絵背景200", 100, -824, -576, "cg/ev/l/ev0000ノーコカッターc_l.jpg");
	CreateTextureEX("絵背景300", 100, Center, Middle, "cg/ev/ev0000ノーコカッターc.jpg");
	Zoom("絵背景300", 0, 2000, 2000, null, true);
	SetBlur("絵背景300", true, 2, 500, 50, false);
	SetBlur("絵背景200", true, 1, 500, 20, false);

	CreateSE("SE01","se戦闘_カッター_刃出す01普通b");
	CreateSE("SE02","se戦闘_風切り音05");
	CreateSE("SE03","se戦闘_風切り音10");
	CreateSE("SE04","se戦闘_金属弾く05");
	MusicStart("SE01",0,700,0,900,null,false);

	Fade("絵背景200", 300, 1000, null, false);
	BezierMove("絵背景200", 1500, (-824,-576){-1000,-100}{-1000,-100}(-1024,0){0,0}{0,0}(0,-288), Axl2, false);

	Wait(1000);

	MusicStart("SE03",0,700,0,1000,null,false);
	Wait(300);
	MusicStart("SE02",0,1200,0,1000,null,false);
	Fade("絵背景300", 200, 1000, null, false);
	Zoom("絵背景300", 300, 1000, 1000, Dxl2, true);


	Fade("絵背景100", 0, 1000, null, true);

	MusicStart("SE04",0,1200,0,1000,null,false);
	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);


	Wait(200);

	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景100");
	Delete("絵背景200");
	Delete("絵背景300");
	Delete("ムービー１");




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300301240skr">
「――――っ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆ＳＥ：ばきっ！　こぶしが呻るぜ！

//◆ＳＥ：カランと音を立ててカッターナイフが転がる

	CreateSE("SE01","se戦闘_打撃音07");
	CreateSE("SE02","se戦闘_金属弾く02");
	CreateSE("SE03","se戦闘_カッター_転がる");


	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ef/ef045_スパーク.jpg");
	Zoom("絵背景100", 0, 1150, 1150, null, true);

	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(300);

	Fade("絵色100", 500, 0, null, false);

	MusicStart("SE02",0,700,0,1000,null,false);
	Shake("絵背景100", 800, 5, 5, 0, 0, 1000, Dxl1, false);
	FadeF4("絵背景100", 500, 1050, 1050, 0, 0, Dxl2, false);
	Zoom("絵背景100", 800, 1000, 1000, null, true);

	Wait(200);
	MusicStart("SE03",0,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0291]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301250nko">
「きゃっ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300301260skr">
「え……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	CreateSE("SE01","se擬音_光り輝く02");
	CreateColorEXadd("絵色200", 5100, "WHITE");

	CreateTextureEXadd("絵キラキラ１", 1000, Center, Middle, "cg/ef/efキラキラa.png");
	CreateTextureEXadd("絵キラキラ２", 1000, Center, Middle, "cg/ef/efキラキラb.png");

//◆ＥＶ："ev/ev2130沙紅羅双六に一目惚れ.txt"
	CreateTextureEX("絵背景200", 100, Center, Middle, "cg/ev/ev2130沙紅羅双六に一目惚れa.jpg");
	CreateTextureEX("絵背景200BIG", 100, -1024, Middle, "cg/ev/l/ev2130沙紅羅双六に一目惚れa_l.jpg");

	Fade("絵色100", 300, 1000, null, true);
	Fade("絵色200", 0, 100, null, true);
	Fade("絵背景200", 0, 1000, null, true);
	Fade("絵背景200BIG", 0, 1000, null, true);
	Delete("絵背景100");

	$キラキラナット名１ = @絵キラキラ１;
	$キラキラナット名２ = @絵キラキラ２;
	$キラキラタイム = 1000;
	
	$Warpトランジ = @絵色200;
	$Warpトランジ速度 = 4000;
	$Warpトランジなめらかさ = 500;

	CreateProcess("プロセス１", 150, 0, 0, "KirakiraLoop");
//	CreateProcess("プロセス２", 150, 0, 0, "ZoomRoseLoop");
	CreateProcess("プロセス３", 150, 0, 0, "TransitionLoop");
	SetAlias("プロセス１","プロセス１");
//	SetAlias("プロセス２","プロセス２");
	SetAlias("プロセス３","プロセス３");

	Request("プロセス１", Start);
//	Request("プロセス２", Start);
	Request("プロセス３", Start);

	MusicStart("SE01",0,700,0,1000,null,false);
	Move("絵背景200BIG", 6200, 0, 0, null, false);
	Fade("絵色100", 1000, 0, null, true);

	Wait(4000);

	Fade("絵背景200BIG", 1000, 0, null, true);

	Delete("絵背景200BIG");
	Delete("絵色100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0292]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/300301270ksr">
「――――ふぅ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/300301280ksr">
「大丈夫か、嬢ちゃん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SoundPlay("@xbgm28",0,450,true);

	TextBoxDelete(150);

	CreateSE("SE02","se擬音_ギャグ_きゃるーん");
	MusicStart("SE02",0,700,0,1000,null,false);


	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/ev/ev2130沙紅羅双六に一目惚れb.jpg");
	Fade("絵背景100", 500, 1000, null, true);
	Delete("絵背景200");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300301290skr">
（も、ももも……もしかして、これが……）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300301300skr">
（占いに出てた、運命の……ひと……！？）

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301310nko">
「かわらやすごろく……！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300301320skr">
「双六……さん？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2137);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300301330skr">
（素敵な名前……）

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/300301340ksr">
「おい、なにをボサッとしてる？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/300301350ksr">
「早く逃げな」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300301360skr">
「そ……そんな！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300301370skr">
「アタシだけ、逃げるなんてできね――できません」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/300301380ksr">
「はっ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/300301390ksr">
「なんだ。可愛い顔しといて言うぜ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300301400skr">
「可愛い……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 1000, 0, null);


	CreatePlainSP("揺用", 18005);

	Request("プロセス１", Start);
	Request("プロセス３", Start);
	Delete("プロセス*");
	Delete("絵キラキラ*");
	Delete("絵背景100");
	Delete("絵色*");

	Fade("揺用", 500, 0, null, true);
	Delete("揺用");

	CreateTextureEX("絵背景100", 100, Center, InBottom, "cg/st/stノーコa_通常_mad.png");
	Move("絵背景100", 0, @0, @80, null, true);
	Fade("絵背景100", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301410nko">
「どいて」

{	SoundPlay("@xbgm31",0,450,true);
	Fade("絵背景100", 200, 0, null, true);
	St("C",700, @0,@50,"bu双六a_横向き_pride");
	Move("@StNameC/C*", 400, @0, @-50, Dxl1, false);
	FadeSt("C",400,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/300301420ksr">
「あんなぁ、ねーちゃん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
{	St("C",700, @0,@0,"bu双六a_横向き_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/300301430ksr">
「見ず知らずの人間に、こういうこと言いたかねえが。
　こういうことされると、商売あがったりでね」

{	St("C",700, @0,@0,"bu双六a_横向き_sad");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/300301440ksr">
「堅気の人間に迷惑かけんなって、双一親分に口酸っぱく言われてんだ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/300301450ksr">
「サクッと帰ってもらえると――」

{	DeleteAllSt(200,true);
	Fade("絵背景100", 200, 1000, null, true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301460nko">
「あなたがわるい」

{	Fade("絵背景100", 200, 0, null, true);
	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/300301470ksr">
「ん？」

{	DeleteAllSt(200,true);
	Fade("絵背景100", 200, 1000, null, true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301480nko">
「あなたが――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_風切り音09");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵背景100", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Fade("絵背景100", 200, 0, null, false);
	St("C",700, @0,@0,"buノーコa_カッター_rage");
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301490nko">
「あなたさえいなければ――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);
	Delete("絵背景100");
//◆ＥＶ："ev/ev0000ノーコカッター.txt"

//◆演出指定：ノーコの手にカッターナイフ出てくる

	CreateSE("SE01","se戦闘_風切り音10");
	CreateSE("SE02","se戦闘_金属弾く01");

	CreateTextureEX("絵背景300", 150, Center, Middle, "cg/ev/ev0000ノーコカッターc.jpg");
	Zoom("絵背景300", 0, 2000, 2000, null, true);
	SetBlur("絵背景300", true, 2, 500, 50, false);

	MusicStart("SE01",0,1200,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("絵背景300", 200, 1000, null, false);
	Zoom("絵背景300", 300, 1000, 1000, Dxl2, true);


//◆演出指定：カッターナイフ伸びて、鞭のように撓る

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0341]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301500nko">
「しね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆演出指定：刃が迫る
	CreateColorEXadd("絵色100", 1500, "WHITE");

	Zoom("絵背景300", 300, 2000, 2000, Axl3, false);
	Fade("絵色100", 300, 1000, null, true);
	Delete("絵背景300");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/300301510ksr">
「くっ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300301520skr">
「双六さん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se人体_骨軋む01");
	CreateSE("SE02","se戦闘_血しぶき01");
	CreateSE("SE03","se戦闘_金属弾く02");
	MusicStart("SE03",0,700,0,1000,null,false);
	Fade("絵色100", 300, 0, null, true);
	Delete("絵色100");

//※北原メモ：→怪我差分は作るのかな？
//おがみ：β調整済み

	St("C",700, @0,@0,"bu双六a_通常_pinch");
	FadeQ($C_次,0,0,200,0,50,Dxl1,false);
	Shake("@StNameC/C*", 200, 15, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);
	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0351]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/300301530ksr">
「いてぇっ！」

{	DeleteAllSt(200,true);}
　鞭のように撓る刃が、河原屋の腕に巻き付く。

　肉まで食い込んだその傾斜を、血が伝い落ちていく。

{	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300301540skr">
「この！　双六さんを離――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2138);}

	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu双六a_通常_shout");
	FadeSt("C",200,true);

	CreateTextureEX("絵背景100", 100, Center, InBottom, "cg/st/stノーコa_通常_mad.png");
	Move("絵背景100", 0, @0, @80, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
<voice name="河原屋双六" class="河原屋双六" src="voice/21/300301550ksr">
「引っ込んでろ！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_shy");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300301560skr">
「でも――」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu双六a_通常_pinch");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/300301570ksr">
「武器もないのに、どうしようってんだよ？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300301580skr">
「それは――」

{	DeleteAllSt(200,true);
	Fade("絵背景100", 200, 1000, null, true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301590nko">
「それは」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301600nko">
「あなたもおなじ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301610nko">
「どうするの？」

{	Fade("絵背景100", 200, 0, null, true);
	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/300301620ksr">
「さあな」

{	DeleteAllSt(200,true);
	CreateTextureEX("絵背景100", 100, Center, InBottom, "cg/st/stノーコa_通常_smile.png");
	Move("絵背景100", 0, @0, @80, null, true);
	Fade("絵背景100", 200, 1000, null, true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301630nko">
「…………そう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301640nko">
「あなたも、しにたいの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2139);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
{	Fade("絵背景100", 200, 0, null, true);
	St("C",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/300301650ksr">
「……ふん」

{	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/300301660ksr">
「じゃ、殺してくれるか？」

{	DeleteAllSt(200,true);
	CreateTextureEX("絵背景100", 100, Center, InBottom, "cg/st/stノーコa_通常_mad.png");
	Move("絵背景100", 0, @0, @80, null, true);
	Fade("絵背景100", 200, 1000, null, true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301670nko">
「とうぜん」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301680nko">
「しね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 300, 0, null);
	SetVolume("SE*", 1000, 0, null);

	TextBoxDelete(150);
	Fade("絵背景100", 200, 0, null, true);
	Delete("絵背景100");
//	Wait(300);

	CreateTextureEX("マスク１枠", 1610, 0, 0, "cg/mask/ciスラッシュ_05_01z.png");
	CreateMask("マスク１", 200, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("マスク１","マスク１");

	CreateTextureEX("マスク１/絵背景1000", 1000, -923, -350, "cg/bg/l/bg0102300秋葉原_ガード下_破壊_l.jpg");
	CreateTextureEX("マスク１/絵st100", 1000, 419, 0, "cg/bu/bu似鳥_背張る_shout.png");
	CreateTextureEX("マスク１/絵st200", 1000, 419, 0, "cg/bu/bu似鳥_背張る_hard.png");

	Move("マスク１/絵st100", 0, 478, 100, null, true);

	CreateSE("SE01","se動作_一歩");
	MusicStart("SE01",0,600,0,1100,null,false);
	Fade("マスク１枠", 300, 1000, null, false);
	Fade("マスク１/絵背景1000", 300,1000,null,true);
	Move("マスク１/絵st100", 300, 419, 0, Dxl1, false);
	Fade("マスク１/絵st100", 300,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//◆音声指示：遠くから
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/300301690wfn">
「待って！」

{	St("ML",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301700nko">
「え――」

{
//	DeleteAllSt(200,true);
	Fade("マスク１/絵st100", 300,0,Axl1,false);
	Fade("マスク１/絵st200", 300,1000,Dxl1,true);
}
//◆音声指示：遠くから
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/300301710wfn">
「お……オレは、ここだ！」

{	St("ML",700, @0,@0,"buノーコa_通常_smile");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301720nko">
「にとり！　みつけた――」

{
//	DeleteAllSt(200,true);
	Fade("マスク１/絵st200", 300,0,Axl1,false);
	Fade("マスク１/絵st100", 300,1000,Dxl1,true);
}
//◆音声指示：遠くから
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/300301730wfn">
「捕まえられるなら、捕まえてみろ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：ダッシュで逃げ出す

	SetVolume("@xbgm*", 1000, 0, null);

	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",0,1000,0,1000,null,true);

	Move("マスク１/絵st100", 300, 1076, @0, Axl1, false);
	Fade("マスク１/絵st100", 300, 0, null, true);
	Move("マスク１枠", 300, 800, @0, null, false);
	Move("マスク１", 300, 800, @0, null, true);
	Delete("マスク１/絵*");
	Delete("マスク１*");


	DeleteAllSt(200,true);

	SetVolume("SE01", 1500, 0, Axl1);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
{	St("C",700, @0,@0,"stノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301740nko">
「……いいわ」

{	St("C",700, @0,@0,"stノーコa_通常_smile");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301750nko">
「いまはおあずけ」

{	St("C",700, @0,@0,"stノーコa_通常_mad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/300301760nko">
「つぎにあったとき、しょうぶをつける」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//おがみ：ＳＥ：ノーコ去る音
	TextBoxDelete(150);

//※下倉注：カッター音が中途に残る感じなのでコメントアウト 2010/11/21
//	CreateSE("SE00","se戦闘_カッター_刃出す03遅いa");
	CreateSE("SE01","se動作_空飛ぶ02");
	MusicStart("SE00",0,1000,0,1000,null,false);

	MusicStart("SE01",0,1200,0,1000,null,false);
	Move("@StNameC/C*", 200, @0, @50, Dxl1, true);
	Move("@StNameC/C*", 200, @0, @-50, Axl1, false);
	DeleteAllSt(200,true);

//	SetFrequency("SE00", 3000, 500, null);

	Wait(3000);

//	SetVolume("@SE*", 500, 0, null);


	SoundPlay("@xbgm04",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0401]
{	St("ML",700, @0,@0,"bu双六a_横向き_sigh");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/300301770ksr">
「やれやれ……行ったか」

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/300301780ksr">
「嬢ちゃん、ケガは……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
{	St("ML",700, @0,@0,"bu双六a_通常_pinch");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/300301790ksr">
「おい嬢ちゃん、頭でも打ったか？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_乙女_shout");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300301800skr">
「い、いえ！　ありがとうございます！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/300301810ksr">
「そうか？　なんか、ボーッとしてるみたいだけど」

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/300301820ksr">
「ウチの店で休んでいくか？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_頭かき_shy");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300301830skr">
「え！？　え！？　いいんですかっ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/300301840ksr">
「袖すり合うも多生の縁……ってな。
　来いよ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_乙女_shy");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300301850skr">
「あ、いや、でも――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300301860skr">
「このままじゃ、似鳥のヤツが……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/300301870ksr">
「恋人か？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300301880skr">
「全ッ然ッ！　違います！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/300301890ksr">
「だよな。ほっとけあんなやつ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_乙女_shy");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300301900skr">
「でも、そういうわけには――！」

{	DeleteAllSt(200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/300301910nki">
「ん……ん、んくぅ……」

{	St("MR",700, @0,@0,"bu沙紅羅_後ろ向き_shy");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300301920skr">
「え？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);


//◆場所：エレキセンター_廊下
	OnBG(10,"bg0901200エレキセンター_廊下_閉店");
	FadeBG(500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
{	St("C",700, @-30,@50,"bu似鳥_通常_pain");

	Shake("@StNameC/C*", 200, 5, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 400, @30, @-50, Dxl1, false);
	FadeSt("C",400,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/300301930nki">
「イテテテテテ……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300301940skr">
「は？　似鳥？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/300301950skr">
「じゃあ、さっき向こうに走っていったのは？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/21/300301960ksr">
「…………さあ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	if($CharaName=="沙紅羅"){
	}else if($CharaName=="似鳥"){
	}else{

		SetVolume("@xbgm*", 1500, 0, null);

		CreateColorEX("絵色100", 20000, "BLACK");
		Fade("絵色100", 1000, 1000, null, true);
		Wait(500);
	}

	EndScene();
}
