TEXT CAS-Backend/pkg/agvcontrol.(*AGVClient).dialLocked(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/agv.go
  agv.go:140		0xe121c0		493b6610		CMPQ SP, 0x10(R14)						
  agv.go:140		0xe121c4		0f864c010000		JBE 0xe12316							
  agv.go:140		0xe121ca		55			PUSHQ BP							
  agv.go:140		0xe121cb		4889e5			MOVQ SP, BP							
  agv.go:140		0xe121ce		4883ec68		SUBQ $.file+27(SB), SP						
  agv.go:143		0xe121d2		4889442478		MOVQ AX, 0x78(SP)						
  agv.go:141		0xe121d7		440f117c2448		MOVUPS X15, 0x48(SP)						
  agv.go:141		0xe121dd		440f117c2458		MOVUPS X15, 0x58(SP)						
  agv.go:141		0xe121e3		488b4818		MOVQ 0x18(AX), CX						
  agv.go:141		0xe121e7		488b5820		MOVQ 0x20(AX), BX						
  agv.go:141		0xe121eb		4889c8			MOVQ CX, AX							
  agv.go:141		0xe121ee		e82d7f65ff		CALL runtime.convTstring(SB)					
  agv.go:141		0xe121f3		488d0d26072300		LEAQ runtime.types+383264(SB), CX				
  agv.go:141		0xe121fa		48894c2448		MOVQ CX, 0x48(SP)						
  agv.go:141		0xe121ff		4889442450		MOVQ AX, 0x50(SP)						
  agv.go:141		0xe12204		488b4c2478		MOVQ 0x78(SP), CX						
  agv.go:141		0xe12209		488b4128		MOVQ 0x28(CX), AX						
  agv.go:141		0xe1220d		e88e7e65ff		CALL runtime.convT64(SB)					
  agv.go:141		0xe12212		488d0d47092300		LEAQ runtime.types+383840(SB), CX				
  agv.go:141		0xe12219		48894c2458		MOVQ CX, 0x58(SP)						
  agv.go:141		0xe1221e		4889442460		MOVQ AX, 0x60(SP)						
  agv.go:141		0xe12223		488d0504853500		LEAQ go:string.*+8742(SB), AX					
  agv.go:141		0xe1222a		bb05000000		MOVL $__subsystem__+2(SB), BX					
  agv.go:141		0xe1222f		488d4c2448		LEAQ 0x48(SP), CX						
  agv.go:141		0xe12234		bf02000000		MOVL $__minor_os_version__+1(SB), DI				
  agv.go:141		0xe12239		4889fe			MOVQ DI, SI							
  agv.go:141		0xe1223c		0f1f4000		NOPL 0(AX)							
  agv.go:141		0xe12240		e8fbd070ff		CALL fmt.Sprintf(SB)						
  agv.go:142		0xe12245		4889c1			MOVQ AX, CX							
  agv.go:142		0xe12248		4889df			MOVQ BX, DI							
  agv.go:142		0xe1224b		48be00f2052a01000000	MOVQ $0x12a05f200, SI						
  agv.go:142		0xe12255		488d051e693500		LEAQ go:string.*+1650(SB), AX					
  agv.go:142		0xe1225c		bb03000000		MOVL $__subsystem__(SB), BX					
  agv.go:142		0xe12261		e89afc8aff		CALL net.DialTimeout(SB)					
  agv.go:143		0xe12266		4885c9			TESTQ CX, CX							
  agv.go:143		0xe12269		743a			JE 0xe122a5							
  agv.go:144		0xe1226b		440f117c2438		MOVUPS X15, 0x38(SP)						
  agv.go:144		0xe12271		7404			JE 0xe12277							
  agv.go:144		0xe12273		488b4908		MOVQ 0x8(CX), CX						
  agv.go:144		0xe12277		48894c2438		MOVQ CX, 0x38(SP)						
  agv.go:144		0xe1227c		48897c2440		MOVQ DI, 0x40(SP)						
  agv.go:144		0xe12281		488d0519d03600		LEAQ go:string.*+93593(SB), AX					
  agv.go:144		0xe12288		bb13000000		MOVL $__major_os_version__+13(SB), BX				
  agv.go:144		0xe1228d		488d4c2438		LEAQ 0x38(SP), CX						
  agv.go:144		0xe12292		bf01000000		MOVL $__minor_os_version__(SB), DI				
  agv.go:144		0xe12297		4889fe			MOVQ DI, SI							
  agv.go:144		0xe1229a		e821a170ff		CALL fmt.Errorf(SB)						
  agv.go:144		0xe1229f		4883c468		ADDQ $.file+27(SB), SP						
  agv.go:144		0xe122a3		5d			POPQ BP								
  agv.go:144		0xe122a4		c3			RET								
  agv.go:146		0xe122a5		488d0dcc550602		LEAQ go:itab.*net.TCPConn,net.Conn(SB), CX			
  agv.go:146		0xe122ac		4839c8			CMPQ AX, CX							
  agv.go:146		0xe122af		7535			JNE 0xe122e6							
  agv.go:142		0xe122b1		4889442428		MOVQ AX, 0x28(SP)						
  agv.go:142		0xe122b6		48895c2430		MOVQ BX, 0x30(SP)						
  agv.go:147		0xe122bb		4889d8			MOVQ BX, AX							
  agv.go:147		0xe122be		bb01000000		MOVL $__minor_os_version__(SB), BX				
  agv.go:147		0xe122c3		e858e88cff		CALL net.(*TCPConn).SetKeepAlive(SB)				
  agv.go:148		0xe122c8		488b442430		MOVQ 0x30(SP), AX						
  agv.go:148		0xe122cd		48bb00ac23fc06000000	MOVQ $0x6fc23ac00, BX						
  agv.go:148		0xe122d7		e8a4e98cff		CALL net.(*TCPConn).SetKeepAlivePeriod(SB)			
  agv.go:150		0xe122dc		488b442428		MOVQ 0x28(SP), AX						
  agv.go:150		0xe122e1		488b5c2430		MOVQ 0x30(SP), BX						
  agv.go:150		0xe122e6		488b4c2478		MOVQ 0x78(SP), CX						
  agv.go:150		0xe122eb		48894108		MOVQ AX, 0x8(CX)						
  agv.go:150		0xe122ef		833d5ab8740200		CMPL runtime.writeBarrier(SB), $0x0				
  agv.go:150		0xe122f6		7410			JE 0xe12308							
  agv.go:150		0xe122f8		e8436166ff		CALL runtime.gcWriteBarrier2(SB)				
  agv.go:150		0xe122fd		49891b			MOVQ BX, 0(R11)							
  agv.go:150		0xe12300		488b5110		MOVQ 0x10(CX), DX						
  agv.go:150		0xe12304		49895308		MOVQ DX, 0x8(R11)						
  agv.go:150		0xe12308		48895910		MOVQ BX, 0x10(CX)						
  agv.go:151		0xe1230c		31c0			XORL AX, AX							
  agv.go:151		0xe1230e		31db			XORL BX, BX							
  agv.go:151		0xe12310		4883c468		ADDQ $.file+27(SB), SP						
  agv.go:151		0xe12314		5d			POPQ BP								
  agv.go:151		0xe12315		c3			RET								
  agv.go:140		0xe12316		4889442408		MOVQ AX, 0x8(SP)						
  agv.go:140		0xe1231b		0f1f440000		NOPL 0(AX)(AX*1)						
  agv.go:140		0xe12320		e8bb4166ff		CALL runtime.morestack_noctxt.abi0(SB)				
  agv.go:140		0xe12325		488b442408		MOVQ 0x8(SP), AX						
  agv.go:140		0xe1232a		e991feffff		JMP CAS-Backend/pkg/agvcontrol.(*AGVClient).dialLocked(SB)	
  :-1			0xe1232f		cc			INT $__subsystem__(SB)						
  :-1			0xe12330		cc			INT $__subsystem__(SB)						
  :-1			0xe12331		cc			INT $__subsystem__(SB)						
  :-1			0xe12332		cc			INT $__subsystem__(SB)						
  :-1			0xe12333		cc			INT $__subsystem__(SB)						
  :-1			0xe12334		cc			INT $__subsystem__(SB)						
  :-1			0xe12335		cc			INT $__subsystem__(SB)						
  :-1			0xe12336		cc			INT $__subsystem__(SB)						
  :-1			0xe12337		cc			INT $__subsystem__(SB)						
  :-1			0xe12338		cc			INT $__subsystem__(SB)						
  :-1			0xe12339		cc			INT $__subsystem__(SB)						
  :-1			0xe1233a		cc			INT $__subsystem__(SB)						
  :-1			0xe1233b		cc			INT $__subsystem__(SB)						
  :-1			0xe1233c		cc			INT $__subsystem__(SB)						
  :-1			0xe1233d		cc			INT $__subsystem__(SB)						
  :-1			0xe1233e		cc			INT $__subsystem__(SB)						
  :-1			0xe1233f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/agvcontrol.ClearConnDeadlines(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/agv.go
  agv.go:155		0xe12340		493b6610		CMPQ SP, 0x10(R14)					
  agv.go:155		0xe12344		7652			JBE 0xe12398						
  agv.go:155		0xe12346		55			PUSHQ BP						
  agv.go:155		0xe12347		4889e5			MOVQ SP, BP						
  agv.go:155		0xe1234a		4883ec20		SUBQ $__major_os_version__+26(SB), SP			
  agv.go:155		0xe1234e		4889442430		MOVQ AX, 0x30(SP)					
  agv.go:155		0xe12353		48895c2438		MOVQ BX, 0x38(SP)					
  agv.go:156		0xe12358		4885c0			TESTQ AX, AX						
  agv.go:156		0xe1235b		7435			JE 0xe12392						
  agv.go:156		0xe1235d		48895c2438		MOVQ BX, 0x38(SP)					
  agv.go:156		0xe12362		4889442430		MOVQ AX, 0x30(SP)					
  agv.go:159		0xe12367		488b5040		MOVQ 0x40(AX), DX					
  agv.go:159		0xe1236b		31c9			XORL CX, CX						
  agv.go:159		0xe1236d		31ff			XORL DI, DI						
  agv.go:159		0xe1236f		4889d8			MOVQ BX, AX						
  agv.go:159		0xe12372		31db			XORL BX, BX						
  agv.go:159		0xe12374		ffd2			CALL DX							
  agv.go:160		0xe12376		488b542430		MOVQ 0x30(SP), DX					
  agv.go:160		0xe1237b		488b5248		MOVQ 0x48(DX), DX					
  agv.go:160		0xe1237f		488b442438		MOVQ 0x38(SP), AX					
  agv.go:160		0xe12384		31db			XORL BX, BX						
  agv.go:160		0xe12386		31c9			XORL CX, CX						
  agv.go:160		0xe12388		31ff			XORL DI, DI						
  agv.go:160		0xe1238a		ffd2			CALL DX							
  agv.go:161		0xe1238c		4883c420		ADDQ $__major_os_version__+26(SB), SP			
  agv.go:161		0xe12390		5d			POPQ BP							
  agv.go:161		0xe12391		c3			RET							
  agv.go:157		0xe12392		4883c420		ADDQ $__major_os_version__+26(SB), SP			
  agv.go:157		0xe12396		5d			POPQ BP							
  agv.go:157		0xe12397		c3			RET							
  agv.go:155		0xe12398		4889442408		MOVQ AX, 0x8(SP)					
  agv.go:155		0xe1239d		48895c2410		MOVQ BX, 0x10(SP)					
  agv.go:155		0xe123a2		e8394166ff		CALL runtime.morestack_noctxt.abi0(SB)			
  agv.go:155		0xe123a7		488b442408		MOVQ 0x8(SP), AX					
  agv.go:155		0xe123ac		488b5c2410		MOVQ 0x10(SP), BX					
  agv.go:155		0xe123b1		eb8d			JMP CAS-Backend/pkg/agvcontrol.ClearConnDeadlines(SB)	
  :-1			0xe123b3		cc			INT $__subsystem__(SB)					
  :-1			0xe123b4		cc			INT $__subsystem__(SB)					
  :-1			0xe123b5		cc			INT $__subsystem__(SB)					
  :-1			0xe123b6		cc			INT $__subsystem__(SB)					
  :-1			0xe123b7		cc			INT $__subsystem__(SB)					
  :-1			0xe123b8		cc			INT $__subsystem__(SB)					
  :-1			0xe123b9		cc			INT $__subsystem__(SB)					
  :-1			0xe123ba		cc			INT $__subsystem__(SB)					
  :-1			0xe123bb		cc			INT $__subsystem__(SB)					
  :-1			0xe123bc		cc			INT $__subsystem__(SB)					
  :-1			0xe123bd		cc			INT $__subsystem__(SB)					
  :-1			0xe123be		cc			INT $__subsystem__(SB)					
  :-1			0xe123bf		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/agvcontrol.isRetryableConnErr(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/agv.go
  agv.go:163		0xe123c0		493b6610		CMPQ SP, 0x10(R14)					
  agv.go:163		0xe123c4		0f8605020000		JBE 0xe125cf						
  agv.go:163		0xe123ca		55			PUSHQ BP						
  agv.go:163		0xe123cb		4889e5			MOVQ SP, BP						
  agv.go:163		0xe123ce		4883ec38		SUBQ $__major_os_version__+50(SB), SP			
  agv.go:163		0xe123d2		4889442448		MOVQ AX, 0x48(SP)					
  agv.go:163		0xe123d7		48895c2450		MOVQ BX, 0x50(SP)					
  agv.go:163		0xe123dc		0f1f4000		NOPL 0(AX)						
  agv.go:164		0xe123e0		4885c0			TESTQ AX, AX						
  agv.go:164		0xe123e3		0f84de010000		JE 0xe125c7						
  agv.go:164		0xe123e9		4889442448		MOVQ AX, 0x48(SP)					
  agv.go:164		0xe123ee		48895c2450		MOVQ BX, 0x50(SP)					
  agv.go:167		0xe123f3		488b0dc6491a00		MOVQ io.EOF(SB), CX					
  agv.go:167		0xe123fa		488b3dc7491a00		MOVQ io.EOF+8(SB), DI					
  agv.go:167		0xe12401		e89a2b67ff		CALL errors.Is(SB)					
  agv.go:167		0xe12406		84c0			TESTL AL, AL						
  agv.go:167		0xe12408		7521			JNE 0xe1242b						
  agv.go:167		0xe1240a		488b0dbf491a00		MOVQ io.ErrUnexpectedEOF(SB), CX			
  agv.go:167		0xe12411		488b3dc0491a00		MOVQ io.ErrUnexpectedEOF+8(SB), DI			
  agv.go:167		0xe12418		488b442448		MOVQ 0x48(SP), AX					
  agv.go:167		0xe1241d		488b5c2450		MOVQ 0x50(SP), BX					
  agv.go:167		0xe12422		e8792b67ff		CALL errors.Is(SB)					
  agv.go:167		0xe12427		84c0			TESTL AL, AL						
  agv.go:167		0xe12429		740b			JE 0xe12436						
  agv.go:168		0xe1242b		b801000000		MOVL $__minor_os_version__(SB), AX			
  agv.go:168		0xe12430		4883c438		ADDQ $__major_os_version__+50(SB), SP			
  agv.go:168		0xe12434		5d			POPQ BP							
  agv.go:168		0xe12435		c3			RET							
  agv.go:170		0xe12436		488d0543322900		LEAQ runtime.types+788096(SB), AX			
  agv.go:170		0xe1243d		0f1f00			NOPL 0(AX)						
  agv.go:170		0xe12440		e85bf35fff		CALL runtime.newobject(SB)				
  agv.go:170		0xe12445		4889442430		MOVQ AX, 0x30(SP)					
  agv.go:170		0xe1244a		440f1138		MOVUPS X15, 0(AX)					
  agv.go:171		0xe1244e		488b5c2450		MOVQ 0x50(SP), BX					
  agv.go:171		0xe12453		488d0d064f2100		LEAQ runtime.types+271200(SB), CX			
  agv.go:171		0xe1245a		4889c7			MOVQ AX, DI						
  agv.go:171		0xe1245d		488b442448		MOVQ 0x48(SP), AX					
  agv.go:171		0xe12462		e8b92f67ff		CALL errors.As(SB)					
  agv.go:171		0xe12467		84c0			TESTL AL, AL						
  agv.go:171		0xe12469		741d			JE 0xe12488						
  agv.go:171		0xe1246b		488b4c2430		MOVQ 0x30(SP), CX					
  agv.go:171		0xe12470		488b11			MOVQ 0(CX), DX						
  agv.go:171		0xe12473		488b4108		MOVQ 0x8(CX), AX					
  agv.go:171		0xe12477		488b4a28		MOVQ 0x28(DX), CX					
  agv.go:171		0xe1247b		ffd1			CALL CX							
  agv.go:171		0xe1247d		0f1f00			NOPL 0(AX)						
  agv.go:171		0xe12480		84c0			TESTL AL, AL						
  agv.go:171		0xe12482		0f8534010000		JNE 0xe125bc						
  agv.go:174		0xe12488		488b4c2448		MOVQ 0x48(SP), CX					
  agv.go:174		0xe1248d		488b4918		MOVQ 0x18(CX), CX					
  agv.go:174		0xe12491		488b442450		MOVQ 0x50(SP), AX					
  agv.go:174		0xe12496		ffd1			CALL CX							
  agv.go:174		0xe12498		e843f56cff		CALL strings.ToLower(SB)				
  agv.go:174		0xe1249d		4889442428		MOVQ AX, 0x28(SP)					
  agv.go:174		0xe124a2		48895c2420		MOVQ BX, 0x20(SP)					
  strings.go:1221	0xe124a7		488d0dfc663500		LEAQ go:string.*+1698(SB), CX				
  strings.go:1221	0xe124ae		bf03000000		MOVL $__subsystem__(SB), DI				
  strings.go:1221	0xe124b3		e868d666ff		CALL internal/stringslite.Index(SB)			
  strings.go:62		0xe124b8		4885c0			TESTQ AX, AX						
  agv.go:175		0xe124bb		7c07			JL 0xe124c4						
  agv.go:175		0xe124bd		ba01000000		MOVL $__minor_os_version__(SB), DX			
  agv.go:175		0xe124c2		eb49			JMP 0xe1250d						
  strings.go:1221	0xe124c4		488b442428		MOVQ 0x28(SP), AX					
  strings.go:1221	0xe124c9		488b5c2420		MOVQ 0x20(SP), BX					
  strings.go:1221	0xe124ce		488d0d4e963600		LEAQ go:string.*+79387(SB), CX				
  strings.go:1221	0xe124d5		bf10000000		MOVL $__major_os_version__+10(SB), DI			
  strings.go:1221	0xe124da		e841d666ff		CALL internal/stringslite.Index(SB)			
  strings.go:1221	0xe124df		90			NOPL							
  strings.go:62		0xe124e0		4885c0			TESTQ AX, AX						
  agv.go:176		0xe124e3		7c07			JL 0xe124ec						
  agv.go:176		0xe124e5		ba01000000		MOVL $__minor_os_version__(SB), DX			
  agv.go:176		0xe124ea		eb21			JMP 0xe1250d						
  strings.go:1221	0xe124ec		488b442428		MOVQ 0x28(SP), AX					
  strings.go:1221	0xe124f1		488b5c2420		MOVQ 0x20(SP), BX					
  strings.go:1221	0xe124f6		488d0d2c4c3600		LEAQ go:string.*+60449(SB), CX				
  strings.go:1221	0xe124fd		bf0b000000		MOVL $__major_os_version__+5(SB), DI			
  strings.go:1221	0xe12502		e819d666ff		CALL internal/stringslite.Index(SB)			
  strings.go:62		0xe12507		4885c0			TESTQ AX, AX						
  strings.go:62		0xe1250a		0f9dc2			SETGE DL						
  agv.go:177		0xe1250d		84d2			TESTL DL, DL						
  agv.go:177		0xe1250f		7407			JE 0xe12518						
  agv.go:177		0xe12511		ba01000000		MOVL $__minor_os_version__(SB), DX			
  agv.go:177		0xe12516		eb48			JMP 0xe12560						
  strings.go:1221	0xe12518		488b442428		MOVQ 0x28(SP), AX					
  strings.go:1221	0xe1251d		488b5c2420		MOVQ 0x20(SP), BX					
  strings.go:1221	0xe12522		488d0d1e853600		LEAQ go:string.*+75071(SB), CX				
  strings.go:1221	0xe12529		bf0f000000		MOVL $__major_os_version__+9(SB), DI			
  strings.go:1221	0xe1252e		e8edd566ff		CALL internal/stringslite.Index(SB)			
  strings.go:62		0xe12533		4885c0			TESTQ AX, AX						
  agv.go:178		0xe12536		7c07			JL 0xe1253f						
  agv.go:178		0xe12538		ba01000000		MOVL $__minor_os_version__(SB), DX			
  agv.go:178		0xe1253d		eb21			JMP 0xe12560						
  strings.go:1221	0xe1253f		488b442428		MOVQ 0x28(SP), AX					
  strings.go:1221	0xe12544		488b5c2420		MOVQ 0x20(SP), BX					
  strings.go:1221	0xe12549		488d0dfc073600		LEAQ go:string.*+43076(SB), CX				
  strings.go:1221	0xe12550		bf07000000		MOVL $__major_os_version__+1(SB), DI			
  strings.go:1221	0xe12555		e8c6d566ff		CALL internal/stringslite.Index(SB)			
  strings.go:62		0xe1255a		4885c0			TESTQ AX, AX						
  strings.go:62		0xe1255d		0f9dc2			SETGE DL						
  agv.go:179		0xe12560		84d2			TESTL DL, DL						
  agv.go:179		0xe12562		7407			JE 0xe1256b						
  agv.go:179		0xe12564		ba01000000		MOVL $__minor_os_version__(SB), DX			
  agv.go:179		0xe12569		eb49			JMP 0xe125b4						
  strings.go:1221	0xe1256b		488b442428		MOVQ 0x28(SP), AX					
  strings.go:1221	0xe12570		488b5c2420		MOVQ 0x20(SP), BX					
  strings.go:1221	0xe12575		488d0dd7073600		LEAQ go:string.*+43083(SB), CX				
  strings.go:1221	0xe1257c		bf07000000		MOVL $__major_os_version__+1(SB), DI			
  strings.go:1221	0xe12581		e89ad566ff		CALL internal/stringslite.Index(SB)			
  strings.go:62		0xe12586		4885c0			TESTQ AX, AX						
  agv.go:180		0xe12589		7c07			JL 0xe12592						
  agv.go:180		0xe1258b		ba01000000		MOVL $__minor_os_version__(SB), DX			
  agv.go:180		0xe12590		eb22			JMP 0xe125b4						
  agv.go:181		0xe12592		90			NOPL							
  strings.go:1221	0xe12593		488b442428		MOVQ 0x28(SP), AX					
  strings.go:1221	0xe12598		488b5c2420		MOVQ 0x20(SP), BX					
  strings.go:1221	0xe1259d		488d0d44b63700		LEAQ go:string.*+153312(SB), CX				
  strings.go:1221	0xe125a4		bf20000000		MOVL $__major_os_version__+26(SB), DI			
  strings.go:1221	0xe125a9		e872d566ff		CALL internal/stringslite.Index(SB)			
  strings.go:62		0xe125ae		4885c0			TESTQ AX, AX						
  strings.go:62		0xe125b1		0f9dc2			SETGE DL						
  agv.go:175		0xe125b4		89d0			MOVL DX, AX						
  agv.go:175		0xe125b6		4883c438		ADDQ $__major_os_version__+50(SB), SP			
  agv.go:175		0xe125ba		5d			POPQ BP							
  agv.go:175		0xe125bb		c3			RET							
  agv.go:172		0xe125bc		b801000000		MOVL $__minor_os_version__(SB), AX			
  agv.go:172		0xe125c1		4883c438		ADDQ $__major_os_version__+50(SB), SP			
  agv.go:172		0xe125c5		5d			POPQ BP							
  agv.go:172		0xe125c6		c3			RET							
  agv.go:165		0xe125c7		31c0			XORL AX, AX						
  agv.go:165		0xe125c9		4883c438		ADDQ $__major_os_version__+50(SB), SP			
  agv.go:165		0xe125cd		5d			POPQ BP							
  agv.go:165		0xe125ce		c3			RET							
  agv.go:163		0xe125cf		4889442408		MOVQ AX, 0x8(SP)					
  agv.go:163		0xe125d4		48895c2410		MOVQ BX, 0x10(SP)					
  agv.go:163		0xe125d9		e8023f66ff		CALL runtime.morestack_noctxt.abi0(SB)			
  agv.go:163		0xe125de		488b442408		MOVQ 0x8(SP), AX					
  agv.go:163		0xe125e3		488b5c2410		MOVQ 0x10(SP), BX					
  agv.go:163		0xe125e8		e9d3fdffff		JMP CAS-Backend/pkg/agvcontrol.isRetryableConnErr(SB)	
  :-1			0xe125ed		cc			INT $__subsystem__(SB)					
  :-1			0xe125ee		cc			INT $__subsystem__(SB)					
  :-1			0xe125ef		cc			INT $__subsystem__(SB)					
  :-1			0xe125f0		cc			INT $__subsystem__(SB)					
  :-1			0xe125f1		cc			INT $__subsystem__(SB)					
  :-1			0xe125f2		cc			INT $__subsystem__(SB)					
  :-1			0xe125f3		cc			INT $__subsystem__(SB)					
  :-1			0xe125f4		cc			INT $__subsystem__(SB)					
  :-1			0xe125f5		cc			INT $__subsystem__(SB)					
  :-1			0xe125f6		cc			INT $__subsystem__(SB)					
  :-1			0xe125f7		cc			INT $__subsystem__(SB)					
  :-1			0xe125f8		cc			INT $__subsystem__(SB)					
  :-1			0xe125f9		cc			INT $__subsystem__(SB)					
  :-1			0xe125fa		cc			INT $__subsystem__(SB)					
  :-1			0xe125fb		cc			INT $__subsystem__(SB)					
  :-1			0xe125fc		cc			INT $__subsystem__(SB)					
  :-1			0xe125fd		cc			INT $__subsystem__(SB)					
  :-1			0xe125fe		cc			INT $__subsystem__(SB)					
  :-1			0xe125ff		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/agvcontrol.(*AGVClient).Run(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/agv.go
  agv.go:201		0xe12600		493b6610		CMPQ SP, 0x10(R14)							
  agv.go:201		0xe12604		0f8660020000		JBE 0xe1286a								
  agv.go:201		0xe1260a		55			PUSHQ BP								
  agv.go:201		0xe1260b		4889e5			MOVQ SP, BP								
  agv.go:201		0xe1260e		4883ec60		SUBQ $.file+19(SB), SP							
  agv.go:201		0xe12612		66440fd67c2458		MOVQ X15, 0x58(SP)							
  mutex.go:85		0xe12619		4889442470		MOVQ AX, 0x70(SP)							
  mutex.go:85		0xe1261e		48895c2478		MOVQ BX, 0x78(SP)							
  agv.go:201		0xe12623		c644241700		MOVB $0x0, 0x17(SP)							
  agv.go:201		0xe12628		440f117c2430		MOVUPS X15, 0x30(SP)							
  mutex.go:85		0xe1262e		4889c1			MOVQ AX, CX								
  agv.go:202		0xe12631		31c0			XORL AX, AX								
  agv.go:202		0xe12633		be01000000		MOVL $__minor_os_version__(SB), SI					
  agv.go:202		0xe12638		f00fb131		LOCK CMPXCHGL SI, 0(CX)							
  agv.go:202		0xe1263c		400f94c6		SETE SI									
  mutex.go:85		0xe12640		4084f6			TESTL SI, SI								
  mutex.go:85		0xe12643		7512			JNE 0xe12657								
  mutex.go:92		0xe12645		4889c8			MOVQ CX, AX								
  mutex.go:92		0xe12648		e8d35367ff		CALL sync.(*Mutex).lockSlow(SB)						
  agv.go:203		0xe1264d		488b4c2470		MOVQ 0x70(SP), CX							
  agv.go:212		0xe12652		488b5c2478		MOVQ 0x78(SP), BX							
  agv.go:203		0xe12657		488d3542020000		LEAQ CAS-Backend/pkg/agvcontrol.(*AGVClient).Run.deferwrap1(SB), SI	
  agv.go:203		0xe1265e		4889742448		MOVQ SI, 0x48(SP)							
  agv.go:203		0xe12663		48894c2450		MOVQ CX, 0x50(SP)							
  agv.go:203		0xe12668		488d742448		LEAQ 0x48(SP), SI							
  agv.go:203		0xe1266d		4889742458		MOVQ SI, 0x58(SP)							
  agv.go:203		0xe12672		c644241701		MOVB $__minor_os_version__(SB), 0x17(SP)				
  agv.go:203		0xe12677		31c0			XORL AX, AX								
  agv.go:203		0xe12679		31d2			XORL DX, DX								
  agv.go:203		0xe1267b		31f6			XORL SI, SI								
  agv.go:207		0xe1267d		eb21			JMP 0xe126a0								
  agv.go:220		0xe1267f		488b742440		MOVQ 0x40(SP), SI							
  agv.go:220		0xe12684		488b542418		MOVQ 0x18(SP), DX							
  agv.go:212		0xe12689		488b5c2478		MOVQ 0x78(SP), BX							
  agv.go:207		0xe1268e		4889c8			MOVQ CX, AX								
  agv.go:126		0xe12691		488b4c2470		MOVQ 0x70(SP), CX							
  agv.go:126		0xe12696		660f1f840000000000	NOPW 0(AX)(AX*1)							
  agv.go:126		0xe1269f		90			NOPL									
  agv.go:207		0xe126a0		4883f802		CMPQ AX, $__minor_os_version__+1(SB)					
  agv.go:207		0xe126a4		0f8d82010000		JGE 0xe1282c								
  agv.go:207		0xe126aa		4889442420		MOVQ AX, 0x20(SP)							
  agv.go:126		0xe126af		4883790800		CMPQ 0x8(CX), $0x0							
  agv.go:126		0xe126b4		7406			JE 0xe126bc								
  agv.go:126		0xe126b6		31d2			XORL DX, DX								
  agv.go:126		0xe126b8		31f6			XORL SI, SI								
  agv.go:208		0xe126ba		eb24			JMP 0xe126e0								
  agv.go:129		0xe126bc		4889c8			MOVQ CX, AX								
  agv.go:129		0xe126bf		90			NOPL									
  agv.go:129		0xe126c0		e8fbfaffff		CALL CAS-Backend/pkg/agvcontrol.(*AGVClient).dialLocked(SB)		
  agv.go:211		0xe126c5		488b4c2470		MOVQ 0x70(SP), CX							
  agv.go:208		0xe126ca		4889c2			MOVQ AX, DX								
  agv.go:208		0xe126cd		4889de			MOVQ BX, SI								
  agv.go:219		0xe126d0		488b442420		MOVQ 0x20(SP), AX							
  agv.go:212		0xe126d5		488b5c2478		MOVQ 0x78(SP), BX							
  agv.go:212		0xe126da		660f1f440000		NOPW 0(AX)(AX*1)							
  agv.go:208		0xe126e0		4885d2			TESTQ DX, DX								
  agv.go:208		0xe126e3		0f851a010000		JNE 0xe12803								
  agv.go:211		0xe126e9		488b4108		MOVQ 0x8(CX), AX							
  agv.go:211		0xe126ed		488b5910		MOVQ 0x10(CX), BX							
  agv.go:211		0xe126f1		e84afcffff		CALL CAS-Backend/pkg/agvcontrol.ClearConnDeadlines(SB)			
  agv.go:212		0xe126f6		488b542478		MOVQ 0x78(SP), DX							
  agv.go:212		0xe126fb		488b0a			MOVQ 0(DX), CX								
  agv.go:212		0xe126fe		488b742470		MOVQ 0x70(SP), SI							
  agv.go:212		0xe12703		488b4608		MOVQ 0x8(SI), AX							
  agv.go:212		0xe12707		488b5e10		MOVQ 0x10(SI), BX							
  agv.go:212		0xe1270b		ffd1			CALL CX									
  agv.go:213		0xe1270d		4885c0			TESTQ AX, AX								
  agv.go:213		0xe12710		0f84b6000000		JE 0xe127cc								
  agv.go:212		0xe12716		48895c2440		MOVQ BX, 0x40(SP)							
  agv.go:212		0xe1271b		4889442418		MOVQ AX, 0x18(SP)							
  agv.go:217		0xe12720		488b4c2470		MOVQ 0x70(SP), CX							
  agv.go:217		0xe12725		488b5108		MOVQ 0x8(CX), DX							
  agv.go:217		0xe12729		488b4110		MOVQ 0x10(CX), AX							
  agv.go:217		0xe1272d		488b5218		MOVQ 0x18(DX), DX							
  agv.go:217		0xe12731		ffd2			CALL DX									
  agv.go:218		0xe12733		488b442470		MOVQ 0x70(SP), AX							
  agv.go:218		0xe12738		48c7400800000000	MOVQ $0x0, 0x8(AX)							
  agv.go:218		0xe12740		833d09b4740200		CMPL runtime.writeBarrier(SB), $0x0					
  agv.go:218		0xe12747		740c			JE 0xe12755								
  agv.go:218		0xe12749		488b4810		MOVQ 0x10(AX), CX							
  agv.go:218		0xe1274d		e8ce5c66ff		CALL runtime.gcWriteBarrier1(SB)					
  agv.go:218		0xe12752		49890b			MOVQ CX, 0(R11)								
  agv.go:218		0xe12755		48c7401000000000	MOVQ $0x0, 0x10(AX)							
  agv.go:219		0xe1275d		488b4c2420		MOVQ 0x20(SP), CX							
  agv.go:219		0xe12762		48ffc1			INCQ CX									
  agv.go:219		0xe12765		4883f902		CMPQ CX, $__minor_os_version__+1(SB)					
  agv.go:219		0xe12769		7c04			JL 0xe1276f								
  agv.go:219		0xe1276b		31d2			XORL DX, DX								
  agv.go:219		0xe1276d		eb22			JMP 0xe12791								
  agv.go:219		0xe1276f		48894c2428		MOVQ CX, 0x28(SP)							
  agv.go:219		0xe12774		488b442418		MOVQ 0x18(SP), AX							
  agv.go:219		0xe12779		488b5c2440		MOVQ 0x40(SP), BX							
  agv.go:219		0xe1277e		6690			NOPW									
  agv.go:219		0xe12780		e83bfcffff		CALL CAS-Backend/pkg/agvcontrol.isRetryableConnErr(SB)			
  agv.go:207		0xe12785		488b4c2428		MOVQ 0x28(SP), CX							
  agv.go:219		0xe1278a		89c2			MOVL AX, DX								
  agv.go:126		0xe1278c		488b442470		MOVQ 0x70(SP), AX							
  agv.go:219		0xe12791		84d2			TESTL DL, DL								
  agv.go:219		0xe12793		0f85e6feffff		JNE 0xe1267f								
  agv.go:222		0xe12799		488b442418		MOVQ 0x18(SP), AX							
  agv.go:222		0xe1279e		4889442430		MOVQ AX, 0x30(SP)							
  agv.go:222		0xe127a3		488b442440		MOVQ 0x40(SP), AX							
  agv.go:222		0xe127a8		4889442438		MOVQ AX, 0x38(SP)							
  agv.go:222		0xe127ad		c644241700		MOVB $0x0, 0x17(SP)							
  agv.go:222		0xe127b2		488b542458		MOVQ 0x58(SP), DX							
  agv.go:222		0xe127b7		488b02			MOVQ 0(DX), AX								
  agv.go:222		0xe127ba		ffd0			CALL AX									
  agv.go:222		0xe127bc		488b442430		MOVQ 0x30(SP), AX							
  agv.go:222		0xe127c1		488b5c2438		MOVQ 0x38(SP), BX							
  agv.go:222		0xe127c6		4883c460		ADDQ $.file+19(SB), SP							
  agv.go:222		0xe127ca		5d			POPQ BP									
  agv.go:222		0xe127cb		c3			RET									
  agv.go:214		0xe127cc		488b4c2470		MOVQ 0x70(SP), CX							
  agv.go:214		0xe127d1		488b4108		MOVQ 0x8(CX), AX							
  agv.go:214		0xe127d5		488b5910		MOVQ 0x10(CX), BX							
  agv.go:214		0xe127d9		e862fbffff		CALL CAS-Backend/pkg/agvcontrol.ClearConnDeadlines(SB)			
  agv.go:215		0xe127de		440f117c2430		MOVUPS X15, 0x30(SP)							
  agv.go:215		0xe127e4		c644241700		MOVB $0x0, 0x17(SP)							
  agv.go:215		0xe127e9		488b542458		MOVQ 0x58(SP), DX							
  agv.go:215		0xe127ee		488b0a			MOVQ 0(DX), CX								
  agv.go:215		0xe127f1		ffd1			CALL CX									
  agv.go:215		0xe127f3		488b5c2438		MOVQ 0x38(SP), BX							
  agv.go:215		0xe127f8		488b442430		MOVQ 0x30(SP), AX							
  agv.go:215		0xe127fd		4883c460		ADDQ $.file+19(SB), SP							
  agv.go:215		0xe12801		5d			POPQ BP									
  agv.go:215		0xe12802		c3			RET									
  agv.go:209		0xe12803		4889542430		MOVQ DX, 0x30(SP)							
  agv.go:209		0xe12808		4889742438		MOVQ SI, 0x38(SP)							
  agv.go:209		0xe1280d		c644241700		MOVB $0x0, 0x17(SP)							
  agv.go:209		0xe12812		488b542458		MOVQ 0x58(SP), DX							
  agv.go:209		0xe12817		488b02			MOVQ 0(DX), AX								
  agv.go:209		0xe1281a		ffd0			CALL AX									
  agv.go:209		0xe1281c		488b442430		MOVQ 0x30(SP), AX							
  agv.go:209		0xe12821		488b5c2438		MOVQ 0x38(SP), BX							
  agv.go:209		0xe12826		4883c460		ADDQ $.file+19(SB), SP							
  agv.go:209		0xe1282a		5d			POPQ BP									
  agv.go:209		0xe1282b		c3			RET									
  agv.go:224		0xe1282c		4889542430		MOVQ DX, 0x30(SP)							
  agv.go:224		0xe12831		4889742438		MOVQ SI, 0x38(SP)							
  agv.go:224		0xe12836		c644241700		MOVB $0x0, 0x17(SP)							
  agv.go:224		0xe1283b		488b542458		MOVQ 0x58(SP), DX							
  agv.go:224		0xe12840		488b02			MOVQ 0(DX), AX								
  agv.go:224		0xe12843		ffd0			CALL AX									
  agv.go:224		0xe12845		488b442430		MOVQ 0x30(SP), AX							
  agv.go:224		0xe1284a		488b5c2438		MOVQ 0x38(SP), BX							
  agv.go:224		0xe1284f		4883c460		ADDQ $.file+19(SB), SP							
  agv.go:224		0xe12853		5d			POPQ BP									
  agv.go:224		0xe12854		c3			RET									
  agv.go:224		0xe12855		e8267362ff		CALL runtime.deferreturn(SB)						
  agv.go:224		0xe1285a		488b442430		MOVQ 0x30(SP), AX							
  agv.go:224		0xe1285f		488b5c2438		MOVQ 0x38(SP), BX							
  agv.go:224		0xe12864		4883c460		ADDQ $.file+19(SB), SP							
  agv.go:224		0xe12868		5d			POPQ BP									
  agv.go:224		0xe12869		c3			RET									
  agv.go:201		0xe1286a		4889442408		MOVQ AX, 0x8(SP)							
  agv.go:201		0xe1286f		48895c2410		MOVQ BX, 0x10(SP)							
  agv.go:201		0xe12874		e8673c66ff		CALL runtime.morestack_noctxt.abi0(SB)					
  agv.go:201		0xe12879		488b442408		MOVQ 0x8(SP), AX							
  agv.go:201		0xe1287e		488b5c2410		MOVQ 0x10(SP), BX							
  agv.go:201		0xe12883		e978fdffff		JMP CAS-Backend/pkg/agvcontrol.(*AGVClient).Run(SB)			
  :-1			0xe12888		cc			INT $__subsystem__(SB)							
  :-1			0xe12889		cc			INT $__subsystem__(SB)							
  :-1			0xe1288a		cc			INT $__subsystem__(SB)							
  :-1			0xe1288b		cc			INT $__subsystem__(SB)							
  :-1			0xe1288c		cc			INT $__subsystem__(SB)							
  :-1			0xe1288d		cc			INT $__subsystem__(SB)							
  :-1			0xe1288e		cc			INT $__subsystem__(SB)							
  :-1			0xe1288f		cc			INT $__subsystem__(SB)							
  :-1			0xe12890		cc			INT $__subsystem__(SB)							
  :-1			0xe12891		cc			INT $__subsystem__(SB)							
  :-1			0xe12892		cc			INT $__subsystem__(SB)							
  :-1			0xe12893		cc			INT $__subsystem__(SB)							
  :-1			0xe12894		cc			INT $__subsystem__(SB)							
  :-1			0xe12895		cc			INT $__subsystem__(SB)							
  :-1			0xe12896		cc			INT $__subsystem__(SB)							
  :-1			0xe12897		cc			INT $__subsystem__(SB)							
  :-1			0xe12898		cc			INT $__subsystem__(SB)							
  :-1			0xe12899		cc			INT $__subsystem__(SB)							
  :-1			0xe1289a		cc			INT $__subsystem__(SB)							
  :-1			0xe1289b		cc			INT $__subsystem__(SB)							
  :-1			0xe1289c		cc			INT $__subsystem__(SB)							
  :-1			0xe1289d		cc			INT $__subsystem__(SB)							
  :-1			0xe1289e		cc			INT $__subsystem__(SB)							
  :-1			0xe1289f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/pkg/agvcontrol.(*AGVClient).Run.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/agv.go
  agv.go:203		0xe128a0		493b6610		CMPQ SP, 0x10(R14)						
  agv.go:203		0xe128a4		762f			JBE 0xe128d5							
  agv.go:203		0xe128a6		55			PUSHQ BP							
  agv.go:203		0xe128a7		4889e5			MOVQ SP, BP							
  agv.go:203		0xe128aa		4883ec10		SUBQ $__major_os_version__+10(SB), SP				
  agv.go:203		0xe128ae		4d8b6620		MOVQ 0x20(R14), R12						
  agv.go:203		0xe128b2		4d85e4			TESTQ R12, R12							
  agv.go:203		0xe128b5		7525			JNE 0xe128dc							
  agv.go:203		0xe128b7		488b4208		MOVQ 0x8(DX), AX						
  mutex.go:221		0xe128bb		bbffffffff		MOVL $-0x1, BX							
  mutex.go:221		0xe128c0		f00fc118		LOCK XADDL BX, 0(AX)						
  mutex.go:221		0xe128c4		ffcb			DECL BX								
  mutex.go:222		0xe128c6		85db			TESTL BX, BX							
  mutex.go:222		0xe128c8		7405			JE 0xe128cf							
  mutex.go:225		0xe128ca		e8315467ff		CALL sync.(*Mutex).unlockSlow(SB)				
  agv.go:203		0xe128cf		4883c410		ADDQ $__major_os_version__+10(SB), SP				
  agv.go:203		0xe128d3		5d			POPQ BP								
  agv.go:203		0xe128d4		c3			RET								
  agv.go:203		0xe128d5		e8863b66ff		CALL runtime.morestack.abi0(SB)					
  agv.go:203		0xe128da		ebc4			JMP CAS-Backend/pkg/agvcontrol.(*AGVClient).Run.deferwrap1(SB)	
  agv.go:203		0xe128dc		4c8d6c2420		LEAQ 0x20(SP), R13						
  agv.go:203		0xe128e1		4d392c24		CMPQ 0(R12), R13						
  agv.go:203		0xe128e5		75d0			JNE 0xe128b7							
  agv.go:203		0xe128e7		49892424		MOVQ SP, 0(R12)							
  agv.go:203		0xe128eb		ebca			JMP 0xe128b7							
  :-1			0xe128ed		cc			INT $__subsystem__(SB)						
  :-1			0xe128ee		cc			INT $__subsystem__(SB)						
  :-1			0xe128ef		cc			INT $__subsystem__(SB)						
  :-1			0xe128f0		cc			INT $__subsystem__(SB)						
  :-1			0xe128f1		cc			INT $__subsystem__(SB)						
  :-1			0xe128f2		cc			INT $__subsystem__(SB)						
  :-1			0xe128f3		cc			INT $__subsystem__(SB)						
  :-1			0xe128f4		cc			INT $__subsystem__(SB)						
  :-1			0xe128f5		cc			INT $__subsystem__(SB)						
  :-1			0xe128f6		cc			INT $__subsystem__(SB)						
  :-1			0xe128f7		cc			INT $__subsystem__(SB)						
  :-1			0xe128f8		cc			INT $__subsystem__(SB)						
  :-1			0xe128f9		cc			INT $__subsystem__(SB)						
  :-1			0xe128fa		cc			INT $__subsystem__(SB)						
  :-1			0xe128fb		cc			INT $__subsystem__(SB)						
  :-1			0xe128fc		cc			INT $__subsystem__(SB)						
  :-1			0xe128fd		cc			INT $__subsystem__(SB)						
  :-1			0xe128fe		cc			INT $__subsystem__(SB)						
  :-1			0xe128ff		cc			INT $__subsystem__(SB)						

