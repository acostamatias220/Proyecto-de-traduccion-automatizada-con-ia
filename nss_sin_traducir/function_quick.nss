$Revision: $

//=============================================================================//
//■ショートカット■
//=============================================================================//
.//◆定義
function QuickSet()
{
	//ロードファイル
	LoadFile("cg/sys/quick/飾り下.png", true);
	LoadFile("cg/sys/quick/飾り上.png", true);
	LoadFile("cg/sys/quick/ico_○.png", true);
	LoadFile("cg/sys/quick/ico_×.png", true);

	//ベース
	$QuickBaseLayer=999999;
	$QuickBaseLayer2=1000000;
	CreateTexture("QuickBase",$QuickBaseLayer,131,0,"cg/sys/quick/飾り下.png");
	SetAlias("QuickBase", "QuickBase");
	Request("QuickBase", Lock);
	CreateTexture("QuickBase2",$QuickBaseLayer2,131,0,"cg/sys/quick/飾り上.png");
	SetAlias("QuickBase2", "QuickBase2");
	Request("QuickBase2", Lock);

...	//■各種定義
	Array($QuickNutName,"Rate","Skip","Auto","Twit");
	AssocArray($QuickNutName,"Rate","Skip","Auto","Twit");

	Array($QuickNutName[Rate],204,0,true,事刻表,Start);
	Array($QuickNutName[Skip],358,0,true,スキップ,Extra);
	Array($QuickNutName[Auto],512,0,true,自動文字送り,Config);
	Array($QuickNutName[Twit],666,0,true,つぶやく,Exit);
	//Array($QuickNutName[Twit],666,0,true,文章の表示,Exit);


	//★ロック設置
	LockVideo(true);

	$WhileCount=0;
	while(Count($QuickNutName)>$WhileCount){
		if($QuickNutName[$WhileCount][2]){
			//ロード
			$QuickNutImage1="cg/sys/quick/bt_"+$QuickNutName[$WhileCount][3]+"off.png";
			$QuickNutImage2="cg/sys/quick/bt_"+$QuickNutName[$WhileCount][3]+"over.png";
			$QuickNutImage3="cg/sys/quick/bt_"+$QuickNutName[$WhileCount][3]+"on.png";
			LoadFile($QuickNutImage1, true);
			LoadFile($QuickNutImage2, true);
			LoadFile($QuickNutImage3, true);

			//選択肢
			$QuickNutBase="Quick"+$QuickNutName[$WhileCount];
			CreateChoice($QuickNutBase);
			SetAlias($QuickNutBase, $QuickNutBase);

			$QuickX=$QuickNutName[$WhileCount][0];
			$QuickY=$QuickNutName[$WhileCount][1];

			$QuickNutTemp=$QuickNutBase+"/name";
			CreateName($QuickNutTemp);
			$QuickNutTemp=$QuickNutBase+"/name/hit";
			CreateTexture($QuickNutTemp, $QuickBaseLayer, $QuickX, $QuickY, $QuickNutImage1);
			$QuickNutTemp=$QuickNutBase+"/MouseUsual/hit";
			CreateTexture($QuickNutTemp, $QuickBaseLayer, $QuickX, $QuickY, $QuickNutImage1);
			$QuickNutTemp=$QuickNutBase+"/MouseOver/nut";
			CreateTexture($QuickNutTemp, $QuickBaseLayer, $QuickX, $QuickY, $QuickNutImage2);
			$QuickNutTemp=$QuickNutBase+"/MouseClick/nut";
			CreateTexture($QuickNutTemp, $QuickBaseLayer, $QuickX, $QuickY, $QuickNutImage3);

			if($QuickNutName[$WhileCount]=="Skip"||$QuickNutName[$WhileCount]=="Auto"){
				if($QuickNutName[$WhileCount]=="Skip"){$QuickX=479;}
				else{$QuickX=629;}
				$QuickNutTemp=$QuickNutBase+"/ico_batu";
				CreateTexture($QuickNutTemp, $QuickBaseLayer, $QuickX, 8, "cg/sys/quick/ico_×.png");
				$QuickNutTemp=$QuickNutBase+"/ico_maru";
				CreateTexture($QuickNutTemp, $QuickBaseLayer, $QuickX, 8, "cg/sys/quick/ico_○.png");
			}

			//選択不可
			//$QuickNutTemp="QuickNo"+$QuickNutName[$WhileCount];
			//CreateTexture($QuickNutTemp, $QuickBaseLayer2, $QuickX, $QuickY, $QuickNutImage1);
			//SetAlias($QuickNutTemp, $QuickNutTemp);
		}
		$WhileCount++;
	}

	//準備
	Fade("Quick*", 0, 0, null, false);
	Fade("Quick*/*", 0, 0, null, false);
	Fade("Quick*/*/*", 0, 0, null, false);
	Move("Quick*", 0, @0, -105, null, false);
	Move("Quick*/*", 0, @0, -97, null, false);
	Move("Quick*/*/*", 0, @0, -105, null, false);

	Fade("Quick*", 0, 1000, null, true);
	Fade("Quick*/*/hit", 0, 1000, null, true);
	Fade("Quick*/ico_batu", 0, 1000, null, true);

	Request("Quick*/MouseUsual/hit", Erase);
	Request("QuickNo*", Erase);
	Request("Quick*", Lock);
	Request("Quick*/*", Lock);
	Request("Quick*/*/*", Lock);

	Request("Quick*", Hideable);
	Request("Quick*/*", Hideable);
	Request("Quick*/*/*", Hideable);

	//プロセス作成
	CreateProcess("quickProcess", 100, 0, 0, "QuickWhile");
	SetAlias("quickProcess", "quickProcess");
	Request("quickProcess", Lock);

	//音作成
	//CreateSound("QuickSound", SE, "sound/se/SE_sys_しおり");
	//SetAlias("QuickSound", "QuickSound");
	//Request("QuickSound", Lock);

	//★ロック解除
	LockVideo(false);

	Request("quickProcess", Start);
}


.//◆描画
function QuickWhile()
{
	Request("バグフィクス", UnLock);
	CreateColor("バグフィクス", 1, -1000, 0, 1, 1, BLACK);
	SetAlias("バグフィクス", "バグフィクス");
	Request("バグフィクス", Lock);

	$QuickSkipON_01=false;
	$QuickSkipON_02=false;
	$QuickSkipON_03=false;
	$QuickAutoON_01=false;
	$QuickAutoON_02=false;
	$QuickAutoON_03=false;

	$QuickIn=false;

	while(1){
		select{
			CursorPosition($PosX,$PosY);
			Position("@QuickBase",$BasX,$BasY);

			//スキップON/OFF
			if($SYSTEM_skip&&!$QuickSkipON_01){
				$QuickSkipON_01=true;
			}
			if($QuickSkipON_01&&!$QuickSkipON_02){
				Fade("@QuickSkip/ico_maru", 0, 1000, null, false);
				Fade("@QuickSkip/ico_batu", 0, 0, null, true);
				$QuickSkipON_02=true;
			}
			if(!$SYSTEM_skip&&$QuickSkipON_02){
				Fade("@QuickSkip/ico_batu", 0, 1000, null, false);
				Fade("@QuickSkip/ico_maru", 0, 0, null, true);
				$QuickSkipON_01=false;
				$QuickSkipON_02=false;
			}

			//オートON/OFF
			if($SYSTEM_text_auto&&!$QuickAutoON_01){
				$QuickAutoON_01=true;
			}
			if($QuickAutoON_01&&!$QuickAutoON_02){
				Fade("@QuickAuto/ico_maru", 0, 1000, null, false);
				Fade("@QuickAuto/ico_batu", 0, 0, null, true);
				$QuickAutoON_02=true;
			}
			if(!$SYSTEM_text_auto&&$QuickAutoON_02){
				Fade("@QuickAuto/ico_batu", 0, 1000, null, false);
				Fade("@QuickAuto/ico_maru", 0, 0, null, true);
				$QuickAutoON_01=false;
				$QuickAutoON_02=false;
			}


			if(!$SYSTEM_text_erase&&$QuickMoveLock){
				$SYSTEM_text_waitkey=true;
				$QuickMoveLock=false;
			}

			if(!$QuickMoveLock){
				if($SYSTEM_text_erase){
					$QuickMoveLock=true;
					$QuickMoveOut=true;
					break;
				}

				if($PosY<105&&!$QuickIn){
					$SYSTEM_text_waitkey=false;
					$QuickMoveIn=true;
					break;
				}else if($PosY>=105&&$QuickIn){
					$SYSTEM_text_waitkey=true;
					$QuickMoveOut=true;
					break;
				}
			}

			if(!$SYSTEM_save_lock&&$今回無し){
				case @QuickSave{
					Fade("@Quick*/MouseClick/img", 100, 0, null, true);
					if(!$SYSTEM_save_lock){
						//ロードした際に音が鳴らないようにしている１
						#QuickSound=true;

						//アイコンを抹消するコマンド
						$SYSTEM_text_icon_disable=false;
						$SYSTEM_mousewheel_up=false;
						$SYSTEM_mousewheel_down=false;

						$PLAY_TIME+=(Time()-#START_TIME);
						#START_TIME=Time();
						Save(9998);

						//ロードした際に音が鳴らないようにしている２
						if(#QuickSound){
							Request("@QuickSound", Stop);
							SetVolume("@QuickSound", 0, 1000, NULL);
							Request("@QuickSound", Play);
						}
						#QuickSound=false;
					}
				}
			}
			if(ExistSave(9998)&&!$SYSTEM_load_lock&&$今回無し){
				case @QuickLoad{
					if(!$SYSTEM_load_lock){
						//アイコンを抹消するコマンド
						$SYSTEM_text_icon_disable=true;

						CreateColor("BLACK",1112000,1024,0,1024,576,BLACK);
						Fade("BLACK", 0, 0, null, true);
						Move("BLACK", 0, 0, 0, null, true);
						Fade("BLACK", 300, 1000, null, true);

						$SYSTEM_menu_enable=false;
						$SYSTEM_menu_load_enable=false;
						DeleteSaveFile(9999);
				
						#InitCV=false;
						#PreSaveFlag=false;
						#START_TIME=Time();
						Save(0);
						Load(9998);
					}
				}
			}
			if(!$SYSTEM_backselect_lock){
				case @QuickRate{
					KickShortcut("J");
				}
			}
			if(!$SYSTEM_skip_lock){
				case @QuickSkip{
					if(!$SYSTEM_skip_lock){
						$SYSTEM_skip=!$SYSTEM_skip;
					}
				}
			}
			if(!$SYSTEM_text_auto_lock){
				case @QuickAuto{
					if(!$SYSTEM_text_auto_lock){
						$SYSTEM_text_auto=!$SYSTEM_text_auto;
					}
				}
			}
			if(!$SYSTEM_twitter_lock){
				case @QuickTwit{
					//■文章作成
					if($SYSTEM_last_text==0){$LOCAL_last_text=" ";}
					else{$LOCAL_last_text=$SYSTEM_last_text;}
				
					if($GameCircle){
						if($NowOclock!=0){
							$TwiterTime1=String("%02d",Integer($Oclock_half/100));
							$TwiterTime2=String("%02d",Integer($Oclock_half%100));
					
							$最初の文字=Substr($LOCAL_last_text,1,1);
							if($最初の文字=="「"||$最初の文字=="（"||$最初の文字=="『"){
								if(Strlen(Twitter_Person())==0){
									$SYSTEM_twitter_message=" "+$TwitterZone+$TwiterTime1+":"+$TwiterTime2+" #axlnitro";
								}else{
									$SYSTEM_twitter_message=$LOCAL_last_text+" "+Twitter_Person()+" "+$TwitterZone+$TwiterTime1+":"+$TwiterTime2+" #axlnitro";
								}
							}else{
								if($LOCAL_last_text==" "){
									$SYSTEM_twitter_message=" "+$TwitterZone+$TwiterTime1+":"+$TwiterTime2+" #axlnitro";
								}else{
									$SYSTEM_twitter_message=$LOCAL_last_text+" "+$TwitterZone+$TwiterTime1+":"+$TwiterTime2+" #axlnitro";
								}
							}
						}else{
							$最初の文字=Substr($LOCAL_last_text,1,1);
							if($最初の文字=="「"||$最初の文字=="（"||$最初の文字=="『"){
								if(Strlen(Twitter_Person())==0){
									$SYSTEM_twitter_message=" #axlnitro";
								}else{
									$SYSTEM_twitter_message=$LOCAL_last_text+" "+Twitter_Person()+" #axlnitro";
								}
							}else{
								if($LOCAL_last_text==" "){
									$SYSTEM_twitter_message=" #axlnitro";
								}else{
									$SYSTEM_twitter_message=$LOCAL_last_text+" #axlnitro";
								}
							}
						}
					}else{
						if($LOCAL_last_text==" "){
							$SYSTEM_twitter_message=" #axlnitro";
						}else{
							$SYSTEM_twitter_message=$LOCAL_last_text+" #axlnitro";
						}
					}

					//twiiter
					//▼アカウント判別
					if(Twitter_CheckAcount()==0){
						//アカウント設定済み
						//▼呟き画面表示へ
						TwitterOn();
					}else{
						//アカウント未設定
						//▼アカウント入力画面表示
						if(Twitter_InputAcount()){
							//アカウント設定「ＯＫ」
							//▼アカウントTwitterへチェック。
							if(Twitter_SetAcount()<0){
								//確認エラー
								Message("エラー","Twitterアカウントを確認できませんでした。",OK,STOP);
							}else{
								//確認ＯＫ：レジストリに追加
								//▼呟き画面表示へ
								TwitterOn();
							}
						}else{
							//アカウント設定「キャンセル」

						}
					}
				}
			}
			if(!$SYSTEM_text_erase_lock&&$今回無し){
				case @QuickMess{
					if(!$SYSTEM_text_erase_lock){
						$SYSTEM_text_erase=!$SYSTEM_text_erase;
					}
				}
			}
		}


		if($SYSTEM_save_lock){
			Request("@QuickSave",UnClickable);
			//Request("@QuickNoSave", Enter);
		}else{
			Request("@QuickSave",Clickable);
			//Request("@QuickNoSave", Erase);
		}

		if(!ExistSave(9998)||$SYSTEM_load_lock){
			Request("@QuickLoad",UnClickable);
			//Request("@QuickNoLoad", Enter);
		}else{
			Request("@QuickLoad",Clickable);
			//Request("@QuickNoLoad", Erase);
		}

		if($SYSTEM_backselect_lock){
			Request("@QuickRate",UnClickable);
			//Request("@QuickNoRate", Enter);
		}else{
			Request("@QuickRate",Clickable);
			//Request("@QuickNoRate", Erase);
		}

		if($SYSTEM_skip_lock){
			Request("@QuickSkip",UnClickable);
			//Request("@QuickNoSkip", Enter);
		}else{
			Request("@QuickSkip",Clickable);
			//Request("@QuickNoSkip", Erase);
		}

		if($SYSTEM_text_auto_lock){
			Request("@QuickAuto",UnClickable);
			//Request("@QuickNoAuto", Enter);
		}else{
			Request("@QuickAuto",Clickable);
			//Request("@QuickNoAuto", Erase);
		}

		if($SYSTEM_twitter_lock){
			Request("@QuickTwit",UnClickable);
			//Request("@QuickNoTwit", Enter);
		}else{
			Request("@QuickTwit",Clickable);
			//Request("@QuickNoTwit", Erase);
		}

		if($SYSTEM_text_erase_lock){
			Request("@QuickMess",UnClickable);
			//Request("@QuickNoMess", Enter);
		}else{
			Request("@QuickMess",Clickable);
			//Request("@QuickNoMess", Erase);
		}

		if($QuickMoveIn){
			$QuickIn=true;
			//Fade("@Quick*/*/*", 100, 0, null, false);
			//Fade("@Quick*/*/hit", 100, 1000, null, false);
			if($OclockPass_in){Fade("@OclockBase/*", 200, 0, null, false);}//時計消去

			Move("@QuickBase", 200, @0, 0, Dxl2, false);
			Move("@QuickBase2", 200, @0, 0, Dxl2, false);
			Move("@Quick*/*", 200, @0, 8, Dxl2, false);
			Move("@Quick*/*/*", 200, @0, 0, Dxl2, true);
		}else if($QuickMoveOut){
			$QuickIn=false;
			if($OclockPass_in){Fade("@OclockBase/*", 200, 1000, null, false);}//時計消去

			Move("@QuickBase", 200, @0, -105, Dxl2, false);
			Move("@QuickBase2", 200, @0, -105, Dxl2, false);
			Move("@Quick*/*", 200, @0, -97, Dxl2, false);
			Move("@Quick*/*/*", 200, @0, -105, Dxl2, true);

			Fade("@Quick*/*/*", 0, 0, null, false);
			Fade("@Quick*/*/hit", 0, 1000, null, true);
		}

		$QuickMoveIn=false;
		$QuickMoveOut=false;
	}
}


function QuickDelete()
{
	Request("@quickProcess", Stop);
	WaitAction("@quickProcess", null);

//	Fade("@QuickSkip/*/*", 300, 0, null, false);
//	Fade("@QuickSave/*/*", 300, 0, null, false);
//	Fade("@QuickLoad/*/*", 300, 0, null, false);
//	Fade("@QuickMess/*/*", 300, 0, null, false);
	Fade("@Quick*/*/*", 300, 0, null, false);
	Fade("@Quick*/*", 300, 0, null, false);
	Fade("@Quick*", 300, 0, null, true);

	Request("@quick*", UnLock);
	Delete("@quick*");
	Request("@Quick*", UnLock);
	Delete("@Quick*");
}


function QuickStop()
{
	Request("@quickProcess", Stop);
	WaitAction("@quickProcess", null);

//	Fade("@QuickSkip/*/*", 300, 0, null, false);
//	Fade("@QuickSave/*/*", 300, 0, null, false);
//	Fade("@QuickLoad/*/*", 300, 0, null, false);
//	Fade("@QuickMess/*/*", 300, 0, null, false);
	Fade("@Quick*/*/*", 300, 0, null, false);
	Fade("@Quick*/*", 300, 0, null, false);
	Fade("@Quick*", 300, 0, null, true);
}

function QuickStart()
{
	$QuickIn=false;

	Fade("@Quick*/*", 0, 0, null, false);
	Fade("@Quick*/*/*", 0, 0, null, false);

	Move("@Quick*", 0, @0, -105, null, false);
	Move("@Quick*/*", 0, @0, -97, null, false);
	Move("@Quick*/*/*", 0, @0, -105, null, false);

	Fade("@Quick*", 0, 1000, null, true);
	Fade("@Quick*/*/hit", 0, 1000, null, true);
	Fade("@Quick*/ico_batu", 0, 1000, null, true);

	Request("@quickProcess", Start);
}

function TwitterOn()
{
	//▼呟き画面表示
	if(Twitter_InputTweet()){
		//▼入力内容を投稿
		if(!Twitter_Tweet()){
			//エラー！
			Message("呟き中エラーが発生しました。","正常に投稿ができませんでした。\nAPIが混雑している、インターネットに接続されていない、\n設定が正しくおこなわれていないなどの可能性があります。\nまた、短い間隔で同じ投稿内容は呟けません。\nパソコン環境や設定画面をご確認のうえ、改めて投稿してください。",OK,EXCLAMATION);
		}else{
			//★呟かれました！
		}
	}else{
		//キャンセル
	}
}

//コンフィグの「Twitterの設定」ボタンからコール（仮入れ→不要の場合は削除してください（千代子）
function CfgOpenTwitterSetting()
{
	CreateColor("twt色１", 15000, 0, 0, 1024, 576, #ffcccc);
	CreateText("twtテキスト１", 20000, Center, Middle, Auto, Auto, "ついったー（仮）");
	Request("twtテキスト１", NoLog);
	Request("twtテキスト１", PushText);
	WaitKey();
	Delete("twt*");
}

/*
			if(($PosX<=968&&$QuickMoveLock)||!$SYSTEM_text_erase){
				$QuickMoveLock=false;
			}

			if(!$QuickMoveLock){
				if($SYSTEM_text_erase&&$QuickIn){
					$QuickMoveLock=true;
					$QuickMoveOut=true;
					break;
				}
				if($PosX>968&&!$QuickIn){
					$SYSTEM_text_waitkey=false;
					$QuickMoveIn=true;
					break;
				}else if($PosX<=968&&$QuickIn){
					$SYSTEM_text_waitkey=true;
					$QuickMoveOut=true;
					break;
				}
			}

*/