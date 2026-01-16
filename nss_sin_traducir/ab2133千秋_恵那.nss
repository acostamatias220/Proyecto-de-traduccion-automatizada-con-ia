

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ab2133千秋_恵那.nss_MAIN
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
		$GameName = "ab2140千秋_恵那.nss";
	}else if($CharaName=="恵那"){
		$GameName = "ab2140千秋_恵那.nss";
	}else{
		$GameName = "ab2140千秋_恵那.nss";
	}

//	$GameName = "";
//	$GameCircle=false;


}

scene ab2133千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1090">
////////////header////////////
//file name "ab2133千秋_恵那.nss"
//title "ふたりのアッキー"
//previous "ab2131千秋_恵那_フウリ.nss"

////////////footer////////////
//next "千秋" "ab2140千秋_恵那.nss"
//next "恵那" "ab2140千秋_恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//事件定義
	KoreJikenSet();

//◆演出指定：ノーコがいなくなると、何故か暗闇が元に戻る

//◆ＳＥ：ライトがつく音
//	CreateSE("SE01","se動作_ライト点ける");
//	MusicStart("SE01",0,700,0,1000,null,false);


//※↓2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nssからの流れを考えると、舞台裏がふさわしい？（mngw 11/12）

//◆場所：ＵＰ＋_屋外セット_炎上
//	OnBG(10,"bg1201200ＵＰ＋_屋外セット_炎上");
	OnBG(10,"bg1203100ＵＰ＋_セット裏_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);
{	ClockPass(2133);}

	SoundPlay("@xbgm03",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200010fje">
「追いかけるわよ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/330200020kit">
「な、なんで！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200030fje">
「正体確かめるの！
　ドッペルゲンガーで死にたいの！？　ほら！」




</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SceneOut(5000, 300, "slide_01_01_0");


	WaitKey(300);
	DeleteAllSt(0,true);

//◆場所：ショウビル_正面
	OnBG(10,"bg1901100ショウビル_正面_通常");
	FadeBG(0,true);

//あきゅん「修正指示：走る音を追加」
//※追加しました（mngw 11/18）

	CreateSE("SE01","se動作_集団走る");
	MusicStart("SE01",0,700,0,1000,null,true);

	SceneIn(300, "slide_01_01_1");


	CreateWindowEX("右フウリ", 562, 0, 342, 576, false);
	Zoom("右フウリ", 0, 0, 1000, null, true);
	CreateTextureSP("右フウリ/絵背景", 611, Center, Middle, "cg/bg/m/bg1901100ショウビル_正面_通常_m.jpg");
	SetShade("右フウリ/絵背景", LIGHT);

	CreateWindowEX("左太四郎", 120, 0, 342, 576, false);
	Zoom("左太四郎", 0, 0, 1000, null, true);
	CreateTextureSP("左太四郎/絵背景", 611, Center, Middle, "cg/bg/l/bg1901100ショウビル_正面_通常_l.jpg");
	SetShade("左太四郎/絵背景", LIGHT);


	CreateTexture("右フウリ/フウリ", 700, OutRight, InBottom, "cg/bu/buフウリ_通常_angry.png");
	SetAlias("右フウリ/フウリ","右フウリ/フウリ");
	Move("右フウリ/フウリ", 0, 330, @96, null, true);
	Zoom("右フウリ", 300, 1000, 1000, Dxl2, false);
	WaitKey(100);

	CreateTexture("縦線Ｒ１", 2000, @550, @768, "cg/mask/ciウィンドウ縦02.png");
	CreateTexture("縦線Ｒ２", 2000, @890, @-768, "cg/mask/ciウィンドウ縦02.png");
	CreateTexture("縦線Ｌ１", 2000, @105, @768, "cg/mask/ciウィンドウ縦02.png");
	CreateTexture("縦線Ｌ２", 2000, @447, @-768, "cg/mask/ciウィンドウ縦02.png");
	Move("縦線Ｒ１", 200, @0, @-768, DxlAuto, fasle);
	Move("縦線Ｒ２", 200, @0, @768, DxlAuto, true);



//◆音声指示：遠くから
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]

//◆音声指示：遠くから

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330200040wfu">
「なんで逃げるんですかッ！？」


{	CreateTexture("左太四郎/太四郎", 700, OutRight, InBottom, "cg/bu/bu千秋_通常_fear.png");
	SetAlias("左太四郎/太四郎","左太四郎/太四郎");
	Move("左太四郎/太四郎", 0, 120, @96, null, true);
	Zoom("左太四郎", 300, 1000, 1000, Dxl2, false);
	WaitKey(100);
	Move("縦線Ｌ１", 200, @0, @-768, DxlAuto, fasle);
	Move("縦線Ｌ２", 200, @0, @768, DxlAuto, true);
	}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/ab21/330200050ktt">
「なんでって、フウリさんが追いかけるから――」

{	Fade("右フウリ/絵背景", 200, 0, null, false);
	Fade("右フウリ/フウリ", 200, 0, null, false);
	Fade("左太四郎/絵背景", 200, 0, null, false);
	Fade("左太四郎/太四郎", 200, 0, null, false);
	Fade("縦線*", 200, 0, null, false);
	DeleteAllSt(200,true);
	WaitKey(100);
	St("ML",700, @60,@0,"bu千秋_通常_pinch");
	Move("@StNameML/ML*", 200, @-60, @0, DxlAuto, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/330200060kit">
「ヤバイ！　アレ、マジでオレだ！！」

{	Move("@StNameML/ML*", 200, @-60, @0, DxlAuto, false);
	DeleteSt("ML", 200,true);
	St("MR",700, @60,@0,"bu恵那_通常_think");
	Move("@StNameMR/MR*", 200, @-60, @0, DxlAuto, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200070fje">
「ホントに瓜二つ……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameMR/MR*", 200, @-60, @0, DxlAuto, false);
	DeleteAllSt(200,true);

	SetVolumeEX("SE01", 1500, 0, null);

	TextBoxDelete(150);

	SceneOut(5000, 300, "slide_01_01_0");

	WaitKey(300);
	DeleteAllSt(,true);

//◆場所：秋葉原駅_正面
	OnBG(10,"bg0201111秋葉原駅_正面_通常");
	FadeBG(0,true);

	CreateSE("SE02","se動作_集団走る");
	MusicStart("SE02",0,700,0,1000,null,true);

	SceneIn(300, "slide_01_01_1");

	CreateAXLWindowEX("横割り", "Y",1500, 50,384, false);
	WindowAXLZoom("横割り", "Y",0, 0, null, true);
	CreateTextureSP("横割り/絵背景", 1400, 0, Middle, "cg/bg/bg0201111秋葉原駅_正面_通常.jpg");
	SetShade("横割り/絵背景", MEDIUM);
	Zoom("横割り/絵背景", 0, 2000, 2000, null, true);

	CreateTexture("横割り/フウリ", 1410, Center, -100, "cg/bu/buフウリ_前のめり_hard.png");
	SetAlias("横割り/フウリ","横割り/フウリ");

	WindowAXLZoom("横割り", "Y",300, 1000, Dxl2, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//◆音声指示：遠くから
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330200080wfu">
「だって、だっておかしいです！」


//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330200090wfu">
「私が困ってるところに突然、助けに来てくれたり！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	WindowAXLZoom("横割り", "Y",300, 0, Dxl2, false);
	Fade("@横割り/絵背景", 300, 0, Dxl2, false);
	Fade("@横割り/フウリ", 300, 0, Dxl2, true);
	Delete("@横割り*");
	Move("@StNameC/C*", 200, @-120, @0, DxlAuto, false);
	DeleteSt("C", 200,true);
	St("MR",700, @120,@0,"bu恵那_一休_think");
	Move("@StNameMR/MR*", 200, @-120, @0, DxlAuto, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200100fje">
「万世橋の方に行ってる――！？」

{	St("L",700, @120,@0,"bu千秋_通常_fear");
	Move("@StNameL/L*", 200, @-120, @0, DxlAuto, false);
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/330200110kit">
「ああ！　見失っちゃう！
　どっちだ！？　どっちに逃げる！？」

{	St("L",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/330200120kit">
「恵那！　推理を！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("MR",700, @0,@0,"bu恵那_一休_smile");
	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);
	FadeStPro("MR", 200, 1400);	}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200130fje">
「推理って――いやいや！
　こんな判断材料ないのに無理でしょ！」

{	AgainSt("MR",700, @0,@0,"bu恵那_通常_sigh");
	St("L",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/330200140kit">
「おまえ、探偵だろ！？　なんとかしろよ！」

{	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	St("MR",700, @0,@0,"bu恵那_一休_think");
	FadeSt("MR",200,true);
	FadeStPro("MR", 200, 2200);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200150fje">
「探偵は占い師じゃ――占い！？」

//◆演出指示：ストラップ見る
{	AgainSt("MR",700, @0,@0,"bu恵那_一休_think");
	St("MR",700, @0,@0,"bu恵那_一休_hard");
	SetComic(@60,@-200,16);
	CreateSE("SE01","se擬音_ギャグ_キラーン01");
	Shake("@StNameMR/MR*", 200, 5, 5, 0, 0, 500, null, false);
	FadeSt("MR",200,true);
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeComic();}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200160fje">
「――タヌキだ」

{	DeleteComic();
	St("L",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/330200170kit">
「え？」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200180fje">
「柳神社へ！　こっちが近道よ！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE02", 1500, 0, null);

	Move("@StNameMR/MR*", 200, @120, @0, DxlAuto, false);
	DeleteSt("MR", 200,true);

//	TextBoxDelete(150);




	SceneOut(5000, 300, "slide_01_01_1");
	WaitKey(300);
	DeleteAllSt(0,true);

{	ClockPass(2134);}

//◆場所：秋葉原_ガード下

	OnBG(10,"bg0102200秋葉原_ガード下_閉店");
	FadeBG(0,true);

	SceneIn(5000, 300, "slide_01_01_0");

	CreateSE("SE02","se動作_集団走る");
	MusicStart("SE02",0,700,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]

{	St("C",700, @-120,@0,"bu千秋_朗らか_shock");
	Move("@StNameC/C*", 200, @120, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/330200190kit">
「な、なんで柳神社に！？」

{	Move("@StNameC/C*", 200, @120, @0, DxlAuto, false);
	DeleteSt("C", 200,true);
	St("C",700, @-120,@0,"bu恵那_通常_think");
	Move("@StNameC/C*", 200, @120, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200200fje">
「占いよ！　占い！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	Move("@StNameC/C*", 200, @120, @0, DxlAuto, false);
	DeleteSt("C", 200,true);
	St("C",700, @-120,@0,"bu千秋_朗らか_normal");
	Move("@StNameC/C*", 200, @120, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/330200210kit">
「占い！？」

{	Move("@StNameC/C*", 200, @120, @0, DxlAuto, false);
	DeleteSt("C", 200,true);
	St("C",700, @-120,@0,"bu恵那_通常_shout");
	Move("@StNameC/C*", 200, @120, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200220fje">
「今日のラッキーアイテムは、コレ！」

{	Move("@StNameC/C*", 200, @120, @0, DxlAuto, false);
	DeleteSt("C", 200,true);
	
	CreateTextureEX("絵カットイン", 2000, Center, Middle, "cg/obj/obj恵那携帯ストラップ.png");
	Move("絵カットイン", 0, @100, @0, null, true);
	Move("絵カットイン", 200, @-100, @0, Dxl3, false);
	Fade("絵カットイン", 200, 1000, null, true);
	}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/330200230kit">
「携帯のストラップ！？
　確かにタヌキだけど……」

{	Move("絵カットイン", 200, @-100, @0, Axl3, false);
	Fade("絵カットイン", 200, 0, null, true);
	WaitKey(200);
	St("C",700, @-120,@0,"bu恵那_通常_hard");
	Move("@StNameC/C*", 200, @120, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200240fje">
「ほら！　行くわよ！」

{	Move("@StNameC/C*", 200, @120, @0, DxlAuto, false);
	DeleteSt("C", 200,true);
	St("C",700, @-120,@0,"bu千秋_通常_normal");
	Move("@StNameC/C*", 200, @120, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/330200250kit">
「お……おう！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE02", 1500, 0, null);

	Move("@StNameC/C*", 200, @120, @0, DxlAuto, false);
	DeleteSt("C", 200,true);

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 4000, 0, null);

	Delete("絵カットイン");

	SceneOut(5000, 300, "slide_01_01_1");
	WaitKey(300);

	DeleteAllSt(0,true);





//◆場所：柳神社_境内
	OnBG(10,"bg1501100柳神社_境内_通常");
	FadeBG(0,true);

//	TextBoxDelete(150);

	SceneIn(300, "slide_01_01_0");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]


{	St("ML",700, @-60,@0,"bu千秋_朗らか_sigh");
	Move("@StNameML/ML*", 500, @60, @0, DxlAuto, false);
	FadeSt("ML",500,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/330200260kit">
「さすがに歩道橋だと早いな……」

{	St("ML",700, @0,@0,"bu千秋_朗らか_think");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/330200270kit">
「でも、ホントにここに来るのか？
　ラッキーアイテムだからって、そんな……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200280fje">
「来たっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_shout");
	Shake("@StNameML/ML*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/330200290kit">
「マジで！？」

{	DeleteAllSt(200,false);}


　鳥居から半身を乗り出すと、遙か遠くにもうひとりの千秋の姿が見えた。

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/330200300kit">
「で、どうするんだ！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200310fje">
「どうするもこうするも、真正面から捕まえるしか――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//	TextBoxDelete(150);

	CreateAXLWindowEX("横割り", "Y",1500, 50,384, false);
	WindowAXLZoom("横割り", "Y",0, 0, null, true);
	CreateTextureSP("横割り/絵背景", 1400, 0, Middle, "cg/bg/m/bg2401100空_上空_通常_m.jpg");
	SetShade("横割り/絵背景", MEDIUM);
	Zoom("横割り/絵背景", 0, 2000, 2000, null, true);

	CreateTexture("横割り/フウリ", 1410, Center, -100, "cg/bu/buフウリ_前のめり_hard.png");
	SetAlias("横割り/フウリ","横割り/フウリ");

	WindowAXLZoom("横割り", "Y",300, 1000, Dxl2, true);

	DeleteAllSt(200,true);
	Shake("横割り/絵背景", 100, 5, 5, 0, 0, 500, null, false);
	Shake("横割り/フウリ", 100, 5, 5, 0, 0, 500, null, false);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090a]
//◆音声指示：遠くから
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330200320wfu">
「貫太さん！　織田貫太さん、でしょう！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	WindowAXLZoom("横割り", "Y",300, 0, Dxl2, false);
	Fade("@横割り/絵背景", 300, 0, Dxl2, false);
	Fade("@横割り/フウリ", 300, 0, Dxl2, true);
	Delete("@横割り*");
	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090b]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/330200330kit">
「ん？　おだ、かんた……？」

{	St("ML",700, @0,@0,"bu千秋_朗らか_think");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/330200340kit">
「どっかで、聞いたことがあるような――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_fear");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200350fje">
「ウソ――……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	KoreJikenStart();

	DeleteAllSt(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200360fje">
「まさか、コレは事件！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	KoreJikenEnd(true);
	SoundPlay("@xbgm08_noint",0,450,false);
	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/330200370kit">
「ん、恵那？　どした？」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200380fje">
「アッキーちゃん、ちょっと隠れてて！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/330200390kit">
「え？　なんで？」

{	St("MR",690, @60,@0,"bu恵那_哀愁_worry");
	Move("@StNameMR/MR*", 200, @-120, @0, DxlAuto, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200400fje">
「いいから！」

{	St("C",700, @0,@0,"bu千秋_驚天_shock");
	Move("@StNameMR/MR*", 200, @120, @0, DxlAuto, false);
	DeleteSt("MR", 200,false);
	Move("@StNameML/ML*", 200, @120, @0, DxlAuto, false);
	DeleteSt("ML", 200,true);
	Shake("@OnBG*", 300, 10, 10, 0, 0, 500, null, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/330200410kit">
「ぎゃっ！！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);
//◆ＳＥ：ガサガサ……
{
	CreateSE("SE01","se動作_茂み_l");
	MusicStart("SE01",0,700,0,1000,null,false);
	WaitKey(3000);
}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200420fje">
「よし――」

{	SetVolumeEX("SE01", 500, 0, null);
	CreateTextureEX("絵背景100_l", 50, Center, Middle, "cg/bg/l/bg1501100柳神社_境内_通常_l.jpg");
	Fade("絵背景100_l", 300, 1000, null, true);
	St("ML",700, @-120,@0,"bu千秋_朗らか_sigh");
	Move("@StNameML/ML*", 1000, @120, @0, DxlAuto, false);
	FadeSt("ML",1000,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/ab21/330200430ktt">
「はぁっ……はぁっ……はぁっ……」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200440fje">
「アッキーちゃん！」

{	St("ML",700, @0,@0,"bu千秋_朗らか_think");
	Shake("@StNameML/ML*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/ab21/330200450ktt">
「え？　今の声は――？」

{	St("R",700, @60,@0,"bu恵那_一休_think");
	Move("@StNameR/R*", 200, @-60, @0, DxlAuto, false);
	FadeSt("R",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200460fje">
「こっちよ！」


{	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/ab21/330200470ktt">
「あ、うん」



//◆ＳＥ：ガサガサ……
{
	CreateSE("SE01","se動作_茂み_l");
	MusicStart("SE01",0,700,0,1000,null,false);
	}

{	Move("@StNameR/R*", 200, @60, @0, DxlAuto, false);
	DeleteSt("R", 200,false);
	Wait(100);
	Move("@StNameML/ML*", 200, @60, @0, DxlAuto, false);
	DeleteSt("ML", 200,true);
	Fade("絵背景100_l", 300, 0, null, false);}


　ふたりは慌てて茂みへと飛び込んだ。


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	PrintGO("上背景", 30000);

	CreateMask("絵マスク", 6000, 0, 0, "cg/data/slide_05_00_1.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateColorEX("絵マスク/絵演色", 51, "#000000");
	Fade("絵マスク/絵演色", 0, 750, null, true);

	CreateTextureEX("絵背景100_l", 50, Center, Middle, "cg/bg/l/bg1501100柳神社_境内_通常_l.jpg");
	SetShade("絵背景100_l", LIGHT);
	Zoom("絵背景100_l", 0, 1500, 1500, null, true);
	Move("絵背景100_l", 0, @-1000, @-500, null, true);
	Fade("絵背景100_l", 0, 1000, null, true);

	FadeDelete("上背景", 1000, null, true);

	St("R",700, @0,@-60,"bu恵那_通常_hard");
	Move("@StNameR/R*", 1000, @0, @60, DxlAuto, false);
	FadeSt("R",1000,true);

	SetVolumeEX("SE01", 1500, 0, null);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200480fje">
「頭引っ込めて」

{	St("L",700, @0,@-60,"bu千秋_朗らか_sad");
	Move("@StNameL/L*", 1000, @0, @60, DxlAuto, false);
	FadeSt("L",1000,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/ab21/330200490ktt">
「あ、あれ？　でも誰かいる――！？」

{	DeleteSt("R", 200,true);
	St("R",700, @0,@0,"bu千秋_通常_normal");
	Move("@StNameR/R*", 1000, @-60, @0, DxlAuto, false);
	FadeSt("R",1000,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/330200500kit">
「ええと、どうも」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("L",700, @0,@0,"bu千秋_朗らか_shock");
	Shake("@StNameL/L*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("L",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/ab21/330200510ktt">
「ええと……」

{	St("L",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("L",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/ab21/330200520ktt">
「生き別れの、姉さん……？」

{	St("R",700, @0,@0,"bu千秋_頭突き_rage");
	Shake("@StNameR/R*", 300, 10, 10, 0, 0, 500, null, false);
	FadeSt("R",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/330200530kit">
「妹なんていねぇよ！」

{	St("C",690, @0,@60,"bu恵那_哀愁_pinch");
	Move("@StNameC/C*", 200, @0, @-60, DxlAuto, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200540fje">
「ちょっと静かに！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 3000, 0, null);

	TextBoxDelete(150);

	SceneOut(5000, 500, "blind_01_00_0");

	DeleteAllSt(200,true);

	Delete("絵マスク");
	Delete("絵マスク/絵演色");
	Delete("絵背景100_l");


{	ClockPass(2135);}

//◆場所：柳神社_境内
	OnBG(10,"bg1501100柳神社_境内_通常");
	FadeBG(0,true);


	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",0,700,0,1000,null,true);


	SoundPlay("@xbgm24",0,450,true);

	SceneIn(500, "blind_01_00_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("C",700, @120,@0,"buフウリ_前のめり_hard");
	SetVolumeEX("SE01", 1500, 0, null);
	Move("@StNameC/C*", 200, @-120, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330200550wfu">
「貫太さんッ！！　逃げても無駄ですっ！」


//あきゅん「修正指示：フウリと同じ演出をお願いします」
//※おたぬき様アップに対応しました（mngw 11/18）

{	DeleteAllSt(200,true);
	CreateTextureEX("絵背景100_l", 50, Center, Middle, "cg/bg/l/bg1501100柳神社_境内_通常_l.jpg");

//あきゅん「演出：音声に合わせてプロセスに埋めました」
	LcPro_ab2133otanukisama();
/*
	Move("絵背景100_l", 0, 0, @0, null, true);
	Zoom("絵背景100_l", 500, 2500, 2500, Axl3, false);
	Move("絵背景100_l", 500, 950, @0, Axl3, false);
	Fade("絵背景100_l", 500, 1000, null, true);
	Shake("絵背景100_l", 300, 10, 10, 0, 0, 500, null, false);
*/
}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330200560wfu">
「大人しく――いた！！」

{	CreatePlainSP("絵板写", 5000);
	Wait(16);
	Request("@Pro*", Stop);
	Move("絵背景100_l", 0, 0, @0, null, true);
	Zoom("絵背景100_l", 0, 2500, 2500, Axl3, false);
	Move("絵背景100_l", 0, 950, @0, Axl3, false);
	Fade("絵背景100_l", 0, 1000, null, true);
	Delete("@Pro*");
	Delete("絵板写");}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330200570wfu">
「こらー！　おいなり様に化けても無駄です！
　神妙に――神妙に――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);
	Wait(16);
{	St("C",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("C",0,true);
	FadeDelete("絵背景100_l", 0, null, true);}
	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0145]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330200580wfu">
「あれ？」


//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330200590wfu">
「これは、おいなりさまじゃなくて――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateTextureEX("絵背景200_l", 50, Center, Middle, "cg/bg/l/bg1501100柳神社_境内_通常_l.jpg");
	Move("絵背景200_l", 0, @512, @0, null, true);

	DeleteAllSt(500,false);
	Fade("絵背景200_l", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330200600wfu">
「本当に、おたぬきさま……？」

{	DeleteAllSt(0,false);
	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",0,true);
	Fade("絵背景200_l", 500, 0, null, true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330200610wfu">
「貫太さんじゃ、ない？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	PrintGO("上背景", 30000);

	CreateMask("絵マスク", 6000, 0, 0, "cg/data/slide_05_00_1.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateColorEX("絵マスク/絵演色", 51, "#000000");
	Fade("絵マスク/絵演色", 0, 750, null, true);

	CreateTextureEX("絵背景100_l", 50, Center, Middle, "cg/bg/l/bg1501100柳神社_境内_通常_l.jpg");
	SetShade("絵背景100_l", LIGHT);
	Zoom("絵背景100_l", 0, 1500, 1500, null, true);
	Move("絵背景100_l", 0, @-1000, @-500, null, true);
	Fade("絵背景100_l", 0, 1000, null, true);


	FadeDelete("上背景", 500, null, true);



{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//◆音声指示：小声
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200620fje">
「やっぱり……貫太って言ってる」


{	St("C",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200630fje">
「あなた、貫太さんでしょ？」

//◆音声指示：小声
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_pride");
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/ab21/330200640ktt">
「バレちゃった？」

//◆音声指示：小声
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/330200650kit">
「え？　貫太さんって？」

//◆音声指示：小声
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200660fje">
「はぁ……忘れちゃったの？」



{	St("C",700, @0,@0,"bu恵那_一休_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200670fje">
「ほら、昔村崎さんと一緒に働いてた――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/330200680kit">
「あ！　あの貫太さん――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	PrintGO("上背景", 30000);

	DeleteAllSt(0,false);

	Fade("絵マスク", 0, 0, null, false);
	Fade("絵マスク/絵演色", 0, 0, null, false);
	Fade("絵背景100_l", 0, 0, null, true);

	OnBG(10,"bg1501100柳神社_境内_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 300, null, true);

	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);



//◆音声指示：小声
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0165]

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330200690wfu">
「むむー？　今、声が……？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	PrintGO("上背景", 30000);

	CreateMask("絵マスク", 6000, 0, 0, "cg/data/slide_05_00_1.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateColorEX("絵マスク/絵演色", 51, "#000000");
	Fade("絵マスク/絵演色", 0, 750, null, true);

	DeleteAllSt(0,false);

	CreateTextureEX("絵背景100_l", 50, Center, Middle, "cg/bg/l/bg1501100柳神社_境内_通常_l.jpg");
	SetShade("絵背景100_l", LIGHT);
	Zoom("絵背景100_l", 0, 1500, 1500, null, true);
	Move("絵背景100_l", 0, @-1000, @-500, null, true);
	Fade("絵背景100_l", 0, 1000, null, true);


	FadeDelete("上背景", 300, null, true);



{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("MR",300,true);
	Shake("@StNameMR/MR*", 100, 5, 5, 0, 0, 500, null, false);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0167]
//◆音声指示：小声
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/330200700kit">
「やべっ！」


{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_哀愁_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200710fje">
「バカ！　何で声出すのよ！？」

//◆音声指示：小声
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/330200720kit">
「ご、ごめん……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	PrintGO("上背景", 30000);

	DeleteAllSt(0,false);

	Fade("絵マスク", 0, 0, null, false);
	Fade("絵マスク/絵演色", 0, 0, null, false);
	Fade("絵背景100_l", 0, 0, null, true);

	OnBG(10,"bg1501100柳神社_境内_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 300, null, true);


//◆音声指示：小声
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("C",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330200730wfu">
「あの茂みの辺りが、怪しい？」

{	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330200740wfu">
「様子を探って――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteSt("C", 200,true);}

//◆ＳＥ：ウウウウウウ！！
{
	CreateSE("SE01","se動物_ネコ_威嚇沢山_l");
	MusicStart("SE01",0,700,0,1000,null,true);
	WaitKey(2000);
}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("C",700, @0,@0,"buフウリ_頬手_shock");
	Shake("@StNameC/C*", 100, 0, 10, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330200750wfu">
「きゅっ！」

{	SetVolumeEX("SE01", 1000, 0, null);
	St("C",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330200760wfu">
「きゅう……ネコさんがたくさんいます」



//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330200770wfu">
「怒らないで……別におっかないことは……」

//◆ＳＥ：シャアアアアア！！
{
	CreateSE("SE02","se動物_ネコ_威嚇02");
	MusicStart("SE02",0,700,0,1000,null,false);
	WaitKey(1000);
}


{	St("C",700, @0,@0,"buフウリ_頬手_shock");
	Shake("@StNameC/C*", 300, 0, 10, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330200780wfu">
「きゅ――――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	SetVolumeEX("SE02", 1000, 0, null);
	St("C",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330200790wfu">
「ご、ごめんなさい、ネコさん！」

{	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330200800wfu">
「私は別に、脅かす気なんて――」


//◆ＳＥ：シャアアアアア！！
{
	CreateSE("SE03","se動物_ネコ_威嚇02");
	MusicStart("SE03",0,700,0,1000,null,false);
	WaitKey(1000);
}


{	St("C",700, @0,@0,"buフウリ_通常_fear");
	Shake("@StNameC/C*", 300, 5, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330200810wfu">
「きゅぅぅぅぅ……」

{	SetVolumeEX("SE03", 1000, 0, null);
	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330200820wfu">
「これでは……探索できません……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	PrintGO("上背景", 30000);

	CreateMask("絵マスク", 6000, 0, 0, "cg/data/slide_05_00_1.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateColorEX("絵マスク/絵演色", 51, "#000000");
	Fade("絵マスク/絵演色", 0, 750, null, true);

	DeleteAllSt(0,false);

	CreateTextureEX("絵背景100_l", 50, Center, Middle, "cg/bg/l/bg1501100柳神社_境内_通常_l.jpg");
	SetShade("絵背景100_l", LIGHT);
	Zoom("絵背景100_l", 0, 1500, 1500, null, true);
	Move("絵背景100_l", 0, @-1000, @-500, null, true);
	Fade("絵背景100_l", 0, 1000, null, true);


	FadeDelete("上背景", 300, null, true);

//◆音声指示：小声
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	St("C",700, @0,@0,"bu恵那_感動_happy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200830fje">
「やった！　ネコが助けて――」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2136);}


	TextBoxDelete(0);


	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

	DeleteAllSt(0,true);
	Delete("@OnBG*");
	FadeDelete("絵マスク", 0, null, true);
	FadeDelete("絵マスク/絵演色", 0, null, true);
	FadeDelete("絵背景100_l", 0, null, true);

	SetVolumeEX("@xbgm*", 1000, 0, null);

//◆ＳＥ：ドゴーン！　橋脚が崩れ落ちる音
	CreateSE("SE04","se環境_地鳴り03");
	Shake("@OnBG*", 4000, 5, 5, 0, 0, 500, null, false);
	MusicStart("SE04",0,700,0,1000,null,false);

	OnBG(10,"bg1501100柳神社_境内_通常");
	FadeBG(0,true);

//あきゅん「修正指示：空演出外してください」
//※対応しました（mngw 11/18）

//	CreateTextureEX("絵背景200", 8000, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");
//	Move("絵背景200", 0, @0, @-200, DxlAuto, false);
//	Fade("絵背景200", 0, 10000, null, false);

//	Move("絵背景200", 1000, @0, @300, DxlAuto, false);
//	Shake("絵背景200", 1200, 5, 5, 0, 0, 500, null, false);

	Shake("@OnBG*", 1200, 5, 5, 0, 0, 500, null, false);

	Fade("絵色白", 500, 0, null, true);
	Delete("絵色白");

	WaitKey(1000);

//	FadeDelete("絵背景200", 500, null, true);

//◆ＳＥ：ネコ「ふぎゃあああ」遁走
	CreateSE("SE05","se動物_ネコ_威嚇01");
	MusicStart("SE05",0,700,0,1000,null,false);
	WaitKey(500);


	PrintGO("上背景", 30000);

	CreateMask("絵マスク", 6000, 0, 0, "cg/data/slide_05_00_1.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateColorEX("絵マスク/絵演色", 51, "#000000");
	Fade("絵マスク/絵演色", 0, 750, null, true);

	DeleteAllSt(0,false);

	CreateTextureEX("絵背景100_l", 50, Center, Middle, "cg/bg/l/bg1501100柳神社_境内_通常_l.jpg");
	SetShade("絵背景100_l", LIGHT);
	Zoom("絵背景100_l", 0, 1500, 1500, null, true);
	Move("絵背景100_l", 0, @-1000, @-500, null, true);
	Fade("絵背景100_l", 0, 1000, null, true);

	FadeDelete("上背景", 300, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0215]

//◆音声指示：小声
{	St("C",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200840fje">
「え？」

//◆音声指示：小声
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/330200850kit">
「なんだ、今の音？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	PrintGO("上背景", 30000);

	DeleteAllSt(0,false);

	Fade("絵マスク", 0, 0, null, false);
	Fade("絵マスク/絵演色", 0, 0, null, false);
	Fade("絵背景100_l", 0, 0, null, true);

	OnBG(10,"bg1501100柳神社_境内_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 300, null, true);


{	St("C",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330200860wfu">
「え……今の音は？」

{	St("C",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330200870wfu">
「もしかして――ノーコちゃん！？」

{	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330200880wfu">
「なにか……あったのでしょうか」



//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330200890wfu">
「…………」

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330200900wfu">
「ううううう……！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330200910wfu">
「貫太さんも、気になるけど、でも――」


//◆ＳＥ：ブチブチ　葉っぱを取る
{
	CreateSE("SE06","se動作_葉っぱむしる");
	MusicStart("SE06",0,700,0,1000,null,false);
}


{	St("C",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/330200920wfu">
「あのノーコちゃんを、放っておくわけにはいきませんッ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	TextBoxDelete(150);

//◆ＳＥ：走る足音

	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",0,700,0,1000,null,true);

	SceneOut(5000, 500, "blind_01_00_0");
	DeleteAllSt(0,true);

{	ClockPass(2137);}



//◆場所：柳神社_境内
	OnBG(10,"bg1501100柳神社_境内_通常");
	FadeBG(0,true);

	WaitKey(1000);
	SetVolumeEX("SE01", 3000, 0, null);

//あきゅん「修正指示：夜風のＳＥを」
//※設置しました（mngw 11/18）

	CreateSE("SE02","se環境_風と葉っぱ_l");
	MusicStart("SE02",1000,700,0,1000,null,true);

	SceneIn(500, "blind_01_00_1");



	WaitKey(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]

{	St("C",700, @0,@60,"bu恵那_一休_sigh");
	Move("@StNameC/C*", 500, @0, @-60, DxlAuto, false);
	FadeSt("C",500,true);
	SetVolumeEX("SE02", 5000, 0, null);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200930fje">
「ふぅ、助かった……」

{	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200940fje">
「けど、何の音だったのかしらね、さっきの」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/330200950kit">
「さあ……？
　ノーコさんの仕業とか言ってたけど……」

{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/330200960kit">
「っていうかさ、なんで隠れなきゃいけなかったんだよ？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200970fje">
「そりゃもちろん、貫太さんのためよ」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330200980fje">
「ねえ、織田貫太さん？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2138);}


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/ab21/330200990ktt">
「いや、オレは――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/330201000kit">
「おい、恵那？　なにバカなこと――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_ハルヒ_angry");
	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330201010fje">
「名探偵富士見恵那を、甘く見ないでください！」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330201020fje">
「化けてるんですよね？　その格好に」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/330201030kit">
「は？　化けてるって……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_pride");
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/ab21/330201040ktt">
「ヤレヤレ……気付かれちゃったか」

{	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/ab21/330201050ktt">
「……ドロンパッ！！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2139);}


//◆ＳＥ：変身

	CreateSE("SE01","se動物_タヌキ_化ける01");
	MusicStart("SE01",0,700,0,1000,null,false);

	TextBoxDelete(0);
	CreateColorSP("絵色白", 710, "#FFFFFF");
	Wait(50);
	DeleteAllSt(0,true);
	Shake("@OnBG*", 100, 5, 5, 0, 0, 500, null, false);
	FadeDelete("絵色白", 1000, null, true);

	St("MR",700, @0,@0,"bu千秋_驚天_shock");
	Shake("@StNameMR/MR*", 200, 5, 5, 0, 0, 500, null, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/330201060kit">
「うわッ！」

{	St("C",700, @0,@0,"bu恵那_哀愁_pinch");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/330201070fje">
「煙――！？」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu貫太_横向き_normal");
	FadeSt("C",1000,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab21/330201080okt">
「いかにも――」

{	St("C",700, @0,@0,"bu貫太_通常_smile");
	FadeSt("C",300,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab21/330201090okt">
「この僕が、織田貫太だよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	Delete("縦線*");
	EndScene();
}
