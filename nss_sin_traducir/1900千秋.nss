
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1900千秋.nss_MAIN
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
	$GameName = "1910沙紅羅_千秋.nss";
	//$GameCircle=false;

}

scene 1900千秋.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1240">
////////////header////////////
//file name "1900千秋.nss"
//title "とりかえやば物語"
//previous "1850千秋_フウリ.nss"


////////////footer////////////
//next "千秋" "1910沙紅羅_千秋.nss"

////////////body////////////

//■再定義定型文
	PrintGO("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);

{	ClockPass(1900);}

	SetVolume("@SE*", 1000, 0, null);

	OnBG(10,"bg0502100スーパーノヴァ_ライブ会場_通常");
	FadeBG(0,true);
	FadeDelete("上背景", 0, null, true);

	CreateSE("SE10","se環境_地鳴り02_l");
	MusicStart("SE10",100,700,0,1000,null,true);

	CreateTextureSP("絵ゆれ", 100, Center, Middle, "cg/bg/bg0502100スーパーノヴァ_ライブ会場_通常.jpg");
CreateProcess("絵ゆれp", 150, 0, 0, "yure1850");//function_lc_chiyo.nss
Request("絵ゆれp",Start);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//	St("C",700, @0,@0,"bu千秋_驚天_shock");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600010kit">
「わ、わ、わわわ……！」

//	St("C",700, @0,@0,"bu平次_通常_shout");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/000600020fjh">
「伏せろ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se人体_倒れる01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolume("@SE*", 1000, 0, null);
Delete("絵ゆれp");
	Shake("絵ゆれ", 300, 3, 20, 2, 10, 500, null, true);
Delete("絵ゆれ");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600030kit">
「ぎゃっ！」


　覆い被さる、平次の巨体。

　千秋が咄嗟に、逃げだそうとした直後――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//◆ＳＥ：鈍い音
	CreateSE("SE01","se戦闘_打撃音07");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureSP("絵ゆれ", 100, Center, Middle, "cg/bg/bg0502100スーパーノヴァ_ライブ会場_通常.jpg");
	Shake("絵ゆれ", 300, 2, 14, 0, 0, 500, null, false);
	Request("絵ゆれ",Disused);

	CreateSE("SE02","se戦闘_金属弾く04");
	MusicStart("SE02",0,700,0,1000,null,false);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0018]
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/000600040fjh">
「ぐあっ！」


//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600050kit">
「え……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆ＳＥ：金属音


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　ライトが、平次の頭に直撃する。

//	St("C",700, @0,@0,"bu千秋_朗らか_cry");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600060kit">
「恵那のオヤジさん！」

//	St("C",700, @0,@0,"bu平次_通常_pain");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/000600070fjh">
「う……動くんじゃねぇぞ。危ないからな」

//	St("C",700, @0,@0,"bu千秋_朗らか_shock");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600080kit">
「危ないって、でもオヤジさんの頭――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	CreateTextureEX("絵ぼかし", 100, Center, Middle, "cg/bg/bg0502100スーパーノヴァ_ライブ会場_通常.jpg");
	SetShade("絵ぼかし",MEDIUM);
	Zoom("絵ぼかし", 0, 2000, 2000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//	St("C",700, @0,@0,"bu平次_通常_smile");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/000600090fjh">
「大丈夫！」

//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/000600100fjh">
「この髪が、クッションでェ！」

{	St("C",19700, @0,@0,"fu千秋_通常_fear");
	Fade("絵ぼかし", 200, 1000, null, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600110kit">
（それでいいのか！？）

{	St("C",19700, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600120kit">
（でも……）

{	Fade("絵ぼかし", 200, 0, null, false);}
{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu平次_通常_pain");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/000600130fjh">
「ん……くぅ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("C",19700, @0,@0,"fu千秋_通常_normal");
	Fade("絵ぼかし", 200, 1000, null, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600140kit">
（いつもの恵那のオヤジさんと違って……
　なんかかっこいい？）

{	Fade("絵ぼかし", 200, 0, null, false);}
{	DeleteAllSt(200,true);}
//◆音声指示：鼻息
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/000600150fjh">
「ふん――、ふん――、ふん――！」

{	St("C",19700, @0,@0,"fu千秋_通常_pinch");
	Fade("絵ぼかし", 200, 1000, null, false);
	FadeSt("C",200,true);}
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600160kit">
（ついでに、いつにも増して暑苦しいけど……）




</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	CreateColorEX("絵黒幕", 25000, "BLACK");
	Fade("絵黒幕", 1000, 1000, null, true);
	DeleteAllSt(0,true);
	Delete("@OnBG*");
	Delete("絵ぼかし");



WaitKey(1000);





	SoundPlay("@xbgm24",2000,450,true);


//◆場所：スーパーノヴァ_ライブ会場_地震後
	OnBG(10,"bg0502300スーパーノヴァ_ライブ会場_地震後");
	FadeBG(0,true);

	FadeDelete("絵黒幕", 1000, null, true);

//	CreateSE("SE10","seガヤ_交通少_l");
//	MusicStart("SE10",1000,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
//Move("@StNameML/ML*", 200, @0, @-50, Dxl1, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600170kit">
「収まった……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("MR",700, @-50,@0,"bu平次_通常_hard");
Move("@StNameMR/MR*", 200, @50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/000600180fjh">
「まだまだ余震がある！　気をつけろ」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_朗らか_cry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600190kit">
「って、恵那のオヤジさん！　どこに――」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_normal");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/000600200fjh">
「ちょっくら見回りにな」

{	St("MR",700, @0,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/000600210fjh">
「なんだか……今の地震は、嫌な感じがする」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600220kit">
「嫌な感じ……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1901);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_normal");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/000600230fjh">
「ああ。ゆるキャラバンもあるしな」

{	St("MR",700, @0,@0,"bu平次_通常_smile");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/000600240fjh">
「ちょいと、見回りに行ってくらぁ！」

//バッグ掴む
{
	CreateSE("SE01","se動作_バッグ渡す");
	MusicStart("SE01",0,700,0,1000,null,false);
}
{Move("@StNameMR/MR*", 200, @100, @0, Dxl1, false);
	DeleteAllSt(200,true);}
　平次は床のバッグを掴み、慌てて駆け出そうとする。

{	St("ML",700, @-50,@0,"bu千秋_朗らか_cry");
Move("@StNameML/ML*", 200, @50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600250kit">
「あ、ちょっと！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @50,@0,"bu平次_通常_normal");
Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/000600260fjh">
「ん？　なんでぇ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600270kit">
「あの……さ、さっき……」

{	St("ML",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600280kit">
「さっきは、ありがとな」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_smile");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/000600290fjh">
「へっ、なぁに！」

//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/000600300fjh">
「市民の安全を守るのが、警官の使命ってな！」

{	St("MR",700, @0,@0,"bu平次_通常_normal");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/000600310fjh">
「余震に気をつけな！　あばよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);
WaitKey(300);






//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600320kit">
「なんか……まるで別人だな」

{	St("C",700, @0,@0,"bu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600330kit">
「いつもは、ただの暑苦しいオヤジなのに……」

{	St("C",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600340kit">
「なあ、鈴姉？」


{	DeleteAllSt(200,true);}


{	ClockPass(1902);}


{	St("ML",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000600350fjr">
「フウリちゃん……行っちゃった」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600360kit">
「なあ、鈴姉ってば！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);





//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000600370fjr">
「ん？　ああ、千秋――」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu千秋_通常_shy");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600380kit">
「本名駄目！　アッキー！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000600390fjr">
「うん、そうね……」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600400kit">
「鈴姉らしくないよ。
　そんな元気なくしちゃって」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000600410fjr">
「だってお店、こんなだよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolume("SE*", 1000, 0, null);


	DeleteAllSt(200,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]

　促され、千秋はザッと店内を見回す。

//	St("C",700, @0,@0,"bu千秋_通常_sad");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600420kit">
「あ……ひどい」


{	St("C",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000600430fjr">
「この時間から、機材なんて集まるかどうか……」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600440kit">
「でも、やるんでしょ？　鈴姉なら」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(1903);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000600450fjr">
「普通なら、そのつもりだよ。でも――」

{	St("ML",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000600460fjr">
「アタシ、解散とか言っちゃって」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600470kit">
「本気じゃないでしょ？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000600480fjr">
「そりゃそうだけど……
　でも、一度言っちゃった言葉って、引っ込まないし」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("ML",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000600490fjr">
「アタシ、フウリちゃんの態度に納得がいかないの」

{	St("ML",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000600500fjr">
「こんなに一緒にやってきたんだよ。
　なのに苦しいこと、ひとりで抱え込んじゃうなんて――」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600510kit">
「鈴姉だってそうでしょ？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000600520fjr">
「え？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600530kit">
「なんで自分がプロになりたいか、説明したことある？
　ないでしょ？」

//	St("C",700, @0,@0,"bu千秋_通常_angry");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600540kit">
「だからさ、フウリさんはフウリさんで、自分の夢に鈴姉を付き合わせちゃったんじゃないかって心配してたよ」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000600550fjr">
「あ……」

{	St("ML",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000600560fjr">
「そっか……そうなんだ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("ML",700, @0,@0,"bu鈴_もじゃ_cry");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000600570fjr">
「あーあ！　だめだー！
　アタシ、リーダー失格……」{
Move("@StNameML/ML*", 300, @0, @600, Dxl3, false);
	Shake("@StNameML/ML*", 200, 10, 0, 0, 0, 500, Axl3, false);
	DeleteSt("ML", 200,true);
}<br>


{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600580kit">
「え……あ、ちょっと！　鈴姉！」

{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600590kit">
「そんな顔しないでよ！
　きっとフウリさんは帰ってくるって！」


{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@100,"bu鈴_もじゃ_fear");
Move("@StNameML/ML*", 500, @0, @-100, Dxl1, false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000600600fjr">
「ホントに？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600610kit">
「うん、きっと！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu鈴_もじゃ_shock");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000600620fjr">
「ホントに、ホント？」


{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600630kit">
「フウリさんを信じてあげなって！」

{	St("MR",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600640kit">
「大体ホラ、どんな近い人にだって、隠したいことってあるじゃん？」


{	SetVolumeEX("@xbgm*", 1000, 0, null);}

//	St("C",700, @0,@0,"bu千秋_通常_think");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600650kit">
「かくいうオレだって――あれ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(1904);}

//	TextBoxDelete(150);
	DeleteAllSt(200,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600660kit">
「バッグバッグ……あ！　こんなところに！」



{	St("C",700, @0,@50,"bu千秋_朗らか_smile");
Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600670kit">
「このバッグの中味、恵那に秘密にしてるわけで」


{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000600680fjr">
「秘密……か」

{	SoundPlay("@xbgm27",0,450,true);
	St("ML",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000600690fjr">
「あの、さ。これ、中味なんなの？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600700kit">
「だから、それは秘密だってば！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000600710fjr">
「今更恥ずかしがる？　そんな格好して」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600720kit">
「うう――」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000600730fjr">
「恵那ちんも同じもの使ってるんだし、中味だけ入れないと駄目で、だったら遅かれ早かれ出しちゃうわけで」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600740kit">
「…………」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000600750fjr">
「大丈夫だって。中味は他言しない。守秘義務は守る」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	St("ML",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000600760fjr">
「だから……ちらっと、中見ていい？」



{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600770kit">
「ハァ……」

{	St("MR",700, @0,@0,"bu千秋_通常_think");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600780kit">
（やれやれ。やっといつもの鈴姉か……）

{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600790kit">
（ホントは嫌だけど、正直、覚悟してました！）

{	St("MR",700, @0,@0,"bu千秋_朗らか_pride");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600800kit">
（ま、いつものことだし、それで鈴姉が立ち直るなら！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600810kit">
「見てもいいけど、ひとつだけ約束」

{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600820kit">
「中身見たら、ちゃんと、ライブの準備始めてね」


{	DeleteAllSt(200,false);}

{	St("ML",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000600830fjr">
「ＯＫ♪」



{	St("ML",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000600840fjr">
「それじゃ、時間もないしご開帳――」


//ごそごそ
{	CreateSE("SE01","se動作_衣擦れ");
	MusicStart("SE01",0,700,0,1000,null,false);
}

{	DeleteAllSt(200,true);}

//◆音声指示：ぽかーん・「はぁ？」
//	St("C",700, @0,@0,"bu鈴_通常_shock");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000600850fjr">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("MR",700, @0,@0,"bu千秋_通常_cry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600860kit">
「な――なんだよ！　そんな顔すんなよ！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000600870fjr">
「……なんなの、コレ？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu千秋_通常_cry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600880kit">
「だから事故なんだよ！　不幸な事故で――」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000600890fjr">
「でも、なんでわざわざアタシ経由で？」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000600900fjr">
「まんじゅうくらい、普通に渡したらいいんじゃない？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1905);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600910kit">
「それができたら苦労は――ってちょっと待て！」


{	SetVolumeEX("@xbgm*", 1000, 0, null);}

{	St("MR",700, @0,@0,"bu千秋_頭突き_rage2");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600920kit">
「まんじゅう！？」

{	St("MR",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600930kit">
「ってナニ！？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000600940fjr">
「いや、だからコレ」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	DeleteAllSt(200,true);

//◆演出指示：バッグの中に饅頭詰まってる絵？

	SoundPlay("@xbgm03",0,450,true);


//	TextBoxDelete(150);

	CreateSE("SE01","se動作_バッグ漁る");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵オブ", 100, Center, Middle, "cg/obj/objエコバッグ_千秋_フウリ1850.png");
	Zoom("絵オブ", 0, 0, 1000, null, true);

	Zoom("絵オブ", 300, 1000, 1000, Dxl3, false);
	Fade("絵オブ", 200, 1000, null, true);
WaitKey(300);
	SetVolume("SE01", 200, 0, null);

	CreateSE("SE91","se擬音_ギャグ_ガーン01");
	MusicStart("SE91",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//	St("C",700, @0,@0,"bu千秋_驚天_shock");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600950kit">
「な！　まんじゅう！？　なんでッ！？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se動作_バッグ漁る");
	MusicStart("SE01",0,700,0,1000,null,false);
WaitKey(200);
	Zoom("絵オブ", 300, 0, 1000, Dxl3, false);
	Fade("絵オブ", 200, 0, null, true);
	Request("絵オブ",Disused);
WaitKey(100);
	SetVolume("SE01", 200, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0221]

{	St("ML",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000600960fjr">
「自分で入れたんでしょ？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600970kit">
「違う！　こんなの見たことないし！」

{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600980kit">
「大体なんだよ、クリマンって――！」

{	St("MR",700, @0,@0,"bu千秋_通常_think");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000600990kit">
「……あれ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000601000kit">
「クリマン……？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);




//◆演出指定：1850千秋_フウリ.nss回想

//1850千秋_フウリ.nss回想[text0124]


	CreateSE("SE01","se擬音_フラッシュバック");
	MusicStart("SE01",0,700,0,1000,null,false);


	CreateColorEXadd("絵色100", 16000, "WHITE");
	Fade("絵色100", 200, 1000, null, true);


	OnBG(10,"bg0502100スーパーノヴァ_ライブ会場_通常");
	FadeBG(0,true);
{	St("C",700, @0,@0,"bu平次_通常_smile");
	FadeSt("C",0,true);}

	CreateColorSPadd("絵色", 1500, "#FFFFFF");
	Fade("絵色", 0, 200, null, true);

	Fade("絵色100", 300, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0231]

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/000601010fjh">
「ほれ、お土産のクリマン！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	Fade("絵色100", 300, 1000, null, true);
	DeleteAllSt(0,true);
	Delete("絵*");

	OnBG(10,"bg0502300スーパーノヴァ_ライブ会場_地震後");
	FadeBG(0,true);

	FadeDelete("絵色100", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0232]
{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000601020kit">
「鈴姉！　確かこのバッグって、たくさんあるんだよな」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000601030fjr">
「村崎さんが、一桁多く発注しちゃったんだって。
　おかげで今、家がバッグだらけ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1906);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu千秋_通常_think");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000601040kit">
「ってことは、つまり――」



{	St("MR",700, @0,@0,"bu千秋_通常_shy");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000601050kit">
「恵那のオヤジさんに、バッグを間違えられたッ！？」



{	St("MR",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000601060kit">
「ごめん鈴姉！　取り返してくる！」

{	DeleteAllSt(200,false);}
{	St("C",700, @-50,@0,"bu鈴_通常_normal");
Move("@StNameC/C*", 200, @50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000601070fjr">
「待ちなさい！」



//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000601080fjr">
「アンタの望み通り、ライブの準備は進めるんだから！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000601090fjr">
「７時半開店よ！
　それまでにはちゃんと戻ってくること！」

{	St("C",700, @0,@0,"bu鈴_シリアス_smile");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000601100fjr">
「約束できる？」

{	DeleteAllSt(200,true);}

{	St("C",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000601110kit">
「が、がんばる！」

{	St("C",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000601120fjr">
「帰ってこられなかったら……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//1930千秋.nss[text0210]で回想されます（千代子

{	St("C",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0255]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000601130fjr">
「例の写真、ばらまいちゃおっかな？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteAllSt(200,true);}

	CreateColorEXadd("フラッシュ白", 25000, "WHITE");


	CreateSE("SE01","se擬音_ギャグ_ガーン01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("フラッシュ白",200,1000,null,true);

	CreateTextureEX("絵背景100", 20000, Center, Middle, "cg/ev/ev1800千秋は夜の蝶になる.jpg");
	Fade("絵背景100", 0, 1000, null, true);


	Fade("フラッシュ白",200,150,null,true);

	Wait(1000);

	Fade("フラッシュ白",200,1000,null,true);
	Delete("絵背景100");

	Fade("フラッシュ白",200,0,null,true);
	Delete("フラッシュ白");

{	St("MR",700, @0,@0,"bu千秋_驚天_shock");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000601140kit">
「ひでぇ！　恩を仇で返された感じ！」


{	St("C",700, @0,@0,"bu鈴_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000601150fjr">
「ホラホラ、そんなこと言ってる間にも時間が――」

{	DeleteAllSt(200,true);}
{	St("MR",700, @0,@0,"bu千秋_通常_pain");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000601160kit">
「鈴姉の鬼！　悪魔あっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：走り出す
	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,true);

	SetVolume("@SE*", 2000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0265]

//◆音声指示：遠くから
//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/000601170fjr">
「あははは、いってらっしゃーい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

WaitKey(500);

{	ClockPass(1907);}

//◆場所：スーパーノヴァ_正面_ガラス割れ
	OnBG(10,"bg0501200スーパーノヴァ_正面_ガラス割れ");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);


//	CreateSE("SE10","seガヤ_交通少_l");
//	MusicStart("SE10",1000,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
{	St("C",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000601180kit">
（鈴姉調子乗りすぎだろ！）

{	St("C",700, @0,@0,"bu千秋_通常_cry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000601190kit">
（７時半って――あと２０分しかないし！）

{	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000601200kit">
（急がなきゃ！）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);


	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
WaitKey(500);


//◆時間：ジャンプ
{	ClockPass(1909);}

//◆場所：秋葉原_中央通り

	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0275]
{	St("C",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000601210kit">
（ええと、確かゆるキャラバンを見に行くとか――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	SetVolumeEX("@xbgm*", 1000, 0, null);}


	DeleteAllSt(200,true);

//	TextBoxDelete(150);

//◆演出指定：沙紅羅の立ち絵


{	St("C",700, @0,@-70,"st沙紅羅_通常_normal");
	FadeSt("C",200,true);}
WaitKey(200);
	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//	St("C",700, @0,@0,"bu千秋_通常_shout");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000601220kit">
「あ！」

{	St("C",700, @0,@100,"bu千秋_頭突き_rage2");
Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000601230kit">
「見つけたあああああ！！」

{	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,700,0,1000,null,false);
}
{	DeleteAllSt(200,true);}
{	SetVolume("SE01", 2000, 0, null);}
//	St("C",700, @0,@0,"bu千秋_頭突き_rage");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000601240kit">
「その袋、開けちゃだめえええええええええ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);



	EndScene();
}
