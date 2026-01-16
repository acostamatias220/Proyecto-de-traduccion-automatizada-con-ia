
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2200恵那.nss_MAIN
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
	$GameName = "2210恵那.nss";
	//$GameCircle=false;

}

scene 2200恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1530">
////////////header////////////
//file name "2200恵那.nss"
//title "新たな事実"
//previous "2150恵那.nss"

////////////footer////////////
//next "恵那" "2210恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);

{	ClockPass(2200);}

//◆場所：スパコン館_店内
	OnBG(10,"bg1103100スパコン館_店内_通常");
	FadeBG(0,true);

{	St("ML",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("ML",0,true);}
	FadeDelete("上背景", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000200010fje">
「どうしてここが……？」

{	SoundPlay("@xbgm31",1000,450,true);
	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200020ksr">
「双一親分は、なんでもお見通しだぜ」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200030ksr">
「ミヅハと星が、アザナエルを取りに半田明神へと戻っていることも――」


//	St("C",700, @0,@0,"bu双六a_通常_pride");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200040ksr">
「平次のとっつぁん。
　てめぇが今、アザナエルを持っていることも、だ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200050ksr">
「渡してくれるよな？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000200060fje">
「なに言ってるの！？
　父さんが渡すはずないじゃない！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"buユージローa_通常_angry");
	Shake("@StNameMR/MR*", 200, 0, 30, 0, 0, 500, Axl3, false);
	FadeSt("MR",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/22/000200070ujr">
「わうわうわうっ！！」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200080ksr">
「外野は黙ってな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000200090fje">
「なによ、親分がいないと何もできないクセに！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000200100fjh">
「恵那、落ち着け」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000200110fje">
「でも――」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_cool");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000200120fjh">
「これ、持っとけ」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000200130fje">
「アザナエル――？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);









//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_cool");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000200140fjh">
「もしもオレに、万が一のことがあったら――」

//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000200150fjh">
「そいつを持って、半田明神に走れ」

//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000200160fjh">
「いいな？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu恵那_通常_think");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000200170fje">
「…………」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_cool");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000200180fjh">
「返事は？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu恵那_通常_think");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000200190fje">
「…………」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_cool");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000200200fjh">
「おい恵那――！！」

{	DeleteAllSt(200,false);}

{	St("C",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200210ksr">
「ってかさ、問答は良いからさっさと渡してくれねぇか。
　こっちもさ、予定が詰まってんだよ」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200220ksr">
「なんてったって、これから半田明神に弾を取りに行かなきゃならねぇんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000200230fje">
「弾を――？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_cool");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000200240fjh">
「半田明神の本殿に忍び込む気か？」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200250ksr">
「いやいや、オレが入るわけじゃねぇけどな。
　さすがにあれほどの結界となると――」

{	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200260ksr">
「――と、しゃべりが過ぎたみてぇだ」


{	St("C",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200270ksr">
「アザナエルをよこさねぇってんなら――
　力尽くでいただくぜッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2201);}

//	TextBoxDelete(150);

//◆演出指定：十手で応戦：逆襲

	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);
Wait(100);
{	Zoom("@StNameC/C*", 100, 1200, 1200, Dxl3, false);
	Move("@StNameC/C*", 100, @-50, @0, Dxl1, false);
	DeleteAllSt(100,true);}

{	St("MR",700, @-100,@0,"bu平次_御用だ_angry");
	Zoom("@StNameMR/MR*", 0, 800, 800, Dxl3, true);
	Move("@StNameMR/MR*", 100, @100, @0, Dxl1, false);
	Zoom("@StNameMR/MR*", 100, 1000, 1000, Dxl3, false);
	FadeSt("MR",100,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000200280fjh">
「そいやぁっ！！」

{
	CreateSE("SE01","se戦闘_金属衝突02");
	CreateSE("SE02","se戦闘_打撃音07");
	CreateSE("SE03","se戦闘_風切り音10");
	MusicStart("SE03",0,700,0,1000,null,false);
	Move("@StNameMR/MR*", 100, @100, @0, Dxl1, false);
	Zoom("@StNameMR/MR*", 100, 1200, 1200, Dxl3, false);
	DeleteAllSt(200,true);

	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateTextureEX("揺用", 5000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	Rotate("揺用", 0, 0, 180, 0, null,true);
	Fade("揺用", 0, 1000, null, true);
	Zoom("揺用", 0, 1200, 1200, null, true);
	FadeF4("揺用", 500, 1000, 3000, 0, 0, Dxl1, false);
	Shake("揺用", 500, 5, 15, 0, 0, 1000, Dxl1, false);


	Fade("揺用", 350, 0, Axl1, true);
	Delete("揺用");

	St("ML",700, @0,@0,"bu双六a_横向き_sigh");
//	Move("@StNameC/C*", 500, @-50, @-50, Dxl3, false);
	Shake("@StNameML/ML*", 500, 5, 15, 0, 0, 1000, Dxl1, false);
	FadeSt("ML",200,true);
}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200290ksr">
「がはっ！！」

{	Move("@StNameML/ML*", 500, @0, @50, Dxl3, false);
	DeleteAllSt(200,true);
	CreateSE("SE01","se人体_倒れる04");
	MusicStart("SE01",0,700,0,1000,null,false);

}
　殴りかかった双六が、平次の十手で返り討ちに遭う。


{	St("MR",700, @-100,@0,"bu平次_御用だ_angry");
Move("@StNameMR/MR*", 200, @100, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000200300fjh">
「八代連綿と受け継がれたこの富士見式捕縛術！
　素人ごときに破れると思うなッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@50,"bu双六a_通常_angry");
Move("@StNameML/ML*", 200, @0, @-50, Dxl1, false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200310ksr">
「て、てめぇッ！
　双一親分に逆らう気か！？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_cool");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000200320fjh">
「オレは正義の味方なんでね」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200330ksr">
「……はっ、だったらだったで、良いんだけどよ」

{	St("ML",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200340ksr">
「平次のとっつぁん。
　てめぇホントに覚悟、できてんだろうな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_cool");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000200350fjh">
「覚悟だと！？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200360ksr">
「１０年前の傷、またほじくり返されることになるぜ」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_pain");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000200370fjh">
「――――」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000200380fje">
「１０年前の――？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200390ksr">
「へっ！　動揺してる？　そらそうだ。
　あんな出来事、情けなくて娘には話せねぇもんな」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_pain");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000200400fjh">
「そ、そんなワケ――」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆ＳＥ：バキッ！！　殴る

	CreateSE("SE02","se戦闘_打撃音06");
	CreateSE("SE03","se戦闘_風切り音06");
	MusicStart("SE03",0,700,0,1000,null,false);
	//Move("@StNameMR/MR*", 100, @100, @0, Dxl1, false);
	//Zoom("@StNameMR/MR*", 100, 800, 800, Dxl3, false);
	DeleteAllSt(200,true);

	MusicStart("SE02",0,700,0,1000,null,false);
	CreateTextureEX("揺用", 5000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	//Rotate("揺用", 0, 0, 180, 0, null,true);
	Fade("揺用", 0, 1000, null, true);
	Zoom("揺用", 0, 1200, 1200, null, true);
	FadeF4("揺用", 500, 1000, 3000, 0, 0, Dxl1, false);
	Shake("揺用", 500, 5, 15, 0, 0, 1000, Dxl1, false);


	Fade("揺用", 350, 0, Axl1, true);
	Delete("揺用");

{	St("MR",700, @0,@0,"bu平次_落ち込み_pain");
	Shake("@StNameMR/MR*", 500, 15, 5, 0, 0, 1000, Dxl1, false);
	FadeSt("MR",200,true);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000200410fjh">
「がはっ！！」

{	Move("@StNameMR/MR*", 500, @0, @50, Dxl1, false);
	DeleteAllSt(200,true);
	CreateSE("SE01","se人体_倒れる04");
	MusicStart("SE01",0,700,0,1000,null,false);
}
{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200420ksr">
「ははっ！　親分が言ったとおり！」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200430ksr">
「効果、テキメンッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	Zoom("@StNameML/ML*", 100, 1200, 1200, Dxl3, false);
	Move("@StNameML/ML*", 100, @50, @0, Dxl1, false);
	DeleteAllSt(100,false);

//◆ＳＥ：バキッ！！　殴る

	CreateSE("SE01","se戦闘_打撃音06");
	CreateSE("SE02","se戦闘_打撃音07");
	CreateSE("SE03","se戦闘_風切り音06");
	MusicStart("SE03",0,700,0,1000,null,false);

	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureEX("揺用", 5000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	Rotate("揺用", 0, 180, 0, 0, null,true);
	Fade("揺用", 0, 1000, null, true);
	Zoom("揺用", 0, 1200, 1200, null, true);
	//FadeF4("揺用", 500, 1000, 3000, 0, 0, Dxl1, false);
	Shake("揺用", 500, 5, 15, 0, 0, 1000, Dxl1, false);

	Fade("揺用", 350, 0, Axl1, true);
	Wait(150);
	MusicStart("SE02",0,700,0,1000,null,false);

	Rotate("揺用", 0, 180, 180, 0, null,true);
	Fade("揺用", 0, 1000, null, true);
	Zoom("揺用", 0, 1200, 1200, null, true);//WaitKey();
	FadeF4("揺用", 500, 1000, 3000, 0, 0, Dxl1, false);
	Shake("揺用", 500, 5, 15, 0, 0, 1000, Dxl1, false);

	Fade("揺用", 350, 0, Axl1, true);
	Request("揺用",Disused);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//	St("MR",700, @0,@0,"bu平次_通常_pain");
//	Shake("@StNameMR/MR*", 200, 30, 10, 0, 0, 500, Axl3, false);
//	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000200440fjh">
「うがっ！！」

//	DeleteAllSt(200,false);}
{	St("C",700, @100,@0,"buユージローa_通常_angry");
Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	Shake("@StNameC/C*", 500, 0, 10, 0, 10, 500, Axl3, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/22/000200450ujr">
「がうがうがうっ！！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu双六a_通常_angry");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200460ksr">
「外野は黙ってろって！」

//◆ＳＥ：バキッと音がしてユージローが吹っ飛ばされる


{	CreateSE("SE01","se戦闘_打撃音02");
	MusicStart("SE01",0,700,0,1000,null,false);
}
{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"buユージローa_通常_sad");
//	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/22/000200470ujr">
「きゃう――――んっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2202);}

	CreateSE("SE02","se人体_倒れる03");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 5000);
	Shake("絵板写", 500, 0, 10, 0, 0, 1000, Dxl1, true);
	Request("絵板写",Disused);

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("C",700, @0,@0,"bu恵那_哀愁_fear");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000200480fje">
「父さん、ユージロー！！」


{	DeleteAllSt(200,true);}




　床の上、膝をついて倒れた富士見平次。

　双六はそっと足をのせ――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//あきゅん「素材：img平次双六に足を折られる」


//あきゅん「β演出：↓ひとつのテキストボックスに「ふんっ！！」「がはぁっ！！」ってなるようにして下さい」

	CreateSE("SE01","se戦闘_打撃音06");
	CreateSE("SE02","se人体_骨砕ける01");

	CreateTextureEX("絵効果背景", 121, Center, Middle, "cg/img/img平次双六に足を折られる.jpg");
	Zoom("絵効果背景", 0, 1050, 1050, null, true);
	SetTone("絵効果背景", NegaPosi);

	CreateTextureEX("絵背景", 120, Center, Middle, "cg/img/img平次双六に足を折られる.jpg");
	SetBlur("絵背景", true, 5, 300, 50, false);
	Zoom("絵背景", 0, 2000, 2000, null, true);

	Wait(16);

	MusicStart("SE01",0,700,0,1000,null,false);
	Zoom("絵背景", 200, 1050, 1050, Dxl3, false);
	Fade("絵背景", 200, 1000, null, true);

	MusicStart("SE02",0,1200,0,1000,null,false);
	Fade("絵効果背景", 0, 1000, null, true);
	Shake("絵背景", 600, -8, 8, 0, 0, 1000, Dxl1, false);
	Shake("絵効果背景", 600, -8, 8, 0, 0, 1000, Dxl1, false);
	Wait(8);
	FadeDelete("絵効果背景", 300, null, false);

//演出的に//◆音声指示：同時
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0125]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200490ksr">
「ふんっ！！」
{WaitAddText();}<BR>

//【富士見平次】
//<voice name="富士見平次" class="富士見平次" src="voice/22/000200500fjh">
//「がはぁっ！！」

</PRE>
	SetText();
	AddText(1,"「ふんっ！！」","河原屋双六","22/000200490ksr",false,false,1000);
	AddText(2,"「がはぁっ！！」","富士見平次","22/000200500fjh",true,true,2000);
	TypeBeginD(0);//―――――――――――――――――――――――――――

	FadeDelete("絵背景", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0128]

{	St("C",700, @0,@0,"bu恵那_哀愁_cry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000200510fje">
「嫌ああッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　足袋をはいていた平次から、大きな音がする。


//	St("C",700, @0,@0,"bu平次_落ち込み_pain");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000200520fjh">
「あがっ、あが……いだだだだ…………ッッ！！」

{	St("ML",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200530ksr">
「お、砕けた？　ホレ」

{	DeleteAllSt(200,true);}
{	CreateSE("SE01","se人体_骨軋む01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
//	St("C",700, @0,@0,"bu平次_通常_shock");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000200540fjh">
「がああああああっ！　いでっ！　いでででででッ！！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @50,@0,"bu恵那_ハルヒ_angry");
Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000200550fje">
「や、やめなさいっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu双六a_横向き_sigh");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200560ksr">
「――あぁん？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_ハルヒ_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000200570fje">
「わ、私だって護身術くらい習ってるんだから！
　痛い目見たくなかったら、父さんから離れ――！」

{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000200580fjh">
「恵那ッ！　逃げろッ！！」

{	St("MR",700, @0,@0,"bu恵那_哀愁_fear");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000200590fje">
「でも、父さんが――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150a]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000200600fjh">
「バッキャロー！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}

	CreateSE("SE01","se人体_骨軋む01");
	MusicStartPro("@SE01", 0, 1000, 0, 1000, null, false,5600);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150b]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000200610fjh">
「オレは構わず――ほら！
　アザナエル持って半田明神に――があああああ！」


{	DustMusic("@SE01", 1000, 0, NULL);
	St("ML",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200620ksr">
「相変わらずだねぇ、平次のとっつぁんは」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200630ksr">
「どうだい嬢ちゃん？　この父ちゃん、誇らしい？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2203);}

//	TextBoxDelete(150);

	Delete("SE01");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000200640fje">
「いいからやめて！　お願い！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200650ksr">
「アザナエルをよこせ」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000200660fje">
「…………」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu双六a_横向き_sigh");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200670ksr">
「はぁ……ったくよッ！！」

{	CreateSE("SE01","se戦闘_打撃音06");
	MusicStart("SE01",0,700,0,1000,null,false);
}
{	DeleteAllSt(200,true);}
{	CreateSE("SE02","se人体_骨砕ける01");
	MusicStart("SE02",0,700,0,1000,null,false);
}

//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000200680fjh">
「うぎゃああっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　一際強く平次の足を踏みつけて、双六は立ち上がる。


{	St("C",700, @0,@50,"bu双六a_通常_hard");
Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200690ksr">
「親子揃って、石頭なんだからな」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000200700fje">
「やるの！？」

{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000200710fjh">
「や……やめろ……」


{	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200720ksr">
「大丈夫」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200730ksr">
「すぐに終わる」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000200740fje">
「え――！？」

{	CreateSE("SE01","se戦闘_打撃音02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(200);
}
{	Move("@StNameMR/MR*", 400, @600, @0, Axl3, false);
	DeleteAllSt(200,false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000200750fje">
「きゃっ！！」

{	CreateSE("SE02","se人体_倒れる03");
	MusicStart("SE02",0,700,0,1000,null,false);
}

　恵那の身体が一瞬で吹き飛ばされ、アザナエルが床に転がり落ちた。{	CreateSE("SE03","se銃_落とす01");
	MusicStart("SE03",0,700,0,1000,null,false);
}<br>


//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000200760fje">
「ぅ……ぁ、けほっけほっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000200770fjh">
「恵那ッ！！」

{	St("C",700, @-50,@0,"bu双六a_通常_hard");
Move("@StNameC/C*", 200, @50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200780ksr">
「うるせえよ平次のとっつぁん！
　ったく、手間かけさせやがって」

{	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200790ksr">
「――ま、いいや。
　ついでだし、おまえにいいこと教えてやるよ」

{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu恵那_哀愁_pinch");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000200800fje">
「いいこと……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200a]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200810ksr">
「知りたいんだろ？　１０年前の出来事」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}

	CreateSE("SE01","se人体_骨軋む01");
	MusicStartPro("@SE01",0,1400,0,1000,null,false,3000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200b]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000200820fjh">
「やめろ！　やめてく――がああああああッ！！」

{	DustMusic("@SE01", 1000, 0, NULL);
	St("C",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200830ksr">
「ったく、いいところなんだから黙ってろよ」


{	St("C",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200840ksr">
「あのなあ、嬢ちゃん」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200850ksr">
「コイツは今から１０年前、おまえの母ちゃんを賭けて、カゴメアソビに挑戦して――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2204);}
	Delete("SE01");

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//	St("C",700, @0,@0,"bu双六a_横向き_pride");
//	FadeSt("C",200,true);}
//【河原屋双六】

<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200860ksr">
「いや、違うな。
　挑戦する前に、逃げちまった」

{	DeleteAllSt(200,true);}

//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000200870fjh">
「――――！？」


{	St("C",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000200880fje">
「それって、どういう……？」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu双六a_横向き_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200890ksr">
「カゴメアソビに挑戦する前に、逃げ出したんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	St("C",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200900ksr">
「あー、もうちょっとわかりやすく説明してやろうか？」

//	St("C",700, @0,@0,"bu双六a_横向き_pride");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/22/000200910ksr">
「コイツにとって、おまえの母ちゃんは、命を賭けるだけの価値もなかったってことだよッ！！」




</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 2000, 0, null);

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆演出指示：時間経過

	CreateColorEX("絵黒幕", 25000, "BLACK");
	Fade("絵黒幕", 2000, 1000, null, true);

//◆時間：ジャンプ
{	ClockPass(2206);}
	WaitKey(1000);

	FadeDelete("絵黒幕", 2000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0225]
　双六が去ったスパコン館――

{	SoundPlay("@xbgm26",0,450,true);
	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000200920fje">
「…………」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu平次_通常_pain");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000200930fjh">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"buユージローa_通常_sad");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/22/000200940ujr">
「くううう……ん」

{	DeleteAllSt(200,false);}

{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000200950fje">
「……父さん」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu平次_落ち込み_sad");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000200960fjh">
「…………」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000200970fje">
「父さん！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu平次_通常_pain");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000200980fjh">
「な……なんでぇ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000200990fje">
「携帯、持ってるでしょ！
　星さんの電話番号、入ってる？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000201000fjh">
「なんで？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000201010fje">
「決まってるでしょ！
　次の河原屋双一の狙いは弾丸よ！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu平次_通常_pain");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000201020fjh">
「え……あ、そうか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000201030fjh">
「あ、いやでも、結界は簡単には破れねぇ――」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000201040fje">
「普通じゃなきゃ良いんでしょ？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@50,"bu平次_通常_shock");
Move("@StNameML/ML*", 200, @0, @-50, Dxl1, false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000201050fjh">
「――ッ！！　そ、そうかッ！」

{	CreateSE("SE02","se人体_倒れる04");
	MusicStart("SE02",0,700,0,1000,null,false);
}
{	Shake("@StNameML/ML*", 300, 5, 0, 0, 0, 1000, Dxl1, false);
	DeleteAllSt(200,true);}
　平次はポケットに手を入れた途端、バランスを崩して壁に寄りかかる。

{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000201060fje">
「大丈夫？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu平次_通常_pain");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000201070fjh">
「なぁに。骨をやられただけだ。命に別状はねぇよ」

//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000201080fjh">
「ええと、半田……半田明神……」


{	CreateSE("SE01","seメカ_携帯_電子音02");
	MusicStart("SE01",0,700,0,1000,null,false);
}

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000201090fje">
「あれ……星さん、携帯電話持ってないの？」

{	SetVolume("SE*", 1000, 0, null);}
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu平次_通常_normal");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000201100fjh">
「そういうのは、苦手な奴だから――」

{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000201110fjh">
「あ、もしもし？　星さんか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//	St("ML",700, @0,@0,"bu平次_通常_hard");
//	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000201120fjh">
「あの……ちょっと、言いづらいことがあるんだが」

//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000201130fjh">
「実はその……今、双六が来て……アザナエルを……」

{	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000201140fje">
「……あれ？」

{	DeleteAllSt(200,true);
	CreateSE("SE01","se銃_空薬莢落とす");
	MusicStart("SE01",0,700,0,600,null,false);}
　平次が携帯電話を取りだした拍子に、ポケットからなにかが床に落ちる。


{	CreateTextureEX("絵オブ", 100, Center, Middle, "cg/obj/obj千秋ネームプレートa.png");
	Move("絵オブ", 0, @0, @100, null, true);

	Move("絵オブ", 500, @0, @-100, DxlAuto, false);
	Fade("絵オブ", 500, 1000, null, true);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000201150fje">
（確か、スーパーノヴァのネームプレート）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000201160fje">
（『アッキー』って、書いてある……
　なんでこんなものがここに？）

{	Move("絵オブ", 500, @0, @100, DxlAuto, false);
	Fade("絵オブ", 500, 0, null, true);
	Delete("絵オブ");
}


{	St("ML",700, @0,@0,"bu平次_落ち込み_sad");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000201170fjh">
「怒られちまった……」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000201180fje">
「当然でしょ」

{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000201190fje">
「じゃあ、タクシー呼ぶから病院に――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2207);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu平次_落ち込み_shock");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000201200fjh">
「ハァ？　なに言ってやがる！？」

{	St("ML",700, @0,@0,"bu平次_通常_cool");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000201210fjh">
「アザナエルを奪われちまったのはオレの責任だ！
　ちゃんとオレが取り返さねぇと――」

{	DeleteAllSt(200,false);}
{	St("MR",700, @50,@0,"bu恵那_ハルヒ_shout");
Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000201220fje">
「つん！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu平次_通常_shock");
	Shake("@StNameML/ML*", 500, 0, 10, 0, 5, 500, Axl3, false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000201230fjh">
「いでででででででッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000201240fje">
「やっぱり、駄目じゃない。
　まともに立つこともできないんでしょ」

{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000201250fje">
「病院に行ってきて」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu平次_通常_shock");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000201260fjh">
「は？　そんな時間――」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000201270fje">
「行ってきて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu平次_通常_pain");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000201280fjh">
「でも――」

{	DeleteAllSt(200,false);}
{	St("C",700, @50,@0,"bu恵那_ハルヒ_angry");
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000201290fje">
「行ってきなさいッ！！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000201300fje">
「そのままうろつかれても、正直、足手まといなのよ！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu平次_落ち込み_sad");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000201310fjh">
「…………なあ、恵那」

//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000201320fjh">
「怒ってる……よな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000201330fje">
「怒ってる場合じゃないわ」

{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000201340fje">
「私は今、やらなきゃならないことがある。
　だから、必死に抑えてるの」

{	St("MR",700, @0,@0,"bu恵那_通常_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000201350fje">
「もうこれ以上、私を怒らせないで」


{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"buユージローa_通常_sad");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/22/000201360ujr">
「わぅーん…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//	St("C",700, @0,@0,"bu平次_通常_hard");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000201370fjh">
「…………」

　平次は、十手と紐に繋がれた寛永通宝を差し出す。


{	St("C",700, @0,@0,"bu平次_通常_hard");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000201380fjh">
「……これ、受け取れ」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000201390fje">
「嫌」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu平次_通常_cool");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000201400fjh">
「嫌って言うな。
　小さいころ、一緒に型を練習しただろ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000201410fjh">
「コイツはな、先祖八代受け継がれた御先祖様の――」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000201420fje">
「要らない」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu平次_通常_shock");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000201430fjh">
「いや、でもここにはオレの魂が――」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000201440fje">
「早く行って」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu平次_通常_pain");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000201450fjh">
「でも持ってると幸運が訪れるって――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
{	DeleteAllSt(200,true);}
{	St("C",700, @0,@50,"bu恵那_ハルヒ_angry");
Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000201460fje">
「いいから行けッ！！」





{	DeleteAllSt(200,false);}
{	St("ML",700, @50,@0,"bu平次_通常_hard");
Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000201470fjh">
「…………」

//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000201480fjh">
「……わかったよ」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000201490fje">
「ユージローも、父さんと一緒に」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"buユージローa_通常_sad");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/22/000201500ujr">
「わう……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu平次_通常_hard");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000201510fjh">
「いいか、気をつけろ」

//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/22/000201520fjh">
「くれぐれも無理、するんじゃねぇぞ」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/000201530fje">
「わかってる！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 1000, 0, null);

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorEX("絵黒幕", 25000, "BLACK");
	Fade("絵黒幕", 1000, 1000, null, true);

	WaitKey(1000);


	EndScene();
}
