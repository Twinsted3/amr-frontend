TEXT CAS-Backend/config.InitConfig(SB) D:/CodeEnv_code/cas-backend/config/config.go
  config.go:53		0x856540		493b6610		CMPQ SP, 0x10(R14)					
  config.go:53		0x856544		0f8685020000		JBE 0x8567cf						
  config.go:53		0x85654a		55			PUSHQ BP						
  config.go:53		0x85654b		4889e5			MOVQ SP, BP						
  config.go:53		0x85654e		4883ec58		SUBQ $.file+11(SB), SP					
  config.go:54		0x856552		e849a4ffff		CALL github.com/spf13/viper.New(SB)			
  config.go:54		0x856557		4889442438		MOVQ AX, 0x38(SP)					
  config.go:55		0x85655c		488d1d5e8d9100		LEAQ go:string.*+28089(SB), BX				
  config.go:55		0x856563		b906000000		MOVL $__major_os_version__(SB), CX			
  config.go:55		0x856568		e8f3f7ffff		CALL github.com/spf13/viper.(*Viper).SetConfigName(SB)	
  config.go:56		0x85656d		90			NOPL							
  viper.go:1983		0x85656e		488b442438		MOVQ 0x38(SP), AX					
  viper.go:1983		0x856573		48c7808800000004000000	MOVQ $__subsystem__+1(SB), 0x88(AX)			
  viper.go:1983		0x85657e		833dcb75d00200		CMPL runtime.writeBarrier(SB), $0x0			
  viper.go:1983		0x856585		740f			JE 0x856596						
  viper.go:1983		0x856587		488b8880000000		MOVQ 0x80(AX), CX					
  viper.go:1983		0x85658e		e88d1ec2ff		CALL runtime.gcWriteBarrier1(SB)			
  viper.go:1983		0x856593		49890b			MOVQ CX, 0(R11)						
  viper.go:1983		0x856596		488d0db72f9100		LEAQ go:string.*+4172(SB), CX				
  viper.go:1983		0x85659d		48898880000000		MOVQ CX, 0x80(AX)					
  config.go:58		0x8565a4		e837020000		CALL CAS-Backend/config.configSearchPaths(SB)		
  config.go:59		0x8565a9		eb2c			JMP 0x8565d7						
  config.go:59		0x8565ab		48895c2430		MOVQ BX, 0x30(SP)					
  config.go:59		0x8565b0		4889442440		MOVQ AX, 0x40(SP)					
  config.go:59		0x8565b5		488b18			MOVQ 0(AX), BX						
  config.go:59		0x8565b8		488b4808		MOVQ 0x8(AX), CX					
  config.go:60		0x8565bc		488b442438		MOVQ 0x38(SP), AX					
  config.go:60		0x8565c1		e81aa8ffff		CALL github.com/spf13/viper.(*Viper).AddConfigPath(SB)	
  config.go:59		0x8565c6		488b442440		MOVQ 0x40(SP), AX					
  config.go:59		0x8565cb		4883c010		ADDQ $__major_os_version__+10(SB), AX			
  config.go:59		0x8565cf		488b5c2430		MOVQ 0x30(SP), BX					
  config.go:59		0x8565d4		48ffcb			DECQ BX							
  config.go:59		0x8565d7		4885db			TESTQ BX, BX						
  config.go:59		0x8565da		7fcf			JG 0x8565ab						
  config.go:63		0x8565dc		488b442438		MOVQ 0x38(SP), AX					
  config.go:63		0x8565e1		e8dae2ffff		CALL github.com/spf13/viper.(*Viper).ReadInConfig(SB)	
  config.go:63		0x8565e6		4885c0			TESTQ AX, AX						
  config.go:63		0x8565e9		7411			JE 0x8565fc						
  config.go:64		0x8565eb		440f117c2448		MOVUPS X15, 0x48(SP)					
  config.go:64		0x8565f1		0f859c010000		JNE 0x856793						
  config.go:64		0x8565f7		e99b010000		JMP 0x856797						
  viper.go:449		0x8565fc		488b4c2438		MOVQ 0x38(SP), CX					
  viper.go:449		0x856601		488b4170		MOVQ 0x70(CX), AX					
  viper.go:449		0x856605		488b5978		MOVQ 0x78(CX), BX					
  config.go:67		0x856609		90			NOPL							
  config.go:67		0x85660a		90			NOPL							
  path.go:162		0x85660b		e8f0e0c8ff		CALL path/filepath.abs(SB)				
  config.go:68		0x856610		4885c9			TESTQ CX, CX						
  config.go:68		0x856613		7416			JE 0x85662b						
  config.go:69		0x856615		440f117c2448		MOVUPS X15, 0x48(SP)					
  config.go:69		0x85661b		0f1f440000		NOPL 0(AX)(AX*1)					
  config.go:69		0x856620		0f8530010000		JNE 0x856756						
  config.go:69		0x856626		e92f010000		JMP 0x85675a						
  config.go:72		0x85662b		90			NOPL							
  path.go:466		0x85662c		e86f54c6ff		CALL internal/filepathlite.Dir(SB)			
  config.go:72		0x856631		90			NOPL							
  path.go:466		0x856632		e86954c6ff		CALL internal/filepathlite.Dir(SB)			
  config.go:73		0x856637		e8c410c9ff		CALL CAS-Backend/pkg/appdir.SetRoot(SB)			
  config.go:73		0x85663c		0f1f4000		NOPL 0(AX)						
  config.go:73		0x856640		4885c0			TESTQ AX, AX						
  config.go:73		0x856643		7411			JE 0x856656						
  config.go:74		0x856645		440f117c2448		MOVUPS X15, 0x48(SP)					
  config.go:74		0x85664b		0f85cb000000		JNE 0x85671c						
  config.go:74		0x856651		e9ca000000		JMP 0x856720						
  config.go:77		0x856656		488b442438		MOVQ 0x38(SP), AX					
  config.go:77		0x85665b		488d1dbed57c00		LEAQ runtime.types+257056(SB), BX			
  config.go:77		0x856662		488d0db7fdcb02		LEAQ CAS-Backend/config.Cfg(SB), CX			
  config.go:77		0x856669		31ff			XORL DI, DI						
  config.go:77		0x85666b		31f6			XORL SI, SI						
  config.go:77		0x85666d		4989f0			MOVQ SI, R8						
  config.go:77		0x856670		e86bbdffff		CALL github.com/spf13/viper.(*Viper).Unmarshal(SB)	
  config.go:77		0x856675		4885c0			TESTQ AX, AX						
  config.go:77		0x856678		755f			JNE 0x8566d9						
  config.go:81		0x85667a		488b1d4ffecb02		MOVQ CAS-Backend/config.Cfg+176(SB), BX			
  config.go:81		0x856681		4885db			TESTQ BX, BX						
  config.go:81		0x856684		744d			JE 0x8566d3						
  config.go:81		0x856686		488b053bfecb02		MOVQ CAS-Backend/config.Cfg+168(SB), AX			
  path.go:153		0x85668d		e8ce5ac6ff		CALL internal/filepathlite.IsAbs(SB)			
  path.go:153		0x856692		84c0			TESTL AL, AL						
  config.go:81		0x856694		753d			JNE 0x8566d3						
  config.go:82		0x856696		488b052bfecb02		MOVQ CAS-Backend/config.Cfg+168(SB), AX			
  config.go:82		0x85669d		488b1d2cfecb02		MOVQ CAS-Backend/config.Cfg+176(SB), BX			
  config.go:82		0x8566a4		e83711c9ff		CALL CAS-Backend/pkg/appdir.Resolve(SB)			
  config.go:82		0x8566a9		48891d20fecb02		MOVQ BX, CAS-Backend/config.Cfg+176(SB)			
  config.go:82		0x8566b0		833d9974d00200		CMPL runtime.writeBarrier(SB), $0x0			
  config.go:82		0x8566b7		7413			JE 0x8566cc						
  config.go:82		0x8566b9		e8821dc2ff		CALL runtime.gcWriteBarrier2(SB)			
  config.go:82		0x8566be		498903			MOVQ AX, 0(R11)						
  config.go:82		0x8566c1		488b0d00fecb02		MOVQ CAS-Backend/config.Cfg+168(SB), CX			
  config.go:82		0x8566c8		49894b08		MOVQ CX, 0x8(R11)					
  config.go:82		0x8566cc		488905f5fdcb02		MOVQ AX, CAS-Backend/config.Cfg+168(SB)			
  config.go:84		0x8566d3		4883c458		ADDQ $.file+11(SB), SP					
  config.go:84		0x8566d7		5d			POPQ BP							
  config.go:84		0x8566d8		c3			RET							
  config.go:78		0x8566d9		440f117c2448		MOVUPS X15, 0x48(SP)					
  config.go:78		0x8566df		90			NOPL							
  config.go:78		0x8566e0		7404			JE 0x8566e6						
  config.go:78		0x8566e2		488b4008		MOVQ 0x8(AX), AX					
  config.go:78		0x8566e6		4889442448		MOVQ AX, 0x48(SP)					
  config.go:78		0x8566eb		48895c2450		MOVQ BX, 0x50(SP)					
  config.go:78		0x8566f0		488d054d279300		LEAQ go:string.*+133436(SB), AX				
  config.go:78		0x8566f7		bb1c000000		MOVL $__major_os_version__+22(SB), BX			
  config.go:78		0x8566fc		488d4c2448		LEAQ 0x48(SP), CX					
  config.go:78		0x856701		bf01000000		MOVL $__minor_os_version__(SB), DI			
  config.go:78		0x856706		4889fe			MOVQ DI, SI						
  config.go:78		0x856709		e8b25cccff		CALL fmt.Errorf(SB)					
  config.go:78		0x85670e		4885c0			TESTQ AX, AX						
  config.go:78		0x856711		7404			JE 0x856717						
  config.go:78		0x856713		488b4008		MOVQ 0x8(AX), AX					
  config.go:78		0x856717		e80494c1ff		CALL runtime.gopanic(SB)				
  config.go:74		0x85671c		488b4008		MOVQ 0x8(AX), AX					
  config.go:74		0x856720		4889442448		MOVQ AX, 0x48(SP)					
  config.go:74		0x856725		48895c2450		MOVQ BX, 0x50(SP)					
  config.go:74		0x85672a		488d05fa609300		LEAQ go:string.*+148259(SB), AX				
  config.go:74		0x856731		bb1f000000		MOVL $__major_os_version__+25(SB), BX			
  config.go:74		0x856736		488d4c2448		LEAQ 0x48(SP), CX					
  config.go:74		0x85673b		bf01000000		MOVL $__minor_os_version__(SB), DI			
  config.go:74		0x856740		4889fe			MOVQ DI, SI						
  config.go:74		0x856743		e8785cccff		CALL fmt.Errorf(SB)					
  config.go:74		0x856748		4885c0			TESTQ AX, AX						
  config.go:74		0x85674b		7404			JE 0x856751						
  config.go:74		0x85674d		488b4008		MOVQ 0x8(AX), AX					
  config.go:74		0x856751		e8ca93c1ff		CALL runtime.gopanic(SB)				
  config.go:69		0x856756		488b4908		MOVQ 0x8(CX), CX					
  config.go:69		0x85675a		48894c2448		MOVQ CX, 0x48(SP)					
  config.go:69		0x85675f		48897c2450		MOVQ DI, 0x50(SP)					
  config.go:69		0x856764		488d05e8939300		LEAQ go:string.*+161355(SB), AX				
  config.go:69		0x85676b		bb22000000		MOVL $__major_os_version__+28(SB), BX			
  config.go:69		0x856770		488d4c2448		LEAQ 0x48(SP), CX					
  config.go:69		0x856775		bf01000000		MOVL $__minor_os_version__(SB), DI			
  config.go:69		0x85677a		4889fe			MOVQ DI, SI						
  config.go:69		0x85677d		0f1f00			NOPL 0(AX)						
  config.go:69		0x856780		e83b5cccff		CALL fmt.Errorf(SB)					
  config.go:69		0x856785		4885c0			TESTQ AX, AX						
  config.go:69		0x856788		7404			JE 0x85678e						
  config.go:69		0x85678a		488b4008		MOVQ 0x8(AX), AX					
  config.go:69		0x85678e		e88d93c1ff		CALL runtime.gopanic(SB)				
  config.go:64		0x856793		488b4008		MOVQ 0x8(AX), AX					
  config.go:64		0x856797		4889442448		MOVQ AX, 0x48(SP)					
  config.go:64		0x85679c		48895c2450		MOVQ BX, 0x50(SP)					
  config.go:64		0x8567a1		488d05c03d9500		LEAQ go:string.*+270432(SB), AX				
  config.go:64		0x8567a8		bb65000000		MOVL $.file+24(SB), BX					
  config.go:64		0x8567ad		488d4c2448		LEAQ 0x48(SP), CX					
  config.go:64		0x8567b2		bf01000000		MOVL $__minor_os_version__(SB), DI			
  config.go:64		0x8567b7		4889fe			MOVQ DI, SI						
  config.go:64		0x8567ba		e8015cccff		CALL fmt.Errorf(SB)					
  config.go:64		0x8567bf		90			NOPL							
  config.go:64		0x8567c0		4885c0			TESTQ AX, AX						
  config.go:64		0x8567c3		7404			JE 0x8567c9						
  config.go:64		0x8567c5		488b4008		MOVQ 0x8(AX), AX					
  config.go:64		0x8567c9		e85293c1ff		CALL runtime.gopanic(SB)				
  config.go:64		0x8567ce		90			NOPL							
  config.go:53		0x8567cf		e80cfdc1ff		CALL runtime.morestack_noctxt.abi0(SB)			
  config.go:53		0x8567d4		e967fdffff		JMP CAS-Backend/config.InitConfig(SB)			
  :-1			0x8567d9		cc			INT $__subsystem__(SB)					
  :-1			0x8567da		cc			INT $__subsystem__(SB)					
  :-1			0x8567db		cc			INT $__subsystem__(SB)					
  :-1			0x8567dc		cc			INT $__subsystem__(SB)					
  :-1			0x8567dd		cc			INT $__subsystem__(SB)					
  :-1			0x8567de		cc			INT $__subsystem__(SB)					
  :-1			0x8567df		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/config.configSearchPaths(SB) D:/CodeEnv_code/cas-backend/config/config.go
  config.go:87		0x8567e0		4c8da42468ffffff		LEAQ 0xffffff68(SP), R12			
  config.go:87		0x8567e8		4d3b6610			CMPQ R12, 0x10(R14)				
  config.go:87		0x8567ec		0f86ea020000			JBE 0x856adc					
  config.go:87		0x8567f2		55				PUSHQ BP					
  config.go:87		0x8567f3		4889e5				MOVQ SP, BP					
  config.go:87		0x8567f6		4881ec10010000			SUBQ $.file+195(SB), SP				
  config.go:89		0x8567fd		488b15f4cfcb02			MOVQ CAS-Backend/pkg/appdir.exeDir+8(SB), DX	
  config.go:89		0x856804		4885d2				TESTQ DX, DX					
  config.go:89		0x856807		750b				JNE 0x856814					
  config.go:89		0x856809		31c9				XORL CX, CX					
  config.go:89		0x85680b		31c0				XORL AX, AX					
  config.go:89		0x85680d		31d2				XORL DX, DX					
  config.go:89		0x85680f		e9b9000000			JMP 0x8568cd					
  config.go:89		0x856814		488b35d5cfcb02			MOVQ CAS-Backend/pkg/appdir.exeDir(SB), SI	
  config.go:90		0x85681b		440f11bc24f0000000		MOVUPS X15, 0xf0(SP)				
  config.go:90		0x856824		440f11bc2400010000		MOVUPS X15, 0x100(SP)				
  config.go:90		0x85682d		48899424f8000000		MOVQ DX, 0xf8(SP)				
  config.go:90		0x856835		4889b424f0000000		MOVQ SI, 0xf0(SP)				
  config.go:90		0x85683d		48c784240801000006000000	MOVQ $__major_os_version__(SB), 0x108(SP)	
  config.go:90		0x856849		488d15718a9100			LEAQ go:string.*+28089(SB), DX			
  config.go:90		0x856850		4889942400010000		MOVQ DX, 0x100(SP)				
  path.go:131		0x856858		488d8424f0000000		LEAQ 0xf0(SP), AX				
  path.go:131		0x856860		bb02000000			MOVL $__minor_os_version__+1(SB), BX		
  path.go:131		0x856865		4889d9				MOVQ BX, CX					
  path.go:131		0x856868		e813dfc8ff			CALL path/filepath.join(SB)			
  path.go:131		0x85686d		48895c2450			MOVQ BX, 0x50(SP)				
  path.go:131		0x856872		4889842488000000		MOVQ AX, 0x88(SP)				
  config.go:90		0x85687a		31c9				XORL CX, CX					
  config.go:90		0x85687c		bf01000000			MOVL $__minor_os_version__(SB), DI		
  config.go:90		0x856881		488d3598c07e00			LEAQ runtime.types+383264(SB), SI		
  config.go:90		0x856888		31c0				XORL AX, AX					
  config.go:90		0x85688a		4889fb				MOVQ DI, BX					
  config.go:90		0x85688d		e8aeb3c1ff			CALL runtime.growslice(SB)			
  config.go:90		0x856892		488b542450			MOVQ 0x50(SP), DX				
  config.go:90		0x856897		48895008			MOVQ DX, 0x8(AX)				
  config.go:90		0x85689b		833dae72d00200			CMPL runtime.writeBarrier(SB), $0x0		
  config.go:90		0x8568a2		750a				JNE 0x8568ae					
  config.go:90		0x8568a4		488b942488000000		MOVQ 0x88(SP), DX				
  config.go:90		0x8568ac		eb17				JMP 0x8568c5					
  config.go:90		0x8568ae		e88d1bc2ff			CALL runtime.gcWriteBarrier2(SB)		
  config.go:90		0x8568b3		488b942488000000		MOVQ 0x88(SP), DX				
  config.go:90		0x8568bb		498913				MOVQ DX, 0(R11)					
  config.go:90		0x8568be		488b18				MOVQ 0(AX), BX					
  config.go:90		0x8568c1		49895b08			MOVQ BX, 0x8(R11)				
  config.go:90		0x8568c5		488910				MOVQ DX, 0(AX)					
  config.go:90		0x8568c8		ba01000000			MOVL $__minor_os_version__(SB), DX		
  config.go:93		0x8568cd		48894c2460			MOVQ CX, 0x60(SP)				
  config.go:93		0x8568d2		4889542458			MOVQ DX, 0x58(SP)				
  config.go:93		0x8568d7		4889842490000000		MOVQ AX, 0x90(SP)				
  getwd.go:24		0x8568df		90				NOPL						
  getwd.go:24		0x8568e0		e83bb5c3ff			CALL syscall.Getwd(SB)				
  config.go:92		0x8568e5		4885c9				TESTQ CX, CX					
  config.go:92		0x8568e8		741b				JE 0x856905					
  config.go:98		0x8568ea		488b4c2460			MOVQ 0x60(SP), CX				
  config.go:98		0x8568ef		488b542458			MOVQ 0x58(SP), DX				
  config.go:98		0x8568f4		488bb42490000000		MOVQ 0x90(SP), SI				
  config.go:98		0x8568fc		0f1f4000			NOPL 0(AX)					
  config.go:92		0x856900		e9c8010000			JMP 0x856acd					
  config.go:92		0x856905		4885db				TESTQ BX, BX					
  config.go:92		0x856908		751b				JNE 0x856925					
  config.go:98		0x85690a		488b4c2460			MOVQ 0x60(SP), CX				
  config.go:98		0x85690f		488b542458			MOVQ 0x58(SP), DX				
  config.go:98		0x856914		488bb42490000000		MOVQ 0x90(SP), SI				
  config.go:98		0x85691c		0f1f4000			NOPL 0(AX)					
  config.go:92		0x856920		e9a8010000			JMP 0x856acd					
  getwd.go:24		0x856925		48895c2468			MOVQ BX, 0x68(SP)				
  getwd.go:24		0x85692a		4889842498000000		MOVQ AX, 0x98(SP)				
  config.go:93		0x856932		488b542458			MOVQ 0x58(SP), DX				
  config.go:93		0x856937		4883c202			ADDQ $__minor_os_version__+1(SB), DX		
  config.go:93		0x85693b		4889542470			MOVQ DX, 0x70(SP)				
  config.go:94		0x856940		440f11bc24d0000000		MOVUPS X15, 0xd0(SP)				
  config.go:94		0x856949		440f11bc24e0000000		MOVUPS X15, 0xe0(SP)				
  config.go:94		0x856952		48899c24d8000000		MOVQ BX, 0xd8(SP)				
  config.go:94		0x85695a		48898424d0000000		MOVQ AX, 0xd0(SP)				
  config.go:94		0x856962		48c78424e800000006000000	MOVQ $__major_os_version__(SB), 0xe8(SP)	
  config.go:94		0x85696e		488d354c899100			LEAQ go:string.*+28089(SB), SI			
  config.go:94		0x856975		4889b424e0000000		MOVQ SI, 0xe0(SP)				
  path.go:131		0x85697d		b902000000			MOVL $__minor_os_version__+1(SB), CX		
  path.go:131		0x856982		488d8424d0000000		LEAQ 0xd0(SP), AX				
  path.go:131		0x85698a		4889cb				MOVQ CX, BX					
  path.go:131		0x85698d		e8eeddc8ff			CALL path/filepath.join(SB)			
  path.go:131		0x856992		4889842480000000		MOVQ AX, 0x80(SP)				
  path.go:131		0x85699a		48895c2448			MOVQ BX, 0x48(SP)				
  config.go:95		0x85699f		440f11bc24a0000000		MOVUPS X15, 0xa0(SP)				
  config.go:95		0x8569a8		440f11bc24b0000000		MOVUPS X15, 0xb0(SP)				
  config.go:95		0x8569b1		440f11bc24c0000000		MOVUPS X15, 0xc0(SP)				
  config.go:95		0x8569ba		488b542468			MOVQ 0x68(SP), DX				
  config.go:95		0x8569bf		48899424a8000000		MOVQ DX, 0xa8(SP)				
  config.go:95		0x8569c7		488b942498000000		MOVQ 0x98(SP), DX				
  config.go:95		0x8569cf		48899424a0000000		MOVQ DX, 0xa0(SP)				
  config.go:95		0x8569d7		48c78424b800000002000000	MOVQ $__minor_os_version__+1(SB), 0xb8(SP)	
  config.go:95		0x8569e3		488d152c1b9100			LEAQ go:string.*+14(SB), DX			
  config.go:95		0x8569ea		48899424b0000000		MOVQ DX, 0xb0(SP)				
  config.go:95		0x8569f2		48c78424c800000006000000	MOVQ $__major_os_version__(SB), 0xc8(SP)	
  config.go:95		0x8569fe		488d15bc889100			LEAQ go:string.*+28089(SB), DX			
  config.go:95		0x856a05		48899424c0000000		MOVQ DX, 0xc0(SP)				
  path.go:131		0x856a0d		b903000000			MOVL $__subsystem__(SB), CX			
  path.go:131		0x856a12		488d8424a0000000		LEAQ 0xa0(SP), AX				
  path.go:131		0x856a1a		4889cb				MOVQ CX, BX					
  path.go:131		0x856a1d		0f1f00				NOPL 0(AX)					
  path.go:131		0x856a20		e85bddc8ff			CALL path/filepath.join(SB)			
  config.go:93		0x856a25		488b4c2460			MOVQ 0x60(SP), CX				
  config.go:93		0x856a2a		488b542470			MOVQ 0x70(SP), DX				
  config.go:93		0x856a2f		4839d1				CMPQ CX, DX					
  config.go:95		0x856a32		720a				JB 0x856a3e					
  config.go:93		0x856a34		488bb42490000000		MOVQ 0x90(SP), SI				
  config.go:95		0x856a3c		eb37				JMP 0x856a75					
  path.go:131		0x856a3e		48895c2440			MOVQ BX, 0x40(SP)				
  path.go:131		0x856a43		4889442478			MOVQ AX, 0x78(SP)				
  config.go:93		0x856a48		488b842490000000		MOVQ 0x90(SP), AX				
  config.go:93		0x856a50		4889d3				MOVQ DX, BX					
  config.go:93		0x856a53		bf02000000			MOVL $__minor_os_version__+1(SB), DI		
  config.go:93		0x856a58		488d35c1be7e00			LEAQ runtime.types+383264(SB), SI		
  config.go:93		0x856a5f		90				NOPL						
  config.go:93		0x856a60		e8dbb1c1ff			CALL runtime.growslice(SB)			
  config.go:93		0x856a65		4889c6				MOVQ AX, SI					
  config.go:93		0x856a68		4889da				MOVQ BX, DX					
  config.go:93		0x856a6b		488b442478			MOVQ 0x78(SP), AX				
  config.go:93		0x856a70		488b5c2440			MOVQ 0x40(SP), BX				
  config.go:93		0x856a75		488d7afe			LEAQ -0x2(DX), DI				
  config.go:93		0x856a79		48c1e704			SHLQ $__subsystem__+1(SB), DI			
  config.go:93		0x856a7d		4c8b442448			MOVQ 0x48(SP), R8				
  config.go:93		0x856a82		4c89443e08			MOVQ R8, 0x8(SI)(DI*1)				
  config.go:93		0x856a87		833dc270d00200			CMPL runtime.writeBarrier(SB), $0x0		
  config.go:93		0x856a8e		750a				JNE 0x856a9a					
  config.go:93		0x856a90		4c8b842480000000		MOVQ 0x80(SP), R8				
  config.go:93		0x856a98		eb25				JMP 0x856abf					
  config.go:93		0x856a9a		e8e119c2ff			CALL runtime.gcWriteBarrier4(SB)		
  config.go:93		0x856a9f		4c8b842480000000		MOVQ 0x80(SP), R8				
  config.go:93		0x856aa7		4d8903				MOVQ R8, 0(R11)					
  config.go:93		0x856aaa		4c8b0c3e			MOVQ 0(SI)(DI*1), R9				
  config.go:93		0x856aae		4d894b08			MOVQ R9, 0x8(R11)				
  config.go:93		0x856ab2		49894310			MOVQ AX, 0x10(R11)				
  config.go:93		0x856ab6		4c8b4c3e10			MOVQ 0x10(SI)(DI*1), R9				
  config.go:93		0x856abb		4d894b18			MOVQ R9, 0x18(R11)				
  config.go:93		0x856abf		4c89043e			MOVQ R8, 0(SI)(DI*1)				
  config.go:93		0x856ac3		48895c3e18			MOVQ BX, 0x18(SI)(DI*1)				
  config.go:93		0x856ac8		4889443e10			MOVQ AX, 0x10(SI)(DI*1)				
  config.go:98		0x856acd		4889f0				MOVQ SI, AX					
  config.go:98		0x856ad0		4889d3				MOVQ DX, BX					
  config.go:98		0x856ad3		4881c410010000			ADDQ $.file+195(SB), SP				
  config.go:98		0x856ada		5d				POPQ BP						
  config.go:98		0x856adb		c3				RET						
  config.go:87		0x856adc		0f1f4000			NOPL 0(AX)					
  config.go:87		0x856ae0		e8fbf9c1ff			CALL runtime.morestack_noctxt.abi0(SB)		
  config.go:87		0x856ae5		e9f6fcffff			JMP CAS-Backend/config.configSearchPaths(SB)	
  :-1			0x856aea		cc				INT $__subsystem__(SB)				
  :-1			0x856aeb		cc				INT $__subsystem__(SB)				
  :-1			0x856aec		cc				INT $__subsystem__(SB)				
  :-1			0x856aed		cc				INT $__subsystem__(SB)				
  :-1			0x856aee		cc				INT $__subsystem__(SB)				
  :-1			0x856aef		cc				INT $__subsystem__(SB)				
  :-1			0x856af0		cc				INT $__subsystem__(SB)				
  :-1			0x856af1		cc				INT $__subsystem__(SB)				
  :-1			0x856af2		cc				INT $__subsystem__(SB)				
  :-1			0x856af3		cc				INT $__subsystem__(SB)				
  :-1			0x856af4		cc				INT $__subsystem__(SB)				
  :-1			0x856af5		cc				INT $__subsystem__(SB)				
  :-1			0x856af6		cc				INT $__subsystem__(SB)				
  :-1			0x856af7		cc				INT $__subsystem__(SB)				
  :-1			0x856af8		cc				INT $__subsystem__(SB)				
  :-1			0x856af9		cc				INT $__subsystem__(SB)				
  :-1			0x856afa		cc				INT $__subsystem__(SB)				
  :-1			0x856afb		cc				INT $__subsystem__(SB)				
  :-1			0x856afc		cc				INT $__subsystem__(SB)				
  :-1			0x856afd		cc				INT $__subsystem__(SB)				
  :-1			0x856afe		cc				INT $__subsystem__(SB)				
  :-1			0x856aff		cc				INT $__subsystem__(SB)				

