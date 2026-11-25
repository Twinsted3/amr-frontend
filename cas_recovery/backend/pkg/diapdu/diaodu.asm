TEXT CAS-Backend/pkg/diapdu.ConfigureDiaodu(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/diaodu.go
  diaodu.go:46		0xe233a0		493b6610		CMPQ SP, 0x10(R14)					
  diaodu.go:46		0xe233a4		0f8661010000		JBE 0xe2350b						
  diaodu.go:46		0xe233aa		55			PUSHQ BP						
  diaodu.go:46		0xe233ab		4889e5			MOVQ SP, BP						
  diaodu.go:46		0xe233ae		4883ec58		SUBQ $.file+11(SB), SP					
  diaodu.go:46		0xe233b2		4889442468		MOVQ AX, 0x68(SP)					
  diaodu.go:46		0xe233b7		48894c2478		MOVQ CX, 0x78(SP)					
  diaodu.go:46		0xe233bc		0f1f4000		NOPL 0(AX)						
  diaodu.go:47		0xe233c0		4885db			TESTQ BX, BX						
  diaodu.go:47		0xe233c3		742a			JE 0xe233ef						
  diaodu.go:48		0xe233c5		48891d3c2a1900		MOVQ BX, CAS-Backend/pkg/diapdu.diaoduVehicleHost+8(SB)	
  diaodu.go:48		0xe233cc		833d7da7730200		CMPL runtime.writeBarrier(SB), $0x0			
  diaodu.go:48		0xe233d3		7413			JE 0xe233e8						
  diaodu.go:48		0xe233d5		e8665065ff		CALL runtime.gcWriteBarrier2(SB)			
  diaodu.go:48		0xe233da		498903			MOVQ AX, 0(R11)						
  diaodu.go:48		0xe233dd		488b151c2a1900		MOVQ CAS-Backend/pkg/diapdu.diaoduVehicleHost(SB), DX	
  diaodu.go:48		0xe233e4		49895308		MOVQ DX, 0x8(R11)					
  diaodu.go:48		0xe233e8		488905112a1900		MOVQ AX, CAS-Backend/pkg/diapdu.diaoduVehicleHost(SB)	
  diaodu.go:50		0xe233ef		4885ff			TESTQ DI, DI						
  diaodu.go:50		0xe233f2		0f8486000000		JE 0xe2347e						
  diaodu.go:51		0xe233f8		48893d192a1900		MOVQ DI, CAS-Backend/pkg/diapdu.diaoduMapFileDir+8(SB)	
  diaodu.go:51		0xe233ff		833d4aa7730200		CMPL runtime.writeBarrier(SB), $0x0			
  diaodu.go:51		0xe23406		7505			JNE 0xe2340d						
  diaodu.go:50		0xe23408		4885ff			TESTQ DI, DI						
  diaodu.go:51		0xe2340b		eb16			JMP 0xe23423						
  diaodu.go:51		0xe2340d		e82e5065ff		CALL runtime.gcWriteBarrier2(SB)			
  diaodu.go:51		0xe23412		49890b			MOVQ CX, 0(R11)						
  diaodu.go:51		0xe23415		488b15f4291900		MOVQ CAS-Backend/pkg/diapdu.diaoduMapFileDir(SB), DX	
  diaodu.go:51		0xe2341c		49895308		MOVQ DX, 0x8(R11)					
  diaodu.go:50		0xe23420		4885ff			TESTQ DI, DI						
  diaodu.go:51		0xe23423		48890de6291900		MOVQ CX, CAS-Backend/pkg/diapdu.diaoduMapFileDir(SB)	
  diaodu.go:65		0xe2342a		740f			JE 0xe2343b						
  diaodu.go:65		0xe2342c		0fb6540fff		MOVZX -0x1(DI)(CX*1), DX				
  diaodu.go:65		0xe23431		80fa2f			CMPL DL, $__major_os_version__+41(SB)			
  diaodu.go:65		0xe23434		7448			JE 0xe2347e						
  diaodu.go:65		0xe23436		80fa5c			CMPL DL, $.file+15(SB)					
  diaodu.go:52		0xe23439		7443			JE 0xe2347e						
  diaodu.go:53		0xe2343b		31c0			XORL AX, AX						
  diaodu.go:53		0xe2343d		4889cb			MOVQ CX, BX						
  diaodu.go:53		0xe23440		4889f9			MOVQ DI, CX						
  diaodu.go:53		0xe23443		488d3d66180402		LEAQ runtime.gcbits.*+496(SB), DI			
  diaodu.go:53		0xe2344a		be01000000		MOVL $__minor_os_version__(SB), SI			
  diaodu.go:53		0xe2344f		e8ac1f63ff		CALL runtime.concatstring2(SB)				
  diaodu.go:53		0xe23454		48891dbd291900		MOVQ BX, CAS-Backend/pkg/diapdu.diaoduMapFileDir+8(SB)	
  diaodu.go:53		0xe2345b		833deea6730200		CMPL runtime.writeBarrier(SB), $0x0			
  diaodu.go:53		0xe23462		7413			JE 0xe23477						
  diaodu.go:53		0xe23464		e8d74f65ff		CALL runtime.gcWriteBarrier2(SB)			
  diaodu.go:53		0xe23469		498903			MOVQ AX, 0(R11)						
  diaodu.go:53		0xe2346c		488b0d9d291900		MOVQ CAS-Backend/pkg/diapdu.diaoduMapFileDir(SB), CX	
  diaodu.go:53		0xe23473		49894b08		MOVQ CX, 0x8(R11)					
  diaodu.go:53		0xe23477		48890592291900		MOVQ AX, CAS-Backend/pkg/diapdu.diaoduMapFileDir(SB)	
  diaodu.go:56		0xe2347e		440f117c2438		MOVUPS X15, 0x38(SP)					
  diaodu.go:56		0xe23484		440f117c2448		MOVUPS X15, 0x48(SP)					
  diaodu.go:56		0xe2348a		488b056f291900		MOVQ CAS-Backend/pkg/diapdu.diaoduVehicleHost(SB), AX	
  diaodu.go:56		0xe23491		488b1d70291900		MOVQ CAS-Backend/pkg/diapdu.diaoduVehicleHost+8(SB), BX	
  diaodu.go:56		0xe23498		e8836c64ff		CALL runtime.convTstring(SB)				
  diaodu.go:56		0xe2349d		488d0d7cf42100		LEAQ runtime.types+383264(SB), CX			
  diaodu.go:56		0xe234a4		48894c2438		MOVQ CX, 0x38(SP)					
  diaodu.go:56		0xe234a9		4889442440		MOVQ AX, 0x40(SP)					
  diaodu.go:56		0xe234ae		488b055b291900		MOVQ CAS-Backend/pkg/diapdu.diaoduMapFileDir(SB), AX	
  diaodu.go:56		0xe234b5		488b1d5c291900		MOVQ CAS-Backend/pkg/diapdu.diaoduMapFileDir+8(SB), BX	
  diaodu.go:56		0xe234bc		0f1f4000		NOPL 0(AX)						
  diaodu.go:56		0xe234c0		e85b6c64ff		CALL runtime.convTstring(SB)				
  diaodu.go:56		0xe234c5		488d0d54f42100		LEAQ runtime.types+383264(SB), CX			
  diaodu.go:56		0xe234cc		48894c2448		MOVQ CX, 0x48(SP)					
  diaodu.go:56		0xe234d1		4889442450		MOVQ AX, 0x50(SP)					
  print.go:233		0xe234d6		488b1da3eb6e02		MOVQ os.Stdout(SB), BX					
  print.go:233		0xe234dd		488d05fc850402		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0xe234e4		488d0d18f93700		LEAQ go:string.*+239867(SB), CX				
  print.go:233		0xe234eb		bf3c000000		MOVL $__major_os_version__+54(SB), DI			
  print.go:233		0xe234f0		488d742438		LEAQ 0x38(SP), SI					
  print.go:233		0xe234f5		41b802000000		MOVL $__minor_os_version__+1(SB), R8			
  print.go:233		0xe234fb		4d89c1			MOVQ R8, R9						
  print.go:233		0xe234fe		6690			NOPW							
  print.go:233		0xe23500		e81bbd6fff		CALL fmt.Fprintf(SB)					
  diaodu.go:57		0xe23505		4883c458		ADDQ $.file+11(SB), SP					
  diaodu.go:57		0xe23509		5d			POPQ BP							
  diaodu.go:57		0xe2350a		c3			RET							
  diaodu.go:46		0xe2350b		4889442408		MOVQ AX, 0x8(SP)					
  diaodu.go:46		0xe23510		48895c2410		MOVQ BX, 0x10(SP)					
  diaodu.go:46		0xe23515		48894c2418		MOVQ CX, 0x18(SP)					
  diaodu.go:46		0xe2351a		48897c2420		MOVQ DI, 0x20(SP)					
  diaodu.go:46		0xe2351f		90			NOPL							
  diaodu.go:46		0xe23520		e8bb2f65ff		CALL runtime.morestack_noctxt.abi0(SB)			
  diaodu.go:46		0xe23525		488b442408		MOVQ 0x8(SP), AX					
  diaodu.go:46		0xe2352a		488b5c2410		MOVQ 0x10(SP), BX					
  diaodu.go:46		0xe2352f		488b4c2418		MOVQ 0x18(SP), CX					
  diaodu.go:46		0xe23534		488b7c2420		MOVQ 0x20(SP), DI					
  diaodu.go:46		0xe23539		e962feffff		JMP CAS-Backend/pkg/diapdu.ConfigureDiaodu(SB)		
  :-1			0xe2353e		cc			INT $__subsystem__(SB)					
  :-1			0xe2353f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.setActiveMap(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/diaodu.go
  diaodu.go:68		0xe23540		493b6610		CMPQ SP, 0x10(R14)					
  diaodu.go:68		0xe23544		0f86a1000000		JBE 0xe235eb						
  diaodu.go:68		0xe2354a		55			PUSHQ BP						
  diaodu.go:68		0xe2354b		4889e5			MOVQ SP, BP						
  diaodu.go:68		0xe2354e		4883ec08		SUBQ $__major_os_version__+2(SB), SP			
  diaodu.go:73		0xe23552		4889442418		MOVQ AX, 0x18(SP)					
  diaodu.go:73		0xe23557		48895c2420		MOVQ BX, 0x20(SP)					
  diaodu.go:73		0xe2355c		48894c2428		MOVQ CX, 0x28(SP)					
  diaodu.go:73		0xe23561		48897c2430		MOVQ DI, 0x30(SP)					
  diaodu.go:69		0xe23566		488d0513a67302		LEAQ CAS-Backend/pkg/diapdu.activeMapMu(SB), AX		
  diaodu.go:69		0xe2356d		e84e5966ff		CALL sync.(*RWMutex).Lock(SB)				
  diaodu.go:70		0xe23572		488b4c2420		MOVQ 0x20(SP), CX					
  diaodu.go:70		0xe23577		48890d9a026f02		MOVQ CX, CAS-Backend/pkg/diapdu.activeMapName+8(SB)	
  diaodu.go:70		0xe2357e		833dcba5730200		CMPL runtime.writeBarrier(SB), $0x0			
  diaodu.go:70		0xe23585		750c			JNE 0xe23593						
  diaodu.go:70		0xe23587		488b4c2418		MOVQ 0x18(SP), CX					
  diaodu.go:71		0xe2358c		488b542428		MOVQ 0x28(SP), DX					
  diaodu.go:70		0xe23591		eb2c			JMP 0xe235bf						
  diaodu.go:70		0xe23593		e8e84e65ff		CALL runtime.gcWriteBarrier4(SB)			
  diaodu.go:70		0xe23598		488b4c2418		MOVQ 0x18(SP), CX					
  diaodu.go:70		0xe2359d		49890b			MOVQ CX, 0(R11)						
  diaodu.go:70		0xe235a0		488b1569026f02		MOVQ CAS-Backend/pkg/diapdu.activeMapName(SB), DX	
  diaodu.go:70		0xe235a7		49895308		MOVQ DX, 0x8(R11)					
  diaodu.go:71		0xe235ab		488b542428		MOVQ 0x28(SP), DX					
  diaodu.go:71		0xe235b0		49895310		MOVQ DX, 0x10(R11)					
  diaodu.go:71		0xe235b4		488b1d65026f02		MOVQ CAS-Backend/pkg/diapdu.activeMapPath(SB), BX	
  diaodu.go:71		0xe235bb		49895b18		MOVQ BX, 0x18(R11)					
  diaodu.go:70		0xe235bf		48890d4a026f02		MOVQ CX, CAS-Backend/pkg/diapdu.activeMapName(SB)	
  diaodu.go:71		0xe235c6		488b4c2430		MOVQ 0x30(SP), CX					
  diaodu.go:71		0xe235cb		48890d56026f02		MOVQ CX, CAS-Backend/pkg/diapdu.activeMapPath+8(SB)	
  diaodu.go:71		0xe235d2		48891547026f02		MOVQ DX, CAS-Backend/pkg/diapdu.activeMapPath(SB)	
  diaodu.go:72		0xe235d9		488d05a0a57302		LEAQ CAS-Backend/pkg/diapdu.activeMapMu(SB), AX		
  diaodu.go:72		0xe235e0		e83b5a66ff		CALL sync.(*RWMutex).Unlock(SB)				
  diaodu.go:73		0xe235e5		4883c408		ADDQ $__major_os_version__+2(SB), SP			
  diaodu.go:73		0xe235e9		5d			POPQ BP							
  diaodu.go:73		0xe235ea		c3			RET							
  diaodu.go:68		0xe235eb		4889442408		MOVQ AX, 0x8(SP)					
  diaodu.go:68		0xe235f0		48895c2410		MOVQ BX, 0x10(SP)					
  diaodu.go:68		0xe235f5		48894c2418		MOVQ CX, 0x18(SP)					
  diaodu.go:68		0xe235fa		48897c2420		MOVQ DI, 0x20(SP)					
  diaodu.go:68		0xe235ff		90			NOPL							
  diaodu.go:68		0xe23600		e8db2e65ff		CALL runtime.morestack_noctxt.abi0(SB)			
  diaodu.go:68		0xe23605		488b442408		MOVQ 0x8(SP), AX					
  diaodu.go:68		0xe2360a		488b5c2410		MOVQ 0x10(SP), BX					
  diaodu.go:68		0xe2360f		488b4c2418		MOVQ 0x18(SP), CX					
  diaodu.go:68		0xe23614		488b7c2420		MOVQ 0x20(SP), DI					
  diaodu.go:68		0xe23619		e922ffffff		JMP CAS-Backend/pkg/diapdu.setActiveMap(SB)		
  :-1			0xe2361e		cc			INT $__subsystem__(SB)					
  :-1			0xe2361f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.GetActiveMapInfo(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/diaodu.go
  diaodu.go:76		0xe23620		493b6610		CMPQ SP, 0x10(R14)						
  diaodu.go:76		0xe23624		0f8625010000		JBE 0xe2374f							
  diaodu.go:76		0xe2362a		55			PUSHQ BP							
  diaodu.go:76		0xe2362b		4889e5			MOVQ SP, BP							
  diaodu.go:76		0xe2362e		4883ec60		SUBQ $.file+19(SB), SP						
  diaodu.go:76		0xe23632		66440fd67c2458		MOVQ X15, 0x58(SP)						
  diaodu.go:76		0xe23639		c644241f00		MOVB $0x0, 0x1f(SP)						
  diaodu.go:76		0xe2363e		440f117c2420		MOVUPS X15, 0x20(SP)						
  diaodu.go:76		0xe23644		440f117c2428		MOVUPS X15, 0x28(SP)						
  diaodu.go:76		0xe2364a		440f117c2438		MOVUPS X15, 0x38(SP)						
  diaodu.go:77		0xe23650		90			NOPL								
  type.go:88		0xe23651		be01000000		MOVL $__minor_os_version__(SB), SI				
  type.go:88		0xe23656		488d3d33a57302		LEAQ CAS-Backend/pkg/diapdu.activeMapMu+16(SB), DI		
  type.go:88		0xe2365d		f00fc137		LOCK XADDL SI, 0(DI)						
  type.go:88		0xe23661		ffc6			INCL SI								
  rwmutex.go:70		0xe23663		85f6			TESTL SI, SI							
  rwmutex.go:70		0xe23665		7d10			JGE 0xe23677							
  rwmutex.go:72		0xe23667		488d051ea57302		LEAQ CAS-Backend/pkg/diapdu.activeMapMu+12(SB), AX		
  rwmutex.go:72		0xe2366e		31db			XORL BX, BX							
  rwmutex.go:72		0xe23670		31c9			XORL CX, CX							
  rwmutex.go:72		0xe23672		e8e9de64ff		CALL sync.runtime_SemacquireRWMutexR(SB)			
  diaodu.go:78		0xe23677		488d05e2000000		LEAQ CAS-Backend/pkg/diapdu.GetActiveMapInfo.deferwrap1(SB), AX	
  diaodu.go:78		0xe2367e		4889442448		MOVQ AX, 0x48(SP)						
  diaodu.go:78		0xe23683		488d05f6a47302		LEAQ CAS-Backend/pkg/diapdu.activeMapMu(SB), AX			
  diaodu.go:78		0xe2368a		4889442450		MOVQ AX, 0x50(SP)						
  diaodu.go:78		0xe2368f		488d442448		LEAQ 0x48(SP), AX						
  diaodu.go:78		0xe23694		4889442458		MOVQ AX, 0x58(SP)						
  diaodu.go:78		0xe23699		c644241f01		MOVB $__minor_os_version__(SB), 0x1f(SP)			
  type.go:17		0xe2369e		8b055c9c7302		MOVL CAS-Backend/pkg/diapdu.graphReady(SB), AX			
  type.go:17		0xe236a4		85c0			TESTL AX, AX							
  diaodu.go:79		0xe236a6		740d			JE 0xe236b5							
  diaodu.go:79		0xe236a8		48833d78016f0200	CMPQ CAS-Backend/pkg/diapdu.activeMapPath+8(SB), $0x0		
  diaodu.go:79		0xe236b0		0f95c0			SETNE AL							
  diaodu.go:79		0xe236b3		eb02			JMP 0xe236b7							
  diaodu.go:79		0xe236b5		31c0			XORL AX, AX							
  diaodu.go:80		0xe236b7		440f117c2420		MOVUPS X15, 0x20(SP)						
  diaodu.go:80		0xe236bd		440f117c2428		MOVUPS X15, 0x28(SP)						
  diaodu.go:80		0xe236c3		440f117c2438		MOVUPS X15, 0x38(SP)						
  diaodu.go:81		0xe236c9		88442420		MOVB AL, 0x20(SP)						
  diaodu.go:82		0xe236cd		488b053c016f02		MOVQ CAS-Backend/pkg/diapdu.activeMapName(SB), AX		
  diaodu.go:82		0xe236d4		488b0d3d016f02		MOVQ CAS-Backend/pkg/diapdu.activeMapName+8(SB), CX		
  diaodu.go:82		0xe236db		4889442428		MOVQ AX, 0x28(SP)						
  diaodu.go:82		0xe236e0		48894c2430		MOVQ CX, 0x30(SP)						
  diaodu.go:83		0xe236e5		488b0534016f02		MOVQ CAS-Backend/pkg/diapdu.activeMapPath(SB), AX		
  diaodu.go:83		0xe236ec		488b0d35016f02		MOVQ CAS-Backend/pkg/diapdu.activeMapPath+8(SB), CX		
  diaodu.go:83		0xe236f3		4889442438		MOVQ AX, 0x38(SP)						
  diaodu.go:83		0xe236f8		48894c2440		MOVQ CX, 0x40(SP)						
  diaodu.go:80		0xe236fd		c644241f00		MOVB $0x0, 0x1f(SP)						
  diaodu.go:80		0xe23702		488b542458		MOVQ 0x58(SP), DX						
  diaodu.go:80		0xe23707		488b02			MOVQ 0(DX), AX							
  diaodu.go:80		0xe2370a		ffd0			CALL AX								
  diaodu.go:80		0xe2370c		0fb6442420		MOVZX 0x20(SP), AX						
  diaodu.go:80		0xe23711		488b5c2428		MOVQ 0x28(SP), BX						
  diaodu.go:80		0xe23716		488b4c2430		MOVQ 0x30(SP), CX						
  diaodu.go:80		0xe2371b		488b7c2438		MOVQ 0x38(SP), DI						
  diaodu.go:80		0xe23720		488b742440		MOVQ 0x40(SP), SI						
  diaodu.go:80		0xe23725		4883c460		ADDQ $.file+19(SB), SP						
  diaodu.go:80		0xe23729		5d			POPQ BP								
  diaodu.go:80		0xe2372a		c3			RET								
  diaodu.go:80		0xe2372b		e8506461ff		CALL runtime.deferreturn(SB)					
  diaodu.go:80		0xe23730		0fb6442420		MOVZX 0x20(SP), AX						
  diaodu.go:80		0xe23735		488b5c2428		MOVQ 0x28(SP), BX						
  diaodu.go:80		0xe2373a		488b4c2430		MOVQ 0x30(SP), CX						
  diaodu.go:80		0xe2373f		488b7c2438		MOVQ 0x38(SP), DI						
  diaodu.go:80		0xe23744		488b742440		MOVQ 0x40(SP), SI						
  diaodu.go:80		0xe23749		4883c460		ADDQ $.file+19(SB), SP						
  diaodu.go:80		0xe2374d		5d			POPQ BP								
  diaodu.go:80		0xe2374e		c3			RET								
  diaodu.go:76		0xe2374f		e88c2d65ff		CALL runtime.morestack_noctxt.abi0(SB)				
  diaodu.go:76		0xe23754		e9c7feffff		JMP CAS-Backend/pkg/diapdu.GetActiveMapInfo(SB)			
  :-1			0xe23759		cc			INT $__subsystem__(SB)						
  :-1			0xe2375a		cc			INT $__subsystem__(SB)						
  :-1			0xe2375b		cc			INT $__subsystem__(SB)						
  :-1			0xe2375c		cc			INT $__subsystem__(SB)						
  :-1			0xe2375d		cc			INT $__subsystem__(SB)						
  :-1			0xe2375e		cc			INT $__subsystem__(SB)						
  :-1			0xe2375f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.GetActiveMapInfo.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/diaodu.go
  diaodu.go:78		0xe23760		493b6610		CMPQ SP, 0x10(R14)						
  diaodu.go:78		0xe23764		7630			JBE 0xe23796							
  diaodu.go:78		0xe23766		55			PUSHQ BP							
  diaodu.go:78		0xe23767		4889e5			MOVQ SP, BP							
  diaodu.go:78		0xe2376a		4883ec10		SUBQ $__major_os_version__+10(SB), SP				
  diaodu.go:78		0xe2376e		4d8b6620		MOVQ 0x20(R14), R12						
  diaodu.go:78		0xe23772		4d85e4			TESTQ R12, R12							
  diaodu.go:78		0xe23775		7526			JNE 0xe2379d							
  diaodu.go:78		0xe23777		488b4208		MOVQ 0x8(DX), AX						
  rwmutex.go:118	0xe2377b		bbffffffff		MOVL $-0x1, BX							
  rwmutex.go:118	0xe23780		f00fc15810		LOCK XADDL BX, 0x10(AX)						
  type.go:88		0xe23785		ffcb			DECL BX								
  rwmutex.go:118	0xe23787		85db			TESTL BX, BX							
  rwmutex.go:118	0xe23789		7d05			JGE 0xe23790							
  rwmutex.go:120	0xe2378b		e8b05666ff		CALL sync.(*RWMutex).rUnlockSlow(SB)				
  diaodu.go:78		0xe23790		4883c410		ADDQ $__major_os_version__+10(SB), SP				
  diaodu.go:78		0xe23794		5d			POPQ BP								
  diaodu.go:78		0xe23795		c3			RET								
  diaodu.go:78		0xe23796		e8c52c65ff		CALL runtime.morestack.abi0(SB)					
  diaodu.go:78		0xe2379b		ebc3			JMP CAS-Backend/pkg/diapdu.GetActiveMapInfo.deferwrap1(SB)	
  diaodu.go:78		0xe2379d		4c8d6c2420		LEAQ 0x20(SP), R13						
  diaodu.go:78		0xe237a2		4d392c24		CMPQ 0(R12), R13						
  diaodu.go:78		0xe237a6		75cf			JNE 0xe23777							
  diaodu.go:78		0xe237a8		49892424		MOVQ SP, 0(R12)							
  diaodu.go:78		0xe237ac		ebc9			JMP 0xe23777							
  :-1			0xe237ae		cc			INT $__subsystem__(SB)						
  :-1			0xe237af		cc			INT $__subsystem__(SB)						
  :-1			0xe237b0		cc			INT $__subsystem__(SB)						
  :-1			0xe237b1		cc			INT $__subsystem__(SB)						
  :-1			0xe237b2		cc			INT $__subsystem__(SB)						
  :-1			0xe237b3		cc			INT $__subsystem__(SB)						
  :-1			0xe237b4		cc			INT $__subsystem__(SB)						
  :-1			0xe237b5		cc			INT $__subsystem__(SB)						
  :-1			0xe237b6		cc			INT $__subsystem__(SB)						
  :-1			0xe237b7		cc			INT $__subsystem__(SB)						
  :-1			0xe237b8		cc			INT $__subsystem__(SB)						
  :-1			0xe237b9		cc			INT $__subsystem__(SB)						
  :-1			0xe237ba		cc			INT $__subsystem__(SB)						
  :-1			0xe237bb		cc			INT $__subsystem__(SB)						
  :-1			0xe237bc		cc			INT $__subsystem__(SB)						
  :-1			0xe237bd		cc			INT $__subsystem__(SB)						
  :-1			0xe237be		cc			INT $__subsystem__(SB)						
  :-1			0xe237bf		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.ReadActiveMapFile(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/diaodu.go
  diaodu.go:88		0xe237c0		493b6610		CMPQ SP, 0x10(R14)					
  diaodu.go:88		0xe237c4		0f86b9000000		JBE 0xe23883						
  diaodu.go:88		0xe237ca		55			PUSHQ BP						
  diaodu.go:88		0xe237cb		4889e5			MOVQ SP, BP						
  diaodu.go:88		0xe237ce		4883ec38		SUBQ $__major_os_version__+50(SB), SP			
  diaodu.go:89		0xe237d2		90			NOPL							
  type.go:88		0xe237d3		ba01000000		MOVL $__minor_os_version__(SB), DX			
  type.go:88		0xe237d8		4c8d05b1a37302		LEAQ CAS-Backend/pkg/diapdu.activeMapMu+16(SB), R8	
  type.go:88		0xe237df		f0410fc110		LOCK XADDL DX, 0(R8)					
  type.go:88		0xe237e4		ffc2			INCL DX							
  rwmutex.go:70		0xe237e6		85d2			TESTL DX, DX						
  rwmutex.go:70		0xe237e8		7d17			JGE 0xe23801						
  rwmutex.go:72		0xe237ea		488d059ba37302		LEAQ CAS-Backend/pkg/diapdu.activeMapMu+12(SB), AX	
  rwmutex.go:72		0xe237f1		31db			XORL BX, BX						
  rwmutex.go:72		0xe237f3		31c9			XORL CX, CX						
  rwmutex.go:72		0xe237f5		e866dd64ff		CALL sync.runtime_SemacquireRWMutexR(SB)		
  type.go:88		0xe237fa		4c8d058fa37302		LEAQ CAS-Backend/pkg/diapdu.activeMapMu+16(SB), R8	
  diaodu.go:90		0xe23801		488b1d20006f02		MOVQ CAS-Backend/pkg/diapdu.activeMapPath+8(SB), BX	
  diaodu.go:90		0xe23808		488b0511006f02		MOVQ CAS-Backend/pkg/diapdu.activeMapPath(SB), AX	
  diaodu.go:91		0xe2380f		90			NOPL							
  type.go:88		0xe23810		baffffffff		MOVL $-0x1, DX						
  type.go:88		0xe23815		f0410fc110		LOCK XADDL DX, 0(R8)					
  type.go:88		0xe2381a		ffca			DECL DX							
  type.go:88		0xe2381c		0f1f4000		NOPL 0(AX)						
  rwmutex.go:118	0xe23820		85d2			TESTL DX, DX						
  rwmutex.go:118	0xe23822		7d22			JGE 0xe23846						
  diaodu.go:90		0xe23824		4889442430		MOVQ AX, 0x30(SP)					
  diaodu.go:90		0xe23829		48895c2428		MOVQ BX, 0x28(SP)					
  rwmutex.go:120	0xe2382e		488d054ba37302		LEAQ CAS-Backend/pkg/diapdu.activeMapMu(SB), AX		
  rwmutex.go:120	0xe23835		89d3			MOVL DX, BX						
  rwmutex.go:120	0xe23837		e8045666ff		CALL sync.(*RWMutex).rUnlockSlow(SB)			
  ioutil.go:38		0xe2383c		488b442430		MOVQ 0x30(SP), AX					
  diaodu.go:92		0xe23841		488b5c2428		MOVQ 0x28(SP), BX					
  diaodu.go:92		0xe23846		4885db			TESTQ BX, BX						
  diaodu.go:92		0xe23849		752d			JNE 0xe23878						
  diaodu.go:93		0xe2384b		488d05f0113600		LEAQ go:string.*+116026(SB), AX				
  diaodu.go:93		0xe23852		bb18000000		MOVL $__major_os_version__+18(SB), BX			
  diaodu.go:93		0xe23857		31c9			XORL CX, CX						
  diaodu.go:93		0xe23859		31ff			XORL DI, DI						
  diaodu.go:93		0xe2385b		4889fe			MOVQ DI, SI						
  diaodu.go:93		0xe2385e		6690			NOPW							
  diaodu.go:93		0xe23860		e85b8b6fff		CALL fmt.Errorf(SB)					
  diaodu.go:93		0xe23865		31c9			XORL CX, CX						
  diaodu.go:93		0xe23867		4889c7			MOVQ AX, DI						
  diaodu.go:93		0xe2386a		4889de			MOVQ BX, SI						
  diaodu.go:93		0xe2386d		31c0			XORL AX, AX						
  diaodu.go:93		0xe2386f		4889cb			MOVQ CX, BX						
  diaodu.go:93		0xe23872		4883c438		ADDQ $__major_os_version__+50(SB), SP			
  diaodu.go:93		0xe23876		5d			POPQ BP							
  diaodu.go:93		0xe23877		c3			RET							
  ioutil.go:38		0xe23878		e803b76aff		CALL os.ReadFile(SB)					
  diaodu.go:95		0xe2387d		4883c438		ADDQ $__major_os_version__+50(SB), SP			
  diaodu.go:95		0xe23881		5d			POPQ BP							
  diaodu.go:95		0xe23882		c3			RET							
  diaodu.go:88		0xe23883		e8582c65ff		CALL runtime.morestack_noctxt.abi0(SB)			
  diaodu.go:88		0xe23888		e933ffffff		JMP CAS-Backend/pkg/diapdu.ReadActiveMapFile(SB)	
  :-1			0xe2388d		cc			INT $__subsystem__(SB)					
  :-1			0xe2388e		cc			INT $__subsystem__(SB)					
  :-1			0xe2388f		cc			INT $__subsystem__(SB)					
  :-1			0xe23890		cc			INT $__subsystem__(SB)					
  :-1			0xe23891		cc			INT $__subsystem__(SB)					
  :-1			0xe23892		cc			INT $__subsystem__(SB)					
  :-1			0xe23893		cc			INT $__subsystem__(SB)					
  :-1			0xe23894		cc			INT $__subsystem__(SB)					
  :-1			0xe23895		cc			INT $__subsystem__(SB)					
  :-1			0xe23896		cc			INT $__subsystem__(SB)					
  :-1			0xe23897		cc			INT $__subsystem__(SB)					
  :-1			0xe23898		cc			INT $__subsystem__(SB)					
  :-1			0xe23899		cc			INT $__subsystem__(SB)					
  :-1			0xe2389a		cc			INT $__subsystem__(SB)					
  :-1			0xe2389b		cc			INT $__subsystem__(SB)					
  :-1			0xe2389c		cc			INT $__subsystem__(SB)					
  :-1			0xe2389d		cc			INT $__subsystem__(SB)					
  :-1			0xe2389e		cc			INT $__subsystem__(SB)					
  :-1			0xe2389f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.Initdiaodu(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/diaodu.go
  diaodu.go:99		0xe238a0		493b6610		CMPQ SP, 0x10(R14)				
  diaodu.go:99		0xe238a4		7646			JBE 0xe238ec					
  diaodu.go:99		0xe238a6		55			PUSHQ BP					
  diaodu.go:99		0xe238a7		4889e5			MOVQ SP, BP					
  diaodu.go:99		0xe238aa		4883ec20		SUBQ $__major_os_version__+26(SB), SP		
  diaodu.go:100		0xe238ae		488d05ab882900		LEAQ runtime.types+880992(SB), AX		
  diaodu.go:100		0xe238b5		e8e6de5eff		CALL runtime.newobject(SB)			
  diaodu.go:100		0xe238ba		e861010000		CALL CAS-Backend/pkg/diapdu.setGraph(SB)	
  diaodu.go:101		0xe238bf		90			NOPL						
  type.go:20		0xe238c0		31c9			XORL CX, CX					
  type.go:20		0xe238c2		488d15379a7302		LEAQ CAS-Backend/pkg/diapdu.graphReady(SB), DX	
  type.go:20		0xe238c9		870a			XCHGL CX, 0(DX)					
  diaodu.go:102		0xe238cb		31c0			XORL AX, AX					
  diaodu.go:102		0xe238cd		31db			XORL BX, BX					
  diaodu.go:102		0xe238cf		4889c1			MOVQ AX, CX					
  diaodu.go:102		0xe238d2		4889df			MOVQ BX, DI					
  diaodu.go:102		0xe238d5		e866fcffff		CALL CAS-Backend/pkg/diapdu.setActiveMap(SB)	
  diaodu.go:103		0xe238da		488d059f37eb01		LEAQ go:func.*+4248(SB), AX			
  diaodu.go:103		0xe238e1		e85a3c62ff		CALL runtime.newproc(SB)			
  diaodu.go:104		0xe238e6		4883c420		ADDQ $__major_os_version__+26(SB), SP		
  diaodu.go:104		0xe238ea		5d			POPQ BP						
  diaodu.go:104		0xe238eb		c3			RET						
  diaodu.go:99		0xe238ec		e8ef2b65ff		CALL runtime.morestack_noctxt.abi0(SB)		
  diaodu.go:99		0xe238f1		ebad			JMP CAS-Backend/pkg/diapdu.Initdiaodu(SB)	
  :-1			0xe238f3		cc			INT $__subsystem__(SB)				
  :-1			0xe238f4		cc			INT $__subsystem__(SB)				
  :-1			0xe238f5		cc			INT $__subsystem__(SB)				
  :-1			0xe238f6		cc			INT $__subsystem__(SB)				
  :-1			0xe238f7		cc			INT $__subsystem__(SB)				
  :-1			0xe238f8		cc			INT $__subsystem__(SB)				
  :-1			0xe238f9		cc			INT $__subsystem__(SB)				
  :-1			0xe238fa		cc			INT $__subsystem__(SB)				
  :-1			0xe238fb		cc			INT $__subsystem__(SB)				
  :-1			0xe238fc		cc			INT $__subsystem__(SB)				
  :-1			0xe238fd		cc			INT $__subsystem__(SB)				
  :-1			0xe238fe		cc			INT $__subsystem__(SB)				
  :-1			0xe238ff		cc			INT $__subsystem__(SB)				

TEXT CAS-Backend/pkg/diapdu.GetGraph(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/diaodu.go
  diaodu.go:112		0xe23900		493b6610		CMPQ SP, 0x10(R14)					
  diaodu.go:112		0xe23904		0f86a6000000		JBE 0xe239b0						
  diaodu.go:112		0xe2390a		55			PUSHQ BP						
  diaodu.go:112		0xe2390b		4889e5			MOVQ SP, BP						
  diaodu.go:112		0xe2390e		4883ec40		SUBQ $__major_os_version__+58(SB), SP			
  diaodu.go:112		0xe23912		66440fd67c2438		MOVQ X15, 0x38(SP)					
  diaodu.go:112		0xe23919		c644241f00		MOVB $0x0, 0x1f(SP)					
  diaodu.go:112		0xe2391e		48c744242000000000	MOVQ $0x0, 0x20(SP)					
  diaodu.go:113		0xe23927		90			NOPL							
  type.go:88		0xe23928		be01000000		MOVL $__minor_os_version__(SB), SI			
  type.go:88		0xe2392d		488d3d3ca27302		LEAQ CAS-Backend/pkg/diapdu.graphMu+16(SB), DI		
  type.go:88		0xe23934		f00fc137		LOCK XADDL SI, 0(DI)					
  type.go:88		0xe23938		ffc6			INCL SI							
  rwmutex.go:70		0xe2393a		85f6			TESTL SI, SI						
  rwmutex.go:70		0xe2393c		7d10			JGE 0xe2394e						
  rwmutex.go:72		0xe2393e		488d0527a27302		LEAQ CAS-Backend/pkg/diapdu.graphMu+12(SB), AX		
  rwmutex.go:72		0xe23945		31db			XORL BX, BX						
  rwmutex.go:72		0xe23947		31c9			XORL CX, CX						
  rwmutex.go:72		0xe23949		e812dc64ff		CALL sync.runtime_SemacquireRWMutexR(SB)		
  diaodu.go:114		0xe2394e		488d056b000000		LEAQ CAS-Backend/pkg/diapdu.GetGraph.deferwrap1(SB), AX	
  diaodu.go:114		0xe23955		4889442428		MOVQ AX, 0x28(SP)					
  diaodu.go:114		0xe2395a		488d05ffa17302		LEAQ CAS-Backend/pkg/diapdu.graphMu(SB), AX		
  diaodu.go:114		0xe23961		4889442430		MOVQ AX, 0x30(SP)					
  diaodu.go:114		0xe23966		488d442428		LEAQ 0x28(SP), AX					
  diaodu.go:114		0xe2396b		4889442438		MOVQ AX, 0x38(SP)					
  diaodu.go:114		0xe23970		c644241f01		MOVB $__minor_os_version__(SB), 0x1f(SP)		
  diaodu.go:115		0xe23975		488b05cce66e02		MOVQ CAS-Backend/pkg/diapdu.Graph_new(SB), AX		
  diaodu.go:115		0xe2397c		4889442420		MOVQ AX, 0x20(SP)					
  diaodu.go:115		0xe23981		c644241f00		MOVB $0x0, 0x1f(SP)					
  diaodu.go:115		0xe23986		488b542438		MOVQ 0x38(SP), DX					
  diaodu.go:115		0xe2398b		488b02			MOVQ 0(DX), AX						
  diaodu.go:115		0xe2398e		ffd0			CALL AX							
  diaodu.go:115		0xe23990		488b442420		MOVQ 0x20(SP), AX					
  diaodu.go:115		0xe23995		4883c440		ADDQ $__major_os_version__+58(SB), SP			
  diaodu.go:115		0xe23999		5d			POPQ BP							
  diaodu.go:115		0xe2399a		c3			RET							
  diaodu.go:115		0xe2399b		0f1f440000		NOPL 0(AX)(AX*1)					
  diaodu.go:115		0xe239a0		e8db6161ff		CALL runtime.deferreturn(SB)				
  diaodu.go:115		0xe239a5		488b442420		MOVQ 0x20(SP), AX					
  diaodu.go:115		0xe239aa		4883c440		ADDQ $__major_os_version__+58(SB), SP			
  diaodu.go:115		0xe239ae		5d			POPQ BP							
  diaodu.go:115		0xe239af		c3			RET							
  diaodu.go:112		0xe239b0		e82b2b65ff		CALL runtime.morestack_noctxt.abi0(SB)			
  diaodu.go:112		0xe239b5		e946ffffff		JMP CAS-Backend/pkg/diapdu.GetGraph(SB)			
  :-1			0xe239ba		cc			INT $__subsystem__(SB)					
  :-1			0xe239bb		cc			INT $__subsystem__(SB)					
  :-1			0xe239bc		cc			INT $__subsystem__(SB)					
  :-1			0xe239bd		cc			INT $__subsystem__(SB)					
  :-1			0xe239be		cc			INT $__subsystem__(SB)					
  :-1			0xe239bf		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.GetGraph.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/diaodu.go
  diaodu.go:114		0xe239c0		493b6610		CMPQ SP, 0x10(R14)					
  diaodu.go:114		0xe239c4		7630			JBE 0xe239f6						
  diaodu.go:114		0xe239c6		55			PUSHQ BP						
  diaodu.go:114		0xe239c7		4889e5			MOVQ SP, BP						
  diaodu.go:114		0xe239ca		4883ec10		SUBQ $__major_os_version__+10(SB), SP			
  diaodu.go:114		0xe239ce		4d8b6620		MOVQ 0x20(R14), R12					
  diaodu.go:114		0xe239d2		4d85e4			TESTQ R12, R12						
  diaodu.go:114		0xe239d5		7526			JNE 0xe239fd						
  diaodu.go:114		0xe239d7		488b4208		MOVQ 0x8(DX), AX					
  rwmutex.go:118	0xe239db		bbffffffff		MOVL $-0x1, BX						
  rwmutex.go:118	0xe239e0		f00fc15810		LOCK XADDL BX, 0x10(AX)					
  type.go:88		0xe239e5		ffcb			DECL BX							
  rwmutex.go:118	0xe239e7		85db			TESTL BX, BX						
  rwmutex.go:118	0xe239e9		7d05			JGE 0xe239f0						
  rwmutex.go:120	0xe239eb		e8505466ff		CALL sync.(*RWMutex).rUnlockSlow(SB)			
  diaodu.go:114		0xe239f0		4883c410		ADDQ $__major_os_version__+10(SB), SP			
  diaodu.go:114		0xe239f4		5d			POPQ BP							
  diaodu.go:114		0xe239f5		c3			RET							
  diaodu.go:114		0xe239f6		e8652a65ff		CALL runtime.morestack.abi0(SB)				
  diaodu.go:114		0xe239fb		ebc3			JMP CAS-Backend/pkg/diapdu.GetGraph.deferwrap1(SB)	
  diaodu.go:114		0xe239fd		4c8d6c2420		LEAQ 0x20(SP), R13					
  diaodu.go:114		0xe23a02		4d392c24		CMPQ 0(R12), R13					
  diaodu.go:114		0xe23a06		75cf			JNE 0xe239d7						
  diaodu.go:114		0xe23a08		49892424		MOVQ SP, 0(R12)						
  diaodu.go:114		0xe23a0c		ebc9			JMP 0xe239d7						
  :-1			0xe23a0e		cc			INT $__subsystem__(SB)					
  :-1			0xe23a0f		cc			INT $__subsystem__(SB)					
  :-1			0xe23a10		cc			INT $__subsystem__(SB)					
  :-1			0xe23a11		cc			INT $__subsystem__(SB)					
  :-1			0xe23a12		cc			INT $__subsystem__(SB)					
  :-1			0xe23a13		cc			INT $__subsystem__(SB)					
  :-1			0xe23a14		cc			INT $__subsystem__(SB)					
  :-1			0xe23a15		cc			INT $__subsystem__(SB)					
  :-1			0xe23a16		cc			INT $__subsystem__(SB)					
  :-1			0xe23a17		cc			INT $__subsystem__(SB)					
  :-1			0xe23a18		cc			INT $__subsystem__(SB)					
  :-1			0xe23a19		cc			INT $__subsystem__(SB)					
  :-1			0xe23a1a		cc			INT $__subsystem__(SB)					
  :-1			0xe23a1b		cc			INT $__subsystem__(SB)					
  :-1			0xe23a1c		cc			INT $__subsystem__(SB)					
  :-1			0xe23a1d		cc			INT $__subsystem__(SB)					
  :-1			0xe23a1e		cc			INT $__subsystem__(SB)					
  :-1			0xe23a1f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.setGraph(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/diaodu.go
  diaodu.go:118		0xe23a20		493b6610		CMPQ SP, 0x10(R14)				
  diaodu.go:118		0xe23a24		765b			JBE 0xe23a81					
  diaodu.go:118		0xe23a26		55			PUSHQ BP					
  diaodu.go:118		0xe23a27		4889e5			MOVQ SP, BP					
  diaodu.go:118		0xe23a2a		4883ec08		SUBQ $__major_os_version__+2(SB), SP		
  diaodu.go:122		0xe23a2e		4889442418		MOVQ AX, 0x18(SP)				
  diaodu.go:119		0xe23a33		488d0526a17302		LEAQ CAS-Backend/pkg/diapdu.graphMu(SB), AX	
  diaodu.go:119		0xe23a3a		e8815466ff		CALL sync.(*RWMutex).Lock(SB)			
  diaodu.go:120		0xe23a3f		833d0aa1730200		CMPL runtime.writeBarrier(SB), $0x0		
  diaodu.go:120		0xe23a46		7507			JNE 0xe23a4f					
  diaodu.go:120		0xe23a48		488b4c2418		MOVQ 0x18(SP), CX				
  diaodu.go:120		0xe23a4d		eb18			JMP 0xe23a67					
  diaodu.go:120		0xe23a4f		e8ec4965ff		CALL runtime.gcWriteBarrier2(SB)		
  diaodu.go:120		0xe23a54		488b4c2418		MOVQ 0x18(SP), CX				
  diaodu.go:120		0xe23a59		49890b			MOVQ CX, 0(R11)					
  diaodu.go:120		0xe23a5c		488b15e5e56e02		MOVQ CAS-Backend/pkg/diapdu.Graph_new(SB), DX	
  diaodu.go:120		0xe23a63		49895308		MOVQ DX, 0x8(R11)				
  diaodu.go:120		0xe23a67		48890ddae56e02		MOVQ CX, CAS-Backend/pkg/diapdu.Graph_new(SB)	
  diaodu.go:121		0xe23a6e		488d05eba07302		LEAQ CAS-Backend/pkg/diapdu.graphMu(SB), AX	
  diaodu.go:121		0xe23a75		e8a65566ff		CALL sync.(*RWMutex).Unlock(SB)			
  diaodu.go:122		0xe23a7a		4883c408		ADDQ $__major_os_version__+2(SB), SP		
  diaodu.go:122		0xe23a7e		5d			POPQ BP						
  diaodu.go:122		0xe23a7f		90			NOPL						
  diaodu.go:122		0xe23a80		c3			RET						
  diaodu.go:118		0xe23a81		4889442408		MOVQ AX, 0x8(SP)				
  diaodu.go:118		0xe23a86		e8552a65ff		CALL runtime.morestack_noctxt.abi0(SB)		
  diaodu.go:118		0xe23a8b		488b442408		MOVQ 0x8(SP), AX				
  diaodu.go:118		0xe23a90		eb8e			JMP CAS-Backend/pkg/diapdu.setGraph(SB)		
  :-1			0xe23a92		cc			INT $__subsystem__(SB)				
  :-1			0xe23a93		cc			INT $__subsystem__(SB)				
  :-1			0xe23a94		cc			INT $__subsystem__(SB)				
  :-1			0xe23a95		cc			INT $__subsystem__(SB)				
  :-1			0xe23a96		cc			INT $__subsystem__(SB)				
  :-1			0xe23a97		cc			INT $__subsystem__(SB)				
  :-1			0xe23a98		cc			INT $__subsystem__(SB)				
  :-1			0xe23a99		cc			INT $__subsystem__(SB)				
  :-1			0xe23a9a		cc			INT $__subsystem__(SB)				
  :-1			0xe23a9b		cc			INT $__subsystem__(SB)				
  :-1			0xe23a9c		cc			INT $__subsystem__(SB)				
  :-1			0xe23a9d		cc			INT $__subsystem__(SB)				
  :-1			0xe23a9e		cc			INT $__subsystem__(SB)				
  :-1			0xe23a9f		cc			INT $__subsystem__(SB)				

TEXT CAS-Backend/pkg/diapdu.resolveLocalMapFilePath(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/diaodu.go
  diaodu.go:125		0xe23aa0		4c8d6424d0		LEAQ -0x30(SP), R12					
  diaodu.go:125		0xe23aa5		4d3b6610		CMPQ R12, 0x10(R14)					
  diaodu.go:125		0xe23aa9		0f867f020000		JBE 0xe23d2e						
  diaodu.go:125		0xe23aaf		55			PUSHQ BP						
  diaodu.go:125		0xe23ab0		4889e5			MOVQ SP, BP						
  diaodu.go:125		0xe23ab3		4881eca8000000		SUBQ $.file+91(SB), SP					
  diaodu.go:125		0xe23aba		48898424b8000000	MOVQ AX, 0xb8(SP)					
  strings.go:21		0xe23ac2		4889bc24d0000000	MOVQ DI, 0xd0(SP)					
  strings.go:21		0xe23aca		48898c24c8000000	MOVQ CX, 0xc8(SP)					
  diaodu.go:126		0xe23ad2		e8e9ee6bff		CALL strings.TrimSpace(SB)				
  diaodu.go:126		0xe23ad7		4889442478		MOVQ AX, 0x78(SP)					
  strings.go:1082	0xe23adc		90			NOPL							
  strings.go:1082	0xe23add		0f1f00			NOPL 0(AX)						
  strings.go:21		0xe23ae0		4883fb05		CMPQ BX, $__subsystem__+2(SB)				
  strings.go:21		0xe23ae4		7d04			JGE 0xe23aea						
  strings.go:21		0xe23ae6		31c9			XORL CX, CX						
  strings.go:21		0xe23ae8		eb2d			JMP 0xe23b17						
  diaodu.go:126		0xe23aea		48895c2458		MOVQ BX, 0x58(SP)					
  strings.go:21		0xe23aef		488d1403		LEAQ 0(BX)(AX*1), DX					
  strings.go:21		0xe23af3		488d52fb		LEAQ -0x5(DX), DX					
  strings.go:21		0xe23af7		b905000000		MOVL $__subsystem__+2(SB), CX				
  strings.go:21		0xe23afc		4889d0			MOVQ DX, AX						
  strings.go:21		0xe23aff		488d1dc06a3400		LEAQ go:string.*+8382(SB), BX				
  strings.go:21		0xe23b06		e855f35dff		CALL runtime.memequal(SB)				
  strings.go:138	0xe23b0b		488b5c2458		MOVQ 0x58(SP), BX					
  strings.go:137	0xe23b10		89c1			MOVL AX, CX						
  diaodu.go:133		0xe23b12		488b442478		MOVQ 0x78(SP), AX					
  strings.go:137	0xe23b17		84c9			TESTL CL, CL						
  strings.go:137	0xe23b19		740f			JE 0xe23b2a						
  strings.go:138	0xe23b1b		488d4bfb		LEAQ -0x5(BX), CX					
  strings.go:138	0xe23b1f		90			NOPL							
  strings.go:138	0xe23b20		4839cb			CMPQ BX, CX						
  strings.go:138	0xe23b23		7308			JAE 0xe23b2d						
  strings.go:138	0xe23b25		e9fb010000		JMP 0xe23d25						
  diaodu.go:126		0xe23b2a		4889d9			MOVQ BX, CX						
  diaodu.go:126		0xe23b2d		48894c2450		MOVQ CX, 0x50(SP)					
  diaodu.go:127		0xe23b32		488b8424c8000000	MOVQ 0xc8(SP), AX					
  diaodu.go:127		0xe23b3a		488b9c24d0000000	MOVQ 0xd0(SP), BX					
  diaodu.go:127		0xe23b42		e879ee6bff		CALL strings.TrimSpace(SB)				
  diaodu.go:128		0xe23b47		4885db			TESTQ BX, BX						
  diaodu.go:128		0xe23b4a		7430			JE 0xe23b7c						
  diaodu.go:129		0xe23b4c		488b542450		MOVQ 0x50(SP), DX					
  diaodu.go:129		0xe23b51		4885d2			TESTQ DX, DX						
  diaodu.go:129		0xe23b54		751c			JNE 0xe23b72						
  diaodu.go:127		0xe23b56		48895c2460		MOVQ BX, 0x60(SP)					
  diaodu.go:127		0xe23b5b		4889842480000000	MOVQ AX, 0x80(SP)					
  diaodu.go:130		0xe23b63		90			NOPL							
  path.go:456		0xe23b64		e8177e69ff		CALL internal/filepathlite.Base(SB)			
  path.go:216		0xe23b69		488d4bff		LEAQ -0x1(BX), CX					
  path.go:216		0xe23b6d		e9cf000000		JMP 0xe23c41						
  diaodu.go:133		0xe23b72		488b4c2478		MOVQ 0x78(SP), CX					
  diaodu.go:129		0xe23b77		e9aa000000		JMP 0xe23c26						
  diaodu.go:135		0xe23b7c		488b4c2450		MOVQ 0x50(SP), CX					
  diaodu.go:135		0xe23b81		4885c9			TESTQ CX, CX						
  diaodu.go:135		0xe23b84		0f8489000000		JE 0xe23c13						
  diaodu.go:136		0xe23b8a		440f11bc2488000000	MOVUPS X15, 0x88(SP)					
  diaodu.go:136		0xe23b93		440f11bc2498000000	MOVUPS X15, 0x98(SP)					
  diaodu.go:136		0xe23b9c		488b1575221900		MOVQ CAS-Backend/pkg/diapdu.diaoduMapFileDir+8(SB), DX	
  diaodu.go:136		0xe23ba3		4c8b0566221900		MOVQ CAS-Backend/pkg/diapdu.diaoduMapFileDir(SB), R8	
  diaodu.go:136		0xe23baa		4889942490000000	MOVQ DX, 0x90(SP)					
  diaodu.go:136		0xe23bb2		4c89842488000000	MOVQ R8, 0x88(SP)					
  diaodu.go:136		0xe23bba		488d442428		LEAQ 0x28(SP), AX					
  diaodu.go:136		0xe23bbf		488b5c2478		MOVQ 0x78(SP), BX					
  diaodu.go:136		0xe23bc4		488d3dfb693400		LEAQ go:string.*+8382(SB), DI				
  diaodu.go:136		0xe23bcb		be05000000		MOVL $__subsystem__+2(SB), SI				
  diaodu.go:136		0xe23bd0		e82b1863ff		CALL runtime.concatstring2(SB)				
  diaodu.go:136		0xe23bd5		48899c24a0000000	MOVQ BX, 0xa0(SP)					
  diaodu.go:136		0xe23bdd		4889842498000000	MOVQ AX, 0x98(SP)					
  path.go:131		0xe23be5		488d842488000000	LEAQ 0x88(SP), AX					
  path.go:131		0xe23bed		bb02000000		MOVL $__minor_os_version__+1(SB), BX			
  path.go:131		0xe23bf2		4889d9			MOVQ BX, CX						
  path.go:131		0xe23bf5		e8860b6cff		CALL path/filepath.join(SB)				
  diaodu.go:136		0xe23bfa		4889c1			MOVQ AX, CX						
  diaodu.go:136		0xe23bfd		4889df			MOVQ BX, DI						
  diaodu.go:136		0xe23c00		488b442478		MOVQ 0x78(SP), AX					
  diaodu.go:136		0xe23c05		488b5c2450		MOVQ 0x50(SP), BX					
  diaodu.go:136		0xe23c0a		4881c4a8000000		ADDQ $.file+91(SB), SP					
  diaodu.go:136		0xe23c11		5d			POPQ BP							
  diaodu.go:136		0xe23c12		c3			RET							
  diaodu.go:138		0xe23c13		31c0			XORL AX, AX						
  diaodu.go:138		0xe23c15		31db			XORL BX, BX						
  diaodu.go:138		0xe23c17		4889c1			MOVQ AX, CX						
  diaodu.go:138		0xe23c1a		4889df			MOVQ BX, DI						
  diaodu.go:138		0xe23c1d		4881c4a8000000		ADDQ $.file+91(SB), SP					
  diaodu.go:138		0xe23c24		5d			POPQ BP							
  diaodu.go:138		0xe23c25		c3			RET							
  diaodu.go:133		0xe23c26		4889df			MOVQ BX, DI						
  diaodu.go:133		0xe23c29		4889d3			MOVQ DX, BX						
  diaodu.go:127		0xe23c2c		4889c2			MOVQ AX, DX						
  diaodu.go:133		0xe23c2f		4889c8			MOVQ CX, AX						
  diaodu.go:133		0xe23c32		4889d1			MOVQ DX, CX						
  diaodu.go:133		0xe23c35		4881c4a8000000		ADDQ $.file+91(SB), SP					
  diaodu.go:133		0xe23c3c		5d			POPQ BP							
  diaodu.go:133		0xe23c3d		c3			RET							
  path.go:216		0xe23c3e		48ffc9			DECQ CX							
  path.go:216		0xe23c41		4885c9			TESTQ CX, CX						
  path.go:216		0xe23c44		7c32			JL 0xe23c78						
  path.go:216		0xe23c46		0fb63408		MOVZX 0(AX)(CX*1), SI					
  path_windows.go:19	0xe23c4a		4080fe5c		CMPL SI, $.file+15(SB)					
  path_windows.go:19	0xe23c4e		7428			JE 0xe23c78						
  path_windows.go:19	0xe23c50		4080fe2f		CMPL SI, $__major_os_version__+41(SB)			
  path.go:216		0xe23c54		7422			JE 0xe23c78						
  path.go:217		0xe23c56		4080fe2e		CMPL SI, $__major_os_version__+40(SB)			
  path.go:217		0xe23c5a		75e2			JNE 0xe23c3e						
  path.go:218		0xe23c5c		4889da			MOVQ BX, DX						
  path.go:218		0xe23c5f		4829cb			SUBQ CX, BX						
  path.go:218		0xe23c62		4889de			MOVQ BX, SI						
  path.go:218		0xe23c65		48f7db			NEGQ BX							
  path.go:218		0xe23c68		48c1fb3f		SARQ $__major_os_version__+57(SB), BX			
  path.go:218		0xe23c6c		4821d9			ANDQ BX, CX						
  path.go:218		0xe23c6f		4c8d0401		LEAQ 0(CX)(AX*1), R8					
  strings.go:21		0xe23c73		4889d3			MOVQ DX, BX						
  path.go:139		0xe23c76		eb05			JMP 0xe23c7d						
  path.go:139		0xe23c78		31f6			XORL SI, SI						
  path.go:139		0xe23c7a		4531c0			XORL R8, R8						
  strings.go:1082	0xe23c7d		90			NOPL							
  strings.go:1082	0xe23c7e		6690			NOPW							
  strings.go:21		0xe23c80		4839f3			CMPQ BX, SI						
  strings.go:21		0xe23c83		7c5d			JL 0xe23ce2						
  strings.go:21		0xe23c85		4889d9			MOVQ BX, CX						
  strings.go:21		0xe23c88		4829f3			SUBQ SI, BX						
  strings.go:21		0xe23c8b		4839d9			CMPQ CX, BX						
  strings.go:21		0xe23c8e		0f8284000000		JB 0xe23d18						
  strings.go:21		0xe23c94		4889ca			MOVQ CX, DX						
  strings.go:21		0xe23c97		4829d9			SUBQ BX, CX						
  strings.go:21		0xe23c9a		4989c9			MOVQ CX, R9						
  strings.go:21		0xe23c9d		49f7d9			NEGQ R9							
  strings.go:21		0xe23ca0		49c1f93f		SARQ $__major_os_version__+57(SB), R9			
  strings.go:21		0xe23ca4		4921d9			ANDQ BX, R9						
  strings.go:21		0xe23ca7		4901c1			ADDQ AX, R9						
  strings.go:21		0xe23caa		4839ce			CMPQ SI, CX						
  strings.go:21		0xe23cad		7404			JE 0xe23cb3						
  strings.go:21		0xe23caf		31c9			XORL CX, CX						
  strings.go:21		0xe23cb1		eb34			JMP 0xe23ce7						
  path.go:456		0xe23cb3		4889542468		MOVQ DX, 0x68(SP)					
  path.go:456		0xe23cb8		4889442470		MOVQ AX, 0x70(SP)					
  diaodu.go:131		0xe23cbd		4889742448		MOVQ SI, 0x48(SP)					
  strings.go:21		0xe23cc2		4c89c8			MOVQ R9, AX						
  strings.go:21		0xe23cc5		4c89c3			MOVQ R8, BX						
  strings.go:21		0xe23cc8		e893f15dff		CALL runtime.memequal(SB)				
  strings.go:138	0xe23ccd		488b542468		MOVQ 0x68(SP), DX					
  strings.go:138	0xe23cd2		488b742448		MOVQ 0x48(SP), SI					
  strings.go:21		0xe23cd7		89c1			MOVL AX, CX						
  diaodu.go:133		0xe23cd9		488b442470		MOVQ 0x70(SP), AX					
  diaodu.go:133		0xe23cde		6690			NOPW							
  strings.go:21		0xe23ce0		eb05			JMP 0xe23ce7						
  strings.go:138	0xe23ce2		4889da			MOVQ BX, DX						
  strings.go:138	0xe23ce5		31c9			XORL CX, CX						
  strings.go:137	0xe23ce7		84c9			TESTL CL, CL						
  strings.go:137	0xe23ce9		740d			JE 0xe23cf8						
  strings.go:138	0xe23ceb		4889d1			MOVQ DX, CX						
  strings.go:138	0xe23cee		4829f1			SUBQ SI, CX						
  strings.go:138	0xe23cf1		4839ca			CMPQ DX, CX						
  strings.go:138	0xe23cf4		7305			JAE 0xe23cfb						
  strings.go:138	0xe23cf6		eb1b			JMP 0xe23d13						
  diaodu.go:131		0xe23cf8		4889d1			MOVQ DX, CX						
  diaodu.go:133		0xe23cfb		488b5c2460		MOVQ 0x60(SP), BX					
  diaodu.go:133		0xe23d00		4889ca			MOVQ CX, DX						
  diaodu.go:133		0xe23d03		4889c1			MOVQ AX, CX						
  diaodu.go:133		0xe23d06		488b842480000000	MOVQ 0x80(SP), AX					
  diaodu.go:131		0xe23d0e		e913ffffff		JMP 0xe23c26						
  strings.go:138	0xe23d13		e8084b65ff		CALL runtime.panicSliceAlen(SB)				
  strings.go:21		0xe23d18		4889d8			MOVQ BX, AX						
  strings.go:21		0xe23d1b		0f1f440000		NOPL 0(AX)(AX*1)					
  strings.go:21		0xe23d20		e87b4b65ff		CALL runtime.panicSliceB(SB)				
  strings.go:138	0xe23d25		4889da			MOVQ BX, DX						
  strings.go:138	0xe23d28		e8f34a65ff		CALL runtime.panicSliceAlen(SB)				
  strings.go:138	0xe23d2d		90			NOPL							
  diaodu.go:125		0xe23d2e		4889442408		MOVQ AX, 0x8(SP)					
  diaodu.go:125		0xe23d33		48895c2410		MOVQ BX, 0x10(SP)					
  diaodu.go:125		0xe23d38		48894c2418		MOVQ CX, 0x18(SP)					
  diaodu.go:125		0xe23d3d		48897c2420		MOVQ DI, 0x20(SP)					
  diaodu.go:125		0xe23d42		e8992765ff		CALL runtime.morestack_noctxt.abi0(SB)			
  diaodu.go:125		0xe23d47		488b442408		MOVQ 0x8(SP), AX					
  diaodu.go:125		0xe23d4c		488b5c2410		MOVQ 0x10(SP), BX					
  diaodu.go:125		0xe23d51		488b4c2418		MOVQ 0x18(SP), CX					
  diaodu.go:125		0xe23d56		488b7c2420		MOVQ 0x20(SP), DI					
  diaodu.go:125		0xe23d5b		0f1f440000		NOPL 0(AX)(AX*1)					
  diaodu.go:125		0xe23d60		e93bfdffff		JMP CAS-Backend/pkg/diapdu.resolveLocalMapFilePath(SB)	
  :-1			0xe23d65		cc			INT $__subsystem__(SB)					
  :-1			0xe23d66		cc			INT $__subsystem__(SB)					
  :-1			0xe23d67		cc			INT $__subsystem__(SB)					
  :-1			0xe23d68		cc			INT $__subsystem__(SB)					
  :-1			0xe23d69		cc			INT $__subsystem__(SB)					
  :-1			0xe23d6a		cc			INT $__subsystem__(SB)					
  :-1			0xe23d6b		cc			INT $__subsystem__(SB)					
  :-1			0xe23d6c		cc			INT $__subsystem__(SB)					
  :-1			0xe23d6d		cc			INT $__subsystem__(SB)					
  :-1			0xe23d6e		cc			INT $__subsystem__(SB)					
  :-1			0xe23d6f		cc			INT $__subsystem__(SB)					
  :-1			0xe23d70		cc			INT $__subsystem__(SB)					
  :-1			0xe23d71		cc			INT $__subsystem__(SB)					
  :-1			0xe23d72		cc			INT $__subsystem__(SB)					
  :-1			0xe23d73		cc			INT $__subsystem__(SB)					
  :-1			0xe23d74		cc			INT $__subsystem__(SB)					
  :-1			0xe23d75		cc			INT $__subsystem__(SB)					
  :-1			0xe23d76		cc			INT $__subsystem__(SB)					
  :-1			0xe23d77		cc			INT $__subsystem__(SB)					
  :-1			0xe23d78		cc			INT $__subsystem__(SB)					
  :-1			0xe23d79		cc			INT $__subsystem__(SB)					
  :-1			0xe23d7a		cc			INT $__subsystem__(SB)					
  :-1			0xe23d7b		cc			INT $__subsystem__(SB)					
  :-1			0xe23d7c		cc			INT $__subsystem__(SB)					
  :-1			0xe23d7d		cc			INT $__subsystem__(SB)					
  :-1			0xe23d7e		cc			INT $__subsystem__(SB)					
  :-1			0xe23d7f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.ReloadActiveMapFromLocalFile(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/diaodu.go
  diaodu.go:142		0xe23d80		4c8d642498		LEAQ -0x68(SP), R12						
  diaodu.go:142		0xe23d85		4d3b6610		CMPQ R12, 0x10(R14)						
  diaodu.go:142		0xe23d89		0f8665020000		JBE 0xe23ff4							
  diaodu.go:142		0xe23d8f		55			PUSHQ BP							
  diaodu.go:142		0xe23d90		4889e5			MOVQ SP, BP							
  diaodu.go:142		0xe23d93		4881ece0000000		SUBQ $.file+147(SB), SP						
  diaodu.go:142		0xe23d9a		48898424f0000000	MOVQ AX, 0xf0(SP)						
  diaodu.go:142		0xe23da2		48898c2400010000	MOVQ CX, 0x100(SP)						
  diaodu.go:143		0xe23daa		e8f1fcffff		CALL CAS-Backend/pkg/diapdu.resolveLocalMapFilePath(SB)		
  diaodu.go:144		0xe23daf		4885ff			TESTQ DI, DI							
  diaodu.go:144		0xe23db2		0f841b020000		JE 0xe23fd3							
  diaodu.go:143		0xe23db8		48895c2440		MOVQ BX, 0x40(SP)						
  diaodu.go:143		0xe23dbd		48894c2460		MOVQ CX, 0x60(SP)						
  diaodu.go:143		0xe23dc2		4889442468		MOVQ AX, 0x68(SP)						
  diaodu.go:143		0xe23dc7		48897c2438		MOVQ DI, 0x38(SP)						
  diaodu.go:147		0xe23dcc		4889c8			MOVQ CX, AX							
  diaodu.go:147		0xe23dcf		4889fb			MOVQ DI, BX							
  diaodu.go:147		0xe23dd2		e8a9ee6aff		CALL os.Stat(SB)						
  diaodu.go:147		0xe23dd7		660f1f840000000000	NOPW 0(AX)(AX*1)						
  diaodu.go:147		0xe23de0		4885c9			TESTQ CX, CX							
  diaodu.go:147		0xe23de3		0f848f000000		JE 0xe23e78							
  diaodu.go:147		0xe23de9		48894c2448		MOVQ CX, 0x48(SP)						
  diaodu.go:147		0xe23dee		48897c2478		MOVQ DI, 0x78(SP)						
  diaodu.go:148		0xe23df3		440f11bc24c0000000	MOVUPS X15, 0xc0(SP)						
  diaodu.go:148		0xe23dfc		440f11bc24d0000000	MOVUPS X15, 0xd0(SP)						
  diaodu.go:148		0xe23e05		488b442460		MOVQ 0x60(SP), AX						
  diaodu.go:148		0xe23e0a		488b5c2438		MOVQ 0x38(SP), BX						
  diaodu.go:148		0xe23e0f		e80c6364ff		CALL runtime.convTstring(SB)					
  diaodu.go:148		0xe23e14		488d0d05eb2100		LEAQ runtime.types+383264(SB), CX				
  diaodu.go:148		0xe23e1b		48898c24c0000000	MOVQ CX, 0xc0(SP)						
  diaodu.go:148		0xe23e23		48898424c8000000	MOVQ AX, 0xc8(SP)						
  diaodu.go:147		0xe23e2b		488b4c2448		MOVQ 0x48(SP), CX						
  diaodu.go:147		0xe23e30		4885c9			TESTQ CX, CX							
  diaodu.go:148		0xe23e33		7404			JE 0xe23e39							
  diaodu.go:148		0xe23e35		488b4908		MOVQ 0x8(CX), CX						
  diaodu.go:148		0xe23e39		48898c24d0000000	MOVQ CX, 0xd0(SP)						
  diaodu.go:148		0xe23e41		488b542478		MOVQ 0x78(SP), DX						
  diaodu.go:148		0xe23e46		48899424d8000000	MOVQ DX, 0xd8(SP)						
  diaodu.go:148		0xe23e4e		488d05217a3600		LEAQ go:string.*+144238(SB), AX					
  diaodu.go:148		0xe23e55		bb1e000000		MOVL $__major_os_version__+24(SB), BX				
  diaodu.go:148		0xe23e5a		488d8c24c0000000	LEAQ 0xc0(SP), CX						
  diaodu.go:148		0xe23e62		bf02000000		MOVL $__minor_os_version__+1(SB), DI				
  diaodu.go:148		0xe23e67		4889fe			MOVQ DI, SI							
  diaodu.go:148		0xe23e6a		e851856fff		CALL fmt.Errorf(SB)						
  diaodu.go:148		0xe23e6f		4881c4e0000000		ADDQ $.file+147(SB), SP						
  diaodu.go:148		0xe23e76		5d			POPQ BP								
  diaodu.go:148		0xe23e77		c3			RET								
  diaodu.go:150		0xe23e78		488b442460		MOVQ 0x60(SP), AX						
  diaodu.go:150		0xe23e7d		488b5c2438		MOVQ 0x38(SP), BX						
  diaodu.go:150		0xe23e82		e8b9060000		CALL CAS-Backend/pkg/diapdu.BuildGraphFromFile(SB)		
  diaodu.go:151		0xe23e87		4885db			TESTQ BX, BX							
  diaodu.go:151		0xe23e8a		740f			JE 0xe23e9b							
  diaodu.go:152		0xe23e8c		4889d8			MOVQ BX, AX							
  diaodu.go:152		0xe23e8f		4889cb			MOVQ CX, BX							
  diaodu.go:152		0xe23e92		4881c4e0000000		ADDQ $.file+147(SB), SP						
  diaodu.go:152		0xe23e99		5d			POPQ BP								
  diaodu.go:152		0xe23e9a		c3			RET								
  diaodu.go:150		0xe23e9b		4889442470		MOVQ AX, 0x70(SP)						
  diaodu.go:154		0xe23ea0		e87bfbffff		CALL CAS-Backend/pkg/diapdu.setGraph(SB)			
  diaodu.go:155		0xe23ea5		488b442468		MOVQ 0x68(SP), AX						
  diaodu.go:155		0xe23eaa		488b5c2440		MOVQ 0x40(SP), BX						
  diaodu.go:155		0xe23eaf		488b4c2460		MOVQ 0x60(SP), CX						
  diaodu.go:155		0xe23eb4		488b7c2438		MOVQ 0x38(SP), DI						
  diaodu.go:155		0xe23eb9		e882f6ffff		CALL CAS-Backend/pkg/diapdu.setActiveMap(SB)			
  diaodu.go:156		0xe23ebe		90			NOPL								
  type.go:20		0xe23ebf		b901000000		MOVL $__minor_os_version__(SB), CX				
  type.go:20		0xe23ec4		488d1535947302		LEAQ CAS-Backend/pkg/diapdu.graphReady(SB), DX			
  type.go:20		0xe23ecb		870a			XCHGL CX, 0(DX)							
  diaodu.go:157		0xe23ecd		488b4c2470		MOVQ 0x70(SP), CX						
  diaodu.go:157		0xe23ed2		488b5108		MOVQ 0x8(CX), DX						
  diaodu.go:157		0xe23ed6		4889542458		MOVQ DX, 0x58(SP)						
  diaodu.go:157		0xe23edb		488b4920		MOVQ 0x20(CX), CX						
  diaodu.go:157		0xe23edf		48894c2450		MOVQ CX, 0x50(SP)						
  diaodu.go:157		0xe23ee4		440f11bc2480000000	MOVUPS X15, 0x80(SP)						
  diaodu.go:157		0xe23eed		440f11bc2490000000	MOVUPS X15, 0x90(SP)						
  diaodu.go:157		0xe23ef6		440f11bc24a0000000	MOVUPS X15, 0xa0(SP)						
  diaodu.go:157		0xe23eff		440f11bc24b0000000	MOVUPS X15, 0xb0(SP)						
  diaodu.go:157		0xe23f08		488b442468		MOVQ 0x68(SP), AX						
  diaodu.go:157		0xe23f0d		488b5c2440		MOVQ 0x40(SP), BX						
  diaodu.go:157		0xe23f12		e8096264ff		CALL runtime.convTstring(SB)					
  diaodu.go:157		0xe23f17		488d0d02ea2100		LEAQ runtime.types+383264(SB), CX				
  diaodu.go:157		0xe23f1e		48898c2480000000	MOVQ CX, 0x80(SP)						
  diaodu.go:157		0xe23f26		4889842488000000	MOVQ AX, 0x88(SP)						
  diaodu.go:157		0xe23f2e		488b442460		MOVQ 0x60(SP), AX						
  diaodu.go:157		0xe23f33		488b5c2438		MOVQ 0x38(SP), BX						
  diaodu.go:157		0xe23f38		e8e36164ff		CALL runtime.convTstring(SB)					
  diaodu.go:157		0xe23f3d		488d0ddce92100		LEAQ runtime.types+383264(SB), CX				
  diaodu.go:157		0xe23f44		48898c2490000000	MOVQ CX, 0x90(SP)						
  diaodu.go:157		0xe23f4c		4889842498000000	MOVQ AX, 0x98(SP)						
  diaodu.go:157		0xe23f54		488b442458		MOVQ 0x58(SP), AX						
  diaodu.go:157		0xe23f59		e8426164ff		CALL runtime.convT64(SB)					
  diaodu.go:157		0xe23f5e		488d0dfbeb2100		LEAQ runtime.types+383840(SB), CX				
  diaodu.go:157		0xe23f65		48898c24a0000000	MOVQ CX, 0xa0(SP)						
  diaodu.go:157		0xe23f6d		48898424a8000000	MOVQ AX, 0xa8(SP)						
  diaodu.go:157		0xe23f75		488b442450		MOVQ 0x50(SP), AX						
  diaodu.go:157		0xe23f7a		e8216164ff		CALL runtime.convT64(SB)					
  diaodu.go:157		0xe23f7f		488d0ddaeb2100		LEAQ runtime.types+383840(SB), CX				
  diaodu.go:157		0xe23f86		48898c24b0000000	MOVQ CX, 0xb0(SP)						
  diaodu.go:157		0xe23f8e		48898424b8000000	MOVQ AX, 0xb8(SP)						
  print.go:233		0xe23f96		488b1de3e06e02		MOVQ os.Stdout(SB), BX						
  print.go:233		0xe23f9d		488d053c7b0402		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:233		0xe23fa4		488d0d1b073800		LEAQ go:string.*+246206(SB), CX					
  print.go:233		0xe23fab		bf3f000000		MOVL $__major_os_version__+57(SB), DI				
  print.go:233		0xe23fb0		488db42480000000	LEAQ 0x80(SP), SI						
  print.go:233		0xe23fb8		41b804000000		MOVL $__subsystem__+1(SB), R8					
  print.go:233		0xe23fbe		4d89c1			MOVQ R8, R9							
  print.go:233		0xe23fc1		e85ab26fff		CALL fmt.Fprintf(SB)						
  diaodu.go:158		0xe23fc6		31c0			XORL AX, AX							
  diaodu.go:158		0xe23fc8		31db			XORL BX, BX							
  diaodu.go:158		0xe23fca		4881c4e0000000		ADDQ $.file+147(SB), SP						
  diaodu.go:158		0xe23fd1		5d			POPQ BP								
  diaodu.go:158		0xe23fd2		c3			RET								
  diaodu.go:145		0xe23fd3		488d057e783600		LEAQ go:string.*+144208(SB), AX					
  diaodu.go:145		0xe23fda		bb1e000000		MOVL $__major_os_version__+24(SB), BX				
  diaodu.go:145		0xe23fdf		31c9			XORL CX, CX							
  diaodu.go:145		0xe23fe1		31ff			XORL DI, DI							
  diaodu.go:145		0xe23fe3		4889fe			MOVQ DI, SI							
  diaodu.go:145		0xe23fe6		e8d5836fff		CALL fmt.Errorf(SB)						
  diaodu.go:145		0xe23feb		4881c4e0000000		ADDQ $.file+147(SB), SP						
  diaodu.go:145		0xe23ff2		5d			POPQ BP								
  diaodu.go:145		0xe23ff3		c3			RET								
  diaodu.go:142		0xe23ff4		4889442408		MOVQ AX, 0x8(SP)						
  diaodu.go:142		0xe23ff9		48895c2410		MOVQ BX, 0x10(SP)						
  diaodu.go:142		0xe23ffe		48894c2418		MOVQ CX, 0x18(SP)						
  diaodu.go:142		0xe24003		48897c2420		MOVQ DI, 0x20(SP)						
  diaodu.go:142		0xe24008		e8d32465ff		CALL runtime.morestack_noctxt.abi0(SB)				
  diaodu.go:142		0xe2400d		488b442408		MOVQ 0x8(SP), AX						
  diaodu.go:142		0xe24012		488b5c2410		MOVQ 0x10(SP), BX						
  diaodu.go:142		0xe24017		488b4c2418		MOVQ 0x18(SP), CX						
  diaodu.go:142		0xe2401c		488b7c2420		MOVQ 0x20(SP), DI						
  diaodu.go:142		0xe24021		e95afdffff		JMP CAS-Backend/pkg/diapdu.ReloadActiveMapFromLocalFile(SB)	
  :-1			0xe24026		cc			INT $__subsystem__(SB)						
  :-1			0xe24027		cc			INT $__subsystem__(SB)						
  :-1			0xe24028		cc			INT $__subsystem__(SB)						
  :-1			0xe24029		cc			INT $__subsystem__(SB)						
  :-1			0xe2402a		cc			INT $__subsystem__(SB)						
  :-1			0xe2402b		cc			INT $__subsystem__(SB)						
  :-1			0xe2402c		cc			INT $__subsystem__(SB)						
  :-1			0xe2402d		cc			INT $__subsystem__(SB)						
  :-1			0xe2402e		cc			INT $__subsystem__(SB)						
  :-1			0xe2402f		cc			INT $__subsystem__(SB)						
  :-1			0xe24030		cc			INT $__subsystem__(SB)						
  :-1			0xe24031		cc			INT $__subsystem__(SB)						
  :-1			0xe24032		cc			INT $__subsystem__(SB)						
  :-1			0xe24033		cc			INT $__subsystem__(SB)						
  :-1			0xe24034		cc			INT $__subsystem__(SB)						
  :-1			0xe24035		cc			INT $__subsystem__(SB)						
  :-1			0xe24036		cc			INT $__subsystem__(SB)						
  :-1			0xe24037		cc			INT $__subsystem__(SB)						
  :-1			0xe24038		cc			INT $__subsystem__(SB)						
  :-1			0xe24039		cc			INT $__subsystem__(SB)						
  :-1			0xe2403a		cc			INT $__subsystem__(SB)						
  :-1			0xe2403b		cc			INT $__subsystem__(SB)						
  :-1			0xe2403c		cc			INT $__subsystem__(SB)						
  :-1			0xe2403d		cc			INT $__subsystem__(SB)						
  :-1			0xe2403e		cc			INT $__subsystem__(SB)						
  :-1			0xe2403f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.diaoduConnectLoop(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/diaodu.go
  diaodu.go:161		0xe24040		4c8da42428ffffff	LEAQ 0xffffff28(SP), R12					
  diaodu.go:161		0xe24048		4d3b6610		CMPQ R12, 0x10(R14)						
  diaodu.go:161		0xe2404c		0f8643040000		JBE 0xe24495							
  diaodu.go:161		0xe24052		55			PUSHQ BP							
  diaodu.go:161		0xe24053		4889e5			MOVQ SP, BP							
  diaodu.go:161		0xe24056		4881ec50010000		SUBQ $.file+259(SB), SP						
  diaodu.go:163		0xe2405d		48c744247000000000	MOVQ $0x0, 0x70(SP)						
  diaodu.go:164		0xe24066		488d1533040000		LEAQ CAS-Backend/pkg/diapdu.diaoduConnectLoop.func1(SB), DX	
  diaodu.go:164		0xe2406d		4889942440010000	MOVQ DX, 0x140(SP)						
  diaodu.go:164		0xe24075		488d742470		LEAQ 0x70(SP), SI						
  diaodu.go:164		0xe2407a		4889b42448010000	MOVQ SI, 0x148(SP)						
  diaodu.go:164		0xe24082		488b05771d1900		MOVQ CAS-Backend/pkg/diapdu.diaoduVehicleHost(SB), AX		
  diaodu.go:164		0xe24089		488b1d781d1900		MOVQ CAS-Backend/pkg/diapdu.diaoduVehicleHost+8(SB), BX		
  diaodu.go:164		0xe24090		b9044b0000		MOVL $__size_of_stack_commit__+15108(SB), CX			
  diaodu.go:164		0xe24095		488dbc2440010000	LEAQ 0x140(SP), DI						
  diaodu.go:164		0xe2409d		0f1f00			NOPL 0(AX)							
  diaodu.go:164		0xe240a0		e85bf5feff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)			
  diaodu.go:172		0xe240a5		4885c0			TESTQ AX, AX							
  diaodu.go:172		0xe240a8		0f848b000000		JE 0xe24139							
  diaodu.go:173		0xe240ae		440f11bc2420010000	MOVUPS X15, 0x120(SP)						
  diaodu.go:173		0xe240b7		440f11bc2430010000	MOVUPS X15, 0x130(SP)						
  diaodu.go:173		0xe240c0		7404			JE 0xe240c6							
  diaodu.go:173		0xe240c2		488b4008		MOVQ 0x8(AX), AX						
  diaodu.go:173		0xe240c6		4889842420010000	MOVQ AX, 0x120(SP)						
  diaodu.go:173		0xe240ce		48899c2428010000	MOVQ BX, 0x128(SP)						
  diaodu.go:173		0xe240d6		488d15e3982e00		LEAQ runtime.types+1214912(SB), DX				
  diaodu.go:173		0xe240dd		4889942430010000	MOVQ DX, 0x130(SP)						
  diaodu.go:173		0xe240e5		4c8d154c370402		LEAQ CAS-Backend/pkg/diapdu..stmp_1(SB), R10			
  diaodu.go:173		0xe240ec		4c89942438010000	MOVQ R10, 0x138(SP)						
  print.go:233		0xe240f4		488b1d85df6e02		MOVQ os.Stdout(SB), BX						
  print.go:233		0xe240fb		488d05de790402		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:233		0xe24102		488d0d81fd3700		LEAQ go:string.*+244098(SB), CX					
  print.go:233		0xe24109		bf3e000000		MOVL $__major_os_version__+56(SB), DI				
  print.go:233		0xe2410e		488db42420010000	LEAQ 0x120(SP), SI						
  print.go:233		0xe24116		41b802000000		MOVL $__minor_os_version__+1(SB), R8				
  print.go:233		0xe2411c		4d89c1			MOVQ R8, R9							
  print.go:233		0xe2411f		90			NOPL								
  print.go:233		0xe24120		e8fbb06fff		CALL fmt.Fprintf(SB)						
  diaodu.go:174		0xe24125		48b800ac23fc06000000	MOVQ $0x6fc23ac00, AX						
  diaodu.go:174		0xe2412f		e80c0065ff		CALL time.Sleep(SB)						
  diaodu.go:175		0xe24134		e924ffffff		JMP 0xe2405d							
  diaodu.go:178		0xe24139		440f11bc2410010000	MOVUPS X15, 0x110(SP)						
  diaodu.go:178		0xe24142		488b4c2470		MOVQ 0x70(SP), CX						
  diaodu.go:178		0xe24147		488b01			MOVQ 0(CX), AX							
  diaodu.go:178		0xe2414a		488b5908		MOVQ 0x8(CX), BX						
  diaodu.go:178		0xe2414e		e8cd5f64ff		CALL runtime.convTstring(SB)					
  diaodu.go:178		0xe24153		488d0dc6e72100		LEAQ runtime.types+383264(SB), CX				
  diaodu.go:178		0xe2415a		48898c2410010000	MOVQ CX, 0x110(SP)						
  diaodu.go:178		0xe24162		4889842418010000	MOVQ AX, 0x118(SP)						
  print.go:233		0xe2416a		488b1d0fdf6e02		MOVQ os.Stdout(SB), BX						
  print.go:233		0xe24171		488d0568790402		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:233		0xe24178		bf20000000		MOVL $__major_os_version__+26(SB), DI				
  print.go:233		0xe2417d		488db42410010000	LEAQ 0x110(SP), SI						
  print.go:233		0xe24185		41b801000000		MOVL $__minor_os_version__(SB), R8				
  print.go:233		0xe2418b		4d89c1			MOVQ R8, R9							
  print.go:233		0xe2418e		488d0db3973600		LEAQ go:string.*+152640(SB), CX					
  print.go:233		0xe24195		e886b06fff		CALL fmt.Fprintf(SB)						
  diaodu.go:179		0xe2419a		440f11bc24f0000000	MOVUPS X15, 0xf0(SP)						
  diaodu.go:179		0xe241a3		440f11bc2400010000	MOVUPS X15, 0x100(SP)						
  diaodu.go:179		0xe241ac		488b0d5d1c1900		MOVQ CAS-Backend/pkg/diapdu.diaoduMapFileDir(SB), CX		
  diaodu.go:179		0xe241b3		488b155e1c1900		MOVQ CAS-Backend/pkg/diapdu.diaoduMapFileDir+8(SB), DX		
  diaodu.go:179		0xe241ba		48899424f8000000	MOVQ DX, 0xf8(SP)						
  diaodu.go:179		0xe241c2		48898c24f0000000	MOVQ CX, 0xf0(SP)						
  diaodu.go:179		0xe241ca		488b4c2470		MOVQ 0x70(SP), CX						
  diaodu.go:179		0xe241cf		488b19			MOVQ 0(CX), BX							
  diaodu.go:179		0xe241d2		488b4908		MOVQ 0x8(CX), CX						
  diaodu.go:179		0xe241d6		488d442438		LEAQ 0x38(SP), AX						
  diaodu.go:179		0xe241db		488d3de4633400		LEAQ go:string.*+8382(SB), DI					
  diaodu.go:179		0xe241e2		be05000000		MOVL $__subsystem__+2(SB), SI					
  diaodu.go:179		0xe241e7		e8141263ff		CALL runtime.concatstring2(SB)					
  diaodu.go:179		0xe241ec		48899c2408010000	MOVQ BX, 0x108(SP)						
  diaodu.go:179		0xe241f4		4889842400010000	MOVQ AX, 0x100(SP)						
  path.go:131		0xe241fc		488d8424f0000000	LEAQ 0xf0(SP), AX						
  path.go:131		0xe24204		bb02000000		MOVL $__minor_os_version__+1(SB), BX				
  path.go:131		0xe24209		4889d9			MOVQ BX, CX							
  path.go:131		0xe2420c		e86f056cff		CALL path/filepath.join(SB)					
  path.go:131		0xe24211		4889442468		MOVQ AX, 0x68(SP)						
  path.go:131		0xe24216		48895c2458		MOVQ BX, 0x58(SP)						
  diaodu.go:180		0xe2421b		0f1f440000		NOPL 0(AX)(AX*1)						
  diaodu.go:180		0xe24220		e85bea6aff		CALL os.Stat(SB)						
  error.go:91		0xe24225		488b1584f66e02		MOVQ os.ErrNotExist(SB), DX					
  error.go:91		0xe2422c		488b3585f66e02		MOVQ os.ErrNotExist+8(SB), SI					
  error.go:91		0xe24233		4889c8			MOVQ CX, AX							
  error.go:91		0xe24236		4889fb			MOVQ DI, BX							
  error.go:91		0xe24239		4889d1			MOVQ DX, CX							
  error.go:91		0xe2423c		4889f7			MOVQ SI, DI							
  error.go:91		0xe2423f		90			NOPL								
  error.go:91		0xe24240		e8bb906aff		CALL os.underlyingErrorIs(SB)					
  error.go:91		0xe24245		84c0			TESTL AL, AL							
  diaodu.go:180		0xe24247		0f849d000000		JE 0xe242ea							
  diaodu.go:181		0xe2424d		440f11bc24d0000000	MOVUPS X15, 0xd0(SP)						
  diaodu.go:181		0xe24256		440f11bc24e0000000	MOVUPS X15, 0xe0(SP)						
  diaodu.go:181		0xe2425f		488b442468		MOVQ 0x68(SP), AX						
  diaodu.go:181		0xe24264		488b5c2458		MOVQ 0x58(SP), BX						
  diaodu.go:181		0xe24269		e8b25e64ff		CALL runtime.convTstring(SB)					
  diaodu.go:181		0xe2426e		488d0dabe62100		LEAQ runtime.types+383264(SB), CX				
  diaodu.go:181		0xe24275		48898c24d0000000	MOVQ CX, 0xd0(SP)						
  diaodu.go:181		0xe2427d		48898424d8000000	MOVQ AX, 0xd8(SP)						
  diaodu.go:181		0xe24285		488d1534972e00		LEAQ runtime.types+1214912(SB), DX				
  diaodu.go:181		0xe2428c		48899424e0000000	MOVQ DX, 0xe0(SP)						
  diaodu.go:181		0xe24294		488d359d350402		LEAQ CAS-Backend/pkg/diapdu..stmp_1(SB), SI			
  diaodu.go:181		0xe2429b		4889b424e8000000	MOVQ SI, 0xe8(SP)						
  print.go:233		0xe242a3		488b1dd6dd6e02		MOVQ os.Stdout(SB), BX						
  print.go:233		0xe242aa		488d052f780402		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:233		0xe242b1		bf35000000		MOVL $__major_os_version__+47(SB), DI				
  print.go:233		0xe242b6		41b802000000		MOVL $__minor_os_version__+1(SB), R8				
  print.go:233		0xe242bc		4d89c1			MOVQ R8, R9							
  print.go:233		0xe242bf		488d0dd8ad3700		LEAQ go:string.*+224150(SB), CX					
  print.go:233		0xe242c6		488db424d0000000	LEAQ 0xd0(SP), SI						
  print.go:233		0xe242ce		e84daf6fff		CALL fmt.Fprintf(SB)						
  diaodu.go:182		0xe242d3		48b800ac23fc06000000	MOVQ $0x6fc23ac00, AX						
  diaodu.go:182		0xe242dd		0f1f00			NOPL 0(AX)							
  diaodu.go:182		0xe242e0		e85bfe64ff		CALL time.Sleep(SB)						
  diaodu.go:183		0xe242e5		e973fdffff		JMP 0xe2405d							
  diaodu.go:186		0xe242ea		488b442468		MOVQ 0x68(SP), AX						
  diaodu.go:186		0xe242ef		488b5c2458		MOVQ 0x58(SP), BX						
  diaodu.go:186		0xe242f4		e847020000		CALL CAS-Backend/pkg/diapdu.BuildGraphFromFile(SB)		
  diaodu.go:186		0xe242f9		0f1f8000000000		NOPL 0(AX)							
  diaodu.go:187		0xe24300		4885db			TESTQ BX, BX							
  diaodu.go:187		0xe24303		0f848a000000		JE 0xe24393							
  diaodu.go:188		0xe24309		440f11bc24b0000000	MOVUPS X15, 0xb0(SP)						
  diaodu.go:188		0xe24312		440f11bc24c0000000	MOVUPS X15, 0xc0(SP)						
  diaodu.go:188		0xe2431b		7404			JE 0xe24321							
  diaodu.go:188		0xe2431d		488b5b08		MOVQ 0x8(BX), BX						
  diaodu.go:188		0xe24321		48899c24b0000000	MOVQ BX, 0xb0(SP)						
  diaodu.go:188		0xe24329		48898c24b8000000	MOVQ CX, 0xb8(SP)						
  diaodu.go:188		0xe24331		488d1588962e00		LEAQ runtime.types+1214912(SB), DX				
  diaodu.go:188		0xe24338		48899424c0000000	MOVQ DX, 0xc0(SP)						
  diaodu.go:188		0xe24340		4c8d15f1340402		LEAQ CAS-Backend/pkg/diapdu..stmp_1(SB), R10			
  diaodu.go:188		0xe24347		4c899424c8000000	MOVQ R10, 0xc8(SP)						
  print.go:233		0xe2434f		488b1d2add6e02		MOVQ os.Stdout(SB), BX						
  print.go:233		0xe24356		488d0583770402		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:233		0xe2435d		488d0d6fad3700		LEAQ go:string.*+224203(SB), CX					
  print.go:233		0xe24364		bf35000000		MOVL $__major_os_version__+47(SB), DI				
  print.go:233		0xe24369		488db424b0000000	LEAQ 0xb0(SP), SI						
  print.go:233		0xe24371		41b802000000		MOVL $__minor_os_version__+1(SB), R8				
  print.go:233		0xe24377		4d89c1			MOVQ R8, R9							
  print.go:233		0xe2437a		e8a1ae6fff		CALL fmt.Fprintf(SB)						
  diaodu.go:189		0xe2437f		48b800ac23fc06000000	MOVQ $0x6fc23ac00, AX						
  diaodu.go:189		0xe24389		e8b2fd64ff		CALL time.Sleep(SB)						
  diaodu.go:190		0xe2438e		e9cafcffff		JMP 0xe2405d							
  diaodu.go:186		0xe24393		4889442478		MOVQ AX, 0x78(SP)						
  diaodu.go:193		0xe24398		e883f6ffff		CALL CAS-Backend/pkg/diapdu.setGraph(SB)			
  diaodu.go:194		0xe2439d		488b4c2470		MOVQ 0x70(SP), CX						
  diaodu.go:194		0xe243a2		488b01			MOVQ 0(CX), AX							
  diaodu.go:194		0xe243a5		488b5908		MOVQ 0x8(CX), BX						
  diaodu.go:194		0xe243a9		488b4c2468		MOVQ 0x68(SP), CX						
  diaodu.go:194		0xe243ae		488b7c2458		MOVQ 0x58(SP), DI						
  diaodu.go:194		0xe243b3		e888f1ffff		CALL CAS-Backend/pkg/diapdu.setActiveMap(SB)			
  diaodu.go:195		0xe243b8		90			NOPL								
  type.go:20		0xe243b9		b901000000		MOVL $__minor_os_version__(SB), CX				
  type.go:20		0xe243be		488d153b8f7302		LEAQ CAS-Backend/pkg/diapdu.graphReady(SB), DX			
  type.go:20		0xe243c5		870a			XCHGL CX, 0(DX)							
  diaodu.go:196		0xe243c7		488b4c2478		MOVQ 0x78(SP), CX						
  diaodu.go:196		0xe243cc		488b4108		MOVQ 0x8(CX), AX						
  diaodu.go:196		0xe243d0		488b4920		MOVQ 0x20(CX), CX						
  diaodu.go:196		0xe243d4		48894c2460		MOVQ CX, 0x60(SP)						
  diaodu.go:196		0xe243d9		440f11bc2480000000	MOVUPS X15, 0x80(SP)						
  diaodu.go:196		0xe243e2		440f11bc2490000000	MOVUPS X15, 0x90(SP)						
  diaodu.go:196		0xe243eb		440f11bc24a0000000	MOVUPS X15, 0xa0(SP)						
  diaodu.go:196		0xe243f4		e8a75c64ff		CALL runtime.convT64(SB)					
  diaodu.go:196		0xe243f9		488d0d60e72100		LEAQ runtime.types+383840(SB), CX				
  diaodu.go:196		0xe24400		48898c2480000000	MOVQ CX, 0x80(SP)						
  diaodu.go:196		0xe24408		4889842488000000	MOVQ AX, 0x88(SP)						
  diaodu.go:196		0xe24410		488b442460		MOVQ 0x60(SP), AX						
  diaodu.go:196		0xe24415		e8865c64ff		CALL runtime.convT64(SB)					
  diaodu.go:196		0xe2441a		488d0d3fe72100		LEAQ runtime.types+383840(SB), CX				
  diaodu.go:196		0xe24421		48898c2490000000	MOVQ CX, 0x90(SP)						
  diaodu.go:196		0xe24429		4889842498000000	MOVQ AX, 0x98(SP)						
  diaodu.go:196		0xe24431		488b442468		MOVQ 0x68(SP), AX						
  diaodu.go:196		0xe24436		488b5c2458		MOVQ 0x58(SP), BX						
  diaodu.go:196		0xe2443b		0f1f440000		NOPL 0(AX)(AX*1)						
  diaodu.go:196		0xe24440		e8db5c64ff		CALL runtime.convTstring(SB)					
  diaodu.go:196		0xe24445		488d0dd4e42100		LEAQ runtime.types+383264(SB), CX				
  diaodu.go:196		0xe2444c		48898c24a0000000	MOVQ CX, 0xa0(SP)						
  diaodu.go:196		0xe24454		48898424a8000000	MOVQ AX, 0xa8(SP)						
  print.go:233		0xe2445c		488b1d1ddc6e02		MOVQ os.Stdout(SB), BX						
  print.go:233		0xe24463		488d0576760402		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:233		0xe2446a		488d0d6c473800		LEAQ go:string.*+263893(SB), CX					
  print.go:233		0xe24471		bf50000000		MOVL $.file+3(SB), DI						
  print.go:233		0xe24476		488db42480000000	LEAQ 0x80(SP), SI						
  print.go:233		0xe2447e		41b803000000		MOVL $__subsystem__(SB), R8					
  print.go:233		0xe24484		4d89c1			MOVQ R8, R9							
  print.go:233		0xe24487		e894ad6fff		CALL fmt.Fprintf(SB)						
  diaodu.go:197		0xe2448c		4881c450010000		ADDQ $.file+259(SB), SP						
  diaodu.go:197		0xe24493		5d			POPQ BP								
  diaodu.go:197		0xe24494		c3			RET								
  diaodu.go:161		0xe24495		e8462065ff		CALL runtime.morestack_noctxt.abi0(SB)				
  diaodu.go:161		0xe2449a		e9a1fbffff		JMP CAS-Backend/pkg/diapdu.diaoduConnectLoop(SB)		
  :-1			0xe2449f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.diaoduConnectLoop.func1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/diaodu.go
  diaodu.go:164		0xe244a0		493b6610		CMPQ SP, 0x10(R14)					
  diaodu.go:164		0xe244a4		7667			JBE 0xe2450d						
  diaodu.go:164		0xe244a6		55			PUSHQ BP						
  diaodu.go:164		0xe244a7		4889e5			MOVQ SP, BP						
  diaodu.go:164		0xe244aa		4883ec18		SUBQ $__major_os_version__+18(SB), SP			
  diaodu.go:164		0xe244ae		4889442428		MOVQ AX, 0x28(SP)					
  diaodu.go:164		0xe244b3		48895c2430		MOVQ BX, 0x30(SP)					
  diaodu.go:164		0xe244b8		488b4a08		MOVQ 0x8(DX), CX					
  diaodu.go:164		0xe244bc		48894c2410		MOVQ CX, 0x10(SP)					
  diaodu.go:165		0xe244c1		e83aa3ffff		CALL CAS-Backend/pkg/agvcontrol.SendSltMapRequest(SB)	
  diaodu.go:166		0xe244c6		4885db			TESTQ BX, BX						
  diaodu.go:166		0xe244c9		7536			JNE 0xe24501						
  diaodu.go:169		0xe244cb		833d7e96730200		CMPL runtime.writeBarrier(SB), $0x0			
  diaodu.go:169		0xe244d2		750c			JNE 0xe244e0						
  diaodu.go:169		0xe244d4		488b4c2410		MOVQ 0x10(SP), CX					
  diaodu.go:169		0xe244d9		eb19			JMP 0xe244f4						
  diaodu.go:169		0xe244db		0f1f440000		NOPL 0(AX)(AX*1)					
  diaodu.go:169		0xe244e0		e85b3f65ff		CALL runtime.gcWriteBarrier2(SB)			
  diaodu.go:169		0xe244e5		498903			MOVQ AX, 0(R11)						
  diaodu.go:169		0xe244e8		488b4c2410		MOVQ 0x10(SP), CX					
  diaodu.go:169		0xe244ed		488b11			MOVQ 0(CX), DX						
  diaodu.go:169		0xe244f0		49895308		MOVQ DX, 0x8(R11)					
  diaodu.go:169		0xe244f4		488901			MOVQ AX, 0(CX)						
  diaodu.go:170		0xe244f7		31c0			XORL AX, AX						
  diaodu.go:170		0xe244f9		31db			XORL BX, BX						
  diaodu.go:170		0xe244fb		4883c418		ADDQ $__major_os_version__+18(SB), SP			
  diaodu.go:170		0xe244ff		5d			POPQ BP							
  diaodu.go:170		0xe24500		c3			RET							
  diaodu.go:167		0xe24501		4889d8			MOVQ BX, AX						
  diaodu.go:167		0xe24504		4889cb			MOVQ CX, BX						
  diaodu.go:167		0xe24507		4883c418		ADDQ $__major_os_version__+18(SB), SP			
  diaodu.go:167		0xe2450b		5d			POPQ BP							
  diaodu.go:167		0xe2450c		c3			RET							
  diaodu.go:164		0xe2450d		4889442408		MOVQ AX, 0x8(SP)					
  diaodu.go:164		0xe24512		48895c2410		MOVQ BX, 0x10(SP)					
  diaodu.go:164		0xe24517		e8441f65ff		CALL runtime.morestack.abi0(SB)				
  diaodu.go:164		0xe2451c		488b442408		MOVQ 0x8(SP), AX					
  diaodu.go:164		0xe24521		488b5c2410		MOVQ 0x10(SP), BX					
  diaodu.go:164		0xe24526		e975ffffff		JMP CAS-Backend/pkg/diapdu.diaoduConnectLoop.func1(SB)	
  :-1			0xe2452b		cc			INT $__subsystem__(SB)					
  :-1			0xe2452c		cc			INT $__subsystem__(SB)					
  :-1			0xe2452d		cc			INT $__subsystem__(SB)					
  :-1			0xe2452e		cc			INT $__subsystem__(SB)					
  :-1			0xe2452f		cc			INT $__subsystem__(SB)					
  :-1			0xe24530		cc			INT $__subsystem__(SB)					
  :-1			0xe24531		cc			INT $__subsystem__(SB)					
  :-1			0xe24532		cc			INT $__subsystem__(SB)					
  :-1			0xe24533		cc			INT $__subsystem__(SB)					
  :-1			0xe24534		cc			INT $__subsystem__(SB)					
  :-1			0xe24535		cc			INT $__subsystem__(SB)					
  :-1			0xe24536		cc			INT $__subsystem__(SB)					
  :-1			0xe24537		cc			INT $__subsystem__(SB)					
  :-1			0xe24538		cc			INT $__subsystem__(SB)					
  :-1			0xe24539		cc			INT $__subsystem__(SB)					
  :-1			0xe2453a		cc			INT $__subsystem__(SB)					
  :-1			0xe2453b		cc			INT $__subsystem__(SB)					
  :-1			0xe2453c		cc			INT $__subsystem__(SB)					
  :-1			0xe2453d		cc			INT $__subsystem__(SB)					
  :-1			0xe2453e		cc			INT $__subsystem__(SB)					
  :-1			0xe2453f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.BuildGraphFromFile(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/diaodu.go
  diaodu.go:347		0xe24540		4c8da42438feffff	LEAQ 0xfffffe38(SP), R12				
  diaodu.go:347		0xe24548		4d3b6610		CMPQ R12, 0x10(R14)					
  diaodu.go:347		0xe2454c		0f86bf0b0000		JBE 0xe25111						
  diaodu.go:347		0xe24552		55			PUSHQ BP						
  diaodu.go:347		0xe24553		4889e5			MOVQ SP, BP						
  diaodu.go:347		0xe24556		4881ec40020000		SUBQ $__file_alignment__+64(SB), SP			
  diaodu.go:347		0xe2455d		4889842450020000	MOVQ AX, 0x250(SP)					
  diaodu.go:349		0xe24565		90			NOPL							
  ioutil.go:38		0xe24566		e815aa6aff		CALL os.ReadFile(SB)					
  diaodu.go:350		0xe2456b		4885ff			TESTQ DI, DI						
  diaodu.go:350		0xe2456e		7451			JE 0xe245c1						
  diaodu.go:351		0xe24570		440f11bc2428020000	MOVUPS X15, 0x228(SP)					
  diaodu.go:351		0xe24579		7404			JE 0xe2457f						
  diaodu.go:351		0xe2457b		488b7f08		MOVQ 0x8(DI), DI					
  diaodu.go:351		0xe2457f		4889bc2428020000	MOVQ DI, 0x228(SP)					
  diaodu.go:351		0xe24587		4889b42430020000	MOVQ SI, 0x230(SP)					
  diaodu.go:351		0xe2458f		488d05f8dd3500		LEAQ go:string.*+106118(SB), AX				
  diaodu.go:351		0xe24596		bb16000000		MOVL $__major_os_version__+16(SB), BX			
  diaodu.go:351		0xe2459b		488d8c2428020000	LEAQ 0x228(SP), CX					
  diaodu.go:351		0xe245a3		bf01000000		MOVL $__minor_os_version__(SB), DI			
  diaodu.go:351		0xe245a8		4889fe			MOVQ DI, SI						
  diaodu.go:351		0xe245ab		e8107e6fff		CALL fmt.Errorf(SB)					
  diaodu.go:351		0xe245b0		4889d9			MOVQ BX, CX						
  diaodu.go:351		0xe245b3		4889c3			MOVQ AX, BX						
  diaodu.go:351		0xe245b6		31c0			XORL AX, AX						
  diaodu.go:351		0xe245b8		4881c440020000		ADDQ $__file_alignment__+64(SB), SP			
  diaodu.go:351		0xe245bf		5d			POPQ BP							
  diaodu.go:351		0xe245c0		c3			RET							
  ioutil.go:38		0xe245c1		48894c2448		MOVQ CX, 0x48(SP)					
  ioutil.go:38		0xe245c6		48895c2440		MOVQ BX, 0x40(SP)					
  ioutil.go:38		0xe245cb		48898424c0000000	MOVQ AX, 0xc0(SP)					
  diaodu.go:355		0xe245d3		488d0546182d00		LEAQ runtime.types+1117728(SB), AX			
  diaodu.go:355		0xe245da		e8c1d15eff		CALL runtime.newobject(SB)				
  diaodu.go:355		0xe245df		4889842438020000	MOVQ AX, 0x238(SP)					
  diaodu.go:356		0xe245e7		488b5c2440		MOVQ 0x40(SP), BX					
  diaodu.go:356		0xe245ec		488b4c2448		MOVQ 0x48(SP), CX					
  diaodu.go:356		0xe245f1		488d3d28f91f00		LEAQ runtime.types+257824(SB), DI			
  diaodu.go:356		0xe245f8		4889c6			MOVQ AX, SI						
  diaodu.go:356		0xe245fb		488b8424c0000000	MOVQ 0xc0(SP), AX					
  diaodu.go:356		0xe24603		e8d82e74ff		CALL encoding/json.Unmarshal(SB)			
  diaodu.go:357		0xe24608		4885c0			TESTQ AX, AX						
  diaodu.go:357		0xe2460b		7539			JNE 0xe24646						
  diaodu.go:361		0xe2460d		488d054c7b2900		LEAQ runtime.types+880992(SB), AX			
  diaodu.go:361		0xe24614		e887d15eff		CALL runtime.newobject(SB)				
  diaodu.go:361		0xe24619		4889842408010000	MOVQ AX, 0x108(SP)					
  diaodu.go:362		0xe24621		488d0d788c7302		LEAQ unicode..stmp_365(SB), CX				
  diaodu.go:362		0xe24628		488908			MOVQ CX, 0(AX)						
  diaodu.go:363		0xe2462b		440f117820		MOVUPS X15, 0x20(AX)					
  diaodu.go:363		0xe24630		48894818		MOVQ CX, 0x18(AX)					
  diaodu.go:367		0xe24634		488b8c2438020000	MOVQ 0x238(SP), CX					
  diaodu.go:367		0xe2463c		488b5158		MOVQ 0x58(CX), DX					
  diaodu.go:367		0xe24640		488b5960		MOVQ 0x60(CX), BX					
  diaodu.go:367		0xe24644		eb7b			JMP 0xe246c1						
  diaodu.go:358		0xe24646		440f11bc2428020000	MOVUPS X15, 0x228(SP)					
  diaodu.go:358		0xe2464f		7404			JE 0xe24655						
  diaodu.go:358		0xe24651		488b4008		MOVQ 0x8(AX), AX					
  diaodu.go:358		0xe24655		4889842428020000	MOVQ AX, 0x228(SP)					
  diaodu.go:358		0xe2465d		48899c2430020000	MOVQ BX, 0x230(SP)					
  diaodu.go:358		0xe24665		488d059eba3500		LEAQ go:string.*+97282(SB), AX				
  diaodu.go:358		0xe2466c		bb14000000		MOVL $__major_os_version__+14(SB), BX			
  diaodu.go:358		0xe24671		488d8c2428020000	LEAQ 0x228(SP), CX					
  diaodu.go:358		0xe24679		bf01000000		MOVL $__minor_os_version__(SB), DI			
  diaodu.go:358		0xe2467e		4889fe			MOVQ DI, SI						
  diaodu.go:358		0xe24681		e83a7d6fff		CALL fmt.Errorf(SB)					
  diaodu.go:358		0xe24686		4889d9			MOVQ BX, CX						
  diaodu.go:358		0xe24689		4889c3			MOVQ AX, BX						
  diaodu.go:358		0xe2468c		31c0			XORL AX, AX						
  diaodu.go:358		0xe2468e		4881c440020000		ADDQ $__file_alignment__+64(SB), SP			
  diaodu.go:358		0xe24695		5d			POPQ BP							
  diaodu.go:358		0xe24696		c3			RET							
  diaodu.go:373		0xe24697		498944d8f8		MOVQ AX, -0x8(R8)(BX*8)					
  diaodu.go:367		0xe2469c		4c8b8424c0010000	MOVQ 0x1c0(SP), R8					
  diaodu.go:367		0xe246a4		4983c050		ADDQ $.file+3(SB), R8					
  diaodu.go:367		0xe246a8		488b9c24b8000000	MOVQ 0xb8(SP), BX					
  diaodu.go:367		0xe246b0		48ffcb			DECQ BX							
  diaodu.go:373		0xe246b3		4889d0			MOVQ DX, AX						
  diaodu.go:378		0xe246b6		488b8c2438020000	MOVQ 0x238(SP), CX					
  diaodu.go:367		0xe246be		4c89c2			MOVQ R8, DX						
  diaodu.go:367		0xe246c1		4885db			TESTQ BX, BX						
  diaodu.go:367		0xe246c4		0f8e2c010000		JLE 0xe247f6						
  diaodu.go:367		0xe246ca		48899c24b8000000	MOVQ BX, 0xb8(SP)					
  diaodu.go:367		0xe246d2		48899424c0010000	MOVQ DX, 0x1c0(SP)					
  diaodu.go:367		0xe246da		488dbc2428010000	LEAQ 0x128(SP), DI					
  diaodu.go:367		0xe246e2		4889d6			MOVQ DX, SI						
  diaodu.go:367		0xe246e5		48896c24f0		MOVQ BP, -0x10(SP)					
  diaodu.go:367		0xe246ea		488d6c24f0		LEAQ -0x10(SP), BP					
  diaodu.go:367		0xe246ef		e8664765ff		CALL 0x478e5a						
  diaodu.go:367		0xe246f4		488b6d00		MOVQ 0(BP), BP						
  diaodu.go:368		0xe246f8		f20f10842448010000	MOVSD_XMM 0x148(SP), X0					
  diaodu.go:368		0xe24701		f20f11442478		MOVSD_XMM X0, 0x78(SP)					
  diaodu.go:368		0xe24707		f20f108c2450010000	MOVSD_XMM 0x150(SP), X1					
  diaodu.go:368		0xe24710		f20f114c2470		MOVSD_XMM X1, 0x70(SP)					
  diaodu.go:369		0xe24716		488d05a3792900		LEAQ runtime.types+880832(SB), AX			
  diaodu.go:369		0xe2471d		0f1f00			NOPL 0(AX)						
  diaodu.go:369		0xe24720		e87bd05eff		CALL runtime.newobject(SB)				
  diaodu.go:370		0xe24725		488b8c2440010000	MOVQ 0x140(SP), CX					
  diaodu.go:370		0xe2472d		488b942438010000	MOVQ 0x138(SP), DX					
  diaodu.go:370		0xe24735		48894808		MOVQ CX, 0x8(AX)					
  diaodu.go:370		0xe24739		833d1094730200		CMPL runtime.writeBarrier(SB), $0x0			
  diaodu.go:370		0xe24740		7408			JE 0xe2474a						
  diaodu.go:370		0xe24742		e8d93c65ff		CALL runtime.gcWriteBarrier1(SB)			
  diaodu.go:370		0xe24747		498913			MOVQ DX, 0(R11)						
  diaodu.go:370		0xe2474a		488910			MOVQ DX, 0(AX)						
  diaodu.go:371		0xe2474d		f20f10442478		MOVSD_XMM 0x78(SP), X0					
  diaodu.go:371		0xe24753		f20f114010		MOVSD_XMM X0, 0x10(AX)					
  diaodu.go:371		0xe24758		f20f10442470		MOVSD_XMM 0x70(SP), X0					
  diaodu.go:371		0xe2475e		f20f114018		MOVSD_XMM X0, 0x18(AX)					
  diaodu.go:373		0xe24763		488b942408010000	MOVQ 0x108(SP), DX					
  diaodu.go:373		0xe2476b		488b4a10		MOVQ 0x10(DX), CX					
  diaodu.go:373		0xe2476f		488b5a08		MOVQ 0x8(DX), BX					
  diaodu.go:373		0xe24773		48ffc3			INCQ BX							
  diaodu.go:373		0xe24776		4c8b02			MOVQ 0(DX), R8						
  diaodu.go:373		0xe24779		4839d9			CMPQ CX, BX						
  diaodu.go:373		0xe2477c		734e			JAE 0xe247cc						
  diaodu.go:369		0xe2477e		4889842400010000	MOVQ AX, 0x100(SP)					
  diaodu.go:373		0xe24786		4c89c0			MOVQ R8, AX						
  diaodu.go:373		0xe24789		bf01000000		MOVL $__minor_os_version__(SB), DI			
  diaodu.go:373		0xe2478e		488d354bf51f00		LEAQ runtime.types+257248(SB), SI			
  diaodu.go:373		0xe24795		e8a6d464ff		CALL runtime.growslice(SB)				
  diaodu.go:373		0xe2479a		488b942408010000	MOVQ 0x108(SP), DX					
  diaodu.go:373		0xe247a2		48894a10		MOVQ CX, 0x10(DX)					
  diaodu.go:373		0xe247a6		833da393730200		CMPL runtime.writeBarrier(SB), $0x0			
  diaodu.go:373		0xe247ad		740f			JE 0xe247be						
  diaodu.go:373		0xe247af		e88c3c65ff		CALL runtime.gcWriteBarrier2(SB)			
  diaodu.go:373		0xe247b4		498903			MOVQ AX, 0(R11)						
  diaodu.go:373		0xe247b7		4c8b02			MOVQ 0(DX), R8						
  diaodu.go:373		0xe247ba		4d894308		MOVQ R8, 0x8(R11)					
  diaodu.go:373		0xe247be		488902			MOVQ AX, 0(DX)						
  diaodu.go:373		0xe247c1		4989c0			MOVQ AX, R8						
  diaodu.go:373		0xe247c4		488b842400010000	MOVQ 0x100(SP), AX					
  diaodu.go:373		0xe247cc		48895a08		MOVQ BX, 0x8(DX)					
  diaodu.go:373		0xe247d0		833d7993730200		CMPL runtime.writeBarrier(SB), $0x0			
  diaodu.go:373		0xe247d7		0f84bafeffff		JE 0xe24697						
  diaodu.go:373		0xe247dd		0f1f00			NOPL 0(AX)						
  diaodu.go:373		0xe247e0		e85b3c65ff		CALL runtime.gcWriteBarrier2(SB)			
  diaodu.go:373		0xe247e5		498903			MOVQ AX, 0(R11)						
  diaodu.go:373		0xe247e8		4d8b4cd8f8		MOVQ -0x8(R8)(BX*8), R9					
  diaodu.go:373		0xe247ed		4d894b08		MOVQ R9, 0x8(R11)					
  diaodu.go:373		0xe247f1		e9a1feffff		JMP 0xe24697						
  diaodu.go:378		0xe247f6		488b9188000000		MOVQ 0x88(CX), DX					
  diaodu.go:378		0xe247fd		4c8b8190000000		MOVQ 0x90(CX), R8					
  diaodu.go:378		0xe24804		eb2a			JMP 0xe24830						
  diaodu.go:378		0xe24806		488b9424c0010000	MOVQ 0x1c0(SP), DX					
  diaodu.go:378		0xe2480e		4881c298000000		ADDQ $.file+75(SB), DX					
  diaodu.go:378		0xe24815		4c8b8424b8000000	MOVQ 0xb8(SP), R8					
  diaodu.go:378		0xe2481d		49ffc8			DECQ R8							
  diaodu.go:378		0xe24820		488b842408010000	MOVQ 0x108(SP), AX					
  diaodu.go:412		0xe24828		488b8c2438020000	MOVQ 0x238(SP), CX					
  diaodu.go:378		0xe24830		4d85c0			TESTQ R8, R8						
  diaodu.go:378		0xe24833		0f8e71010000		JLE 0xe249aa						
  diaodu.go:378		0xe24839		4c898424b8000000	MOVQ R8, 0xb8(SP)					
  diaodu.go:378		0xe24841		48899424c0010000	MOVQ DX, 0x1c0(SP)					
  diaodu.go:378		0xe24849		4c8b0a			MOVQ 0(DX), R9						
  diaodu.go:378		0xe2484c		4c898c2428010000	MOVQ R9, 0x128(SP)					
  diaodu.go:378		0xe24854		488d7208		LEAQ 0x8(DX), SI					
  diaodu.go:378		0xe24858		488dbc2430010000	LEAQ 0x130(SP), DI					
  diaodu.go:378		0xe24860		48896c24f0		MOVQ BP, -0x10(SP)					
  diaodu.go:378		0xe24865		488d6c24f0		LEAQ -0x10(SP), BP					
  diaodu.go:378		0xe2486a		e8b34565ff		CALL 0x478e22						
  diaodu.go:378		0xe2486f		488b6d00		MOVQ 0(BP), BP						
  diaodu.go:379		0xe24873		488b9c2448010000	MOVQ 0x148(SP), BX					
  diaodu.go:379		0xe2487b		48899c2410010000	MOVQ BX, 0x110(SP)					
  diaodu.go:379		0xe24883		4c8b8c2450010000	MOVQ 0x150(SP), R9					
  diaodu.go:379		0xe2488b		4c898c2498000000	MOVQ R9, 0x98(SP)					
  diaodu.go:380		0xe24893		4c8b942468010000	MOVQ 0x168(SP), R10					
  diaodu.go:380		0xe2489b		4c899424e8000000	MOVQ R10, 0xe8(SP)					
  diaodu.go:380		0xe248a3		4c8b9c2470010000	MOVQ 0x170(SP), R11					
  diaodu.go:380		0xe248ab		4c895c2460		MOVQ R11, 0x60(SP)					
  diaodu.go:383		0xe248b0		4c8b20			MOVQ 0(AX), R12						
  diaodu.go:383		0xe248b3		4c89a424f8000000	MOVQ R12, 0xf8(SP)					
  diaodu.go:383		0xe248bb		4c8b6808		MOVQ 0x8(AX), R13					
  diaodu.go:383		0xe248bf		4c89ac2490000000	MOVQ R13, 0x90(SP)					
  diaodu.go:383		0xe248c7		31f6			XORL SI, SI						
  diaodu.go:338		0xe248c9		e912050000		JMP 0xe24de0						
  diaodu.go:390		0xe248ce		488b842408010000	MOVQ 0x108(SP), AX					
  diaodu.go:412		0xe248d6		488b8c2438020000	MOVQ 0x238(SP), CX					
  diaodu.go:378		0xe248de		488b9424c0010000	MOVQ 0x1c0(SP), DX					
  diaodu.go:385		0xe248e6		488b9c2410010000	MOVQ 0x110(SP), BX					
  diaodu.go:378		0xe248ee		4c8b8424b8000000	MOVQ 0xb8(SP), R8					
  diaodu.go:385		0xe248f6		4c8b8c2498000000	MOVQ 0x98(SP), R9					
  diaodu.go:339		0xe248fe		4c8b9424e8000000	MOVQ 0xe8(SP), R10					
  diaodu.go:339		0xe24906		4c8b5c2460		MOVQ 0x60(SP), R11					
  diaodu.go:383		0xe2490b		488bb424d8000000	MOVQ 0xd8(SP), SI					
  diaodu.go:383		0xe24913		eb02			JMP 0xe24917						
  diaodu.go:383		0xe24915		31f6			XORL SI, SI						
  diaodu.go:384		0xe24917		4885f6			TESTQ SI, SI						
  diaodu.go:384		0xe2491a		7429			JE 0xe24945						
  diaodu.go:383		0xe2491c		4889b424d8000000	MOVQ SI, 0xd8(SP)					
  diaodu.go:390		0xe24924		488b38			MOVQ 0(AX), DI						
  diaodu.go:390		0xe24927		4889bc24f0000000	MOVQ DI, 0xf0(SP)					
  diaodu.go:390		0xe2492f		4c8b4808		MOVQ 0x8(AX), R9					
  diaodu.go:390		0xe24933		4c898c2488000000	MOVQ R9, 0x88(SP)					
  diaodu.go:390		0xe2493b		31db			XORL BX, BX						
  diaodu.go:390		0xe2493d		0f1f00			NOPL 0(AX)						
  diaodu.go:338		0xe24940		e931050000		JMP 0xe24e76						
  diaodu.go:385		0xe24945		440f11bc2418020000	MOVUPS X15, 0x218(SP)					
  diaodu.go:385		0xe2494e		4889d8			MOVQ BX, AX						
  diaodu.go:385		0xe24951		4c89cb			MOVQ R9, BX						
  diaodu.go:385		0xe24954		e8c75764ff		CALL runtime.convTstring(SB)				
  diaodu.go:385		0xe24959		488d0dc0df2100		LEAQ runtime.types+383264(SB), CX			
  diaodu.go:385		0xe24960		48898c2418020000	MOVQ CX, 0x218(SP)					
  diaodu.go:385		0xe24968		4889842420020000	MOVQ AX, 0x220(SP)					
  print.go:233		0xe24970		488b1d09d76e02		MOVQ os.Stdout(SB), BX					
  print.go:233		0xe24977		488d0562710402		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0xe2497e		bf40000000		MOVL $__major_os_version__+58(SB), DI			
  print.go:233		0xe24983		488db42418020000	LEAQ 0x218(SP), SI					
  print.go:233		0xe2498b		41b801000000		MOVL $__minor_os_version__(SB), R8			
  print.go:233		0xe24991		4d89c1			MOVQ R8, R9						
  print.go:233		0xe24994		488d0d99013800		LEAQ go:string.*+247340(SB), CX				
  print.go:233		0xe2499b		0f1f440000		NOPL 0(AX)(AX*1)					
  print.go:233		0xe249a0		e87ba86fff		CALL fmt.Fprintf(SB)					
  diaodu.go:386		0xe249a5		e95cfeffff		JMP 0xe24806						
  diaodu.go:412		0xe249aa		488b5170		MOVQ 0x70(CX), DX					
  diaodu.go:412		0xe249ae		4c8b4178		MOVQ 0x78(CX), R8					
  diaodu.go:412		0xe249b2		eb1f			JMP 0xe249d3						
  diaodu.go:412		0xe249b4		488b9424c0010000	MOVQ 0x1c0(SP), DX					
  diaodu.go:412		0xe249bc		4883c258		ADDQ $.file+11(SB), DX					
  diaodu.go:412		0xe249c0		4c8b8424b8000000	MOVQ 0xb8(SP), R8					
  diaodu.go:412		0xe249c8		49ffc8			DECQ R8							
  diaodu.go:412		0xe249cb		488b842408010000	MOVQ 0x108(SP), AX					
  diaodu.go:412		0xe249d3		4d85c0			TESTQ R8, R8						
  diaodu.go:412		0xe249d6		0f8e35010000		JLE 0xe24b11						
  diaodu.go:412		0xe249dc		488b0a			MOVQ 0(DX), CX						
  diaodu.go:412		0xe249df		48898c2428010000	MOVQ CX, 0x128(SP)					
  diaodu.go:412		0xe249e7		488d7208		LEAQ 0x8(DX), SI					
  diaodu.go:412		0xe249eb		488dbc2430010000	LEAQ 0x130(SP), DI					
  diaodu.go:412		0xe249f3		660f1f840000000000	NOPW 0(AX)(AX*1)					
  diaodu.go:412		0xe249fc		0f1f4000		NOPL 0(AX)						
  diaodu.go:412		0xe24a00		48896c24f0		MOVQ BP, -0x10(SP)					
  diaodu.go:412		0xe24a05		488d6c24f0		LEAQ -0x10(SP), BP					
  diaodu.go:412		0xe24a0a		e84b4465ff		CALL 0x478e5a						
  diaodu.go:412		0xe24a0f		488b6d00		MOVQ 0(BP), BP						
  diaodu.go:413		0xe24a13		f20f10842448010000	MOVSD_XMM 0x148(SP), X0					
  diaodu.go:413		0xe24a1c		f20f108c2450010000	MOVSD_XMM 0x150(SP), X1					
  diaodu.go:417		0xe24a25		488b08			MOVQ 0(AX), CX						
  diaodu.go:417		0xe24a28		488b5808		MOVQ 0x8(AX), BX					
  diaodu.go:417		0xe24a2c		31f6			XORL SI, SI						
  diaodu.go:326		0xe24a2e		e9ee000000		JMP 0xe24b21						
  diaodu.go:326		0xe24a33		f20f1025152e0402	MOVSD_XMM $f64.3f50624dd2f1a9fc(SB), X4			
  diaodu.go:326		0xe24a3b		31ff			XORL DI, DI						
  diaodu.go:412		0xe24a3d		4c898424b8000000	MOVQ R8, 0xb8(SP)					
  diaodu.go:412		0xe24a45		48899424c0010000	MOVQ DX, 0x1c0(SP)					
  diaodu.go:418		0xe24a4d		4885ff			TESTQ DI, DI						
  diaodu.go:418		0xe24a50		7420			JE 0xe24a72						
  diaodu.go:414		0xe24a52		f20f10942458010000	MOVSD_XMM 0x158(SP), X2					
  diaodu.go:414		0xe24a5b		f20f109c2460010000	MOVSD_XMM 0x160(SP), X3					
  diaodu.go:424		0xe24a64		488b08			MOVQ 0(AX), CX						
  diaodu.go:424		0xe24a67		488b5808		MOVQ 0x8(AX), BX					
  diaodu.go:424		0xe24a6b		31f6			XORL SI, SI						
  diaodu.go:326		0xe24a6d		e916010000		JMP 0xe24b88						
  diaodu.go:413		0xe24a72		f20f118c2480000000	MOVSD_XMM X1, 0x80(SP)					
  diaodu.go:419		0xe24a7b		440f11bc24e8010000	MOVUPS X15, 0x1e8(SP)					
  diaodu.go:419		0xe24a84		440f11bc24f8010000	MOVUPS X15, 0x1f8(SP)					
  diaodu.go:419		0xe24a8d		66480f7ec0		MOVQ X0, AX						
  diaodu.go:419		0xe24a92		e8095664ff		CALL runtime.convT64(SB)				
  diaodu.go:419		0xe24a97		488d0d42e22100		LEAQ runtime.types+384224(SB), CX			
  diaodu.go:419		0xe24a9e		48898c24e8010000	MOVQ CX, 0x1e8(SP)					
  diaodu.go:419		0xe24aa6		48898424f0010000	MOVQ AX, 0x1f0(SP)					
  diaodu.go:419		0xe24aae		f20f10842480000000	MOVSD_XMM 0x80(SP), X0					
  diaodu.go:419		0xe24ab7		66480f7ec0		MOVQ X0, AX						
  diaodu.go:419		0xe24abc		0f1f4000		NOPL 0(AX)						
  diaodu.go:419		0xe24ac0		e8db5564ff		CALL runtime.convT64(SB)				
  diaodu.go:419		0xe24ac5		488d0d14e22100		LEAQ runtime.types+384224(SB), CX			
  diaodu.go:419		0xe24acc		48898c24f8010000	MOVQ CX, 0x1f8(SP)					
  diaodu.go:419		0xe24ad4		4889842400020000	MOVQ AX, 0x200(SP)					
  print.go:233		0xe24adc		488b1d9dd56e02		MOVQ os.Stdout(SB), BX					
  print.go:233		0xe24ae3		488d05f66f0402		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0xe24aea		bf44000000		MOVL $__major_os_version__+62(SB), DI			
  print.go:233		0xe24aef		488db424e8010000	LEAQ 0x1e8(SP), SI					
  print.go:233		0xe24af7		41b802000000		MOVL $__minor_os_version__+1(SB), R8			
  print.go:233		0xe24afd		4d89c1			MOVQ R8, R9						
  print.go:233		0xe24b00		488d0d52173800		LEAQ go:string.*+253265(SB), CX				
  print.go:233		0xe24b07		e814a76fff		CALL fmt.Fprintf(SB)					
  diaodu.go:420		0xe24b0c		e9a3feffff		JMP 0xe249b4						
  diaodu.go:441		0xe24b11		31db			XORL BX, BX						
  diaodu.go:441		0xe24b13		31c9			XORL CX, CX						
  diaodu.go:441		0xe24b15		4881c440020000		ADDQ $__file_alignment__+64(SB), SP			
  diaodu.go:441		0xe24b1c		5d			POPQ BP							
  diaodu.go:441		0xe24b1d		c3			RET							
  diaodu.go:326		0xe24b1e		48ffc6			INCQ SI							
  diaodu.go:326		0xe24b21		4839de			CMPQ SI, BX						
  diaodu.go:326		0xe24b24		0f8d09ffffff		JGE 0xe24a33						
  diaodu.go:326		0xe24b2a		488b3cf1		MOVQ 0(CX)(SI*8), DI					
  diaodu.go:327		0xe24b2e		f20f105710		MOVSD_XMM 0x10(DI), X2					
  diaodu.go:327		0xe24b33		f20f5cd0		SUBSD X0, X2						
  diaodu.go:328		0xe24b37		f20f105f18		MOVSD_XMM 0x18(DI), X3					
  unsafe.go:35		0xe24b3c		66490f7ed1		MOVQ X2, R9						
  abs.go:14		0xe24b41		490fbaf13f		BTRQ $__major_os_version__+57(SB), R9			
  unsafe.go:41		0xe24b46		66490f6ed1		MOVQ R9, X2						
  diaodu.go:328		0xe24b4b		f20f5cd9		SUBSD X1, X3						
  diaodu.go:329		0xe24b4f		f20f1025f92c0402	MOVSD_XMM $f64.3f50624dd2f1a9fc(SB), X4			
  diaodu.go:329		0xe24b57		660f2ee2		UCOMISD X2, X4						
  diaodu.go:329		0xe24b5b		7619			JBE 0xe24b76						
  unsafe.go:35		0xe24b5d		66490f7ed9		MOVQ X3, R9						
  abs.go:14		0xe24b62		490fbaf13f		BTRQ $__major_os_version__+57(SB), R9			
  unsafe.go:41		0xe24b67		66490f6ed1		MOVQ R9, X2						
  diaodu.go:329		0xe24b6c		660f2ee2		UCOMISD X2, X4						
  diaodu.go:329		0xe24b70		410f97c1		SETA R9							
  diaodu.go:329		0xe24b74		eb03			JMP 0xe24b79						
  diaodu.go:329		0xe24b76		4531c9			XORL R9, R9						
  diaodu.go:329		0xe24b79		4584c9			TESTL R9, R9						
  diaodu.go:329		0xe24b7c		74a0			JE 0xe24b1e						
  diaodu.go:329		0xe24b7e		6690			NOPW							
  diaodu.go:329		0xe24b80		e9b8feffff		JMP 0xe24a3d						
  diaodu.go:326		0xe24b85		48ffc6			INCQ SI							
  diaodu.go:326		0xe24b88		4839de			CMPQ SI, BX						
  diaodu.go:326		0xe24b8b		7d50			JGE 0xe24bdd						
  diaodu.go:326		0xe24b8d		4c8b0cf1		MOVQ 0(CX)(SI*8), R9					
  diaodu.go:327		0xe24b91		f2410f106910		MOVSD_XMM 0x10(R9), X5					
  diaodu.go:327		0xe24b97		f20f5cea		SUBSD X2, X5						
  diaodu.go:328		0xe24b9b		f2410f107118		MOVSD_XMM 0x18(R9), X6					
  unsafe.go:35		0xe24ba1		66490f7eea		MOVQ X5, R10						
  abs.go:14		0xe24ba6		490fbaf23f		BTRQ $__major_os_version__+57(SB), R10			
  unsafe.go:41		0xe24bab		66490f6eea		MOVQ R10, X5						
  diaodu.go:328		0xe24bb0		f20f5cf3		SUBSD X3, X6						
  diaodu.go:329		0xe24bb4		660f2ee5		UCOMISD X5, X4						
  diaodu.go:329		0xe24bb8		7619			JBE 0xe24bd3						
  unsafe.go:35		0xe24bba		66490f7ef2		MOVQ X6, R10						
  abs.go:14		0xe24bbf		490fbaf23f		BTRQ $__major_os_version__+57(SB), R10			
  unsafe.go:41		0xe24bc4		66490f6eea		MOVQ R10, X5						
  diaodu.go:329		0xe24bc9		660f2ee5		UCOMISD X5, X4						
  diaodu.go:329		0xe24bcd		410f97c2		SETA R10						
  diaodu.go:329		0xe24bd1		eb03			JMP 0xe24bd6						
  diaodu.go:329		0xe24bd3		4531d2			XORL R10, R10						
  diaodu.go:329		0xe24bd6		4584d2			TESTL R10, R10						
  diaodu.go:329		0xe24bd9		74aa			JE 0xe24b85						
  diaodu.go:329		0xe24bdb		eb03			JMP 0xe24be0						
  diaodu.go:329		0xe24bdd		4531c9			XORL R9, R9						
  diaodu.go:425		0xe24be0		4d85c9			TESTQ R9, R9						
  diaodu.go:425		0xe24be3		0f845e010000		JE 0xe24d47						
  diaodu.go:417		0xe24be9		4889bc24c8000000	MOVQ DI, 0xc8(SP)					
  diaodu.go:424		0xe24bf1		4c898c24e0000000	MOVQ R9, 0xe0(SP)					
  diaodu.go:319		0xe24bf9		f20f5cc2		SUBSD X2, X0						
  diaodu.go:320		0xe24bfd		f20f5ccb		SUBSD X3, X1						
  diaodu.go:321		0xe24c01		f20f59c0		MULSD X0, X0						
  diaodu.go:321		0xe24c05		f20f118424b0000000	MOVSD_XMM X0, 0xb0(SP)					
  diaodu.go:321		0xe24c0e		f20f59c9		MULSD X1, X1						
  diaodu.go:321		0xe24c12		f20f118c24a8000000	MOVSD_XMM X1, 0xa8(SP)					
  diaodu.go:430		0xe24c1b		90			NOPL							
  diaodu.go:431		0xe24c1c		488d057d102d00		LEAQ runtime.types+1117344(SB), AX			
  diaodu.go:431		0xe24c23		e878cb5eff		CALL runtime.newobject(SB)				
  diaodu.go:432		0xe24c28		488b8c24c8000000	MOVQ 0xc8(SP), CX					
  diaodu.go:432		0xe24c30		488b5108		MOVQ 0x8(CX), DX					
  diaodu.go:432		0xe24c34		488b09			MOVQ 0(CX), CX						
  diaodu.go:432		0xe24c37		48895008		MOVQ DX, 0x8(AX)					
  diaodu.go:321		0xe24c3b		f20f108424a8000000	MOVSD_XMM 0xa8(SP), X0					
  diaodu.go:321		0xe24c44		f20f108c24b0000000	MOVSD_XMM 0xb0(SP), X1					
  diaodu.go:321		0xe24c4d		f20f58c1		ADDSD X1, X0						
  diaodu.go:321		0xe24c51		f20f11442450		MOVSD_XMM X0, 0x50(SP)					
  diaodu.go:432		0xe24c57		833df28e730200		CMPL runtime.writeBarrier(SB), $0x0			
  diaodu.go:432		0xe24c5e		6690			NOPW							
  diaodu.go:432		0xe24c60		740e			JE 0xe24c70						
  diaodu.go:432		0xe24c62		e8b93765ff		CALL runtime.gcWriteBarrier1(SB)			
  diaodu.go:432		0xe24c67		49890b			MOVQ CX, 0(R11)						
  sqrt.go:94		0xe24c6a		f20f10442450		MOVSD_XMM 0x50(SP), X0					
  diaodu.go:432		0xe24c70		488908			MOVQ CX, 0(AX)						
  diaodu.go:433		0xe24c73		488b9424e0000000	MOVQ 0xe0(SP), DX					
  diaodu.go:433		0xe24c7b		4c8b4208		MOVQ 0x8(DX), R8					
  diaodu.go:433		0xe24c7f		488b12			MOVQ 0(DX), DX						
  diaodu.go:433		0xe24c82		4c894018		MOVQ R8, 0x18(AX)					
  diaodu.go:433		0xe24c86		833dc38e730200		CMPL runtime.writeBarrier(SB), $0x0			
  diaodu.go:433		0xe24c8d		740e			JE 0xe24c9d						
  diaodu.go:433		0xe24c8f		e88c3765ff		CALL runtime.gcWriteBarrier1(SB)			
  diaodu.go:433		0xe24c94		498913			MOVQ DX, 0(R11)						
  sqrt.go:94		0xe24c97		f20f10442450		MOVSD_XMM 0x50(SP), X0					
  diaodu.go:433		0xe24c9d		48895010		MOVQ DX, 0x10(AX)					
  sqrt.go:94		0xe24ca1		f20f51c0		SQRTSD X0, X0						
  diaodu.go:434		0xe24ca5		f20f114020		MOVSD_XMM X0, 0x20(AX)					
  diaodu.go:435		0xe24caa		48c7402801000000	MOVQ $__minor_os_version__(SB), 0x28(AX)		
  diaodu.go:438		0xe24cb2		488b942408010000	MOVQ 0x108(SP), DX					
  diaodu.go:438		0xe24cba		488b4a28		MOVQ 0x28(DX), CX					
  diaodu.go:438		0xe24cbe		488b5a20		MOVQ 0x20(DX), BX					
  diaodu.go:438		0xe24cc2		48ffc3			INCQ BX							
  diaodu.go:438		0xe24cc5		4c8b4218		MOVQ 0x18(DX), R8					
  diaodu.go:438		0xe24cc9		4839d9			CMPQ CX, BX						
  diaodu.go:438		0xe24ccc		7351			JAE 0xe24d1f						
  diaodu.go:431		0xe24cce		4889842418010000	MOVQ AX, 0x118(SP)					
  diaodu.go:438		0xe24cd6		4c89c0			MOVQ R8, AX						
  diaodu.go:438		0xe24cd9		bf01000000		MOVL $__minor_os_version__(SB), DI			
  diaodu.go:438		0xe24cde		488d353bf01f00		LEAQ runtime.types+257312(SB), SI			
  diaodu.go:438		0xe24ce5		e856cf64ff		CALL runtime.growslice(SB)				
  diaodu.go:438		0xe24cea		488b942408010000	MOVQ 0x108(SP), DX					
  diaodu.go:438		0xe24cf2		48894a28		MOVQ CX, 0x28(DX)					
  diaodu.go:438		0xe24cf6		833d538e730200		CMPL runtime.writeBarrier(SB), $0x0			
  diaodu.go:438		0xe24cfd		7411			JE 0xe24d10						
  diaodu.go:438		0xe24cff		90			NOPL							
  diaodu.go:438		0xe24d00		e83b3765ff		CALL runtime.gcWriteBarrier2(SB)			
  diaodu.go:438		0xe24d05		498903			MOVQ AX, 0(R11)						
  diaodu.go:438		0xe24d08		4c8b4218		MOVQ 0x18(DX), R8					
  diaodu.go:438		0xe24d0c		4d894308		MOVQ R8, 0x8(R11)					
  diaodu.go:438		0xe24d10		48894218		MOVQ AX, 0x18(DX)					
  diaodu.go:438		0xe24d14		4989c0			MOVQ AX, R8						
  diaodu.go:438		0xe24d17		488b842418010000	MOVQ 0x118(SP), AX					
  diaodu.go:438		0xe24d1f		48895a20		MOVQ BX, 0x20(DX)					
  diaodu.go:438		0xe24d23		833d268e730200		CMPL runtime.writeBarrier(SB), $0x0			
  diaodu.go:438		0xe24d2a		7411			JE 0xe24d3d						
  diaodu.go:438		0xe24d2c		e80f3765ff		CALL runtime.gcWriteBarrier2(SB)			
  diaodu.go:438		0xe24d31		498903			MOVQ AX, 0(R11)						
  diaodu.go:438		0xe24d34		4d8b4cd8f8		MOVQ -0x8(R8)(BX*8), R9					
  diaodu.go:438		0xe24d39		4d894b08		MOVQ R9, 0x8(R11)					
  diaodu.go:438		0xe24d3d		498944d8f8		MOVQ AX, -0x8(R8)(BX*8)					
  diaodu.go:438		0xe24d42		e96dfcffff		JMP 0xe249b4						
  diaodu.go:414		0xe24d47		f20f115c2468		MOVSD_XMM X3, 0x68(SP)					
  diaodu.go:426		0xe24d4d		440f11bc24c8010000	MOVUPS X15, 0x1c8(SP)					
  diaodu.go:426		0xe24d56		440f11bc24d8010000	MOVUPS X15, 0x1d8(SP)					
  diaodu.go:426		0xe24d5f		66480f7ed0		MOVQ X2, AX						
  diaodu.go:426		0xe24d64		e8375364ff		CALL runtime.convT64(SB)				
  diaodu.go:426		0xe24d69		488d0d70df2100		LEAQ runtime.types+384224(SB), CX			
  diaodu.go:426		0xe24d70		48898c24c8010000	MOVQ CX, 0x1c8(SP)					
  diaodu.go:426		0xe24d78		48898424d0010000	MOVQ AX, 0x1d0(SP)					
  diaodu.go:426		0xe24d80		f20f10442468		MOVSD_XMM 0x68(SP), X0					
  diaodu.go:426		0xe24d86		66480f7ec0		MOVQ X0, AX						
  diaodu.go:426		0xe24d8b		e8105364ff		CALL runtime.convT64(SB)				
  diaodu.go:426		0xe24d90		488d0d49df2100		LEAQ runtime.types+384224(SB), CX			
  diaodu.go:426		0xe24d97		48898c24d8010000	MOVQ CX, 0x1d8(SP)					
  diaodu.go:426		0xe24d9f		48898424e0010000	MOVQ AX, 0x1e0(SP)					
  print.go:233		0xe24da7		488b1dd2d26e02		MOVQ os.Stdout(SB), BX					
  print.go:233		0xe24dae		488d052b6d0402		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0xe24db5		bf44000000		MOVL $__major_os_version__+62(SB), DI			
  print.go:233		0xe24dba		488db424c8010000	LEAQ 0x1c8(SP), SI					
  print.go:233		0xe24dc2		41b802000000		MOVL $__minor_os_version__+1(SB), R8			
  print.go:233		0xe24dc8		4d89c1			MOVQ R8, R9						
  print.go:233		0xe24dcb		488d0dcb143800		LEAQ go:string.*+253333(SB), CX				
  print.go:233		0xe24dd2		e849a46fff		CALL fmt.Fprintf(SB)					
  diaodu.go:427		0xe24dd7		e9d8fbffff		JMP 0xe249b4						
  diaodu.go:338		0xe24ddc		48ffc6			INCQ SI							
  diaodu.go:338		0xe24ddf		90			NOPL							
  diaodu.go:338		0xe24de0		4c39ee			CMPQ SI, R13						
  diaodu.go:338		0xe24de3		0f8d2cfbffff		JGE 0xe24915						
  diaodu.go:338		0xe24de9		498b3cf4		MOVQ 0(R12)(SI*8), DI					
  diaodu.go:339		0xe24ded		4c8b7f08		MOVQ 0x8(DI), R15					
  diaodu.go:339		0xe24df1		4d39cf			CMPQ R15, R9						
  diaodu.go:339		0xe24df4		75e6			JNE 0xe24ddc						
  diaodu.go:338		0xe24df6		4889b424a0000000	MOVQ SI, 0xa0(SP)					
  diaodu.go:338		0xe24dfe		4889bc24d8000000	MOVQ DI, 0xd8(SP)					
  diaodu.go:339		0xe24e06		488b07			MOVQ 0(DI), AX						
  diaodu.go:339		0xe24e09		4c89f9			MOVQ R15, CX						
  diaodu.go:339		0xe24e0c		e84fe05dff		CALL runtime.memequal(SB)				
  diaodu.go:339		0xe24e11		84c0			TESTL AL, AL						
  diaodu.go:339		0xe24e13		0f85b5faffff		JNE 0xe248ce						
  diaodu.go:390		0xe24e19		488b842408010000	MOVQ 0x108(SP), AX					
  diaodu.go:412		0xe24e21		488b8c2438020000	MOVQ 0x238(SP), CX					
  diaodu.go:378		0xe24e29		488b9424c0010000	MOVQ 0x1c0(SP), DX					
  diaodu.go:339		0xe24e31		488b9c2410010000	MOVQ 0x110(SP), BX					
  diaodu.go:338		0xe24e39		488bb424a0000000	MOVQ 0xa0(SP), SI					
  diaodu.go:378		0xe24e41		4c8b8424b8000000	MOVQ 0xb8(SP), R8					
  diaodu.go:339		0xe24e49		4c8b8c2498000000	MOVQ 0x98(SP), R9					
  diaodu.go:339		0xe24e51		4c8b9424e8000000	MOVQ 0xe8(SP), R10					
  diaodu.go:339		0xe24e59		4c8b5c2460		MOVQ 0x60(SP), R11					
  diaodu.go:338		0xe24e5e		4c8ba424f8000000	MOVQ 0xf8(SP), R12					
  diaodu.go:338		0xe24e66		4c8bac2490000000	MOVQ 0x90(SP), R13					
  diaodu.go:339		0xe24e6e		e969ffffff		JMP 0xe24ddc						
  diaodu.go:338		0xe24e73		48ffc3			INCQ BX							
  diaodu.go:338		0xe24e76		4c39cb			CMPQ BX, R9						
  diaodu.go:338		0xe24e79		0f8dc5000000		JGE 0xe24f44						
  diaodu.go:338		0xe24e7f		4c8b24df		MOVQ 0(DI)(BX*8), R12					
  diaodu.go:339		0xe24e83		4d8b6c2408		MOVQ 0x8(R12), R13					
  diaodu.go:339		0xe24e88		4d39dd			CMPQ R13, R11						
  diaodu.go:339		0xe24e8b		75e6			JNE 0xe24e73						
  diaodu.go:338		0xe24e8d		48899c24a0000000	MOVQ BX, 0xa0(SP)					
  diaodu.go:338		0xe24e95		4c89a424d0000000	MOVQ R12, 0xd0(SP)					
  diaodu.go:339		0xe24e9d		498b0424		MOVQ 0(R12), AX						
  diaodu.go:339		0xe24ea1		4c89d3			MOVQ R10, BX						
  diaodu.go:339		0xe24ea4		4c89e9			MOVQ R13, CX						
  diaodu.go:339		0xe24ea7		e8b4df5dff		CALL runtime.memequal(SB)				
  diaodu.go:339		0xe24eac		84c0			TESTL AL, AL						
  diaodu.go:339		0xe24eae		7555			JNE 0xe24f05						
  diaodu.go:406		0xe24eb0		488b842408010000	MOVQ 0x108(SP), AX					
  diaodu.go:412		0xe24eb8		488b8c2438020000	MOVQ 0x238(SP), CX					
  diaodu.go:378		0xe24ec0		488b9424c0010000	MOVQ 0x1c0(SP), DX					
  diaodu.go:338		0xe24ec8		488b9c24a0000000	MOVQ 0xa0(SP), BX					
  diaodu.go:397		0xe24ed0		488bb424d8000000	MOVQ 0xd8(SP), SI					
  diaodu.go:338		0xe24ed8		488bbc24f0000000	MOVQ 0xf0(SP), DI					
  diaodu.go:378		0xe24ee0		4c8b8424b8000000	MOVQ 0xb8(SP), R8					
  diaodu.go:338		0xe24ee8		4c8b8c2488000000	MOVQ 0x88(SP), R9					
  diaodu.go:339		0xe24ef0		4c8b9424e8000000	MOVQ 0xe8(SP), R10					
  diaodu.go:339		0xe24ef8		4c8b5c2460		MOVQ 0x60(SP), R11					
  diaodu.go:339		0xe24efd		0f1f00			NOPL 0(AX)						
  diaodu.go:339		0xe24f00		e96effffff		JMP 0xe24e73						
  diaodu.go:406		0xe24f05		488b842408010000	MOVQ 0x108(SP), AX					
  diaodu.go:412		0xe24f0d		488b8c2438020000	MOVQ 0x238(SP), CX					
  diaodu.go:378		0xe24f15		488b9424c0010000	MOVQ 0x1c0(SP), DX					
  diaodu.go:397		0xe24f1d		488bb424d8000000	MOVQ 0xd8(SP), SI					
  diaodu.go:378		0xe24f25		4c8b8424b8000000	MOVQ 0xb8(SP), R8					
  diaodu.go:392		0xe24f2d		4c8b9424e8000000	MOVQ 0xe8(SP), R10					
  diaodu.go:392		0xe24f35		4c8b5c2460		MOVQ 0x60(SP), R11					
  diaodu.go:390		0xe24f3a		488b9c24d0000000	MOVQ 0xd0(SP), BX					
  diaodu.go:390		0xe24f42		eb02			JMP 0xe24f46						
  diaodu.go:390		0xe24f44		31db			XORL BX, BX						
  diaodu.go:391		0xe24f46		4885db			TESTQ BX, BX						
  diaodu.go:391		0xe24f49		0f845e010000		JE 0xe250ad						
  diaodu.go:390		0xe24f4f		48899c24d0000000	MOVQ BX, 0xd0(SP)					
  diaodu.go:397		0xe24f57		f20f104610		MOVSD_XMM 0x10(SI), X0					
  diaodu.go:397		0xe24f5c		f20f104e18		MOVSD_XMM 0x18(SI), X1					
  diaodu.go:319		0xe24f61		f20f5c4310		SUBSD 0x10(BX), X0					
  diaodu.go:320		0xe24f66		f20f5c4b18		SUBSD 0x18(BX), X1					
  diaodu.go:321		0xe24f6b		f20f59c0		MULSD X0, X0						
  diaodu.go:321		0xe24f6f		f20f118424b0000000	MOVSD_XMM X0, 0xb0(SP)					
  diaodu.go:321		0xe24f78		f20f59c9		MULSD X1, X1						
  diaodu.go:321		0xe24f7c		f20f118c24a8000000	MOVSD_XMM X1, 0xa8(SP)					
  diaodu.go:399		0xe24f85		488d05140d2d00		LEAQ runtime.types+1117344(SB), AX			
  diaodu.go:399		0xe24f8c		e80fc85eff		CALL runtime.newobject(SB)				
  diaodu.go:400		0xe24f91		488b8c24d8000000	MOVQ 0xd8(SP), CX					
  diaodu.go:400		0xe24f99		488b5108		MOVQ 0x8(CX), DX					
  diaodu.go:400		0xe24f9d		488b09			MOVQ 0(CX), CX						
  diaodu.go:400		0xe24fa0		48895008		MOVQ DX, 0x8(AX)					
  diaodu.go:321		0xe24fa4		f20f108424a8000000	MOVSD_XMM 0xa8(SP), X0					
  diaodu.go:321		0xe24fad		f20f108c24b0000000	MOVSD_XMM 0xb0(SP), X1					
  diaodu.go:321		0xe24fb6		f20f58c1		ADDSD X1, X0						
  diaodu.go:321		0xe24fba		f20f11442458		MOVSD_XMM X0, 0x58(SP)					
  diaodu.go:400		0xe24fc0		833d898b730200		CMPL runtime.writeBarrier(SB), $0x0			
  diaodu.go:400		0xe24fc7		740e			JE 0xe24fd7						
  diaodu.go:400		0xe24fc9		e8523465ff		CALL runtime.gcWriteBarrier1(SB)			
  diaodu.go:400		0xe24fce		49890b			MOVQ CX, 0(R11)						
  sqrt.go:94		0xe24fd1		f20f10442458		MOVSD_XMM 0x58(SP), X0					
  diaodu.go:400		0xe24fd7		488908			MOVQ CX, 0(AX)						
  diaodu.go:401		0xe24fda		488b9424d0000000	MOVQ 0xd0(SP), DX					
  diaodu.go:401		0xe24fe2		4c8b4208		MOVQ 0x8(DX), R8					
  diaodu.go:401		0xe24fe6		488b12			MOVQ 0(DX), DX						
  diaodu.go:401		0xe24fe9		4c894018		MOVQ R8, 0x18(AX)					
  diaodu.go:401		0xe24fed		833d5c8b730200		CMPL runtime.writeBarrier(SB), $0x0			
  diaodu.go:401		0xe24ff4		740e			JE 0xe25004						
  diaodu.go:401		0xe24ff6		e8253465ff		CALL runtime.gcWriteBarrier1(SB)			
  diaodu.go:401		0xe24ffb		498913			MOVQ DX, 0(R11)						
  sqrt.go:94		0xe24ffe		f20f10442458		MOVSD_XMM 0x58(SP), X0					
  diaodu.go:401		0xe25004		48895010		MOVQ DX, 0x10(AX)					
  sqrt.go:94		0xe25008		f20f51c0		SQRTSD X0, X0						
  diaodu.go:402		0xe2500c		f20f114020		MOVSD_XMM X0, 0x20(AX)					
  diaodu.go:403		0xe25011		48c7402801000000	MOVQ $__minor_os_version__(SB), 0x28(AX)		
  diaodu.go:406		0xe25019		488b942408010000	MOVQ 0x108(SP), DX					
  diaodu.go:406		0xe25021		488b4a28		MOVQ 0x28(DX), CX					
  diaodu.go:406		0xe25025		488b5a20		MOVQ 0x20(DX), BX					
  diaodu.go:406		0xe25029		48ffc3			INCQ BX							
  diaodu.go:406		0xe2502c		4c8b4218		MOVQ 0x18(DX), R8					
  diaodu.go:406		0xe25030		4839d9			CMPQ CX, BX						
  diaodu.go:406		0xe25033		7350			JAE 0xe25085						
  diaodu.go:399		0xe25035		4889842420010000	MOVQ AX, 0x120(SP)					
  diaodu.go:406		0xe2503d		4c89c0			MOVQ R8, AX						
  diaodu.go:406		0xe25040		bf01000000		MOVL $__minor_os_version__(SB), DI			
  diaodu.go:406		0xe25045		488d35d4ec1f00		LEAQ runtime.types+257312(SB), SI			
  diaodu.go:406		0xe2504c		e8efcb64ff		CALL runtime.growslice(SB)				
  diaodu.go:406		0xe25051		488b942408010000	MOVQ 0x108(SP), DX					
  diaodu.go:406		0xe25059		48894a28		MOVQ CX, 0x28(DX)					
  diaodu.go:406		0xe2505d		833dec8a730200		CMPL runtime.writeBarrier(SB), $0x0			
  diaodu.go:406		0xe25064		7410			JE 0xe25076						
  diaodu.go:406		0xe25066		e8d53365ff		CALL runtime.gcWriteBarrier2(SB)			
  diaodu.go:406		0xe2506b		498903			MOVQ AX, 0(R11)						
  diaodu.go:406		0xe2506e		4c8b4218		MOVQ 0x18(DX), R8					
  diaodu.go:406		0xe25072		4d894308		MOVQ R8, 0x8(R11)					
  diaodu.go:406		0xe25076		48894218		MOVQ AX, 0x18(DX)					
  diaodu.go:406		0xe2507a		4989c0			MOVQ AX, R8						
  diaodu.go:406		0xe2507d		488b842420010000	MOVQ 0x120(SP), AX					
  diaodu.go:406		0xe25085		48895a20		MOVQ BX, 0x20(DX)					
  diaodu.go:406		0xe25089		833dc08a730200		CMPL runtime.writeBarrier(SB), $0x0			
  diaodu.go:406		0xe25090		7411			JE 0xe250a3						
  diaodu.go:406		0xe25092		e8a93365ff		CALL runtime.gcWriteBarrier2(SB)			
  diaodu.go:406		0xe25097		498903			MOVQ AX, 0(R11)						
  diaodu.go:406		0xe2509a		4d8b4cd8f8		MOVQ -0x8(R8)(BX*8), R9					
  diaodu.go:406		0xe2509f		4d894b08		MOVQ R9, 0x8(R11)					
  diaodu.go:406		0xe250a3		498944d8f8		MOVQ AX, -0x8(R8)(BX*8)					
  diaodu.go:406		0xe250a8		e959f7ffff		JMP 0xe24806						
  diaodu.go:392		0xe250ad		440f11bc2408020000	MOVUPS X15, 0x208(SP)					
  diaodu.go:392		0xe250b6		4c89d0			MOVQ R10, AX						
  diaodu.go:392		0xe250b9		4c89db			MOVQ R11, BX						
  diaodu.go:392		0xe250bc		0f1f4000		NOPL 0(AX)						
  diaodu.go:392		0xe250c0		e85b5064ff		CALL runtime.convTstring(SB)				
  diaodu.go:392		0xe250c5		488d0d54d82100		LEAQ runtime.types+383264(SB), CX			
  diaodu.go:392		0xe250cc		48898c2408020000	MOVQ CX, 0x208(SP)					
  diaodu.go:392		0xe250d4		4889842410020000	MOVQ AX, 0x210(SP)					
  print.go:233		0xe250dc		488b1d9dcf6e02		MOVQ os.Stdout(SB), BX					
  print.go:233		0xe250e3		488d05f6690402		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0xe250ea		bf40000000		MOVL $__major_os_version__+58(SB), DI			
  print.go:233		0xe250ef		488db42408020000	LEAQ 0x208(SP), SI					
  print.go:233		0xe250f7		41b801000000		MOVL $__minor_os_version__(SB), R8			
  print.go:233		0xe250fd		4d89c1			MOVQ R8, R9						
  print.go:233		0xe25100		488d0d6dfa3700		LEAQ go:string.*+247404(SB), CX				
  print.go:233		0xe25107		e814a16fff		CALL fmt.Fprintf(SB)					
  diaodu.go:393		0xe2510c		e9f5f6ffff		JMP 0xe24806						
  diaodu.go:347		0xe25111		4889442408		MOVQ AX, 0x8(SP)					
  diaodu.go:347		0xe25116		48895c2410		MOVQ BX, 0x10(SP)					
  diaodu.go:347		0xe2511b		0f1f440000		NOPL 0(AX)(AX*1)					
  diaodu.go:347		0xe25120		e8bb1365ff		CALL runtime.morestack_noctxt.abi0(SB)			
  diaodu.go:347		0xe25125		488b442408		MOVQ 0x8(SP), AX					
  diaodu.go:347		0xe2512a		488b5c2410		MOVQ 0x10(SP), BX					
  diaodu.go:347		0xe2512f		e90cf4ffff		JMP CAS-Backend/pkg/diapdu.BuildGraphFromFile(SB)	
  :-1			0xe25134		cc			INT $__subsystem__(SB)					
  :-1			0xe25135		cc			INT $__subsystem__(SB)					
  :-1			0xe25136		cc			INT $__subsystem__(SB)					
  :-1			0xe25137		cc			INT $__subsystem__(SB)					
  :-1			0xe25138		cc			INT $__subsystem__(SB)					
  :-1			0xe25139		cc			INT $__subsystem__(SB)					
  :-1			0xe2513a		cc			INT $__subsystem__(SB)					
  :-1			0xe2513b		cc			INT $__subsystem__(SB)					
  :-1			0xe2513c		cc			INT $__subsystem__(SB)					
  :-1			0xe2513d		cc			INT $__subsystem__(SB)					
  :-1			0xe2513e		cc			INT $__subsystem__(SB)					
  :-1			0xe2513f		cc			INT $__subsystem__(SB)					

