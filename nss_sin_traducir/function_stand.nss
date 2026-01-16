//■立ち絵系マクロ

//=============================================================================//
..//◆作品別定義（ローカル）
//=============================================================================//
function StArray()
{
	//★リスト定義（現状重いので0_bootで一回のみ定義）
	//StList();

	#GameLoading="AXANAEL";
//	#GameLoading="SteinsGate";
//	#GameLoading="Phantom";

	//★作品別定義
	if(#GameLoading=="AXANAEL"){
		//▼AXANAEL
		//立ち絵の種類を定義
		Array($StA,"X","C","L","R","ML","MR","X2","C2","L2","R2","ML2","MR2");
		AssocArray($StA,"X","C","L","R","ML","MR","X2","C2","L2","R2","ML2","MR2");

		//識別別の親ナット指定
		StArrayName();
		//$StTopNut_STBUF9="Window";

		//WINDOW幅の指定
		//$StTopX_STBUF9=727;$StTopY_STBUF9=121;$StTopH_STBUF9=220;$StTopV_STBUF9=248;

		//識別別の座標指定
		$StBaseXX=0;
		$StBaseYY=0;

		//★共通連想構築
		StArrayBase();

		//座標基本位置
		$StPlaceX="Center";
		$StPlaceY="InBottom";

		//識別別の座標指定
		$StA[X][座標][x]=0;
		$StA[X][座標][y]=96;
		$StA[C][座標][x]=0;
		$StA[C][座標][y]=96;
		$StA[L][座標][x]=-300;
		$StA[L][座標][y]=96;
		$StA[R][座標][x]=300;
		$StA[R][座標][y]=96;
		$StA[ML][座標][x]=-150;
		$StA[ML][座標][y]=96;
		$StA[MR][座標][x]=150;
		$StA[MR][座標][y]=96;

		$StA[X2][座標][x]=0;
		$StA[X2][座標][y]=96;
		$StA[C2][座標][x]=0;
		$StA[C2][座標][y]=96;
		$StA[L2][座標][x]=-300;
		$StA[L2][座標][y]=96;
		$StA[R2][座標][x]=300;
		$StA[R2][座標][y]=96;
		$StA[ML2][座標][x]=-150;
		$StA[ML2][座標][y]=96;
		$StA[MR2][座標][x]=150;
		$StA[MR2][座標][y]=96;

		//ディスプレイサイズはいくつ？
		$ScreenSizeH=1024;
		$ScreenSizeV=576;
		//背景カラーを使用しますか？
		$StColorUse=false;
		//画像ストック最大数（定義だけされていて描画されていないもの）
		$StandStockMax=10;

		$SilhouetteColor="Black";
		$SilhouetteFade=800;

		//パス、拡張子指定
		$StBase拡張子=".png";
		$StBaseパス="cg/";
		$StBaseパスEX="cgex/";
		//$StFileNameBase="";
		//$StFileNameTrim="_trm";
		//$StFileNameLip01="b";
		//$StFileNameLip02="c";
		//$StFileNameEye01="d";
		//$StFileNameEye02="e";

		//フォルダ識別は使用しますか？
		$StAutoFolder=2;

		//目パチ口パク関連
		$StProcessUse=false;//目パチ口パクのどちらかでもプロセスを使用しますか？
		$StEyeUse=false;//目パチはON？
		$StLipUse=false;//口パクはON？
		$StTrimPa=1;//画像出力方法指定。「$StTrimPa==1」はトリム「$StTrimPa==2」は画像全体
		$StFadeType=1;//false時の立ち絵、口パク目パチ時の出し方。待つ場合は「1」。画像速出しの場合は「2」。

		//目パチ口パクの秒数指定
		$LipSpeed00 = 20;
		$LipSpeed01 = 20;
		$LipSpeed02 = 60;
		$LipSpeed03 = 40;
		$LipSpeed04 = 20;
		$LipSpeed05 = 60;
		$LipSpeed06 = 60;
		$EyeSpeed00 = 1000;
		$EyeSpeed01 = 15;
		$EyeSpeed02 = 15;
		$EyeSpeed03 = 30;
		$EyeSpeed04 = 30;
		$EyeSpeed05 = 16;
		//口パクの音量指定
		$LipWave1 = 3000;
		$LipWave2 = 600;

	}else if(#GameLoading=="SteinsGate"){
		//▼SteinsGate
		//立ち絵の種類を定義
		Array($StA,"STBUF1","STBUF2","STBUF3","STBUF4","STBUF5","STBUF6","STBUF7","STBUF8","STBUF9");
		AssocArray($StA,"STBUF1","STBUF2","STBUF3","STBUF4","STBUF5","STBUF6","STBUF7","STBUF8","STBUF9");

		//識別別の親ナット指定
		StArrayName();
		$StTopNut_STBUF9="Window";

		//WINDOW幅の指定
		$StTopX_STBUF9=727;$StTopY_STBUF9=121;$StTopH_STBUF9=220;$StTopV_STBUF9=248;

		//識別別の座標指定
		$StBaseXX=0;
		$StBaseYY=288;

		//★共通連想構築
		StArrayBase();

		//座標基本位置
		$StPlaceX="OnLeft";
		$StPlaceY="OutTop";

		//識別別の座標指定
		$StA[STBUF1][座標][x]=0;
		$StA[STBUF1][座標][y]=384;
		$StA[STBUF2][座標][x]=0;
		$StA[STBUF2][座標][y]=384;
		$StA[STBUF3][座標][x]=0;
		$StA[STBUF3][座標][y]=384;
		$StA[STBUF4][座標][x]=0;
		$StA[STBUF4][座標][y]=384;
		$StA[STBUF5][座標][x]=0;
		$StA[STBUF5][座標][y]=384;
		$StA[STBUF6][座標][x]=0;
		$StA[STBUF6][座標][y]=384;
		$StA[STBUF7][座標][x]=0;
		$StA[STBUF7][座標][y]=384;
		$StA[STBUF8][座標][x]=0;
		$StA[STBUF8][座標][y]=384;
		$StA[STBUF9][座標][x]=631;
		$StA[STBUF9][座標][y]=426;

//838
//419
//	PosSt("STBUF8", 204, @0);
//	PosSt("STBUF8", @0, 288);

		//ディスプレイサイズはいくつ？
		$ScreenSizeH=1024;
		$ScreenSizeV=576;
		//背景カラーを使用しますか？
		$StColorUse=true;
		//画像ストック最大数（定義だけされていて描画されていないもの）
		$StandStockMax=10;

		//パス、拡張子指定
		$StBase拡張子=".png";
		$StBaseパス="cg/";
		$StBaseパスEX="cgex/";
		$StFileNameBase="a";
		$StFileNameTrim="trm";
		$StFileNameLip01="b";
		$StFileNameLip02="c";
		$StFileNameEye01="d";
		$StFileNameEye02="e";

		//フォルダ識別は使用しますか？
		$StAutoFolder=1;

		//目パチ口パク関連
		$StProcessUse=true;//目パチ口パクのどちらかでもプロセスを使用しますか？
		$StEyeUse=false;//目パチはON？
		$StLipUse=true;//口パクはON？
		$StTrimPa=1;//画像出力方法指定。「$StTrimPa==1」はトリム「$StTrimPa==2」は画像全体
		$StFadeType=1;//false時の立ち絵、口パク目パチ時の出し方。待つ場合は「1」。画像速出しの場合は「2」。

		//目パチ口パクの秒数指定
		$LipSpeed00 = 20;//20
		$LipSpeed01 = 40;//20
		$LipSpeed02 = 80;//60
		$LipSpeed03 = 60;//40
		$LipSpeed04 = 20;//20
		$LipSpeed05 = 80;//60
		$LipSpeed06 = 80;//60
		$LipWait01 = 20;
		$LipWait02 = 20;
		$LipWait03 = 30;
		$LipWait04 = 30;

		$EyeSpeed00 = 1000;
		$EyeSpeed01 = 15;
		$EyeSpeed02 = 15;
		$EyeSpeed03 = 30;
		$EyeSpeed04 = 30;
		$EyeSpeed05 = 16;
		//口パクの音量指定
		$LipWave1 = 3000;
		$LipWave2 = 600;

	}else if(#GameLoading=="Phantom"){
		//▼Phantom
		//立ち絵の種類を定義
		Array($StA,"StX","StC","StL","StR","StML","StMR","BuX","BuC","BuL","BuR","BuML","BuMR");
		AssocArray($StA,"StX","StC","StL","StR","StML","StMR","BuX","BuC","BuL","BuR","BuML","BuMR");

		//識別別の親ナット指定
		StArrayName();
		//$StTopNut_STBUF9="Window";

		//WINDOW幅の指定
		//$StTopX_STBUF9=727;$StTopY_STBUF9=121;$StTopH_STBUF9=220;$StTopV_STBUF9=248;

		//識別別の座標指定
		$StBaseXX=0;
		$StBaseYY=0;

		//★共通連想構築
		StArrayBase();

		//座標基本位置
		$StPlaceX="Center";
		$StPlaceY="InBottom";

		//識別別の座標指定
		$StA[StX][座標][x]=0;
		$StA[StX][座標][y]=0;
		$StA[StC][座標][x]=0;
		$StA[StC][座標][y]=0;
		$StA[StL][座標][x]=-300;
		$StA[StL][座標][y]=0;
		$StA[StR][座標][x]=300;
		$StA[StR][座標][y]=0;
		$StA[StML][座標][x]=-150;
		$StA[StML][座標][y]=0;
		$StA[StMR][座標][x]=150;
		$StA[StMR][座標][y]=0;
	
		$StA[BuX][座標][x]=0;
		$StA[BuX][座標][y]=0;
		$StA[BuC][座標][x]=0;
		$StA[BuC][座標][y]=0;
		$StA[BuL][座標][x]=-200;
		$StA[BuL][座標][y]=0;
		$StA[BuR][座標][x]=200;
		$StA[BuR][座標][y]=0;
		$StA[BuML][座標][x]=-100;
		$StA[BuML][座標][y]=0;
		$StA[BuMR][座標][x]=100;
		$StA[BuMR][座標][y]=0;

		//ディスプレイサイズはいくつ？
		$ScreenSizeH=1280;
		$ScreenSizeV=720;
		//背景カラーを使用しますか？
		$StColorUse=false;
		//画像ストック最大数（定義だけされていて描画されていないもの）
		$StandStockMax=10;

		//パス、拡張子指定
		$StBase拡張子=".png";
		$StBaseパス="cg/";
		$StBaseパスEX="cgex/";
		//$StFileNameBase="";
		$StFileNameTrim="_trm";
		$StFileNameLip01="b";
		$StFileNameLip02="c";
		$StFileNameEye01="d";
		$StFileNameEye02="e";

		//フォルダ識別は使用しますか？
		$StAutoFolder=1;

		//目パチ口パク関連
		$StProcessUse=false;//目パチ口パクのどちらかでもプロセスを使用しますか？
		$StEyeUse=true;//目パチはON？
		$StLipUse=true;//口パクはON？
		$StTrimPa=1;//画像出力方法指定。「$StTrimPa==1」はトリム「$StTrimPa==2」は画像全体
		$StFadeType=1;//false時の立ち絵、口パク目パチ時の出し方。待つ場合は「1」。画像速出しの場合は「2」。

		//目パチ口パクの秒数指定
		$LipSpeed00 = 20;
		$LipSpeed01 = 20;
		$LipSpeed02 = 60;
		$LipSpeed03 = 40;
		$LipSpeed04 = 20;
		$LipSpeed05 = 60;
		$LipSpeed06 = 60;
		$EyeSpeed00 = 1000;
		$EyeSpeed01 = 15;
		$EyeSpeed02 = 15;
		$EyeSpeed03 = 30;
		$EyeSpeed04 = 30;
		$EyeSpeed05 = 16;
		//口パクの音量指定
		$LipWave1 = 3000;
		$LipWave2 = 600;

	}
}


//★共通連想構築
function StArrayName()
{
	//★ロック設置
	LockVideo(true);

	$Temp=0;
	while(Count($StA)>$Temp){
		VariableValue($,"StTopNut_"+$StA[$Temp],"Name");
		$Temp++;
	}

	//★ロック設置
	LockVideo(false);
}

function StArrayBase()
{
	//★ロック設置
	LockVideo(true);

	$Temp=0;
	while(Count($StA)>$Temp){
	
		//フォルダ識別
		if($StAutoFolder==1){
			if(Strstr($StA[$Temp],"St")){
				$StPassName="st/";
			}else if(Strstr($StA[$Temp],"Bu")){
				$StPassName="bu/";
			}else if(Strstr($StA[$Temp],"Fu")){
				$StPassName="fu/";
			}else if(Strstr($StA[$Temp],"Tv")){
				$StPassName="tv/";
			}else{
				$StPassName="st/";
			}
		}

		Array($StA[$Temp],"座標",0,0,"ボイス",false,"FFFFFF",$StPassName,"ズーム");
		AssocArray($StA[$Temp],"座標","ナンバー","ユーズ","ボイス","状態","背景","パス","ズーム");
	
		//★バグのため臨時措置（連想の0は文字列）
		Array($StA[$Temp][座標],1,1,1,1);//常時移動可能領域
		AssocArray($StA[$Temp][座標],"x","y","xx","yy");
	
		Array($StA[$Temp][ズーム],1000,1000);//常時移動可能領域
		AssocArray($StA[$Temp][ズーム],"h","v");

		$TempNut="StName"+$StA[$Temp];
		Request($TempNut, UnLock);

		//窓分離措置
		if(VariableValue($,"StTopNut_"+$StA[$Temp])=="Window"){
			$StTopX=VariableValue($,"StTopX_"+$StA[$Temp]);
			$StTopY=VariableValue($,"StTopY_"+$StA[$Temp]);
			$StTopH=VariableValue($,"StTopH_"+$StA[$Temp]);
			$StTopV=VariableValue($,"StTopV_"+$StA[$Temp]);
			CreateWindow($TempNut, 0, $StTopX, $StTopY, $StTopH, $StTopV, false);
		}else{
			CreateName($TempNut);
		}

		SetAlias($TempNut, $TempNut);
		Request($TempNut, Lock);

		$StNextTemp=String("@%s%02d",$StA[$Temp],1);
		VariableValue($,$StA[$Temp]+"_次",$StNextTemp);
		$StNextTemp=String("@%s%02d",$StA[$Temp],2);
		VariableValue($,$StA[$Temp]+"_先",$StNextTemp);
		$StNextTemp=String("@%s%02d",$StA[$Temp],3);
		VariableValue($,$StA[$Temp]+"_来",$StNextTemp);

		$Temp++;
	}

	//$StA[...]　　←識別名
	//$StA[...][座標][x]　　←識別固有のＸ座標
	//$StA[...][座標][y]　　←識別固有のＹ座標
	//$StA[...][ナンバー]　　←現在の画像ストックナンバー
	//$StA[...][ナンバー][0.1.2...]　　←画像ストックナンバー（1.2...）にどの【プロセス】が入っているか
	//$StA[...][ユーズ]　　←現在の画像描画ナンバー（画面に描画されている番号）
	//$StA[...][ボイス]　　←特に無し
	//$StA[...][ボイス][0.1.2...]　　←画像ストックナンバー（1.2...）にどの【ボイス】が入っているか
	//$StA[...][状態]　　←現在のその「識別名」が描画されているかどうか「1」が描画、「0」が消えてる
	//$StA[...][背景]　　←識別名における背景カラーの保持
	//$StA[...][パス]　　←識別名から「st/」「bu/」等の配置を見極める
	//$StA[...][ズーム][h]　　←識別固有のズーム縦幅
	//$StA[...][ズーム][v]　　←識別固有のズーム横幅

	$Temp=0;
	while(Count($StA)>$Temp){
		//★バグのため臨時措置（連想の0は文字列）
		$StA[$Temp][座標][xx]=1;
		$StA[$Temp][座標][yy]=1;

		$StA[$Temp][座標][xx]=$StBaseXX;
		$StA[$Temp][座標][yy]=$StBaseYY;
		$Temp++;
	}

	//★ロック設置
	LockVideo(false);
}



//=============================================================================//
..//◆定義コマンド
//=============================================================================//
function St($識別名, $立画優先度, $Ｘ位置, $Ｙ位置, $立像)
{
	$St拡張子=$StBase拡張子;
	$Stパス=$StBaseパス;

	//コスプレパッチ
	if(#SYSTEM_cosplay_patch){
		$Stパス=$StBaseパスEX;
	}

	//●画像パス
	if($StAutoFolder==2){
		if(Strstr($立像,"st")==1){$StPassName="st/";}
		else if(Strstr($立像,"bu")==1){$StPassName="bu/";}
		else if(Strstr($立像,"fu")==1){$StPassName="fu/";}
		else if(Strstr($立像,"tv")==1){$StPassName="tv/";}
		else{$StPassName="st/";}
		$StA[$識別名][パス]=$StPassName;
	}

	$St画像=$Stパス+$StA[$識別名][パス]+$立像+$StFileNameBase+$St拡張子;

	//マクロベース
	StSetMacro();
}
function St2($識別名, $立画優先度, $Ｘ位置, $Ｙ位置, $立像,$Stパス,$St拡張子)
{
	//コスプレパッチ
	if(#SYSTEM_cosplay_patch){
		$Stパス=$StBaseパスEX;
	}

	//●画像パス
	if($StAutoFolder==2){
		if(Strstr($立像,"st")==1){$StPassName="st/";}
		else if(Strstr($立像,"bu")==1){$StPassName="bu/";}
		else if(Strstr($立像,"fu")==1){$StPassName="fu/";}
		else if(Strstr($立像,"tv")==1){$StPassName="tv/";}
		else{$StPassName="st/";}
		$StA[$識別名][パス]=$StPassName;
	}

	$St画像=$Stパス+$StA[$識別名][パス]+$立像+$StFileNameBase+$St拡張子;

	//マクロベース
	StSetMacro();
}
function StEx($識別名, $立画優先度, $Ｘ位置, $Ｙ位置, $立像,$Stパス,$St拡張子,$StパスEX)
{
	//コスプレパッチ
	if(#SYSTEM_cosplay_patch){
		$Stパス=$StパスEX;
	}

	//●画像パス
	if($StAutoFolder==2){
		if(Strstr($立像,"st")==1){$StPassName="st/";}
		else if(Strstr($立像,"bu")==1){$StPassName="bu/";}
		else if(Strstr($立像,"fu")==1){$StPassName="fu/";}
		else if(Strstr($立像,"tv")==1){$StPassName="tv/";}
		else{$StPassName="st/";}
		$StA[$識別名][パス]=$StPassName;
	}

	$St画像=$Stパス+$StA[$識別名][パス]+$立像+$StFileNameBase+$St拡張子;

	//マクロベース
	StSetMacro();
}


function StSetMacro()
{
	//★ロック設置
	//LockVideo(true);

	//★変数代入関連
	//$StandStockMaxまで
	$StA[$識別名][ナンバー]=$StA[$識別名][ナンバー]+1;
	if($StA[$識別名][ナンバー]>=$StandStockMax){
		$StA[$識別名][ナンバー]=0;
	}
	//ナット基変数代入（StC01とかSTBUF01とか）
	$ナット基=String("%s%02d",$StA[$識別名],$StA[$識別名][ナンバー]);

	//■定義開始
	//	Request("トリガープロセス*", Pause);
	//	Request("hu*/目", Pause);
	//	Request("bu*/目", Pause);
	//	Request("st*/目", Pause);

	//●ナット基
	$親ナット基="StName"+$識別名;
	$nut="@"+$親ナット基+"/"+$ナット基;

	//★定義開始
	if($silhouette){
		//▼シルエット加工
		$nutcolor=$nut+"/color";
		CreateStencil($nut, $立画優先度, $StPlaceX, $StPlaceY, 128, $St画像, false);
		CreateColor($nutcolor, $立画優先度, 1024, 0, 1024, 576, $SilhouetteColor);

		SetAlias($nut,$ナット基);
		Fade($nutcolor, 0, 0, null, false);
		Fade($nut, 0, 0, null, true);

		//旧Ｎ２チラチラ対策
		Move($nutcolor, 0, 0, @0, null, true);

	}else if($StProcessUse){
		//▼目パチ口パク
		CreateTexture($nut, $立画優先度, OutRight, $StPlaceY, $St画像);
		SetAlias($nut,$ナット基);
		Fade($nut, 0, 0, null, true);

		//旧Ｎ２チラチラ対策
		if($StPlaceX=="Center"){
			$表示位置Ｘ=($ScreenSizeH-ImageHorizon($nut))/2;
		}else if($StPlaceX=="OnLeft"){
			$表示位置Ｘ=-(ImageHorizon($nut)/2);
		}
		Move($nut, 0, $表示位置Ｘ, @0, null, true);

		$Temp=1;
		while(20>=$Temp){
			if($StandProcess[$Temp]==false){
				$StandProcess[$Temp]=true;
				$StandProcess[$Temp][0]=$識別名;
				//$StandProcess[$Temp][0]=$ナット基;
				//$StandProcess[$Temp][1]=VariableValue(#,$立像+"[0]");
				break;
			}
			$Temp++;
		}
		$StandNumber=$Temp;

		//それぞれの箇所に使用するナンバリング代入
		$StA[$識別名][ナンバー][$StA[$識別名][ナンバー]]=$StandNumber;
		//それぞれの判別に使用するボイスclass代入（人物ダブル表示とかに重宝）
		$StA[$識別名][ボイス][$StA[$識別名][ナンバー]]=VariableValue(#,$立像+"[0]");

		//コスプレパッチ用判別
		if(#SYSTEM_cosplay_patch){
			//画像個別の目パチ口パク位置
			$eyeX=VariableValue(#,$立像+"[9]");
			$eyeY=VariableValue(#,$立像+"[10]");
			$eyeH=VariableValue(#,$立像+"[11]");
			$eyeV=VariableValue(#,$立像+"[12]");
			$lipX=VariableValue(#,$立像+"[13]");
			$lipY=VariableValue(#,$立像+"[14]");
			$lipH=VariableValue(#,$立像+"[15]");
			$lipV=VariableValue(#,$立像+"[16]");
		}else{
			//画像個別の目パチ口パク位置
			$eyeX=VariableValue(#,$立像+"[1]");
			$eyeY=VariableValue(#,$立像+"[2]");
			$eyeH=VariableValue(#,$立像+"[3]");
			$eyeV=VariableValue(#,$立像+"[4]");
			$lipX=VariableValue(#,$立像+"[5]");
			$lipY=VariableValue(#,$立像+"[6]");
			$lipH=VariableValue(#,$立像+"[7]");
			$lipV=VariableValue(#,$立像+"[8]");
		}
		$eyeX1=0;
		$eyeY1=0;
		$eyeX2=0;
		$eyeY2=$eyeV;
		$lipX1=0;
		$lipY1=$eyeV+$eyeV;
		$lipX2=0;
		$lipY2=$eyeV+$eyeV+$lipV;

		$nut_eye1="@"+$ナット基+"/目1";
		$nut_eye2="@"+$ナット基+"/目2";
		$nut_lip1="@"+$ナット基+"/口1";
		$nut_lip2="@"+$ナット基+"/口2";
		$alies_eye1=$ナット基+"_eye1";
		$alies_eye2=$ナット基+"_eye2";
		$alies_lip1=$ナット基+"_lip1";
		$alies_lip2=$ナット基+"_lip2";
//		$alies_eye1="目"+$StandNumber+"_1";
//		$alies_eye2="目"+$StandNumber+"_2";
//		$alies_lip1="口"+$StandNumber+"_1";
//		$alies_lip2="口"+$StandNumber+"_2";

		//（★要変更）「$StLip...」目パチはON？口パクはON？
		//$StEyeUse=true;$StLipUse=true;
		//（★要変更）「$StTrimPa==1」はトリム「$StTrimPa==2」は個別の画像を読み込む
		//$StTrimPa=2;

		if($StTrimPa==1){
			//トリム用
			$stデータトリム=$Stパス+"tr/"+$立像+$StFileNameTrim+$St拡張子;
			$トリムイメージ="@"+$ナット基+"/img";
			LoadImage($トリムイメージ, $stデータトリム);

			if($StEyeUse){
				CreateClipTexture($nut_eye1,$立画優先度,$eyeX,$eyeY,$eyeX1,$eyeY1,$eyeH,$eyeV,$トリムイメージ);
				CreateClipTexture($nut_eye2,$立画優先度,$eyeX,$eyeY,$eyeX2,$eyeY2,$eyeH,$eyeV,$トリムイメージ);
			}
			if($StLipUse){
				CreateClipTexture($nut_lip1,$立画優先度,$lipX,$lipY,$lipX1,$lipY1,$lipH,$lipV,$トリムイメージ);
				CreateClipTexture($nut_lip2,$立画優先度,$lipX,$lipY,$lipX2,$lipY2,$lipH,$lipV,$トリムイメージ);
			}
		}else if($StTrimPa==2){
			//個別
			$St画像_eye1=$Stパス+$StA[$識別名][パス]+$立像+$StFileNameEye01+$St拡張子;
			$St画像_eye2=$Stパス+$StA[$識別名][パス]+$立像+$StFileNameEye02+$St拡張子;
			$St画像_lip1=$Stパス+$StA[$識別名][パス]+$立像+$StFileNameLip01+$St拡張子;
			$St画像_lip2=$Stパス+$StA[$識別名][パス]+$立像+$StFileNameLip02+$St拡張子;

			$eyeX=0;$eyeY=0;
			$lipX=0;$lipY=0;

			if($StEyeUse){
				CreateTexture($nut_eye1, $立画優先度, $eyeX, $eyeY, $St画像_eye1);
				CreateTexture($nut_eye2, $立画優先度, $eyeX, $eyeY, $St画像_eye2);
			}
			if($StLipUse){
				CreateTexture($nut_lip1, $立画優先度, $lipX, $lipY, $St画像_lip1);
				CreateTexture($nut_lip2, $立画優先度, $lipX, $lipY, $St画像_lip2);
			}
		}

		if($StEyeUse){
			SetAlias($nut_eye1,$alies_eye1);
			SetAlias($nut_eye2,$alies_eye2);
		}
		if($StLipUse){
			SetAlias($nut_lip1,$alies_lip1);
			SetAlias($nut_lip2,$alies_lip2);
		}

		Fade($nut_eye1, 0, 0, null, false);
		Fade($nut_eye2, 0, 0, null, false);
		Fade($nut_lip1, 0, 0, null, false);
		Fade($nut_lip2, 0, 0, null, false);

		//Request("トリガープロセス*", Resume);
		//Request("hu*/目", Resume);
		//Request("bu*/目", Resume);
		//Request("st*/目", Resume);

		//▼プロセス定義
		if($StEyeUse){
			$eyepro="@"+$ナット基+"/目";
			$proc_e="Eye"+$StandNumber;
			CreateProcess($eyepro,$立像優先度,0,0,$proc_e);
		}
		if($StLipUse){
			$lippro="@"+$ナット基+"/口";
			$proc_m="Lip"+$StandNumber;
			CreateProcess($lippro,$立像優先度,0,0,$proc_m);
		}
	}else{
		//▼通常
		CreateTexture($nut, $立画優先度, OutRight, $StPlaceY, $St画像);
		SetAlias($nut,$ナット基);
		Fade($nut, 0, 0, null, true);

		//旧Ｎ２チラチラ対策
		if($StPlaceX=="Center"){
			$表示位置Ｘ=($ScreenSizeH-ImageHorizon($nut))/2;
		}else if($StPlaceX=="OnLeft"){
			$表示位置Ｘ=-(ImageHorizon($nut)/2);
		}
		Move($nut, 0, $表示位置Ｘ, @0, null, true);
	}

	//ズーム調整
	if($StProcessUse){
		$eyeX_vertex=(ImageHorizon($ナット基)/2)-$eyeX;
		$eyeY_vertex=(ImageVertical($ナット基)/2)-$eyeY;
		$lipX_vertex=(ImageHorizon($ナット基)/2)-$lipX;
		$lipY_vertex=(ImageVertical($ナット基)/2)-$lipY;

		if($StEyeUse){
			SetVertex($nut_eye1, $eyeX_vertex, $eyeY_vertex);
			SetVertex($nut_eye2, $eyeX_vertex, $eyeY_vertex);
		}
		if($StLipUse){
			SetVertex($nut_lip1, $lipX_vertex, $lipY_vertex);
			SetVertex($nut_lip2, $lipX_vertex, $lipY_vertex);
		}
	}
	if($StA[$識別名][ズーム][h]!=1000||$StA[$識別名][ズーム][v]!=1000){
		Request($nut, Smoothing);
		Zoom($nut, 0, $StA[$識別名][ズーム][h], $StA[$識別名][ズーム][v], null, true);
	}

	//カラー調整
	if($StColorUse){
		SetColor($nut,$StA[$識別名][背景]);
		if($StEyeUse){
			SetColor($nut_eye1,$StA[$識別名][背景]);
			SetColor($nut_eye2,$StA[$識別名][背景]);
	 	}
		if($StLipUse){
			SetColor($nut_lip1,$StA[$識別名][背景]);
			SetColor($nut_lip2,$StA[$識別名][背景]);
		}
	}

	//★バグのため臨時措置（連想同士の0+0は文字列で永遠に変化しない）
	$Ｘ基準=1;
	$Ｙ基準=1;

	//位置調整
	$Ｘ基準=$StA[$識別名][座標][x]+$StA[$識別名][座標][xx];
	$Ｙ基準=$StA[$識別名][座標][y]+$StA[$識別名][座標][yy];
	Move($nut, 0, @$Ｘ基準, @$Ｙ基準, null, true);

	//後で絶対座標でも動けるように回収
	Move($nut, 0, $Ｘ位置, $Ｙ位置, null, true);

	//★ロック設置
	//LockVideo(false);
}

//=============================================================================//
..//◆描画コマンド
//=============================================================================//

function FadeSt($識別名,$立絵時間,$伏せ)
{
	//$StA[...]　　←識別名
	//$StA[...][座標][x]　　←識別固有のＸ座標
	//$StA[...][座標][y]　　←識別固有のＹ座標
	//$StA[...][ナンバー]　　←現在の画像ストックナンバー
	//$StA[...][ナンバー][0.1.2...]　　←画像ストックナンバー（1.2...）にどの【プロセス】が入っているか
	//$StA[...][ユーズ]　　←現在の画像描画ナンバー（画面に描画されている番号）
	//$StA[...][ボイス]　　←特に無し
	//$StA[...][ボイス][0.1.2...]　　←画像ストックナンバー（1.2...）にどの【ボイス】が入っているか
	//$StA[...][状態]　　←現在のその「識別名」が描画されているかどうか「1」が描画、「0」が消えてる
	//$StA[...][背景]　　←識別名における背景カラーの保持
	//$StA[...][パス]　　←識別名から「st/」「bu/」等の配置を見極める
	//$StA[...][ズーム][h]　　←識別固有のズーム縦幅
	//$StA[...][ズーム][v]　　←識別固有のズーム横幅

	//▼ストックが無い場合はお帰りいただきます
	$バグ代理１=$StA[$識別名][ユーズ];
	$バグ代理２=$StA[$識別名][ナンバー];
	if($バグ代理１==$バグ代理２){
		return;
	}

	//★変数代入関連
	//$StandStockMaxまで
	$StA[$識別名][ユーズ]=$StA[$識別名][ユーズ]+1;
	if($StA[$識別名][ユーズ]>=$StandStockMax){
		$StA[$識別名][ユーズ]=0;
	}

	//■共通項目
	StMacro();

	//プロセス停止
	if($StProcessUse&&$StA[$識別名][状態]){
		$ナット口=$ナット基１+"/口";
		$ナット目=$ナット基１+"/目";
		Request($ナット口, Pause);
		Request($ナット目, Pause);
		
		$del=$ナット基１+"/*";
		Delete($del);
		
		$StandProcess[$StA[$識別名][ナンバー][$picnut]]=false;
		$StandProcess[$StA[$識別名][ナンバー][$picnut]][0]="無し";
	}

	//★描画開始
	//ナットが消えていた場合
	if(!$StA[$識別名][状態]){
		Fade($ナット基１, 0, 0, null, false);
	}
	//前の前のナットは問答無用で消す
	Fade($ナット基２, 0, 0, null, false);
	Delete($ナット基２);

	if(!$StA[$識別名][状態]){
		if($silhouette){
			Fade($ナット基０, $立絵時間, 1000, null, false);
			Fade($ナット基０_色, $立絵時間, $SilhouetteFade, null, false);
		}else{
			Fade($ナット基０, $立絵時間, 1000, null, false);
			Fade($ナット基０パーツ, 0, 0, null, false);//緊急避難
		}
	}else{
		if($silhouette){
			Fade($ナット基１, 0, 1000, null, false);
			Fade($ナット基１_色, 0, $SilhouetteFade, null, true);
			Fade($ナット基１, $立絵時間, 0, null, false);
			Fade($ナット基１_色, $立絵時間, 0, null, false);

			Fade($ナット基０, $立絵時間, 1000, null, false);
			Fade($ナット基０_色, $立絵時間, $SilhouetteFade, null, false);
		}else{
			Fade($ナット基１, 0, 1000, null, true);
			Fade($ナット基１, $立絵時間, 0, Axl3, false);
			Fade($ナット基０, $立絵時間, 1000, Dxl2, false);
			Fade($ナット基０パーツ, 0, 0, null, false);//緊急避難
		}
		Request($ナット基１, Disused);
	}

	if($伏せ==true){
		WaitFade($ナット基０, null);
	}else if($伏せ!=false){
		Wait($伏せ);
	}

	//現在の状態を代入
	$StA[$識別名][状態]=true;

	//移動等の制御時に使用する個別変数への代入
	$次ナンバー=$StA[$識別名][ユーズ]+1;
	$先ナンバー=$StA[$識別名][ユーズ]+2;
	$来ナンバー=$StA[$識別名][ユーズ]+3;
	if($次ナンバー>=$StandStockMax){$次ナンバー=0;}
	if($先ナンバー>=$StandStockMax){$先ナンバー=0;}
	if($来ナンバー>=$StandStockMax){$来ナンバー=0;}
//	$昔画像=$ナット基１;
//	$今画像=$ナット基０;
	$次画像=String("@%s%02d",$StA[$識別名],$次ナンバー);
	$先画像=String("@%s%02d",$StA[$識別名],$先ナンバー);
	$来画像=String("@%s%02d",$StA[$識別名],$来ナンバー);
	VariableValue($,$識別名+"_前",$ナット基１);
	VariableValue($,$識別名+"_今",$ナット基０);
	VariableValue($,$識別名+"_次",$次画像);
	VariableValue($,$識別名+"_先",$先画像);
	VariableValue($,$識別名+"_来",$来画像);

	//アザナエル用：カゴメアソビカラー
	if(#AnotherL){
		KagomeColorAuto(19000,300,true);
	}

	//プロセス発動
	if($StProcessUse){
		if($StEyeUse){
			$ナット目=$ナット基０+"/目";
			Request($ナット目, Start);
		}
		if($StLipUse){
			$ナット口=$ナット基０+"/口";
			Request($ナット口, Start);
		}
	}
}


function DeleteSt($識別名,$立絵時間,$伏せ)
{
	//$StA[...]　　←識別名
	//$StA[...][座標][x]　　←識別固有のＸ座標
	//$StA[...][座標][y]　　←識別固有のＹ座標
	//$StA[...][ナンバー]　　←現在の画像ストックナンバー
	//$StA[...][ナンバー][0.1.2...]　　←画像ストックナンバー（1.2...）にどの【プロセス】が入っているか
	//$StA[...][ユーズ]　　←現在の画像描画ナンバー（画面に描画されている番号）
	//$StA[...][ボイス]　　←特に無し
	//$StA[...][ボイス][0.1.2...]　　←画像ストックナンバー（1.2...）にどの【ボイス】が入っているか
	//$StA[...][状態]　　←現在のその「識別名」が描画されているかどうか「1」が描画、「0」が消えてる
	//$StA[...][背景]　　←識別名における背景カラーの保持
	//$StA[...][パス]　　←識別名から「st/」「bu/」等の配置を見極める
	//$StA[...][ズーム][h]　　←識別固有のズーム縦幅
	//$StA[...][ズーム][v]　　←識別固有のズーム横幅

	//★変数代入関連
	//前の状態が「Delete」で且つ「ナンバー」と「ユーズ」が同一ではない時
	$バグ代理１=$StA[$識別名][ユーズ];
	$バグ代理２=$StA[$識別名][ナンバー];

	if(!$StA[$識別名][状態]&&($バグ代理１!=$バグ代理２)){
		//$StandStockMaxまで
		$StA[$識別名][ユーズ]=$StA[$識別名][ユーズ]+1;
		if($StA[$識別名][ユーズ]>=$StandStockMax){
			$StA[$識別名][ユーズ]=0;
		}
		$StMaxDelete=true;
	}else if(!$StA[$識別名][状態]&&($バグ代理１==$バグ代理２)){
		return;
	}

	//■共通項目
	StMacro();

	//プロセス停止
	if($StProcessUse){
		$ナット口=$ナット基０+"/口";
		$ナット目=$ナット基０+"/目";
		Request($ナット口, Pause);
		Request($ナット目, Pause);
		
		$del=$ナット基０+"/*";
		Delete($del);

		$StandProcess[$StA[$識別名][ナンバー][$StA[$識別名][ユーズ]]]=false;
		$StandProcess[$StA[$識別名][ナンバー][$StA[$識別名][ユーズ]]][0]="無し";
	}

	//★描画開始
	Fade($ナット基１, 0, 0, null, false);

	//前の前のナットは問答無用で消す
	Fade($ナット基２, 0, 0, null, false);
	Delete($ナット基２);

	if($StMaxDelete){
		$StMaxDelete=false;
	}else if($silhouette){
		Fade($ナット基０, 0, 1000, null, false);
		Fade($ナット基０_色, 0, $SilhouetteFade, null, true);
		Fade($ナット基０, $立絵時間, 0, null, false);
		Fade($ナット基０_色, $立絵時間, 0, null, false);
	}else{
		Fade($ナット基０, 0, 1000, null, true);
		Fade($ナット基０, $立絵時間, 0, null, false);
	}
	Request($ナット基０, Disused);

	if($伏せ==true){
		WaitFade($ナット基０, null);
	}else if($伏せ!=false){
		Wait($伏せ);
	}

	//現在の状態を代入
	$StA[$識別名][状態]=false;
}

function StMacro()
{
//	CreateText("テキスト１", 200000, 50, 50, 700, 500, $StA[$識別名][ユーズ]);
//	WaitKey();
//	$aaaa=Integer($StA[$識別名][ユーズ]);
//	CreateText("テキスト１", 200000, 50, 50, 700, 500, $aaaa);
//	WaitKey();

	//描画ナット基呼び出し（StC01とかSTBUF01とか）
	$ナット基０=String("@%s%02d",$StA[$識別名],$StA[$識別名][ユーズ]);

	//○一個前のナット
	if($StA[$識別名][ユーズ]==0){
		$picnut=$StandStockMax-1;
	}else{
		$picnut=$StA[$識別名][ユーズ]-1;
	}
	$ナット基１=String("@%s%02d",$StA[$識別名],$picnut);

	//○二個前のナット
	if($StA[$識別名][ユーズ]==1){
		$Prepicnut=$StandStockMax-1;
	}else if($StA[$識別名][ユーズ]==0){
		$Prepicnut=$StandStockMax-2;
	}else{
		$Prepicnut=$StA[$識別名][ユーズ]-2;
	}
	$ナット基２=String("@%s%02d",$StA[$識別名],$Prepicnut);

	//シルエット系のナット基
	$ナット基０_色=$ナット基０+"/color";
	$ナット基１_色=$ナット基１+"/color";

	$ナット基０パーツ=$ナット基０+"/*";
	$ナット基１パーツ=$ナット基１+"/*";
}


//全ての立ち絵を一つずつ出す
function FadeAllSt($立絵時間ALL,$伏せALL)
{
	//★ロック設置
	LockVideo(true);

	$Temp=0;
	while(Count($StA)>$Temp){
		$バグ代理１=$StA[$Temp][ユーズ];
		$バグ代理２=$StA[$Temp][ナンバー];
		if($バグ代理１!=$バグ代理２){
			FadeSt($StA[$Temp],$立絵時間ALL,false);
		}
		$Temp++;
	}

	//★ロック設置
	LockVideo(false);

	if($伏せALL==true){
		WaitFade($ナット基０, null);
	}else if($伏せALL!=false){
		Wait($伏せALL);
	}
}



//全ての立ち絵を一つずつ消す
function DeleteAllSt($立絵時間ALL,$伏せALL)
{
	//★ロック設置
	LockVideo(true);

	$Temp=0;
	while(Count($StA)>$Temp){
		if($StA[$Temp][状態]){
			DeleteSt($StA[$Temp],$立絵時間ALL,false);
		}
		$Temp++;
	}

	//★ロック設置
	LockVideo(false);

	if($伏せALL==true){
		WaitFade($ナット基０, null);
	}else if($伏せALL!=false){
		Wait($伏せALL);
	}
}

//全ての立ち絵を瞬時に消滅（ズーム値や背景色等の設定は引き継ぐ）
function ByeAllSt()
{
	//★ロック設置
	LockVideo(true);

	$StTemp=0;
	while(Count($StA)>$StTemp){
		$StTempNut="@StName"+$StA[$StTemp];

//		$nut=$StTempNut+"/*/*";
//		Request($nut, Stop);
//		WaitAction($nut, null);

		$nut=$StTempNut+"/*/*/*";
		Delete($nut);
		$nut=$StTempNut+"/*/*";
		Delete($nut);
		$nut=$StTempNut+"/*";
		Delete($nut);

		$StA[$StTemp][状態]=false;
		$StA[$StTemp][ナンバー]=0;
		$StA[$StTemp][ユーズ]=0;

		$次画像=String("@%s%02d",$StA[$StTemp],1);
		VariableValue($,$StA[$StTemp]+"_次",$次画像);
		$先画像=String("@%s%02d",$StA[$StTemp],2);
		VariableValue($,$StA[$StTemp]+"_先",$先画像);
		$来画像=String("@%s%02d",$StA[$StTemp],3);
		VariableValue($,$StA[$StTemp]+"_来",$来画像);

		$StTemp++;
	}

	if($StProcessUse){
		$StTemp=1;
		while(20>=$StTemp){
			$StandProcess[$StTemp]=false;
			$StandProcess[$StTemp][0]="無し";
			$StTemp++;
		}
	}

	$StMaxDelete=false;

	//★ロック設置
	LockVideo(false);
}

//一つの立ち絵を瞬時に消滅（ズーム値や背景色等の設定は引き継ぐ）
function ByeSt($識別子)
{
	//★ロック設置
	//LockVideo(true);

	$StTempNut="@StName"+$StA[$識別子];

//		$nut=$StTempNut+"/*/*";
//		Request($nut, Stop);
//		WaitAction($nut, null);

	$nut=$StTempNut+"/*/*/*";
	Delete($nut);
	$nut=$StTempNut+"/*/*";
	Delete($nut);
	$nut=$StTempNut+"/*";
	Delete($nut);

	$StA[$識別子][状態]=false;
	$StA[$識別子][ナンバー]=0;
	$StA[$識別子][ユーズ]=0;

	$次画像=String("@%s%02d",$StA[$識別名],1);
	VariableValue($,$識別名+"_次",$次画像);
	$先画像=String("@%s%02d",$StA[$識別名],2);
	VariableValue($,$識別名+"_先",$先画像);
	$来画像=String("@%s%02d",$StA[$識別名],3);
	VariableValue($,$識別名+"_来",$来画像);

	if($StProcessUse){
		$StTemp=1;
		while(20>=$StTemp){
			if($StandProcess[$StTemp][0]==$識別子){
				$StandProcess[$StTemp]=false;
				$StandProcess[$StTemp][0]="無し";
			}
			$StTemp++;
		}
	}

	$StMaxDelete=false;

	//★ロック設置
	//LockVideo(false);
}

	//$StA[...]　　←識別名
	//$StA[...][座標][x]　　←識別固有のＸ座標
	//$StA[...][座標][y]　　←識別固有のＹ座標
	//$StA[...][ナンバー]　　←現在の画像ストックナンバー
	//$StA[...][ナンバー][0.1.2...]　　←画像ストックナンバー（1.2...）にどの【プロセス】が入っているか
	//$StA[...][ユーズ]　　←現在の画像描画ナンバー（画面に描画されている番号）
	//$StA[...][ボイス]　　←特に無し
	//$StA[...][ボイス][0.1.2...]　　←画像ストックナンバー（1.2...）にどの【ボイス】が入っているか
	//$StA[...][状態]　　←現在のその「識別名」が描画されているかどうか「1」が描画、「0」が消えてる
	//$StA[...][背景]　　←識別名における背景カラーの保持
	//$StA[...][パス]　　←識別名から「st/」「bu/」等の配置を見極める
	//$StA[...][ズーム][h]　　←識別固有のズーム縦幅
	//$StA[...][ズーム][v]　　←識別固有のズーム横幅
























//=============================================================================//
..//◆位置系コマンド
//=============================================================================//

//現在の座標を一時的な座標に収める
function PosSt($識別名,$Ｘ座標,$Ｙ座標)
{
	if($Ｘ座標!="@0"){
		$StA[$識別名][座標][xx]=$Ｘ座標;
	}

	if($Ｙ座標!="@0"){
		$StA[$識別名][座標][yy]=$Ｙ座標;
	}
}


//現在の立ち絵の位置を一時的な座標位置に反映させる
function PosSetSt($識別名)
{
	//描画ナット基呼び出し（StC01とかSTBUF01とか）
	$ナット基=String("@%s%02d",$StA[$識別名],$StA[$識別名][ユーズ]);
	Position($ナット基,$X座標値格納変数,$Y座標値格納変数);

	//Ｘ位置によって変化
	if($StPlaceX=="Center"){
		$表示位置Ｘ=($ScreenSizeH-ImageHorizon($ナット基))/2;
	}else if($StPlaceX=="OnLeft"){
		$表示位置Ｘ=-(ImageHorizon($ナット基)/2);
	}

	//Ｙ位置によって変化
	if($StPlaceY=="OutTop"){
		$表示位置Ｙ=-(ImageVertical($ナット基));
	}else if($StPlaceY=="InBottom"){
		$表示位置Ｙ=$ScreenSizeV-ImageVertical($ナット基);
	}else if($StPlaceY=="OnTop"){
		$表示位置Ｙ=-(ImageVertical($ナット基)/2);
	}else if($StPlaceY=="Middle"){
		$表示位置Ｙ=($ScreenSizeV-ImageVertical($ナット基))/2;
	}

	$StA[$識別名][座標][xx]=($X座標値格納変数-$StA[$識別名][座標][x])-$表示位置Ｘ;
	$StA[$識別名][座標][yy]=($Y座標値格納変数-$StA[$識別名][座標][y])-$表示位置Ｙ;
}

//一時的な座標位置をリセットする
function PosiClearSt($識別名)
{
	$StA[$識別名][座標][xx]=$StBaseXX;
	$StA[$識別名][座標][yy]=$StBaseYY;
}





//=============================================================================//
..//◆拡大系コマンド
//=============================================================================//
//現在描画されている識別子のズームの値を変更する
function ZoomSt($識別名,$Time,$ZoomX,$ZoomY,$Tempo,待ち)
{
	$ナット基０=String("@%s%02d",$StA[$識別名],$StA[$識別名][ユーズ]);
	Request($ナット基０, Smoothing);
	Zoom($ナット基０, $Time, $ZoomX, $ZoomY, $Tempo, 待ち);
}

//直前に定義した識別子のズームの値を変更する
function ZoomPreSt($識別名,$Time,$ZoomX,$ZoomY,$Tempo,待ち)
{
	$ナット基０=String("@%s%02d",$StA[$識別名],$StA[$識別名][ナンバー]);
	Request($ナット基０, Smoothing);
	Zoom($ナット基０, $Time, $ZoomX, $ZoomY, $Tempo, 待ち);
}

//以降定義した識別子のズームの値を固定する
function ZoomSetSt($識別名,$ZoomX,$ZoomY)
{
	$StA[$識別名][ズーム][h]=$ZoomX;
	$StA[$識別名][ズーム][v]=$ZoomY;
}

//ズームの値をリセットする
function ZoomClearSt()
{
	//★ロック設置
	LockVideo(true);

	$Temp=0;
	while(Count($StA)>$Temp){
		$StA[$Temp][ズーム][h]=1000;
		$StA[$Temp][ズーム][v]=1000;
		$Temp++;
	}

	//★ロック設置
	LockVideo(false);
}














//=============================================================================//
..//◆背景色コマンド
//=============================================================================//

//識別名ごとにカラーを割り振る
function SetColorSt($識別名,$StColor)
{
	$StA[$識別名][背景]=$StColor;

	//▼直前の描画されているナットの配色も変化させる
	$nut=String("@%s%02d",$StA[$識別名],$StA[$識別名][ユーズ]);
	$nut_eye1=$ナット基+"_eye1";
	$nut_eye2=$ナット基+"_eye2";
	$nut_lip1=$ナット基+"_lip1";
	$nut_lip2=$ナット基+"_lip2";

	SetColor($nut,$StA[$識別名][背景]);
	if($StEyeUse){
		SetColor($nut_eye1,$StA[$識別名][背景]);
		SetColor($nut_eye2,$StA[$識別名][背景]);
 	}
	if($StLipUse){
		SetColor($nut_lip1,$StA[$識別名][背景]);
		SetColor($nut_lip2,$StA[$識別名][背景]);
	}
	//▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲
}

//背景に依存させるかたちで全ての立ち絵のカラーを変更する
function SetCharaColor($BgName)
{
	//▼いずれ背景ごとに色味を設定してArrayを組む必要があるかも
	if($BgName=="BG01N"){$StColor="ffffff";}
	else if($BgName=="BG02N"){$StColor="ffffff";}
	else if($BgName=="BG26N"){$StColor="ffffff";}
	else if($BgName=="BG31N"){$StColor="ffffff";}
	else if($BgName=="BG34N1"){$StColor="ffffff";}
	else if($BgName=="BG02N1"){$StColor="ffffff";}
	else if($BgName=="BG02N2"){$StColor="ffffff";}
	else if($BgName=="BG02NS1"){$StColor="ffffff";}
	else if($BgName=="BG02NS2"){$StColor="ffffff";}
	else if($BgName=="BG45A4"){$StColor="c7cfcf";}
	else if($BgName=="BG06A1"){$StColor="c7cfcf";}
	else if($BgName=="BG07A2"){$StColor="c7cfcf";}
	else if($BgName=="BG07A4"){$StColor="c7cfcf";}
	else if($BgName=="BG09A"){$StColor="c7cfcf";}
	else if($BgName=="BG28A3"){$StColor="c7cfcf";}
	else{
		$StSelectA_1=Strstr($BgName,"a");
		$StSelectA_2=Strstr($BgName,"A");
		$StSelectE_1=Strstr($BgName,"e");
		$StSelectE_2=Strstr($BgName,"E");
		$StSelectN_1=Strstr($BgName,"n");
		$StSelectN_2=Strstr($BgName,"N");
	
		if($StSelectA_1||$StSelectA_2){
			//その他
			$StColor="FFFFFF";
		}else if($StSelectE_1||$StSelectE_2){
			//夕方
			$StColor="fffbdb";
		}else if($StSelectN_1||$StSelectN_2){
			//夜
			$StColor="c7cfcf";
		}else{
			//通常時
			$StColor="FFFFFF";
		}
	}

	//識別別の色指定
	//★ロック設置
	LockVideo(true);

	$Temp=0;
	while(Count($StA)>$Temp){
		$StA[$Temp][背景]=$StColor;

		//▼直前の描画されているナットの配色も変化させる
		//余分？
		$nut=String("@%s%02d",$StA[$Temp],$StA[$Temp][ユーズ]);
		$nut_eye1=$ナット基+"_eye1";
		$nut_eye2=$ナット基+"_eye2";
		$nut_lip1=$ナット基+"_lip1";
		$nut_lip2=$ナット基+"_lip2";
	
		SetColor($nut,$StA[$Temp][背景]);
		if($StEyeUse){
			SetColor($nut_eye1,$StA[$Temp][背景]);
			SetColor($nut_eye2,$StA[$Temp][背景]);
	 	}
		if($StLipUse){
			SetColor($nut_lip1,$StA[$Temp][背景]);
			SetColor($nut_lip2,$StA[$Temp][背景]);
		}
		//▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲

		$Temp++;
	}

	//★ロック設置
	LockVideo(false);
}













//	Move("BGBUF2", 0, @-393, @-57, null, true);
//	SetBackSt("電話背景",10100,235,-22,"cg/bg/bg28a1.jpg");

//=============================================================================//
..//◆ウィンドウ内背景
//=============================================================================//
//識別名ごとにカラーを割り振る
function SetBackSt($ナット基,$優先度,X,Y,$素材名)
{
	$識別名="STBUF9";
	$親ナット基="StName"+$識別名;

	$StTopX=VariableValue($,"StTopX_"+$StA[$識別名]);
	$StTopY=VariableValue($,"StTopY_"+$StA[$識別名]);
	$StTopH=VariableValue($,"StTopH_"+$StA[$識別名]);
	$StTopV=VariableValue($,"StTopV_"+$StA[$識別名]);

	$背景名="@"+$親ナット基+"/"+$ナット基;
	CreateTexture($背景名, $優先度, 628, 40, $素材名);
	SetAlias($背景名, $ナット基);
	Move($背景名, 0, X, Y, null, false);
	Fade($背景名, 0, 0, null, true);

	$ライン名="@"+$親ナット基+"/ライン";
	$優先度２=$優先度+5000;
	CreateTexture($ライン名, $優先度２, $StTopX, $StTopY, "cg/sys/adv/line.png");
	SetAlias($ライン名, "ライン");
	Fade($ライン名, 0, 0, null, true);
}

function FadeBackSt($ナット基,描画速度,待ち)
{
	Fade("@ライン", 描画速度, 1000, null, false);
	Fade($ナット基, 描画速度, 1000, null, 待ち);
}

function DeleteBackSt($ナット基,描画速度,待ち)
{
	Fade("@ライン", 描画速度, 1000, null, false);
	Fade($ナット基, 描画速度, 1000, null, 待ち);
	Request("@ライン", Disused);
	Request($ナット基, Disused);
}









//=============================================================================//
..//★二重表示防止コマンド
//=============================================================================//
function GodFadeSt("GodPosition",GodFade,GodWait)
{
	CreatePlainSP("絵神様１", 800);
	FadeSt("GodPosition",0,true);
	FadeDelete("絵神様１", GodFade, null, GodWait);
}
function PlainFadeSt("GodPosition",GodFade,GodWait,GodPri)
{
	CreatePlainSP("絵神様１", GodPri);
	FadeSt("GodPosition",0,true);
	FadeDelete("絵神様１", GodFade, null, GodWait);
}











//=============================================================================//
..//★音声に合わせたプロセス
//=============================================================================//
//―――――――――――――――――――――――――
...表示
//―――――――――――――――――――――――――
....//▽出す
function FadeStPro($P識別名, $P秒数, $P待ち)
{
	CreateProcess("立ち絵プロセス", 150, 0, 0, "FadeStMacro");
	SetAlias("立ち絵プロセス", "立ち絵プロセス");
	Request("立ち絵プロセス", Start);
}
function FadeStMacro()
{
	Wait($P待ち);
	FadeSt($P識別名,$P秒数,true);
}

....//▽消す
function DeleteStPro($P識別名, $P秒数, $P待ち)
{
	CreateProcess("立ち絵プロセス", 150, 0, 0, "DeleteStMacro");
	SetAlias("立ち絵プロセス", "立ち絵プロセス");
	Request("立ち絵プロセス", Start);
}
function DeleteStMacro()
{
	Wait($P待ち);
	DeleteSt($P識別名,$P秒数,true);
}

....//▽消す⇒出す
function DeleteFadeStPro($P識別名, $P秒数１, $P待ち１, $P秒数２, $P待ち２)
{
	CreateProcess("立ち絵プロセス", 150, 0, 0, "DeleteFadeStMacro");
	SetAlias("立ち絵プロセス", "立ち絵プロセス");
	Request("立ち絵プロセス", Start);
}
function DeleteFadeStMacro()
{
	Wait($P待ち１);
	DeleteSt($P識別名,$P秒数１,true);
	Wait($P待ち２);
	FadeSt($P識別名,$P秒数２,true);
}

....//▽出す⇒消す
function FadeDeleteStPro($P識別名, $P秒数１, $P待ち１, $P秒数２, $P待ち２)
{
	CreateProcess("立ち絵プロセス", 150, 0, 0, "FadeDeleteStMacro");
	SetAlias("立ち絵プロセス", "立ち絵プロセス");
	Request("立ち絵プロセス", Start);
}
function FadeDeleteStMacro()
{
	Wait($P待ち１);
	FadeSt($P識別名,$P秒数１,true);
	Wait($P待ち２);
	DeleteSt($P識別名,$P秒数２,true);
}

....//▽出す⇒出す
function FadeFadeStPro($P識別名, $P秒数１, $P待ち１, $P秒数２, $P待ち２)
{
	CreateProcess("立ち絵プロセス", 150, 0, 0, "FadeFadeStMacro");
	SetAlias("立ち絵プロセス", "立ち絵プロセス");
	Request("立ち絵プロセス", Start);
}
function FadeFadeStMacro()
{
	Wait($P待ち１);
	FadeSt($P識別名,$P秒数１,true);
	Wait($P待ち２);
	FadeSt($P識別名,$P秒数２,true);
}

....//▽出す⇒出す⇒出す
function FadeFadeFadeStPro($P識別名, $P秒数１, $P待ち１, $P秒数２, $P待ち２, $P秒数３, $P待ち３)
{
	CreateProcess("立ち絵プロセス", 150, 0, 0, "FadeFadeFadeStMacro");
	SetAlias("立ち絵プロセス", "立ち絵プロセス");
	Request("立ち絵プロセス", Start);
}
function FadeFadeFadeStMacro()
{
	Wait($P待ち１);
	FadeSt($P識別名,$P秒数１,true);
	Wait($P待ち２);
	FadeSt($P識別名,$P秒数２,true);
	Wait($P待ち３);
	FadeSt($P識別名,$P秒数３,true);
}

....//▽出す⇒消す⇒出す
function FadeDeleteFadeStPro($P識別名, $P秒数１, $P待ち１, $P秒数２, $P待ち２, $P秒数３, $P待ち３)
{
	CreateProcess("立ち絵プロセス", 150, 0, 0, "FadeDeleteFadeStMacro");
	SetAlias("立ち絵プロセス", "立ち絵プロセス");
	Request("立ち絵プロセス", Start);
}
function FadeDeleteFadeStMacro()
{
	Wait($P待ち１);
	FadeSt($P識別名,$P秒数１,true);
	Wait($P待ち２);
	DeleteSt($P識別名,$P秒数２,true);
	Wait($P待ち３);
	FadeSt($P識別名,$P秒数３,true);
}

....//▽消す⇒出す⇒消す
function DeleteFadeDeleteStPro($P識別名, $P秒数１, $P待ち１, $P秒数２, $P待ち２, $P秒数３, $P待ち３)
{
	CreateProcess("立ち絵プロセス", 150, 0, 0, "DeleteFadeDeleteStMacro");
	SetAlias("立ち絵プロセス", "立ち絵プロセス");
	Request("立ち絵プロセス", Start);
}
function DeleteFadeDeleteStMacro()
{
	Wait($P待ち１);
	DeleteSt($P識別名,$P秒数１,true);
	Wait($P待ち２);
	FadeSt($P識別名,$P秒数２,true);
	Wait($P待ち３);
	DeleteSt($P識別名,$P秒数３,true);
}

....//▽消す⇒出す⇒消す⇒出す
function DeleteFadeDeleteFadeStPro($P識別名, $P秒数１, $P待ち１, $P秒数２, $P待ち２, $P秒数３, $P待ち３, $P秒数４, $P待ち４)
{
	CreateProcess("立ち絵プロセス", 150, 0, 0, "DeleteFadeDeleteFadeStMacro");
	SetAlias("立ち絵プロセス", "立ち絵プロセス");
	Request("立ち絵プロセス", Start);
}
function DeleteFadeDeleteFadeStMacro()
{
	Wait($P待ち１);
	DeleteSt($P識別名,$P秒数１,true);
	Wait($P待ち２);
	FadeSt($P識別名,$P秒数２,true);
	Wait($P待ち３);
	DeleteSt($P識別名,$P秒数３,true);
	Wait($P待ち４);
	FadeSt($P識別名,$P秒数４,true);
}



//―――――――――――――――――――――――――
...後始末用
//―――――――――――――――――――――――――

//▽最終的なものが「出す」場合の後始末
function AgainSt($P識別名, $P立画優先度, $PＸ位置, $PＹ位置, $P立像)
{
	Request("@立ち絵プロセス", Stop);
	Delete("@立ち絵プロセス");
	WaitAction("@立ち絵プロセス", null);

	//★ロック設置
	LockVideo(true);

	ByeSt($P識別名);
	St($P識別名, $P立画優先度, $PＸ位置, $PＹ位置, $P立像);
	FadeSt($P識別名,0,true);

	//★ロック設置
	LockVideo(false);
}

function AgainSt2($P識別名, $P立画優先度, $PＸ位置, $PＹ位置, $P立像, $PStパス, $PSt拡張子)
{
	Request("@立ち絵プロセス", Stop);
	Delete("@立ち絵プロセス");
	WaitAction("@立ち絵プロセス", null);

	//★ロック設置
	LockVideo(true);

	ByeSt($P識別名);
	St2($P識別名, $P立画優先度, $PＸ位置, $PＹ位置, $P立像, $PStパス, $PSt拡張子);
	FadeSt($P識別名,0,true);

	//★ロック設置
	LockVideo(false);
}

//▽最終的なものが「消す」場合の後始末
function DustSt($P識別名)
{
	Request("@立ち絵プロセス", Stop);
	Delete("@立ち絵プロセス");
	WaitAction("@立ち絵プロセス", null);

	//★ロック設置
	LockVideo(true);

	ByeSt($P識別名);

	//★ロック設置
	LockVideo(false);
}














































//=============================================================================//
..//◆プロセス
//=============================================================================//
//=============================================================================//
...口パク
//=============================================================================//
function Lip1()
{
	$LipName1=$StA[$識別名][ボイス][$StA[$識別名][ナンバー]];
	$LipNut1_0="@"+$ナット基+"/*";
	$LipNut1_1="@"+$alies_lip1;
	$LipNut1_2="@"+$alies_lip2;
	$LipNut1_n="@"+$ナット基;

begin:
	if($StFadeType==1){
		WaitFade($LipNut1_n, null);
	}else if($StFadeType==2){
		while(1){
			$koe1 = SoundAmplitude("@text*",$LipName1);
			if($koe1>=1){
				Fade($LipNut1_n, 0, 1000, null, false);
				Fade($LipNut1_0, 0, 0, null, false);
				break;
			}else{
				Wait($LipSpeed00);
			}
		}
	}

	while(1){
		$koe1 = SoundAmplitude("@text*",$LipName1);
		if($koe1>=$LipWave1){
		Fade($LipNut1_n, 0, 1000, null, false);
			Fade($LipNut1_1, $LipSpeed01, 1000, null, $LipSpeed01);Wait($LipWait01);
			Fade($LipNut1_2, $LipSpeed02, 1000, null, $LipSpeed02);Wait($LipWait02);
			Fade($LipNut1_2, $LipSpeed03, 0, null, $LipSpeed03);Wait($LipWait03);
			Fade($LipNut1_1, $LipSpeed04, 0, null, $LipSpeed04);
		}else if($koe1>=$LipWave2){
			Fade($LipNut1_1, $LipSpeed05, 1000, null, $LipSpeed05);Wait($LipWait04);
			Fade($LipNut1_1, $LipSpeed06, 0, null, $LipSpeed06);
		}else{
			Wait($LipSpeed00);
		}
	}
	Fade($LipNut1_0,0,0,null,false);
}

function Lip2()
{
	$LipName2=$StA[$識別名][ボイス][$StA[$識別名][ナンバー]];
	$LipNut2_0="@"+$ナット基+"/*";
	$LipNut2_1="@"+$alies_lip1;
	$LipNut2_2="@"+$alies_lip2;
	$LipNut2_n="@"+$ナット基;

begin:
	if($StFadeType==1){
		WaitFade($LipNut2_n, null);
	}else if($StFadeType==2){
		while(1){
			$koe2 = SoundAmplitude("@text*",$LipName2);
			if($koe2>=1){
				Fade($LipNut2_n, 0, 1000, null, false);
				Fade($LipNut2_0, 0, 0, null, false);
				break;
			}else{
				Wait($LipSpeed00);
			}
		}
	}

	while(1){
		$koe2 = SoundAmplitude("@text*",$LipName2);
		if($koe2>=$LipWave1){
			Fade($LipNut2_1, $LipSpeed01, 1000, null, $LipSpeed01);Wait($LipWait01);
			Fade($LipNut2_2, $LipSpeed02, 1000, null, $LipSpeed02);Wait($LipWait02);
			Fade($LipNut2_2, $LipSpeed03, 0, null, $LipSpeed03);Wait($LipWait03);
			Fade($LipNut2_1, $LipSpeed04, 0, null, $LipSpeed04);
		}else if($koe2>=$LipWave2){
			Fade($LipNut2_1, $LipSpeed05, 1000, null, $LipSpeed05);Wait($LipWait04);
			Fade($LipNut2_1, $LipSpeed06, 0, null, $LipSpeed06);
		}else{
			Wait($LipSpeed00);
		}
	}
	Fade($LipNut2_0,0,0,null,false);
}

function Lip3()
{
	$LipName3=$StA[$識別名][ボイス][$StA[$識別名][ナンバー]];
	$LipNut3_0="@"+$ナット基+"/*";
	$LipNut3_1="@"+$alies_lip1;
	$LipNut3_2="@"+$alies_lip2;
	$LipNut3_n="@"+$ナット基;

begin:
	if($StFadeType==1){
		WaitFade($LipNut3_n, null);
	}else if($StFadeType==2){
		while(1){
			$koe3 = SoundAmplitude("@text*",$LipName3);
			if($koe3>=1){
				Fade($LipNut3_n, 0, 1000, null, false);
				Fade($LipNut3_0, 0, 0, null, false);
				break;
			}else{
				Wait($LipSpeed00);
			}
		}
	}

	while(1){
		$koe3 = SoundAmplitude("@text*",$LipName3);
		if($koe3>=$LipWave1){
			Fade($LipNut3_1, $LipSpeed01, 1000, null, $LipSpeed01);Wait($LipWait01);
			Fade($LipNut3_2, $LipSpeed02, 1000, null, $LipSpeed02);Wait($LipWait02);
			Fade($LipNut3_2, $LipSpeed03, 0, null, $LipSpeed03);Wait($LipWait03);
			Fade($LipNut3_1, $LipSpeed04, 0, null, $LipSpeed04);
		}else if($koe3>=$LipWave2){
			Fade($LipNut3_1, $LipSpeed05, 1000, null, $LipSpeed05);Wait($LipWait04);
			Fade($LipNut3_1, $LipSpeed06, 0, null, $LipSpeed06);
		}else{
			Wait($LipSpeed00);
		}
	}
	Fade($LipNut3_0,0,0,null,false);
}

function Lip4()
{
	$LipName4=$StA[$識別名][ボイス][$StA[$識別名][ナンバー]];
	$LipNut4_0="@"+$ナット基+"/*";
	$LipNut4_1="@"+$alies_lip1;
	$LipNut4_2="@"+$alies_lip2;
	$LipNut4_n="@"+$ナット基;

begin:
	if($StFadeType==1){
		WaitFade($LipNut4_n, null);
	}else if($StFadeType==2){
		while(1){
			$koe4 = SoundAmplitude("@text*",$LipName4);
			if($koe4>=1){
				Fade($LipNut4_n, 0, 1000, null, false);
				Fade($LipNut4_0, 0, 0, null, false);
				break;
			}else{
				Wait($LipSpeed00);
			}
		}
	}

	while(1){
		$koe4 = SoundAmplitude("@text*",$LipName4);
		if($koe4>=$LipWave1){
		Fade($LipNut4_n, 0, 1000, null, false);
			Fade($LipNut4_1, $LipSpeed01, 1000, null, $LipSpeed01);Wait($LipWait01);
			Fade($LipNut4_2, $LipSpeed02, 1000, null, $LipSpeed02);Wait($LipWait02);
			Fade($LipNut4_2, $LipSpeed03, 0, null, $LipSpeed03);Wait($LipWait03);
			Fade($LipNut4_1, $LipSpeed04, 0, null, $LipSpeed04);
		}else if($koe4>=$LipWave2){
			Fade($LipNut4_1, $LipSpeed05, 1000, null, $LipSpeed05);Wait($LipWait04);
			Fade($LipNut4_1, $LipSpeed06, 0, null, $LipSpeed06);
		}else{
			Wait($LipSpeed00);
		}
	}
	Fade($LipNut4_0,0,0,null,false);
}

function Lip5()
{
	$LipName5=$StA[$識別名][ボイス][$StA[$識別名][ナンバー]];
	$LipNut5_0="@"+$ナット基+"/*";
	$LipNut5_1="@"+$alies_lip1;
	$LipNut5_2="@"+$alies_lip2;
	$LipNut5_n="@"+$ナット基;

begin:
	if($StFadeType==1){
		WaitFade($LipNut5_n, null);
	}else if($StFadeType==2){
		while(1){
			$koe5 = SoundAmplitude("@text*",$LipName5);
			if($koe5>=1){
				Fade($LipNut5_n, 0, 1000, null, false);
				Fade($LipNut5_0, 0, 0, null, false);
				break;
			}else{
				Wait($LipSpeed00);
			}
		}
	}

	while(1){
		$koe5 = SoundAmplitude("@text*",$LipName5);
		if($koe5>=$LipWave1){
		Fade($LipNut5_n, 0, 1000, null, false);
			Fade($LipNut5_1, $LipSpeed01, 1000, null, $LipSpeed01);Wait($LipWait01);
			Fade($LipNut5_2, $LipSpeed02, 1000, null, $LipSpeed02);Wait($LipWait02);
			Fade($LipNut5_2, $LipSpeed03, 0, null, $LipSpeed03);Wait($LipWait03);
			Fade($LipNut5_1, $LipSpeed04, 0, null, $LipSpeed04);
		}else if($koe5>=$LipWave2){
			Fade($LipNut5_1, $LipSpeed05, 1000, null, $LipSpeed05);Wait($LipWait04);
			Fade($LipNut5_1, $LipSpeed06, 0, null, $LipSpeed06);
		}else{
			Wait($LipSpeed00);
		}
	}
	Fade($LipNut5_0,0,0,null,false);
}

function Lip6()
{
	$LipName6=$StA[$識別名][ボイス][$StA[$識別名][ナンバー]];
	$LipNut6_0="@"+$ナット基+"/*";
	$LipNut6_1="@"+$alies_lip1;
	$LipNut6_2="@"+$alies_lip2;
	$LipNut6_n="@"+$ナット基;

begin:
	if($StFadeType==1){
		WaitFade($LipNut6_n, null);
	}else if($StFadeType==2){
		while(1){
			$koe6 = SoundAmplitude("@text*",$LipName6);
			if($koe6>=1){
				Fade($LipNut6_n, 0, 1000, null, false);
				Fade($LipNut6_0, 0, 0, null, false);
				break;
			}else{
				Wait($LipSpeed00);
			}
		}
	}

	while(1){
		$koe6 = SoundAmplitude("@text*",$LipName6);
		if($koe6>=$LipWave1){
		Fade($LipNut6_n, 0, 1000, null, false);
			Fade($LipNut6_1, $LipSpeed01, 1000, null, $LipSpeed01);Wait($LipWait01);
			Fade($LipNut6_2, $LipSpeed02, 1000, null, $LipSpeed02);Wait($LipWait02);
			Fade($LipNut6_2, $LipSpeed03, 0, null, $LipSpeed03);Wait($LipWait03);
			Fade($LipNut6_1, $LipSpeed04, 0, null, $LipSpeed04);
		}else if($koe6>=$LipWave2){
			Fade($LipNut6_1, $LipSpeed05, 1000, null, $LipSpeed05);Wait($LipWait04);
			Fade($LipNut6_1, $LipSpeed06, 0, null, $LipSpeed06);
		}else{
			Wait($LipSpeed00);
		}
	}
	Fade($LipNut6_0,0,0,null,false);
}

function Lip7()
{
	$LipName7=$StA[$識別名][ボイス][$StA[$識別名][ナンバー]];
	$LipNut7_0="@"+$ナット基+"/*";
	$LipNut7_1="@"+$alies_lip1;
	$LipNut7_2="@"+$alies_lip2;
	$LipNut7_n="@"+$ナット基;

begin:
	if($StFadeType==1){
		WaitFade($LipNut7_n, null);
	}else if($StFadeType==2){
		while(1){
			$koe7 = SoundAmplitude("@text*",$LipName7);
			if($koe7>=1){
				Fade($LipNut7_n, 0, 1000, null, false);
				Fade($LipNut7_0, 0, 0, null, false);
				break;
			}else{
				Wait($LipSpeed00);
			}
		}
	}

	while(1){
		$koe7 = SoundAmplitude("@text*",$LipName7);
		if($koe7>=$LipWave1){
		Fade($LipNut7_n, 0, 1000, null, false);
			Fade($LipNut7_1, $LipSpeed01, 1000, null, $LipSpeed01);Wait($LipWait01);
			Fade($LipNut7_2, $LipSpeed02, 1000, null, $LipSpeed02);Wait($LipWait02);
			Fade($LipNut7_2, $LipSpeed03, 0, null, $LipSpeed03);Wait($LipWait03);
			Fade($LipNut7_1, $LipSpeed04, 0, null, $LipSpeed04);
		}else if($koe7>=$LipWave2){
			Fade($LipNut7_1, $LipSpeed05, 1000, null, $LipSpeed05);Wait($LipWait04);
			Fade($LipNut7_1, $LipSpeed06, 0, null, $LipSpeed06);
		}else{
			Wait($LipSpeed00);
		}
	}
	Fade($LipNut7_0,0,0,null,false);
}

function Lip8()
{
	$LipName8=$StA[$識別名][ボイス][$StA[$識別名][ナンバー]];
	$LipNut8_0="@"+$ナット基+"/*";
	$LipNut8_1="@"+$alies_lip1;
	$LipNut8_2="@"+$alies_lip2;
	$LipNut8_n="@"+$ナット基;

begin:
	if($StFadeType==1){
		WaitFade($LipNut8_n, null);
	}else if($StFadeType==2){
		while(1){
			$koe8 = SoundAmplitude("@text*",$LipName8);
			if($koe8>=1){
				Fade($LipNut8_n, 0, 1000, null, false);
				Fade($LipNut8_0, 0, 0, null, false);
				break;
			}else{
				Wait($LipSpeed00);
			}
		}
	}

	while(1){
		$koe8 = SoundAmplitude("@text*",$LipName8);
		if($koe8>=$LipWave1){
		Fade($LipNut8_n, 0, 1000, null, false);
			Fade($LipNut8_1, $LipSpeed01, 1000, null, $LipSpeed01);Wait($LipWait01);
			Fade($LipNut8_2, $LipSpeed02, 1000, null, $LipSpeed02);Wait($LipWait02);
			Fade($LipNut8_2, $LipSpeed03, 0, null, $LipSpeed03);Wait($LipWait03);
			Fade($LipNut8_1, $LipSpeed04, 0, null, $LipSpeed04);
		}else if($koe8>=$LipWave2){
			Fade($LipNut8_1, $LipSpeed05, 1000, null, $LipSpeed05);Wait($LipWait04);
			Fade($LipNut8_1, $LipSpeed06, 0, null, $LipSpeed06);
		}else{
			Wait($LipSpeed00);
		}
	}
	Fade($LipNut8_0,0,0,null,false);
}

function Lip9()
{
	$LipName9=$StA[$識別名][ボイス][$StA[$識別名][ナンバー]];
	$LipNut9_0="@"+$ナット基+"/*";
	$LipNut9_1="@"+$alies_lip1;
	$LipNut9_2="@"+$alies_lip2;
	$LipNut9_n="@"+$ナット基;

begin:
	if($StFadeType==1){
		WaitFade($LipNut9_n, null);
	}else if($StFadeType==2){
		while(1){
			$koe9 = SoundAmplitude("@text*",$LipName9);
			if($koe9>=1){
				Fade($LipNut9_n, 0, 1000, null, false);
				Fade($LipNut9_0, 0, 0, null, false);
				break;
			}else{
				Wait($LipSpeed00);
			}
		}
	}

	while(1){
		$koe9 = SoundAmplitude("@text*",$LipName9);
		if($koe9>=$LipWave1){
		Fade($LipNut9_n, 0, 1000, null, false);
			Fade($LipNut9_1, $LipSpeed01, 1000, null, $LipSpeed01);Wait($LipWait01);
			Fade($LipNut9_2, $LipSpeed02, 1000, null, $LipSpeed02);Wait($LipWait02);
			Fade($LipNut9_2, $LipSpeed03, 0, null, $LipSpeed03);Wait($LipWait03);
			Fade($LipNut9_1, $LipSpeed04, 0, null, $LipSpeed04);
		}else if($koe9>=$LipWave2){
			Fade($LipNut9_1, $LipSpeed05, 1000, null, $LipSpeed05);Wait($LipWait04);
			Fade($LipNut9_1, $LipSpeed06, 0, null, $LipSpeed06);
		}else{
			Wait($LipSpeed00);
		}
	}
	Fade($LipNut9_0,0,0,null,false);
}

function Lip10()
{
	$LipName10=$StA[$識別名][ボイス][$StA[$識別名][ナンバー]];
	$LipNut10_0="@"+$ナット基+"/*";
	$LipNut10_1="@"+$alies_lip1;
	$LipNut10_2="@"+$alies_lip2;
	$LipNut10_n="@"+$ナット基;

begin:
	if($StFadeType==1){
		WaitFade($LipNut10_n, null);
	}else if($StFadeType==2){
		while(1){
			$koe10 = SoundAmplitude("@text*",$LipName10);
			if($koe10>=1){
				Fade($LipNut10_n, 0, 1000, null, false);
				Fade($LipNut10_0, 0, 0, null, false);
				break;
			}else{
				Wait($LipSpeed00);
			}
		}
	}

	while(1){
		$koe10 = SoundAmplitude("@text*",$LipName10);
		if($koe10>=$LipWave1){
		Fade($LipNut10_n, 0, 1000, null, false);
			Fade($LipNut10_1, $LipSpeed01, 1000, null, $LipSpeed01);Wait($LipWait01);
			Fade($LipNut10_2, $LipSpeed02, 1000, null, $LipSpeed02);Wait($LipWait02);
			Fade($LipNut10_2, $LipSpeed03, 0, null, $LipSpeed03);Wait($LipWait03);
			Fade($LipNut10_1, $LipSpeed04, 0, null, $LipSpeed04);
		}else if($koe10>=$LipWave2){
			Fade($LipNut10_1, $LipSpeed05, 1000, null, $LipSpeed05);Wait($LipWait04);
			Fade($LipNut10_1, $LipSpeed06, 0, null, $LipSpeed06);
		}else{
			Wait($LipSpeed00);
		}
	}
	Fade($LipNut10_0,0,0,null,false);
}


















//=============================================================================//
..立ち絵リスト（グローバル）
//=============================================================================//
function StList()
{

}









