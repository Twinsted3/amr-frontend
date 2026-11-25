TEXT CAS-Backend/pkg/diapdu.ResolveCanonicalVehicleID(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehicle_runtime.go
  vehicle_runtime.go:83		0xe417e0		4c8d6424c0		LEAQ -0x40(SP), R12							
  vehicle_runtime.go:83		0xe417e5		4d3b6610		CMPQ R12, 0x10(R14)							
  vehicle_runtime.go:83		0xe417e9		0f869f010000		JBE 0xe4198e								
  vehicle_runtime.go:83		0xe417ef		55			PUSHQ BP								
  vehicle_runtime.go:83		0xe417f0		4889e5			MOVQ SP, BP								
  vehicle_runtime.go:83		0xe417f3		4881ecb8000000		SUBQ $.file+107(SB), SP							
  vehicle_runtime.go:83		0xe417fa		48898424c8000000	MOVQ AX, 0xc8(SP)							
  vehicle_runtime.go:84		0xe41802		4885db			TESTQ BX, BX								
  vehicle_runtime.go:84		0xe41805		746a			JE 0xe41871								
  vehicle_runtime.go:84		0xe41807		48899c24d0000000	MOVQ BX, 0xd0(SP)							
  vehicle_runtime.go:84		0xe4180f		48898424c8000000	MOVQ AX, 0xc8(SP)							
  vehicle_runtime.go:87		0xe41817		488b1552331700		MOVQ CAS-Backend/pkg/diapdu.globalVehicleRuntime(SB), DX		
  vehicle_runtime.go:87		0xe4181e		48899424a8000000	MOVQ DX, 0xa8(SP)							
  vehicle_runtime.go:88		0xe41826		4889d9			MOVQ BX, CX								
  vehicle_runtime.go:88		0xe41829		4889c3			MOVQ AX, BX								
  vehicle_runtime.go:88		0xe4182c		4889d0			MOVQ DX, AX								
  vehicle_runtime.go:88		0xe4182f		e88c010000		CALL CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).cachedCanonical(SB)	
  vehicle_runtime.go:88		0xe41834		4885db			TESTQ BX, BX								
  vehicle_runtime.go:88		0xe41837		752f			JNE 0xe41868								
  vehicle_runtime.go:91		0xe41839		e8829fb5ff		CALL CAS-Backend/biz/dao.GetAllVehicles(SB)				
  vehicle_runtime.go:91		0xe4183e		6690			NOPW									
  vehicle_runtime.go:92		0xe41840		4885ff			TESTQ DI, DI								
  vehicle_runtime.go:92		0xe41843		750a			JNE 0xe4184f								
  vehicle_runtime.go:95		0xe41845		488b8c24d0000000	MOVQ 0xd0(SP), CX							
  vehicle_runtime.go:95		0xe4184d		eb36			JMP 0xe41885								
  vehicle_runtime.go:93		0xe4184f		488b8424c8000000	MOVQ 0xc8(SP), AX							
  vehicle_runtime.go:93		0xe41857		488b9c24d0000000	MOVQ 0xd0(SP), BX							
  vehicle_runtime.go:93		0xe4185f		4881c4b8000000		ADDQ $.file+107(SB), SP							
  vehicle_runtime.go:93		0xe41866		5d			POPQ BP									
  vehicle_runtime.go:93		0xe41867		c3			RET									
  vehicle_runtime.go:89		0xe41868		4881c4b8000000		ADDQ $.file+107(SB), SP							
  vehicle_runtime.go:89		0xe4186f		5d			POPQ BP									
  vehicle_runtime.go:89		0xe41870		c3			RET									
  vehicle_runtime.go:85		0xe41871		31c0			XORL AX, AX								
  vehicle_runtime.go:85		0xe41873		31db			XORL BX, BX								
  vehicle_runtime.go:85		0xe41875		4881c4b8000000		ADDQ $.file+107(SB), SP							
  vehicle_runtime.go:85		0xe4187c		5d			POPQ BP									
  vehicle_runtime.go:85		0xe4187d		c3			RET									
  vehicle_runtime.go:95		0xe4187e		4883c078		ADDQ $.file+43(SB), AX							
  vehicle_runtime.go:95		0xe41882		48ffcb			DECQ BX									
  vehicle_runtime.go:95		0xe41885		4885db			TESTQ BX, BX								
  vehicle_runtime.go:95		0xe41888		0f8eec000000		JLE 0xe4197a								
  vehicle_runtime.go:95		0xe4188e		48895c2428		MOVQ BX, 0x28(SP)							
  vehicle_runtime.go:95		0xe41893		48898424b0000000	MOVQ AX, 0xb0(SP)							
  vehicle_runtime.go:95		0xe4189b		488b10			MOVQ 0(AX), DX								
  vehicle_runtime.go:95		0xe4189e		4889542430		MOVQ DX, 0x30(SP)							
  vehicle_runtime.go:95		0xe418a3		488d7008		LEAQ 0x8(AX), SI							
  vehicle_runtime.go:95		0xe418a7		488d7c2438		LEAQ 0x38(SP), DI							
  vehicle_runtime.go:95		0xe418ac		48896c24f0		MOVQ BP, -0x10(SP)							
  vehicle_runtime.go:95		0xe418b1		488d6c24f0		LEAQ -0x10(SP), BP							
  vehicle_runtime.go:95		0xe418b6		e8837563ff		CALL 0x478e3e								
  vehicle_runtime.go:95		0xe418bb		488b6d00		MOVQ 0(BP), BP								
  vehicle_runtime.go:96		0xe418bf		488b542438		MOVQ 0x38(SP), DX							
  vehicle_runtime.go:96		0xe418c4		4839d1			CMPQ CX, DX								
  vehicle_runtime.go:96		0xe418c7		7404			JE 0xe418cd								
  vehicle_runtime.go:96		0xe418c9		31d2			XORL DX, DX								
  vehicle_runtime.go:96		0xe418cb		eb33			JMP 0xe41900								
  vehicle_runtime.go:96		0xe418cd		488b442430		MOVQ 0x30(SP), AX							
  vehicle_runtime.go:96		0xe418d2		488b9c24c8000000	MOVQ 0xc8(SP), BX							
  vehicle_runtime.go:96		0xe418da		4889d1			MOVQ DX, CX								
  vehicle_runtime.go:96		0xe418dd		0f1f00			NOPL 0(AX)								
  vehicle_runtime.go:96		0xe418e0		e87b155cff		CALL runtime.memequal(SB)						
  vehicle_runtime.go:96		0xe418e5		488b8c24d0000000	MOVQ 0xd0(SP), CX							
  vehicle_runtime.go:95		0xe418ed		488b5c2428		MOVQ 0x28(SP), BX							
  vehicle_runtime.go:96		0xe418f2		89c2			MOVL AX, DX								
  vehicle_runtime.go:95		0xe418f4		488b8424b0000000	MOVQ 0xb0(SP), AX							
  vehicle_runtime.go:95		0xe418fc		0f1f4000		NOPL 0(AX)								
  vehicle_runtime.go:96		0xe41900		84d2			TESTL DL, DL								
  vehicle_runtime.go:96		0xe41902		7544			JNE 0xe41948								
  vehicle_runtime.go:96		0xe41904		488b542460		MOVQ 0x60(SP), DX							
  vehicle_runtime.go:96		0xe41909		4839d1			CMPQ CX, DX								
  vehicle_runtime.go:96		0xe4190c		7404			JE 0xe41912								
  vehicle_runtime.go:96		0xe4190e		31d2			XORL DX, DX								
  vehicle_runtime.go:96		0xe41910		eb2e			JMP 0xe41940								
  vehicle_runtime.go:96		0xe41912		488b442458		MOVQ 0x58(SP), AX							
  vehicle_runtime.go:96		0xe41917		488b9c24c8000000	MOVQ 0xc8(SP), BX							
  vehicle_runtime.go:96		0xe4191f		4889d1			MOVQ DX, CX								
  vehicle_runtime.go:96		0xe41922		e839155cff		CALL runtime.memequal(SB)						
  vehicle_runtime.go:96		0xe41927		488b8c24d0000000	MOVQ 0xd0(SP), CX							
  vehicle_runtime.go:95		0xe4192f		488b5c2428		MOVQ 0x28(SP), BX							
  vehicle_runtime.go:96		0xe41934		89c2			MOVL AX, DX								
  vehicle_runtime.go:95		0xe41936		488b8424b0000000	MOVQ 0xb0(SP), AX							
  vehicle_runtime.go:95		0xe4193e		6690			NOPW									
  vehicle_runtime.go:96		0xe41940		84d2			TESTL DL, DL								
  vehicle_runtime.go:96		0xe41942		0f8436ffffff		JE 0xe4187e								
  vehicle_runtime.go:97		0xe41948		488b7c2430		MOVQ 0x30(SP), DI							
  vehicle_runtime.go:97		0xe4194d		488b742438		MOVQ 0x38(SP), SI							
  vehicle_runtime.go:97		0xe41952		488b8424a8000000	MOVQ 0xa8(SP), AX							
  vehicle_runtime.go:97		0xe4195a		488b9c24c8000000	MOVQ 0xc8(SP), BX							
  vehicle_runtime.go:97		0xe41962		e8d9010000		CALL CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).setAlias(SB)		
  vehicle_runtime.go:98		0xe41967		488b442430		MOVQ 0x30(SP), AX							
  vehicle_runtime.go:98		0xe4196c		488b5c2438		MOVQ 0x38(SP), BX							
  vehicle_runtime.go:98		0xe41971		4881c4b8000000		ADDQ $.file+107(SB), SP							
  vehicle_runtime.go:98		0xe41978		5d			POPQ BP									
  vehicle_runtime.go:98		0xe41979		c3			RET									
  vehicle_runtime.go:101	0xe4197a		488b8424c8000000	MOVQ 0xc8(SP), AX							
  vehicle_runtime.go:101	0xe41982		4889cb			MOVQ CX, BX								
  vehicle_runtime.go:101	0xe41985		4881c4b8000000		ADDQ $.file+107(SB), SP							
  vehicle_runtime.go:101	0xe4198c		5d			POPQ BP									
  vehicle_runtime.go:101	0xe4198d		c3			RET									
  vehicle_runtime.go:83		0xe4198e		4889442408		MOVQ AX, 0x8(SP)							
  vehicle_runtime.go:83		0xe41993		48895c2410		MOVQ BX, 0x10(SP)							
  vehicle_runtime.go:83		0xe41998		e8434b63ff		CALL runtime.morestack_noctxt.abi0(SB)					
  vehicle_runtime.go:83		0xe4199d		488b442408		MOVQ 0x8(SP), AX							
  vehicle_runtime.go:83		0xe419a2		488b5c2410		MOVQ 0x10(SP), BX							
  vehicle_runtime.go:83		0xe419a7		e934feffff		JMP CAS-Backend/pkg/diapdu.ResolveCanonicalVehicleID(SB)		
  :-1				0xe419ac		cc			INT $__subsystem__(SB)							
  :-1				0xe419ad		cc			INT $__subsystem__(SB)							
  :-1				0xe419ae		cc			INT $__subsystem__(SB)							
  :-1				0xe419af		cc			INT $__subsystem__(SB)							
  :-1				0xe419b0		cc			INT $__subsystem__(SB)							
  :-1				0xe419b1		cc			INT $__subsystem__(SB)							
  :-1				0xe419b2		cc			INT $__subsystem__(SB)							
  :-1				0xe419b3		cc			INT $__subsystem__(SB)							
  :-1				0xe419b4		cc			INT $__subsystem__(SB)							
  :-1				0xe419b5		cc			INT $__subsystem__(SB)							
  :-1				0xe419b6		cc			INT $__subsystem__(SB)							
  :-1				0xe419b7		cc			INT $__subsystem__(SB)							
  :-1				0xe419b8		cc			INT $__subsystem__(SB)							
  :-1				0xe419b9		cc			INT $__subsystem__(SB)							
  :-1				0xe419ba		cc			INT $__subsystem__(SB)							
  :-1				0xe419bb		cc			INT $__subsystem__(SB)							
  :-1				0xe419bc		cc			INT $__subsystem__(SB)							
  :-1				0xe419bd		cc			INT $__subsystem__(SB)							
  :-1				0xe419be		cc			INT $__subsystem__(SB)							
  :-1				0xe419bf		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).cachedCanonical(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehicle_runtime.go
  vehicle_runtime.go:104	0xe419c0		493b6610		CMPQ SP, 0x10(R14)									
  vehicle_runtime.go:104	0xe419c4		0f86e0000000		JBE 0xe41aaa										
  vehicle_runtime.go:104	0xe419ca		55			PUSHQ BP										
  vehicle_runtime.go:104	0xe419cb		4889e5			MOVQ SP, BP										
  vehicle_runtime.go:104	0xe419ce		4883ec50		SUBQ $.file+3(SB), SP									
  vehicle_runtime.go:104	0xe419d2		48895c2468		MOVQ BX, 0x68(SP)									
  vehicle_runtime.go:104	0xe419d7		66440fd67c2448		MOVQ X15, 0x48(SP)									
  vehicle_runtime.go:104	0xe419de		c644242700		MOVB $0x0, 0x27(SP)									
  vehicle_runtime.go:104	0xe419e3		440f117c2428		MOVUPS X15, 0x28(SP)									
  vehicle_runtime.go:105	0xe419e9		ba01000000		MOVL $__minor_os_version__(SB), DX							
  vehicle_runtime.go:105	0xe419ee		f00fc15010		LOCK XADDL DX, 0x10(AX)									
  type.go:88			0xe419f3		ffc2			INCL DX											
  rwmutex.go:70			0xe419f5		85d2			TESTL DX, DX										
  rwmutex.go:70			0xe419f7		7d2e			JGE 0xe41a27										
  rwmutex.go:70			0xe419f9		4889442460		MOVQ AX, 0x60(SP)									
  rwmutex.go:70			0xe419fe		48894c2470		MOVQ CX, 0x70(SP)									
  rwmutex.go:70			0xe41a03		48895c2468		MOVQ BX, 0x68(SP)									
  rwmutex.go:72			0xe41a08		488d500c		LEAQ 0xc(AX), DX									
  rwmutex.go:72			0xe41a0c		31db			XORL BX, BX										
  rwmutex.go:72			0xe41a0e		31c9			XORL CX, CX										
  rwmutex.go:72			0xe41a10		4889d0			MOVQ DX, AX										
  rwmutex.go:72			0xe41a13		e848fb62ff		CALL sync.runtime_SemacquireRWMutexR(SB)						
  vehicle_runtime.go:106	0xe41a18		488b442460		MOVQ 0x60(SP), AX									
  vehicle_runtime.go:107	0xe41a1d		488b4c2470		MOVQ 0x70(SP), CX									
  vehicle_runtime.go:107	0xe41a22		488b5c2468		MOVQ 0x68(SP), BX									
  vehicle_runtime.go:106	0xe41a27		488d15b2000000		LEAQ CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).cachedCanonical.deferwrap1(SB), DX	
  vehicle_runtime.go:106	0xe41a2e		4889542438		MOVQ DX, 0x38(SP)									
  vehicle_runtime.go:106	0xe41a33		4889442440		MOVQ AX, 0x40(SP)									
  vehicle_runtime.go:106	0xe41a38		488d542438		LEAQ 0x38(SP), DX									
  vehicle_runtime.go:106	0xe41a3d		4889542448		MOVQ DX, 0x48(SP)									
  vehicle_runtime.go:106	0xe41a42		c644242701		MOVB $__minor_os_version__(SB), 0x27(SP)						
  vehicle_runtime.go:107	0xe41a47		488b5038		MOVQ 0x38(AX), DX									
  vehicle_runtime.go:107	0xe41a4b		488d05cec02300		LEAQ runtime.types+625440(SB), AX							
  vehicle_runtime.go:107	0xe41a52		4889cf			MOVQ CX, DI										
  vehicle_runtime.go:107	0xe41a55		4889d9			MOVQ BX, CX										
  vehicle_runtime.go:107	0xe41a58		4889d3			MOVQ DX, BX										
  vehicle_runtime.go:107	0xe41a5b		0f1f440000		NOPL 0(AX)(AX*1)									
  vehicle_runtime.go:107	0xe41a60		e8db285dff		CALL runtime.mapaccess1_faststr(SB)							
  vehicle_runtime.go:107	0xe41a65		488b10			MOVQ 0(AX), DX										
  vehicle_runtime.go:107	0xe41a68		488b7008		MOVQ 0x8(AX), SI									
  vehicle_runtime.go:107	0xe41a6c		4889542428		MOVQ DX, 0x28(SP)									
  vehicle_runtime.go:107	0xe41a71		4889742430		MOVQ SI, 0x30(SP)									
  vehicle_runtime.go:107	0xe41a76		c644242700		MOVB $0x0, 0x27(SP)									
  vehicle_runtime.go:107	0xe41a7b		488b542448		MOVQ 0x48(SP), DX									
  vehicle_runtime.go:107	0xe41a80		488b32			MOVQ 0(DX), SI										
  vehicle_runtime.go:107	0xe41a83		ffd6			CALL SI											
  vehicle_runtime.go:107	0xe41a85		488b442428		MOVQ 0x28(SP), AX									
  vehicle_runtime.go:107	0xe41a8a		488b5c2430		MOVQ 0x30(SP), BX									
  vehicle_runtime.go:107	0xe41a8f		4883c450		ADDQ $.file+3(SB), SP									
  vehicle_runtime.go:107	0xe41a93		5d			POPQ BP											
  vehicle_runtime.go:107	0xe41a94		c3			RET											
  vehicle_runtime.go:107	0xe41a95		e8e6805fff		CALL runtime.deferreturn(SB)								
  vehicle_runtime.go:107	0xe41a9a		488b442428		MOVQ 0x28(SP), AX									
  vehicle_runtime.go:107	0xe41a9f		488b5c2430		MOVQ 0x30(SP), BX									
  vehicle_runtime.go:107	0xe41aa4		4883c450		ADDQ $.file+3(SB), SP									
  vehicle_runtime.go:107	0xe41aa8		5d			POPQ BP											
  vehicle_runtime.go:107	0xe41aa9		c3			RET											
  vehicle_runtime.go:104	0xe41aaa		4889442408		MOVQ AX, 0x8(SP)									
  vehicle_runtime.go:104	0xe41aaf		48895c2410		MOVQ BX, 0x10(SP)									
  vehicle_runtime.go:104	0xe41ab4		48894c2418		MOVQ CX, 0x18(SP)									
  vehicle_runtime.go:104	0xe41ab9		e8224a63ff		CALL runtime.morestack_noctxt.abi0(SB)							
  vehicle_runtime.go:104	0xe41abe		488b442408		MOVQ 0x8(SP), AX									
  vehicle_runtime.go:104	0xe41ac3		488b5c2410		MOVQ 0x10(SP), BX									
  vehicle_runtime.go:104	0xe41ac8		488b4c2418		MOVQ 0x18(SP), CX									
  vehicle_runtime.go:104	0xe41acd		e9eefeffff		JMP CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).cachedCanonical(SB)			
  :-1				0xe41ad2		cc			INT $__subsystem__(SB)									
  :-1				0xe41ad3		cc			INT $__subsystem__(SB)									
  :-1				0xe41ad4		cc			INT $__subsystem__(SB)									
  :-1				0xe41ad5		cc			INT $__subsystem__(SB)									
  :-1				0xe41ad6		cc			INT $__subsystem__(SB)									
  :-1				0xe41ad7		cc			INT $__subsystem__(SB)									
  :-1				0xe41ad8		cc			INT $__subsystem__(SB)									
  :-1				0xe41ad9		cc			INT $__subsystem__(SB)									
  :-1				0xe41ada		cc			INT $__subsystem__(SB)									
  :-1				0xe41adb		cc			INT $__subsystem__(SB)									
  :-1				0xe41adc		cc			INT $__subsystem__(SB)									
  :-1				0xe41add		cc			INT $__subsystem__(SB)									
  :-1				0xe41ade		cc			INT $__subsystem__(SB)									
  :-1				0xe41adf		cc			INT $__subsystem__(SB)									

TEXT CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).cachedCanonical.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehicle_runtime.go
  vehicle_runtime.go:106	0xe41ae0		493b6610		CMPQ SP, 0x10(R14)								
  vehicle_runtime.go:106	0xe41ae4		7630			JBE 0xe41b16									
  vehicle_runtime.go:106	0xe41ae6		55			PUSHQ BP									
  vehicle_runtime.go:106	0xe41ae7		4889e5			MOVQ SP, BP									
  vehicle_runtime.go:106	0xe41aea		4883ec10		SUBQ $__major_os_version__+10(SB), SP						
  vehicle_runtime.go:106	0xe41aee		4d8b6620		MOVQ 0x20(R14), R12								
  vehicle_runtime.go:106	0xe41af2		4d85e4			TESTQ R12, R12									
  vehicle_runtime.go:106	0xe41af5		7526			JNE 0xe41b1d									
  vehicle_runtime.go:106	0xe41af7		488b4208		MOVQ 0x8(DX), AX								
  rwmutex.go:118		0xe41afb		bbffffffff		MOVL $-0x1, BX									
  rwmutex.go:118		0xe41b00		f00fc15810		LOCK XADDL BX, 0x10(AX)								
  type.go:88			0xe41b05		ffcb			DECL BX										
  rwmutex.go:118		0xe41b07		85db			TESTL BX, BX									
  rwmutex.go:118		0xe41b09		7d05			JGE 0xe41b10									
  rwmutex.go:120		0xe41b0b		e8307364ff		CALL sync.(*RWMutex).rUnlockSlow(SB)						
  vehicle_runtime.go:106	0xe41b10		4883c410		ADDQ $__major_os_version__+10(SB), SP						
  vehicle_runtime.go:106	0xe41b14		5d			POPQ BP										
  vehicle_runtime.go:106	0xe41b15		c3			RET										
  vehicle_runtime.go:106	0xe41b16		e8454963ff		CALL runtime.morestack.abi0(SB)							
  vehicle_runtime.go:106	0xe41b1b		ebc3			JMP CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).cachedCanonical.deferwrap1(SB)	
  vehicle_runtime.go:106	0xe41b1d		4c8d6c2420		LEAQ 0x20(SP), R13								
  vehicle_runtime.go:106	0xe41b22		4d392c24		CMPQ 0(R12), R13								
  vehicle_runtime.go:106	0xe41b26		75cf			JNE 0xe41af7									
  vehicle_runtime.go:106	0xe41b28		49892424		MOVQ SP, 0(R12)									
  vehicle_runtime.go:106	0xe41b2c		ebc9			JMP 0xe41af7									
  :-1				0xe41b2e		cc			INT $__subsystem__(SB)								
  :-1				0xe41b2f		cc			INT $__subsystem__(SB)								
  :-1				0xe41b30		cc			INT $__subsystem__(SB)								
  :-1				0xe41b31		cc			INT $__subsystem__(SB)								
  :-1				0xe41b32		cc			INT $__subsystem__(SB)								
  :-1				0xe41b33		cc			INT $__subsystem__(SB)								
  :-1				0xe41b34		cc			INT $__subsystem__(SB)								
  :-1				0xe41b35		cc			INT $__subsystem__(SB)								
  :-1				0xe41b36		cc			INT $__subsystem__(SB)								
  :-1				0xe41b37		cc			INT $__subsystem__(SB)								
  :-1				0xe41b38		cc			INT $__subsystem__(SB)								
  :-1				0xe41b39		cc			INT $__subsystem__(SB)								
  :-1				0xe41b3a		cc			INT $__subsystem__(SB)								
  :-1				0xe41b3b		cc			INT $__subsystem__(SB)								
  :-1				0xe41b3c		cc			INT $__subsystem__(SB)								
  :-1				0xe41b3d		cc			INT $__subsystem__(SB)								
  :-1				0xe41b3e		cc			INT $__subsystem__(SB)								
  :-1				0xe41b3f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).setAlias(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehicle_runtime.go
  vehicle_runtime.go:110	0xe41b40		493b6610		CMPQ SP, 0x10(R14)						
  vehicle_runtime.go:110	0xe41b44		0f86b8000000		JBE 0xe41c02							
  vehicle_runtime.go:110	0xe41b4a		55			PUSHQ BP							
  vehicle_runtime.go:110	0xe41b4b		4889e5			MOVQ SP, BP							
  vehicle_runtime.go:110	0xe41b4e		4883ec20		SUBQ $__major_os_version__+26(SB), SP				
  vehicle_runtime.go:115	0xe41b52		48897c2448		MOVQ DI, 0x48(SP)						
  vehicle_runtime.go:115	0xe41b57		48894c2440		MOVQ CX, 0x40(SP)						
  vehicle_runtime.go:115	0xe41b5c		48895c2438		MOVQ BX, 0x38(SP)						
  vehicle_runtime.go:115	0xe41b61		4889442430		MOVQ AX, 0x30(SP)						
  vehicle_runtime.go:115	0xe41b66		4889742450		MOVQ SI, 0x50(SP)						
  vehicle_runtime.go:111	0xe41b6b		8400			TESTB AL, 0(AX)							
  vehicle_runtime.go:111	0xe41b6d		e84e7364ff		CALL sync.(*RWMutex).Lock(SB)					
  vehicle_runtime.go:112	0xe41b72		488b4c2430		MOVQ 0x30(SP), CX						
  vehicle_runtime.go:112	0xe41b77		488b5938		MOVQ 0x38(CX), BX						
  vehicle_runtime.go:112	0xe41b7b		488d059ebf2300		LEAQ runtime.types+625440(SB), AX				
  vehicle_runtime.go:112	0xe41b82		488b7c2440		MOVQ 0x40(SP), DI						
  vehicle_runtime.go:112	0xe41b87		488b4c2438		MOVQ 0x38(SP), CX						
  vehicle_runtime.go:112	0xe41b8c		e88fc462ff		CALL runtime.mapassign_faststr(SB)				
  vehicle_runtime.go:112	0xe41b91		488b4c2450		MOVQ 0x50(SP), CX						
  vehicle_runtime.go:112	0xe41b96		48894808		MOVQ CX, 0x8(AX)						
  vehicle_runtime.go:112	0xe41b9a		833dafbf710200		CMPL runtime.writeBarrier(SB), $0x0				
  vehicle_runtime.go:112	0xe41ba1		7507			JNE 0xe41baa							
  vehicle_runtime.go:112	0xe41ba3		488b4c2448		MOVQ 0x48(SP), CX						
  vehicle_runtime.go:112	0xe41ba8		eb14			JMP 0xe41bbe							
  vehicle_runtime.go:112	0xe41baa		e8916863ff		CALL runtime.gcWriteBarrier2(SB)				
  vehicle_runtime.go:112	0xe41baf		488b4c2448		MOVQ 0x48(SP), CX						
  vehicle_runtime.go:112	0xe41bb4		49890b			MOVQ CX, 0(R11)							
  vehicle_runtime.go:112	0xe41bb7		488b10			MOVQ 0(AX), DX							
  vehicle_runtime.go:112	0xe41bba		49895308		MOVQ DX, 0x8(R11)						
  vehicle_runtime.go:112	0xe41bbe		488908			MOVQ CX, 0(AX)							
  vehicle_runtime.go:113	0xe41bc1		e8dac466ff		CALL time.Now(SB)						
  vehicle_runtime.go:113	0xe41bc6		488b542430		MOVQ 0x30(SP), DX						
  vehicle_runtime.go:113	0xe41bcb		48894220		MOVQ AX, 0x20(DX)						
  vehicle_runtime.go:113	0xe41bcf		48895a28		MOVQ BX, 0x28(DX)						
  vehicle_runtime.go:113	0xe41bd3		833d76bf710200		CMPL runtime.writeBarrier(SB), $0x0				
  vehicle_runtime.go:113	0xe41bda		7414			JE 0xe41bf0							
  vehicle_runtime.go:113	0xe41bdc		0f1f4000		NOPL 0(AX)							
  vehicle_runtime.go:113	0xe41be0		e85b6863ff		CALL runtime.gcWriteBarrier2(SB)				
  vehicle_runtime.go:113	0xe41be5		49890b			MOVQ CX, 0(R11)							
  vehicle_runtime.go:113	0xe41be8		488b5a30		MOVQ 0x30(DX), BX						
  vehicle_runtime.go:113	0xe41bec		49895b08		MOVQ BX, 0x8(R11)						
  vehicle_runtime.go:113	0xe41bf0		48894a30		MOVQ CX, 0x30(DX)						
  vehicle_runtime.go:114	0xe41bf4		4889d0			MOVQ DX, AX							
  vehicle_runtime.go:114	0xe41bf7		e8247464ff		CALL sync.(*RWMutex).Unlock(SB)					
  vehicle_runtime.go:115	0xe41bfc		4883c420		ADDQ $__major_os_version__+26(SB), SP				
  vehicle_runtime.go:115	0xe41c00		5d			POPQ BP								
  vehicle_runtime.go:115	0xe41c01		c3			RET								
  vehicle_runtime.go:110	0xe41c02		4889442408		MOVQ AX, 0x8(SP)						
  vehicle_runtime.go:110	0xe41c07		48895c2410		MOVQ BX, 0x10(SP)						
  vehicle_runtime.go:110	0xe41c0c		48894c2418		MOVQ CX, 0x18(SP)						
  vehicle_runtime.go:110	0xe41c11		48897c2420		MOVQ DI, 0x20(SP)						
  vehicle_runtime.go:110	0xe41c16		4889742428		MOVQ SI, 0x28(SP)						
  vehicle_runtime.go:110	0xe41c1b		0f1f440000		NOPL 0(AX)(AX*1)						
  vehicle_runtime.go:110	0xe41c20		e8bb4863ff		CALL runtime.morestack_noctxt.abi0(SB)				
  vehicle_runtime.go:110	0xe41c25		488b442408		MOVQ 0x8(SP), AX						
  vehicle_runtime.go:110	0xe41c2a		488b5c2410		MOVQ 0x10(SP), BX						
  vehicle_runtime.go:110	0xe41c2f		488b4c2418		MOVQ 0x18(SP), CX						
  vehicle_runtime.go:110	0xe41c34		488b7c2420		MOVQ 0x20(SP), DI						
  vehicle_runtime.go:110	0xe41c39		488b742428		MOVQ 0x28(SP), SI						
  vehicle_runtime.go:110	0xe41c3e		6690			NOPW								
  vehicle_runtime.go:110	0xe41c40		e9fbfeffff		JMP CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).setAlias(SB)	
  :-1				0xe41c45		cc			INT $__subsystem__(SB)						
  :-1				0xe41c46		cc			INT $__subsystem__(SB)						
  :-1				0xe41c47		cc			INT $__subsystem__(SB)						
  :-1				0xe41c48		cc			INT $__subsystem__(SB)						
  :-1				0xe41c49		cc			INT $__subsystem__(SB)						
  :-1				0xe41c4a		cc			INT $__subsystem__(SB)						
  :-1				0xe41c4b		cc			INT $__subsystem__(SB)						
  :-1				0xe41c4c		cc			INT $__subsystem__(SB)						
  :-1				0xe41c4d		cc			INT $__subsystem__(SB)						
  :-1				0xe41c4e		cc			INT $__subsystem__(SB)						
  :-1				0xe41c4f		cc			INT $__subsystem__(SB)						
  :-1				0xe41c50		cc			INT $__subsystem__(SB)						
  :-1				0xe41c51		cc			INT $__subsystem__(SB)						
  :-1				0xe41c52		cc			INT $__subsystem__(SB)						
  :-1				0xe41c53		cc			INT $__subsystem__(SB)						
  :-1				0xe41c54		cc			INT $__subsystem__(SB)						
  :-1				0xe41c55		cc			INT $__subsystem__(SB)						
  :-1				0xe41c56		cc			INT $__subsystem__(SB)						
  :-1				0xe41c57		cc			INT $__subsystem__(SB)						
  :-1				0xe41c58		cc			INT $__subsystem__(SB)						
  :-1				0xe41c59		cc			INT $__subsystem__(SB)						
  :-1				0xe41c5a		cc			INT $__subsystem__(SB)						
  :-1				0xe41c5b		cc			INT $__subsystem__(SB)						
  :-1				0xe41c5c		cc			INT $__subsystem__(SB)						
  :-1				0xe41c5d		cc			INT $__subsystem__(SB)						
  :-1				0xe41c5e		cc			INT $__subsystem__(SB)						
  :-1				0xe41c5f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.HandleVehicleRuntimePush(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehicle_runtime.go
  vehicle_runtime.go:129	0xe41c60		493b6610		CMPQ SP, 0x10(R14)						
  vehicle_runtime.go:129	0xe41c64		0f86b5040000		JBE 0xe4211f							
  vehicle_runtime.go:129	0xe41c6a		55			PUSHQ BP							
  vehicle_runtime.go:129	0xe41c6b		4889e5			MOVQ SP, BP							
  vehicle_runtime.go:129	0xe41c6e		4883ec68		SUBQ $.file+27(SB), SP						
  vehicle_runtime.go:130	0xe41c72		4885c0			TESTQ AX, AX							
  vehicle_runtime.go:130	0xe41c75		0f849a040000		JE 0xe42115							
  vehicle_runtime.go:130	0xe41c7b		488b5808		MOVQ 0x8(AX), BX						
  vehicle_runtime.go:130	0xe41c7f		90			NOPL								
  vehicle_runtime.go:130	0xe41c80		4885db			TESTQ BX, BX							
  vehicle_runtime.go:130	0xe41c83		0f848c040000		JE 0xe42115							
  vehicle_runtime.go:130	0xe41c89		4889442478		MOVQ AX, 0x78(SP)						
  vehicle_runtime.go:130	0xe41c8e		488b08			MOVQ 0(AX), CX							
  vehicle_runtime.go:133	0xe41c91		4889c8			MOVQ CX, AX							
  vehicle_runtime.go:133	0xe41c94		e847fbffff		CALL CAS-Backend/pkg/diapdu.ResolveCanonicalVehicleID(SB)	
  vehicle_runtime.go:133	0xe41c99		4889442450		MOVQ AX, 0x50(SP)						
  vehicle_runtime.go:133	0xe41c9e		48895c2420		MOVQ BX, 0x20(SP)						
  vehicle_runtime.go:147	0xe41ca3		e8f8c366ff		CALL time.Now(SB)						
  vehicle_runtime.go:147	0xe41ca8		4889442430		MOVQ AX, 0x30(SP)						
  vehicle_runtime.go:147	0xe41cad		48894c2460		MOVQ CX, 0x60(SP)						
  vehicle_runtime.go:147	0xe41cb2		48895c2428		MOVQ BX, 0x28(SP)						
  vehicle_runtime.go:134	0xe41cb7		488d05e28b2f00		LEAQ runtime.types+1398944(SB), AX				
  vehicle_runtime.go:134	0xe41cbe		6690			NOPW								
  vehicle_runtime.go:134	0xe41cc0		e8dbfa5cff		CALL runtime.newobject(SB)					
  vehicle_runtime.go:135	0xe41cc5		488b4c2478		MOVQ 0x78(SP), CX						
  vehicle_runtime.go:135	0xe41cca		488b5108		MOVQ 0x8(CX), DX						
  vehicle_runtime.go:135	0xe41cce		488b31			MOVQ 0(CX), SI							
  vehicle_runtime.go:135	0xe41cd1		48895008		MOVQ DX, 0x8(AX)						
  vehicle_runtime.go:135	0xe41cd5		833d74be710200		CMPL runtime.writeBarrier(SB), $0x0				
  vehicle_runtime.go:135	0xe41cdc		7507			JNE 0xe41ce5							
  vehicle_runtime.go:136	0xe41cde		488b542450		MOVQ 0x50(SP), DX						
  vehicle_runtime.go:135	0xe41ce3		eb11			JMP 0xe41cf6							
  vehicle_runtime.go:135	0xe41ce5		e8566763ff		CALL runtime.gcWriteBarrier2(SB)				
  vehicle_runtime.go:135	0xe41cea		498933			MOVQ SI, 0(R11)							
  vehicle_runtime.go:136	0xe41ced		488b542450		MOVQ 0x50(SP), DX						
  vehicle_runtime.go:136	0xe41cf2		49895308		MOVQ DX, 0x8(R11)						
  vehicle_runtime.go:135	0xe41cf6		488930			MOVQ SI, 0(AX)							
  vehicle_runtime.go:136	0xe41cf9		4c8b442420		MOVQ 0x20(SP), R8						
  vehicle_runtime.go:136	0xe41cfe		4c894018		MOVQ R8, 0x18(AX)						
  vehicle_runtime.go:136	0xe41d02		48895010		MOVQ DX, 0x10(AX)						
  vehicle_runtime.go:137	0xe41d06		f20f104110		MOVSD_XMM 0x10(CX), X0						
  vehicle_runtime.go:137	0xe41d0b		f20f114020		MOVSD_XMM X0, 0x20(AX)						
  vehicle_runtime.go:138	0xe41d10		f20f104118		MOVSD_XMM 0x18(CX), X0						
  vehicle_runtime.go:138	0xe41d15		f20f114028		MOVSD_XMM X0, 0x28(AX)						
  vehicle_runtime.go:139	0xe41d1a		f20f104120		MOVSD_XMM 0x20(CX), X0						
  vehicle_runtime.go:139	0xe41d1f		f20f114030		MOVSD_XMM X0, 0x30(AX)						
  vehicle_runtime.go:140	0xe41d24		4c8b4930		MOVQ 0x30(CX), R9						
  vehicle_runtime.go:140	0xe41d28		4c8b5128		MOVQ 0x28(CX), R10						
  vehicle_runtime.go:140	0xe41d2c		4c894848		MOVQ R9, 0x48(AX)						
  vehicle_runtime.go:140	0xe41d30		833d19be710200		CMPL runtime.writeBarrier(SB), $0x0				
  vehicle_runtime.go:140	0xe41d37		7408			JE 0xe41d41							
  vehicle_runtime.go:140	0xe41d39		e8e26663ff		CALL runtime.gcWriteBarrier1(SB)				
  vehicle_runtime.go:140	0xe41d3e		4d8913			MOVQ R10, 0(R11)						
  vehicle_runtime.go:140	0xe41d41		4c895040		MOVQ R10, 0x40(AX)						
  vehicle_runtime.go:141	0xe41d45		440fb64940		MOVZX 0x40(CX), R9						
  vehicle_runtime.go:141	0xe41d4a		448888b8000000		MOVB R9, 0xb8(AX)						
  vehicle_runtime.go:142	0xe41d51		f20f104148		MOVSD_XMM 0x48(CX), X0						
  vehicle_runtime.go:142	0xe41d56		f20f1180c0000000	MOVSD_XMM X0, 0xc0(AX)						
  vehicle_runtime.go:143	0xe41d5e		f20f104150		MOVSD_XMM 0x50(CX), X0						
  vehicle_runtime.go:143	0xe41d63		f20f1180c8000000	MOVSD_XMM X0, 0xc8(AX)						
  vehicle_runtime.go:144	0xe41d6b		440fb64958		MOVZX 0x58(CX), R9						
  vehicle_runtime.go:144	0xe41d70		448888d0000000		MOVB R9, 0xd0(AX)						
  vehicle_runtime.go:145	0xe41d77		440fb64959		MOVZX 0x59(CX), R9						
  vehicle_runtime.go:145	0xe41d7c		448888d1000000		MOVB R9, 0xd1(AX)						
  vehicle_runtime.go:146	0xe41d83		440fb6495a		MOVZX 0x5a(CX), R9						
  vehicle_runtime.go:146	0xe41d88		448888d2000000		MOVB R9, 0xd2(AX)						
  vehicle_runtime.go:147	0xe41d8f		4c8b4c2430		MOVQ 0x30(SP), R9						
  vehicle_runtime.go:147	0xe41d94		4c8988e8000000		MOVQ R9, 0xe8(AX)						
  vehicle_runtime.go:147	0xe41d9b		4c8b4c2428		MOVQ 0x28(SP), R9						
  vehicle_runtime.go:147	0xe41da0		4c8988f0000000		MOVQ R9, 0xf0(AX)						
  vehicle_runtime.go:147	0xe41da7		833da2bd710200		CMPL runtime.writeBarrier(SB), $0x0				
  vehicle_runtime.go:147	0xe41dae		7507			JNE 0xe41db7							
  vehicle_runtime.go:147	0xe41db0		4c8b4c2460		MOVQ 0x60(SP), R9						
  vehicle_runtime.go:147	0xe41db5		eb0d			JMP 0xe41dc4							
  vehicle_runtime.go:147	0xe41db7		e8646663ff		CALL runtime.gcWriteBarrier1(SB)				
  vehicle_runtime.go:147	0xe41dbc		4c8b4c2460		MOVQ 0x60(SP), R9						
  vehicle_runtime.go:147	0xe41dc1		4d890b			MOVQ R9, 0(R11)							
  vehicle_runtime.go:134	0xe41dc4		4889442440		MOVQ AX, 0x40(SP)						
  vehicle_runtime.go:147	0xe41dc9		4c8988f8000000		MOVQ R9, 0xf8(AX)						
  vehicle_runtime.go:149	0xe41dd0		4883796000		CMPQ 0x60(CX), $0x0						
  vehicle_runtime.go:149	0xe41dd5		7446			JE 0xe41e1d							
  vehicle_runtime.go:150	0xe41dd7		c680e000000001		MOVB $__minor_os_version__(SB), 0xe0(AX)			
  vehicle_runtime.go:151	0xe41dde		488b5160		MOVQ 0x60(CX), DX						
  vehicle_runtime.go:151	0xe41de2		488b5968		MOVQ 0x68(CX), BX						
  veh_lock.go:7			0xe41de6		4889d0			MOVQ DX, AX							
  veh_lock.go:7			0xe41de9		e8120bfdff		CALL CAS-Backend/pkg/agvcontrol.ParseCurrentLock(SB)		
  vehicle_runtime.go:151	0xe41dee		0fb6cb			MOVZX BL, CX							
  vehicle_runtime.go:151	0xe41df1		4885c9			TESTQ CX, CX							
  vehicle_runtime.go:151	0xe41df4		48c7c1ffffffff		MOVQ $-0x1, CX							
  vehicle_runtime.go:151	0xe41dfb		480f45c8		CMOVNE AX, CX							
  vehicle_runtime.go:151	0xe41dff		488b7c2440		MOVQ 0x40(SP), DI						
  vehicle_runtime.go:151	0xe41e04		48898fd8000000		MOVQ CX, 0xd8(DI)						
  vehicle_runtime.go:154	0xe41e0b		4889f8			MOVQ DI, AX							
  vehicle_runtime.go:153	0xe41e0e		488b4c2478		MOVQ 0x78(SP), CX						
  vehicle_runtime.go:160	0xe41e13		488b542450		MOVQ 0x50(SP), DX						
  vehicle_runtime.go:160	0xe41e18		4c8b442420		MOVQ 0x20(SP), R8						
  vehicle_runtime.go:153	0xe41e1d		488b7170		MOVQ 0x70(CX), SI						
  vehicle_runtime.go:153	0xe41e21		4885f6			TESTQ SI, SI							
  vehicle_runtime.go:153	0xe41e24		746d			JE 0xe41e93							
  vehicle_runtime.go:154	0xe41e26		833d23bd710200		CMPL runtime.writeBarrier(SB), $0x0				
  vehicle_runtime.go:154	0xe41e2d		7431			JE 0xe41e60							
  vehicle_runtime.go:153	0xe41e2f		4889742458		MOVQ SI, 0x58(SP)						
  vehicle_runtime.go:154	0xe41e34		488d5850		LEAQ 0x50(AX), BX						
  vehicle_runtime.go:154	0xe41e38		4889f1			MOVQ SI, CX							
  vehicle_runtime.go:154	0xe41e3b		488d055e442d00		LEAQ runtime.types+1249952(SB), AX				
  vehicle_runtime.go:154	0xe41e42		e8d9305dff		CALL runtime.wbMove(SB)						
  vehicle_runtime.go:154	0xe41e47		488b442440		MOVQ 0x40(SP), AX						
  vehicle_runtime.go:156	0xe41e4c		488b4c2478		MOVQ 0x78(SP), CX						
  vehicle_runtime.go:160	0xe41e51		488b542450		MOVQ 0x50(SP), DX						
  vehicle_runtime.go:154	0xe41e56		488b742458		MOVQ 0x58(SP), SI						
  vehicle_runtime.go:160	0xe41e5b		4c8b442420		MOVQ 0x20(SP), R8						
  vehicle_runtime.go:154	0xe41e60		488b1e			MOVQ 0(SI), BX							
  vehicle_runtime.go:154	0xe41e63		48895850		MOVQ BX, 0x50(AX)						
  vehicle_runtime.go:154	0xe41e67		4883c608		ADDQ $__major_os_version__+2(SB), SI				
  vehicle_runtime.go:154	0xe41e6b		488d7858		LEAQ 0x58(AX), DI						
  vehicle_runtime.go:154	0xe41e6f		660f1f840000000000	NOPW 0(AX)(AX*1)						
  vehicle_runtime.go:154	0xe41e78		0f1f840000000000	NOPL 0(AX)(AX*1)						
  vehicle_runtime.go:154	0xe41e80		48896c24f0		MOVQ BP, -0x10(SP)						
  vehicle_runtime.go:154	0xe41e85		488d6c24f0		LEAQ -0x10(SP), BP						
  vehicle_runtime.go:154	0xe41e8a		e8bd6f63ff		CALL 0x478e4c							
  vehicle_runtime.go:154	0xe41e8f		488b6d00		MOVQ 0(BP), BP							
  vehicle_runtime.go:156	0xe41e93		f20f104138		MOVSD_XMM 0x38(CX), X0						
  vehicle_runtime.go:218	0xe41e98		0f57c9			XORPS X1, X1							
  vehicle_runtime.go:218	0xe41e9b		660f2ec8		UCOMISD X0, X1							
  vehicle_runtime.go:218	0xe41e9f		90			NOPL								
  vehicle_runtime.go:218	0xe41ea0		7204			JB 0xe41ea6							
  vehicle_runtime.go:218	0xe41ea2		31db			XORL BX, BX							
  vehicle_runtime.go:156	0xe41ea4		eb54			JMP 0xe41efa							
  vehicle_runtime.go:221	0xe41ea6		f20f100dd2590202	MOVSD_XMM $f64.3ff0000000000000(SB), X1				
  vehicle_runtime.go:221	0xe41eae		660f2ec8		UCOMISD X0, X1							
  vehicle_runtime.go:221	0xe41eb2		721f			JB 0xe41ed3							
  vehicle_runtime.go:222	0xe41eb4		f20f100dd4590202	MOVSD_XMM $f64.4059000000000000(SB), X1				
  vehicle_runtime.go:222	0xe41ebc		f20f59c1		MULSD X1, X0							
  vehicle_runtime.go:222	0xe41ec0		f20f100da8590202	MOVSD_XMM $f64.3fe0000000000000(SB), X1				
  vehicle_runtime.go:222	0xe41ec8		f20f58c8		ADDSD X0, X1							
  vehicle_runtime.go:222	0xe41ecc		f2480f2cd9		CVTTSD2SIQ X1, BX						
  vehicle_runtime.go:156	0xe41ed1		eb27			JMP 0xe41efa							
  vehicle_runtime.go:224	0xe41ed3		f20f100db5590202	MOVSD_XMM $f64.4059000000000000(SB), X1				
  vehicle_runtime.go:224	0xe41edb		660f2ec1		UCOMISD X1, X0							
  vehicle_runtime.go:224	0xe41edf		90			NOPL								
  vehicle_runtime.go:224	0xe41ee0		7607			JBE 0xe41ee9							
  vehicle_runtime.go:224	0xe41ee2		bb64000000		MOVL $.file+23(SB), BX						
  vehicle_runtime.go:156	0xe41ee7		eb11			JMP 0xe41efa							
  vehicle_runtime.go:227	0xe41ee9		f20f100d7f590202	MOVSD_XMM $f64.3fe0000000000000(SB), X1				
  vehicle_runtime.go:227	0xe41ef1		f20f58c8		ADDSD X0, X1							
  vehicle_runtime.go:227	0xe41ef5		f2480f2cd9		CVTTSD2SIQ X1, BX						
  vehicle_runtime.go:156	0xe41efa		48895838		MOVQ BX, 0x38(AX)						
  vehicle_runtime.go:158	0xe41efe		488b0d6b2c1700		MOVQ CAS-Backend/pkg/diapdu.globalVehicleRuntime(SB), CX	
  vehicle_runtime.go:158	0xe41f05		48894c2438		MOVQ CX, 0x38(SP)						
  vehicle_runtime.go:159	0xe41f0a		8401			TESTB AL, 0(CX)							
  vehicle_runtime.go:159	0xe41f0c		4889c8			MOVQ CX, AX							
  vehicle_runtime.go:159	0xe41f0f		e8ac6f64ff		CALL sync.(*RWMutex).Lock(SB)					
  vehicle_runtime.go:160	0xe41f14		488b4c2438		MOVQ 0x38(SP), CX						
  vehicle_runtime.go:160	0xe41f19		488b5918		MOVQ 0x18(CX), BX						
  vehicle_runtime.go:160	0xe41f1d		488d05dcb72300		LEAQ runtime.types+624384(SB), AX				
  vehicle_runtime.go:160	0xe41f24		488b7c2420		MOVQ 0x20(SP), DI						
  vehicle_runtime.go:160	0xe41f29		488b4c2450		MOVQ 0x50(SP), CX						
  vehicle_runtime.go:160	0xe41f2e		e80dbd62ff		CALL runtime.mapaccess2_faststr(SB)				
  vehicle_runtime.go:160	0xe41f33		84db			TESTL BL, BL							
  vehicle_runtime.go:160	0xe41f35		747e			JE 0xe41fb5							
  vehicle_runtime.go:160	0xe41f37		488b542478		MOVQ 0x78(SP), DX						
  vehicle_runtime.go:160	0xe41f3c		48837a7000		CMPQ 0x70(DX), $0x0						
  vehicle_runtime.go:160	0xe41f41		7577			JNE 0xe41fba							
  vehicle_runtime.go:160	0xe41f43		488b30			MOVQ 0(AX), SI							
  vehicle_runtime.go:161	0xe41f46		8406			TESTB AL, 0(SI)							
  vehicle_runtime.go:161	0xe41f48		833d01bc710200		CMPL runtime.writeBarrier(SB), $0x0				
  vehicle_runtime.go:161	0xe41f4f		742b			JE 0xe41f7c							
  vehicle_runtime.go:160	0xe41f51		4889742448		MOVQ SI, 0x48(SP)						
  vehicle_runtime.go:161	0xe41f56		488b5c2440		MOVQ 0x40(SP), BX						
  vehicle_runtime.go:161	0xe41f5b		488d5350		LEAQ 0x50(BX), DX						
  vehicle_runtime.go:161	0xe41f5f		488d4e50		LEAQ 0x50(SI), CX						
  vehicle_runtime.go:161	0xe41f63		488d0536432d00		LEAQ runtime.types+1249952(SB), AX				
  vehicle_runtime.go:161	0xe41f6a		4889d3			MOVQ DX, BX							
  vehicle_runtime.go:161	0xe41f6d		e8ae2f5dff		CALL runtime.wbMove(SB)						
  vehicle_runtime.go:164	0xe41f72		488b542478		MOVQ 0x78(SP), DX						
  vehicle_runtime.go:161	0xe41f77		488b742448		MOVQ 0x48(SP), SI						
  vehicle_runtime.go:161	0xe41f7c		4c8b4650		MOVQ 0x50(SI), R8						
  vehicle_runtime.go:161	0xe41f80		488b7c2440		MOVQ 0x40(SP), DI						
  vehicle_runtime.go:161	0xe41f85		4c894750		MOVQ R8, 0x50(DI)						
  vehicle_runtime.go:161	0xe41f89		4883c658		ADDQ $.file+11(SB), SI						
  vehicle_runtime.go:161	0xe41f8d		4c8d4758		LEAQ 0x58(DI), R8						
  vehicle_runtime.go:161	0xe41f91		4c89c7			MOVQ R8, DI							
  vehicle_runtime.go:161	0xe41f94		660f1f840000000000	NOPW 0(AX)(AX*1)						
  vehicle_runtime.go:161	0xe41f9d		0f1f00			NOPL 0(AX)							
  vehicle_runtime.go:161	0xe41fa0		48896c24f0		MOVQ BP, -0x10(SP)						
  vehicle_runtime.go:161	0xe41fa5		488d6c24f0		LEAQ -0x10(SP), BP						
  vehicle_runtime.go:161	0xe41faa		e89d6e63ff		CALL 0x478e4c							
  vehicle_runtime.go:161	0xe41faf		488b6d00		MOVQ 0(BP), BP							
  vehicle_runtime.go:161	0xe41fb3		eb05			JMP 0xe41fba							
  vehicle_runtime.go:164	0xe41fb5		488b542478		MOVQ 0x78(SP), DX						
  vehicle_runtime.go:163	0xe41fba		488b542438		MOVQ 0x38(SP), DX						
  vehicle_runtime.go:163	0xe41fbf		488b5a18		MOVQ 0x18(DX), BX						
  vehicle_runtime.go:163	0xe41fc3		488d0536b72300		LEAQ runtime.types+624384(SB), AX				
  vehicle_runtime.go:163	0xe41fca		488b4c2450		MOVQ 0x50(SP), CX						
  vehicle_runtime.go:163	0xe41fcf		488b7c2420		MOVQ 0x20(SP), DI						
  vehicle_runtime.go:163	0xe41fd4		e847c062ff		CALL runtime.mapassign_faststr(SB)				
  vehicle_runtime.go:163	0xe41fd9		8400			TESTB AL, 0(AX)							
  vehicle_runtime.go:163	0xe41fdb		833d6ebb710200		CMPL runtime.writeBarrier(SB), $0x0				
  vehicle_runtime.go:163	0xe41fe2		7507			JNE 0xe41feb							
  vehicle_runtime.go:163	0xe41fe4		488b542440		MOVQ 0x40(SP), DX						
  vehicle_runtime.go:163	0xe41fe9		eb14			JMP 0xe41fff							
  vehicle_runtime.go:163	0xe41feb		e8506463ff		CALL runtime.gcWriteBarrier2(SB)				
  vehicle_runtime.go:163	0xe41ff0		488b542440		MOVQ 0x40(SP), DX						
  vehicle_runtime.go:163	0xe41ff5		498913			MOVQ DX, 0(R11)							
  vehicle_runtime.go:163	0xe41ff8		488b30			MOVQ 0(AX), SI							
  vehicle_runtime.go:163	0xe41ffb		49897308		MOVQ SI, 0x8(R11)						
  vehicle_runtime.go:163	0xe41fff		488910			MOVQ DX, 0(AX)							
  vehicle_runtime.go:164	0xe42002		488b742438		MOVQ 0x38(SP), SI						
  vehicle_runtime.go:164	0xe42007		488b5e38		MOVQ 0x38(SI), BX						
  vehicle_runtime.go:164	0xe4200b		4c8b442478		MOVQ 0x78(SP), R8						
  vehicle_runtime.go:164	0xe42010		498b08			MOVQ 0(R8), CX							
  vehicle_runtime.go:164	0xe42013		498b7808		MOVQ 0x8(R8), DI						
  vehicle_runtime.go:164	0xe42017		488d0502bb2300		LEAQ runtime.types+625440(SB), AX				
  vehicle_runtime.go:164	0xe4201e		6690			NOPW								
  vehicle_runtime.go:164	0xe42020		e8fbbf62ff		CALL runtime.mapassign_faststr(SB)				
  vehicle_runtime.go:164	0xe42025		488b542420		MOVQ 0x20(SP), DX						
  vehicle_runtime.go:164	0xe4202a		48895008		MOVQ DX, 0x8(AX)						
  vehicle_runtime.go:164	0xe4202e		833d1bbb710200		CMPL runtime.writeBarrier(SB), $0x0				
  vehicle_runtime.go:164	0xe42035		7509			JNE 0xe42040							
  vehicle_runtime.go:164	0xe42037		488b4c2450		MOVQ 0x50(SP), CX						
  vehicle_runtime.go:164	0xe4203c		eb16			JMP 0xe42054							
  vehicle_runtime.go:164	0xe4203e		6690			NOPW								
  vehicle_runtime.go:164	0xe42040		e8fb6363ff		CALL runtime.gcWriteBarrier2(SB)				
  vehicle_runtime.go:164	0xe42045		488b4c2450		MOVQ 0x50(SP), CX						
  vehicle_runtime.go:164	0xe4204a		49890b			MOVQ CX, 0(R11)							
  vehicle_runtime.go:164	0xe4204d		488b18			MOVQ 0(AX), BX							
  vehicle_runtime.go:164	0xe42050		49895b08		MOVQ BX, 0x8(R11)						
  vehicle_runtime.go:164	0xe42054		488908			MOVQ CX, 0(AX)							
  vehicle_runtime.go:165	0xe42057		488b442438		MOVQ 0x38(SP), AX						
  vehicle_runtime.go:165	0xe4205c		0f1f4000		NOPL 0(AX)							
  vehicle_runtime.go:165	0xe42060		e8bb6f64ff		CALL sync.(*RWMutex).Unlock(SB)					
  vehicle_runtime.go:168	0xe42065		488b4c2478		MOVQ 0x78(SP), CX						
  vehicle_runtime.go:168	0xe4206a		488b4970		MOVQ 0x70(CX), CX						
  vehicle_runtime.go:168	0xe4206e		4885c9			TESTQ CX, CX							
  vehicle_runtime.go:168	0xe42071		7427			JE 0xe4209a							
  traffic_dynamic.go:95		0xe42073		4883795800		CMPQ 0x58(CX), $0x0						
  traffic_dynamic.go:95		0xe42078		7516			JNE 0xe42090							
  traffic_dynamic.go:95		0xe4207a		4883794800		CMPQ 0x48(CX), $0x0						
  traffic_dynamic.go:95		0xe4207f		90			NOPL								
  traffic_dynamic.go:95		0xe42080		750e			JNE 0xe42090							
  traffic_dynamic.go:95		0xe42082		4883793800		CMPQ 0x38(CX), $0x0						
  traffic_dynamic.go:95		0xe42087		7507			JNE 0xe42090							
  traffic_dynamic.go:95		0xe42089		4883790800		CMPQ 0x8(CX), $0x0						
  vehicle_runtime.go:168	0xe4208e		740a			JE 0xe4209a							
  vehicle_runtime.go:177	0xe42090		488b542440		MOVQ 0x40(SP), DX						
  vehicle_runtime.go:173	0xe42095		4889ce			MOVQ CX, SI							
  vehicle_runtime.go:169	0xe42098		eb32			JMP 0xe420cc							
  traffic_dynamic.go:95		0xe4209a		488b542440		MOVQ 0x40(SP), DX						
  traffic_dynamic.go:95		0xe4209f		4883baa800000000	CMPQ 0xa8(DX), $0x0						
  traffic_dynamic.go:95		0xe420a7		751b			JNE 0xe420c4							
  traffic_dynamic.go:95		0xe420a9		4883ba9800000000	CMPQ 0x98(DX), $0x0						
  traffic_dynamic.go:95		0xe420b1		7511			JNE 0xe420c4							
  traffic_dynamic.go:95		0xe420b3		4883ba8800000000	CMPQ 0x88(DX), $0x0						
  traffic_dynamic.go:95		0xe420bb		7507			JNE 0xe420c4							
  traffic_dynamic.go:95		0xe420bd		48837a5800		CMPQ 0x58(DX), $0x0						
  vehicle_runtime.go:170	0xe420c2		7406			JE 0xe420ca							
  vehicle_runtime.go:170	0xe420c4		488d7250		LEAQ 0x50(DX), SI						
  vehicle_runtime.go:171	0xe420c8		eb02			JMP 0xe420cc							
  vehicle_runtime.go:171	0xe420ca		31f6			XORL SI, SI							
  vehicle_runtime.go:173	0xe420cc		4885f6			TESTQ SI, SI							
  vehicle_runtime.go:173	0xe420cf		7414			JE 0xe420e5							
  vehicle_runtime.go:174	0xe420d1		488b442450		MOVQ 0x50(SP), AX						
  vehicle_runtime.go:174	0xe420d6		488b5c2420		MOVQ 0x20(SP), BX						
  vehicle_runtime.go:174	0xe420db		4889f1			MOVQ SI, CX							
  vehicle_runtime.go:174	0xe420de		6690			NOPW								
  vehicle_runtime.go:174	0xe420e0		e85b000000		CALL CAS-Backend/pkg/diapdu.pushMonitorTraffic(SB)		
  vehicle_runtime.go:176	0xe420e5		e8963cffff		CALL CAS-Backend/pkg/diapdu.IsAutoTaskSchedulerRunning(SB)	
  vehicle_runtime.go:176	0xe420ea		84c0			TESTL AL, AL							
  vehicle_runtime.go:176	0xe420ec		7417			JE 0xe42105							
  vehicle_runtime.go:177	0xe420ee		488b442450		MOVQ 0x50(SP), AX						
  vehicle_runtime.go:177	0xe420f3		488b5c2420		MOVQ 0x20(SP), BX						
  vehicle_runtime.go:177	0xe420f8		488b4c2440		MOVQ 0x40(SP), CX						
  vehicle_runtime.go:177	0xe420fd		0f1f00			NOPL 0(AX)							
  vehicle_runtime.go:177	0xe42100		e87b120000		CALL CAS-Backend/pkg/diapdu.ensureVehicleInSchedulerPool(SB)	
  vehicle_runtime.go:179	0xe42105		488b442450		MOVQ 0x50(SP), AX						
  vehicle_runtime.go:179	0xe4210a		488b5c2420		MOVQ 0x20(SP), BX						
  vehicle_runtime.go:179	0xe4210f		4883c468		ADDQ $.file+27(SB), SP						
  vehicle_runtime.go:179	0xe42113		5d			POPQ BP								
  vehicle_runtime.go:179	0xe42114		c3			RET								
  vehicle_runtime.go:131	0xe42115		31c0			XORL AX, AX							
  vehicle_runtime.go:131	0xe42117		31db			XORL BX, BX							
  vehicle_runtime.go:131	0xe42119		4883c468		ADDQ $.file+27(SB), SP						
  vehicle_runtime.go:131	0xe4211d		5d			POPQ BP								
  vehicle_runtime.go:131	0xe4211e		c3			RET								
  vehicle_runtime.go:129	0xe4211f		4889442408		MOVQ AX, 0x8(SP)						
  vehicle_runtime.go:129	0xe42124		e8b74363ff		CALL runtime.morestack_noctxt.abi0(SB)				
  vehicle_runtime.go:129	0xe42129		488b442408		MOVQ 0x8(SP), AX						
  vehicle_runtime.go:129	0xe4212e		e92dfbffff		JMP CAS-Backend/pkg/diapdu.HandleVehicleRuntimePush(SB)		
  :-1				0xe42133		cc			INT $__subsystem__(SB)						
  :-1				0xe42134		cc			INT $__subsystem__(SB)						
  :-1				0xe42135		cc			INT $__subsystem__(SB)						
  :-1				0xe42136		cc			INT $__subsystem__(SB)						
  :-1				0xe42137		cc			INT $__subsystem__(SB)						
  :-1				0xe42138		cc			INT $__subsystem__(SB)						
  :-1				0xe42139		cc			INT $__subsystem__(SB)						
  :-1				0xe4213a		cc			INT $__subsystem__(SB)						
  :-1				0xe4213b		cc			INT $__subsystem__(SB)						
  :-1				0xe4213c		cc			INT $__subsystem__(SB)						
  :-1				0xe4213d		cc			INT $__subsystem__(SB)						
  :-1				0xe4213e		cc			INT $__subsystem__(SB)						
  :-1				0xe4213f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.pushMonitorTraffic(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehicle_runtime.go
  vehicle_runtime.go:183	0xe42140		493b6610		CMPQ SP, 0x10(R14)						
  vehicle_runtime.go:183	0xe42144		0f8685000000		JBE 0xe421cf							
  vehicle_runtime.go:183	0xe4214a		55			PUSHQ BP							
  vehicle_runtime.go:183	0xe4214b		4889e5			MOVQ SP, BP							
  vehicle_runtime.go:183	0xe4214e		4883ec18		SUBQ $__major_os_version__+18(SB), SP				
  vehicle_runtime.go:183	0xe42152		4889442428		MOVQ AX, 0x28(SP)						
  vehicle_runtime.go:184	0xe42157		4885db			TESTQ BX, BX							
  vehicle_runtime.go:184	0xe4215a		746d			JE 0xe421c9							
  vehicle_runtime.go:184	0xe4215c		0f1f4000		NOPL 0(AX)							
  traffic_dynamic.go:92		0xe42160		4885c9			TESTQ CX, CX							
  traffic_dynamic.go:92		0xe42163		7464			JE 0xe421c9							
  vehicle_runtime.go:184	0xe42165		48894c2438		MOVQ CX, 0x38(SP)						
  vehicle_runtime.go:184	0xe4216a		48895c2430		MOVQ BX, 0x30(SP)						
  vehicle_runtime.go:184	0xe4216f		4889442428		MOVQ AX, 0x28(SP)						
  traffic_dynamic.go:95		0xe42174		4883795800		CMPQ 0x58(CX), $0x0						
  traffic_dynamic.go:95		0xe42179		7515			JNE 0xe42190							
  traffic_dynamic.go:95		0xe4217b		4883794800		CMPQ 0x48(CX), $0x0						
  traffic_dynamic.go:95		0xe42180		750e			JNE 0xe42190							
  traffic_dynamic.go:95		0xe42182		4883793800		CMPQ 0x38(CX), $0x0						
  traffic_dynamic.go:95		0xe42187		7507			JNE 0xe42190							
  traffic_dynamic.go:95		0xe42189		4883790800		CMPQ 0x8(CX), $0x0						
  vehicle_runtime.go:184	0xe4218e		7439			JE 0xe421c9							
  vehicle_runtime.go:187	0xe42190		e8eb5cffff		CALL CAS-Backend/pkg/diapdu.GetGlobalDynamicTraffic(SB)		
  vehicle_runtime.go:188	0xe42195		4885c0			TESTQ AX, AX							
  vehicle_runtime.go:188	0xe42198		7429			JE 0xe421c3							
  vehicle_runtime.go:191	0xe4219a		488b442428		MOVQ 0x28(SP), AX						
  vehicle_runtime.go:191	0xe4219f		488b5c2430		MOVQ 0x30(SP), BX						
  vehicle_runtime.go:191	0xe421a4		488b4c2438		MOVQ 0x38(SP), CX						
  vehicle_runtime.go:191	0xe421a9		e8f25dffff		CALL CAS-Backend/pkg/diapdu.HandleMonitorPush(SB)		
  vehicle_runtime.go:192	0xe421ae		488b442428		MOVQ 0x28(SP), AX						
  vehicle_runtime.go:192	0xe421b3		488b5c2430		MOVQ 0x30(SP), BX						
  vehicle_runtime.go:192	0xe421b8		e843000000		CALL CAS-Backend/pkg/diapdu.syncHubTaskPkgFromTraffic(SB)	
  vehicle_runtime.go:193	0xe421bd		4883c418		ADDQ $__major_os_version__+18(SB), SP				
  vehicle_runtime.go:193	0xe421c1		5d			POPQ BP								
  vehicle_runtime.go:193	0xe421c2		c3			RET								
  vehicle_runtime.go:189	0xe421c3		4883c418		ADDQ $__major_os_version__+18(SB), SP				
  vehicle_runtime.go:189	0xe421c7		5d			POPQ BP								
  vehicle_runtime.go:189	0xe421c8		c3			RET								
  vehicle_runtime.go:185	0xe421c9		4883c418		ADDQ $__major_os_version__+18(SB), SP				
  vehicle_runtime.go:185	0xe421cd		5d			POPQ BP								
  vehicle_runtime.go:185	0xe421ce		c3			RET								
  vehicle_runtime.go:183	0xe421cf		4889442408		MOVQ AX, 0x8(SP)						
  vehicle_runtime.go:183	0xe421d4		48895c2410		MOVQ BX, 0x10(SP)						
  vehicle_runtime.go:183	0xe421d9		48894c2418		MOVQ CX, 0x18(SP)						
  vehicle_runtime.go:183	0xe421de		6690			NOPW								
  vehicle_runtime.go:183	0xe421e0		e8fb4263ff		CALL runtime.morestack_noctxt.abi0(SB)				
  vehicle_runtime.go:183	0xe421e5		488b442408		MOVQ 0x8(SP), AX						
  vehicle_runtime.go:183	0xe421ea		488b5c2410		MOVQ 0x10(SP), BX						
  vehicle_runtime.go:183	0xe421ef		488b4c2418		MOVQ 0x18(SP), CX						
  vehicle_runtime.go:183	0xe421f4		e947ffffff		JMP CAS-Backend/pkg/diapdu.pushMonitorTraffic(SB)		
  :-1				0xe421f9		cc			INT $__subsystem__(SB)						
  :-1				0xe421fa		cc			INT $__subsystem__(SB)						
  :-1				0xe421fb		cc			INT $__subsystem__(SB)						
  :-1				0xe421fc		cc			INT $__subsystem__(SB)						
  :-1				0xe421fd		cc			INT $__subsystem__(SB)						
  :-1				0xe421fe		cc			INT $__subsystem__(SB)						
  :-1				0xe421ff		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.syncHubTaskPkgFromTraffic(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehicle_runtime.go
  vehicle_runtime.go:196	0xe42200		493b6610		CMPQ SP, 0x10(R14)								
  vehicle_runtime.go:196	0xe42204		0f8686010000		JBE 0xe42390									
  vehicle_runtime.go:196	0xe4220a		55			PUSHQ BP									
  vehicle_runtime.go:196	0xe4220b		4889e5			MOVQ SP, BP									
  vehicle_runtime.go:196	0xe4220e		4883ec38		SUBQ $__major_os_version__+50(SB), SP						
  vehicle_runtime.go:196	0xe42212		4889442448		MOVQ AX, 0x48(SP)								
  vehicle_runtime.go:196	0xe42217		660f1f840000000000	NOPW 0(AX)(AX*1)								
  vehicle_runtime.go:197	0xe42220		4885db			TESTQ BX, BX									
  vehicle_runtime.go:197	0xe42223		0f8461010000		JE 0xe4238a									
  vehicle_runtime.go:197	0xe42229		48895c2450		MOVQ BX, 0x50(SP)								
  vehicle_runtime.go:197	0xe4222e		4889442448		MOVQ AX, 0x48(SP)								
  vehicle_runtime.go:200	0xe42233		e8485cffff		CALL CAS-Backend/pkg/diapdu.GetGlobalDynamicTraffic(SB)				
  vehicle_runtime.go:200	0xe42238		0f1f840000000000	NOPL 0(AX)(AX*1)								
  vehicle_runtime.go:201	0xe42240		4885c0			TESTQ AX, AX									
  vehicle_runtime.go:201	0xe42243		0f843b010000		JE 0xe42384									
  vehicle_runtime.go:204	0xe42249		488b5c2448		MOVQ 0x48(SP), BX								
  vehicle_runtime.go:204	0xe4224e		488b4c2450		MOVQ 0x50(SP), CX								
  vehicle_runtime.go:204	0xe42253		48bf00d6117e03000000	MOVQ $0x37e11d600, DI								
  vehicle_runtime.go:204	0xe4225d		0f1f00			NOPL 0(AX)									
  vehicle_runtime.go:204	0xe42260		e8db66ffff		CALL CAS-Backend/pkg/diapdu.(*DynamicTrafficController).FreshMonitorSnap(SB)	
  vehicle_runtime.go:204	0xe42265		84db			TESTL BL, BL									
  vehicle_runtime.go:205	0xe42267		0f8411010000		JE 0xe4237e									
  traffic_dynamic.go:92		0xe4226d		4885c0			TESTQ AX, AX									
  traffic_dynamic.go:92		0xe42270		0f8408010000		JE 0xe4237e									
  vehicle_runtime.go:204	0xe42276		4889442430		MOVQ AX, 0x30(SP)								
  traffic_dynamic.go:95		0xe4227b		4883785800		CMPQ 0x58(AX), $0x0								
  traffic_dynamic.go:95		0xe42280		7519			JNE 0xe4229b									
  traffic_dynamic.go:95		0xe42282		4883784800		CMPQ 0x48(AX), $0x0								
  traffic_dynamic.go:95		0xe42287		7512			JNE 0xe4229b									
  traffic_dynamic.go:95		0xe42289		4883783800		CMPQ 0x38(AX), $0x0								
  traffic_dynamic.go:95		0xe4228e		750b			JNE 0xe4229b									
  traffic_dynamic.go:95		0xe42290		4883780800		CMPQ 0x8(AX), $0x0								
  vehicle_runtime.go:205	0xe42295		0f84e3000000		JE 0xe4237e									
  vehicle_runtime.go:208	0xe4229b		488b05ce281700		MOVQ CAS-Backend/pkg/diapdu.globalVehicleRuntime(SB), AX			
  vehicle_runtime.go:208	0xe422a2		4889442420		MOVQ AX, 0x20(SP)								
  vehicle_runtime.go:209	0xe422a7		8400			TESTB AL, 0(AX)									
  vehicle_runtime.go:209	0xe422a9		e8126c64ff		CALL sync.(*RWMutex).Lock(SB)							
  vehicle_runtime.go:210	0xe422ae		488b4c2420		MOVQ 0x20(SP), CX								
  vehicle_runtime.go:210	0xe422b3		488b5918		MOVQ 0x18(CX), BX								
  vehicle_runtime.go:210	0xe422b7		488d0542b42300		LEAQ runtime.types+624384(SB), AX						
  vehicle_runtime.go:210	0xe422be		488b7c2450		MOVQ 0x50(SP), DI								
  vehicle_runtime.go:210	0xe422c3		488b4c2448		MOVQ 0x48(SP), CX								
  vehicle_runtime.go:210	0xe422c8		e873205dff		CALL runtime.mapaccess1_faststr(SB)						
  vehicle_runtime.go:210	0xe422cd		488b38			MOVQ 0(AX), DI									
  vehicle_runtime.go:210	0xe422d0		4885ff			TESTQ DI, DI									
  vehicle_runtime.go:210	0xe422d3		0f8495000000		JE 0xe4236e									
  vehicle_runtime.go:210	0xe422d9		48897c2428		MOVQ DI, 0x28(SP)								
  vehicle_runtime.go:211	0xe422de		833d6bb8710200		CMPL runtime.writeBarrier(SB), $0x0						
  vehicle_runtime.go:211	0xe422e5		741a			JE 0xe42301									
  vehicle_runtime.go:211	0xe422e7		488d5f50		LEAQ 0x50(DI), BX								
  vehicle_runtime.go:211	0xe422eb		488d05ae3f2d00		LEAQ runtime.types+1249952(SB), AX						
  vehicle_runtime.go:211	0xe422f2		488b4c2430		MOVQ 0x30(SP), CX								
  vehicle_runtime.go:211	0xe422f7		e8242c5dff		CALL runtime.wbMove(SB)								
  vehicle_runtime.go:211	0xe422fc		488b7c2428		MOVQ 0x28(SP), DI								
  vehicle_runtime.go:211	0xe42301		488b742430		MOVQ 0x30(SP), SI								
  vehicle_runtime.go:211	0xe42306		488b06			MOVQ 0(SI), AX									
  vehicle_runtime.go:211	0xe42309		48894750		MOVQ AX, 0x50(DI)								
  vehicle_runtime.go:211	0xe4230d		4883c608		ADDQ $__major_os_version__+2(SB), SI						
  vehicle_runtime.go:211	0xe42311		488d4758		LEAQ 0x58(DI), AX								
  vehicle_runtime.go:211	0xe42315		4889c7			MOVQ AX, DI									
  vehicle_runtime.go:211	0xe42318		0f1f840000000000	NOPL 0(AX)(AX*1)								
  vehicle_runtime.go:211	0xe42320		48896c24f0		MOVQ BP, -0x10(SP)								
  vehicle_runtime.go:211	0xe42325		488d6c24f0		LEAQ -0x10(SP), BP								
  vehicle_runtime.go:211	0xe4232a		e81d6b63ff		CALL 0x478e4c									
  vehicle_runtime.go:211	0xe4232f		488b6d00		MOVQ 0(BP), BP									
  vehicle_runtime.go:212	0xe42333		e868bd66ff		CALL time.Now(SB)								
  vehicle_runtime.go:212	0xe42338		488b542428		MOVQ 0x28(SP), DX								
  vehicle_runtime.go:212	0xe4233d		488982e8000000		MOVQ AX, 0xe8(DX)								
  vehicle_runtime.go:212	0xe42344		48899af0000000		MOVQ BX, 0xf0(DX)								
  vehicle_runtime.go:212	0xe4234b		833dfeb7710200		CMPL runtime.writeBarrier(SB), $0x0						
  vehicle_runtime.go:212	0xe42352		7413			JE 0xe42367									
  vehicle_runtime.go:212	0xe42354		e8e76063ff		CALL runtime.gcWriteBarrier2(SB)						
  vehicle_runtime.go:212	0xe42359		49890b			MOVQ CX, 0(R11)									
  vehicle_runtime.go:212	0xe4235c		488b9af8000000		MOVQ 0xf8(DX), BX								
  vehicle_runtime.go:212	0xe42363		49895b08		MOVQ BX, 0x8(R11)								
  vehicle_runtime.go:212	0xe42367		48898af8000000		MOVQ CX, 0xf8(DX)								
  vehicle_runtime.go:214	0xe4236e		488b442420		MOVQ 0x20(SP), AX								
  vehicle_runtime.go:214	0xe42373		e8a86c64ff		CALL sync.(*RWMutex).Unlock(SB)							
  vehicle_runtime.go:215	0xe42378		4883c438		ADDQ $__major_os_version__+50(SB), SP						
  vehicle_runtime.go:215	0xe4237c		5d			POPQ BP										
  vehicle_runtime.go:215	0xe4237d		c3			RET										
  vehicle_runtime.go:206	0xe4237e		4883c438		ADDQ $__major_os_version__+50(SB), SP						
  vehicle_runtime.go:206	0xe42382		5d			POPQ BP										
  vehicle_runtime.go:206	0xe42383		c3			RET										
  vehicle_runtime.go:202	0xe42384		4883c438		ADDQ $__major_os_version__+50(SB), SP						
  vehicle_runtime.go:202	0xe42388		5d			POPQ BP										
  vehicle_runtime.go:202	0xe42389		c3			RET										
  vehicle_runtime.go:198	0xe4238a		4883c438		ADDQ $__major_os_version__+50(SB), SP						
  vehicle_runtime.go:198	0xe4238e		5d			POPQ BP										
  vehicle_runtime.go:198	0xe4238f		c3			RET										
  vehicle_runtime.go:196	0xe42390		4889442408		MOVQ AX, 0x8(SP)								
  vehicle_runtime.go:196	0xe42395		48895c2410		MOVQ BX, 0x10(SP)								
  vehicle_runtime.go:196	0xe4239a		e8414163ff		CALL runtime.morestack_noctxt.abi0(SB)						
  vehicle_runtime.go:196	0xe4239f		488b442408		MOVQ 0x8(SP), AX								
  vehicle_runtime.go:196	0xe423a4		488b5c2410		MOVQ 0x10(SP), BX								
  vehicle_runtime.go:196	0xe423a9		e952feffff		JMP CAS-Backend/pkg/diapdu.syncHubTaskPkgFromTraffic(SB)			
  :-1				0xe423ae		cc			INT $__subsystem__(SB)								
  :-1				0xe423af		cc			INT $__subsystem__(SB)								
  :-1				0xe423b0		cc			INT $__subsystem__(SB)								
  :-1				0xe423b1		cc			INT $__subsystem__(SB)								
  :-1				0xe423b2		cc			INT $__subsystem__(SB)								
  :-1				0xe423b3		cc			INT $__subsystem__(SB)								
  :-1				0xe423b4		cc			INT $__subsystem__(SB)								
  :-1				0xe423b5		cc			INT $__subsystem__(SB)								
  :-1				0xe423b6		cc			INT $__subsystem__(SB)								
  :-1				0xe423b7		cc			INT $__subsystem__(SB)								
  :-1				0xe423b8		cc			INT $__subsystem__(SB)								
  :-1				0xe423b9		cc			INT $__subsystem__(SB)								
  :-1				0xe423ba		cc			INT $__subsystem__(SB)								
  :-1				0xe423bb		cc			INT $__subsystem__(SB)								
  :-1				0xe423bc		cc			INT $__subsystem__(SB)								
  :-1				0xe423bd		cc			INT $__subsystem__(SB)								
  :-1				0xe423be		cc			INT $__subsystem__(SB)								
  :-1				0xe423bf		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.MonitorSnapForVehicle(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehicle_runtime.go
  vehicle_runtime.go:231	0xe423c0		493b6610		CMPQ SP, 0x10(R14)								
  vehicle_runtime.go:231	0xe423c4		0f86e6010000		JBE 0xe425b0									
  vehicle_runtime.go:231	0xe423ca		55			PUSHQ BP									
  vehicle_runtime.go:231	0xe423cb		4889e5			MOVQ SP, BP									
  vehicle_runtime.go:231	0xe423ce		4883ec40		SUBQ $__major_os_version__+58(SB), SP						
  vehicle_runtime.go:231	0xe423d2		4889442450		MOVQ AX, 0x50(SP)								
  vehicle_runtime.go:231	0xe423d7		660f1f840000000000	NOPW 0(AX)(AX*1)								
  vehicle_runtime.go:232	0xe423e0		4885db			TESTQ BX, BX									
  vehicle_runtime.go:232	0xe423e3		0f84bb010000		JE 0xe425a4									
  vehicle_runtime.go:232	0xe423e9		4889442450		MOVQ AX, 0x50(SP)								
  vehicle_runtime.go:232	0xe423ee		48895c2458		MOVQ BX, 0x58(SP)								
  vehicle_runtime.go:236	0xe423f3		488b1576271700		MOVQ CAS-Backend/pkg/diapdu.globalVehicleRuntime(SB), DX			
  vehicle_runtime.go:236	0xe423fa		4889d9			MOVQ BX, CX									
  vehicle_runtime.go:236	0xe423fd		4889c3			MOVQ AX, BX									
  vehicle_runtime.go:236	0xe42400		4889d0			MOVQ DX, AX									
  vehicle_runtime.go:236	0xe42403		e838020000		CALL CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).Fresh(SB)			
  vehicle_runtime.go:236	0xe42408		84db			TESTL BL, BL									
  vehicle_runtime.go:236	0xe4240a		7509			JNE 0xe42415									
  vehicle_runtime.go:236	0xe4240c		31c9			XORL CX, CX									
  vehicle_runtime.go:236	0xe4240e		31c0			XORL AX, AX									
  vehicle_runtime.go:236	0xe42410		e9f5000000		JMP 0xe4250a									
  vehicle_runtime.go:236	0xe42415		4889442428		MOVQ AX, 0x28(SP)								
  vehicle_runtime.go:237	0xe4241a		488d057f842f00		LEAQ runtime.types+1398944(SB), AX						
  vehicle_runtime.go:237	0xe42421		e87af35cff		CALL runtime.newobject(SB)							
  vehicle_runtime.go:237	0xe42426		4889442438		MOVQ AX, 0x38(SP)								
  vehicle_runtime.go:237	0xe4242b		488b742428		MOVQ 0x28(SP), SI								
  vehicle_runtime.go:237	0xe42430		8406			TESTB AL, 0(SI)									
  vehicle_runtime.go:237	0xe42432		833d17b7710200		CMPL runtime.writeBarrier(SB), $0x0						
  vehicle_runtime.go:237	0xe42439		741c			JE 0xe42457									
  vehicle_runtime.go:237	0xe4243b		4889c3			MOVQ AX, BX									
  vehicle_runtime.go:237	0xe4243e		4889f1			MOVQ SI, CX									
  vehicle_runtime.go:237	0xe42441		488d0558842f00		LEAQ runtime.types+1398944(SB), AX						
  vehicle_runtime.go:237	0xe42448		e8d32a5dff		CALL runtime.wbMove(SB)								
  vehicle_runtime.go:237	0xe4244d		488b442438		MOVQ 0x38(SP), AX								
  vehicle_runtime.go:237	0xe42452		488b742428		MOVQ 0x28(SP), SI								
  vehicle_runtime.go:237	0xe42457		4889c7			MOVQ AX, DI									
  vehicle_runtime.go:237	0xe4245a		660f1f440000		NOPW 0(AX)(AX*1)								
  vehicle_runtime.go:237	0xe42460		48896c24f0		MOVQ BP, -0x10(SP)								
  vehicle_runtime.go:237	0xe42465		488d6c24f0		LEAQ -0x10(SP), BP								
  vehicle_runtime.go:237	0xe4246a		e8516963ff		CALL 0x478dc0									
  vehicle_runtime.go:237	0xe4246f		488b6d00		MOVQ 0(BP), BP									
  traffic_dynamic.go:95		0xe42473		488b4c2428		MOVQ 0x28(SP), CX								
  traffic_dynamic.go:95		0xe42478		4883b9a800000000	CMPQ 0xa8(CX), $0x0								
  traffic_dynamic.go:95		0xe42480		751b			JNE 0xe4249d									
  traffic_dynamic.go:95		0xe42482		4883b99800000000	CMPQ 0x98(CX), $0x0								
  traffic_dynamic.go:95		0xe4248a		7511			JNE 0xe4249d									
  traffic_dynamic.go:95		0xe4248c		4883b98800000000	CMPQ 0x88(CX), $0x0								
  traffic_dynamic.go:95		0xe42494		7507			JNE 0xe4249d									
  traffic_dynamic.go:95		0xe42496		4883795800		CMPQ 0x58(CX), $0x0								
  vehicle_runtime.go:239	0xe4249b		746b			JE 0xe42508									
  vehicle_runtime.go:240	0xe4249d		488d05fc3d2d00		LEAQ runtime.types+1249952(SB), AX						
  vehicle_runtime.go:240	0xe424a4		e8f7f25cff		CALL runtime.newobject(SB)							
  vehicle_runtime.go:240	0xe424a9		833da0b6710200		CMPL runtime.writeBarrier(SB), $0x0						
  vehicle_runtime.go:240	0xe424b0		7425			JE 0xe424d7									
  vehicle_runtime.go:240	0xe424b2		4889442420		MOVQ AX, 0x20(SP)								
  vehicle_runtime.go:240	0xe424b7		488b4c2428		MOVQ 0x28(SP), CX								
  vehicle_runtime.go:240	0xe424bc		488d5150		LEAQ 0x50(CX), DX								
  vehicle_runtime.go:240	0xe424c0		4889c3			MOVQ AX, BX									
  vehicle_runtime.go:240	0xe424c3		488d05d63d2d00		LEAQ runtime.types+1249952(SB), AX						
  vehicle_runtime.go:240	0xe424ca		4889d1			MOVQ DX, CX									
  vehicle_runtime.go:240	0xe424cd		e84e2a5dff		CALL runtime.wbMove(SB)								
  vehicle_runtime.go:240	0xe424d2		488b442420		MOVQ 0x20(SP), AX								
  vehicle_runtime.go:240	0xe424d7		488b742428		MOVQ 0x28(SP), SI								
  vehicle_runtime.go:240	0xe424dc		488b4e50		MOVQ 0x50(SI), CX								
  vehicle_runtime.go:240	0xe424e0		488908			MOVQ CX, 0(AX)									
  vehicle_runtime.go:240	0xe424e3		488d7808		LEAQ 0x8(AX), DI								
  vehicle_runtime.go:240	0xe424e7		4883c658		ADDQ $.file+11(SB), SI								
  vehicle_runtime.go:240	0xe424eb		48896c24f0		MOVQ BP, -0x10(SP)								
  vehicle_runtime.go:240	0xe424f0		488d6c24f0		LEAQ -0x10(SP), BP								
  vehicle_runtime.go:240	0xe424f5		e8526963ff		CALL 0x478e4c									
  vehicle_runtime.go:240	0xe424fa		488b6d00		MOVQ 0(BP), BP									
  vehicle_runtime.go:250	0xe424fe		4889c1			MOVQ AX, CX									
  vehicle_runtime.go:254	0xe42501		488b442438		MOVQ 0x38(SP), AX								
  vehicle_runtime.go:241	0xe42506		eb02			JMP 0xe4250a									
  vehicle_runtime.go:241	0xe42508		31c9			XORL CX, CX									
  vehicle_runtime.go:254	0xe4250a		4889442430		MOVQ AX, 0x30(SP)								
  vehicle_runtime.go:250	0xe4250f		48894c2420		MOVQ CX, 0x20(SP)								
  vehicle_runtime.go:245	0xe42514		e86759ffff		CALL CAS-Backend/pkg/diapdu.GetGlobalDynamicTraffic(SB)				
  vehicle_runtime.go:245	0xe42519		4885c0			TESTQ AX, AX									
  vehicle_runtime.go:245	0xe4251c		7504			JNE 0xe42522									
  vehicle_runtime.go:245	0xe4251e		31c0			XORL AX, AX									
  vehicle_runtime.go:245	0xe42520		eb48			JMP 0xe4256a									
  vehicle_runtime.go:246	0xe42522		488b5c2450		MOVQ 0x50(SP), BX								
  vehicle_runtime.go:246	0xe42527		488b4c2458		MOVQ 0x58(SP), CX								
  vehicle_runtime.go:246	0xe4252c		48bf00d6117e03000000	MOVQ $0x37e11d600, DI								
  vehicle_runtime.go:246	0xe42536		e80564ffff		CALL CAS-Backend/pkg/diapdu.(*DynamicTrafficController).FreshMonitorSnap(SB)	
  vehicle_runtime.go:246	0xe4253b		84db			TESTL BL, BL									
  vehicle_runtime.go:246	0xe4253d		7429			JE 0xe42568									
  vehicle_runtime.go:246	0xe4253f		90			NOPL										
  traffic_dynamic.go:92		0xe42540		4885c0			TESTQ AX, AX									
  traffic_dynamic.go:92		0xe42543		741f			JE 0xe42564									
  traffic_dynamic.go:95		0xe42545		4883785800		CMPQ 0x58(AX), $0x0								
  traffic_dynamic.go:95		0xe4254a		751e			JNE 0xe4256a									
  traffic_dynamic.go:95		0xe4254c		4883784800		CMPQ 0x48(AX), $0x0								
  traffic_dynamic.go:95		0xe42551		7517			JNE 0xe4256a									
  traffic_dynamic.go:95		0xe42553		4883783800		CMPQ 0x38(AX), $0x0								
  traffic_dynamic.go:95		0xe42558		7510			JNE 0xe4256a									
  traffic_dynamic.go:95		0xe4255a		4883780800		CMPQ 0x8(AX), $0x0								
  traffic_dynamic.go:95		0xe4255f		90			NOPL										
  vehicle_runtime.go:246	0xe42560		7508			JNE 0xe4256a									
  vehicle_runtime.go:246	0xe42562		eb04			JMP 0xe42568									
  vehicle_runtime.go:246	0xe42564		31c0			XORL AX, AX									
  vehicle_runtime.go:246	0xe42566		eb02			JMP 0xe4256a									
  vehicle_runtime.go:246	0xe42568		31c0			XORL AX, AX									
  vehicle_runtime.go:250	0xe4256a		4889c3			MOVQ AX, BX									
  vehicle_runtime.go:250	0xe4256d		488b442420		MOVQ 0x20(SP), AX								
  vehicle_runtime.go:250	0xe42572		e869000000		CALL CAS-Backend/pkg/diapdu.pickRicherMonitorPackage(SB)			
  vehicle_runtime.go:251	0xe42577		4885c0			TESTQ AX, AX									
  vehicle_runtime.go:251	0xe4257a		7407			JE 0xe42583									
  vehicle_runtime.go:254	0xe4257c		488b5c2430		MOVQ 0x30(SP), BX								
  vehicle_runtime.go:251	0xe42581		eb0a			JMP 0xe4258d									
  vehicle_runtime.go:251	0xe42583		488b5c2430		MOVQ 0x30(SP), BX								
  vehicle_runtime.go:251	0xe42588		4885db			TESTQ BX, BX									
  vehicle_runtime.go:251	0xe4258b		740b			JE 0xe42598									
  vehicle_runtime.go:254	0xe4258d		b901000000		MOVL $__minor_os_version__(SB), CX						
  vehicle_runtime.go:254	0xe42592		4883c440		ADDQ $__major_os_version__+58(SB), SP						
  vehicle_runtime.go:254	0xe42596		5d			POPQ BP										
  vehicle_runtime.go:254	0xe42597		c3			RET										
  vehicle_runtime.go:252	0xe42598		31c0			XORL AX, AX									
  vehicle_runtime.go:252	0xe4259a		31db			XORL BX, BX									
  vehicle_runtime.go:252	0xe4259c		31c9			XORL CX, CX									
  vehicle_runtime.go:252	0xe4259e		4883c440		ADDQ $__major_os_version__+58(SB), SP						
  vehicle_runtime.go:252	0xe425a2		5d			POPQ BP										
  vehicle_runtime.go:252	0xe425a3		c3			RET										
  vehicle_runtime.go:233	0xe425a4		31c0			XORL AX, AX									
  vehicle_runtime.go:233	0xe425a6		31db			XORL BX, BX									
  vehicle_runtime.go:233	0xe425a8		31c9			XORL CX, CX									
  vehicle_runtime.go:233	0xe425aa		4883c440		ADDQ $__major_os_version__+58(SB), SP						
  vehicle_runtime.go:233	0xe425ae		5d			POPQ BP										
  vehicle_runtime.go:233	0xe425af		c3			RET										
  vehicle_runtime.go:231	0xe425b0		4889442408		MOVQ AX, 0x8(SP)								
  vehicle_runtime.go:231	0xe425b5		48895c2410		MOVQ BX, 0x10(SP)								
  vehicle_runtime.go:231	0xe425ba		e8213f63ff		CALL runtime.morestack_noctxt.abi0(SB)						
  vehicle_runtime.go:231	0xe425bf		488b442408		MOVQ 0x8(SP), AX								
  vehicle_runtime.go:231	0xe425c4		488b5c2410		MOVQ 0x10(SP), BX								
  vehicle_runtime.go:231	0xe425c9		e9f2fdffff		JMP CAS-Backend/pkg/diapdu.MonitorSnapForVehicle(SB)				
  :-1				0xe425ce		cc			INT $__subsystem__(SB)								
  :-1				0xe425cf		cc			INT $__subsystem__(SB)								
  :-1				0xe425d0		cc			INT $__subsystem__(SB)								
  :-1				0xe425d1		cc			INT $__subsystem__(SB)								
  :-1				0xe425d2		cc			INT $__subsystem__(SB)								
  :-1				0xe425d3		cc			INT $__subsystem__(SB)								
  :-1				0xe425d4		cc			INT $__subsystem__(SB)								
  :-1				0xe425d5		cc			INT $__subsystem__(SB)								
  :-1				0xe425d6		cc			INT $__subsystem__(SB)								
  :-1				0xe425d7		cc			INT $__subsystem__(SB)								
  :-1				0xe425d8		cc			INT $__subsystem__(SB)								
  :-1				0xe425d9		cc			INT $__subsystem__(SB)								
  :-1				0xe425da		cc			INT $__subsystem__(SB)								
  :-1				0xe425db		cc			INT $__subsystem__(SB)								
  :-1				0xe425dc		cc			INT $__subsystem__(SB)								
  :-1				0xe425dd		cc			INT $__subsystem__(SB)								
  :-1				0xe425de		cc			INT $__subsystem__(SB)								
  :-1				0xe425df		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.pickRicherMonitorPackage(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehicle_runtime.go
  vehicle_runtime.go:258	0xe425e0		4885c0			TESTQ AX, AX		
  vehicle_runtime.go:258	0xe425e3		7452			JE 0xe42637		
  vehicle_runtime.go:261	0xe425e5		4885db			TESTQ BX, BX		
  vehicle_runtime.go:261	0xe425e8		744c			JE 0xe42636		
  vehicle_runtime.go:264	0xe425ea		488b4b58		MOVQ 0x58(BX), CX	
  vehicle_runtime.go:264	0xe425ee		488b5058		MOVQ 0x58(AX), DX	
  vehicle_runtime.go:264	0xe425f2		4839ca			CMPQ DX, CX		
  vehicle_runtime.go:264	0xe425f5		7c3b			JL 0xe42632		
  vehicle_runtime.go:267	0xe425f7		7538			JNE 0xe42631		
  traffic_dynamic.go:95		0xe425f9		4885c9			TESTQ CX, CX		
  traffic_dynamic.go:95		0xe425fc		7515			JNE 0xe42613		
  traffic_dynamic.go:95		0xe425fe		48837b4800		CMPQ 0x48(BX), $0x0	
  traffic_dynamic.go:95		0xe42603		750e			JNE 0xe42613		
  traffic_dynamic.go:95		0xe42605		48837b3800		CMPQ 0x38(BX), $0x0	
  traffic_dynamic.go:95		0xe4260a		7507			JNE 0xe42613		
  traffic_dynamic.go:95		0xe4260c		48837b0800		CMPQ 0x8(BX), $0x0	
  vehicle_runtime.go:267	0xe42611		741e			JE 0xe42631		
  traffic_dynamic.go:95		0xe42613		4885d2			TESTQ DX, DX		
  traffic_dynamic.go:95		0xe42616		7519			JNE 0xe42631		
  traffic_dynamic.go:95		0xe42618		4883784800		CMPQ 0x48(AX), $0x0	
  traffic_dynamic.go:95		0xe4261d		7512			JNE 0xe42631		
  traffic_dynamic.go:95		0xe4261f		4883783800		CMPQ 0x38(AX), $0x0	
  traffic_dynamic.go:95		0xe42624		750b			JNE 0xe42631		
  traffic_dynamic.go:95		0xe42626		4883780800		CMPQ 0x8(AX), $0x0	
  vehicle_runtime.go:267	0xe4262b		7504			JNE 0xe42631		
  vehicle_runtime.go:268	0xe4262d		4889d8			MOVQ BX, AX		
  vehicle_runtime.go:268	0xe42630		c3			RET			
  vehicle_runtime.go:270	0xe42631		c3			RET			
  vehicle_runtime.go:265	0xe42632		4889d8			MOVQ BX, AX		
  vehicle_runtime.go:265	0xe42635		c3			RET			
  vehicle_runtime.go:262	0xe42636		c3			RET			
  vehicle_runtime.go:259	0xe42637		4889d8			MOVQ BX, AX		
  vehicle_runtime.go:259	0xe4263a		c3			RET			
  :-1				0xe4263b		cc			INT $__subsystem__(SB)	
  :-1				0xe4263c		cc			INT $__subsystem__(SB)	
  :-1				0xe4263d		cc			INT $__subsystem__(SB)	
  :-1				0xe4263e		cc			INT $__subsystem__(SB)	
  :-1				0xe4263f		cc			INT $__subsystem__(SB)	

TEXT CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).Fresh(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehicle_runtime.go
  vehicle_runtime.go:279	0xe42640		493b6610		CMPQ SP, 0x10(R14)						
  vehicle_runtime.go:279	0xe42644		0f863f010000		JBE 0xe42789							
  vehicle_runtime.go:279	0xe4264a		55			PUSHQ BP							
  vehicle_runtime.go:279	0xe4264b		4889e5			MOVQ SP, BP							
  vehicle_runtime.go:279	0xe4264e		4883ec30		SUBQ $__major_os_version__+42(SB), SP				
  vehicle_runtime.go:279	0xe42652		48895c2448		MOVQ BX, 0x48(SP)						
  vehicle_runtime.go:279	0xe42657		660f1f840000000000	NOPW 0(AX)(AX*1)						
  vehicle_runtime.go:280	0xe42660		4885c9			TESTQ CX, CX							
  vehicle_runtime.go:280	0xe42663		0f8416010000		JE 0xe4277f							
  vehicle_runtime.go:280	0xe42669		4889442440		MOVQ AX, 0x40(SP)						
  vehicle_runtime.go:283	0xe4266e		ba01000000		MOVL $__minor_os_version__(SB), DX				
  vehicle_runtime.go:283	0xe42673		f00fc15010		LOCK XADDL DX, 0x10(AX)						
  type.go:88			0xe42678		ffc2			INCL DX								
  rwmutex.go:70			0xe4267a		85d2			TESTL DX, DX							
  rwmutex.go:70			0xe4267c		7d29			JGE 0xe426a7							
  vehicle_runtime.go:280	0xe4267e		48894c2450		MOVQ CX, 0x50(SP)						
  vehicle_runtime.go:280	0xe42683		48895c2448		MOVQ BX, 0x48(SP)						
  rwmutex.go:72			0xe42688		488d500c		LEAQ 0xc(AX), DX						
  rwmutex.go:72			0xe4268c		31db			XORL BX, BX							
  rwmutex.go:72			0xe4268e		31c9			XORL CX, CX							
  rwmutex.go:72			0xe42690		4889d0			MOVQ DX, AX							
  rwmutex.go:72			0xe42693		e8c8ee62ff		CALL sync.runtime_SemacquireRWMutexR(SB)			
  vehicle_runtime.go:284	0xe42698		488b442440		MOVQ 0x40(SP), AX						
  vehicle_runtime.go:284	0xe4269d		488b4c2450		MOVQ 0x50(SP), CX						
  vehicle_runtime.go:284	0xe426a2		488b5c2448		MOVQ 0x48(SP), BX						
  vehicle_runtime.go:284	0xe426a7		488b5018		MOVQ 0x18(AX), DX						
  vehicle_runtime.go:284	0xe426ab		4889cf			MOVQ CX, DI							
  vehicle_runtime.go:284	0xe426ae		4889d9			MOVQ BX, CX							
  vehicle_runtime.go:284	0xe426b1		4889d3			MOVQ DX, BX							
  vehicle_runtime.go:284	0xe426b4		488d0545b02300		LEAQ runtime.types+624384(SB), AX				
  vehicle_runtime.go:284	0xe426bb		0f1f440000		NOPL 0(AX)(AX*1)						
  vehicle_runtime.go:284	0xe426c0		e87b1c5dff		CALL runtime.mapaccess1_faststr(SB)				
  vehicle_runtime.go:284	0xe426c5		488b10			MOVQ 0(AX), DX							
  vehicle_runtime.go:284	0xe426c8		4889542420		MOVQ DX, 0x20(SP)						
  vehicle_runtime.go:285	0xe426cd		90			NOPL								
  type.go:88			0xe426ce		bbffffffff		MOVL $-0x1, BX							
  type.go:88			0xe426d3		488b442440		MOVQ 0x40(SP), AX						
  type.go:88			0xe426d8		f00fc15810		LOCK XADDL BX, 0x10(AX)						
  type.go:88			0xe426dd		ffcb			DECL BX								
  type.go:88			0xe426df		90			NOPL								
  rwmutex.go:118		0xe426e0		85db			TESTL BX, BX							
  rwmutex.go:118		0xe426e2		7d0a			JGE 0xe426ee							
  rwmutex.go:120		0xe426e4		e8576764ff		CALL sync.(*RWMutex).rUnlockSlow(SB)				
  vehicle_runtime.go:286	0xe426e9		488b542420		MOVQ 0x20(SP), DX						
  vehicle_runtime.go:286	0xe426ee		4885d2			TESTQ DX, DX							
  vehicle_runtime.go:286	0xe426f1		7429			JE 0xe4271c							
  vehicle_runtime.go:286	0xe426f3		488b82e8000000		MOVQ 0xe8(DX), AX						
  vehicle_runtime.go:286	0xe426fa		488b9af0000000		MOVQ 0xf0(DX), BX						
  vehicle_runtime.go:286	0xe42701		488b8af8000000		MOVQ 0xf8(DX), CX						
  vehicle_runtime.go:286	0xe42708		e8932166ff		CALL time.Since(SB)						
  vehicle_runtime.go:286	0xe4270d		48ba00d6117e03000000	MOVQ $0x37e11d600, DX						
  vehicle_runtime.go:286	0xe42717		4839d0			CMPQ AX, DX							
  vehicle_runtime.go:286	0xe4271a		7e0a			JLE 0xe42726							
  vehicle_runtime.go:287	0xe4271c		31c0			XORL AX, AX							
  vehicle_runtime.go:287	0xe4271e		31db			XORL BX, BX							
  vehicle_runtime.go:287	0xe42720		4883c430		ADDQ $__major_os_version__+42(SB), SP				
  vehicle_runtime.go:287	0xe42724		5d			POPQ BP								
  vehicle_runtime.go:287	0xe42725		c3			RET								
  vehicle_runtime.go:289	0xe42726		488d0573812f00		LEAQ runtime.types+1398944(SB), AX				
  vehicle_runtime.go:289	0xe4272d		e86ef05cff		CALL runtime.newobject(SB)					
  vehicle_runtime.go:289	0xe42732		833d17b4710200		CMPL runtime.writeBarrier(SB), $0x0				
  vehicle_runtime.go:289	0xe42739		741e			JE 0xe42759							
  vehicle_runtime.go:289	0xe4273b		4889442428		MOVQ AX, 0x28(SP)						
  vehicle_runtime.go:289	0xe42740		4889c3			MOVQ AX, BX							
  vehicle_runtime.go:289	0xe42743		488b4c2420		MOVQ 0x20(SP), CX						
  vehicle_runtime.go:289	0xe42748		488d0551812f00		LEAQ runtime.types+1398944(SB), AX				
  vehicle_runtime.go:289	0xe4274f		e8cc275dff		CALL runtime.wbMove(SB)						
  vehicle_runtime.go:289	0xe42754		488b442428		MOVQ 0x28(SP), AX						
  vehicle_runtime.go:289	0xe42759		4889c7			MOVQ AX, DI							
  vehicle_runtime.go:289	0xe4275c		488b742420		MOVQ 0x20(SP), SI						
  vehicle_runtime.go:289	0xe42761		48896c24f0		MOVQ BP, -0x10(SP)						
  vehicle_runtime.go:289	0xe42766		488d6c24f0		LEAQ -0x10(SP), BP						
  vehicle_runtime.go:289	0xe4276b		e8506663ff		CALL 0x478dc0							
  vehicle_runtime.go:289	0xe42770		488b6d00		MOVQ 0(BP), BP							
  vehicle_runtime.go:290	0xe42774		bb01000000		MOVL $__minor_os_version__(SB), BX				
  vehicle_runtime.go:290	0xe42779		4883c430		ADDQ $__major_os_version__+42(SB), SP				
  vehicle_runtime.go:290	0xe4277d		5d			POPQ BP								
  vehicle_runtime.go:290	0xe4277e		c3			RET								
  vehicle_runtime.go:281	0xe4277f		31c0			XORL AX, AX							
  vehicle_runtime.go:281	0xe42781		31db			XORL BX, BX							
  vehicle_runtime.go:281	0xe42783		4883c430		ADDQ $__major_os_version__+42(SB), SP				
  vehicle_runtime.go:281	0xe42787		5d			POPQ BP								
  vehicle_runtime.go:281	0xe42788		c3			RET								
  vehicle_runtime.go:279	0xe42789		4889442408		MOVQ AX, 0x8(SP)						
  vehicle_runtime.go:279	0xe4278e		48895c2410		MOVQ BX, 0x10(SP)						
  vehicle_runtime.go:279	0xe42793		48894c2418		MOVQ CX, 0x18(SP)						
  vehicle_runtime.go:279	0xe42798		e8433d63ff		CALL runtime.morestack_noctxt.abi0(SB)				
  vehicle_runtime.go:279	0xe4279d		488b442408		MOVQ 0x8(SP), AX						
  vehicle_runtime.go:279	0xe427a2		488b5c2410		MOVQ 0x10(SP), BX						
  vehicle_runtime.go:279	0xe427a7		488b4c2418		MOVQ 0x18(SP), CX						
  vehicle_runtime.go:279	0xe427ac		e98ffeffff		JMP CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).Fresh(SB)	
  :-1				0xe427b1		cc			INT $__subsystem__(SB)						
  :-1				0xe427b2		cc			INT $__subsystem__(SB)						
  :-1				0xe427b3		cc			INT $__subsystem__(SB)						
  :-1				0xe427b4		cc			INT $__subsystem__(SB)						
  :-1				0xe427b5		cc			INT $__subsystem__(SB)						
  :-1				0xe427b6		cc			INT $__subsystem__(SB)						
  :-1				0xe427b7		cc			INT $__subsystem__(SB)						
  :-1				0xe427b8		cc			INT $__subsystem__(SB)						
  :-1				0xe427b9		cc			INT $__subsystem__(SB)						
  :-1				0xe427ba		cc			INT $__subsystem__(SB)						
  :-1				0xe427bb		cc			INT $__subsystem__(SB)						
  :-1				0xe427bc		cc			INT $__subsystem__(SB)						
  :-1				0xe427bd		cc			INT $__subsystem__(SB)						
  :-1				0xe427be		cc			INT $__subsystem__(SB)						
  :-1				0xe427bf		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).FreshByQuery(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehicle_runtime.go
  vehicle_runtime.go:294	0xe427c0		4c8d6424b8		LEAQ -0x48(SP), R12									
  vehicle_runtime.go:294	0xe427c5		4d3b6610		CMPQ R12, 0x10(R14)									
  vehicle_runtime.go:294	0xe427c9		0f865e030000		JBE 0xe42b2d										
  vehicle_runtime.go:294	0xe427cf		55			PUSHQ BP										
  vehicle_runtime.go:294	0xe427d0		4889e5			MOVQ SP, BP										
  vehicle_runtime.go:294	0xe427d3		4881ecc0000000		SUBQ $.file+115(SB), SP									
  vehicle_runtime.go:294	0xe427da		48899c24d8000000	MOVQ BX, 0xd8(SP)									
  vehicle_runtime.go:294	0xe427e2		66440fd6bc24b8000000	MOVQ X15, 0xb8(SP)									
  vehicle_runtime.go:294	0xe427ec		c644241f00		MOVB $0x0, 0x1f(SP)									
  vehicle_runtime.go:294	0xe427f1		48c744242800000000	MOVQ $0x0, 0x28(SP)									
  vehicle_runtime.go:294	0xe427fa		c644241e00		MOVB $0x0, 0x1e(SP)									
  vehicle_runtime.go:294	0xe427ff		90			NOPL											
  vehicle_runtime.go:295	0xe42800		4885c9			TESTQ CX, CX										
  vehicle_runtime.go:295	0xe42803		0f845f010000		JE 0xe42968										
  vehicle_runtime.go:295	0xe42809		48898424d0000000	MOVQ AX, 0xd0(SP)									
  vehicle_runtime.go:295	0xe42811		48898c24e0000000	MOVQ CX, 0xe0(SP)									
  vehicle_runtime.go:295	0xe42819		48899c24d8000000	MOVQ BX, 0xd8(SP)									
  vehicle_runtime.go:298	0xe42821		e81afeffff		CALL CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).Fresh(SB)				
  vehicle_runtime.go:298	0xe42826		84db			TESTL BL, BL										
  vehicle_runtime.go:298	0xe42828		0f851d010000		JNE 0xe4294b										
  vehicle_runtime.go:301	0xe4282e		488b8424d8000000	MOVQ 0xd8(SP), AX									
  vehicle_runtime.go:301	0xe42836		488b9c24e0000000	MOVQ 0xe0(SP), BX									
  vehicle_runtime.go:301	0xe4283e		6690			NOPW											
  vehicle_runtime.go:301	0xe42840		e89befffff		CALL CAS-Backend/pkg/diapdu.ResolveCanonicalVehicleID(SB)				
  vehicle_runtime.go:301	0xe42845		4885db			TESTQ BX, BX										
  vehicle_runtime.go:301	0xe42848		741e			JE 0xe42868										
  vehicle_runtime.go:302	0xe4284a		4889d9			MOVQ BX, CX										
  vehicle_runtime.go:302	0xe4284d		4889c3			MOVQ AX, BX										
  vehicle_runtime.go:302	0xe42850		488b8424d0000000	MOVQ 0xd0(SP), AX									
  vehicle_runtime.go:302	0xe42858		e8e3fdffff		CALL CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).Fresh(SB)				
  vehicle_runtime.go:302	0xe4285d		0f1f00			NOPL 0(AX)										
  vehicle_runtime.go:302	0xe42860		84db			TESTL BL, BL										
  vehicle_runtime.go:302	0xe42862		0f85c6000000		JNE 0xe4292e										
  vehicle_runtime.go:306	0xe42868		ba01000000		MOVL $__minor_os_version__(SB), DX							
  vehicle_runtime.go:306	0xe4286d		488b8424d0000000	MOVQ 0xd0(SP), AX									
  vehicle_runtime.go:306	0xe42875		f00fc15010		LOCK XADDL DX, 0x10(AX)									
  type.go:88			0xe4287a		ffc2			INCL DX											
  type.go:88			0xe4287c		0f1f4000		NOPL 0(AX)										
  rwmutex.go:70			0xe42880		85d2			TESTL DX, DX										
  rwmutex.go:70			0xe42882		7d18			JGE 0xe4289c										
  rwmutex.go:72			0xe42884		488d500c		LEAQ 0xc(AX), DX									
  rwmutex.go:72			0xe42888		31db			XORL BX, BX										
  rwmutex.go:72			0xe4288a		31c9			XORL CX, CX										
  rwmutex.go:72			0xe4288c		4889d0			MOVQ DX, AX										
  rwmutex.go:72			0xe4288f		e8ccec62ff		CALL sync.runtime_SemacquireRWMutexR(SB)						
  vehicle_runtime.go:307	0xe42894		488b8424d0000000	MOVQ 0xd0(SP), AX									
  vehicle_runtime.go:307	0xe4289c		488d0dbd020000		LEAQ CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).FreshByQuery.deferwrap1(SB), CX	
  vehicle_runtime.go:307	0xe428a3		48894c2440		MOVQ CX, 0x40(SP)									
  vehicle_runtime.go:307	0xe428a8		4889442448		MOVQ AX, 0x48(SP)									
  vehicle_runtime.go:307	0xe428ad		488d4c2440		LEAQ 0x40(SP), CX									
  vehicle_runtime.go:307	0xe428b2		48898c24b8000000	MOVQ CX, 0xb8(SP)									
  vehicle_runtime.go:307	0xe428ba		c644241f01		MOVB $__minor_os_version__(SB), 0x1f(SP)						
  vehicle_runtime.go:308	0xe428bf		488b9c24e0000000	MOVQ 0xe0(SP), BX									
  vehicle_runtime.go:308	0xe428c7		488b8424d8000000	MOVQ 0xd8(SP), AX									
  vehicle_runtime.go:308	0xe428cf		e8ec006aff		CALL strings.TrimSpace(SB)								
  vehicle_runtime.go:308	0xe428d4		4889442438		MOVQ AX, 0x38(SP)									
  vehicle_runtime.go:308	0xe428d9		48895c2420		MOVQ BX, 0x20(SP)									
  vehicle_runtime.go:309	0xe428de		488b8c24d0000000	MOVQ 0xd0(SP), CX									
  vehicle_runtime.go:309	0xe428e6		488b4918		MOVQ 0x18(CX), CX									
  vehicle_runtime.go:309	0xe428ea		488d7c2450		LEAQ 0x50(SP), DI									
  vehicle_runtime.go:309	0xe428ef		488d7fe0		LEAQ -0x20(DI), DI									
  vehicle_runtime.go:309	0xe428f3		660f1f840000000000	NOPW 0(AX)(AX*1)									
  vehicle_runtime.go:309	0xe428fc		0f1f4000		NOPL 0(AX)										
  vehicle_runtime.go:309	0xe42900		48896c24f0		MOVQ BP, -0x10(SP)									
  vehicle_runtime.go:309	0xe42905		488d6c24f0		LEAQ -0x10(SP), BP									
  vehicle_runtime.go:309	0xe4290a		e8dc6163ff		CALL 0x478aeb										
  vehicle_runtime.go:309	0xe4290f		488b6d00		MOVQ 0(BP), BP										
  vehicle_runtime.go:309	0xe42913		488d05e6ad2300		LEAQ runtime.types+624384(SB), AX							
  vehicle_runtime.go:309	0xe4291a		4889cb			MOVQ CX, BX										
  vehicle_runtime.go:309	0xe4291d		488d4c2450		LEAQ 0x50(SP), CX									
  vehicle_runtime.go:309	0xe42922		e8f99362ff		CALL runtime.mapiterinit(SB)								
  vehicle_runtime.go:309	0xe42927		488b4c2420		MOVQ 0x20(SP), CX									
  vehicle_runtime.go:309	0xe4292c		eb67			JMP 0xe42995										
  vehicle_runtime.go:303	0xe4292e		4889442428		MOVQ AX, 0x28(SP)									
  vehicle_runtime.go:303	0xe42933		c644241e01		MOVB $__minor_os_version__(SB), 0x1e(SP)						
  vehicle_runtime.go:303	0xe42938		488b442428		MOVQ 0x28(SP), AX									
  vehicle_runtime.go:303	0xe4293d		bb01000000		MOVL $__minor_os_version__(SB), BX							
  vehicle_runtime.go:303	0xe42942		4881c4c0000000		ADDQ $.file+115(SB), SP									
  vehicle_runtime.go:303	0xe42949		5d			POPQ BP											
  vehicle_runtime.go:303	0xe4294a		c3			RET											
  vehicle_runtime.go:299	0xe4294b		4889442428		MOVQ AX, 0x28(SP)									
  vehicle_runtime.go:299	0xe42950		c644241e01		MOVB $__minor_os_version__(SB), 0x1e(SP)						
  vehicle_runtime.go:299	0xe42955		488b442428		MOVQ 0x28(SP), AX									
  vehicle_runtime.go:299	0xe4295a		bb01000000		MOVL $__minor_os_version__(SB), BX							
  vehicle_runtime.go:299	0xe4295f		4881c4c0000000		ADDQ $.file+115(SB), SP									
  vehicle_runtime.go:299	0xe42966		5d			POPQ BP											
  vehicle_runtime.go:299	0xe42967		c3			RET											
  vehicle_runtime.go:296	0xe42968		48c744242800000000	MOVQ $0x0, 0x28(SP)									
  vehicle_runtime.go:296	0xe42971		c644241e00		MOVB $0x0, 0x1e(SP)									
  vehicle_runtime.go:296	0xe42976		488b442428		MOVQ 0x28(SP), AX									
  vehicle_runtime.go:296	0xe4297b		31db			XORL BX, BX										
  vehicle_runtime.go:296	0xe4297d		4881c4c0000000		ADDQ $.file+115(SB), SP									
  vehicle_runtime.go:296	0xe42984		5d			POPQ BP											
  vehicle_runtime.go:296	0xe42985		c3			RET											
  vehicle_runtime.go:309	0xe42986		488d442450		LEAQ 0x50(SP), AX									
  vehicle_runtime.go:309	0xe4298b		e8b09562ff		CALL runtime.mapiternext(SB)								
  vehicle_runtime.go:309	0xe42990		488b4c2420		MOVQ 0x20(SP), CX									
  vehicle_runtime.go:309	0xe42995		48837c245000		CMPQ 0x50(SP), $0x0									
  vehicle_runtime.go:309	0xe4299b		0f1f440000		NOPL 0(AX)(AX*1)									
  vehicle_runtime.go:309	0xe429a0		0f843c010000		JE 0xe42ae2										
  vehicle_runtime.go:309	0xe429a6		488b542458		MOVQ 0x58(SP), DX									
  vehicle_runtime.go:309	0xe429ab		488b12			MOVQ 0(DX), DX										
  vehicle_runtime.go:309	0xe429ae		4889542430		MOVQ DX, 0x30(SP)									
  vehicle_runtime.go:310	0xe429b3		4885d2			TESTQ DX, DX										
  vehicle_runtime.go:310	0xe429b6		7507			JNE 0xe429bf										
  vehicle_runtime.go:310	0xe429b8		be01000000		MOVL $__minor_os_version__(SB), SI							
  vehicle_runtime.go:310	0xe429bd		eb35			JMP 0xe429f4										
  vehicle_runtime.go:310	0xe429bf		488b82e8000000		MOVQ 0xe8(DX), AX									
  vehicle_runtime.go:310	0xe429c6		488b9af0000000		MOVQ 0xf0(DX), BX									
  vehicle_runtime.go:310	0xe429cd		488b8af8000000		MOVQ 0xf8(DX), CX									
  vehicle_runtime.go:310	0xe429d4		e8c71e66ff		CALL time.Since(SB)									
  vehicle_runtime.go:310	0xe429d9		48ba00d6117e03000000	MOVQ $0x37e11d600, DX									
  vehicle_runtime.go:310	0xe429e3		4839d0			CMPQ AX, DX										
  vehicle_runtime.go:310	0xe429e6		400f9fc6		SETG SI											
  vehicle_runtime.go:313	0xe429ea		488b4c2420		MOVQ 0x20(SP), CX									
  vehicle_runtime.go:313	0xe429ef		488b542430		MOVQ 0x30(SP), DX									
  vehicle_runtime.go:310	0xe429f4		4084f6			TESTL SI, SI										
  vehicle_runtime.go:310	0xe429f7		758d			JNE 0xe42986										
  vehicle_runtime.go:313	0xe429f9		488b7218		MOVQ 0x18(DX), SI									
  vehicle_runtime.go:313	0xe429fd		0f1f00			NOPL 0(AX)										
  vehicle_runtime.go:313	0xe42a00		4839f1			CMPQ CX, SI										
  vehicle_runtime.go:313	0xe42a03		7404			JE 0xe42a09										
  vehicle_runtime.go:313	0xe42a05		31c0			XORL AX, AX										
  vehicle_runtime.go:313	0xe42a07		eb1b			JMP 0xe42a24										
  vehicle_runtime.go:313	0xe42a09		488b4210		MOVQ 0x10(DX), AX									
  vehicle_runtime.go:313	0xe42a0d		488b5c2438		MOVQ 0x38(SP), BX									
  vehicle_runtime.go:313	0xe42a12		4889f1			MOVQ SI, CX										
  vehicle_runtime.go:313	0xe42a15		e846045cff		CALL runtime.memequal(SB)								
  vehicle_runtime.go:313	0xe42a1a		488b4c2420		MOVQ 0x20(SP), CX									
  vehicle_runtime.go:313	0xe42a1f		488b542430		MOVQ 0x30(SP), DX									
  vehicle_runtime.go:313	0xe42a24		84c0			TESTL AL, AL										
  vehicle_runtime.go:313	0xe42a26		7407			JE 0xe42a2f										
  vehicle_runtime.go:313	0xe42a28		b801000000		MOVL $__minor_os_version__(SB), AX							
  vehicle_runtime.go:313	0xe42a2d		eb27			JMP 0xe42a56										
  vehicle_runtime.go:313	0xe42a2f		488b7208		MOVQ 0x8(DX), SI									
  vehicle_runtime.go:313	0xe42a33		4839f1			CMPQ CX, SI										
  vehicle_runtime.go:313	0xe42a36		7404			JE 0xe42a3c										
  vehicle_runtime.go:313	0xe42a38		31c0			XORL AX, AX										
  vehicle_runtime.go:313	0xe42a3a		eb1a			JMP 0xe42a56										
  vehicle_runtime.go:313	0xe42a3c		488b02			MOVQ 0(DX), AX										
  vehicle_runtime.go:313	0xe42a3f		488b5c2438		MOVQ 0x38(SP), BX									
  vehicle_runtime.go:313	0xe42a44		4889f1			MOVQ SI, CX										
  vehicle_runtime.go:313	0xe42a47		e814045cff		CALL runtime.memequal(SB)								
  vehicle_runtime.go:313	0xe42a4c		488b4c2420		MOVQ 0x20(SP), CX									
  vehicle_runtime.go:314	0xe42a51		488b542430		MOVQ 0x30(SP), DX									
  vehicle_runtime.go:313	0xe42a56		84c0			TESTL AL, AL										
  vehicle_runtime.go:313	0xe42a58		0f8428ffffff		JE 0xe42986										
  vehicle_runtime.go:314	0xe42a5e		488d053b7e2f00		LEAQ runtime.types+1398944(SB), AX							
  vehicle_runtime.go:314	0xe42a65		e836ed5cff		CALL runtime.newobject(SB)								
  vehicle_runtime.go:314	0xe42a6a		833ddfb0710200		CMPL runtime.writeBarrier(SB), $0x0							
  vehicle_runtime.go:314	0xe42a71		7424			JE 0xe42a97										
  vehicle_runtime.go:314	0xe42a73		48898424b0000000	MOVQ AX, 0xb0(SP)									
  vehicle_runtime.go:314	0xe42a7b		4889c3			MOVQ AX, BX										
  vehicle_runtime.go:314	0xe42a7e		488b4c2430		MOVQ 0x30(SP), CX									
  vehicle_runtime.go:314	0xe42a83		488d05167e2f00		LEAQ runtime.types+1398944(SB), AX							
  vehicle_runtime.go:314	0xe42a8a		e891245dff		CALL runtime.wbMove(SB)									
  vehicle_runtime.go:314	0xe42a8f		488b8424b0000000	MOVQ 0xb0(SP), AX									
  vehicle_runtime.go:314	0xe42a97		4889c7			MOVQ AX, DI										
  vehicle_runtime.go:314	0xe42a9a		488b742430		MOVQ 0x30(SP), SI									
  vehicle_runtime.go:314	0xe42a9f		90			NOPL											
  vehicle_runtime.go:314	0xe42aa0		48896c24f0		MOVQ BP, -0x10(SP)									
  vehicle_runtime.go:314	0xe42aa5		488d6c24f0		LEAQ -0x10(SP), BP									
  vehicle_runtime.go:314	0xe42aaa		e8116363ff		CALL 0x478dc0										
  vehicle_runtime.go:314	0xe42aaf		488b6d00		MOVQ 0(BP), BP										
  vehicle_runtime.go:315	0xe42ab3		4889442428		MOVQ AX, 0x28(SP)									
  vehicle_runtime.go:315	0xe42ab8		c644241e01		MOVB $__minor_os_version__(SB), 0x1e(SP)						
  vehicle_runtime.go:315	0xe42abd		c644241f00		MOVB $0x0, 0x1f(SP)									
  vehicle_runtime.go:315	0xe42ac2		488b9424b8000000	MOVQ 0xb8(SP), DX									
  vehicle_runtime.go:315	0xe42aca		488b02			MOVQ 0(DX), AX										
  vehicle_runtime.go:315	0xe42acd		ffd0			CALL AX											
  vehicle_runtime.go:315	0xe42acf		0fb65c241e		MOVZX 0x1e(SP), BX									
  vehicle_runtime.go:315	0xe42ad4		488b442428		MOVQ 0x28(SP), AX									
  vehicle_runtime.go:315	0xe42ad9		4881c4c0000000		ADDQ $.file+115(SB), SP									
  vehicle_runtime.go:315	0xe42ae0		5d			POPQ BP											
  vehicle_runtime.go:315	0xe42ae1		c3			RET											
  vehicle_runtime.go:318	0xe42ae2		48c744242800000000	MOVQ $0x0, 0x28(SP)									
  vehicle_runtime.go:318	0xe42aeb		c644241e00		MOVB $0x0, 0x1e(SP)									
  vehicle_runtime.go:318	0xe42af0		c644241f00		MOVB $0x0, 0x1f(SP)									
  vehicle_runtime.go:318	0xe42af5		488b9424b8000000	MOVQ 0xb8(SP), DX									
  vehicle_runtime.go:318	0xe42afd		488b02			MOVQ 0(DX), AX										
  vehicle_runtime.go:318	0xe42b00		ffd0			CALL AX											
  vehicle_runtime.go:318	0xe42b02		0fb65c241e		MOVZX 0x1e(SP), BX									
  vehicle_runtime.go:318	0xe42b07		488b442428		MOVQ 0x28(SP), AX									
  vehicle_runtime.go:318	0xe42b0c		4881c4c0000000		ADDQ $.file+115(SB), SP									
  vehicle_runtime.go:318	0xe42b13		5d			POPQ BP											
  vehicle_runtime.go:318	0xe42b14		c3			RET											
  vehicle_runtime.go:318	0xe42b15		e866705fff		CALL runtime.deferreturn(SB)								
  vehicle_runtime.go:318	0xe42b1a		488b442428		MOVQ 0x28(SP), AX									
  vehicle_runtime.go:318	0xe42b1f		0fb65c241e		MOVZX 0x1e(SP), BX									
  vehicle_runtime.go:318	0xe42b24		4881c4c0000000		ADDQ $.file+115(SB), SP									
  vehicle_runtime.go:318	0xe42b2b		5d			POPQ BP											
  vehicle_runtime.go:318	0xe42b2c		c3			RET											
  vehicle_runtime.go:294	0xe42b2d		4889442408		MOVQ AX, 0x8(SP)									
  vehicle_runtime.go:294	0xe42b32		48895c2410		MOVQ BX, 0x10(SP)									
  vehicle_runtime.go:294	0xe42b37		48894c2418		MOVQ CX, 0x18(SP)									
  vehicle_runtime.go:294	0xe42b3c		0f1f4000		NOPL 0(AX)										
  vehicle_runtime.go:294	0xe42b40		e89b3963ff		CALL runtime.morestack_noctxt.abi0(SB)							
  vehicle_runtime.go:294	0xe42b45		488b442408		MOVQ 0x8(SP), AX									
  vehicle_runtime.go:294	0xe42b4a		488b5c2410		MOVQ 0x10(SP), BX									
  vehicle_runtime.go:294	0xe42b4f		488b4c2418		MOVQ 0x18(SP), CX									
  vehicle_runtime.go:294	0xe42b54		e967fcffff		JMP CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).FreshByQuery(SB)			
  :-1				0xe42b59		cc			INT $__subsystem__(SB)									
  :-1				0xe42b5a		cc			INT $__subsystem__(SB)									
  :-1				0xe42b5b		cc			INT $__subsystem__(SB)									
  :-1				0xe42b5c		cc			INT $__subsystem__(SB)									
  :-1				0xe42b5d		cc			INT $__subsystem__(SB)									
  :-1				0xe42b5e		cc			INT $__subsystem__(SB)									
  :-1				0xe42b5f		cc			INT $__subsystem__(SB)									

TEXT CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).FreshByQuery.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehicle_runtime.go
  vehicle_runtime.go:307	0xe42b60		493b6610		CMPQ SP, 0x10(R14)								
  vehicle_runtime.go:307	0xe42b64		7630			JBE 0xe42b96									
  vehicle_runtime.go:307	0xe42b66		55			PUSHQ BP									
  vehicle_runtime.go:307	0xe42b67		4889e5			MOVQ SP, BP									
  vehicle_runtime.go:307	0xe42b6a		4883ec10		SUBQ $__major_os_version__+10(SB), SP						
  vehicle_runtime.go:307	0xe42b6e		4d8b6620		MOVQ 0x20(R14), R12								
  vehicle_runtime.go:307	0xe42b72		4d85e4			TESTQ R12, R12									
  vehicle_runtime.go:307	0xe42b75		7526			JNE 0xe42b9d									
  vehicle_runtime.go:307	0xe42b77		488b4208		MOVQ 0x8(DX), AX								
  rwmutex.go:118		0xe42b7b		bbffffffff		MOVL $-0x1, BX									
  rwmutex.go:118		0xe42b80		f00fc15810		LOCK XADDL BX, 0x10(AX)								
  type.go:88			0xe42b85		ffcb			DECL BX										
  rwmutex.go:118		0xe42b87		85db			TESTL BX, BX									
  rwmutex.go:118		0xe42b89		7d05			JGE 0xe42b90									
  rwmutex.go:120		0xe42b8b		e8b06264ff		CALL sync.(*RWMutex).rUnlockSlow(SB)						
  vehicle_runtime.go:307	0xe42b90		4883c410		ADDQ $__major_os_version__+10(SB), SP						
  vehicle_runtime.go:307	0xe42b94		5d			POPQ BP										
  vehicle_runtime.go:307	0xe42b95		c3			RET										
  vehicle_runtime.go:307	0xe42b96		e8c53863ff		CALL runtime.morestack.abi0(SB)							
  vehicle_runtime.go:307	0xe42b9b		ebc3			JMP CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).FreshByQuery.deferwrap1(SB)	
  vehicle_runtime.go:307	0xe42b9d		4c8d6c2420		LEAQ 0x20(SP), R13								
  vehicle_runtime.go:307	0xe42ba2		4d392c24		CMPQ 0(R12), R13								
  vehicle_runtime.go:307	0xe42ba6		75cf			JNE 0xe42b77									
  vehicle_runtime.go:307	0xe42ba8		49892424		MOVQ SP, 0(R12)									
  vehicle_runtime.go:307	0xe42bac		ebc9			JMP 0xe42b77									
  :-1				0xe42bae		cc			INT $__subsystem__(SB)								
  :-1				0xe42baf		cc			INT $__subsystem__(SB)								
  :-1				0xe42bb0		cc			INT $__subsystem__(SB)								
  :-1				0xe42bb1		cc			INT $__subsystem__(SB)								
  :-1				0xe42bb2		cc			INT $__subsystem__(SB)								
  :-1				0xe42bb3		cc			INT $__subsystem__(SB)								
  :-1				0xe42bb4		cc			INT $__subsystem__(SB)								
  :-1				0xe42bb5		cc			INT $__subsystem__(SB)								
  :-1				0xe42bb6		cc			INT $__subsystem__(SB)								
  :-1				0xe42bb7		cc			INT $__subsystem__(SB)								
  :-1				0xe42bb8		cc			INT $__subsystem__(SB)								
  :-1				0xe42bb9		cc			INT $__subsystem__(SB)								
  :-1				0xe42bba		cc			INT $__subsystem__(SB)								
  :-1				0xe42bbb		cc			INT $__subsystem__(SB)								
  :-1				0xe42bbc		cc			INT $__subsystem__(SB)								
  :-1				0xe42bbd		cc			INT $__subsystem__(SB)								
  :-1				0xe42bbe		cc			INT $__subsystem__(SB)								
  :-1				0xe42bbf		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).CurrentStation(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehicle_runtime.go
  vehicle_runtime.go:321	0xe42bc0		493b6610		CMPQ SP, 0x10(R14)							
  vehicle_runtime.go:321	0xe42bc4		0f8683000000		JBE 0xe42c4d								
  vehicle_runtime.go:321	0xe42bca		55			PUSHQ BP								
  vehicle_runtime.go:321	0xe42bcb		4889e5			MOVQ SP, BP								
  vehicle_runtime.go:321	0xe42bce		4883ec18		SUBQ $__major_os_version__+18(SB), SP					
  vehicle_runtime.go:321	0xe42bd2		48895c2430		MOVQ BX, 0x30(SP)							
  vehicle_runtime.go:322	0xe42bd7		e864faffff		CALL CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).Fresh(SB)		
  vehicle_runtime.go:322	0xe42bdc		0f1f4000		NOPL 0(AX)								
  vehicle_runtime.go:322	0xe42be0		84db			TESTL BL, BL								
  vehicle_runtime.go:323	0xe42be2		745d			JE 0xe42c41								
  vehicle_runtime.go:326	0xe42be4		488b5848		MOVQ 0x48(AX), BX							
  vehicle_runtime.go:326	0xe42be8		4885db			TESTQ BX, BX								
  vehicle_runtime.go:326	0xe42beb		7544			JNE 0xe42c31								
  traffic_dynamic.go:280	0xe42bed		488b5058		MOVQ 0x58(AX), DX							
  traffic_dynamic.go:280	0xe42bf1		4885d2			TESTQ DX, DX								
  traffic_dynamic.go:280	0xe42bf4		7406			JE 0xe42bfc								
  traffic_dynamic.go:280	0xe42bf6		488b7050		MOVQ 0x50(AX), SI							
  vehicle_runtime.go:329	0xe42bfa		eb23			JMP 0xe42c1f								
  traffic_dynamic.go:283	0xe42bfc		488b9098000000		MOVQ 0x98(AX), DX							
  traffic_dynamic.go:283	0xe42c03		4885d2			TESTQ DX, DX								
  traffic_dynamic.go:283	0xe42c06		7409			JE 0xe42c11								
  traffic_dynamic.go:283	0xe42c08		488bb090000000		MOVQ 0x90(AX), SI							
  vehicle_runtime.go:329	0xe42c0f		eb0e			JMP 0xe42c1f								
  traffic_dynamic.go:286	0xe42c11		488b9088000000		MOVQ 0x88(AX), DX							
  traffic_dynamic.go:286	0xe42c18		488bb080000000		MOVQ 0x80(AX), SI							
  vehicle_runtime.go:330	0xe42c1f		4885d2			TESTQ DX, DX								
  vehicle_runtime.go:330	0xe42c22		0f95c1			SETNE CL								
  vehicle_runtime.go:330	0xe42c25		4889f0			MOVQ SI, AX								
  vehicle_runtime.go:330	0xe42c28		4889d3			MOVQ DX, BX								
  vehicle_runtime.go:330	0xe42c2b		4883c418		ADDQ $__major_os_version__+18(SB), SP					
  vehicle_runtime.go:330	0xe42c2f		5d			POPQ BP									
  vehicle_runtime.go:330	0xe42c30		c3			RET									
  vehicle_runtime.go:326	0xe42c31		488b4040		MOVQ 0x40(AX), AX							
  vehicle_runtime.go:327	0xe42c35		b901000000		MOVL $__minor_os_version__(SB), CX					
  vehicle_runtime.go:327	0xe42c3a		4883c418		ADDQ $__major_os_version__+18(SB), SP					
  vehicle_runtime.go:327	0xe42c3e		5d			POPQ BP									
  vehicle_runtime.go:327	0xe42c3f		90			NOPL									
  vehicle_runtime.go:327	0xe42c40		c3			RET									
  vehicle_runtime.go:324	0xe42c41		31c0			XORL AX, AX								
  vehicle_runtime.go:324	0xe42c43		31db			XORL BX, BX								
  vehicle_runtime.go:324	0xe42c45		31c9			XORL CX, CX								
  vehicle_runtime.go:324	0xe42c47		4883c418		ADDQ $__major_os_version__+18(SB), SP					
  vehicle_runtime.go:324	0xe42c4b		5d			POPQ BP									
  vehicle_runtime.go:324	0xe42c4c		c3			RET									
  vehicle_runtime.go:321	0xe42c4d		4889442408		MOVQ AX, 0x8(SP)							
  vehicle_runtime.go:321	0xe42c52		48895c2410		MOVQ BX, 0x10(SP)							
  vehicle_runtime.go:321	0xe42c57		48894c2418		MOVQ CX, 0x18(SP)							
  vehicle_runtime.go:321	0xe42c5c		0f1f4000		NOPL 0(AX)								
  vehicle_runtime.go:321	0xe42c60		e87b3863ff		CALL runtime.morestack_noctxt.abi0(SB)					
  vehicle_runtime.go:321	0xe42c65		488b442408		MOVQ 0x8(SP), AX							
  vehicle_runtime.go:321	0xe42c6a		488b5c2410		MOVQ 0x10(SP), BX							
  vehicle_runtime.go:321	0xe42c6f		488b4c2418		MOVQ 0x18(SP), CX							
  vehicle_runtime.go:321	0xe42c74		e947ffffff		JMP CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).CurrentStation(SB)	
  :-1				0xe42c79		cc			INT $__subsystem__(SB)							
  :-1				0xe42c7a		cc			INT $__subsystem__(SB)							
  :-1				0xe42c7b		cc			INT $__subsystem__(SB)							
  :-1				0xe42c7c		cc			INT $__subsystem__(SB)							
  :-1				0xe42c7d		cc			INT $__subsystem__(SB)							
  :-1				0xe42c7e		cc			INT $__subsystem__(SB)							
  :-1				0xe42c7f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/pkg/diapdu.runtimeSnapForVehicle(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehicle_runtime.go
  vehicle_runtime.go:334	0xe42c80		493b6610		CMPQ SP, 0x10(R14)						
  vehicle_runtime.go:334	0xe42c84		0f868d000000		JBE 0xe42d17							
  vehicle_runtime.go:334	0xe42c8a		55			PUSHQ BP							
  vehicle_runtime.go:334	0xe42c8b		4889e5			MOVQ SP, BP							
  vehicle_runtime.go:334	0xe42c8e		4883ec20		SUBQ $__major_os_version__+26(SB), SP				
  vehicle_runtime.go:335	0xe42c92		488b05d71e1700		MOVQ CAS-Backend/pkg/diapdu.globalVehicleRuntime(SB), AX	
  vehicle_runtime.go:335	0xe42c99		488b5c2430		MOVQ 0x30(SP), BX						
  vehicle_runtime.go:335	0xe42c9e		488b4c2438		MOVQ 0x38(SP), CX						
  vehicle_runtime.go:335	0xe42ca3		e898f9ffff		CALL CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).Fresh(SB)	
  vehicle_runtime.go:335	0xe42ca8		84db			TESTL BL, BL							
  vehicle_runtime.go:335	0xe42caa		7415			JE 0xe42cc1							
  vehicle_runtime.go:335	0xe42cac		80b8e000000000		CMPB 0xe0(AX), $0x0						
  vehicle_runtime.go:335	0xe42cb3		740c			JE 0xe42cc1							
  vehicle_runtime.go:336	0xe42cb5		bb01000000		MOVL $__minor_os_version__(SB), BX				
  vehicle_runtime.go:336	0xe42cba		4883c420		ADDQ $__major_os_version__+26(SB), SP				
  vehicle_runtime.go:336	0xe42cbe		5d			POPQ BP								
  vehicle_runtime.go:336	0xe42cbf		90			NOPL								
  vehicle_runtime.go:336	0xe42cc0		c3			RET								
  vehicle_runtime.go:338	0xe42cc1		488b5c2460		MOVQ 0x60(SP), BX						
  vehicle_runtime.go:338	0xe42cc6		4885db			TESTQ BX, BX							
  vehicle_runtime.go:338	0xe42cc9		7442			JE 0xe42d0d							
  vehicle_runtime.go:338	0xe42ccb		488b442458		MOVQ 0x58(SP), AX						
  vehicle_runtime.go:339	0xe42cd0		488b0d991e1700		MOVQ CAS-Backend/pkg/diapdu.globalVehicleRuntime(SB), CX	
  vehicle_runtime.go:339	0xe42cd7		48894c2418		MOVQ CX, 0x18(SP)						
  vehicle_runtime.go:339	0xe42cdc		0f1f4000		NOPL 0(AX)							
  vehicle_runtime.go:339	0xe42ce0		e8fbeaffff		CALL CAS-Backend/pkg/diapdu.ResolveCanonicalVehicleID(SB)	
  vehicle_runtime.go:339	0xe42ce5		4889d9			MOVQ BX, CX							
  vehicle_runtime.go:339	0xe42ce8		4889c3			MOVQ AX, BX							
  vehicle_runtime.go:339	0xe42ceb		488b442418		MOVQ 0x18(SP), AX						
  vehicle_runtime.go:339	0xe42cf0		e84bf9ffff		CALL CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).Fresh(SB)	
  vehicle_runtime.go:339	0xe42cf5		84db			TESTL BL, BL							
  vehicle_runtime.go:339	0xe42cf7		7414			JE 0xe42d0d							
  vehicle_runtime.go:339	0xe42cf9		80b8e000000000		CMPB 0xe0(AX), $0x0						
  vehicle_runtime.go:339	0xe42d00		740b			JE 0xe42d0d							
  vehicle_runtime.go:340	0xe42d02		bb01000000		MOVL $__minor_os_version__(SB), BX				
  vehicle_runtime.go:340	0xe42d07		4883c420		ADDQ $__major_os_version__+26(SB), SP				
  vehicle_runtime.go:340	0xe42d0b		5d			POPQ BP								
  vehicle_runtime.go:340	0xe42d0c		c3			RET								
  vehicle_runtime.go:343	0xe42d0d		31c0			XORL AX, AX							
  vehicle_runtime.go:343	0xe42d0f		31db			XORL BX, BX							
  vehicle_runtime.go:343	0xe42d11		4883c420		ADDQ $__major_os_version__+26(SB), SP				
  vehicle_runtime.go:343	0xe42d15		5d			POPQ BP								
  vehicle_runtime.go:343	0xe42d16		c3			RET								
  vehicle_runtime.go:334	0xe42d17		e8c43763ff		CALL runtime.morestack_noctxt.abi0(SB)				
  vehicle_runtime.go:334	0xe42d1c		0f1f4000		NOPL 0(AX)							
  vehicle_runtime.go:334	0xe42d20		e95bffffff		JMP CAS-Backend/pkg/diapdu.runtimeSnapForVehicle(SB)		
  :-1				0xe42d25		cc			INT $__subsystem__(SB)						
  :-1				0xe42d26		cc			INT $__subsystem__(SB)						
  :-1				0xe42d27		cc			INT $__subsystem__(SB)						
  :-1				0xe42d28		cc			INT $__subsystem__(SB)						
  :-1				0xe42d29		cc			INT $__subsystem__(SB)						
  :-1				0xe42d2a		cc			INT $__subsystem__(SB)						
  :-1				0xe42d2b		cc			INT $__subsystem__(SB)						
  :-1				0xe42d2c		cc			INT $__subsystem__(SB)						
  :-1				0xe42d2d		cc			INT $__subsystem__(SB)						
  :-1				0xe42d2e		cc			INT $__subsystem__(SB)						
  :-1				0xe42d2f		cc			INT $__subsystem__(SB)						
  :-1				0xe42d30		cc			INT $__subsystem__(SB)						
  :-1				0xe42d31		cc			INT $__subsystem__(SB)						
  :-1				0xe42d32		cc			INT $__subsystem__(SB)						
  :-1				0xe42d33		cc			INT $__subsystem__(SB)						
  :-1				0xe42d34		cc			INT $__subsystem__(SB)						
  :-1				0xe42d35		cc			INT $__subsystem__(SB)						
  :-1				0xe42d36		cc			INT $__subsystem__(SB)						
  :-1				0xe42d37		cc			INT $__subsystem__(SB)						
  :-1				0xe42d38		cc			INT $__subsystem__(SB)						
  :-1				0xe42d39		cc			INT $__subsystem__(SB)						
  :-1				0xe42d3a		cc			INT $__subsystem__(SB)						
  :-1				0xe42d3b		cc			INT $__subsystem__(SB)						
  :-1				0xe42d3c		cc			INT $__subsystem__(SB)						
  :-1				0xe42d3d		cc			INT $__subsystem__(SB)						
  :-1				0xe42d3e		cc			INT $__subsystem__(SB)						
  :-1				0xe42d3f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.VehicleLiveStatusFromPush(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehicle_runtime.go
  vehicle_runtime.go:347	0xe42d40		4c8d6424e0		LEAQ -0x20(SP), R12						
  vehicle_runtime.go:347	0xe42d45		4d3b6610		CMPQ R12, 0x10(R14)						
  vehicle_runtime.go:347	0xe42d49		0f86d2010000		JBE 0xe42f21							
  vehicle_runtime.go:347	0xe42d4f		55			PUSHQ BP							
  vehicle_runtime.go:347	0xe42d50		4889e5			MOVQ SP, BP							
  vehicle_runtime.go:347	0xe42d53		4881ec98000000		SUBQ $.file+75(SB), SP						
  vehicle_runtime.go:348	0xe42d5a		488b8424a8000000	MOVQ 0xa8(SP), AX						
  vehicle_runtime.go:348	0xe42d62		48890424		MOVQ AX, 0(SP)							
  vehicle_runtime.go:348	0xe42d66		488d7c2408		LEAQ 0x8(SP), DI						
  vehicle_runtime.go:348	0xe42d6b		488db424b0000000	LEAQ 0xb0(SP), SI						
  vehicle_runtime.go:348	0xe42d73		660f1f840000000000	NOPW 0(AX)(AX*1)						
  vehicle_runtime.go:348	0xe42d7c		0f1f4000		NOPL 0(AX)							
  vehicle_runtime.go:348	0xe42d80		48896c24f0		MOVQ BP, -0x10(SP)						
  vehicle_runtime.go:348	0xe42d85		488d6c24f0		LEAQ -0x10(SP), BP						
  vehicle_runtime.go:348	0xe42d8a		e8af6063ff		CALL 0x478e3e							
  vehicle_runtime.go:348	0xe42d8f		488b6d00		MOVQ 0(BP), BP							
  vehicle_runtime.go:348	0xe42d93		e8e8feffff		CALL CAS-Backend/pkg/diapdu.runtimeSnapForVehicle(SB)		
  vehicle_runtime.go:348	0xe42d98		0f1f840000000000	NOPL 0(AX)(AX*1)						
  vehicle_runtime.go:348	0xe42da0		84db			TESTL BL, BL							
  vehicle_runtime.go:348	0xe42da2		0f852d010000		JNE 0xe42ed5							
  vehicle_runtime.go:359	0xe42da8		e8f3b266ff		CALL time.Now(SB)						
  vehicle_runtime.go:359	0xe42dad		4889842488000000	MOVQ AX, 0x88(SP)						
  vehicle_runtime.go:359	0xe42db5		48898c2490000000	MOVQ CX, 0x90(SP)						
  vehicle_runtime.go:359	0xe42dbd		48899c2480000000	MOVQ BX, 0x80(SP)						
  vehicle_runtime.go:351	0xe42dc5		488d0514a42e00		LEAQ runtime.types+1343968(SB), AX				
  vehicle_runtime.go:351	0xe42dcc		e8cfe95cff		CALL runtime.newobject(SB)					
  vehicle_runtime.go:352	0xe42dd1		488b8c24b0000000	MOVQ 0xb0(SP), CX						
  vehicle_runtime.go:352	0xe42dd9		488b9424a8000000	MOVQ 0xa8(SP), DX						
  vehicle_runtime.go:352	0xe42de1		48894808		MOVQ CX, 0x8(AX)						
  vehicle_runtime.go:352	0xe42de5		833d64ad710200		CMPL runtime.writeBarrier(SB), $0x0				
  vehicle_runtime.go:352	0xe42dec		7408			JE 0xe42df6							
  vehicle_runtime.go:352	0xe42dee		e82d5663ff		CALL runtime.gcWriteBarrier1(SB)				
  vehicle_runtime.go:352	0xe42df3		498913			MOVQ DX, 0(R11)							
  vehicle_runtime.go:352	0xe42df6		488910			MOVQ DX, 0(AX)							
  vehicle_runtime.go:353	0xe42df9		488b8c24d8000000	MOVQ 0xd8(SP), CX						
  vehicle_runtime.go:353	0xe42e01		488b9424d0000000	MOVQ 0xd0(SP), DX						
  vehicle_runtime.go:353	0xe42e09		48894818		MOVQ CX, 0x18(AX)						
  vehicle_runtime.go:353	0xe42e0d		833d3cad710200		CMPL runtime.writeBarrier(SB), $0x0				
  vehicle_runtime.go:353	0xe42e14		7408			JE 0xe42e1e							
  vehicle_runtime.go:353	0xe42e16		e8055663ff		CALL runtime.gcWriteBarrier1(SB)				
  vehicle_runtime.go:353	0xe42e1b		498913			MOVQ DX, 0(R11)							
  vehicle_runtime.go:353	0xe42e1e		48895010		MOVQ DX, 0x10(AX)						
  vehicle_runtime.go:354	0xe42e22		488b8c24c0000000	MOVQ 0xc0(SP), CX						
  vehicle_runtime.go:354	0xe42e2a		488b9424b8000000	MOVQ 0xb8(SP), DX						
  vehicle_runtime.go:354	0xe42e32		48898888000000		MOVQ CX, 0x88(AX)						
  vehicle_runtime.go:354	0xe42e39		833d10ad710200		CMPL runtime.writeBarrier(SB), $0x0				
  vehicle_runtime.go:354	0xe42e40		7408			JE 0xe42e4a							
  vehicle_runtime.go:354	0xe42e42		e8d95563ff		CALL runtime.gcWriteBarrier1(SB)				
  vehicle_runtime.go:354	0xe42e47		498913			MOVQ DX, 0(R11)							
  vehicle_runtime.go:354	0xe42e4a		48899080000000		MOVQ DX, 0x80(AX)						
  vehicle_runtime.go:355	0xe42e51		48c78090000000044b0000	MOVQ $__size_of_stack_commit__+15108(SB), 0x90(AX)		
  vehicle_runtime.go:356	0xe42e5c		48c7402807000000	MOVQ $__major_os_version__+1(SB), 0x28(AX)			
  vehicle_runtime.go:356	0xe42e64		488d0dcdfc3200		LEAQ go:string.*+42544(SB), CX					
  vehicle_runtime.go:356	0xe42e6b		48894820		MOVQ CX, 0x20(AX)						
  vehicle_runtime.go:357	0xe42e6f		48c7407818000000	MOVQ $__major_os_version__+18(SB), 0x78(AX)			
  vehicle_runtime.go:357	0xe42e77		488d0d241c3400		LEAQ go:string.*+116122(SB), CX					
  vehicle_runtime.go:357	0xe42e7e		48894870		MOVQ CX, 0x70(AX)						
  vehicle_runtime.go:358	0xe42e82		48c78098000000ffffffff	MOVQ $-0x1, 0x98(AX)						
  vehicle_runtime.go:359	0xe42e8d		488b8c2488000000	MOVQ 0x88(SP), CX						
  vehicle_runtime.go:359	0xe42e95		48894858		MOVQ CX, 0x58(AX)						
  vehicle_runtime.go:359	0xe42e99		488b8c2480000000	MOVQ 0x80(SP), CX						
  vehicle_runtime.go:359	0xe42ea1		48894860		MOVQ CX, 0x60(AX)						
  vehicle_runtime.go:359	0xe42ea5		833da4ac710200		CMPL runtime.writeBarrier(SB), $0x0				
  vehicle_runtime.go:359	0xe42eac		750a			JNE 0xe42eb8							
  vehicle_runtime.go:359	0xe42eae		488b8c2490000000	MOVQ 0x90(SP), CX						
  vehicle_runtime.go:359	0xe42eb6		eb10			JMP 0xe42ec8							
  vehicle_runtime.go:359	0xe42eb8		e8635563ff		CALL runtime.gcWriteBarrier1(SB)				
  vehicle_runtime.go:359	0xe42ebd		488b8c2490000000	MOVQ 0x90(SP), CX						
  vehicle_runtime.go:359	0xe42ec5		49890b			MOVQ CX, 0(R11)							
  vehicle_runtime.go:359	0xe42ec8		48894868		MOVQ CX, 0x68(AX)						
  vehicle_runtime.go:351	0xe42ecc		4881c498000000		ADDQ $.file+75(SB), SP						
  vehicle_runtime.go:351	0xe42ed3		5d			POPQ BP								
  vehicle_runtime.go:351	0xe42ed4		c3			RET								
  vehicle_runtime.go:349	0xe42ed5		488b8c24a8000000	MOVQ 0xa8(SP), CX						
  vehicle_runtime.go:349	0xe42edd		48890c24		MOVQ CX, 0(SP)							
  vehicle_runtime.go:349	0xe42ee1		488d7c2408		LEAQ 0x8(SP), DI						
  vehicle_runtime.go:349	0xe42ee6		488db424b0000000	LEAQ 0xb0(SP), SI						
  vehicle_runtime.go:349	0xe42eee		660f1f840000000000	NOPW 0(AX)(AX*1)						
  vehicle_runtime.go:349	0xe42ef7		660f1f840000000000	NOPW 0(AX)(AX*1)						
  vehicle_runtime.go:349	0xe42f00		48896c24f0		MOVQ BP, -0x10(SP)						
  vehicle_runtime.go:349	0xe42f05		488d6c24f0		LEAQ -0x10(SP), BP						
  vehicle_runtime.go:349	0xe42f0a		e82f5f63ff		CALL 0x478e3e							
  vehicle_runtime.go:349	0xe42f0f		488b6d00		MOVQ 0(BP), BP							
  vehicle_runtime.go:349	0xe42f13		e828010000		CALL CAS-Backend/pkg/diapdu.statusFromRuntimeSnap(SB)		
  vehicle_runtime.go:349	0xe42f18		4881c498000000		ADDQ $.file+75(SB), SP						
  vehicle_runtime.go:349	0xe42f1f		5d			POPQ BP								
  vehicle_runtime.go:349	0xe42f20		c3			RET								
  vehicle_runtime.go:347	0xe42f21		e8ba3563ff		CALL runtime.morestack_noctxt.abi0(SB)				
  vehicle_runtime.go:347	0xe42f26		e915feffff		JMP CAS-Backend/pkg/diapdu.VehicleLiveStatusFromPush(SB)	
  :-1				0xe42f2b		cc			INT $__subsystem__(SB)						
  :-1				0xe42f2c		cc			INT $__subsystem__(SB)						
  :-1				0xe42f2d		cc			INT $__subsystem__(SB)						
  :-1				0xe42f2e		cc			INT $__subsystem__(SB)						
  :-1				0xe42f2f		cc			INT $__subsystem__(SB)						
  :-1				0xe42f30		cc			INT $__subsystem__(SB)						
  :-1				0xe42f31		cc			INT $__subsystem__(SB)						
  :-1				0xe42f32		cc			INT $__subsystem__(SB)						
  :-1				0xe42f33		cc			INT $__subsystem__(SB)						
  :-1				0xe42f34		cc			INT $__subsystem__(SB)						
  :-1				0xe42f35		cc			INT $__subsystem__(SB)						
  :-1				0xe42f36		cc			INT $__subsystem__(SB)						
  :-1				0xe42f37		cc			INT $__subsystem__(SB)						
  :-1				0xe42f38		cc			INT $__subsystem__(SB)						
  :-1				0xe42f39		cc			INT $__subsystem__(SB)						
  :-1				0xe42f3a		cc			INT $__subsystem__(SB)						
  :-1				0xe42f3b		cc			INT $__subsystem__(SB)						
  :-1				0xe42f3c		cc			INT $__subsystem__(SB)						
  :-1				0xe42f3d		cc			INT $__subsystem__(SB)						
  :-1				0xe42f3e		cc			INT $__subsystem__(SB)						
  :-1				0xe42f3f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.VehicleLiveStatus(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehicle_runtime.go
  vehicle_runtime.go:364	0xe42f40		4c8d6424f8		LEAQ -0x8(SP), R12					
  vehicle_runtime.go:364	0xe42f45		4d3b6610		CMPQ R12, 0x10(R14)					
  vehicle_runtime.go:364	0xe42f49		0f86cf000000		JBE 0xe4301e						
  vehicle_runtime.go:364	0xe42f4f		55			PUSHQ BP						
  vehicle_runtime.go:364	0xe42f50		4889e5			MOVQ SP, BP						
  vehicle_runtime.go:364	0xe42f53		4883c480		ADDQ $-0x80, SP						
  vehicle_runtime.go:365	0xe42f57		488b842490000000	MOVQ 0x90(SP), AX					
  vehicle_runtime.go:365	0xe42f5f		48890424		MOVQ AX, 0(SP)						
  vehicle_runtime.go:365	0xe42f63		488d7c2408		LEAQ 0x8(SP), DI					
  vehicle_runtime.go:365	0xe42f68		488db42498000000	LEAQ 0x98(SP), SI					
  vehicle_runtime.go:365	0xe42f70		660f1f840000000000	NOPW 0(AX)(AX*1)					
  vehicle_runtime.go:365	0xe42f79		0f1f8000000000		NOPL 0(AX)						
  vehicle_runtime.go:365	0xe42f80		48896c24f0		MOVQ BP, -0x10(SP)					
  vehicle_runtime.go:365	0xe42f85		488d6c24f0		LEAQ -0x10(SP), BP					
  vehicle_runtime.go:365	0xe42f8a		e8af5e63ff		CALL 0x478e3e						
  vehicle_runtime.go:365	0xe42f8f		488b6d00		MOVQ 0(BP), BP						
  vehicle_runtime.go:365	0xe42f93		e8e8fcffff		CALL CAS-Backend/pkg/diapdu.runtimeSnapForVehicle(SB)	
  vehicle_runtime.go:365	0xe42f98		84db			TESTL BL, BL						
  vehicle_runtime.go:365	0xe42f9a		7442			JE 0xe42fde						
  vehicle_runtime.go:366	0xe42f9c		488b8c2490000000	MOVQ 0x90(SP), CX					
  vehicle_runtime.go:366	0xe42fa4		48890c24		MOVQ CX, 0(SP)						
  vehicle_runtime.go:366	0xe42fa8		488d7c2408		LEAQ 0x8(SP), DI					
  vehicle_runtime.go:366	0xe42fad		488db42498000000	LEAQ 0x98(SP), SI					
  vehicle_runtime.go:366	0xe42fb5		660f1f840000000000	NOPW 0(AX)(AX*1)					
  vehicle_runtime.go:366	0xe42fbe		6690			NOPW							
  vehicle_runtime.go:366	0xe42fc0		48896c24f0		MOVQ BP, -0x10(SP)					
  vehicle_runtime.go:366	0xe42fc5		488d6c24f0		LEAQ -0x10(SP), BP					
  vehicle_runtime.go:366	0xe42fca		e86f5e63ff		CALL 0x478e3e						
  vehicle_runtime.go:366	0xe42fcf		488b6d00		MOVQ 0(BP), BP						
  vehicle_runtime.go:366	0xe42fd3		e868000000		CALL CAS-Backend/pkg/diapdu.statusFromRuntimeSnap(SB)	
  vehicle_runtime.go:366	0xe42fd8		4883ec80		SUBQ $-0x80, SP						
  vehicle_runtime.go:366	0xe42fdc		5d			POPQ BP							
  vehicle_runtime.go:366	0xe42fdd		c3			RET							
  vehicle_runtime.go:368	0xe42fde		488b842490000000	MOVQ 0x90(SP), AX					
  vehicle_runtime.go:368	0xe42fe6		48890424		MOVQ AX, 0(SP)						
  vehicle_runtime.go:368	0xe42fea		488d7c2408		LEAQ 0x8(SP), DI					
  vehicle_runtime.go:368	0xe42fef		488db42498000000	LEAQ 0x98(SP), SI					
  vehicle_runtime.go:368	0xe42ff7		660f1f840000000000	NOPW 0(AX)(AX*1)					
  vehicle_runtime.go:368	0xe43000		48896c24f0		MOVQ BP, -0x10(SP)					
  vehicle_runtime.go:368	0xe43005		488d6c24f0		LEAQ -0x10(SP), BP					
  vehicle_runtime.go:368	0xe4300a		e82f5e63ff		CALL 0x478e3e						
  vehicle_runtime.go:368	0xe4300f		488b6d00		MOVQ 0(BP), BP						
  vehicle_runtime.go:368	0xe43013		e888e2ffff		CALL CAS-Backend/pkg/diapdu.probeVehicleReachable(SB)	
  vehicle_runtime.go:368	0xe43018		4883ec80		SUBQ $-0x80, SP						
  vehicle_runtime.go:368	0xe4301c		5d			POPQ BP							
  vehicle_runtime.go:368	0xe4301d		c3			RET							
  vehicle_runtime.go:364	0xe4301e		6690			NOPW							
  vehicle_runtime.go:364	0xe43020		e8bb3463ff		CALL runtime.morestack_noctxt.abi0(SB)			
  vehicle_runtime.go:364	0xe43025		e916ffffff		JMP CAS-Backend/pkg/diapdu.VehicleLiveStatus(SB)	
  :-1				0xe4302a		cc			INT $__subsystem__(SB)					
  :-1				0xe4302b		cc			INT $__subsystem__(SB)					
  :-1				0xe4302c		cc			INT $__subsystem__(SB)					
  :-1				0xe4302d		cc			INT $__subsystem__(SB)					
  :-1				0xe4302e		cc			INT $__subsystem__(SB)					
  :-1				0xe4302f		cc			INT $__subsystem__(SB)					
  :-1				0xe43030		cc			INT $__subsystem__(SB)					
  :-1				0xe43031		cc			INT $__subsystem__(SB)					
  :-1				0xe43032		cc			INT $__subsystem__(SB)					
  :-1				0xe43033		cc			INT $__subsystem__(SB)					
  :-1				0xe43034		cc			INT $__subsystem__(SB)					
  :-1				0xe43035		cc			INT $__subsystem__(SB)					
  :-1				0xe43036		cc			INT $__subsystem__(SB)					
  :-1				0xe43037		cc			INT $__subsystem__(SB)					
  :-1				0xe43038		cc			INT $__subsystem__(SB)					
  :-1				0xe43039		cc			INT $__subsystem__(SB)					
  :-1				0xe4303a		cc			INT $__subsystem__(SB)					
  :-1				0xe4303b		cc			INT $__subsystem__(SB)					
  :-1				0xe4303c		cc			INT $__subsystem__(SB)					
  :-1				0xe4303d		cc			INT $__subsystem__(SB)					
  :-1				0xe4303e		cc			INT $__subsystem__(SB)					
  :-1				0xe4303f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.statusFromRuntimeSnap(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehicle_runtime.go
  vehicle_runtime.go:371	0xe43040		4c8d6424f8		LEAQ -0x8(SP), R12					
  vehicle_runtime.go:371	0xe43045		4d3b6610		CMPQ R12, 0x10(R14)					
  vehicle_runtime.go:371	0xe43049		0f8609030000		JBE 0xe43358						
  vehicle_runtime.go:371	0xe4304f		55			PUSHQ BP						
  vehicle_runtime.go:371	0xe43050		4889e5			MOVQ SP, BP						
  vehicle_runtime.go:371	0xe43053		4883c480		ADDQ $-0x80, SP						
  vehicle_runtime.go:372	0xe43057		4883784800		CMPQ 0x48(AX), $0x0					
  vehicle_runtime.go:373	0xe4305c		7500			JNE 0xe4305e						
  vehicle_runtime.go:373	0xe4305e		4889842408010000	MOVQ AX, 0x108(SP)					
  vehicle_runtime.go:378	0xe43066		0fb690d0000000		MOVZX 0xd0(AX), DX					
  vehicle_runtime.go:378	0xe4306d		440fb690d1000000	MOVZX 0xd1(AX), R10					
  vehicle_runtime.go:378	0xe43075		440fb698d2000000	MOVZX 0xd2(AX), R11					
  vehicle_runtime.go:378	0xe4307d		0f1f00			NOPL 0(AX)						
  vehicle_runtime.go:378	0xe43080		84d2			TESTL DL, DL						
  veh_safety.go:6		0xe43082		7510			JNE 0xe43094						
  vehicle_runtime.go:378	0xe43084		4584d2			TESTL R10, R10						
  veh_safety.go:6		0xe43087		7404			JE 0xe4308d						
  vehicle_runtime.go:378	0xe43089		84d2			TESTL DL, DL						
  veh_safety.go:6		0xe4308b		eb07			JMP 0xe43094						
  vehicle_runtime.go:378	0xe4308d		4584db			TESTL R11, R11						
  vehicle_runtime.go:378	0xe43090		747e			JE 0xe43110						
  vehicle_runtime.go:378	0xe43092		84d2			TESTL DL, DL						
  veh_safety.go:11		0xe43094		740e			JE 0xe430a4						
  veh_safety.go:11		0xe43096		b90e000000		MOVL $__major_os_version__+8(SB), CX			
  veh_safety.go:11		0xe4309b		488d153f693300		LEAQ go:string.*+70873(SB), DX				
  vehicle_runtime.go:380	0xe430a2		eb2a			JMP 0xe430ce						
  vehicle_runtime.go:378	0xe430a4		4584d2			TESTL R10, R10						
  veh_safety.go:14		0xe430a7		740e			JE 0xe430b7						
  veh_safety.go:14		0xe430a9		b90d000000		MOVL $__major_os_version__+7(SB), CX			
  veh_safety.go:14		0xe430ae		488d15505c3300		LEAQ go:string.*+67581(SB), DX				
  vehicle_runtime.go:380	0xe430b5		eb17			JMP 0xe430ce						
  vehicle_runtime.go:378	0xe430b7		4584db			TESTL R11, R11						
  veh_safety.go:17		0xe430ba		740e			JE 0xe430ca						
  veh_safety.go:17		0xe430bc		b90f000000		MOVL $__major_os_version__+9(SB), CX			
  veh_safety.go:17		0xe430c1		488d15af763300		LEAQ go:string.*+74351(SB), DX				
  vehicle_runtime.go:380	0xe430c8		eb04			JMP 0xe430ce						
  vehicle_runtime.go:380	0xe430ca		31c9			XORL CX, CX						
  vehicle_runtime.go:380	0xe430cc		31d2			XORL DX, DX						
  vehicle_runtime.go:380	0xe430ce		31c0			XORL AX, AX						
  vehicle_runtime.go:380	0xe430d0		488d1d3b5c3300		LEAQ go:string.*+67594(SB), BX				
  vehicle_runtime.go:380	0xe430d7		4889d7			MOVQ DX, DI						
  vehicle_runtime.go:380	0xe430da		4889ce			MOVQ CX, SI						
  vehicle_runtime.go:380	0xe430dd		4c8d05e41b0202		LEAQ runtime.gcbits.*+520(SB), R8			
  vehicle_runtime.go:380	0xe430e4		41b901000000		MOVL $__minor_os_version__(SB), R9			
  vehicle_runtime.go:380	0xe430ea		b90d000000		MOVL $__major_os_version__+7(SB), CX			
  vehicle_runtime.go:380	0xe430ef		e8ac2361ff		CALL runtime.concatstring3(SB)				
  vehicle_runtime.go:380	0xe430f4		488d15c6743200		LEAQ go:string.*+8377(SB), DX				
  vehicle_runtime.go:380	0xe430fb		b905000000		MOVL $__subsystem__+2(SB), CX				
  vehicle_runtime.go:406	0xe43100		4889c6			MOVQ AX, SI						
  vehicle_runtime.go:388	0xe43103		488b842408010000	MOVQ 0x108(SP), AX					
  vehicle_runtime.go:380	0xe4310b		e9b8000000		JMP 0xe431c8						
  vehicle_runtime.go:381	0xe43110		80b8b800000000		CMPB 0xb8(AX), $0x0					
  vehicle_runtime.go:381	0xe43117		741d			JE 0xe43136						
  vehicle_runtime.go:381	0xe43119		b905000000		MOVL $__subsystem__+2(SB), CX				
  vehicle_runtime.go:381	0xe4311e		488d159c743200		LEAQ go:string.*+8377(SB), DX				
  vehicle_runtime.go:381	0xe43125		bb1d000000		MOVL $__major_os_version__+23(SB), BX			
  vehicle_runtime.go:381	0xe4312a		488d35c3723400		LEAQ go:string.*+138988(SB), SI				
  vehicle_runtime.go:381	0xe43131		e992000000		JMP 0xe431c8						
  vehicle_runtime.go:384	0xe43136		80b8e000000000		CMPB 0xe0(AX), $0x0					
  vehicle_runtime.go:384	0xe4313d		7479			JE 0xe431b8						
  vehicle_runtime.go:384	0xe4313f		4883b8d800000000	CMPQ 0xd8(AX), $0x0					
  vehicle_runtime.go:384	0xe43147		7512			JNE 0xe4315b						
  vehicle_runtime.go:384	0xe43149		b904000000		MOVL $__subsystem__+1(SB), CX				
  vehicle_runtime.go:384	0xe4314e		488d150f643200		LEAQ go:string.*+4188(SB), DX				
  vehicle_runtime.go:384	0xe43155		31db			XORL BX, BX						
  vehicle_runtime.go:384	0xe43157		31f6			XORL SI, SI						
  vehicle_runtime.go:384	0xe43159		eb6d			JMP 0xe431c8						
  vehicle_runtime.go:386	0xe4315b		440f117c2470		MOVUPS X15, 0x70(SP)					
  vehicle_runtime.go:386	0xe43161		488b88d8000000		MOVQ 0xd8(AX), CX					
  vehicle_runtime.go:386	0xe43168		4889c8			MOVQ CX, AX						
  vehicle_runtime.go:386	0xe4316b		e8306f62ff		CALL runtime.convT64(SB)				
  vehicle_runtime.go:386	0xe43170		488d0de9f91f00		LEAQ runtime.types+383840(SB), CX			
  vehicle_runtime.go:386	0xe43177		48894c2470		MOVQ CX, 0x70(SP)					
  vehicle_runtime.go:386	0xe4317c		4889442478		MOVQ AX, 0x78(SP)					
  vehicle_runtime.go:386	0xe43181		488d05f3d83400		LEAQ go:string.*+165235(SB), AX				
  vehicle_runtime.go:386	0xe43188		bb23000000		MOVL $__major_os_version__+29(SB), BX			
  vehicle_runtime.go:386	0xe4318d		488d4c2470		LEAQ 0x70(SP), CX					
  vehicle_runtime.go:386	0xe43192		bf01000000		MOVL $__minor_os_version__(SB), DI			
  vehicle_runtime.go:386	0xe43197		4889fe			MOVQ DI, SI						
  vehicle_runtime.go:386	0xe4319a		e8a1c16dff		CALL fmt.Sprintf(SB)					
  vehicle_runtime.go:386	0xe4319f		b906000000		MOVL $__major_os_version__(SB), CX			
  vehicle_runtime.go:386	0xe431a4		488d1522c13200		LEAQ go:string.*+28101(SB), DX				
  vehicle_runtime.go:406	0xe431ab		4889c6			MOVQ AX, SI						
  vehicle_runtime.go:388	0xe431ae		488b842408010000	MOVQ 0x108(SP), AX					
  vehicle_runtime.go:386	0xe431b6		eb10			JMP 0xe431c8						
  vehicle_runtime.go:386	0xe431b8		b904000000		MOVL $__subsystem__+1(SB), CX				
  vehicle_runtime.go:386	0xe431bd		488d15a0633200		LEAQ go:string.*+4188(SB), DX				
  vehicle_runtime.go:386	0xe431c4		31db			XORL BX, BX						
  vehicle_runtime.go:386	0xe431c6		31f6			XORL SI, SI						
  vehicle_runtime.go:401	0xe431c8		48894c2438		MOVQ CX, 0x38(SP)					
  vehicle_runtime.go:406	0xe431cd		4889742468		MOVQ SI, 0x68(SP)					
  vehicle_runtime.go:406	0xe431d2		48895c2448		MOVQ BX, 0x48(SP)					
  vehicle_runtime.go:401	0xe431d7		4889542460		MOVQ DX, 0x60(SP)					
  vehicle_runtime.go:388	0xe431dc		488b7838		MOVQ 0x38(AX), DI					
  vehicle_runtime.go:388	0xe431e0		48897c2450		MOVQ DI, 0x50(SP)					
  vehicle_runtime.go:392	0xe431e5		4c8b80d8000000		MOVQ 0xd8(AX), R8					
  vehicle_runtime.go:392	0xe431ec		4c89442440		MOVQ R8, 0x40(SP)					
  vehicle_runtime.go:393	0xe431f1		440fb688e0000000	MOVZX 0xe0(AX), R9					
  vehicle_runtime.go:393	0xe431f9		4c894c2458		MOVQ R9, 0x58(SP)					
  vehicle_runtime.go:396	0xe431fe		488d05db9f2e00		LEAQ runtime.types+1343968(SB), AX			
  vehicle_runtime.go:396	0xe43205		e896e55cff		CALL runtime.newobject(SB)				
  vehicle_runtime.go:397	0xe4320a		488b8c2498000000	MOVQ 0x98(SP), CX					
  vehicle_runtime.go:397	0xe43212		488b942490000000	MOVQ 0x90(SP), DX					
  vehicle_runtime.go:397	0xe4321a		48894808		MOVQ CX, 0x8(AX)					
  vehicle_runtime.go:389	0xe4321e		488b4c2450		MOVQ 0x50(SP), CX					
  vehicle_runtime.go:389	0xe43223		4885c9			TESTQ CX, CX						
  vehicle_runtime.go:402	0xe43226		bb64000000		MOVL $.file+23(SB), BX					
  vehicle_runtime.go:402	0xe4322b		480f4ecb		CMOVLE BX, CX						
  vehicle_runtime.go:407	0xe4322f		488b5c2458		MOVQ 0x58(SP), BX					
  vehicle_runtime.go:407	0xe43234		4885db			TESTQ BX, BX						
  vehicle_runtime.go:407	0xe43237		48c7c3ffffffff		MOVQ $-0x1, BX						
  vehicle_runtime.go:407	0xe4323e		488b742440		MOVQ 0x40(SP), SI					
  vehicle_runtime.go:407	0xe43243		480f45de		CMOVNE SI, BX						
  vehicle_runtime.go:397	0xe43247		833d02a9710200		CMPL runtime.writeBarrier(SB), $0x0			
  vehicle_runtime.go:397	0xe4324e		7408			JE 0xe43258						
  vehicle_runtime.go:397	0xe43250		e8cb5163ff		CALL runtime.gcWriteBarrier1(SB)			
  vehicle_runtime.go:397	0xe43255		498913			MOVQ DX, 0(R11)						
  vehicle_runtime.go:397	0xe43258		488910			MOVQ DX, 0(AX)						
  vehicle_runtime.go:398	0xe4325b		488b9424c0000000	MOVQ 0xc0(SP), DX					
  vehicle_runtime.go:398	0xe43263		488bb424b8000000	MOVQ 0xb8(SP), SI					
  vehicle_runtime.go:398	0xe4326b		48895018		MOVQ DX, 0x18(AX)					
  vehicle_runtime.go:398	0xe4326f		833ddaa8710200		CMPL runtime.writeBarrier(SB), $0x0			
  vehicle_runtime.go:398	0xe43276		7408			JE 0xe43280						
  vehicle_runtime.go:398	0xe43278		e8a35163ff		CALL runtime.gcWriteBarrier1(SB)			
  vehicle_runtime.go:398	0xe4327d		498933			MOVQ SI, 0(R11)						
  vehicle_runtime.go:398	0xe43280		48897010		MOVQ SI, 0x10(AX)					
  vehicle_runtime.go:399	0xe43284		488b9424a8000000	MOVQ 0xa8(SP), DX					
  vehicle_runtime.go:399	0xe4328c		488bb424a0000000	MOVQ 0xa0(SP), SI					
  vehicle_runtime.go:399	0xe43294		48899088000000		MOVQ DX, 0x88(AX)					
  vehicle_runtime.go:399	0xe4329b		833daea8710200		CMPL runtime.writeBarrier(SB), $0x0			
  vehicle_runtime.go:399	0xe432a2		7507			JNE 0xe432ab						
  vehicle_runtime.go:401	0xe432a4		488b542460		MOVQ 0x60(SP), DX					
  vehicle_runtime.go:399	0xe432a9		eb11			JMP 0xe432bc						
  vehicle_runtime.go:399	0xe432ab		e8905163ff		CALL runtime.gcWriteBarrier2(SB)			
  vehicle_runtime.go:399	0xe432b0		498933			MOVQ SI, 0(R11)						
  vehicle_runtime.go:401	0xe432b3		488b542460		MOVQ 0x60(SP), DX					
  vehicle_runtime.go:401	0xe432b8		49895308		MOVQ DX, 0x8(R11)					
  vehicle_runtime.go:399	0xe432bc		4889b080000000		MOVQ SI, 0x80(AX)					
  vehicle_runtime.go:400	0xe432c3		48c78090000000044b0000	MOVQ $__size_of_stack_commit__+15108(SB), 0x90(AX)	
  vehicle_runtime.go:401	0xe432ce		488b742438		MOVQ 0x38(SP), SI					
  vehicle_runtime.go:401	0xe432d3		48897028		MOVQ SI, 0x28(AX)					
  vehicle_runtime.go:401	0xe432d7		48895020		MOVQ DX, 0x20(AX)					
  vehicle_runtime.go:402	0xe432db		48894830		MOVQ CX, 0x30(AX)					
  vehicle_runtime.go:403	0xe432df		488b8c2408010000	MOVQ 0x108(SP), CX					
  vehicle_runtime.go:403	0xe432e7		f20f104120		MOVSD_XMM 0x20(CX), X0					
  vehicle_runtime.go:403	0xe432ec		f20f114038		MOVSD_XMM X0, 0x38(AX)					
  vehicle_runtime.go:404	0xe432f1		f20f104128		MOVSD_XMM 0x28(CX), X0					
  vehicle_runtime.go:404	0xe432f6		f20f114040		MOVSD_XMM X0, 0x40(AX)					
  vehicle_runtime.go:405	0xe432fb		488b91f0000000		MOVQ 0xf0(CX), DX					
  vehicle_runtime.go:405	0xe43302		488bb1e8000000		MOVQ 0xe8(CX), SI					
  vehicle_runtime.go:405	0xe43309		488b89f8000000		MOVQ 0xf8(CX), CX					
  vehicle_runtime.go:405	0xe43310		48897058		MOVQ SI, 0x58(AX)					
  vehicle_runtime.go:405	0xe43314		48895060		MOVQ DX, 0x60(AX)					
  vehicle_runtime.go:405	0xe43318		833d31a8710200		CMPL runtime.writeBarrier(SB), $0x0			
  vehicle_runtime.go:405	0xe4331f		90			NOPL							
  vehicle_runtime.go:405	0xe43320		7507			JNE 0xe43329						
  vehicle_runtime.go:406	0xe43322		488b542468		MOVQ 0x68(SP), DX					
  vehicle_runtime.go:405	0xe43327		eb11			JMP 0xe4333a						
  vehicle_runtime.go:405	0xe43329		e8125163ff		CALL runtime.gcWriteBarrier2(SB)			
  vehicle_runtime.go:405	0xe4332e		49890b			MOVQ CX, 0(R11)						
  vehicle_runtime.go:406	0xe43331		488b542468		MOVQ 0x68(SP), DX					
  vehicle_runtime.go:406	0xe43336		49895308		MOVQ DX, 0x8(R11)					
  vehicle_runtime.go:405	0xe4333a		48894868		MOVQ CX, 0x68(AX)					
  vehicle_runtime.go:406	0xe4333e		488b4c2448		MOVQ 0x48(SP), CX					
  vehicle_runtime.go:406	0xe43343		48894878		MOVQ CX, 0x78(AX)					
  vehicle_runtime.go:406	0xe43347		48895070		MOVQ DX, 0x70(AX)					
  vehicle_runtime.go:407	0xe4334b		48899898000000		MOVQ BX, 0x98(AX)					
  vehicle_runtime.go:389	0xe43352		4883ec80		SUBQ $-0x80, SP						
  vehicle_runtime.go:389	0xe43356		5d			POPQ BP							
  vehicle_runtime.go:389	0xe43357		c3			RET							
  vehicle_runtime.go:371	0xe43358		4889842480000000	MOVQ AX, 0x80(SP)					
  vehicle_runtime.go:371	0xe43360		e87b3163ff		CALL runtime.morestack_noctxt.abi0(SB)			
  vehicle_runtime.go:371	0xe43365		488b842480000000	MOVQ 0x80(SP), AX					
  vehicle_runtime.go:371	0xe4336d		e9cefcffff		JMP CAS-Backend/pkg/diapdu.statusFromRuntimeSnap(SB)	
  :-1				0xe43372		cc			INT $__subsystem__(SB)					
  :-1				0xe43373		cc			INT $__subsystem__(SB)					
  :-1				0xe43374		cc			INT $__subsystem__(SB)					
  :-1				0xe43375		cc			INT $__subsystem__(SB)					
  :-1				0xe43376		cc			INT $__subsystem__(SB)					
  :-1				0xe43377		cc			INT $__subsystem__(SB)					
  :-1				0xe43378		cc			INT $__subsystem__(SB)					
  :-1				0xe43379		cc			INT $__subsystem__(SB)					
  :-1				0xe4337a		cc			INT $__subsystem__(SB)					
  :-1				0xe4337b		cc			INT $__subsystem__(SB)					
  :-1				0xe4337c		cc			INT $__subsystem__(SB)					
  :-1				0xe4337d		cc			INT $__subsystem__(SB)					
  :-1				0xe4337e		cc			INT $__subsystem__(SB)					
  :-1				0xe4337f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.ensureVehicleInSchedulerPool(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehicle_runtime.go
  vehicle_runtime.go:412	0xe43380		4c8da424e0feffff	LEAQ 0xfffffee0(SP), R12							
  vehicle_runtime.go:412	0xe43388		4d3b6610		CMPQ R12, 0x10(R14)								
  vehicle_runtime.go:412	0xe4338c		0f8608070000		JBE 0xe43a9a									
  vehicle_runtime.go:412	0xe43392		55			PUSHQ BP									
  vehicle_runtime.go:412	0xe43393		4889e5			MOVQ SP, BP									
  vehicle_runtime.go:412	0xe43396		4881ec98010000		SUBQ $.file+331(SB), SP								
  vehicle_runtime.go:412	0xe4339d		48898424a8010000	MOVQ AX, 0x1a8(SP)								
  vehicle_runtime.go:412	0xe433a5		66440fd6bc2490010000	MOVQ X15, 0x190(SP)								
  vehicle_runtime.go:412	0xe433af		c684248700000000	MOVB $0x0, 0x87(SP)								
  vehicle_runtime.go:412	0xe433b7		660f1f840000000000	NOPW 0(AX)(AX*1)								
  vehicle_runtime.go:413	0xe433c0		4885c9			TESTQ CX, CX									
  vehicle_runtime.go:413	0xe433c3		0f8434010000		JE 0xe434fd									
  vehicle_runtime.go:413	0xe433c9		4885db			TESTQ BX, BX									
  vehicle_runtime.go:413	0xe433cc		0f842b010000		JE 0xe434fd									
  vehicle_runtime.go:413	0xe433d2		48898c24b8010000	MOVQ CX, 0x1b8(SP)								
  vehicle_runtime.go:413	0xe433da		48899c24b0010000	MOVQ BX, 0x1b0(SP)								
  vehicle_runtime.go:413	0xe433e2		48898424a8010000	MOVQ AX, 0x1a8(SP)								
  vehicle_runtime.go:416	0xe433ea		90			NOPL										
  vehicle_runtime.go:413	0xe433eb		4889c2			MOVQ AX, DX									
  mutex.go:85			0xe433ee		31c0			XORL AX, AX									
  mutex.go:85			0xe433f0		488d35c99f7102		LEAQ CAS-Backend/pkg/diapdu.autoScheduleMu(SB), SI				
  mutex.go:85			0xe433f7		bf01000000		MOVL $__minor_os_version__(SB), DI						
  mutex.go:85			0xe433fc		f00fb13e		LOCK CMPXCHGL DI, 0(SI)								
  mutex.go:85			0xe43400		410f94c0		SETE R8										
  mutex.go:85			0xe43404		4584c0			TESTL R8, R8									
  mutex.go:85			0xe43407		7530			JNE 0xe43439									
  mutex.go:92			0xe43409		488d05b09f7102		LEAQ CAS-Backend/pkg/diapdu.autoScheduleMu(SB), AX				
  mutex.go:92			0xe43410		e80b4664ff		CALL sync.(*Mutex).lockSlow(SB)							
  vehicle_runtime.go:437	0xe43415		488b8c24b8010000	MOVQ 0x1b8(SP), CX								
  vehicle_runtime.go:429	0xe4341d		488b9424a8010000	MOVQ 0x1a8(SP), DX								
  vehicle_runtime.go:429	0xe43425		488b9c24b0010000	MOVQ 0x1b0(SP), BX								
  mutex.go:85			0xe4342d		488d358c9f7102		LEAQ CAS-Backend/pkg/diapdu.autoScheduleMu(SB), SI				
  mutex.go:85			0xe43434		bf01000000		MOVL $__minor_os_version__(SB), DI						
  vehicle_runtime.go:417	0xe43439		4c8b0510ec6c02		MOVQ CAS-Backend/pkg/diapdu.globalForkliftUpdater(SB), R8			
  vehicle_runtime.go:417	0xe43440		4c898424b0000000	MOVQ R8, 0xb0(SP)								
  vehicle_runtime.go:419	0xe43448		90			NOPL										
  vehicle_runtime.go:418	0xe43449		440fb60d579e7102	MOVZX CAS-Backend/pkg/diapdu.autoScheduleRunning(SB), R9			
  vehicle_runtime.go:418	0xe43451		4584c9			TESTL R9, R9									
  mutex.go:221			0xe43454		41baffffffff		MOVL $-0x1, R10									
  mutex.go:221			0xe4345a		f0440fc116		LOCK XADDL R10, 0(SI)								
  mutex.go:221			0xe4345f		41ffca			DECL R10									
  mutex.go:222			0xe43462		4585d2			TESTL R10, R10									
  mutex.go:222			0xe43465		7505			JNE 0xe4346c									
  vehicle_runtime.go:418	0xe43467		4584c9			TESTL R9, R9									
  mutex.go:222			0xe4346a		eb4f			JMP 0xe434bb									
  vehicle_runtime.go:418	0xe4346c		44888c2486000000	MOVB R9, 0x86(SP)								
  mutex.go:225			0xe43474		488d05459f7102		LEAQ CAS-Backend/pkg/diapdu.autoScheduleMu(SB), AX				
  mutex.go:225			0xe4347b		4489d3			MOVL R10, BX									
  mutex.go:225			0xe4347e		6690			NOPW										
  mutex.go:225			0xe43480		e87b4864ff		CALL sync.(*Mutex).unlockSlow(SB)						
  vehicle_runtime.go:418	0xe43485		0fb68c2486000000	MOVZX 0x86(SP), CX								
  vehicle_runtime.go:418	0xe4348d		84c9			TESTL CL, CL									
  vehicle_runtime.go:437	0xe4348f		488b8c24b8010000	MOVQ 0x1b8(SP), CX								
  vehicle_runtime.go:429	0xe43497		488b9424a8010000	MOVQ 0x1a8(SP), DX								
  vehicle_runtime.go:429	0xe4349f		488b9c24b0010000	MOVQ 0x1b0(SP), BX								
  mutex.go:85			0xe434a7		488d35129f7102		LEAQ CAS-Backend/pkg/diapdu.autoScheduleMu(SB), SI				
  mutex.go:85			0xe434ae		bf01000000		MOVL $__minor_os_version__(SB), DI						
  vehicle_runtime.go:420	0xe434b3		4c8b8424b0000000	MOVQ 0xb0(SP), R8								
  vehicle_runtime.go:420	0xe434bb		7437			JE 0xe434f4									
  vehicle_runtime.go:420	0xe434bd		0f1f00			NOPL 0(AX)									
  vehicle_runtime.go:420	0xe434c0		4d85c0			TESTQ R8, R8									
  vehicle_runtime.go:420	0xe434c3		742f			JE 0xe434f4									
  vehicle_runtime.go:423	0xe434c5		e8f682b5ff		CALL CAS-Backend/biz/dao.GetAllVehicles(SB)					
  vehicle_runtime.go:424	0xe434ca		4885ff			TESTQ DI, DI									
  vehicle_runtime.go:424	0xe434cd		751c			JNE 0xe434eb									
  vehicle_runtime.go:423	0xe434cf		48899c2488000000	MOVQ BX, 0x88(SP)								
  vehicle_runtime.go:423	0xe434d7		48898424a0000000	MOVQ AX, 0xa0(SP)								
  vehicle_runtime.go:428	0xe434df		488b9424b0010000	MOVQ 0x1b0(SP), DX								
  vehicle_runtime.go:428	0xe434e7		31c9			XORL CX, CX									
  vehicle_runtime.go:428	0xe434e9		eb1e			JMP 0xe43509									
  vehicle_runtime.go:425	0xe434eb		4881c498010000		ADDQ $.file+331(SB), SP								
  vehicle_runtime.go:425	0xe434f2		5d			POPQ BP										
  vehicle_runtime.go:425	0xe434f3		c3			RET										
  vehicle_runtime.go:421	0xe434f4		4881c498010000		ADDQ $.file+331(SB), SP								
  vehicle_runtime.go:421	0xe434fb		5d			POPQ BP										
  vehicle_runtime.go:421	0xe434fc		c3			RET										
  vehicle_runtime.go:414	0xe434fd		4881c498010000		ADDQ $.file+331(SB), SP								
  vehicle_runtime.go:414	0xe43504		5d			POPQ BP										
  vehicle_runtime.go:414	0xe43505		c3			RET										
  vehicle_runtime.go:428	0xe43506		48ffc1			INCQ CX										
  vehicle_runtime.go:428	0xe43509		4839cb			CMPQ BX, CX									
  vehicle_runtime.go:428	0xe4350c		7e74			JLE 0xe43582									
  vehicle_runtime.go:429	0xe4350e		4c6bc178		IMULQ $.file+43(SB), CX, R8							
  vehicle_runtime.go:429	0xe43512		4e8b4c0008		MOVQ 0x8(AX)(R8*1), R9								
  vehicle_runtime.go:429	0xe43517		4e8d1400		LEAQ 0(AX)(R8*1), R10								
  vehicle_runtime.go:429	0xe4351b		4e8b0400		MOVQ 0(AX)(R8*1), R8								
  vehicle_runtime.go:429	0xe4351f		90			NOPL										
  vehicle_runtime.go:429	0xe43520		4c39ca			CMPQ DX, R9									
  vehicle_runtime.go:429	0xe43523		75e1			JNE 0xe43506									
  vehicle_runtime.go:428	0xe43525		48898c2498000000	MOVQ CX, 0x98(SP)								
  vehicle_runtime.go:429	0xe4352d		4c899424e0000000	MOVQ R10, 0xe0(SP)								
  vehicle_runtime.go:429	0xe43535		4c89c0			MOVQ R8, AX									
  vehicle_runtime.go:429	0xe43538		488b9c24a8010000	MOVQ 0x1a8(SP), BX								
  vehicle_runtime.go:429	0xe43540		4c89c9			MOVQ R9, CX									
  vehicle_runtime.go:429	0xe43543		e818f95bff		CALL runtime.memequal(SB)							
  vehicle_runtime.go:429	0xe43548		84c0			TESTL AL, AL									
  vehicle_runtime.go:429	0xe4354a		7522			JNE 0xe4356e									
  vehicle_runtime.go:429	0xe4354c		488b8424a0000000	MOVQ 0xa0(SP), AX								
  vehicle_runtime.go:428	0xe43554		488b8c2498000000	MOVQ 0x98(SP), CX								
  vehicle_runtime.go:429	0xe4355c		488b9424b0010000	MOVQ 0x1b0(SP), DX								
  vehicle_runtime.go:428	0xe43564		488b9c2488000000	MOVQ 0x88(SP), BX								
  vehicle_runtime.go:429	0xe4356c		eb98			JMP 0xe43506									
  vehicle_runtime.go:441	0xe4356e		488b9424b0010000	MOVQ 0x1b0(SP), DX								
  vehicle_runtime.go:434	0xe43576		488b8424e0000000	MOVQ 0xe0(SP), AX								
  vehicle_runtime.go:434	0xe4357e		6690			NOPW										
  vehicle_runtime.go:431	0xe43580		eb02			JMP 0xe43584									
  vehicle_runtime.go:431	0xe43582		31c0			XORL AX, AX									
  vehicle_runtime.go:434	0xe43584		4885c0			TESTQ AX, AX									
  vehicle_runtime.go:434	0xe43587		0f84f6040000		JE 0xe43a83									
  vehicle_runtime.go:434	0xe4358d		48898424a8000000	MOVQ AX, 0xa8(SP)								
  vehicle_runtime.go:437	0xe43595		488b08			MOVQ 0(AX), CX									
  vehicle_runtime.go:437	0xe43598		488d7008		LEAQ 0x8(AX), SI								
  vehicle_runtime.go:437	0xe4359c		48898c2418010000	MOVQ CX, 0x118(SP)								
  vehicle_runtime.go:437	0xe435a4		488dbc2420010000	LEAQ 0x120(SP), DI								
  vehicle_runtime.go:437	0xe435ac		48896c24f0		MOVQ BP, -0x10(SP)								
  vehicle_runtime.go:437	0xe435b1		488d6c24f0		LEAQ -0x10(SP), BP								
  vehicle_runtime.go:437	0xe435b6		e8835863ff		CALL 0x478e3e									
  vehicle_runtime.go:437	0xe435bb		488b6d00		MOVQ 0(BP), BP									
  vehicle_runtime.go:437	0xe435bf		488b8c2418010000	MOVQ 0x118(SP), CX								
  vehicle_runtime.go:437	0xe435c7		48890c24		MOVQ CX, 0(SP)									
  vehicle_runtime.go:437	0xe435cb		488d7c2408		LEAQ 0x8(SP), DI								
  vehicle_runtime.go:437	0xe435d0		488db42420010000	LEAQ 0x120(SP), SI								
  vehicle_runtime.go:437	0xe435d8		0f1f840000000000	NOPL 0(AX)(AX*1)								
  vehicle_runtime.go:437	0xe435e0		48896c24f0		MOVQ BP, -0x10(SP)								
  vehicle_runtime.go:437	0xe435e5		488d6c24f0		LEAQ -0x10(SP), BP								
  vehicle_runtime.go:437	0xe435ea		e84f5863ff		CALL 0x478e3e									
  vehicle_runtime.go:437	0xe435ef		488b6d00		MOVQ 0(BP), BP									
  vehicle_runtime.go:437	0xe435f3		488b8424b8010000	MOVQ 0x1b8(SP), AX								
  vehicle_runtime.go:437	0xe435fb		0f1f440000		NOPL 0(AX)(AX*1)								
  vehicle_runtime.go:437	0xe43600		e83bfaffff		CALL CAS-Backend/pkg/diapdu.statusFromRuntimeSnap(SB)				
  vehicle_runtime.go:437	0xe43605		48898424c0000000	MOVQ AX, 0xc0(SP)								
  vehicle_runtime.go:438	0xe4360d		488b8c24b0000000	MOVQ 0xb0(SP), CX								
  vehicle_runtime.go:438	0xe43615		488d5118		LEAQ 0x18(CX), DX								
  vehicle_runtime.go:438	0xe43619		48899424d8000000	MOVQ DX, 0xd8(SP)								
  vehicle_runtime.go:438	0xe43621		4889d0			MOVQ DX, AX									
  vehicle_runtime.go:438	0xe43624		e8975864ff		CALL sync.(*RWMutex).Lock(SB)							
  vehicle_runtime.go:439	0xe43629		488d0db0040000		LEAQ CAS-Backend/pkg/diapdu.ensureVehicleInSchedulerPool.deferwrap1(SB), CX	
  vehicle_runtime.go:439	0xe43630		48898c2408010000	MOVQ CX, 0x108(SP)								
  vehicle_runtime.go:439	0xe43638		488b8c24d8000000	MOVQ 0xd8(SP), CX								
  vehicle_runtime.go:439	0xe43640		48898c2410010000	MOVQ CX, 0x110(SP)								
  vehicle_runtime.go:439	0xe43648		488d8c2408010000	LEAQ 0x108(SP), CX								
  vehicle_runtime.go:439	0xe43650		48898c2490010000	MOVQ CX, 0x190(SP)								
  vehicle_runtime.go:439	0xe43658		c684248700000001	MOVB $__minor_os_version__(SB), 0x87(SP)					
  vehicle_runtime.go:440	0xe43660		488b9c24c0000000	MOVQ 0xc0(SP), BX								
  vehicle_runtime.go:440	0xe43668		48837b7800		CMPQ 0x78(BX), $0x0								
  vehicle_runtime.go:440	0xe4366d		750a			JNE 0xe43679									
  vehicle_runtime.go:440	0xe4366f		4883bb9800000000	CMPQ 0x98(BX), $0x0								
  vehicle_runtime.go:440	0xe43677		7472			JE 0xe436eb									
  vehicle_runtime.go:441	0xe43679		488b9424b0000000	MOVQ 0xb0(SP), DX								
  vehicle_runtime.go:441	0xe43681		488b5a30		MOVQ 0x30(DX), BX								
  vehicle_runtime.go:441	0xe43685		488d05b49f2300		LEAQ runtime.types+624192(SB), AX						
  vehicle_runtime.go:441	0xe4368c		488b8c24a8010000	MOVQ 0x1a8(SP), CX								
  vehicle_runtime.go:441	0xe43694		488bbc24b0010000	MOVQ 0x1b0(SP), DI								
  vehicle_runtime.go:441	0xe4369c		0f1f4000		NOPL 0(AX)									
  vehicle_runtime.go:441	0xe436a0		e85b105dff		CALL runtime.mapdelete_faststr(SB)						
  vehicle_runtime.go:442	0xe436a5		488b9424b0000000	MOVQ 0xb0(SP), DX								
  vehicle_runtime.go:442	0xe436ad		488b5a38		MOVQ 0x38(DX), BX								
  vehicle_runtime.go:442	0xe436b1		488d0588a22300		LEAQ runtime.types+624960(SB), AX						
  vehicle_runtime.go:442	0xe436b8		488b8c24a8010000	MOVQ 0x1a8(SP), CX								
  vehicle_runtime.go:442	0xe436c0		488bbc24b0010000	MOVQ 0x1b0(SP), DI								
  vehicle_runtime.go:442	0xe436c8		e833105dff		CALL runtime.mapdelete_faststr(SB)						
  vehicle_runtime.go:443	0xe436cd		c684248700000000	MOVB $0x0, 0x87(SP)								
  vehicle_runtime.go:443	0xe436d5		488b942490010000	MOVQ 0x190(SP), DX								
  vehicle_runtime.go:443	0xe436dd		488b32			MOVQ 0(DX), SI									
  vehicle_runtime.go:443	0xe436e0		ffd6			CALL SI										
  vehicle_runtime.go:443	0xe436e2		4881c498010000		ADDQ $.file+331(SB), SP								
  vehicle_runtime.go:443	0xe436e9		5d			POPQ BP										
  vehicle_runtime.go:443	0xe436ea		c3			RET										
  vehicle_runtime.go:445	0xe436eb		488b8424b0000000	MOVQ 0xb0(SP), AX								
  vehicle_runtime.go:445	0xe436f3		e828180000		CALL CAS-Backend/pkg/diapdu.(*ForkliftUpdater).convertToForklift(SB)		
  vehicle_runtime.go:445	0xe436f8		48898424d0000000	MOVQ AX, 0xd0(SP)								
  vehicle_runtime.go:446	0xe43700		488b8c24b0000000	MOVQ 0xb0(SP), CX								
  vehicle_runtime.go:446	0xe43708		488b5930		MOVQ 0x30(CX), BX								
  vehicle_runtime.go:446	0xe4370c		488bbc24b0010000	MOVQ 0x1b0(SP), DI								
  vehicle_runtime.go:446	0xe43714		488d05259f2300		LEAQ runtime.types+624192(SB), AX						
  vehicle_runtime.go:446	0xe4371b		488b8c24a8010000	MOVQ 0x1a8(SP), CX								
  vehicle_runtime.go:446	0xe43723		e818a562ff		CALL runtime.mapaccess2_faststr(SB)						
  vehicle_runtime.go:446	0xe43728		84db			TESTL BL, BL									
  vehicle_runtime.go:446	0xe4372a		0f8495000000		JE 0xe437c5									
  vehicle_runtime.go:446	0xe43730		488b08			MOVQ 0(AX), CX									
  vehicle_runtime.go:447	0xe43733		488b9424d0000000	MOVQ 0xd0(SP), DX								
  vehicle_runtime.go:447	0xe4373b		f20f104228		MOVSD_XMM 0x28(DX), X0								
  vehicle_runtime.go:447	0xe43740		f20f104a30		MOVSD_XMM 0x30(DX), X1								
  vehicle_runtime.go:447	0xe43745		f20f114128		MOVSD_XMM X0, 0x28(CX)								
  vehicle_runtime.go:447	0xe4374a		f20f114930		MOVSD_XMM X1, 0x30(CX)								
  vehicle_runtime.go:448	0xe4374f		488b7258		MOVQ 0x58(DX), SI								
  vehicle_runtime.go:448	0xe43753		48897158		MOVQ SI, 0x58(CX)								
  vehicle_runtime.go:449	0xe43757		488b7268		MOVQ 0x68(DX), SI								
  vehicle_runtime.go:449	0xe4375b		488b7a60		MOVQ 0x60(DX), DI								
  vehicle_runtime.go:449	0xe4375f		488b5270		MOVQ 0x70(DX), DX								
  vehicle_runtime.go:449	0xe43763		48897960		MOVQ DI, 0x60(CX)								
  vehicle_runtime.go:449	0xe43767		48897168		MOVQ SI, 0x68(CX)								
  vehicle_runtime.go:449	0xe4376b		833ddea3710200		CMPL runtime.writeBarrier(SB), $0x0						
  vehicle_runtime.go:449	0xe43772		7410			JE 0xe43784									
  vehicle_runtime.go:449	0xe43774		e8c74c63ff		CALL runtime.gcWriteBarrier2(SB)						
  vehicle_runtime.go:449	0xe43779		498913			MOVQ DX, 0(R11)									
  vehicle_runtime.go:449	0xe4377c		488b7170		MOVQ 0x70(CX), SI								
  vehicle_runtime.go:449	0xe43780		49897308		MOVQ SI, 0x8(R11)								
  vehicle_runtime.go:449	0xe43784		48895170		MOVQ DX, 0x70(CX)								
  vehicle_runtime.go:450	0xe43788		488b9424b8010000	MOVQ 0x1b8(SP), DX								
  vehicle_runtime.go:450	0xe43790		80bad000000000		CMPB 0xd0(DX), $0x0								
  veh_safety.go:6		0xe43797		751f			JNE 0xe437b8									
  vehicle_runtime.go:450	0xe43799		80bad100000000		CMPB 0xd1(DX), $0x0								
  veh_safety.go:6		0xe437a0		7516			JNE 0xe437b8									
  vehicle_runtime.go:450	0xe437a2		80bad200000000		CMPB 0xd2(DX), $0x0								
  vehicle_runtime.go:450	0xe437a9		750d			JNE 0xe437b8									
  vehicle_runtime.go:450	0xe437ab		80bab800000000		CMPB 0xb8(DX), $0x0								
  vehicle_runtime.go:450	0xe437b2		0f8468010000		JE 0xe43920									
  vehicle_runtime.go:451	0xe437b8		48c7412003000000	MOVQ $__subsystem__(SB), 0x20(CX)						
  vehicle_runtime.go:451	0xe437c0		e95b010000		JMP 0xe43920									
  vehicle_runtime.go:454	0xe437c5		488b9424b0000000	MOVQ 0xb0(SP), DX								
  vehicle_runtime.go:454	0xe437cd		488b5a30		MOVQ 0x30(DX), BX								
  vehicle_runtime.go:454	0xe437d1		488d05689e2300		LEAQ runtime.types+624192(SB), AX						
  vehicle_runtime.go:454	0xe437d8		488b8c24a8010000	MOVQ 0x1a8(SP), CX								
  vehicle_runtime.go:454	0xe437e0		488bbc24b0010000	MOVQ 0x1b0(SP), DI								
  vehicle_runtime.go:454	0xe437e8		e833a862ff		CALL runtime.mapassign_faststr(SB)						
  vehicle_runtime.go:454	0xe437ed		8400			TESTB AL, 0(AX)									
  vehicle_runtime.go:454	0xe437ef		833d5aa3710200		CMPL runtime.writeBarrier(SB), $0x0						
  vehicle_runtime.go:454	0xe437f6		750a			JNE 0xe43802									
  vehicle_runtime.go:454	0xe437f8		488b9424d0000000	MOVQ 0xd0(SP), DX								
  vehicle_runtime.go:454	0xe43800		eb17			JMP 0xe43819									
  vehicle_runtime.go:454	0xe43802		e8394c63ff		CALL runtime.gcWriteBarrier2(SB)						
  vehicle_runtime.go:454	0xe43807		488b9424d0000000	MOVQ 0xd0(SP), DX								
  vehicle_runtime.go:454	0xe4380f		498913			MOVQ DX, 0(R11)									
  vehicle_runtime.go:454	0xe43812		488b30			MOVQ 0(AX), SI									
  vehicle_runtime.go:454	0xe43815		49897308		MOVQ SI, 0x8(R11)								
  vehicle_runtime.go:454	0xe43819		488910			MOVQ DX, 0(AX)									
  vehicle_runtime.go:455	0xe4381c		488b9424b0000000	MOVQ 0xb0(SP), DX								
  vehicle_runtime.go:455	0xe43824		488b5a38		MOVQ 0x38(DX), BX								
  vehicle_runtime.go:455	0xe43828		488d0511a12300		LEAQ runtime.types+624960(SB), AX						
  vehicle_runtime.go:455	0xe4382f		488b8c24a8010000	MOVQ 0x1a8(SP), CX								
  vehicle_runtime.go:455	0xe43837		488bbc24b0010000	MOVQ 0x1b0(SP), DI								
  vehicle_runtime.go:455	0xe4383f		90			NOPL										
  vehicle_runtime.go:455	0xe43840		e8fb0a5dff		CALL runtime.mapaccess1_faststr(SB)						
  vehicle_runtime.go:455	0xe43845		0fb610			MOVZX 0(AX), DX									
  vehicle_runtime.go:455	0xe43848		83f201			XORL $__minor_os_version__(SB), DX						
  vehicle_runtime.go:455	0xe4384b		84d2			TESTL DL, DL									
  vehicle_runtime.go:455	0xe4384d		0f84c5000000		JE 0xe43918									
  vehicle_runtime.go:456	0xe43853		440f11bc24e8000000	MOVUPS X15, 0xe8(SP)								
  vehicle_runtime.go:456	0xe4385c		440f11bc24f8000000	MOVUPS X15, 0xf8(SP)								
  vehicle_runtime.go:456	0xe43865		488b8c24a8000000	MOVQ 0xa8(SP), CX								
  vehicle_runtime.go:456	0xe4386d		488b4128		MOVQ 0x28(CX), AX								
  vehicle_runtime.go:456	0xe43871		488b5930		MOVQ 0x30(CX), BX								
  vehicle_runtime.go:456	0xe43875		e8a66862ff		CALL runtime.convTstring(SB)							
  vehicle_runtime.go:456	0xe4387a		488d0d9ff01f00		LEAQ runtime.types+383264(SB), CX						
  vehicle_runtime.go:456	0xe43881		48898c24e8000000	MOVQ CX, 0xe8(SP)								
  vehicle_runtime.go:456	0xe43889		48898424f0000000	MOVQ AX, 0xf0(SP)								
  vehicle_runtime.go:456	0xe43891		488b8424a8010000	MOVQ 0x1a8(SP), AX								
  vehicle_runtime.go:456	0xe43899		488b9c24b0010000	MOVQ 0x1b0(SP), BX								
  vehicle_runtime.go:456	0xe438a1		e87a6862ff		CALL runtime.convTstring(SB)							
  vehicle_runtime.go:456	0xe438a6		488d0d73f01f00		LEAQ runtime.types+383264(SB), CX						
  vehicle_runtime.go:456	0xe438ad		48898c24f8000000	MOVQ CX, 0xf8(SP)								
  vehicle_runtime.go:456	0xe438b5		4889842400010000	MOVQ AX, 0x100(SP)								
  print.go:233			0xe438bd		488b1dbce76c02		MOVQ os.Stdout(SB), BX								
  print.go:233			0xe438c4		488d0515820202		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233			0xe438cb		488d0da9f53500		LEAQ go:string.*+239987(SB), CX							
  print.go:233			0xe438d2		bf3c000000		MOVL $__major_os_version__+54(SB), DI						
  print.go:233			0xe438d7		488db424e8000000	LEAQ 0xe8(SP), SI								
  print.go:233			0xe438df		41b802000000		MOVL $__minor_os_version__+1(SB), R8						
  print.go:233			0xe438e5		4d89c1			MOVQ R8, R9									
  print.go:233			0xe438e8		e833b96dff		CALL fmt.Fprintf(SB)								
  vehicle_runtime.go:457	0xe438ed		488b8c24b0000000	MOVQ 0xb0(SP), CX								
  vehicle_runtime.go:457	0xe438f5		488b5938		MOVQ 0x38(CX), BX								
  vehicle_runtime.go:457	0xe438f9		488d0540a02300		LEAQ runtime.types+624960(SB), AX						
  vehicle_runtime.go:457	0xe43900		488b8c24a8010000	MOVQ 0x1a8(SP), CX								
  vehicle_runtime.go:457	0xe43908		488bbc24b0010000	MOVQ 0x1b0(SP), DI								
  vehicle_runtime.go:457	0xe43910		e80ba762ff		CALL runtime.mapassign_faststr(SB)						
  vehicle_runtime.go:457	0xe43915		c60001			MOVB $__minor_os_version__(SB), 0(AX)						
  vehicle_runtime.go:460	0xe43918		488b9424b8010000	MOVQ 0x1b8(SP), DX								
  vehicle_runtime.go:460	0xe43920		488b4240		MOVQ 0x40(DX), AX								
  vehicle_runtime.go:460	0xe43924		488b5a48		MOVQ 0x48(DX), BX								
  vehicle_runtime.go:460	0xe43928		e893f069ff		CALL strings.TrimSpace(SB)							
  vehicle_runtime.go:461	0xe4392d		4885db			TESTQ BX, BX									
  vehicle_runtime.go:461	0xe43930		7569			JNE 0xe4399b									
  traffic_dynamic.go:95		0xe43932		4c8b8424b8010000	MOVQ 0x1b8(SP), R8								
  traffic_dynamic.go:95		0xe4393a		4983b8a800000000	CMPQ 0xa8(R8), $0x0								
  traffic_dynamic.go:95		0xe43942		751b			JNE 0xe4395f									
  traffic_dynamic.go:95		0xe43944		4983b89800000000	CMPQ 0x98(R8), $0x0								
  traffic_dynamic.go:95		0xe4394c		7511			JNE 0xe4395f									
  traffic_dynamic.go:95		0xe4394e		4983b88800000000	CMPQ 0x88(R8), $0x0								
  traffic_dynamic.go:95		0xe43956		7507			JNE 0xe4395f									
  traffic_dynamic.go:95		0xe43958		4983785800		CMPQ 0x58(R8), $0x0								
  vehicle_runtime.go:461	0xe4395d		7434			JE 0xe43993									
  traffic_dynamic.go:280	0xe4395f		4d8b4858		MOVQ 0x58(R8), R9								
  traffic_dynamic.go:280	0xe43963		4d85c9			TESTQ R9, R9									
  traffic_dynamic.go:280	0xe43966		7406			JE 0xe4396e									
  traffic_dynamic.go:280	0xe43968		4d8b4050		MOVQ 0x50(R8), R8								
  vehicle_runtime.go:462	0xe4396c		eb33			JMP 0xe439a1									
  traffic_dynamic.go:283	0xe4396e		4d8b8898000000		MOVQ 0x98(R8), R9								
  traffic_dynamic.go:283	0xe43975		4d85c9			TESTQ R9, R9									
  traffic_dynamic.go:283	0xe43978		7409			JE 0xe43983									
  traffic_dynamic.go:283	0xe4397a		4d8b8090000000		MOVQ 0x90(R8), R8								
  vehicle_runtime.go:462	0xe43981		eb1e			JMP 0xe439a1									
  traffic_dynamic.go:286	0xe43983		4d8b8888000000		MOVQ 0x88(R8), R9								
  traffic_dynamic.go:286	0xe4398a		4d8b8080000000		MOVQ 0x80(R8), R8								
  vehicle_runtime.go:462	0xe43991		eb0e			JMP 0xe439a1									
  vehicle_runtime.go:468	0xe43993		4989d9			MOVQ BX, R9									
  vehicle_runtime.go:468	0xe43996		4989c0			MOVQ AX, R8									
  vehicle_runtime.go:461	0xe43999		eb06			JMP 0xe439a1									
  vehicle_runtime.go:468	0xe4399b		4989d9			MOVQ BX, R9									
  vehicle_runtime.go:468	0xe4399e		4989c0			MOVQ AX, R8									
  vehicle_runtime.go:468	0xe439a1		4c898c2490000000	MOVQ R9, 0x90(SP)								
  vehicle_runtime.go:468	0xe439a9		4c898424b8000000	MOVQ R8, 0xb8(SP)								
  vehicle_runtime.go:464	0xe439b1		90			NOPL										
  mutex.go:85			0xe439b2		31c0			XORL AX, AX									
  mutex.go:85			0xe439b4		4c8d15059a7102		LEAQ CAS-Backend/pkg/diapdu.autoScheduleMu(SB), R10				
  mutex.go:85			0xe439bb		41bb01000000		MOVL $__minor_os_version__(SB), R11						
  mutex.go:85			0xe439c1		f0450fb11a		LOCK CMPXCHGL R11, 0(R10)							
  mutex.go:85			0xe439c6		410f94c3		SETE R11									
  mutex.go:85			0xe439ca		4584db			TESTL R11, R11									
  mutex.go:85			0xe439cd		7523			JNE 0xe439f2									
  mutex.go:92			0xe439cf		488d05ea997102		LEAQ CAS-Backend/pkg/diapdu.autoScheduleMu(SB), AX				
  mutex.go:92			0xe439d6		e8454064ff		CALL sync.(*Mutex).lockSlow(SB)							
  vehicle_runtime.go:468	0xe439db		4c8b8424b8000000	MOVQ 0xb8(SP), R8								
  vehicle_runtime.go:467	0xe439e3		4c8b8c2490000000	MOVQ 0x90(SP), R9								
  mutex.go:85			0xe439eb		4c8d15ce997102		LEAQ CAS-Backend/pkg/diapdu.autoScheduleMu(SB), R10				
  vehicle_runtime.go:465	0xe439f2		488b055fe66c02		MOVQ CAS-Backend/pkg/diapdu.globalTaskScheduler(SB), AX				
  vehicle_runtime.go:466	0xe439f9		90			NOPL										
  mutex.go:221			0xe439fa		bbffffffff		MOVL $-0x1, BX									
  mutex.go:221			0xe439ff		f0410fc11a		LOCK XADDL BX, 0(R10)								
  mutex.go:221			0xe43a04		ffcb			DECL BX										
  mutex.go:222			0xe43a06		85db			TESTL BX, BX									
  mutex.go:222			0xe43a08		742c			JE 0xe43a36									
  vehicle_runtime.go:465	0xe43a0a		48898424c8000000	MOVQ AX, 0xc8(SP)								
  mutex.go:225			0xe43a12		488d05a7997102		LEAQ CAS-Backend/pkg/diapdu.autoScheduleMu(SB), AX				
  mutex.go:225			0xe43a19		e8e24264ff		CALL sync.(*Mutex).unlockSlow(SB)						
  vehicle_runtime.go:467	0xe43a1e		488b8424c8000000	MOVQ 0xc8(SP), AX								
  vehicle_runtime.go:468	0xe43a26		4c8b8424b8000000	MOVQ 0xb8(SP), R8								
  vehicle_runtime.go:467	0xe43a2e		4c8b8c2490000000	MOVQ 0x90(SP), R9								
  vehicle_runtime.go:467	0xe43a36		4885c0			TESTQ AX, AX									
  vehicle_runtime.go:467	0xe43a39		742a			JE 0xe43a65									
  vehicle_runtime.go:467	0xe43a3b		0f1f440000		NOPL 0(AX)(AX*1)								
  vehicle_runtime.go:467	0xe43a40		4d85c9			TESTQ R9, R9									
  vehicle_runtime.go:467	0xe43a43		7420			JE 0xe43a65									
  vehicle_runtime.go:468	0xe43a45		488b9c24a8010000	MOVQ 0x1a8(SP), BX								
  vehicle_runtime.go:468	0xe43a4d		488b8c24b0010000	MOVQ 0x1b0(SP), CX								
  vehicle_runtime.go:468	0xe43a55		4c89c7			MOVQ R8, DI									
  vehicle_runtime.go:468	0xe43a58		4c89ce			MOVQ R9, SI									
  vehicle_runtime.go:468	0xe43a5b		0f1f440000		NOPL 0(AX)(AX*1)								
  vehicle_runtime.go:468	0xe43a60		e89b28feff		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).syncVehicleDockFromRuntime(SB)	
  vehicle_runtime.go:470	0xe43a65		c684248700000000	MOVB $0x0, 0x87(SP)								
  vehicle_runtime.go:470	0xe43a6d		488b942490010000	MOVQ 0x190(SP), DX								
  vehicle_runtime.go:470	0xe43a75		488b02			MOVQ 0(DX), AX									
  vehicle_runtime.go:470	0xe43a78		ffd0			CALL AX										
  vehicle_runtime.go:470	0xe43a7a		4881c498010000		ADDQ $.file+331(SB), SP								
  vehicle_runtime.go:470	0xe43a81		5d			POPQ BP										
  vehicle_runtime.go:470	0xe43a82		c3			RET										
  vehicle_runtime.go:435	0xe43a83		4881c498010000		ADDQ $.file+331(SB), SP								
  vehicle_runtime.go:435	0xe43a8a		5d			POPQ BP										
  vehicle_runtime.go:435	0xe43a8b		c3			RET										
  vehicle_runtime.go:435	0xe43a8c		e8ef605fff		CALL runtime.deferreturn(SB)							
  vehicle_runtime.go:435	0xe43a91		4881c498010000		ADDQ $.file+331(SB), SP								
  vehicle_runtime.go:435	0xe43a98		5d			POPQ BP										
  vehicle_runtime.go:435	0xe43a99		c3			RET										
  vehicle_runtime.go:412	0xe43a9a		4889442408		MOVQ AX, 0x8(SP)								
  vehicle_runtime.go:412	0xe43a9f		48895c2410		MOVQ BX, 0x10(SP)								
  vehicle_runtime.go:412	0xe43aa4		48894c2418		MOVQ CX, 0x18(SP)								
  vehicle_runtime.go:412	0xe43aa9		e8322a63ff		CALL runtime.morestack_noctxt.abi0(SB)						
  vehicle_runtime.go:412	0xe43aae		488b442408		MOVQ 0x8(SP), AX								
  vehicle_runtime.go:412	0xe43ab3		488b5c2410		MOVQ 0x10(SP), BX								
  vehicle_runtime.go:412	0xe43ab8		488b4c2418		MOVQ 0x18(SP), CX								
  vehicle_runtime.go:412	0xe43abd		0f1f00			NOPL 0(AX)									
  vehicle_runtime.go:412	0xe43ac0		e9bbf8ffff		JMP CAS-Backend/pkg/diapdu.ensureVehicleInSchedulerPool(SB)			
  :-1				0xe43ac5		cc			INT $__subsystem__(SB)								
  :-1				0xe43ac6		cc			INT $__subsystem__(SB)								
  :-1				0xe43ac7		cc			INT $__subsystem__(SB)								
  :-1				0xe43ac8		cc			INT $__subsystem__(SB)								
  :-1				0xe43ac9		cc			INT $__subsystem__(SB)								
  :-1				0xe43aca		cc			INT $__subsystem__(SB)								
  :-1				0xe43acb		cc			INT $__subsystem__(SB)								
  :-1				0xe43acc		cc			INT $__subsystem__(SB)								
  :-1				0xe43acd		cc			INT $__subsystem__(SB)								
  :-1				0xe43ace		cc			INT $__subsystem__(SB)								
  :-1				0xe43acf		cc			INT $__subsystem__(SB)								
  :-1				0xe43ad0		cc			INT $__subsystem__(SB)								
  :-1				0xe43ad1		cc			INT $__subsystem__(SB)								
  :-1				0xe43ad2		cc			INT $__subsystem__(SB)								
  :-1				0xe43ad3		cc			INT $__subsystem__(SB)								
  :-1				0xe43ad4		cc			INT $__subsystem__(SB)								
  :-1				0xe43ad5		cc			INT $__subsystem__(SB)								
  :-1				0xe43ad6		cc			INT $__subsystem__(SB)								
  :-1				0xe43ad7		cc			INT $__subsystem__(SB)								
  :-1				0xe43ad8		cc			INT $__subsystem__(SB)								
  :-1				0xe43ad9		cc			INT $__subsystem__(SB)								
  :-1				0xe43ada		cc			INT $__subsystem__(SB)								
  :-1				0xe43adb		cc			INT $__subsystem__(SB)								
  :-1				0xe43adc		cc			INT $__subsystem__(SB)								
  :-1				0xe43add		cc			INT $__subsystem__(SB)								
  :-1				0xe43ade		cc			INT $__subsystem__(SB)								
  :-1				0xe43adf		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.ensureVehicleInSchedulerPool.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehicle_runtime.go
  vehicle_runtime.go:439	0xe43ae0		493b6610		CMPQ SP, 0x10(R14)							
  vehicle_runtime.go:439	0xe43ae4		7625			JBE 0xe43b0b								
  vehicle_runtime.go:439	0xe43ae6		55			PUSHQ BP								
  vehicle_runtime.go:439	0xe43ae7		4889e5			MOVQ SP, BP								
  vehicle_runtime.go:439	0xe43aea		4883ec08		SUBQ $__major_os_version__+2(SB), SP					
  vehicle_runtime.go:439	0xe43aee		4d8b6620		MOVQ 0x20(R14), R12							
  vehicle_runtime.go:439	0xe43af2		4d85e4			TESTQ R12, R12								
  vehicle_runtime.go:439	0xe43af5		751b			JNE 0xe43b12								
  vehicle_runtime.go:439	0xe43af7		488b4208		MOVQ 0x8(DX), AX							
  vehicle_runtime.go:439	0xe43afb		0f1f440000		NOPL 0(AX)(AX*1)							
  vehicle_runtime.go:439	0xe43b00		e81b5564ff		CALL sync.(*RWMutex).Unlock(SB)						
  vehicle_runtime.go:439	0xe43b05		4883c408		ADDQ $__major_os_version__+2(SB), SP					
  vehicle_runtime.go:439	0xe43b09		5d			POPQ BP									
  vehicle_runtime.go:439	0xe43b0a		c3			RET									
  vehicle_runtime.go:439	0xe43b0b		e8502963ff		CALL runtime.morestack.abi0(SB)						
  vehicle_runtime.go:439	0xe43b10		ebce			JMP CAS-Backend/pkg/diapdu.ensureVehicleInSchedulerPool.deferwrap1(SB)	
  vehicle_runtime.go:439	0xe43b12		4c8d6c2418		LEAQ 0x18(SP), R13							
  vehicle_runtime.go:439	0xe43b17		4d392c24		CMPQ 0(R12), R13							
  vehicle_runtime.go:439	0xe43b1b		75da			JNE 0xe43af7								
  vehicle_runtime.go:439	0xe43b1d		49892424		MOVQ SP, 0(R12)								
  vehicle_runtime.go:439	0xe43b21		ebd4			JMP 0xe43af7								
  :-1				0xe43b23		cc			INT $__subsystem__(SB)							
  :-1				0xe43b24		cc			INT $__subsystem__(SB)							
  :-1				0xe43b25		cc			INT $__subsystem__(SB)							
  :-1				0xe43b26		cc			INT $__subsystem__(SB)							
  :-1				0xe43b27		cc			INT $__subsystem__(SB)							
  :-1				0xe43b28		cc			INT $__subsystem__(SB)							
  :-1				0xe43b29		cc			INT $__subsystem__(SB)							
  :-1				0xe43b2a		cc			INT $__subsystem__(SB)							
  :-1				0xe43b2b		cc			INT $__subsystem__(SB)							
  :-1				0xe43b2c		cc			INT $__subsystem__(SB)							
  :-1				0xe43b2d		cc			INT $__subsystem__(SB)							
  :-1				0xe43b2e		cc			INT $__subsystem__(SB)							
  :-1				0xe43b2f		cc			INT $__subsystem__(SB)							
  :-1				0xe43b30		cc			INT $__subsystem__(SB)							
  :-1				0xe43b31		cc			INT $__subsystem__(SB)							
  :-1				0xe43b32		cc			INT $__subsystem__(SB)							
  :-1				0xe43b33		cc			INT $__subsystem__(SB)							
  :-1				0xe43b34		cc			INT $__subsystem__(SB)							
  :-1				0xe43b35		cc			INT $__subsystem__(SB)							
  :-1				0xe43b36		cc			INT $__subsystem__(SB)							
  :-1				0xe43b37		cc			INT $__subsystem__(SB)							
  :-1				0xe43b38		cc			INT $__subsystem__(SB)							
  :-1				0xe43b39		cc			INT $__subsystem__(SB)							
  :-1				0xe43b3a		cc			INT $__subsystem__(SB)							
  :-1				0xe43b3b		cc			INT $__subsystem__(SB)							
  :-1				0xe43b3c		cc			INT $__subsystem__(SB)							
  :-1				0xe43b3d		cc			INT $__subsystem__(SB)							
  :-1				0xe43b3e		cc			INT $__subsystem__(SB)							
  :-1				0xe43b3f		cc			INT $__subsystem__(SB)							

