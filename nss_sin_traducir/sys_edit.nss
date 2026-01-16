


chapter main
{
	//■準備「映像投影」
	CreateTexture("video",10,center,middle,"VIDEO");
	CreateTexture("video2",1000,center,middle,"VIDEO");

	CreateColor("色１", 55, 0, 0, 1024, 576, "BLACK");
	Fade("色１", 0, 0, null, true);
	Fade("色１", 300, 900, null, true);

	SetFont("ＭＳ ゴシック", 14, FFFFFF, 000000, 500, RIGHTDOWN);

	//■変数題前
	CreateText("DebugBackText", 100, 830, 550, Auto, Auto, "前へ");
	CreateChoice("DebugBack");
	CreateColor("DebugBack/MouseUsual/hit", 55, 800, 550, 100, 25, "BLUE");
	CreateColor("DebugBack/MouseOver/img", 55, 800, 550, 100, 25, "BLUE");
	CreateColor("DebugBack/MouseClick/img", 55, 800, 550, 100, 25, "BLUE");
	Request("DebugBack/MouseUsual/hit", "Erase");
	Request("DebugBackText", PushText);

	//■変数題次
	CreateText("DebugNextText", 100, 930, 550, Auto, Auto, "次へ");
	CreateChoice("DebugNext");
	CreateColor("DebugNext/MouseUsual/hit", 55, 900, 550, 100, 25, "BLUE");
	CreateColor("DebugNext/MouseOver/img", 55, 900, 550, 100, 25, "BLUE");
	CreateColor("DebugNext/MouseClick/img", 55, 900, 550, 100, 25, "BLUE");
	Request("DebugNext/MouseUsual/hit", "Erase");
	Request("DebugNextText", PushText);



	//■連想配列
	Array($DebugName,"何か","選択後ですか？","あなたのはじめては？","プロローグ通過しましたか？","トゥルー到達","「aa」到達","「aba」到達","「abb」到達","「baa」到達","「bab」到達","「bb」到達","「c」到達","「d」到達","「e」到達","一度でもクリア","現在進行ルート","キャラフラグ","【デバッグ】未読強制進行","【デバッグ】キャラフラグ","【デバッグ】ラテ遷移確認","【デバッグ】カゴメ","カゴメアソビ１","カゴメアソビ２","カゴメアソビ３","カゴメアソビ４","カゴメアソビ５","カゴメアソビ１Ａ","カゴメアソビ１Ｂ","カゴメアソビ２Ａ","カゴメアソビ２Ｂ","カゴメセレクト１","カゴメセレクト２","カゴメセレクト３","カゴメセレクト４","カゴメセレクト５","カゴメセレクト１Ａ","カゴメセレクト１Ｂ","カゴメセレクト２Ａ","カゴメセレクト２Ｂ","カゴメクリア１","カゴメクリア２","カゴメクリア３","カゴメクリア４","カゴメクリア５","カゴメクリア１Ａ","カゴメクリア１Ｂ","カゴメクリア２Ａ","カゴメクリア２Ｂ");

	AssocArray($DebugName,"何か","選択後ですか？","あなたのはじめては？","プロローグ通過しましたか？","トゥルー到達","「aa」到達","「aba」到達","「abb」到達","「baa」到達","「bab」到達","「bb」到達","「c」到達","「d」到達","「e」到達","一度でもクリア","現在進行ルート","キャラフラグ","【デバッグ】未読強制進行","【デバッグ】キャラフラグ","【デバッグ】ラテ遷移確認","【デバッグ】カゴメ","カゴメアソビ１","カゴメアソビ２","カゴメアソビ３","カゴメアソビ４","カゴメアソビ５","カゴメアソビ１Ａ","カゴメアソビ１Ｂ","カゴメアソビ２Ａ","カゴメアソビ２Ｂ","カゴメセレクト１","カゴメセレクト２","カゴメセレクト３","カゴメセレクト４","カゴメセレクト５","カゴメセレクト１Ａ","カゴメセレクト１Ｂ","カゴメセレクト２Ａ","カゴメセレクト２Ｂ","カゴメクリア１","カゴメクリア２","カゴメクリア３","カゴメクリア４","カゴメクリア５","カゴメクリア１Ａ","カゴメクリア１Ｂ","カゴメクリア２Ａ","カゴメクリア２Ｂ");

	Array($DebugName["選択後ですか？"],"CHARA_FLAG","グローバル","ブーリアン","普通",true);
	Array($DebugName["あなたのはじめては？"],"FirstChara","グローバル","特殊１","例外３",true);
	Array($DebugName["プロローグ通過しましたか？"],"START_FLAG","グローバル","ブーリアン","普通",true);
	Array($DebugName["トゥルー到達"],"Clear_トゥルー","グローバル","ブーリアン","普通",true);
	Array($DebugName["「aa」到達"],"Clear_aa","グローバル","ブーリアン","普通",true);
	Array($DebugName["「aba」到達"],"Clear_aba","グローバル","ブーリアン","普通",true);
	Array($DebugName["「abb」到達"],"Clear_abb","グローバル","ブーリアン","普通",true);
	Array($DebugName["「baa」到達"],"Clear_baa","グローバル","ブーリアン","普通",true);
	Array($DebugName["「bab」到達"],"Clear_bab","グローバル","ブーリアン","普通",true);
	Array($DebugName["「bb」到達"],"Clear_bb","グローバル","ブーリアン","普通",true);
	Array($DebugName["「c」到達"],"Clear_c","グローバル","ブーリアン","普通",true);
	Array($DebugName["「d」到達"],"Clear_d","グローバル","ブーリアン","普通",true);
	Array($DebugName["「e」到達"],"Clear_e","グローバル","ブーリアン","普通",true);
	Array($DebugName["一度でもクリア"],"GameClear","グローバル","ブーリアン","普通",true);

	Array($DebugName["カゴメアソビ１"],"flkagome1","グローバル","ブーリアン","普通",true);
	Array($DebugName["カゴメアソビ２"],"flkagome2","グローバル","ブーリアン","普通",true);
	Array($DebugName["カゴメアソビ３"],"flkagome3","グローバル","ブーリアン","普通",true);
	Array($DebugName["カゴメアソビ４"],"flkagome4","グローバル","ブーリアン","普通",true);
	Array($DebugName["カゴメアソビ５"],"flkagome5","グローバル","ブーリアン","普通",true);
	Array($DebugName["カゴメアソビ１Ａ"],"flkagome1a","グローバル","ブーリアン","普通",true);
	Array($DebugName["カゴメアソビ１Ｂ"],"flkagome1b","グローバル","ブーリアン","普通",true);
	Array($DebugName["カゴメアソビ２Ａ"],"flkagome2a","グローバル","ブーリアン","普通",true);
	Array($DebugName["カゴメアソビ２Ｂ"],"flkagome2b","グローバル","ブーリアン","普通",true);

	Array($DebugName["【デバッグ】カゴメ"],"KagomeDebug","グローバル","ブーリアン","普通",true);
	Array($DebugName["【デバッグ】未読強制進行"],"RuteDebug","グローバル","ブーリアン","普通",true);
	Array($DebugName["【デバッグ】キャラフラグ"],"CharaDebug","グローバル","ブーリアン","普通",true);
	Array($DebugName["【デバッグ】ラテ遷移確認"],"DebugRateIn","グローバル","ブーリアン","普通",true);

	Array($DebugName["現在進行ルート"],"RouteName","グローバル","特殊１","例外３１",true);
	Array($DebugName["キャラフラグ"],"CharaName","グローバル","特殊１","例外１",true);
//	Array($DebugName["「沙紅羅」ＯＮ・ＯＦＦ"],"CharaName","ローカル","特殊２","例外２",false);
//	Array($DebugName["「恵那」ＯＮ・ＯＦＦ"],"CharaName","ローカル","特殊２","例外２",false);
//	Array($DebugName["「千秋」ＯＮ・ＯＦＦ"],"CharaName","ローカル","特殊２","例外２",false);
//	Array($DebugName["「ノーコ」ＯＮ・ＯＦＦ"],"CharaName","ローカル","特殊２","例外２",false);
//	Array($DebugName["「似鳥」ＯＮ・ＯＦＦ"],"CharaName","ローカル","特殊２","例外２",false);
//	Array($DebugName["「フウリ」ＯＮ・ＯＦＦ"],"CharaName","ローカル","特殊２","例外２",false);


	Array($DebugName["カゴメセレクト１"],"flkagome1_Select","グローバル","ブーリアン","普通",true);
	Array($DebugName["カゴメセレクト２"],"flkagome2_Select","グローバル","ブーリアン","普通",true);
	Array($DebugName["カゴメセレクト３"],"flkagome3_Select","グローバル","ブーリアン","普通",true);
	Array($DebugName["カゴメセレクト４"],"flkagome4_Select","グローバル","ブーリアン","普通",true);
	Array($DebugName["カゴメセレクト５"],"flkagome5_Select","グローバル","ブーリアン","普通",true);
	Array($DebugName["カゴメセレクト１Ａ"],"flkagome1a_Select","グローバル","ブーリアン","普通",true);
	Array($DebugName["カゴメセレクト１Ｂ"],"flkagome1b_Select","グローバル","ブーリアン","普通",true);
	Array($DebugName["カゴメセレクト２Ａ"],"flkagome2a_Select","グローバル","ブーリアン","普通",true);
	Array($DebugName["カゴメセレクト２Ｂ"],"flkagome2b_Select","グローバル","ブーリアン","普通",true);

	Array($DebugName["カゴメクリア１"],"flkagome1_Clear","グローバル","ブーリアン","普通",true);
	Array($DebugName["カゴメクリア２"],"flkagome2_Clear","グローバル","ブーリアン","普通",true);
	Array($DebugName["カゴメクリア３"],"flkagome3_Clear","グローバル","ブーリアン","普通",true);
	Array($DebugName["カゴメクリア４"],"flkagome4_Clear","グローバル","ブーリアン","普通",true);
	Array($DebugName["カゴメクリア５"],"flkagome5_Clear","グローバル","ブーリアン","普通",true);
	Array($DebugName["カゴメクリア１Ａ"],"flkagome1a_Clear","グローバル","ブーリアン","普通",true);
	Array($DebugName["カゴメクリア１Ｂ"],"flkagome1b_Clear","グローバル","ブーリアン","普通",true);
	Array($DebugName["カゴメクリア２Ａ"],"flkagome2a_Clear","グローバル","ブーリアン","普通",true);
	Array($DebugName["カゴメクリア２Ｂ"],"flkagome2b_Clear","グローバル","ブーリアン","普通",true);




	//テキスト・選択肢作成
	$BaseDebugX=5;//最初の基点Ｘ
	$BaseDebugY=5;//最初の基点Ｙ
	$DebugX1=$BaseDebugX;//一つ目のＸ
	$DebugY1=$BaseDebugY;//一つ目のＹ

	$DebugX_plus=200;//Ｘ増加値
	$DebugY_plus=35;//Ｙ増加値

	$DebugY_plus2=15;//タイトルと値のＹ軸差
	$DebugY2=$DebugY1+$DebugY_plus2;//一つ目のＹ２

	$DebugH=$DebugX_plus/2;//選択範囲の広さ
	$DebugV=$DebugY_plus2*2;//選択範囲の広さ


	$DebugNumber=1;
	while(Count($DebugName)>$DebugNumber){
		$DebugTitleNat="変数題"+$DebugNumber;
		$DebugTextNat="変数名"+$DebugNumber;
		$TempDebug=1;//バグ回避用
		$TempDebugName=1;//バグ回避用

		VariableValue($,$DebugName[$DebugNumber]+"_番号",$DebugNumber);//番号代入

		//▽フラグ構築
		if($DebugName[$DebugNumber][1]=="グローバル"){
			//フラグの中身
			$TempDebug=VariableValue(#,$DebugName[$DebugNumber][0]);
			//ブーリアン判定
			DebugTF();
			$DebugText="<PRE>#</PRE>"+$DebugName[$DebugNumber][0]+"<PRE>=</PRE>"+$TempDebugName;
			//グローバル時の文字色
			SetFont("ＭＳ ゴシック", 14, FF9933, 000000, 500, RIGHTDOWN);
		}else{
			//フラグの中身
			$TempDebug=VariableValue($,$DebugName[$DebugNumber][0]);
			//ブーリアン判定
			DebugTF();
			$DebugText="<PRE>$</PRE>"+$DebugName[$DebugNumber][0]+"<PRE>=</PRE>"+$TempDebugName;
			//ローカル時の文字色
			SetFont("ＭＳ ゴシック", 14, FFFFFF, 000000, 500, RIGHTDOWN);
		}
		//▼タイトル
		CreateText($DebugTitleNat, 100, $DebugX1, $DebugY1, Auto, Auto, $DebugName[$DebugNumber]);

		//▼変数
		if($TempDebug!=0){
			SetFont("ＭＳ ゴシック", 14, F0FF00, 000000, 500, RIGHTDOWN);
		}else{
			SetFont("ＭＳ ゴシック", 14, 888888, 000000, 500, RIGHTDOWN);
		}

		//フラグの表示・非表示
		if($DebugName[$DebugNumber][4]){
			CreateText($DebugTextNat, 100, $DebugX1, $DebugY2, Auto, Auto, $DebugText);
			Move($DebugTextNat, 0, @30, @0, null, true);
		}

		//▼選択肢
		$DebugNut="DebugDis"+$DebugNumber;
		CreateChoice($DebugNut);
		$TempDebugNut1=$DebugNut+"/MouseUsual/hit";
		$TempDebugNut2=$DebugNut+"/MouseOver/img";
		$TempDebugNut3=$DebugNut+"/MouseClick/img";
		CreateColor($TempDebugNut1, 55, $DebugX1, $DebugY2, $DebugH, $DebugV, "RED");
		CreateColor($TempDebugNut2, 55, $DebugX1, $DebugY2, $DebugH, $DebugV, "RED");
		CreateColor($TempDebugNut3, 55, $DebugX1, $DebugY2, $DebugH, $DebugV, "RED");
		Request($TempDebugNut1, "Erase");

		$DebugX2=$DebugX1+$DebugH;
		$DebugNut="DebugAdd"+$DebugNumber;
		CreateChoice($DebugNut);
		$TempDebugNut1=$DebugNut+"/MouseUsual/hit";
		$TempDebugNut2=$DebugNut+"/MouseOver/img";
		$TempDebugNut3=$DebugNut+"/MouseClick/img";
		CreateColor($TempDebugNut1, 55, $DebugX2, $DebugY2, $DebugH, $DebugV, "BLUE");
		CreateColor($TempDebugNut2, 55, $DebugX2, $DebugY2, $DebugH, $DebugV, "BLUE");
		CreateColor($TempDebugNut3, 55, $DebugX2, $DebugY2, $DebugH, $DebugV, "BLUE");
		Request($TempDebugNut1, "Erase");

		$DebugY1=$DebugY1+$DebugY_plus;
		$DebugY2=$DebugY1+$DebugY_plus2;

		//改行
		if($DebugNumber==14||$DebugNumber==20||$DebugNumber==29||$DebugNumber==38){
			$DebugX1=$DebugX1+$DebugX_plus;
			$DebugY1=$BaseDebugY;//一つ目のＹ
			$DebugY2=$DebugY1+$DebugY_plus2;//一つ目のＹ２
		}
		
		$DebugNumber++;
	}

	//▼描画
	Request("変数*", PushText);
	Request("変数*/*", PushText);
	Fade("Debug*/*/*", 0, 0, null, true);

	Fade("video2", 500, 0, null, true);


	//★選択肢
	$LOCAL_debug_enable=true;
	$SYSTEM_keydown_esc=false;
	$SYSTEM_r_button_down=false;

	while($LOCAL_debug_enable){
		select{
			//★終了
			if($SYSTEM_r_button_down||$SYSTEM_keydown_d){$LOCAL_debug_enable=false;break;}

			case DebugBack{
				//DebugNextPage();
			}case DebugNext{
				//DebugNextPage();
			}
			case DebugAdd1{$DebugNumber=1;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis1{$DebugNumber=1;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd2{$DebugNumber=2;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis2{$DebugNumber=2;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd3{$DebugNumber=3;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis3{$DebugNumber=3;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd4{$DebugNumber=4;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis4{$DebugNumber=4;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd5{$DebugNumber=5;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis5{$DebugNumber=5;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd6{$DebugNumber=6;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis6{$DebugNumber=6;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd7{$DebugNumber=7;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis7{$DebugNumber=7;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd8{$DebugNumber=8;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis8{$DebugNumber=8;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd9{$DebugNumber=9;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis9{$DebugNumber=9;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd10{$DebugNumber=10;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis10{$DebugNumber=10;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd11{$DebugNumber=11;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis11{$DebugNumber=11;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd12{$DebugNumber=12;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis12{$DebugNumber=12;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd13{$DebugNumber=13;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis13{$DebugNumber=13;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd14{$DebugNumber=14;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis14{$DebugNumber=14;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd15{$DebugNumber=15;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis15{$DebugNumber=15;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd16{$DebugNumber=16;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis16{$DebugNumber=16;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd17{$DebugNumber=17;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis17{$DebugNumber=17;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd18{$DebugNumber=18;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis18{$DebugNumber=18;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd19{$DebugNumber=19;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis19{$DebugNumber=19;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd20{$DebugNumber=20;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis20{$DebugNumber=20;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd21{$DebugNumber=21;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis21{$DebugNumber=21;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd22{$DebugNumber=22;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis22{$DebugNumber=22;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd23{$DebugNumber=23;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis23{$DebugNumber=23;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd24{$DebugNumber=24;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis24{$DebugNumber=24;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd25{$DebugNumber=25;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis25{$DebugNumber=25;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd26{$DebugNumber=26;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis26{$DebugNumber=26;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd27{$DebugNumber=27;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis27{$DebugNumber=27;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd28{$DebugNumber=28;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis28{$DebugNumber=28;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd29{$DebugNumber=29;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis29{$DebugNumber=29;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd30{$DebugNumber=30;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis30{$DebugNumber=30;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd31{$DebugNumber=31;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis31{$DebugNumber=31;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd32{$DebugNumber=32;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis32{$DebugNumber=32;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd33{$DebugNumber=33;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis33{$DebugNumber=33;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd34{$DebugNumber=34;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis34{$DebugNumber=34;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd35{$DebugNumber=35;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis35{$DebugNumber=35;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd36{$DebugNumber=36;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis36{$DebugNumber=36;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd37{$DebugNumber=37;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis37{$DebugNumber=37;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd38{$DebugNumber=38;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis38{$DebugNumber=38;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd39{$DebugNumber=39;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis39{$DebugNumber=39;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd40{$DebugNumber=40;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis40{$DebugNumber=40;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd41{$DebugNumber=41;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis41{$DebugNumber=41;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd42{$DebugNumber=42;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis42{$DebugNumber=42;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd43{$DebugNumber=43;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis43{$DebugNumber=43;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd44{$DebugNumber=44;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis44{$DebugNumber=44;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd45{$DebugNumber=45;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis45{$DebugNumber=45;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd46{$DebugNumber=46;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis46{$DebugNumber=46;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd47{$DebugNumber=47;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis47{$DebugNumber=47;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd48{$DebugNumber=48;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis48{$DebugNumber=48;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd49{$DebugNumber=49;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis49{$DebugNumber=49;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd50{$DebugNumber=50;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis50{$DebugNumber=50;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd51{$DebugNumber=51;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis51{$DebugNumber=51;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd52{$DebugNumber=52;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis52{$DebugNumber=52;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd53{$DebugNumber=53;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis53{$DebugNumber=53;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd54{$DebugNumber=54;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis54{$DebugNumber=54;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd55{$DebugNumber=55;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis55{$DebugNumber=55;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd56{$DebugNumber=56;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis56{$DebugNumber=56;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd57{$DebugNumber=57;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis57{$DebugNumber=57;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd58{$DebugNumber=58;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis58{$DebugNumber=58;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd59{$DebugNumber=59;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis59{$DebugNumber=59;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd60{$DebugNumber=60;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis60{$DebugNumber=60;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd61{$DebugNumber=61;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis61{$DebugNumber=61;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd62{$DebugNumber=62;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis62{$DebugNumber=62;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd63{$DebugNumber=63;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis63{$DebugNumber=63;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd64{$DebugNumber=64;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis64{$DebugNumber=64;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd65{$DebugNumber=65;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis65{$DebugNumber=65;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd66{$DebugNumber=66;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis66{$DebugNumber=66;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd67{$DebugNumber=67;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis67{$DebugNumber=67;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd68{$DebugNumber=68;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis68{$DebugNumber=68;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd69{$DebugNumber=69;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis69{$DebugNumber=69;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd70{$DebugNumber=70;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis70{$DebugNumber=70;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd71{$DebugNumber=71;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis71{$DebugNumber=71;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd72{$DebugNumber=72;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis72{$DebugNumber=72;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd73{$DebugNumber=73;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis73{$DebugNumber=73;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd74{$DebugNumber=74;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis74{$DebugNumber=74;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd75{$DebugNumber=75;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis75{$DebugNumber=75;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd76{$DebugNumber=76;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis76{$DebugNumber=76;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd77{$DebugNumber=77;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis77{$DebugNumber=77;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd78{$DebugNumber=78;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis78{$DebugNumber=78;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd79{$DebugNumber=79;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis79{$DebugNumber=79;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd80{$DebugNumber=80;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis80{$DebugNumber=80;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd81{$DebugNumber=81;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis81{$DebugNumber=81;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd82{$DebugNumber=82;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis82{$DebugNumber=82;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd83{$DebugNumber=83;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis83{$DebugNumber=83;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd84{$DebugNumber=84;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis84{$DebugNumber=84;$DebugPatarn=FALSE;DebugNumber();}

			if($DebugPage!=2){
				case DebugAdd85{$DebugNumber=85;$DebugPatarn=TRUE;DebugNumber();}
				case DebugDis85{$DebugNumber=85;$DebugPatarn=FALSE;DebugNumber();}
				case DebugAdd86{$DebugNumber=86;$DebugPatarn=TRUE;DebugNumber();}
				case DebugDis86{$DebugNumber=86;$DebugPatarn=FALSE;DebugNumber();}
				case DebugAdd87{$DebugNumber=87;$DebugPatarn=TRUE;DebugNumber();}
				case DebugDis87{$DebugNumber=87;$DebugPatarn=FALSE;DebugNumber();}
				case DebugAdd88{$DebugNumber=88;$DebugPatarn=TRUE;DebugNumber();}
				case DebugDis88{$DebugNumber=88;$DebugPatarn=FALSE;DebugNumber();}
				case DebugAdd89{$DebugNumber=89;$DebugPatarn=TRUE;DebugNumber();}
				case DebugDis89{$DebugNumber=89;$DebugPatarn=FALSE;DebugNumber();}
				case DebugAdd90{$DebugNumber=90;$DebugPatarn=TRUE;DebugNumber();}
				case DebugDis90{$DebugNumber=90;$DebugPatarn=FALSE;DebugNumber();}
				case DebugAdd91{$DebugNumber=91;$DebugPatarn=TRUE;DebugNumber();}
				case DebugDis91{$DebugNumber=91;$DebugPatarn=FALSE;DebugNumber();}
			}
			//★終了
			if(!$LOCAL_debug_enable){break;}

			//★キーダウン系
			if($SYSTEM_keydown_f){
				if(!#SYSTEM_window_full_lock){
					#SYSTEM_window_full=!#SYSTEM_window_full;
					#SYSTEM_window_full_lock=false;
					Wait(300);
					$SYSTEM_keydown_f=false;
				}
			}else if($SYSTEM_keydown_esc||$SYSTEM_buttondown_close){
				call_chapter nss/sys_close.nss;
			}else if($SYSTEM_keydown_t){
				call_chapter nss/sys_reset.nss;
			}else if($SYSTEM_keydown_j){
				call_chapter nss/sys_backselect.nss;
			}
		}
	}

	//▽アザナエル特殊
	if(#ClearTrue){
		$SYSTEM_title_lock=false;
		$SYSTEM_backselect_lock=false;
	}
	if(#START_FLAG){
		#1800ノーコ_トゥルー_in=true;
		#1800フウリ_トゥルー_in=true;
		#1800恵那_トゥルー_in=true;
		#1800沙紅羅_トゥルー_in=true;
		#1800似鳥_トゥルー_in=true;
		#1800千秋_トゥルー_in=true;
	}
	if(#flkagome1_Clear){#flkagome1_PreClear=true;}
	if(#flkagome2_Clear){#flkagome2_PreClear=true;}
	if(#flkagome3_Clear){#flkagome3_PreClear=true;}
	if(#flkagome4_Clear){#flkagome4_PreClear=true;}
	if(#flkagome5_Clear){#flkagome5_PreClear=true;}
	if(#flkagome1a_Clear){#flkagome1a_PreClear=true;}
	if(#flkagome1b_Clear){#flkagome1b_PreClear=true;}
	if(#flkagome2a_Clear){#flkagome2a_PreClear=true;}
	if(#flkagome2b_Clear){#flkagome2b_PreClear=true;}

	if(#Clear_トゥルー){#ClearTrue=true;#GameClear=true;}
	if(#Clear_aa){#ClearAA=true;#GameClear=true;}
	if(#Clear_aba){#ClearABA=true;#GameClear=true;}
	if(#Clear_abb){#ClearABB=true;#GameClear=true;}
	if(#Clear_baa){#ClearBAA=true;#GameClear=true;}
	if(#Clear_bab){#ClearBAB=true;#GameClear=true;}
	if(#Clear_bb){#ClearBB=true;#GameClear=true;}
	if(#Clear_c){#ClearC=true;#GameClear=true;}
	if(#Clear_d){#ClearD=true;#GameClear=true;}
	if(#Clear_e){#ClearE=true;#GameClear=true;}


	Save(0);

	//■終了「本編への終了処理」
	Fade("video2", 300, 1000, null, true);
}




//■選択後の飛び先
function DebugNumber()
{
	if($DebugName[$DebugNumber][3]=="普通"){
	//▽パターン１
		if($DebugName[$DebugNumber][1]=="グローバル"){
			if(VariableValue(#,$DebugName[$DebugNumber][0])){
				VariableValue(#,$DebugName[$DebugNumber][0],false);
			}else{
				VariableValue(#,$DebugName[$DebugNumber][0],true);
			}
		}else{
			if(VariableValue($,$DebugName[$DebugNumber][0])){
				VariableValue($,$DebugName[$DebugNumber][0],false);
			}else{
				VariableValue($,$DebugName[$DebugNumber][0],true);
			}
		}
		DebugText();
	}else if($DebugName[$DebugNumber][3]=="例外１"){
	//▽パターン２
		if(#CharaDebug){
			Array($DebugEX_Name1,0,1,2,3,4,5,6);
			AssocArray($DebugEX_Name1,"何か","沙紅羅","恵那","千秋","ノーコ","似鳥","フウリ");
			Array($DebugEX_Num1,"何か","沙紅羅","恵那","千秋","ノーコ","似鳥","フウリ");
			$TempCount=Count($DebugEX_Name1);
			$TempDebug=1;//バグ回避用
			$TempDebug=VariableValue($,$DebugName[$DebugNumber][0]);
			if($DebugPatarn){
				$TempDebug2=$DebugEX_Name1[$TempDebug];
				$TempDebug=$TempDebug2+1;
				if($TempDebug>$TempCount){
					$TempDebug=1;
				}
			}else{
				$TempDebug2=$DebugEX_Name1[$TempDebug];
				$TempDebug=$TempDebug2-1;
				if($TempDebug<1){
					$TempDebug=$TempCount;
				}
			}
			VariableValue($,$DebugName[$DebugNumber][0],$DebugEX_Num1[$TempDebug]);
			VariableValue(#,$DebugName[$DebugNumber][0],VariableValue($,$DebugName[$DebugNumber][0]));
			DebugText();
		}
	}else if($DebugName[$DebugNumber][3]=="例外２"){
	//▽パターン３
		if(#CharaDebug){
			if($DebugName[$DebugNumber]=="「沙紅羅」ＯＮ・ＯＦＦ"){VariableValue($,$DebugName[$DebugNumber][0],"沙紅羅");}
			else if($DebugName[$DebugNumber]=="「恵那」ＯＮ・ＯＦＦ"){VariableValue($,$DebugName[$DebugNumber][0],"恵那");}
			else if($DebugName[$DebugNumber]=="「千秋」ＯＮ・ＯＦＦ"){VariableValue($,$DebugName[$DebugNumber][0],"千秋");}
			else if($DebugName[$DebugNumber]=="「ノーコ」ＯＮ・ＯＦＦ"){VariableValue($,$DebugName[$DebugNumber][0],"ノーコ");}
			else if($DebugName[$DebugNumber]=="「似鳥」ＯＮ・ＯＦＦ"){VariableValue($,$DebugName[$DebugNumber][0],"似鳥");}
			else if($DebugName[$DebugNumber]=="「フウリ」ＯＮ・ＯＦＦ"){VariableValue($,$DebugName[$DebugNumber][0],"フウリ");}

			VariableValue(#,$DebugName[$DebugNumber][0],VariableValue($,$DebugName[$DebugNumber][0]));

			$DebugNumber=$キャラフラグ_番号;
			DebugText();
		}
	}else if($DebugName[$DebugNumber][3]=="例外３"){
	//▽パターン４
		Array($DebugEX_Name1,0,1,2,3,4,5,6);
		AssocArray($DebugEX_Name1,"何か","沙紅羅","恵那","千秋","ノーコ","似鳥","フウリ");
		Array($DebugEX_Num1,"何か","沙紅羅","恵那","千秋","ノーコ","似鳥","フウリ");
		$TempCount=Count($DebugEX_Name1);
		$TempDebug=1;//バグ回避用
		$TempDebug=VariableValue(#,$DebugName[$DebugNumber][0]);
		if($DebugPatarn){
			$TempDebug2=$DebugEX_Name1[$TempDebug];
			$TempDebug=$TempDebug2+1;
			if($TempDebug>$TempCount){
				$TempDebug=1;
			}
		}else{
			$TempDebug2=$DebugEX_Name1[$TempDebug];
			$TempDebug=$TempDebug2-1;
			if($TempDebug<1){
				$TempDebug=$TempCount;
			}
		}
		VariableValue(#,$DebugName[$DebugNumber][0],$DebugEX_Num1[$TempDebug]);
		DebugText();
	}else if($DebugName[$DebugNumber][3]=="例外３１"){
	//▽パターン５
		Array($DebugEX_Name2,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14);
		AssocArray($DebugEX_Name2,"何か","トゥルー","a","aa","ab","aba","abb","b","ba","baa","bab","bb","c","d","e");
		Array($DebugEX_Num2,"何か","トゥルー","a","aa","ab","aba","abb","b","ba","baa","bab","bb","c","d","e");
		$TempCount=Count($DebugEX_Name2);
		$TempDebug=1;//バグ回避用
		$TempDebug=VariableValue(#,$DebugName[$DebugNumber][0]);
		if($DebugPatarn){
			$TempDebug2=$DebugEX_Name2[$TempDebug];
			$TempDebug=$TempDebug2+1;
			if($TempDebug>$TempCount){
				$TempDebug=1;
			}
		}else{
			$TempDebug2=$DebugEX_Name2[$TempDebug];
			$TempDebug=$TempDebug2-1;
			if($TempDebug<1){
				$TempDebug=$TempCount;
			}
		}
		VariableValue(#,$DebugName[$DebugNumber][0],$DebugEX_Num2[$TempDebug]);
		DebugText();
	}
}

//■表記の仕方（共通項目）
function DebugTF()
{
	if($DebugName[$DebugNumber][2]=="ブーリアン"){
	//▽パターン１
		if($TempDebug==1||$TempDebug){$TempDebugName="<PRE>true</PRE>";}
		else if($TempDebug==0||$TempDebug==false){$TempDebugName="<PRE>false</PRE>";}
	}else if($DebugName[$DebugNumber][2]=="特殊１"){
	//▽パターン２
		if(!$TempDebug){$TempDebugName="無し";}
		else{$TempDebugName=$TempDebug;}
	}else if($DebugName[$DebugNumber][2]=="特殊２"){
	//▽パターン３

	}else{
		$TempDebugName=$TempDebug;
	}
}

//■テキスト作り直し
function DebugText()
{
	$DebugTextNut="変数名"+$DebugNumber;
	Position($DebugTextNut,$TempDebugX,$TempDebugY);

	$TempDebug=1;//バグ回避用
	$TempDebugName=1;//バグ回避用

	//▽フラグ構築
	if($DebugName[$DebugNumber][1]=="グローバル"){
		//フラグの中身
		$TempDebug=VariableValue(#,$DebugName[$DebugNumber][0]);
		//ブーリアン判定
		DebugTF();
		$DebugText="<PRE>#</PRE>"+$DebugName[$DebugNumber][0]+"<PRE>=</PRE>"+$TempDebugName;
	}else{
		//フラグの中身
		$TempDebug=VariableValue($,$DebugName[$DebugNumber][0]);
		//ブーリアン判定
		DebugTF();
		$DebugText="<PRE>$</PRE>"+$DebugName[$DebugNumber][0]+"<PRE>=</PRE>"+$TempDebugName;
	}

	//▼変数
	if($TempDebug!=0){
		SetFont("ＭＳ ゴシック", 14, F0FF00, 000000, 500, RIGHTDOWN);
	}else{
		SetFont("ＭＳ ゴシック", 14, 888888, 000000, 500, RIGHTDOWN);
	}
	CreateText($DebugTextNut, 100, $TempDebugX, $TempDebugY, Auto, Auto, $DebugText);
}








