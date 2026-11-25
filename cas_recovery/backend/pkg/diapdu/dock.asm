TEXT CAS-Backend/pkg/diapdu.resolveDockStartStation(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/dock.go
  dock.go:16		0xe25140		4c8d6424f8		LEAQ -0x8(SP), R12						
  dock.go:16		0xe25145		4d3b6610		CMPQ R12, 0x10(R14)						
  dock.go:16		0xe25149		0f86c7020000		JBE 0xe25416							
  dock.go:16		0xe2514f		55			PUSHQ BP							
  dock.go:16		0xe25150		4889e5			MOVQ SP, BP							
  dock.go:16		0xe25153		4883c480		ADDQ $-0x80, SP							
  dock.go:16		0xe25157		4889bc24a8000000	MOVQ DI, 0xa8(SP)						
  dock.go:18		0xe2515f		4889842490000000	MOVQ AX, 0x90(SP)						
  dock.go:18		0xe25167		48898c24a0000000	MOVQ CX, 0xa0(SP)						
  dock.go:18		0xe2516f		48899c2498000000	MOVQ BX, 0x98(SP)						
  dock.go:18		0xe25177		f20f114c2448		MOVSD_XMM X1, 0x48(SP)						
  dock.go:18		0xe2517d		f20f11442440		MOVSD_XMM X0, 0x40(SP)						
  dock.go:17		0xe25183		4889f8			MOVQ DI, AX							
  dock.go:17		0xe25186		4889f3			MOVQ SI, BX							
  dock.go:17		0xe25189		e832d86bff		CALL strings.TrimSpace(SB)					
  dock.go:17		0xe2518e		4889442478		MOVQ AX, 0x78(SP)						
  dock.go:17		0xe25193		48895c2430		MOVQ BX, 0x30(SP)						
  dock.go:18		0xe25198		488b8c2490000000	MOVQ 0x90(SP), CX						
  dock.go:18		0xe251a0		4885c9			TESTQ CX, CX							
  dock.go:18		0xe251a3		7420			JE 0xe251c5							
  dock.go:18		0xe251a5		4885db			TESTQ BX, BX							
  dock.go:18		0xe251a8		741b			JE 0xe251c5							
  dock.go:18		0xe251aa		488b11			MOVQ 0(CX), DX							
  dock.go:18		0xe251ad		4889542470		MOVQ DX, 0x70(SP)						
  dock.go:18		0xe251b2		488b7108		MOVQ 0x8(CX), SI						
  dock.go:18		0xe251b6		4889742428		MOVQ SI, 0x28(SP)						
  dock.go:18		0xe251bb		31ff			XORL DI, DI							
  dock.go:18		0xe251bd		0f1f00			NOPL 0(AX)							
  diaodu.go:338		0xe251c0		e9c9010000		JMP 0xe2538e							
  dock.go:21		0xe251c5		488b05a4f91800		MOVQ CAS-Backend/pkg/diapdu.globalVehicleRuntime(SB), AX	
  dock.go:21		0xe251cc		488b9c2498000000	MOVQ 0x98(SP), BX						
  dock.go:21		0xe251d4		488b8c24a0000000	MOVQ 0xa0(SP), CX						
  dock.go:21		0xe251dc		0f1f4000		NOPL 0(AX)							
  dock.go:21		0xe251e0		e85bd40100		CALL CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).Fresh(SB)	
  dock.go:21		0xe251e5		84db			TESTL BL, BL							
  dock.go:21		0xe251e7		750d			JNE 0xe251f6							
  dock.go:18		0xe251e9		488b842490000000	MOVQ 0x90(SP), AX						
  dock.go:18		0xe251f1		4885c0			TESTQ AX, AX							
  dock.go:21		0xe251f4		eb55			JMP 0xe2524b							
  dock.go:22		0xe251f6		488b4840		MOVQ 0x40(AX), CX						
  dock.go:22		0xe251fa		488b5848		MOVQ 0x48(AX), BX						
  dock.go:22		0xe251fe		4889c8			MOVQ CX, AX							
  dock.go:22		0xe25201		e8bad76bff		CALL strings.TrimSpace(SB)					
  dock.go:22		0xe25206		4885db			TESTQ BX, BX							
  dock.go:22		0xe25209		742f			JE 0xe2523a							
  dock.go:18		0xe2520b		488b942490000000	MOVQ 0x90(SP), DX						
  dock.go:18		0xe25213		4885d2			TESTQ DX, DX							
  dock.go:22		0xe25216		7430			JE 0xe25248							
  dock.go:22		0xe25218		48895c2418		MOVQ BX, 0x18(SP)						
  dock.go:22		0xe2521d		4889442460		MOVQ AX, 0x60(SP)						
  dock.go:22		0xe25222		488b32			MOVQ 0(DX), SI							
  dock.go:22		0xe25225		4889742468		MOVQ SI, 0x68(SP)						
  dock.go:22		0xe2522a		488b7a08		MOVQ 0x8(DX), DI						
  dock.go:22		0xe2522e		48897c2420		MOVQ DI, 0x20(SP)						
  dock.go:22		0xe25233		31c9			XORL CX, CX							
  diaodu.go:338		0xe25235		e9cf000000		JMP 0xe25309							
  dock.go:18		0xe2523a		488b842490000000	MOVQ 0x90(SP), AX						
  dock.go:18		0xe25242		4885c0			TESTQ AX, AX							
  dock.go:27		0xe25245		4889c2			MOVQ AX, DX							
  dock.go:27		0xe25248		4889d0			MOVQ DX, AX							
  dock.go:26		0xe2524b		7417			JE 0xe25264							
  dock.go:27		0xe2524d		488b08			MOVQ 0(AX), CX							
  dock.go:27		0xe25250		488b5008		MOVQ 0x8(AX), DX						
  diaodu.go:326		0xe25254		f20f104c2448		MOVSD_XMM 0x48(SP), X1						
  diaodu.go:326		0xe2525a		f20f10442440		MOVSD_XMM 0x40(SP), X0						
  diaodu.go:326		0xe25260		31db			XORL BX, BX							
  diaodu.go:326		0xe25262		eb13			JMP 0xe25277							
  dock.go:34		0xe25264		488b442478		MOVQ 0x78(SP), AX						
  dock.go:34		0xe25269		488b5c2430		MOVQ 0x30(SP), BX						
  dock.go:34		0xe2526e		4883ec80		SUBQ $-0x80, SP							
  dock.go:34		0xe25272		5d			POPQ BP								
  dock.go:34		0xe25273		c3			RET								
  diaodu.go:326		0xe25274		48ffc3			INCQ BX								
  diaodu.go:326		0xe25277		4839d3			CMPQ BX, DX							
  diaodu.go:326		0xe2527a		7d55			JGE 0xe252d1							
  diaodu.go:326		0xe2527c		488b34d9		MOVQ 0(CX)(BX*8), SI						
  diaodu.go:327		0xe25280		f20f105610		MOVSD_XMM 0x10(SI), X2						
  diaodu.go:327		0xe25285		f20f5cd0		SUBSD X0, X2							
  diaodu.go:328		0xe25289		f20f105e18		MOVSD_XMM 0x18(SI), X3						
  unsafe.go:35		0xe2528e		66480f7ed7		MOVQ X2, DI							
  abs.go:14		0xe25293		480fbaf73f		BTRQ $__major_os_version__+57(SB), DI				
  unsafe.go:41		0xe25298		66480f6ed7		MOVQ DI, X2							
  diaodu.go:328		0xe2529d		f20f5cd9		SUBSD X1, X3							
  diaodu.go:329		0xe252a1		f20f1025df250402	MOVSD_XMM $f64.4000000000000000(SB), X4				
  diaodu.go:329		0xe252a9		660f2ee2		UCOMISD X2, X4							
  diaodu.go:329		0xe252ad		7619			JBE 0xe252c8							
  unsafe.go:35		0xe252af		66480f7edf		MOVQ X3, DI							
  abs.go:14		0xe252b4		480fbaf73f		BTRQ $__major_os_version__+57(SB), DI				
  unsafe.go:41		0xe252b9		66480f6ed7		MOVQ DI, X2							
  diaodu.go:329		0xe252be		660f2ee2		UCOMISD X2, X4							
  diaodu.go:329		0xe252c2		400f97c7		SETA DI								
  diaodu.go:329		0xe252c6		eb02			JMP 0xe252ca							
  diaodu.go:329		0xe252c8		31ff			XORL DI, DI							
  diaodu.go:329		0xe252ca		4084ff			TESTL DI, DI							
  diaodu.go:329		0xe252cd		74a5			JE 0xe25274							
  diaodu.go:329		0xe252cf		eb02			JMP 0xe252d3							
  diaodu.go:329		0xe252d1		31f6			XORL SI, SI							
  dock.go:27		0xe252d3		4885f6			TESTQ SI, SI							
  dock.go:27		0xe252d6		7521			JNE 0xe252f9							
  dock.go:30		0xe252d8		e803120100		CALL CAS-Backend/pkg/diapdu.closestNodeTo(SB)			
  dock.go:30		0xe252dd		0f1f00			NOPL 0(AX)							
  dock.go:30		0xe252e0		4885c0			TESTQ AX, AX							
  dock.go:30		0xe252e3		0f847bffffff		JE 0xe25264							
  dock.go:31		0xe252e9		488b08			MOVQ 0(AX), CX							
  dock.go:31		0xe252ec		488b5808		MOVQ 0x8(AX), BX						
  dock.go:31		0xe252f0		4889c8			MOVQ CX, AX							
  dock.go:31		0xe252f3		4883ec80		SUBQ $-0x80, SP							
  dock.go:31		0xe252f7		5d			POPQ BP								
  dock.go:31		0xe252f8		c3			RET								
  dock.go:28		0xe252f9		488b06			MOVQ 0(SI), AX							
  dock.go:28		0xe252fc		488b5e08		MOVQ 0x8(SI), BX						
  dock.go:28		0xe25300		4883ec80		SUBQ $-0x80, SP							
  dock.go:28		0xe25304		5d			POPQ BP								
  dock.go:28		0xe25305		c3			RET								
  diaodu.go:338		0xe25306		48ffc1			INCQ CX								
  diaodu.go:338		0xe25309		4839f9			CMPQ CX, DI							
  diaodu.go:338		0xe2530c		7d68			JGE 0xe25376							
  diaodu.go:338		0xe2530e		4c8b04ce		MOVQ 0(SI)(CX*8), R8						
  diaodu.go:339		0xe25312		4d8b4808		MOVQ 0x8(R8), R9						
  diaodu.go:339		0xe25316		4c39cb			CMPQ BX, R9							
  diaodu.go:339		0xe25319		75eb			JNE 0xe25306							
  diaodu.go:338		0xe2531b		48894c2438		MOVQ CX, 0x38(SP)						
  diaodu.go:338		0xe25320		4c89442450		MOVQ R8, 0x50(SP)						
  diaodu.go:339		0xe25325		498b10			MOVQ 0(R8), DX							
  diaodu.go:339		0xe25328		4889c3			MOVQ AX, BX							
  diaodu.go:339		0xe2532b		4c89c9			MOVQ R9, CX							
  diaodu.go:339		0xe2532e		4889d0			MOVQ DX, AX							
  diaodu.go:339		0xe25331		e82adb5dff		CALL runtime.memequal(SB)					
  diaodu.go:339		0xe25336		84c0			TESTL AL, AL							
  diaodu.go:339		0xe25338		7523			JNE 0xe2535d							
  diaodu.go:339		0xe2533a		488b442460		MOVQ 0x60(SP), AX						
  diaodu.go:338		0xe2533f		488b4c2438		MOVQ 0x38(SP), CX						
  dock.go:18		0xe25344		488b942490000000	MOVQ 0x90(SP), DX						
  diaodu.go:339		0xe2534c		488b5c2418		MOVQ 0x18(SP), BX						
  diaodu.go:338		0xe25351		488b742468		MOVQ 0x68(SP), SI						
  diaodu.go:338		0xe25356		488b7c2420		MOVQ 0x20(SP), DI						
  diaodu.go:339		0xe2535b		eba9			JMP 0xe25306							
  dock.go:23		0xe2535d		488b442460		MOVQ 0x60(SP), AX						
  dock.go:18		0xe25362		488b942490000000	MOVQ 0x90(SP), DX						
  dock.go:23		0xe2536a		488b5c2418		MOVQ 0x18(SP), BX						
  dock.go:22		0xe2536f		488b4c2450		MOVQ 0x50(SP), CX						
  dock.go:22		0xe25374		eb02			JMP 0xe25378							
  dock.go:22		0xe25376		31c9			XORL CX, CX							
  dock.go:22		0xe25378		4885c9			TESTQ CX, CX							
  dock.go:22		0xe2537b		7508			JNE 0xe25385							
  dock.go:18		0xe2537d		4885d2			TESTQ DX, DX							
  dock.go:22		0xe25380		e9c3feffff		JMP 0xe25248							
  dock.go:23		0xe25385		4883ec80		SUBQ $-0x80, SP							
  dock.go:23		0xe25389		5d			POPQ BP								
  dock.go:23		0xe2538a		c3			RET								
  diaodu.go:338		0xe2538b		48ffc7			INCQ DI								
  diaodu.go:338		0xe2538e		4839f7			CMPQ DI, SI							
  diaodu.go:338		0xe25391		7d72			JGE 0xe25405							
  diaodu.go:338		0xe25393		4c8b04fa		MOVQ 0(DX)(DI*8), R8						
  diaodu.go:339		0xe25397		4d8b4808		MOVQ 0x8(R8), R9						
  diaodu.go:339		0xe2539b		0f1f440000		NOPL 0(AX)(AX*1)						
  diaodu.go:339		0xe253a0		4c39cb			CMPQ BX, R9							
  diaodu.go:339		0xe253a3		75e6			JNE 0xe2538b							
  diaodu.go:338		0xe253a5		48897c2438		MOVQ DI, 0x38(SP)						
  diaodu.go:338		0xe253aa		4c89442458		MOVQ R8, 0x58(SP)						
  diaodu.go:339		0xe253af		498b10			MOVQ 0(R8), DX							
  diaodu.go:339		0xe253b2		4889c3			MOVQ AX, BX							
  diaodu.go:339		0xe253b5		4c89c9			MOVQ R9, CX							
  diaodu.go:339		0xe253b8		4889d0			MOVQ DX, AX							
  diaodu.go:339		0xe253bb		0f1f440000		NOPL 0(AX)(AX*1)						
  diaodu.go:339		0xe253c0		e89bda5dff		CALL runtime.memequal(SB)					
  diaodu.go:339		0xe253c5		84c0			TESTL AL, AL							
  diaodu.go:339		0xe253c7		7523			JNE 0xe253ec							
  diaodu.go:339		0xe253c9		488b442478		MOVQ 0x78(SP), AX						
  dock.go:18		0xe253ce		488b8c2490000000	MOVQ 0x90(SP), CX						
  diaodu.go:338		0xe253d6		488b542470		MOVQ 0x70(SP), DX						
  diaodu.go:339		0xe253db		488b5c2430		MOVQ 0x30(SP), BX						
  diaodu.go:338		0xe253e0		488b742428		MOVQ 0x28(SP), SI						
  diaodu.go:338		0xe253e5		488b7c2438		MOVQ 0x38(SP), DI						
  diaodu.go:339		0xe253ea		eb9f			JMP 0xe2538b							
  dock.go:19		0xe253ec		488b442478		MOVQ 0x78(SP), AX						
  dock.go:18		0xe253f1		488b8c2490000000	MOVQ 0x90(SP), CX						
  dock.go:19		0xe253f9		488b5c2430		MOVQ 0x30(SP), BX						
  dock.go:18		0xe253fe		488b542458		MOVQ 0x58(SP), DX						
  dock.go:18		0xe25403		eb02			JMP 0xe25407							
  dock.go:18		0xe25405		31d2			XORL DX, DX							
  dock.go:18		0xe25407		4885d2			TESTQ DX, DX							
  dock.go:18		0xe2540a		0f84b5fdffff		JE 0xe251c5							
  dock.go:19		0xe25410		4883ec80		SUBQ $-0x80, SP							
  dock.go:19		0xe25414		5d			POPQ BP								
  dock.go:19		0xe25415		c3			RET								
  dock.go:16		0xe25416		4889442408		MOVQ AX, 0x8(SP)						
  dock.go:16		0xe2541b		48895c2410		MOVQ BX, 0x10(SP)						
  dock.go:16		0xe25420		48894c2418		MOVQ CX, 0x18(SP)						
  dock.go:16		0xe25425		48897c2420		MOVQ DI, 0x20(SP)						
  dock.go:16		0xe2542a		4889742428		MOVQ SI, 0x28(SP)						
  dock.go:16		0xe2542f		f20f11442430		MOVSD_XMM X0, 0x30(SP)						
  dock.go:16		0xe25435		f20f114c2438		MOVSD_XMM X1, 0x38(SP)						
  dock.go:16		0xe2543b		0f1f440000		NOPL 0(AX)(AX*1)						
  dock.go:16		0xe25440		e89b1065ff		CALL runtime.morestack_noctxt.abi0(SB)				
  dock.go:16		0xe25445		488b442408		MOVQ 0x8(SP), AX						
  dock.go:16		0xe2544a		488b5c2410		MOVQ 0x10(SP), BX						
  dock.go:16		0xe2544f		488b4c2418		MOVQ 0x18(SP), CX						
  dock.go:16		0xe25454		488b7c2420		MOVQ 0x20(SP), DI						
  dock.go:16		0xe25459		488b742428		MOVQ 0x28(SP), SI						
  dock.go:16		0xe2545e		f20f10442430		MOVSD_XMM 0x30(SP), X0						
  dock.go:16		0xe25464		f20f104c2438		MOVSD_XMM 0x38(SP), X1						
  dock.go:16		0xe2546a		e9d1fcffff		JMP CAS-Backend/pkg/diapdu.resolveDockStartStation(SB)		
  :-1			0xe2546f		cc			INT $__subsystem__(SB)						
  :-1			0xe25470		cc			INT $__subsystem__(SB)						
  :-1			0xe25471		cc			INT $__subsystem__(SB)						
  :-1			0xe25472		cc			INT $__subsystem__(SB)						
  :-1			0xe25473		cc			INT $__subsystem__(SB)						
  :-1			0xe25474		cc			INT $__subsystem__(SB)						
  :-1			0xe25475		cc			INT $__subsystem__(SB)						
  :-1			0xe25476		cc			INT $__subsystem__(SB)						
  :-1			0xe25477		cc			INT $__subsystem__(SB)						
  :-1			0xe25478		cc			INT $__subsystem__(SB)						
  :-1			0xe25479		cc			INT $__subsystem__(SB)						
  :-1			0xe2547a		cc			INT $__subsystem__(SB)						
  :-1			0xe2547b		cc			INT $__subsystem__(SB)						
  :-1			0xe2547c		cc			INT $__subsystem__(SB)						
  :-1			0xe2547d		cc			INT $__subsystem__(SB)						
  :-1			0xe2547e		cc			INT $__subsystem__(SB)						
  :-1			0xe2547f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.planDockPathNodes(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/dock.go
  dock.go:38		0xe25480		4c8d6424e0		LEAQ -0x20(SP), R12					
  dock.go:38		0xe25485		4d3b6610		CMPQ R12, 0x10(R14)					
  dock.go:38		0xe25489		0f86a0030000		JBE 0xe2582f						
  dock.go:38		0xe2548f		55			PUSHQ BP						
  dock.go:38		0xe25490		4889e5			MOVQ SP, BP						
  dock.go:38		0xe25493		4881ec98000000		SUBQ $.file+75(SB), SP					
  dock.go:38		0xe2549a		4889bc24c0000000	MOVQ DI, 0xc0(SP)					
  dock.go:41		0xe254a2		48898424a8000000	MOVQ AX, 0xa8(SP)					
  dock.go:41		0xe254aa		4c898424d0000000	MOVQ R8, 0xd0(SP)					
  dock.go:41		0xe254b2		4c898c24d8000000	MOVQ R9, 0xd8(SP)					
  dock.go:41		0xe254ba		48898c24b8000000	MOVQ CX, 0xb8(SP)					
  dock.go:41		0xe254c2		48899c24b0000000	MOVQ BX, 0xb0(SP)					
  dock.go:39		0xe254ca		4889f8			MOVQ DI, AX						
  dock.go:39		0xe254cd		4889f3			MOVQ SI, BX						
  dock.go:39		0xe254d0		e8ebd46bff		CALL strings.TrimSpace(SB)				
  dock.go:39		0xe254d5		48895c2458		MOVQ BX, 0x58(SP)					
  dock.go:39		0xe254da		4889842490000000	MOVQ AX, 0x90(SP)					
  dock.go:40		0xe254e2		488b8424d0000000	MOVQ 0xd0(SP), AX					
  dock.go:40		0xe254ea		488b9c24d8000000	MOVQ 0xd8(SP), BX					
  dock.go:40		0xe254f2		e8c9d46bff		CALL strings.TrimSpace(SB)				
  dock.go:41		0xe254f7		4c8b442458		MOVQ 0x58(SP), R8					
  dock.go:41		0xe254fc		0f1f4000		NOPL 0(AX)						
  dock.go:41		0xe25500		4d85c0			TESTQ R8, R8						
  dock.go:41		0xe25503		0f8422010000		JE 0xe2562b						
  dock.go:41		0xe25509		4885db			TESTQ BX, BX						
  dock.go:41		0xe2550c		0f8419010000		JE 0xe2562b						
  dock.go:40		0xe25512		4889842488000000	MOVQ AX, 0x88(SP)					
  dock.go:40		0xe2551a		48895c2450		MOVQ BX, 0x50(SP)					
  dock.go:40		0xe2551f		90			NOPL							
  dock.go:44		0xe25520		4c39c3			CMPQ BX, R8						
  dock.go:44		0xe25523		7535			JNE 0xe2555a						
  dock.go:44		0xe25525		4889c3			MOVQ AX, BX						
  dock.go:44		0xe25528		4c89c1			MOVQ R8, CX						
  dock.go:44		0xe2552b		488b842490000000	MOVQ 0x90(SP), AX					
  dock.go:44		0xe25533		e828d95dff		CALL runtime.memequal(SB)				
  dock.go:44		0xe25538		0f1f840000000000	NOPL 0(AX)(AX*1)					
  dock.go:44		0xe25540		84c0			TESTL AL, AL						
  dock.go:44		0xe25542		0f858c000000		JNE 0xe255d4						
  dock.go:48		0xe25548		488b842488000000	MOVQ 0x88(SP), AX					
  dock.go:48		0xe25550		488b5c2450		MOVQ 0x50(SP), BX					
  dock.go:48		0xe25555		4c8b442458		MOVQ 0x58(SP), R8					
  dock.go:47		0xe2555a		488b9424a8000000	MOVQ 0xa8(SP), DX					
  dock.go:47		0xe25562		4885d2			TESTQ DX, DX						
  dock.go:47		0xe25565		0f84d2000000		JE 0xe2563d						
  dock.go:48		0xe2556b		488b8c24b0000000	MOVQ 0xb0(SP), CX					
  dock.go:48		0xe25573		488bbc24b8000000	MOVQ 0xb8(SP), DI					
  dock.go:48		0xe2557b		488bb42490000000	MOVQ 0x90(SP), SI					
  dock.go:48		0xe25583		4989c1			MOVQ AX, R9						
  dock.go:48		0xe25586		4989da			MOVQ BX, R10						
  dock.go:48		0xe25589		4889d0			MOVQ DX, AX						
  dock.go:48		0xe2558c		31db			XORL BX, BX						
  dock.go:48		0xe2558e		e8cd0f0100		CALL CAS-Backend/pkg/diapdu.shortestPathOnGraph(SB)	
  dock.go:48		0xe25593		4084ff			TESTL DI, DI						
  dock.go:48		0xe25596		7414			JE 0xe255ac						
  dock.go:48		0xe25598		4883fb02		CMPQ BX, $__minor_os_version__+1(SB)			
  dock.go:48		0xe2559c		7c0e			JL 0xe255ac						
  dock.go:49		0xe2559e		bf01000000		MOVL $__minor_os_version__(SB), DI			
  dock.go:49		0xe255a3		4881c498000000		ADDQ $.file+75(SB), SP					
  dock.go:49		0xe255aa		5d			POPQ BP							
  dock.go:49		0xe255ab		c3			RET							
  dock.go:51		0xe255ac		488b9424a8000000	MOVQ 0xa8(SP), DX					
  dock.go:51		0xe255b4		488b32			MOVQ 0(DX), SI						
  dock.go:51		0xe255b7		4889b42480000000	MOVQ SI, 0x80(SP)					
  dock.go:51		0xe255bf		488b7a08		MOVQ 0x8(DX), DI					
  dock.go:51		0xe255c3		48897c2448		MOVQ DI, 0x48(SP)					
  diaodu.go:338		0xe255c8		4c8b442458		MOVQ 0x58(SP), R8					
  diaodu.go:338		0xe255cd		31c0			XORL AX, AX						
  diaodu.go:338		0xe255cf		e9de000000		JMP 0xe256b2						
  dock.go:45		0xe255d4		488d0525892200		LEAQ runtime.types+429824(SB), AX			
  dock.go:45		0xe255db		0f1f440000		NOPL 0(AX)(AX*1)					
  dock.go:45		0xe255e0		e8bbc15eff		CALL runtime.newobject(SB)				
  dock.go:45		0xe255e5		488b4c2458		MOVQ 0x58(SP), CX					
  dock.go:45		0xe255ea		48894808		MOVQ CX, 0x8(AX)					
  dock.go:45		0xe255ee		833d5b85730200		CMPL runtime.writeBarrier(SB), $0x0			
  dock.go:45		0xe255f5		750b			JNE 0xe25602						
  dock.go:45		0xe255f7		488b942490000000	MOVQ 0x90(SP), DX					
  dock.go:45		0xe255ff		90			NOPL							
  dock.go:45		0xe25600		eb10			JMP 0xe25612						
  dock.go:45		0xe25602		e8192e65ff		CALL runtime.gcWriteBarrier1(SB)			
  dock.go:45		0xe25607		488b942490000000	MOVQ 0x90(SP), DX					
  dock.go:45		0xe2560f		498913			MOVQ DX, 0(R11)						
  dock.go:45		0xe25612		488910			MOVQ DX, 0(AX)						
  dock.go:45		0xe25615		bb01000000		MOVL $__minor_os_version__(SB), BX			
  dock.go:45		0xe2561a		4889d9			MOVQ BX, CX						
  dock.go:45		0xe2561d		bf01000000		MOVL $__minor_os_version__(SB), DI			
  dock.go:45		0xe25622		4881c498000000		ADDQ $.file+75(SB), SP					
  dock.go:45		0xe25629		5d			POPQ BP							
  dock.go:45		0xe2562a		c3			RET							
  dock.go:42		0xe2562b		31c0			XORL AX, AX						
  dock.go:42		0xe2562d		31db			XORL BX, BX						
  dock.go:42		0xe2562f		4889d9			MOVQ BX, CX						
  dock.go:42		0xe25632		31ff			XORL DI, DI						
  dock.go:42		0xe25634		4881c498000000		ADDQ $.file+75(SB), SP					
  dock.go:42		0xe2563b		5d			POPQ BP							
  dock.go:42		0xe2563c		c3			RET							
  dock.go:55		0xe2563d		488d057c8f2200		LEAQ runtime.types+431552(SB), AX			
  dock.go:55		0xe25644		e857c15eff		CALL runtime.newobject(SB)				
  dock.go:55		0xe25649		488b4c2458		MOVQ 0x58(SP), CX					
  dock.go:55		0xe2564e		48894808		MOVQ CX, 0x8(AX)					
  dock.go:55		0xe25652		833df784730200		CMPL runtime.writeBarrier(SB), $0x0			
  dock.go:55		0xe25659		7512			JNE 0xe2566d						
  dock.go:55		0xe2565b		488b942490000000	MOVQ 0x90(SP), DX					
  dock.go:55		0xe25663		488bb42488000000	MOVQ 0x88(SP), SI					
  dock.go:55		0xe2566b		eb1c			JMP 0xe25689						
  dock.go:55		0xe2566d		e8ce2d65ff		CALL runtime.gcWriteBarrier2(SB)			
  dock.go:55		0xe25672		488b942490000000	MOVQ 0x90(SP), DX					
  dock.go:55		0xe2567a		498913			MOVQ DX, 0(R11)						
  dock.go:55		0xe2567d		488bb42488000000	MOVQ 0x88(SP), SI					
  dock.go:55		0xe25685		49897308		MOVQ SI, 0x8(R11)					
  dock.go:55		0xe25689		488910			MOVQ DX, 0(AX)						
  dock.go:55		0xe2568c		488b542450		MOVQ 0x50(SP), DX					
  dock.go:55		0xe25691		48895018		MOVQ DX, 0x18(AX)					
  dock.go:55		0xe25695		48897010		MOVQ SI, 0x10(AX)					
  dock.go:55		0xe25699		bb02000000		MOVL $__minor_os_version__+1(SB), BX			
  dock.go:55		0xe2569e		4889d9			MOVQ BX, CX						
  dock.go:55		0xe256a1		bf01000000		MOVL $__minor_os_version__(SB), DI			
  dock.go:55		0xe256a6		4881c498000000		ADDQ $.file+75(SB), SP					
  dock.go:55		0xe256ad		5d			POPQ BP							
  dock.go:55		0xe256ae		c3			RET							
  diaodu.go:338		0xe256af		48ffc0			INCQ AX							
  diaodu.go:338		0xe256b2		4839f8			CMPQ AX, DI						
  diaodu.go:338		0xe256b5		7d62			JGE 0xe25719						
  diaodu.go:338		0xe256b7		4c8b0cc6		MOVQ 0(SI)(AX*8), R9					
  diaodu.go:339		0xe256bb		498b4908		MOVQ 0x8(R9), CX					
  diaodu.go:339		0xe256bf		90			NOPL							
  diaodu.go:339		0xe256c0		4939c8			CMPQ R8, CX						
  diaodu.go:339		0xe256c3		75ea			JNE 0xe256af						
  diaodu.go:338		0xe256c5		4889442460		MOVQ AX, 0x60(SP)					
  diaodu.go:338		0xe256ca		4c894c2470		MOVQ R9, 0x70(SP)					
  diaodu.go:339		0xe256cf		498b01			MOVQ 0(R9), AX						
  diaodu.go:339		0xe256d2		488b9c2490000000	MOVQ 0x90(SP), BX					
  diaodu.go:339		0xe256da		e881d75dff		CALL runtime.memequal(SB)				
  diaodu.go:339		0xe256df		90			NOPL							
  diaodu.go:339		0xe256e0		84c0			TESTL AL, AL						
  diaodu.go:339		0xe256e2		7521			JNE 0xe25705						
  diaodu.go:338		0xe256e4		488b442460		MOVQ 0x60(SP), AX					
  dock.go:51		0xe256e9		488b9424a8000000	MOVQ 0xa8(SP), DX					
  diaodu.go:338		0xe256f1		488bb42480000000	MOVQ 0x80(SP), SI					
  diaodu.go:338		0xe256f9		488b7c2448		MOVQ 0x48(SP), DI					
  diaodu.go:339		0xe256fe		4c8b442458		MOVQ 0x58(SP), R8					
  diaodu.go:339		0xe25703		ebaa			JMP 0xe256af						
  dock.go:51		0xe25705		488b9424a8000000	MOVQ 0xa8(SP), DX					
  dock.go:55		0xe2570d		4c8b442458		MOVQ 0x58(SP), R8					
  dock.go:51		0xe25712		488b442470		MOVQ 0x70(SP), AX					
  dock.go:51		0xe25717		eb07			JMP 0xe25720						
  dock.go:51		0xe25719		31c0			XORL AX, AX						
  dock.go:51		0xe2571b		0f1f440000		NOPL 0(AX)(AX*1)					
  dock.go:51		0xe25720		4885c0			TESTQ AX, AX						
  dock.go:51		0xe25723		7420			JE 0xe25745						
  dock.go:51		0xe25725		488b32			MOVQ 0(DX), SI						
  dock.go:51		0xe25728		4889742478		MOVQ SI, 0x78(SP)					
  dock.go:51		0xe2572d		488b5208		MOVQ 0x8(DX), DX					
  dock.go:51		0xe25731		4889542440		MOVQ DX, 0x40(SP)					
  diaodu.go:338		0xe25736		488b7c2450		MOVQ 0x50(SP), DI					
  diaodu.go:338		0xe2573b		31c0			XORL AX, AX						
  diaodu.go:338		0xe2573d		0f1f00			NOPL 0(AX)						
  diaodu.go:338		0xe25740		e980000000		JMP 0xe257c5						
  diaodu.go:338		0xe25745		31c0			XORL AX, AX						
  dock.go:51		0xe25747		84c0			TESTL AL, AL						
  dock.go:51		0xe25749		0f84eefeffff		JE 0xe2563d						
  dock.go:52		0xe2574f		488d056a8e2200		LEAQ runtime.types+431552(SB), AX			
  dock.go:52		0xe25756		e845c05eff		CALL runtime.newobject(SB)				
  dock.go:52		0xe2575b		488b4c2458		MOVQ 0x58(SP), CX					
  dock.go:52		0xe25760		48894808		MOVQ CX, 0x8(AX)					
  dock.go:52		0xe25764		833de583730200		CMPL runtime.writeBarrier(SB), $0x0			
  dock.go:52		0xe2576b		7513			JNE 0xe25780						
  dock.go:52		0xe2576d		488b942490000000	MOVQ 0x90(SP), DX					
  dock.go:52		0xe25775		488bb42488000000	MOVQ 0x88(SP), SI					
  dock.go:52		0xe2577d		eb1d			JMP 0xe2579c						
  dock.go:52		0xe2577f		90			NOPL							
  dock.go:52		0xe25780		e8bb2c65ff		CALL runtime.gcWriteBarrier2(SB)			
  dock.go:52		0xe25785		488b942490000000	MOVQ 0x90(SP), DX					
  dock.go:52		0xe2578d		498913			MOVQ DX, 0(R11)						
  dock.go:52		0xe25790		488bb42488000000	MOVQ 0x88(SP), SI					
  dock.go:52		0xe25798		49897308		MOVQ SI, 0x8(R11)					
  dock.go:52		0xe2579c		488910			MOVQ DX, 0(AX)						
  dock.go:52		0xe2579f		488b542450		MOVQ 0x50(SP), DX					
  dock.go:52		0xe257a4		48895018		MOVQ DX, 0x18(AX)					
  dock.go:52		0xe257a8		48897010		MOVQ SI, 0x10(AX)					
  dock.go:52		0xe257ac		bb02000000		MOVL $__minor_os_version__+1(SB), BX			
  dock.go:52		0xe257b1		4889d9			MOVQ BX, CX						
  dock.go:52		0xe257b4		bf01000000		MOVL $__minor_os_version__(SB), DI			
  dock.go:52		0xe257b9		4881c498000000		ADDQ $.file+75(SB), SP					
  dock.go:52		0xe257c0		5d			POPQ BP							
  dock.go:52		0xe257c1		c3			RET							
  diaodu.go:338		0xe257c2		48ffc0			INCQ AX							
  diaodu.go:338		0xe257c5		4839d0			CMPQ AX, DX						
  diaodu.go:338		0xe257c8		7d58			JGE 0xe25822						
  diaodu.go:338		0xe257ca		4c8b0cc6		MOVQ 0(SI)(AX*8), R9					
  diaodu.go:339		0xe257ce		498b4908		MOVQ 0x8(R9), CX					
  diaodu.go:339		0xe257d2		4839cf			CMPQ DI, CX						
  diaodu.go:339		0xe257d5		75eb			JNE 0xe257c2						
  diaodu.go:338		0xe257d7		4889442460		MOVQ AX, 0x60(SP)					
  diaodu.go:338		0xe257dc		4c894c2468		MOVQ R9, 0x68(SP)					
  diaodu.go:339		0xe257e1		498b01			MOVQ 0(R9), AX						
  diaodu.go:339		0xe257e4		488b9c2488000000	MOVQ 0x88(SP), BX					
  diaodu.go:339		0xe257ec		e86fd65dff		CALL runtime.memequal(SB)				
  diaodu.go:339		0xe257f1		84c0			TESTL AL, AL						
  diaodu.go:339		0xe257f3		751b			JNE 0xe25810						
  diaodu.go:338		0xe257f5		488b442460		MOVQ 0x60(SP), AX					
  diaodu.go:338		0xe257fa		488b542440		MOVQ 0x40(SP), DX					
  diaodu.go:338		0xe257ff		488b742478		MOVQ 0x78(SP), SI					
  diaodu.go:339		0xe25804		488b7c2450		MOVQ 0x50(SP), DI					
  dock.go:55		0xe25809		4c8b442458		MOVQ 0x58(SP), R8					
  diaodu.go:339		0xe2580e		ebb2			JMP 0xe257c2						
  dock.go:55		0xe25810		488b7c2450		MOVQ 0x50(SP), DI					
  dock.go:55		0xe25815		4c8b442458		MOVQ 0x58(SP), R8					
  dock.go:51		0xe2581a		488b442468		MOVQ 0x68(SP), AX					
  dock.go:51		0xe2581f		90			NOPL							
  dock.go:51		0xe25820		eb02			JMP 0xe25824						
  dock.go:51		0xe25822		31c0			XORL AX, AX						
  dock.go:51		0xe25824		4885c0			TESTQ AX, AX						
  dock.go:51		0xe25827		0f95c0			SETNE AL						
  dock.go:51		0xe2582a		e918ffffff		JMP 0xe25747						
  dock.go:38		0xe2582f		4889442408		MOVQ AX, 0x8(SP)					
  dock.go:38		0xe25834		48895c2410		MOVQ BX, 0x10(SP)					
  dock.go:38		0xe25839		48894c2418		MOVQ CX, 0x18(SP)					
  dock.go:38		0xe2583e		48897c2420		MOVQ DI, 0x20(SP)					
  dock.go:38		0xe25843		4889742428		MOVQ SI, 0x28(SP)					
  dock.go:38		0xe25848		4c89442430		MOVQ R8, 0x30(SP)					
  dock.go:38		0xe2584d		4c894c2438		MOVQ R9, 0x38(SP)					
  dock.go:38		0xe25852		e8890c65ff		CALL runtime.morestack_noctxt.abi0(SB)			
  dock.go:38		0xe25857		488b442408		MOVQ 0x8(SP), AX					
  dock.go:38		0xe2585c		488b5c2410		MOVQ 0x10(SP), BX					
  dock.go:38		0xe25861		488b4c2418		MOVQ 0x18(SP), CX					
  dock.go:38		0xe25866		488b7c2420		MOVQ 0x20(SP), DI					
  dock.go:38		0xe2586b		488b742428		MOVQ 0x28(SP), SI					
  dock.go:38		0xe25870		4c8b442430		MOVQ 0x30(SP), R8					
  dock.go:38		0xe25875		4c8b4c2438		MOVQ 0x38(SP), R9					
  dock.go:38		0xe2587a		e901fcffff		JMP CAS-Backend/pkg/diapdu.planDockPathNodes(SB)	
  :-1			0xe2587f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.NearestAvailablePPDock(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/dock.go
  dock.go:59		0xe25880		4c8d6424f8		LEAQ -0x8(SP), R12					
  dock.go:59		0xe25885		4d3b6610		CMPQ R12, 0x10(R14)					
  dock.go:59		0xe25889		0f8659020000		JBE 0xe25ae8						
  dock.go:59		0xe2588f		55			PUSHQ BP						
  dock.go:59		0xe25890		4889e5			MOVQ SP, BP						
  dock.go:59		0xe25893		4883c480		ADDQ $-0x80, SP						
  dock.go:59		0xe25897		48899c2498000000	MOVQ BX, 0x98(SP)					
  dock.go:59		0xe2589f		4889b424c0000000	MOVQ SI, 0xc0(SP)					
  dock.go:60		0xe258a7		4885c0			TESTQ AX, AX						
  dock.go:60		0xe258aa		7477			JE 0xe25923						
  dock.go:60		0xe258ac		4883780800		CMPQ 0x8(AX), $0x0					
  dock.go:60		0xe258b1		7470			JE 0xe25923						
  dock.go:60		0xe258b3		4889842490000000	MOVQ AX, 0x90(SP)					
  dock.go:60		0xe258bb		4889bc24b8000000	MOVQ DI, 0xb8(SP)					
  dock.go:60		0xe258c3		4889b424c0000000	MOVQ SI, 0xc0(SP)					
  dock.go:60		0xe258cb		4c898424c8000000	MOVQ R8, 0xc8(SP)					
  dock.go:63		0xe258d3		4889df			MOVQ BX, DI						
  dock.go:63		0xe258d6		4889f3			MOVQ SI, BX						
  dock.go:63		0xe258d9		4889ce			MOVQ CX, SI						
  dock.go:63		0xe258dc		4c89c1			MOVQ R8, CX						
  dock.go:63		0xe258df		90			NOPL							
  dock.go:63		0xe258e0		e85bf8ffff		CALL CAS-Backend/pkg/diapdu.resolveDockStartStation(SB)	
  dock.go:64		0xe258e5		4885db			TESTQ BX, BX						
  dock.go:64		0xe258e8		7431			JE 0xe2591b						
  dock.go:63		0xe258ea		48895c2458		MOVQ BX, 0x58(SP)					
  dock.go:63		0xe258ef		4889442478		MOVQ AX, 0x78(SP)					
  dock.go:70		0xe258f4		488b942490000000	MOVQ 0x90(SP), DX					
  dock.go:70		0xe258fc		488b32			MOVQ 0(DX), SI						
  dock.go:70		0xe258ff		4889742470		MOVQ SI, 0x70(SP)					
  dock.go:70		0xe25904		4c8b4208		MOVQ 0x8(DX), R8					
  dock.go:70		0xe25908		4c89442450		MOVQ R8, 0x50(SP)					
  dock.go:70		0xe2590d		31c9			XORL CX, CX						
  dock.go:70		0xe2590f		f20f1005891f0402	MOVSD_XMM $f64.7fefffffffffffff(SB), X0			
  dock.go:70		0xe25917		31ff			XORL DI, DI						
  dock.go:70		0xe25919		eb13			JMP 0xe2592e						
  dock.go:65		0xe2591b		31c0			XORL AX, AX						
  dock.go:65		0xe2591d		4883ec80		SUBQ $-0x80, SP						
  dock.go:65		0xe25921		5d			POPQ BP							
  dock.go:65		0xe25922		c3			RET							
  dock.go:61		0xe25923		31c0			XORL AX, AX						
  dock.go:61		0xe25925		4883ec80		SUBQ $-0x80, SP						
  dock.go:61		0xe25929		5d			POPQ BP							
  dock.go:61		0xe2592a		c3			RET							
  dock.go:70		0xe2592b		48ffc1			INCQ CX							
  dock.go:70		0xe2592e		4c39c1			CMPQ CX, R8						
  dock.go:70		0xe25931		0f8da8010000		JGE 0xe25adf						
  dock.go:70		0xe25937		4c8b0cce		MOVQ 0(SI)(CX*8), R9					
  dock.go:70		0xe2593b		0f1f440000		NOPL 0(AX)(AX*1)					
  dock.go:71		0xe25940		4d85c9			TESTQ R9, R9						
  dock.go:71		0xe25943		742d			JE 0xe25972						
  dock.go:71		0xe25945		4d8b5108		MOVQ 0x8(R9), R10					
  dock.go:12		0xe25949		4d85d2			TESTQ R10, R10						
  dock.go:12		0xe2594c		741b			JE 0xe25969						
  strings.go:462	0xe2594e		90			NOPL							
  strings.go:17		0xe2594f		4983fa02		CMPQ R10, $__minor_os_version__+1(SB)			
  strings.go:17		0xe25953		7c0f			JL 0xe25964						
  dock.go:71		0xe25955		4d8b11			MOVQ 0(R9), R10						
  strings.go:17		0xe25958		6641813a5050		CMPW 0(R10), $__size_of_stack_commit__+16464(SB)	
  strings.go:17		0xe2595e		410f94c2		SETE R10						
  strings.go:17		0xe25962		eb08			JMP 0xe2596c						
  strings.go:17		0xe25964		4531d2			XORL R10, R10						
  strings.go:17		0xe25967		eb03			JMP 0xe2596c						
  strings.go:17		0xe25969		4531d2			XORL R10, R10						
  dock.go:71		0xe2596c		4183f201		XORL $__minor_os_version__(SB), R10			
  dock.go:71		0xe25970		eb06			JMP 0xe25978						
  dock.go:71		0xe25972		41ba01000000		MOVL $__minor_os_version__(SB), R10			
  dock.go:71		0xe25978		4584d2			TESTL R10, R10						
  dock.go:71		0xe2597b		75ae			JNE 0xe2592b						
  dock.go:70		0xe2597d		48894c2448		MOVQ CX, 0x48(SP)					
  dock.go:70		0xe25982		4c894c2460		MOVQ R9, 0x60(SP)					
  dock.go:81		0xe25987		f20f11442440		MOVSD_XMM X0, 0x40(SP)					
  dock.go:86		0xe2598d		48897c2468		MOVQ DI, 0x68(SP)					
  dock.go:74		0xe25992		498b09			MOVQ 0(R9), CX						
  dock.go:74		0xe25995		498b7908		MOVQ 0x8(R9), DI					
  dock.go:74		0xe25999		488d0580812500		LEAQ runtime.types+625440(SB), AX			
  dock.go:74		0xe259a0		488b9c24b8000000	MOVQ 0xb8(SP), BX					
  dock.go:74		0xe259a8		e8938264ff		CALL runtime.mapaccess2_faststr(SB)			
  dock.go:74		0xe259ad		84db			TESTL BL, BL						
  dock.go:74		0xe259af		7446			JE 0xe259f7						
  dock.go:74		0xe259b1		488b4808		MOVQ 0x8(AX), CX					
  dock.go:74		0xe259b5		4885c9			TESTQ CX, CX						
  dock.go:74		0xe259b8		7431			JE 0xe259eb						
  dock.go:74		0xe259ba		488bbc24c8000000	MOVQ 0xc8(SP), DI					
  dock.go:74		0xe259c2		4839cf			CMPQ DI, CX						
  dock.go:74		0xe259c5		7407			JE 0xe259ce						
  dock.go:74		0xe259c7		b801000000		MOVL $__minor_os_version__(SB), AX			
  dock.go:74		0xe259cc		eb33			JMP 0xe25a01						
  dock.go:74		0xe259ce		488b00			MOVQ 0(AX), AX						
  dock.go:74		0xe259d1		488b9c24c0000000	MOVQ 0xc0(SP), BX					
  dock.go:74		0xe259d9		e882d45dff		CALL runtime.memequal(SB)				
  dock.go:74		0xe259de		83f001			XORL $__minor_os_version__(SB), AX			
  dock.go:77		0xe259e1		488bbc24c8000000	MOVQ 0xc8(SP), DI					
  dock.go:74		0xe259e9		eb16			JMP 0xe25a01						
  dock.go:77		0xe259eb		488bbc24c8000000	MOVQ 0xc8(SP), DI					
  dock.go:77		0xe259f3		31c0			XORL AX, AX						
  dock.go:74		0xe259f5		eb0a			JMP 0xe25a01						
  dock.go:77		0xe259f7		488bbc24c8000000	MOVQ 0xc8(SP), DI					
  dock.go:77		0xe259ff		31c0			XORL AX, AX						
  dock.go:74		0xe25a01		84c0			TESTL AL, AL						
  dock.go:74		0xe25a03		7431			JE 0xe25a36						
  dock.go:77		0xe25a05		488b442478		MOVQ 0x78(SP), AX					
  dock.go:70		0xe25a0a		488b4c2448		MOVQ 0x48(SP), CX					
  dock.go:77		0xe25a0f		488b942490000000	MOVQ 0x90(SP), DX					
  dock.go:77		0xe25a17		488b5c2458		MOVQ 0x58(SP), BX					
  dock.go:70		0xe25a1c		488b742470		MOVQ 0x70(SP), SI					
  dock.go:70		0xe25a21		4c8b442450		MOVQ 0x50(SP), R8					
  dock.go:81		0xe25a26		f20f10442440		MOVSD_XMM 0x40(SP), X0					
  dock.go:86		0xe25a2c		488b7c2468		MOVQ 0x68(SP), DI					
  dock.go:75		0xe25a31		e9f5feffff		JMP 0xe2592b						
  dock.go:77		0xe25a36		488b542460		MOVQ 0x60(SP), DX					
  dock.go:77		0xe25a3b		4c8b0a			MOVQ 0(DX), R9						
  dock.go:77		0xe25a3e		4c8b5208		MOVQ 0x8(DX), R10					
  dock.go:77		0xe25a42		488b842490000000	MOVQ 0x90(SP), AX					
  dock.go:77		0xe25a4a		31db			XORL BX, BX						
  dock.go:77		0xe25a4c		488b8c24c0000000	MOVQ 0xc0(SP), CX					
  dock.go:77		0xe25a54		488b742478		MOVQ 0x78(SP), SI					
  dock.go:77		0xe25a59		4c8b442458		MOVQ 0x58(SP), R8					
  dock.go:77		0xe25a5e		6690			NOPW							
  dock.go:77		0xe25a60		e8fb0a0100		CALL CAS-Backend/pkg/diapdu.shortestPathOnGraph(SB)	
  dock.go:77		0xe25a65		4084ff			TESTL DI, DI						
  dock.go:78		0xe25a68		7444			JE 0xe25aae						
  dock.go:81		0xe25a6a		f20f104c2440		MOVSD_XMM 0x40(SP), X1					
  dock.go:81		0xe25a70		660f2ec8		UCOMISD X0, X1						
  dock.go:81		0xe25a74		7607			JBE 0xe25a7d						
  dock.go:86		0xe25a76		488b442460		MOVQ 0x60(SP), AX					
  dock.go:83		0xe25a7b		eb08			JMP 0xe25a85						
  dock.go:81		0xe25a7d		0f10c1			MOVUPS X1, X0						
  dock.go:86		0xe25a80		488b442468		MOVQ 0x68(SP), AX					
  dock.go:70		0xe25a85		488b4c2448		MOVQ 0x48(SP), CX					
  dock.go:77		0xe25a8a		488b942490000000	MOVQ 0x90(SP), DX					
  dock.go:77		0xe25a92		488b5c2458		MOVQ 0x58(SP), BX					
  dock.go:70		0xe25a97		488b742470		MOVQ 0x70(SP), SI					
  dock.go:70		0xe25a9c		4c8b442450		MOVQ 0x50(SP), R8					
  dock.go:86		0xe25aa1		4889c7			MOVQ AX, DI						
  dock.go:77		0xe25aa4		488b442478		MOVQ 0x78(SP), AX					
  dock.go:77		0xe25aa9		e97dfeffff		JMP 0xe2592b						
  dock.go:77		0xe25aae		488b442478		MOVQ 0x78(SP), AX					
  dock.go:70		0xe25ab3		488b4c2448		MOVQ 0x48(SP), CX					
  dock.go:77		0xe25ab8		488b942490000000	MOVQ 0x90(SP), DX					
  dock.go:77		0xe25ac0		488b5c2458		MOVQ 0x58(SP), BX					
  dock.go:70		0xe25ac5		488b742470		MOVQ 0x70(SP), SI					
  dock.go:70		0xe25aca		4c8b442450		MOVQ 0x50(SP), R8					
  dock.go:81		0xe25acf		f20f10442440		MOVSD_XMM 0x40(SP), X0					
  dock.go:86		0xe25ad5		488b7c2468		MOVQ 0x68(SP), DI					
  dock.go:79		0xe25ada		e94cfeffff		JMP 0xe2592b						
  dock.go:86		0xe25adf		4889f8			MOVQ DI, AX						
  dock.go:86		0xe25ae2		4883ec80		SUBQ $-0x80, SP						
  dock.go:86		0xe25ae6		5d			POPQ BP							
  dock.go:86		0xe25ae7		c3			RET							
  dock.go:59		0xe25ae8		4889442408		MOVQ AX, 0x8(SP)					
  dock.go:59		0xe25aed		48895c2410		MOVQ BX, 0x10(SP)					
  dock.go:59		0xe25af2		48894c2418		MOVQ CX, 0x18(SP)					
  dock.go:59		0xe25af7		f20f11442420		MOVSD_XMM X0, 0x20(SP)					
  dock.go:59		0xe25afd		f20f114c2428		MOVSD_XMM X1, 0x28(SP)					
  dock.go:59		0xe25b03		48897c2430		MOVQ DI, 0x30(SP)					
  dock.go:59		0xe25b08		4889742438		MOVQ SI, 0x38(SP)					
  dock.go:59		0xe25b0d		4c89442440		MOVQ R8, 0x40(SP)					
  dock.go:59		0xe25b12		e8c90965ff		CALL runtime.morestack_noctxt.abi0(SB)			
  dock.go:59		0xe25b17		488b442408		MOVQ 0x8(SP), AX					
  dock.go:59		0xe25b1c		488b5c2410		MOVQ 0x10(SP), BX					
  dock.go:59		0xe25b21		488b4c2418		MOVQ 0x18(SP), CX					
  dock.go:59		0xe25b26		f20f10442420		MOVSD_XMM 0x20(SP), X0					
  dock.go:59		0xe25b2c		f20f104c2428		MOVSD_XMM 0x28(SP), X1					
  dock.go:59		0xe25b32		488b7c2430		MOVQ 0x30(SP), DI					
  dock.go:59		0xe25b37		488b742438		MOVQ 0x38(SP), SI					
  dock.go:59		0xe25b3c		4c8b442440		MOVQ 0x40(SP), R8					
  dock.go:59		0xe25b41		e93afdffff		JMP CAS-Backend/pkg/diapdu.NearestAvailablePPDock(SB)	
  :-1			0xe25b46		cc			INT $__subsystem__(SB)					
  :-1			0xe25b47		cc			INT $__subsystem__(SB)					
  :-1			0xe25b48		cc			INT $__subsystem__(SB)					
  :-1			0xe25b49		cc			INT $__subsystem__(SB)					
  :-1			0xe25b4a		cc			INT $__subsystem__(SB)					
  :-1			0xe25b4b		cc			INT $__subsystem__(SB)					
  :-1			0xe25b4c		cc			INT $__subsystem__(SB)					
  :-1			0xe25b4d		cc			INT $__subsystem__(SB)					
  :-1			0xe25b4e		cc			INT $__subsystem__(SB)					
  :-1			0xe25b4f		cc			INT $__subsystem__(SB)					
  :-1			0xe25b50		cc			INT $__subsystem__(SB)					
  :-1			0xe25b51		cc			INT $__subsystem__(SB)					
  :-1			0xe25b52		cc			INT $__subsystem__(SB)					
  :-1			0xe25b53		cc			INT $__subsystem__(SB)					
  :-1			0xe25b54		cc			INT $__subsystem__(SB)					
  :-1			0xe25b55		cc			INT $__subsystem__(SB)					
  :-1			0xe25b56		cc			INT $__subsystem__(SB)					
  :-1			0xe25b57		cc			INT $__subsystem__(SB)					
  :-1			0xe25b58		cc			INT $__subsystem__(SB)					
  :-1			0xe25b59		cc			INT $__subsystem__(SB)					
  :-1			0xe25b5a		cc			INT $__subsystem__(SB)					
  :-1			0xe25b5b		cc			INT $__subsystem__(SB)					
  :-1			0xe25b5c		cc			INT $__subsystem__(SB)					
  :-1			0xe25b5d		cc			INT $__subsystem__(SB)					
  :-1			0xe25b5e		cc			INT $__subsystem__(SB)					
  :-1			0xe25b5f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).occupiedDockMap(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/dock.go
  dock.go:90		0xe25b60		4c8d6424d8		LEAQ -0x28(SP), R12						
  dock.go:90		0xe25b65		4d3b6610		CMPQ R12, 0x10(R14)						
  dock.go:90		0xe25b69		0f8646010000		JBE 0xe25cb5							
  dock.go:90		0xe25b6f		55			PUSHQ BP							
  dock.go:90		0xe25b70		4889e5			MOVQ SP, BP							
  dock.go:90		0xe25b73		4881eca0000000		SUBQ $.file+83(SB), SP						
  dock.go:92		0xe25b7a		48898424b0000000	MOVQ AX, 0xb0(SP)						
  dock.go:91		0xe25b82		e8595464ff		CALL runtime.makemap_small(SB)					
  dock.go:92		0xe25b87		488b8c24b0000000	MOVQ 0xb0(SP), CX						
  dock.go:92		0xe25b8f		4885c9			TESTQ CX, CX							
  dock.go:92		0xe25b92		7473			JE 0xe25c07							
  dock.go:91		0xe25b94		4889442430		MOVQ AX, 0x30(SP)						
  dock.go:95		0xe25b99		488d5158		LEAQ 0x58(CX), DX						
  dock.go:95		0xe25b9d		4889542438		MOVQ DX, 0x38(SP)						
  mutex.go:85		0xe25ba2		31c0			XORL AX, AX							
  mutex.go:85		0xe25ba4		be01000000		MOVL $__minor_os_version__(SB), SI				
  mutex.go:85		0xe25ba9		f00fb17158		LOCK CMPXCHGL SI, 0x58(CX)					
  mutex.go:85		0xe25bae		400f94c6		SETE SI								
  mutex.go:85		0xe25bb2		4084f6			TESTL SI, SI							
  mutex.go:85		0xe25bb5		7510			JNE 0xe25bc7							
  mutex.go:92		0xe25bb7		4889d0			MOVQ DX, AX							
  mutex.go:92		0xe25bba		e8611e66ff		CALL sync.(*Mutex).lockSlow(SB)					
  dock.go:96		0xe25bbf		488b8c24b0000000	MOVQ 0xb0(SP), CX						
  dock.go:96		0xe25bc7		488b5960		MOVQ 0x60(CX), BX						
  dock.go:96		0xe25bcb		488d7c2440		LEAQ 0x40(SP), DI						
  dock.go:96		0xe25bd0		488d7fe0		LEAQ -0x20(DI), DI						
  dock.go:96		0xe25bd4		660f1f840000000000	NOPW 0(AX)(AX*1)						
  dock.go:96		0xe25bdd		0f1f00			NOPL 0(AX)							
  dock.go:96		0xe25be0		48896c24f0		MOVQ BP, -0x10(SP)						
  dock.go:96		0xe25be5		488d6c24f0		LEAQ -0x10(SP), BP						
  dock.go:96		0xe25bea		e8fc2e65ff		CALL 0x478aeb							
  dock.go:96		0xe25bef		488b6d00		MOVQ 0(BP), BP							
  dock.go:96		0xe25bf3		488d05267f2500		LEAQ runtime.types+625440(SB), AX				
  dock.go:96		0xe25bfa		488d4c2440		LEAQ 0x40(SP), CX						
  dock.go:96		0xe25bff		90			NOPL								
  dock.go:96		0xe25c00		e81b6164ff		CALL runtime.mapiterinit(SB)					
  dock.go:96		0xe25c05		eb16			JMP 0xe25c1d							
  dock.go:93		0xe25c07		4881c4a0000000		ADDQ $.file+83(SB), SP						
  dock.go:93		0xe25c0e		5d			POPQ BP								
  dock.go:93		0xe25c0f		c3			RET								
  dock.go:97		0xe25c10		488908			MOVQ CX, 0(AX)							
  dock.go:96		0xe25c13		488d442440		LEAQ 0x40(SP), AX						
  dock.go:96		0xe25c18		e8236364ff		CALL runtime.mapiternext(SB)					
  dock.go:96		0xe25c1d		488b542440		MOVQ 0x40(SP), DX						
  dock.go:96		0xe25c22		4885d2			TESTQ DX, DX							
  dock.go:96		0xe25c25		745d			JE 0xe25c84							
  dock.go:96		0xe25c27		488b0a			MOVQ 0(DX), CX							
  dock.go:96		0xe25c2a		488b7a08		MOVQ 0x8(DX), DI						
  dock.go:96		0xe25c2e		488b542448		MOVQ 0x48(SP), DX						
  dock.go:96		0xe25c33		488b7208		MOVQ 0x8(DX), SI						
  dock.go:96		0xe25c37		4889742420		MOVQ SI, 0x20(SP)						
  dock.go:96		0xe25c3c		488b12			MOVQ 0(DX), DX							
  dock.go:96		0xe25c3f		4889542428		MOVQ DX, 0x28(SP)						
  dock.go:97		0xe25c44		488d05d57e2500		LEAQ runtime.types+625440(SB), AX				
  dock.go:97		0xe25c4b		488b5c2430		MOVQ 0x30(SP), BX						
  dock.go:97		0xe25c50		e8cb8364ff		CALL runtime.mapassign_faststr(SB)				
  dock.go:97		0xe25c55		488b542420		MOVQ 0x20(SP), DX						
  dock.go:97		0xe25c5a		48895008		MOVQ DX, 0x8(AX)						
  dock.go:97		0xe25c5e		833deb7e730200		CMPL runtime.writeBarrier(SB), $0x0				
  dock.go:97		0xe25c65		7507			JNE 0xe25c6e							
  dock.go:97		0xe25c67		488b4c2428		MOVQ 0x28(SP), CX						
  dock.go:97		0xe25c6c		eba2			JMP 0xe25c10							
  dock.go:97		0xe25c6e		e8cd2765ff		CALL runtime.gcWriteBarrier2(SB)				
  dock.go:97		0xe25c73		488b4c2428		MOVQ 0x28(SP), CX						
  dock.go:97		0xe25c78		49890b			MOVQ CX, 0(R11)							
  dock.go:97		0xe25c7b		488b10			MOVQ 0(AX), DX							
  dock.go:97		0xe25c7e		49895308		MOVQ DX, 0x8(R11)						
  dock.go:97		0xe25c82		eb8c			JMP 0xe25c10							
  dock.go:99		0xe25c84		90			NOPL								
  mutex.go:221		0xe25c85		bbffffffff		MOVL $-0x1, BX							
  mutex.go:221		0xe25c8a		488b8c24b0000000	MOVQ 0xb0(SP), CX						
  mutex.go:221		0xe25c92		f00fc15958		LOCK XADDL BX, 0x58(CX)						
  mutex.go:221		0xe25c97		ffcb			DECL BX								
  mutex.go:222		0xe25c99		85db			TESTL BX, BX							
  mutex.go:222		0xe25c9b		740a			JE 0xe25ca7							
  mutex.go:225		0xe25c9d		488b442438		MOVQ 0x38(SP), AX						
  mutex.go:225		0xe25ca2		e8592066ff		CALL sync.(*Mutex).unlockSlow(SB)				
  dock.go:100		0xe25ca7		488b442430		MOVQ 0x30(SP), AX						
  dock.go:100		0xe25cac		4881c4a0000000		ADDQ $.file+83(SB), SP						
  dock.go:100		0xe25cb3		5d			POPQ BP								
  dock.go:100		0xe25cb4		c3			RET								
  dock.go:90		0xe25cb5		4889442408		MOVQ AX, 0x8(SP)						
  dock.go:90		0xe25cba		e8210865ff		CALL runtime.morestack_noctxt.abi0(SB)				
  dock.go:90		0xe25cbf		488b442408		MOVQ 0x8(SP), AX						
  dock.go:90		0xe25cc4		e997feffff		JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).occupiedDockMap(SB)	
  :-1			0xe25cc9		cc			INT $__subsystem__(SB)						
  :-1			0xe25cca		cc			INT $__subsystem__(SB)						
  :-1			0xe25ccb		cc			INT $__subsystem__(SB)						
  :-1			0xe25ccc		cc			INT $__subsystem__(SB)						
  :-1			0xe25ccd		cc			INT $__subsystem__(SB)						
  :-1			0xe25cce		cc			INT $__subsystem__(SB)						
  :-1			0xe25ccf		cc			INT $__subsystem__(SB)						
  :-1			0xe25cd0		cc			INT $__subsystem__(SB)						
  :-1			0xe25cd1		cc			INT $__subsystem__(SB)						
  :-1			0xe25cd2		cc			INT $__subsystem__(SB)						
  :-1			0xe25cd3		cc			INT $__subsystem__(SB)						
  :-1			0xe25cd4		cc			INT $__subsystem__(SB)						
  :-1			0xe25cd5		cc			INT $__subsystem__(SB)						
  :-1			0xe25cd6		cc			INT $__subsystem__(SB)						
  :-1			0xe25cd7		cc			INT $__subsystem__(SB)						
  :-1			0xe25cd8		cc			INT $__subsystem__(SB)						
  :-1			0xe25cd9		cc			INT $__subsystem__(SB)						
  :-1			0xe25cda		cc			INT $__subsystem__(SB)						
  :-1			0xe25cdb		cc			INT $__subsystem__(SB)						
  :-1			0xe25cdc		cc			INT $__subsystem__(SB)						
  :-1			0xe25cdd		cc			INT $__subsystem__(SB)						
  :-1			0xe25cde		cc			INT $__subsystem__(SB)						
  :-1			0xe25cdf		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).dockOccupancyIncludingLivePositions(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/dock.go
  dock.go:104		0xe25ce0		4c8d6424b8		LEAQ -0x48(SP), R12									
  dock.go:104		0xe25ce5		4d3b6610		CMPQ R12, 0x10(R14)									
  dock.go:104		0xe25ce9		0f86d2020000		JBE 0xe25fc1										
  dock.go:104		0xe25cef		55			PUSHQ BP										
  dock.go:104		0xe25cf0		4889e5			MOVQ SP, BP										
  dock.go:104		0xe25cf3		4881ecc0000000		SUBQ $.file+115(SB), SP									
  dock.go:106		0xe25cfa		48898424d0000000	MOVQ AX, 0xd0(SP)									
  dock.go:105		0xe25d02		e859feffff		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).occupiedDockMap(SB)			
  dock.go:106		0xe25d07		488b8c24d0000000	MOVQ 0xd0(SP), CX									
  dock.go:106		0xe25d0f		4885c9			TESTQ CX, CX										
  dock.go:106		0xe25d12		7426			JE 0xe25d3a										
  dock.go:106		0xe25d14		488b09			MOVQ 0(CX), CX										
  dock.go:106		0xe25d17		4885c9			TESTQ CX, CX										
  dock.go:106		0xe25d1a		741e			JE 0xe25d3a										
  dock.go:105		0xe25d1c		4889442470		MOVQ AX, 0x70(SP)									
  dock.go:109		0xe25d21		4889c8			MOVQ CX, AX										
  dock.go:109		0xe25d24		e8d7e10100		CALL CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetAllForklifts(SB)			
  dock.go:109		0xe25d29		4889842488000000	MOVQ AX, 0x88(SP)									
  dock.go:109		0xe25d31		48895c2458		MOVQ BX, 0x58(SP)									
  dock.go:109		0xe25d36		31c9			XORL CX, CX										
  dock.go:109		0xe25d38		eb0c			JMP 0xe25d46										
  dock.go:107		0xe25d3a		4881c4c0000000		ADDQ $.file+115(SB), SP									
  dock.go:107		0xe25d41		5d			POPQ BP											
  dock.go:107		0xe25d42		c3			RET											
  dock.go:109		0xe25d43		48ffc1			INCQ CX											
  dock.go:109		0xe25d46		4839cb			CMPQ BX, CX										
  dock.go:109		0xe25d49		0f8e64020000		JLE 0xe25fb3										
  dock.go:109		0xe25d4f		488b14c8		MOVQ 0(AX)(CX*8), DX									
  dock.go:110		0xe25d53		4885d2			TESTQ DX, DX										
  dock.go:110		0xe25d56		74eb			JE 0xe25d43										
  dock.go:110		0xe25d58		488b7208		MOVQ 0x8(DX), SI									
  dock.go:110		0xe25d5c		0f1f4000		NOPL 0(AX)										
  dock.go:110		0xe25d60		4885f6			TESTQ SI, SI										
  dock.go:110		0xe25d63		74de			JE 0xe25d43										
  dock.go:109		0xe25d65		48894c2450		MOVQ CX, 0x50(SP)									
  dock.go:109		0xe25d6a		4889542478		MOVQ DX, 0x78(SP)									
  dock.go:110		0xe25d6f		488b02			MOVQ 0(DX), AX										
  dock.go:113		0xe25d72		488b7a40		MOVQ 0x40(DX), DI									
  dock.go:113		0xe25d76		488b4a38		MOVQ 0x38(DX), CX									
  dock.go:113		0xe25d7a		4889f3			MOVQ SI, BX										
  dock.go:113		0xe25d7d		0f1f00			NOPL 0(AX)										
  dock.go:113		0xe25d80		e85b670000		CALL CAS-Backend/pkg/diapdu.currentStationForVehicle(SB)				
  dock.go:114		0xe25d85		4885c9			TESTQ CX, CX										
  dock.go:114		0xe25d88		7416			JE 0xe25da0										
  dock.go:109		0xe25d8a		488b842488000000	MOVQ 0x88(SP), AX									
  dock.go:109		0xe25d92		488b4c2450		MOVQ 0x50(SP), CX									
  dock.go:109		0xe25d97		488b5c2458		MOVQ 0x58(SP), BX									
  dock.go:115		0xe25d9c		eba5			JMP 0xe25d43										
  dock.go:115		0xe25d9e		6690			NOPW											
  dock.go:117		0xe25da0		e81bcc6bff		CALL strings.TrimSpace(SB)								
  dock.go:12		0xe25da5		4885db			TESTQ BX, BX										
  dock.go:12		0xe25da8		7415			JE 0xe25dbf										
  strings.go:462	0xe25daa		90			NOPL											
  strings.go:17		0xe25dab		4883fb02		CMPQ BX, $__minor_os_version__+1(SB)							
  strings.go:17		0xe25daf		7c0a			JL 0xe25dbb										
  strings.go:17		0xe25db1		6681385050		CMPW 0(AX), $__size_of_stack_commit__+16464(SB)						
  strings.go:17		0xe25db6		0f94c2			SETE DL											
  strings.go:17		0xe25db9		eb06			JMP 0xe25dc1										
  strings.go:17		0xe25dbb		31d2			XORL DX, DX										
  strings.go:17		0xe25dbd		eb02			JMP 0xe25dc1										
  strings.go:17		0xe25dbf		31d2			XORL DX, DX										
  dock.go:118		0xe25dc1		84d2			TESTL DL, DL										
  dock.go:118		0xe25dc3		7517			JNE 0xe25ddc										
  dock.go:109		0xe25dc5		488b842488000000	MOVQ 0x88(SP), AX									
  dock.go:109		0xe25dcd		488b4c2450		MOVQ 0x50(SP), CX									
  dock.go:109		0xe25dd2		488b5c2458		MOVQ 0x58(SP), BX									
  dock.go:119		0xe25dd7		e967ffffff		JMP 0xe25d43										
  dock.go:117		0xe25ddc		48895c2438		MOVQ BX, 0x38(SP)									
  dock.go:117		0xe25de1		4889442460		MOVQ AX, 0x60(SP)									
  dock.go:121		0xe25de6		4889c1			MOVQ AX, CX										
  dock.go:121		0xe25de9		4889df			MOVQ BX, DI										
  dock.go:121		0xe25dec		488d052d7d2500		LEAQ runtime.types+625440(SB), AX							
  dock.go:121		0xe25df3		488b5c2470		MOVQ 0x70(SP), BX									
  dock.go:121		0xe25df8		e8437e64ff		CALL runtime.mapaccess2_faststr(SB)							
  dock.go:121		0xe25dfd		488b4808		MOVQ 0x8(AX), CX									
  dock.go:121		0xe25e01		488b00			MOVQ 0(AX), AX										
  dock.go:121		0xe25e04		84db			TESTL BL, BL										
  dock.go:121		0xe25e06		7448			JE 0xe25e50										
  dock.go:121		0xe25e08		4885c9			TESTQ CX, CX										
  dock.go:121		0xe25e0b		743a			JE 0xe25e47										
  dock.go:121		0xe25e0d		488b542478		MOVQ 0x78(SP), DX									
  dock.go:121		0xe25e12		48394a08		CMPQ 0x8(DX), CX									
  dock.go:121		0xe25e16		7407			JE 0xe25e1f										
  dock.go:121		0xe25e18		bb01000000		MOVL $__minor_os_version__(SB), BX							
  dock.go:121		0xe25e1d		eb38			JMP 0xe25e57										
  dock.go:121		0xe25e1f		4889442468		MOVQ AX, 0x68(SP)									
  dock.go:121		0xe25e24		48894c2440		MOVQ CX, 0x40(SP)									
  dock.go:121		0xe25e29		488b1a			MOVQ 0(DX), BX										
  dock.go:121		0xe25e2c		e82fd05dff		CALL runtime.memequal(SB)								
  dock.go:121		0xe25e31		83f001			XORL $__minor_os_version__(SB), AX							
  dock.go:122		0xe25e34		488b4c2440		MOVQ 0x40(SP), CX									
  dock.go:125		0xe25e39		488b542478		MOVQ 0x78(SP), DX									
  dock.go:121		0xe25e3e		89c3			MOVL AX, BX										
  dock.go:122		0xe25e40		488b442468		MOVQ 0x68(SP), AX									
  dock.go:121		0xe25e45		eb10			JMP 0xe25e57										
  dock.go:125		0xe25e47		488b542478		MOVQ 0x78(SP), DX									
  dock.go:125		0xe25e4c		31db			XORL BX, BX										
  dock.go:121		0xe25e4e		eb07			JMP 0xe25e57										
  dock.go:125		0xe25e50		488b542478		MOVQ 0x78(SP), DX									
  dock.go:125		0xe25e55		31db			XORL BX, BX										
  dock.go:121		0xe25e57		84db			TESTL BL, BL										
  dock.go:121		0xe25e59		0f84d2000000		JE 0xe25f31										
  dock.go:122		0xe25e5f		440f11bc2490000000	MOVUPS X15, 0x90(SP)									
  dock.go:122		0xe25e68		440f11bc24a0000000	MOVUPS X15, 0xa0(SP)									
  dock.go:122		0xe25e71		440f11bc24b0000000	MOVUPS X15, 0xb0(SP)									
  dock.go:122		0xe25e7a		4889cb			MOVQ CX, BX										
  dock.go:122		0xe25e7d		0f1f00			NOPL 0(AX)										
  dock.go:122		0xe25e80		e89b4264ff		CALL runtime.convTstring(SB)								
  dock.go:122		0xe25e85		488d0d94ca2100		LEAQ runtime.types+383264(SB), CX							
  dock.go:122		0xe25e8c		48898c2490000000	MOVQ CX, 0x90(SP)									
  dock.go:122		0xe25e94		4889842498000000	MOVQ AX, 0x98(SP)									
  dock.go:122		0xe25e9c		488b542478		MOVQ 0x78(SP), DX									
  dock.go:122		0xe25ea1		488b02			MOVQ 0(DX), AX										
  dock.go:122		0xe25ea4		488b5a08		MOVQ 0x8(DX), BX									
  dock.go:122		0xe25ea8		e8734264ff		CALL runtime.convTstring(SB)								
  dock.go:122		0xe25ead		488d0d6cca2100		LEAQ runtime.types+383264(SB), CX							
  dock.go:122		0xe25eb4		48898c24a0000000	MOVQ CX, 0xa0(SP)									
  dock.go:122		0xe25ebc		48898424a8000000	MOVQ AX, 0xa8(SP)									
  dock.go:122		0xe25ec4		488b442460		MOVQ 0x60(SP), AX									
  dock.go:122		0xe25ec9		488b5c2438		MOVQ 0x38(SP), BX									
  dock.go:122		0xe25ece		e84d4264ff		CALL runtime.convTstring(SB)								
  dock.go:122		0xe25ed3		488d0d46ca2100		LEAQ runtime.types+383264(SB), CX							
  dock.go:122		0xe25eda		48898c24b0000000	MOVQ CX, 0xb0(SP)									
  dock.go:122		0xe25ee2		48898424b8000000	MOVQ AX, 0xb8(SP)									
  print.go:233		0xe25eea		488b1d8fc16e02		MOVQ os.Stdout(SB), BX									
  print.go:233		0xe25ef1		488d05e85b0402		LEAQ go:itab.*os.File,io.Writer(SB), AX							
  print.go:233		0xe25ef8		bf4f000000		MOVL $.file+2(SB), DI									
  print.go:233		0xe25efd		488db42490000000	LEAQ 0x90(SP), SI									
  print.go:233		0xe25f05		41b803000000		MOVL $__subsystem__(SB), R8								
  print.go:233		0xe25f0b		4d89c1			MOVQ R8, R9										
  print.go:233		0xe25f0e		488d0d012a3800		LEAQ go:string.*+263182(SB), CX								
  print.go:233		0xe25f15		e806936fff		CALL fmt.Fprintf(SB)									
  dock.go:109		0xe25f1a		488b842488000000	MOVQ 0x88(SP), AX									
  dock.go:109		0xe25f22		488b4c2450		MOVQ 0x50(SP), CX									
  dock.go:109		0xe25f27		488b5c2458		MOVQ 0x58(SP), BX									
  dock.go:123		0xe25f2c		e912feffff		JMP 0xe25d43										
  dock.go:125		0xe25f31		488b7208		MOVQ 0x8(DX), SI									
  dock.go:125		0xe25f35		4889742448		MOVQ SI, 0x48(SP)									
  dock.go:125		0xe25f3a		488b12			MOVQ 0(DX), DX										
  dock.go:125		0xe25f3d		4889942480000000	MOVQ DX, 0x80(SP)									
  dock.go:125		0xe25f45		488d05d47b2500		LEAQ runtime.types+625440(SB), AX							
  dock.go:125		0xe25f4c		488b5c2470		MOVQ 0x70(SP), BX									
  dock.go:125		0xe25f51		488b4c2460		MOVQ 0x60(SP), CX									
  dock.go:125		0xe25f56		488b7c2438		MOVQ 0x38(SP), DI									
  dock.go:125		0xe25f5b		0f1f440000		NOPL 0(AX)(AX*1)									
  dock.go:125		0xe25f60		e8bb8064ff		CALL runtime.mapassign_faststr(SB)							
  dock.go:125		0xe25f65		488b542448		MOVQ 0x48(SP), DX									
  dock.go:125		0xe25f6a		48895008		MOVQ DX, 0x8(AX)									
  dock.go:125		0xe25f6e		833ddb7b730200		CMPL runtime.writeBarrier(SB), $0x0							
  dock.go:125		0xe25f75		750b			JNE 0xe25f82										
  dock.go:125		0xe25f77		488b942480000000	MOVQ 0x80(SP), DX									
  dock.go:125		0xe25f7f		90			NOPL											
  dock.go:125		0xe25f80		eb17			JMP 0xe25f99										
  dock.go:125		0xe25f82		e8b92465ff		CALL runtime.gcWriteBarrier2(SB)							
  dock.go:125		0xe25f87		488b942480000000	MOVQ 0x80(SP), DX									
  dock.go:125		0xe25f8f		498913			MOVQ DX, 0(R11)										
  dock.go:125		0xe25f92		488b30			MOVQ 0(AX), SI										
  dock.go:125		0xe25f95		49897308		MOVQ SI, 0x8(R11)									
  dock.go:125		0xe25f99		488910			MOVQ DX, 0(AX)										
  dock.go:109		0xe25f9c		488b842488000000	MOVQ 0x88(SP), AX									
  dock.go:109		0xe25fa4		488b4c2450		MOVQ 0x50(SP), CX									
  dock.go:109		0xe25fa9		488b5c2458		MOVQ 0x58(SP), BX									
  dock.go:125		0xe25fae		e990fdffff		JMP 0xe25d43										
  dock.go:127		0xe25fb3		488b442470		MOVQ 0x70(SP), AX									
  dock.go:127		0xe25fb8		4881c4c0000000		ADDQ $.file+115(SB), SP									
  dock.go:127		0xe25fbf		5d			POPQ BP											
  dock.go:127		0xe25fc0		c3			RET											
  dock.go:104		0xe25fc1		4889442408		MOVQ AX, 0x8(SP)									
  dock.go:104		0xe25fc6		e8150565ff		CALL runtime.morestack_noctxt.abi0(SB)							
  dock.go:104		0xe25fcb		488b442408		MOVQ 0x8(SP), AX									
  dock.go:104		0xe25fd0		e90bfdffff		JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).dockOccupancyIncludingLivePositions(SB)	
  :-1			0xe25fd5		cc			INT $__subsystem__(SB)									
  :-1			0xe25fd6		cc			INT $__subsystem__(SB)									
  :-1			0xe25fd7		cc			INT $__subsystem__(SB)									
  :-1			0xe25fd8		cc			INT $__subsystem__(SB)									
  :-1			0xe25fd9		cc			INT $__subsystem__(SB)									
  :-1			0xe25fda		cc			INT $__subsystem__(SB)									
  :-1			0xe25fdb		cc			INT $__subsystem__(SB)									
  :-1			0xe25fdc		cc			INT $__subsystem__(SB)									
  :-1			0xe25fdd		cc			INT $__subsystem__(SB)									
  :-1			0xe25fde		cc			INT $__subsystem__(SB)									
  :-1			0xe25fdf		cc			INT $__subsystem__(SB)									

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).releaseDockIfVehicleLeft(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/dock.go
  dock.go:131		0xe25fe0		4c8d6424b0		LEAQ -0x50(SP), R12										
  dock.go:131		0xe25fe5		4d3b6610		CMPQ R12, 0x10(R14)										
  dock.go:131		0xe25fe9		0f8664020000		JBE 0xe26253											
  dock.go:131		0xe25fef		55			PUSHQ BP											
  dock.go:131		0xe25ff0		4889e5			MOVQ SP, BP											
  dock.go:131		0xe25ff3		4881ecc8000000		SUBQ $.file+123(SB), SP										
  dock.go:131		0xe25ffa		48899c24e0000000	MOVQ BX, 0xe0(SP)										
  dock.go:131		0xe26002		4889bc24f0000000	MOVQ DI, 0xf0(SP)										
  dock.go:131		0xe2600a		66440fd6bc24c0000000	MOVQ X15, 0xc0(SP)										
  dock.go:131		0xe26014		c644242700		MOVB $0x0, 0x27(SP)										
  dock.go:131		0xe26019		0f1f8000000000		NOPL 0(AX)											
  dock.go:132		0xe26020		4885c0			TESTQ AX, AX											
  dock.go:132		0xe26023		0f8424010000		JE 0xe2614d											
  dock.go:132		0xe26029		4885c9			TESTQ CX, CX											
  dock.go:132		0xe2602c		0f841b010000		JE 0xe2614d											
  dock.go:132		0xe26032		48898424d8000000	MOVQ AX, 0xd8(SP)										
  dock.go:132		0xe2603a		48898c24e8000000	MOVQ CX, 0xe8(SP)										
  dock.go:132		0xe26042		48899c24e0000000	MOVQ BX, 0xe0(SP)										
  dock.go:135		0xe2604a		4889f8			MOVQ DI, AX											
  dock.go:135		0xe2604d		4889f3			MOVQ SI, BX											
  dock.go:135		0xe26050		e86bc96bff		CALL strings.TrimSpace(SB)									
  dock.go:135		0xe26055		4889442448		MOVQ AX, 0x48(SP)										
  dock.go:135		0xe2605a		48895c2430		MOVQ BX, 0x30(SP)										
  dock.go:136		0xe2605f		488b8c24d8000000	MOVQ 0xd8(SP), CX										
  dock.go:136		0xe26067		488d5158		LEAQ 0x58(CX), DX										
  mutex.go:85		0xe2606b		31c0			XORL AX, AX											
  mutex.go:85		0xe2606d		bf01000000		MOVL $__minor_os_version__(SB), DI								
  mutex.go:85		0xe26072		f00fb17958		LOCK CMPXCHGL DI, 0x58(CX)									
  mutex.go:85		0xe26077		400f94c7		SETE DI												
  mutex.go:85		0xe2607b		0f1f440000		NOPL 0(AX)(AX*1)										
  mutex.go:85		0xe26080		4084ff			TESTL DI, DI											
  mutex.go:85		0xe26083		751a			JNE 0xe2609f											
  dock.go:136		0xe26085		4889542438		MOVQ DX, 0x38(SP)										
  mutex.go:92		0xe2608a		4889d0			MOVQ DX, AX											
  mutex.go:92		0xe2608d		e88e1966ff		CALL sync.(*Mutex).lockSlow(SB)									
  dock.go:138		0xe26092		488b8c24d8000000	MOVQ 0xd8(SP), CX										
  dock.go:137		0xe2609a		488b542438		MOVQ 0x38(SP), DX										
  dock.go:137		0xe2609f		488d35fa010000		LEAQ CAS-Backend/pkg/diapdu.(*TaskScheduler).releaseDockIfVehicleLeft.deferwrap1(SB), SI	
  dock.go:137		0xe260a6		4889742450		MOVQ SI, 0x50(SP)										
  dock.go:137		0xe260ab		4889542458		MOVQ DX, 0x58(SP)										
  dock.go:137		0xe260b0		488d542450		LEAQ 0x50(SP), DX										
  dock.go:137		0xe260b5		48899424c0000000	MOVQ DX, 0xc0(SP)										
  dock.go:137		0xe260bd		c644242701		MOVB $__minor_os_version__(SB), 0x27(SP)							
  dock.go:138		0xe260c2		488b5968		MOVQ 0x68(CX), BX										
  dock.go:138		0xe260c6		488d05f3762500		LEAQ runtime.types+624576(SB), AX								
  dock.go:138		0xe260cd		488bbc24e8000000	MOVQ 0xe8(SP), DI										
  dock.go:138		0xe260d5		488b8c24e0000000	MOVQ 0xe0(SP), CX										
  dock.go:138		0xe260dd		0f1f00			NOPL 0(AX)											
  dock.go:138		0xe260e0		e85b7b64ff		CALL runtime.mapaccess2_faststr(SB)								
  dock.go:138		0xe260e5		84db			TESTL BL, BL											
  dock.go:139		0xe260e7		7429			JE 0xe26112											
  dock.go:138		0xe260e9		488b30			MOVQ 0(AX), SI											
  dock.go:139		0xe260ec		4885f6			TESTQ SI, SI											
  dock.go:139		0xe260ef		7421			JE 0xe26112											
  dock.go:139		0xe260f1		807e1000		CMPB 0x10(SI), $0x0										
  dock.go:139		0xe260f5		741b			JE 0xe26112											
  dock.go:140		0xe260f7		c644242700		MOVB $0x0, 0x27(SP)										
  dock.go:140		0xe260fc		488b9424c0000000	MOVQ 0xc0(SP), DX										
  dock.go:140		0xe26104		488b02			MOVQ 0(DX), AX											
  dock.go:140		0xe26107		ffd0			CALL AX												
  dock.go:140		0xe26109		4881c4c8000000		ADDQ $.file+123(SB), SP										
  dock.go:140		0xe26110		5d			POPQ BP												
  dock.go:140		0xe26111		c3			RET												
  dock.go:142		0xe26112		488b9424d8000000	MOVQ 0xd8(SP), DX										
  dock.go:142		0xe2611a		488b5a60		MOVQ 0x60(DX), BX										
  dock.go:142		0xe2611e		488d7c2460		LEAQ 0x60(SP), DI										
  dock.go:142		0xe26123		488d7fe0		LEAQ -0x20(DI), DI										
  dock.go:142		0xe26127		48896c24f0		MOVQ BP, -0x10(SP)										
  dock.go:142		0xe2612c		488d6c24f0		LEAQ -0x10(SP), BP										
  dock.go:142		0xe26131		e8b52965ff		CALL 0x478aeb											
  dock.go:142		0xe26136		488b6d00		MOVQ 0(BP), BP											
  dock.go:142		0xe2613a		488d05df792500		LEAQ runtime.types+625440(SB), AX								
  dock.go:142		0xe26141		488d4c2460		LEAQ 0x60(SP), CX										
  dock.go:142		0xe26146		e8d55b64ff		CALL runtime.mapiterinit(SB)									
  dock.go:142		0xe2614b		eb18			JMP 0xe26165											
  dock.go:133		0xe2614d		4881c4c8000000		ADDQ $.file+123(SB), SP										
  dock.go:133		0xe26154		5d			POPQ BP												
  dock.go:133		0xe26155		c3			RET												
  dock.go:142		0xe26156		488d442460		LEAQ 0x60(SP), AX										
  dock.go:142		0xe2615b		0f1f440000		NOPL 0(AX)(AX*1)										
  dock.go:142		0xe26160		e8db5d64ff		CALL runtime.mapiternext(SB)									
  dock.go:142		0xe26165		488b742460		MOVQ 0x60(SP), SI										
  dock.go:142		0xe2616a		4885f6			TESTQ SI, SI											
  dock.go:142		0xe2616d		0f84b7000000		JE 0xe2622a											
  dock.go:142		0xe26173		488b542468		MOVQ 0x68(SP), DX										
  dock.go:142		0xe26178		488b4a08		MOVQ 0x8(DX), CX										
  dock.go:142		0xe2617c		488b7e08		MOVQ 0x8(SI), DI										
  dock.go:142		0xe26180		48897c2428		MOVQ DI, 0x28(SP)										
  dock.go:142		0xe26185		488b06			MOVQ 0(SI), AX											
  dock.go:142		0xe26188		4889442440		MOVQ AX, 0x40(SP)										
  dock.go:143		0xe2618d		488bb424e8000000	MOVQ 0xe8(SP), SI										
  dock.go:143		0xe26195		4839ce			CMPQ SI, CX											
  dock.go:143		0xe26198		7404			JE 0xe2619e											
  dock.go:143		0xe2619a		31c9			XORL CX, CX											
  dock.go:143		0xe2619c		eb24			JMP 0xe261c2											
  dock.go:142		0xe2619e		488b02			MOVQ 0(DX), AX											
  dock.go:143		0xe261a1		488b9c24e0000000	MOVQ 0xe0(SP), BX										
  dock.go:143		0xe261a9		e8b2cc5dff		CALL runtime.memequal(SB)									
  dock.go:143		0xe261ae		488bb424e8000000	MOVQ 0xe8(SP), SI										
  dock.go:143		0xe261b6		488b7c2428		MOVQ 0x28(SP), DI										
  dock.go:143		0xe261bb		89c1			MOVL AX, CX											
  dock.go:143		0xe261bd		488b442440		MOVQ 0x40(SP), AX										
  dock.go:143		0xe261c2		84c9			TESTL CL, CL											
  dock.go:143		0xe261c4		7490			JE 0xe26156											
  dock.go:143		0xe261c6		488b542430		MOVQ 0x30(SP), DX										
  dock.go:143		0xe261cb		4839fa			CMPQ DX, DI											
  dock.go:143		0xe261ce		7407			JE 0xe261d7											
  dock.go:143		0xe261d0		b901000000		MOVL $__minor_os_version__(SB), CX								
  dock.go:143		0xe261d5		eb2a			JMP 0xe26201											
  dock.go:143		0xe261d7		488b5c2448		MOVQ 0x48(SP), BX										
  dock.go:143		0xe261dc		4889f9			MOVQ DI, CX											
  dock.go:143		0xe261df		90			NOPL												
  dock.go:143		0xe261e0		e87bcc5dff		CALL runtime.memequal(SB)									
  dock.go:143		0xe261e5		83f001			XORL $__minor_os_version__(SB), AX								
  dock.go:143		0xe261e8		488b542430		MOVQ 0x30(SP), DX										
  dock.go:143		0xe261ed		488bb424e8000000	MOVQ 0xe8(SP), SI										
  dock.go:144		0xe261f5		488b7c2428		MOVQ 0x28(SP), DI										
  dock.go:143		0xe261fa		89c1			MOVL AX, CX											
  dock.go:144		0xe261fc		488b442440		MOVQ 0x40(SP), AX										
  dock.go:143		0xe26201		84c9			TESTL CL, CL											
  dock.go:143		0xe26203		0f844dffffff		JE 0xe26156											
  dock.go:144		0xe26209		488b9424d8000000	MOVQ 0xd8(SP), DX										
  dock.go:144		0xe26211		488b5a60		MOVQ 0x60(DX), BX										
  dock.go:144		0xe26215		4889c1			MOVQ AX, CX											
  dock.go:144		0xe26218		488d0501792500		LEAQ runtime.types+625440(SB), AX								
  dock.go:144		0xe2621f		90			NOPL												
  dock.go:144		0xe26220		e8dbe45eff		CALL runtime.mapdelete_faststr(SB)								
  dock.go:144		0xe26225		e92cffffff		JMP 0xe26156											
  dock.go:147		0xe2622a		c644242700		MOVB $0x0, 0x27(SP)										
  dock.go:147		0xe2622f		488b9424c0000000	MOVQ 0xc0(SP), DX										
  dock.go:147		0xe26237		488b02			MOVQ 0(DX), AX											
  dock.go:147		0xe2623a		ffd0			CALL AX												
  dock.go:147		0xe2623c		4881c4c8000000		ADDQ $.file+123(SB), SP										
  dock.go:147		0xe26243		5d			POPQ BP												
  dock.go:147		0xe26244		c3			RET												
  dock.go:147		0xe26245		e8363961ff		CALL runtime.deferreturn(SB)									
  dock.go:147		0xe2624a		4881c4c8000000		ADDQ $.file+123(SB), SP										
  dock.go:147		0xe26251		5d			POPQ BP												
  dock.go:147		0xe26252		c3			RET												
  dock.go:131		0xe26253		4889442408		MOVQ AX, 0x8(SP)										
  dock.go:131		0xe26258		48895c2410		MOVQ BX, 0x10(SP)										
  dock.go:131		0xe2625d		48894c2418		MOVQ CX, 0x18(SP)										
  dock.go:131		0xe26262		48897c2420		MOVQ DI, 0x20(SP)										
  dock.go:131		0xe26267		4889742428		MOVQ SI, 0x28(SP)										
  dock.go:131		0xe2626c		e86f0265ff		CALL runtime.morestack_noctxt.abi0(SB)								
  dock.go:131		0xe26271		488b442408		MOVQ 0x8(SP), AX										
  dock.go:131		0xe26276		488b5c2410		MOVQ 0x10(SP), BX										
  dock.go:131		0xe2627b		488b4c2418		MOVQ 0x18(SP), CX										
  dock.go:131		0xe26280		488b7c2420		MOVQ 0x20(SP), DI										
  dock.go:131		0xe26285		488b742428		MOVQ 0x28(SP), SI										
  dock.go:131		0xe2628a		e951fdffff		JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).releaseDockIfVehicleLeft(SB)			
  :-1			0xe2628f		cc			INT $__subsystem__(SB)										
  :-1			0xe26290		cc			INT $__subsystem__(SB)										
  :-1			0xe26291		cc			INT $__subsystem__(SB)										
  :-1			0xe26292		cc			INT $__subsystem__(SB)										
  :-1			0xe26293		cc			INT $__subsystem__(SB)										
  :-1			0xe26294		cc			INT $__subsystem__(SB)										
  :-1			0xe26295		cc			INT $__subsystem__(SB)										
  :-1			0xe26296		cc			INT $__subsystem__(SB)										
  :-1			0xe26297		cc			INT $__subsystem__(SB)										
  :-1			0xe26298		cc			INT $__subsystem__(SB)										
  :-1			0xe26299		cc			INT $__subsystem__(SB)										
  :-1			0xe2629a		cc			INT $__subsystem__(SB)										
  :-1			0xe2629b		cc			INT $__subsystem__(SB)										
  :-1			0xe2629c		cc			INT $__subsystem__(SB)										
  :-1			0xe2629d		cc			INT $__subsystem__(SB)										
  :-1			0xe2629e		cc			INT $__subsystem__(SB)										
  :-1			0xe2629f		cc			INT $__subsystem__(SB)										

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).releaseDockIfVehicleLeft.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/dock.go
  dock.go:137		0xe262a0		493b6610		CMPQ SP, 0x10(R14)									
  dock.go:137		0xe262a4		762f			JBE 0xe262d5										
  dock.go:137		0xe262a6		55			PUSHQ BP										
  dock.go:137		0xe262a7		4889e5			MOVQ SP, BP										
  dock.go:137		0xe262aa		4883ec10		SUBQ $__major_os_version__+10(SB), SP							
  dock.go:137		0xe262ae		4d8b6620		MOVQ 0x20(R14), R12									
  dock.go:137		0xe262b2		4d85e4			TESTQ R12, R12										
  dock.go:137		0xe262b5		7525			JNE 0xe262dc										
  dock.go:137		0xe262b7		488b4208		MOVQ 0x8(DX), AX									
  mutex.go:221		0xe262bb		bbffffffff		MOVL $-0x1, BX										
  mutex.go:221		0xe262c0		f00fc118		LOCK XADDL BX, 0(AX)									
  mutex.go:221		0xe262c4		ffcb			DECL BX											
  mutex.go:222		0xe262c6		85db			TESTL BX, BX										
  mutex.go:222		0xe262c8		7405			JE 0xe262cf										
  mutex.go:225		0xe262ca		e8311a66ff		CALL sync.(*Mutex).unlockSlow(SB)							
  dock.go:137		0xe262cf		4883c410		ADDQ $__major_os_version__+10(SB), SP							
  dock.go:137		0xe262d3		5d			POPQ BP											
  dock.go:137		0xe262d4		c3			RET											
  dock.go:137		0xe262d5		e8860165ff		CALL runtime.morestack.abi0(SB)								
  dock.go:137		0xe262da		ebc4			JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).releaseDockIfVehicleLeft.deferwrap1(SB)	
  dock.go:137		0xe262dc		4c8d6c2420		LEAQ 0x20(SP), R13									
  dock.go:137		0xe262e1		4d392c24		CMPQ 0(R12), R13									
  dock.go:137		0xe262e5		75d0			JNE 0xe262b7										
  dock.go:137		0xe262e7		49892424		MOVQ SP, 0(R12)										
  dock.go:137		0xe262eb		ebca			JMP 0xe262b7										
  :-1			0xe262ed		cc			INT $__subsystem__(SB)									
  :-1			0xe262ee		cc			INT $__subsystem__(SB)									
  :-1			0xe262ef		cc			INT $__subsystem__(SB)									
  :-1			0xe262f0		cc			INT $__subsystem__(SB)									
  :-1			0xe262f1		cc			INT $__subsystem__(SB)									
  :-1			0xe262f2		cc			INT $__subsystem__(SB)									
  :-1			0xe262f3		cc			INT $__subsystem__(SB)									
  :-1			0xe262f4		cc			INT $__subsystem__(SB)									
  :-1			0xe262f5		cc			INT $__subsystem__(SB)									
  :-1			0xe262f6		cc			INT $__subsystem__(SB)									
  :-1			0xe262f7		cc			INT $__subsystem__(SB)									
  :-1			0xe262f8		cc			INT $__subsystem__(SB)									
  :-1			0xe262f9		cc			INT $__subsystem__(SB)									
  :-1			0xe262fa		cc			INT $__subsystem__(SB)									
  :-1			0xe262fb		cc			INT $__subsystem__(SB)									
  :-1			0xe262fc		cc			INT $__subsystem__(SB)									
  :-1			0xe262fd		cc			INT $__subsystem__(SB)									
  :-1			0xe262fe		cc			INT $__subsystem__(SB)									
  :-1			0xe262ff		cc			INT $__subsystem__(SB)									

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).syncVehicleDockFromRuntime(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/dock.go
  dock.go:150		0xe26300		493b6610		CMPQ SP, 0x10(R14)								
  dock.go:150		0xe26304		0f86a9000000		JBE 0xe263b3									
  dock.go:150		0xe2630a		55			PUSHQ BP									
  dock.go:150		0xe2630b		4889e5			MOVQ SP, BP									
  dock.go:150		0xe2630e		4883ec38		SUBQ $__major_os_version__+50(SB), SP						
  dock.go:150		0xe26312		48895c2450		MOVQ BX, 0x50(SP)								
  dock.go:150		0xe26317		48897c2460		MOVQ DI, 0x60(SP)								
  dock.go:150		0xe2631c		0f1f4000		NOPL 0(AX)									
  dock.go:151		0xe26320		4885c0			TESTQ AX, AX									
  dock.go:151		0xe26323		0f8484000000		JE 0xe263ad									
  dock.go:151		0xe26329		4889442448		MOVQ AX, 0x48(SP)								
  dock.go:151		0xe2632e		48894c2458		MOVQ CX, 0x58(SP)								
  dock.go:151		0xe26333		48895c2450		MOVQ BX, 0x50(SP)								
  dock.go:154		0xe26338		4889f8			MOVQ DI, AX									
  dock.go:154		0xe2633b		4889f3			MOVQ SI, BX									
  dock.go:154		0xe2633e		6690			NOPW										
  dock.go:154		0xe26340		e87bc66bff		CALL strings.TrimSpace(SB)							
  dock.go:154		0xe26345		4889442430		MOVQ AX, 0x30(SP)								
  dock.go:154		0xe2634a		48895c2428		MOVQ BX, 0x28(SP)								
  dock.go:155		0xe2634f		488b4c2458		MOVQ 0x58(SP), CX								
  dock.go:155		0xe26354		4889c7			MOVQ AX, DI									
  dock.go:155		0xe26357		4889de			MOVQ BX, SI									
  dock.go:155		0xe2635a		488b442448		MOVQ 0x48(SP), AX								
  dock.go:155		0xe2635f		488b5c2450		MOVQ 0x50(SP), BX								
  dock.go:155		0xe26364		e877fcffff		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).releaseDockIfVehicleLeft(SB)	
  dock.go:12		0xe26369		488b742428		MOVQ 0x28(SP), SI								
  dock.go:12		0xe2636e		4885f6			TESTQ SI, SI									
  dock.go:12		0xe26371		7434			JE 0xe263a7									
  strings.go:17		0xe26373		4883fe02		CMPQ SI, $__minor_os_version__+1(SB)						
  strings.go:17		0xe26377		7c0f			JL 0xe26388									
  strings.go:17		0xe26379		488b7c2430		MOVQ 0x30(SP), DI								
  strings.go:17		0xe2637e		66813f5050		CMPW 0(DI), $__size_of_stack_commit__+16464(SB)					
  strings.go:17		0xe26383		0f94c2			SETE DL										
  strings.go:17		0xe26386		eb07			JMP 0xe2638f									
  dock.go:157		0xe26388		488b7c2430		MOVQ 0x30(SP), DI								
  dock.go:157		0xe2638d		31d2			XORL DX, DX									
  strings.go:462	0xe2638f		84d2			TESTL DL, DL									
  dock.go:156		0xe26391		7414			JE 0xe263a7									
  dock.go:157		0xe26393		488b442448		MOVQ 0x48(SP), AX								
  dock.go:157		0xe26398		488b5c2450		MOVQ 0x50(SP), BX								
  dock.go:157		0xe2639d		488b4c2458		MOVQ 0x58(SP), CX								
  dock.go:157		0xe263a2		e8190b0000		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).claimDockIfParked(SB)		
  dock.go:159		0xe263a7		4883c438		ADDQ $__major_os_version__+50(SB), SP						
  dock.go:159		0xe263ab		5d			POPQ BP										
  dock.go:159		0xe263ac		c3			RET										
  dock.go:152		0xe263ad		4883c438		ADDQ $__major_os_version__+50(SB), SP						
  dock.go:152		0xe263b1		5d			POPQ BP										
  dock.go:152		0xe263b2		c3			RET										
  dock.go:150		0xe263b3		4889442408		MOVQ AX, 0x8(SP)								
  dock.go:150		0xe263b8		48895c2410		MOVQ BX, 0x10(SP)								
  dock.go:150		0xe263bd		48894c2418		MOVQ CX, 0x18(SP)								
  dock.go:150		0xe263c2		48897c2420		MOVQ DI, 0x20(SP)								
  dock.go:150		0xe263c7		4889742428		MOVQ SI, 0x28(SP)								
  dock.go:150		0xe263cc		e80f0165ff		CALL runtime.morestack_noctxt.abi0(SB)						
  dock.go:150		0xe263d1		488b442408		MOVQ 0x8(SP), AX								
  dock.go:150		0xe263d6		488b5c2410		MOVQ 0x10(SP), BX								
  dock.go:150		0xe263db		488b4c2418		MOVQ 0x18(SP), CX								
  dock.go:150		0xe263e0		488b7c2420		MOVQ 0x20(SP), DI								
  dock.go:150		0xe263e5		488b742428		MOVQ 0x28(SP), SI								
  dock.go:150		0xe263ea		e911ffffff		JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).syncVehicleDockFromRuntime(SB)	
  :-1			0xe263ef		cc			INT $__subsystem__(SB)								
  :-1			0xe263f0		cc			INT $__subsystem__(SB)								
  :-1			0xe263f1		cc			INT $__subsystem__(SB)								
  :-1			0xe263f2		cc			INT $__subsystem__(SB)								
  :-1			0xe263f3		cc			INT $__subsystem__(SB)								
  :-1			0xe263f4		cc			INT $__subsystem__(SB)								
  :-1			0xe263f5		cc			INT $__subsystem__(SB)								
  :-1			0xe263f6		cc			INT $__subsystem__(SB)								
  :-1			0xe263f7		cc			INT $__subsystem__(SB)								
  :-1			0xe263f8		cc			INT $__subsystem__(SB)								
  :-1			0xe263f9		cc			INT $__subsystem__(SB)								
  :-1			0xe263fa		cc			INT $__subsystem__(SB)								
  :-1			0xe263fb		cc			INT $__subsystem__(SB)								
  :-1			0xe263fc		cc			INT $__subsystem__(SB)								
  :-1			0xe263fd		cc			INT $__subsystem__(SB)								
  :-1			0xe263fe		cc			INT $__subsystem__(SB)								
  :-1			0xe263ff		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).isVehicleNavigatingToDock(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/dock.go
  dock.go:161		0xe26400		493b6610		CMPQ SP, 0x10(R14)										
  dock.go:161		0xe26404		0f86ea000000		JBE 0xe264f4											
  dock.go:161		0xe2640a		55			PUSHQ BP											
  dock.go:161		0xe2640b		4889e5			MOVQ SP, BP											
  dock.go:161		0xe2640e		4883ec50		SUBQ $.file+3(SB), SP										
  dock.go:161		0xe26412		48895c2468		MOVQ BX, 0x68(SP)										
  dock.go:161		0xe26417		66440fd67c2448		MOVQ X15, 0x48(SP)										
  dock.go:161		0xe2641e		c644242700		MOVB $0x0, 0x27(SP)										
  dock.go:161		0xe26423		c644242600		MOVB $0x0, 0x26(SP)										
  dock.go:162		0xe26428		488d5058		LEAQ 0x58(AX), DX										
  mutex.go:85		0xe2642c		4889c6			MOVQ AX, SI											
  dock.go:162		0xe2642f		31c0			XORL AX, AX											
  dock.go:162		0xe26431		41b801000000		MOVL $__minor_os_version__(SB), R8								
  dock.go:162		0xe26437		f0440fb14658		LOCK CMPXCHGL R8, 0x58(SI)									
  dock.go:162		0xe2643d		410f94c0		SETE R8												
  mutex.go:85		0xe26441		4584c0			TESTL R8, R8											
  mutex.go:85		0xe26444		7533			JNE 0xe26479											
  mutex.go:85		0xe26446		4889742430		MOVQ SI, 0x30(SP)										
  dock.go:162		0xe2644b		4889542428		MOVQ DX, 0x28(SP)										
  mutex.go:85		0xe26450		48894c2470		MOVQ CX, 0x70(SP)										
  mutex.go:85		0xe26455		48895c2468		MOVQ BX, 0x68(SP)										
  mutex.go:92		0xe2645a		4889d0			MOVQ DX, AX											
  mutex.go:92		0xe2645d		0f1f00			NOPL 0(AX)											
  mutex.go:92		0xe26460		e8bb1566ff		CALL sync.(*Mutex).lockSlow(SB)									
  dock.go:164		0xe26465		488b4c2470		MOVQ 0x70(SP), CX										
  dock.go:163		0xe2646a		488b542428		MOVQ 0x28(SP), DX										
  dock.go:164		0xe2646f		488b5c2468		MOVQ 0x68(SP), BX										
  dock.go:164		0xe26474		488b742430		MOVQ 0x30(SP), SI										
  dock.go:163		0xe26479		4c8d05a0000000		LEAQ CAS-Backend/pkg/diapdu.(*TaskScheduler).isVehicleNavigatingToDock.deferwrap1(SB), R8	
  dock.go:163		0xe26480		4c89442438		MOVQ R8, 0x38(SP)										
  dock.go:163		0xe26485		4889542440		MOVQ DX, 0x40(SP)										
  dock.go:163		0xe2648a		488d542438		LEAQ 0x38(SP), DX										
  dock.go:163		0xe2648f		4889542448		MOVQ DX, 0x48(SP)										
  dock.go:163		0xe26494		c644242701		MOVB $__minor_os_version__(SB), 0x27(SP)							
  dock.go:164		0xe26499		488b5668		MOVQ 0x68(SI), DX										
  dock.go:164		0xe2649d		488d051c732500		LEAQ runtime.types+624576(SB), AX								
  dock.go:164		0xe264a4		4889cf			MOVQ CX, DI											
  dock.go:164		0xe264a7		4889d9			MOVQ BX, CX											
  dock.go:164		0xe264aa		4889d3			MOVQ DX, BX											
  dock.go:164		0xe264ad		e88e7764ff		CALL runtime.mapaccess2_faststr(SB)								
  dock.go:164		0xe264b2		84db			TESTL BL, BL											
  dock.go:165		0xe264b4		740e			JE 0xe264c4											
  dock.go:164		0xe264b6		488b00			MOVQ 0(AX), AX											
  dock.go:165		0xe264b9		4885c0			TESTQ AX, AX											
  dock.go:165		0xe264bc		7406			JE 0xe264c4											
  dock.go:165		0xe264be		0fb64010		MOVZX 0x10(AX), AX										
  dock.go:165		0xe264c2		eb02			JMP 0xe264c6											
  dock.go:165		0xe264c4		31c0			XORL AX, AX											
  dock.go:165		0xe264c6		88442426		MOVB AL, 0x26(SP)										
  dock.go:165		0xe264ca		c644242700		MOVB $0x0, 0x27(SP)										
  dock.go:165		0xe264cf		488b542448		MOVQ 0x48(SP), DX										
  dock.go:165		0xe264d4		488b02			MOVQ 0(DX), AX											
  dock.go:165		0xe264d7		ffd0			CALL AX												
  dock.go:165		0xe264d9		0fb6442426		MOVZX 0x26(SP), AX										
  dock.go:165		0xe264de		4883c450		ADDQ $.file+3(SB), SP										
  dock.go:165		0xe264e2		5d			POPQ BP												
  dock.go:165		0xe264e3		c3			RET												
  dock.go:165		0xe264e4		e8973661ff		CALL runtime.deferreturn(SB)									
  dock.go:165		0xe264e9		0fb6442426		MOVZX 0x26(SP), AX										
  dock.go:165		0xe264ee		4883c450		ADDQ $.file+3(SB), SP										
  dock.go:165		0xe264f2		5d			POPQ BP												
  dock.go:165		0xe264f3		c3			RET												
  dock.go:161		0xe264f4		4889442408		MOVQ AX, 0x8(SP)										
  dock.go:161		0xe264f9		48895c2410		MOVQ BX, 0x10(SP)										
  dock.go:161		0xe264fe		48894c2418		MOVQ CX, 0x18(SP)										
  dock.go:161		0xe26503		e8d8ff64ff		CALL runtime.morestack_noctxt.abi0(SB)								
  dock.go:161		0xe26508		488b442408		MOVQ 0x8(SP), AX										
  dock.go:161		0xe2650d		488b5c2410		MOVQ 0x10(SP), BX										
  dock.go:161		0xe26512		488b4c2418		MOVQ 0x18(SP), CX										
  dock.go:161		0xe26517		e9e4feffff		JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).isVehicleNavigatingToDock(SB)			
  :-1			0xe2651c		cc			INT $__subsystem__(SB)										
  :-1			0xe2651d		cc			INT $__subsystem__(SB)										
  :-1			0xe2651e		cc			INT $__subsystem__(SB)										
  :-1			0xe2651f		cc			INT $__subsystem__(SB)										

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).isVehicleNavigatingToDock.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/dock.go
  dock.go:163		0xe26520		493b6610		CMPQ SP, 0x10(R14)									
  dock.go:163		0xe26524		762f			JBE 0xe26555										
  dock.go:163		0xe26526		55			PUSHQ BP										
  dock.go:163		0xe26527		4889e5			MOVQ SP, BP										
  dock.go:163		0xe2652a		4883ec10		SUBQ $__major_os_version__+10(SB), SP							
  dock.go:163		0xe2652e		4d8b6620		MOVQ 0x20(R14), R12									
  dock.go:163		0xe26532		4d85e4			TESTQ R12, R12										
  dock.go:163		0xe26535		7525			JNE 0xe2655c										
  dock.go:163		0xe26537		488b4208		MOVQ 0x8(DX), AX									
  mutex.go:221		0xe2653b		bbffffffff		MOVL $-0x1, BX										
  mutex.go:221		0xe26540		f00fc118		LOCK XADDL BX, 0(AX)									
  mutex.go:221		0xe26544		ffcb			DECL BX											
  mutex.go:222		0xe26546		85db			TESTL BX, BX										
  mutex.go:222		0xe26548		7405			JE 0xe2654f										
  mutex.go:225		0xe2654a		e8b11766ff		CALL sync.(*Mutex).unlockSlow(SB)							
  dock.go:163		0xe2654f		4883c410		ADDQ $__major_os_version__+10(SB), SP							
  dock.go:163		0xe26553		5d			POPQ BP											
  dock.go:163		0xe26554		c3			RET											
  dock.go:163		0xe26555		e806ff64ff		CALL runtime.morestack.abi0(SB)								
  dock.go:163		0xe2655a		ebc4			JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).isVehicleNavigatingToDock.deferwrap1(SB)	
  dock.go:163		0xe2655c		4c8d6c2420		LEAQ 0x20(SP), R13									
  dock.go:163		0xe26561		4d392c24		CMPQ 0(R12), R13									
  dock.go:163		0xe26565		75d0			JNE 0xe26537										
  dock.go:163		0xe26567		49892424		MOVQ SP, 0(R12)										
  dock.go:163		0xe2656b		ebca			JMP 0xe26537										
  :-1			0xe2656d		cc			INT $__subsystem__(SB)									
  :-1			0xe2656e		cc			INT $__subsystem__(SB)									
  :-1			0xe2656f		cc			INT $__subsystem__(SB)									
  :-1			0xe26570		cc			INT $__subsystem__(SB)									
  :-1			0xe26571		cc			INT $__subsystem__(SB)									
  :-1			0xe26572		cc			INT $__subsystem__(SB)									
  :-1			0xe26573		cc			INT $__subsystem__(SB)									
  :-1			0xe26574		cc			INT $__subsystem__(SB)									
  :-1			0xe26575		cc			INT $__subsystem__(SB)									
  :-1			0xe26576		cc			INT $__subsystem__(SB)									
  :-1			0xe26577		cc			INT $__subsystem__(SB)									
  :-1			0xe26578		cc			INT $__subsystem__(SB)									
  :-1			0xe26579		cc			INT $__subsystem__(SB)									
  :-1			0xe2657a		cc			INT $__subsystem__(SB)									
  :-1			0xe2657b		cc			INT $__subsystem__(SB)									
  :-1			0xe2657c		cc			INT $__subsystem__(SB)									
  :-1			0xe2657d		cc			INT $__subsystem__(SB)									
  :-1			0xe2657e		cc			INT $__subsystem__(SB)									
  :-1			0xe2657f		cc			INT $__subsystem__(SB)									

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).tryReserveDock(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/dock.go
  dock.go:168		0xe26580		493b6610		CMPQ SP, 0x10(R14)								
  dock.go:168		0xe26584		0f867f020000		JBE 0xe26809									
  dock.go:168		0xe2658a		55			PUSHQ BP									
  dock.go:168		0xe2658b		4889e5			MOVQ SP, BP									
  dock.go:168		0xe2658e		4883ec50		SUBQ $.file+3(SB), SP								
  dock.go:168		0xe26592		66440fd67c2448		MOVQ X15, 0x48(SP)								
  mutex.go:85		0xe26599		4889442460		MOVQ AX, 0x60(SP)								
  mutex.go:85		0xe2659e		48894c2470		MOVQ CX, 0x70(SP)								
  mutex.go:85		0xe265a3		48895c2468		MOVQ BX, 0x68(SP)								
  mutex.go:85		0xe265a8		4889b42480000000	MOVQ SI, 0x80(SP)								
  mutex.go:85		0xe265b0		48897c2478		MOVQ DI, 0x78(SP)								
  dock.go:168		0xe265b5		c644242700		MOVB $0x0, 0x27(SP)								
  dock.go:168		0xe265ba		c644242600		MOVB $0x0, 0x26(SP)								
  dock.go:169		0xe265bf		488d5058		LEAQ 0x58(AX), DX								
  mutex.go:85		0xe265c3		4989c0			MOVQ AX, R8									
  dock.go:169		0xe265c6		31c0			XORL AX, AX									
  dock.go:169		0xe265c8		41b901000000		MOVL $__minor_os_version__(SB), R9						
  dock.go:169		0xe265ce		f0450fb14858		LOCK CMPXCHGL R9, 0x58(R8)							
  dock.go:169		0xe265d4		410f94c1		SETE R9										
  mutex.go:85		0xe265d8		4584c9			TESTL R9, R9									
  mutex.go:85		0xe265db		7524			JNE 0xe26601									
  dock.go:169		0xe265dd		4889542428		MOVQ DX, 0x28(SP)								
  mutex.go:92		0xe265e2		4889d0			MOVQ DX, AX									
  mutex.go:92		0xe265e5		e8361466ff		CALL sync.(*Mutex).lockSlow(SB)							
  dock.go:170		0xe265ea		488b542428		MOVQ 0x28(SP), DX								
  dock.go:171		0xe265ef		488bb42480000000	MOVQ 0x80(SP), SI								
  dock.go:171		0xe265f7		488b7c2478		MOVQ 0x78(SP), DI								
  dock.go:171		0xe265fc		4c8b442460		MOVQ 0x60(SP), R8								
  dock.go:170		0xe26601		4c8d0d58020000		LEAQ CAS-Backend/pkg/diapdu.(*TaskScheduler).tryReserveDock.deferwrap1(SB), R9	
  dock.go:170		0xe26608		4c894c2438		MOVQ R9, 0x38(SP)								
  dock.go:170		0xe2660d		4889542440		MOVQ DX, 0x40(SP)								
  dock.go:170		0xe26612		488d542438		LEAQ 0x38(SP), DX								
  dock.go:170		0xe26617		4889542448		MOVQ DX, 0x48(SP)								
  dock.go:170		0xe2661c		c644242701		MOVB $__minor_os_version__(SB), 0x27(SP)					
  dock.go:171		0xe26621		498b5860		MOVQ 0x60(R8), BX								
  dock.go:171		0xe26625		488d05f4742500		LEAQ runtime.types+625440(SB), AX						
  dock.go:171		0xe2662c		4889f9			MOVQ DI, CX									
  dock.go:171		0xe2662f		4889f7			MOVQ SI, DI									
  dock.go:171		0xe26632		e8097664ff		CALL runtime.mapaccess2_faststr(SB)						
  dock.go:171		0xe26637		84db			TESTL BL, BL									
  dock.go:171		0xe26639		743d			JE 0xe26678									
  dock.go:171		0xe2663b		488b4808		MOVQ 0x8(AX), CX								
  dock.go:171		0xe2663f		90			NOPL										
  dock.go:171		0xe26640		4885c9			TESTQ CX, CX									
  dock.go:171		0xe26643		742a			JE 0xe2666f									
  dock.go:171		0xe26645		488b742470		MOVQ 0x70(SP), SI								
  dock.go:171		0xe2664a		4839ce			CMPQ SI, CX									
  dock.go:171		0xe2664d		7407			JE 0xe26656									
  dock.go:171		0xe2664f		b801000000		MOVL $__minor_os_version__(SB), AX						
  dock.go:171		0xe26654		eb2a			JMP 0xe26680									
  dock.go:171		0xe26656		488b00			MOVQ 0(AX), AX									
  dock.go:171		0xe26659		488b5c2468		MOVQ 0x68(SP), BX								
  dock.go:171		0xe2665e		6690			NOPW										
  dock.go:171		0xe26660		e8fbc75dff		CALL runtime.memequal(SB)							
  dock.go:171		0xe26665		83f001			XORL $__minor_os_version__(SB), AX						
  dock.go:174		0xe26668		488b742470		MOVQ 0x70(SP), SI								
  dock.go:171		0xe2666d		eb11			JMP 0xe26680									
  dock.go:174		0xe2666f		488b742470		MOVQ 0x70(SP), SI								
  dock.go:174		0xe26674		31c0			XORL AX, AX									
  dock.go:171		0xe26676		eb08			JMP 0xe26680									
  dock.go:174		0xe26678		488b742470		MOVQ 0x70(SP), SI								
  dock.go:174		0xe2667d		31c0			XORL AX, AX									
  dock.go:174		0xe2667f		90			NOPL										
  dock.go:171		0xe26680		84c0			TESTL AL, AL									
  dock.go:171		0xe26682		0f8552010000		JNE 0xe267da									
  dock.go:174		0xe26688		488b542460		MOVQ 0x60(SP), DX								
  dock.go:174		0xe2668d		488b5a60		MOVQ 0x60(DX), BX								
  dock.go:174		0xe26691		488d0588742500		LEAQ runtime.types+625440(SB), AX						
  dock.go:174		0xe26698		488b4c2478		MOVQ 0x78(SP), CX								
  dock.go:174		0xe2669d		488bbc2480000000	MOVQ 0x80(SP), DI								
  dock.go:174		0xe266a5		e8767964ff		CALL runtime.mapassign_faststr(SB)						
  dock.go:174		0xe266aa		488b7c2470		MOVQ 0x70(SP), DI								
  dock.go:174		0xe266af		48897808		MOVQ DI, 0x8(AX)								
  dock.go:174		0xe266b3		833d9674730200		CMPL runtime.writeBarrier(SB), $0x0						
  dock.go:174		0xe266ba		7507			JNE 0xe266c3									
  dock.go:174		0xe266bc		488b4c2468		MOVQ 0x68(SP), CX								
  dock.go:174		0xe266c1		eb14			JMP 0xe266d7									
  dock.go:174		0xe266c3		e8781d65ff		CALL runtime.gcWriteBarrier2(SB)						
  dock.go:174		0xe266c8		488b4c2468		MOVQ 0x68(SP), CX								
  dock.go:174		0xe266cd		49890b			MOVQ CX, 0(R11)									
  dock.go:174		0xe266d0		488b10			MOVQ 0(AX), DX									
  dock.go:174		0xe266d3		49895308		MOVQ DX, 0x8(R11)								
  dock.go:174		0xe266d7		488908			MOVQ CX, 0(AX)									
  dock.go:175		0xe266da		488b542460		MOVQ 0x60(SP), DX								
  dock.go:175		0xe266df		488b5a68		MOVQ 0x68(DX), BX								
  dock.go:175		0xe266e3		488d05d6702500		LEAQ runtime.types+624576(SB), AX						
  dock.go:175		0xe266ea		e851dc5eff		CALL runtime.mapaccess1_faststr(SB)						
  dock.go:175		0xe266ef		48833800		CMPQ 0(AX), $0x0								
  dock.go:175		0xe266f3		756c			JNE 0xe26761									
  dock.go:176		0xe266f5		488d0584cf2a00		LEAQ runtime.types+976512(SB), AX						
  dock.go:176		0xe266fc		0f1f4000		NOPL 0(AX)									
  dock.go:176		0xe26700		e89bb05eff		CALL runtime.newobject(SB)							
  dock.go:176		0xe26705		4889442430		MOVQ AX, 0x30(SP)								
  dock.go:176		0xe2670a		48c70000000000		MOVQ $0x0, 0(AX)								
  dock.go:176		0xe26711		48c7401800000000	MOVQ $0x0, 0x18(AX)								
  dock.go:176		0xe26719		488b4c2460		MOVQ 0x60(SP), CX								
  dock.go:176		0xe2671e		488b5968		MOVQ 0x68(CX), BX								
  dock.go:176		0xe26722		488b7c2470		MOVQ 0x70(SP), DI								
  dock.go:176		0xe26727		488d0592702500		LEAQ runtime.types+624576(SB), AX						
  dock.go:176		0xe2672e		488b4c2468		MOVQ 0x68(SP), CX								
  dock.go:176		0xe26733		e8e87864ff		CALL runtime.mapassign_faststr(SB)						
  dock.go:176		0xe26738		8400			TESTB AL, 0(AX)									
  dock.go:176		0xe2673a		833d0f74730200		CMPL runtime.writeBarrier(SB), $0x0						
  dock.go:176		0xe26741		7507			JNE 0xe2674a									
  dock.go:176		0xe26743		488b542430		MOVQ 0x30(SP), DX								
  dock.go:176		0xe26748		eb14			JMP 0xe2675e									
  dock.go:176		0xe2674a		e8f11c65ff		CALL runtime.gcWriteBarrier2(SB)						
  dock.go:176		0xe2674f		488b542430		MOVQ 0x30(SP), DX								
  dock.go:176		0xe26754		498913			MOVQ DX, 0(R11)									
  dock.go:176		0xe26757		488b30			MOVQ 0(AX), SI									
  dock.go:176		0xe2675a		49897308		MOVQ SI, 0x8(R11)								
  dock.go:176		0xe2675e		488910			MOVQ DX, 0(AX)									
  dock.go:178		0xe26761		488b542460		MOVQ 0x60(SP), DX								
  dock.go:178		0xe26766		488b5a68		MOVQ 0x68(DX), BX								
  dock.go:178		0xe2676a		488d054f702500		LEAQ runtime.types+624576(SB), AX						
  dock.go:178		0xe26771		488b4c2468		MOVQ 0x68(SP), CX								
  dock.go:178		0xe26776		488b7c2470		MOVQ 0x70(SP), DI								
  dock.go:178		0xe2677b		0f1f440000		NOPL 0(AX)(AX*1)								
  dock.go:178		0xe26780		e8bbdb5eff		CALL runtime.mapaccess1_faststr(SB)						
  dock.go:178		0xe26785		488b10			MOVQ 0(AX), DX									
  dock.go:178		0xe26788		488bb42480000000	MOVQ 0x80(SP), SI								
  dock.go:178		0xe26790		48897208		MOVQ SI, 0x8(DX)								
  dock.go:178		0xe26794		833db573730200		CMPL runtime.writeBarrier(SB), $0x0						
  dock.go:178		0xe2679b		7507			JNE 0xe267a4									
  dock.go:178		0xe2679d		488b442478		MOVQ 0x78(SP), AX								
  dock.go:178		0xe267a2		eb14			JMP 0xe267b8									
  dock.go:178		0xe267a4		e8971c65ff		CALL runtime.gcWriteBarrier2(SB)						
  dock.go:178		0xe267a9		488b442478		MOVQ 0x78(SP), AX								
  dock.go:178		0xe267ae		498903			MOVQ AX, 0(R11)									
  dock.go:178		0xe267b1		488b0a			MOVQ 0(DX), CX									
  dock.go:178		0xe267b4		49894b08		MOVQ CX, 0x8(R11)								
  dock.go:178		0xe267b8		488902			MOVQ AX, 0(DX)									
  dock.go:179		0xe267bb		c644242601		MOVB $__minor_os_version__(SB), 0x26(SP)					
  dock.go:179		0xe267c0		c644242700		MOVB $0x0, 0x27(SP)								
  dock.go:179		0xe267c5		488b542448		MOVQ 0x48(SP), DX								
  dock.go:179		0xe267ca		488b02			MOVQ 0(DX), AX									
  dock.go:179		0xe267cd		ffd0			CALL AX										
  dock.go:179		0xe267cf		0fb6442426		MOVZX 0x26(SP), AX								
  dock.go:179		0xe267d4		4883c450		ADDQ $.file+3(SB), SP								
  dock.go:179		0xe267d8		5d			POPQ BP										
  dock.go:179		0xe267d9		c3			RET										
  dock.go:172		0xe267da		c644242600		MOVB $0x0, 0x26(SP)								
  dock.go:172		0xe267df		c644242700		MOVB $0x0, 0x27(SP)								
  dock.go:172		0xe267e4		488b542448		MOVQ 0x48(SP), DX								
  dock.go:172		0xe267e9		488b02			MOVQ 0(DX), AX									
  dock.go:172		0xe267ec		ffd0			CALL AX										
  dock.go:172		0xe267ee		0fb6442426		MOVZX 0x26(SP), AX								
  dock.go:172		0xe267f3		4883c450		ADDQ $.file+3(SB), SP								
  dock.go:172		0xe267f7		5d			POPQ BP										
  dock.go:172		0xe267f8		c3			RET										
  dock.go:172		0xe267f9		e8823361ff		CALL runtime.deferreturn(SB)							
  dock.go:172		0xe267fe		0fb6442426		MOVZX 0x26(SP), AX								
  dock.go:172		0xe26803		4883c450		ADDQ $.file+3(SB), SP								
  dock.go:172		0xe26807		5d			POPQ BP										
  dock.go:172		0xe26808		c3			RET										
  dock.go:168		0xe26809		4889442408		MOVQ AX, 0x8(SP)								
  dock.go:168		0xe2680e		48895c2410		MOVQ BX, 0x10(SP)								
  dock.go:168		0xe26813		48894c2418		MOVQ CX, 0x18(SP)								
  dock.go:168		0xe26818		48897c2420		MOVQ DI, 0x20(SP)								
  dock.go:168		0xe2681d		4889742428		MOVQ SI, 0x28(SP)								
  dock.go:168		0xe26822		e8b9fc64ff		CALL runtime.morestack_noctxt.abi0(SB)						
  dock.go:168		0xe26827		488b442408		MOVQ 0x8(SP), AX								
  dock.go:168		0xe2682c		488b5c2410		MOVQ 0x10(SP), BX								
  dock.go:168		0xe26831		488b4c2418		MOVQ 0x18(SP), CX								
  dock.go:168		0xe26836		488b7c2420		MOVQ 0x20(SP), DI								
  dock.go:168		0xe2683b		488b742428		MOVQ 0x28(SP), SI								
  dock.go:168		0xe26840		e93bfdffff		JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).tryReserveDock(SB)			
  :-1			0xe26845		cc			INT $__subsystem__(SB)								
  :-1			0xe26846		cc			INT $__subsystem__(SB)								
  :-1			0xe26847		cc			INT $__subsystem__(SB)								
  :-1			0xe26848		cc			INT $__subsystem__(SB)								
  :-1			0xe26849		cc			INT $__subsystem__(SB)								
  :-1			0xe2684a		cc			INT $__subsystem__(SB)								
  :-1			0xe2684b		cc			INT $__subsystem__(SB)								
  :-1			0xe2684c		cc			INT $__subsystem__(SB)								
  :-1			0xe2684d		cc			INT $__subsystem__(SB)								
  :-1			0xe2684e		cc			INT $__subsystem__(SB)								
  :-1			0xe2684f		cc			INT $__subsystem__(SB)								
  :-1			0xe26850		cc			INT $__subsystem__(SB)								
  :-1			0xe26851		cc			INT $__subsystem__(SB)								
  :-1			0xe26852		cc			INT $__subsystem__(SB)								
  :-1			0xe26853		cc			INT $__subsystem__(SB)								
  :-1			0xe26854		cc			INT $__subsystem__(SB)								
  :-1			0xe26855		cc			INT $__subsystem__(SB)								
  :-1			0xe26856		cc			INT $__subsystem__(SB)								
  :-1			0xe26857		cc			INT $__subsystem__(SB)								
  :-1			0xe26858		cc			INT $__subsystem__(SB)								
  :-1			0xe26859		cc			INT $__subsystem__(SB)								
  :-1			0xe2685a		cc			INT $__subsystem__(SB)								
  :-1			0xe2685b		cc			INT $__subsystem__(SB)								
  :-1			0xe2685c		cc			INT $__subsystem__(SB)								
  :-1			0xe2685d		cc			INT $__subsystem__(SB)								
  :-1			0xe2685e		cc			INT $__subsystem__(SB)								
  :-1			0xe2685f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).tryReserveDock.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/dock.go
  dock.go:170		0xe26860		493b6610		CMPQ SP, 0x10(R14)								
  dock.go:170		0xe26864		762f			JBE 0xe26895									
  dock.go:170		0xe26866		55			PUSHQ BP									
  dock.go:170		0xe26867		4889e5			MOVQ SP, BP									
  dock.go:170		0xe2686a		4883ec10		SUBQ $__major_os_version__+10(SB), SP						
  dock.go:170		0xe2686e		4d8b6620		MOVQ 0x20(R14), R12								
  dock.go:170		0xe26872		4d85e4			TESTQ R12, R12									
  dock.go:170		0xe26875		7525			JNE 0xe2689c									
  dock.go:170		0xe26877		488b4208		MOVQ 0x8(DX), AX								
  mutex.go:221		0xe2687b		bbffffffff		MOVL $-0x1, BX									
  mutex.go:221		0xe26880		f00fc118		LOCK XADDL BX, 0(AX)								
  mutex.go:221		0xe26884		ffcb			DECL BX										
  mutex.go:222		0xe26886		85db			TESTL BX, BX									
  mutex.go:222		0xe26888		7405			JE 0xe2688f									
  mutex.go:225		0xe2688a		e8711466ff		CALL sync.(*Mutex).unlockSlow(SB)						
  dock.go:170		0xe2688f		4883c410		ADDQ $__major_os_version__+10(SB), SP						
  dock.go:170		0xe26893		5d			POPQ BP										
  dock.go:170		0xe26894		c3			RET										
  dock.go:170		0xe26895		e8c6fb64ff		CALL runtime.morestack.abi0(SB)							
  dock.go:170		0xe2689a		ebc4			JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).tryReserveDock.deferwrap1(SB)	
  dock.go:170		0xe2689c		4c8d6c2420		LEAQ 0x20(SP), R13								
  dock.go:170		0xe268a1		4d392c24		CMPQ 0(R12), R13								
  dock.go:170		0xe268a5		75d0			JNE 0xe26877									
  dock.go:170		0xe268a7		49892424		MOVQ SP, 0(R12)									
  dock.go:170		0xe268ab		ebca			JMP 0xe26877									
  :-1			0xe268ad		cc			INT $__subsystem__(SB)								
  :-1			0xe268ae		cc			INT $__subsystem__(SB)								
  :-1			0xe268af		cc			INT $__subsystem__(SB)								
  :-1			0xe268b0		cc			INT $__subsystem__(SB)								
  :-1			0xe268b1		cc			INT $__subsystem__(SB)								
  :-1			0xe268b2		cc			INT $__subsystem__(SB)								
  :-1			0xe268b3		cc			INT $__subsystem__(SB)								
  :-1			0xe268b4		cc			INT $__subsystem__(SB)								
  :-1			0xe268b5		cc			INT $__subsystem__(SB)								
  :-1			0xe268b6		cc			INT $__subsystem__(SB)								
  :-1			0xe268b7		cc			INT $__subsystem__(SB)								
  :-1			0xe268b8		cc			INT $__subsystem__(SB)								
  :-1			0xe268b9		cc			INT $__subsystem__(SB)								
  :-1			0xe268ba		cc			INT $__subsystem__(SB)								
  :-1			0xe268bb		cc			INT $__subsystem__(SB)								
  :-1			0xe268bc		cc			INT $__subsystem__(SB)								
  :-1			0xe268bd		cc			INT $__subsystem__(SB)								
  :-1			0xe268be		cc			INT $__subsystem__(SB)								
  :-1			0xe268bf		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).releaseDockForVehicle(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/dock.go
  dock.go:182		0xe268c0		493b6610		CMPQ SP, 0x10(R14)									
  dock.go:182		0xe268c4		0f8681010000		JBE 0xe26a4b										
  dock.go:182		0xe268ca		55			PUSHQ BP										
  dock.go:182		0xe268cb		4889e5			MOVQ SP, BP										
  dock.go:182		0xe268ce		4883ec50		SUBQ $.file+3(SB), SP									
  dock.go:182		0xe268d2		66440fd67c2448		MOVQ X15, 0x48(SP)									
  mutex.go:85		0xe268d9		4889442460		MOVQ AX, 0x60(SP)									
  mutex.go:85		0xe268de		48894c2470		MOVQ CX, 0x70(SP)									
  mutex.go:85		0xe268e3		48895c2468		MOVQ BX, 0x68(SP)									
  dock.go:182		0xe268e8		c644242700		MOVB $0x0, 0x27(SP)									
  dock.go:183		0xe268ed		488d5058		LEAQ 0x58(AX), DX									
  mutex.go:85		0xe268f1		4889c6			MOVQ AX, SI										
  dock.go:183		0xe268f4		31c0			XORL AX, AX										
  dock.go:183		0xe268f6		41b801000000		MOVL $__minor_os_version__(SB), R8							
  dock.go:183		0xe268fc		f0440fb14658		LOCK CMPXCHGL R8, 0x58(SI)								
  dock.go:183		0xe26902		410f94c0		SETE R8											
  mutex.go:85		0xe26906		4584c0			TESTL R8, R8										
  mutex.go:85		0xe26909		7521			JNE 0xe2692c										
  dock.go:183		0xe2690b		4889542430		MOVQ DX, 0x30(SP)									
  mutex.go:92		0xe26910		4889d0			MOVQ DX, AX										
  mutex.go:92		0xe26913		e8081166ff		CALL sync.(*Mutex).lockSlow(SB)								
  dock.go:185		0xe26918		488b4c2470		MOVQ 0x70(SP), CX									
  dock.go:184		0xe2691d		488b542430		MOVQ 0x30(SP), DX									
  dock.go:185		0xe26922		488b5c2468		MOVQ 0x68(SP), BX									
  dock.go:185		0xe26927		488b742460		MOVQ 0x60(SP), SI									
  dock.go:184		0xe2692c		4c8d054d010000		LEAQ CAS-Backend/pkg/diapdu.(*TaskScheduler).releaseDockForVehicle.deferwrap1(SB), R8	
  dock.go:184		0xe26933		4c89442438		MOVQ R8, 0x38(SP)									
  dock.go:184		0xe26938		4889542440		MOVQ DX, 0x40(SP)									
  dock.go:184		0xe2693d		488d542438		LEAQ 0x38(SP), DX									
  dock.go:184		0xe26942		4889542448		MOVQ DX, 0x48(SP)									
  dock.go:184		0xe26947		c644242701		MOVB $__minor_os_version__(SB), 0x27(SP)						
  dock.go:185		0xe2694c		488b5668		MOVQ 0x68(SI), DX									
  dock.go:185		0xe26950		488d05696e2500		LEAQ runtime.types+624576(SB), AX							
  dock.go:185		0xe26957		4889cf			MOVQ CX, DI										
  dock.go:185		0xe2695a		4889d9			MOVQ BX, CX										
  dock.go:185		0xe2695d		4889d3			MOVQ DX, BX										
  dock.go:185		0xe26960		e8db7264ff		CALL runtime.mapaccess2_faststr(SB)							
  dock.go:185		0xe26965		84db			TESTL BL, BL										
  dock.go:186		0xe26967		0f84bb000000		JE 0xe26a28										
  dock.go:185		0xe2696d		488b30			MOVQ 0(AX), SI										
  dock.go:186		0xe26970		4885f6			TESTQ SI, SI										
  dock.go:186		0xe26973		0f84af000000		JE 0xe26a28										
  dock.go:189		0xe26979		488b7e08		MOVQ 0x8(SI), DI									
  dock.go:189		0xe2697d		0f1f00			NOPL 0(AX)										
  dock.go:189		0xe26980		4885ff			TESTQ DI, DI										
  dock.go:189		0xe26983		7507			JNE 0xe2698c										
  dock.go:192		0xe26985		488b7c2470		MOVQ 0x70(SP), DI									
  dock.go:189		0xe2698a		eb6b			JMP 0xe269f7										
  dock.go:185		0xe2698c		4889742428		MOVQ SI, 0x28(SP)									
  dock.go:189		0xe26991		488b0e			MOVQ 0(SI), CX										
  dock.go:189		0xe26994		488b542460		MOVQ 0x60(SP), DX									
  dock.go:189		0xe26999		488b5a60		MOVQ 0x60(DX), BX									
  dock.go:189		0xe2699d		488d057c712500		LEAQ runtime.types+625440(SB), AX							
  dock.go:189		0xe269a4		e897d95eff		CALL runtime.mapaccess1_faststr(SB)							
  dock.go:189		0xe269a9		488b4808		MOVQ 0x8(AX), CX									
  dock.go:189		0xe269ad		488b7c2470		MOVQ 0x70(SP), DI									
  dock.go:189		0xe269b2		4839cf			CMPQ DI, CX										
  dock.go:189		0xe269b5		7404			JE 0xe269bb										
  dock.go:189		0xe269b7		31c0			XORL AX, AX										
  dock.go:189		0xe269b9		eb12			JMP 0xe269cd										
  dock.go:189		0xe269bb		488b00			MOVQ 0(AX), AX										
  dock.go:189		0xe269be		488b5c2468		MOVQ 0x68(SP), BX									
  dock.go:189		0xe269c3		e898c45dff		CALL runtime.memequal(SB)								
  dock.go:192		0xe269c8		488b7c2470		MOVQ 0x70(SP), DI									
  dock.go:189		0xe269cd		84c0			TESTL AL, AL										
  dock.go:189		0xe269cf		7426			JE 0xe269f7										
  dock.go:190		0xe269d1		488b542460		MOVQ 0x60(SP), DX									
  dock.go:190		0xe269d6		488b5a60		MOVQ 0x60(DX), BX									
  dock.go:190		0xe269da		488b742428		MOVQ 0x28(SP), SI									
  dock.go:190		0xe269df		488b0e			MOVQ 0(SI), CX										
  dock.go:190		0xe269e2		488b7e08		MOVQ 0x8(SI), DI									
  dock.go:190		0xe269e6		488d0533712500		LEAQ runtime.types+625440(SB), AX							
  dock.go:190		0xe269ed		e80edd5eff		CALL runtime.mapdelete_faststr(SB)							
  dock.go:192		0xe269f2		488b7c2470		MOVQ 0x70(SP), DI									
  dock.go:192		0xe269f7		488b542460		MOVQ 0x60(SP), DX									
  dock.go:192		0xe269fc		488b5a68		MOVQ 0x68(DX), BX									
  dock.go:192		0xe26a00		488d05b96d2500		LEAQ runtime.types+624576(SB), AX							
  dock.go:192		0xe26a07		488b4c2468		MOVQ 0x68(SP), CX									
  dock.go:192		0xe26a0c		e8efdc5eff		CALL runtime.mapdelete_faststr(SB)							
  dock.go:193		0xe26a11		c644242700		MOVB $0x0, 0x27(SP)									
  dock.go:193		0xe26a16		488b542448		MOVQ 0x48(SP), DX									
  dock.go:193		0xe26a1b		488b32			MOVQ 0(DX), SI										
  dock.go:193		0xe26a1e		6690			NOPW											
  dock.go:193		0xe26a20		ffd6			CALL SI											
  dock.go:193		0xe26a22		4883c450		ADDQ $.file+3(SB), SP									
  dock.go:193		0xe26a26		5d			POPQ BP											
  dock.go:193		0xe26a27		c3			RET											
  dock.go:187		0xe26a28		c644242700		MOVB $0x0, 0x27(SP)									
  dock.go:187		0xe26a2d		488b542448		MOVQ 0x48(SP), DX									
  dock.go:187		0xe26a32		488b02			MOVQ 0(DX), AX										
  dock.go:187		0xe26a35		ffd0			CALL AX											
  dock.go:187		0xe26a37		4883c450		ADDQ $.file+3(SB), SP									
  dock.go:187		0xe26a3b		5d			POPQ BP											
  dock.go:187		0xe26a3c		c3			RET											
  dock.go:187		0xe26a3d		0f1f00			NOPL 0(AX)										
  dock.go:187		0xe26a40		e83b3161ff		CALL runtime.deferreturn(SB)								
  dock.go:187		0xe26a45		4883c450		ADDQ $.file+3(SB), SP									
  dock.go:187		0xe26a49		5d			POPQ BP											
  dock.go:187		0xe26a4a		c3			RET											
  dock.go:182		0xe26a4b		4889442408		MOVQ AX, 0x8(SP)									
  dock.go:182		0xe26a50		48895c2410		MOVQ BX, 0x10(SP)									
  dock.go:182		0xe26a55		48894c2418		MOVQ CX, 0x18(SP)									
  dock.go:182		0xe26a5a		e881fa64ff		CALL runtime.morestack_noctxt.abi0(SB)							
  dock.go:182		0xe26a5f		488b442408		MOVQ 0x8(SP), AX									
  dock.go:182		0xe26a64		488b5c2410		MOVQ 0x10(SP), BX									
  dock.go:182		0xe26a69		488b4c2418		MOVQ 0x18(SP), CX									
  dock.go:182		0xe26a6e		e94dfeffff		JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).releaseDockForVehicle(SB)			
  :-1			0xe26a73		cc			INT $__subsystem__(SB)									
  :-1			0xe26a74		cc			INT $__subsystem__(SB)									
  :-1			0xe26a75		cc			INT $__subsystem__(SB)									
  :-1			0xe26a76		cc			INT $__subsystem__(SB)									
  :-1			0xe26a77		cc			INT $__subsystem__(SB)									
  :-1			0xe26a78		cc			INT $__subsystem__(SB)									
  :-1			0xe26a79		cc			INT $__subsystem__(SB)									
  :-1			0xe26a7a		cc			INT $__subsystem__(SB)									
  :-1			0xe26a7b		cc			INT $__subsystem__(SB)									
  :-1			0xe26a7c		cc			INT $__subsystem__(SB)									
  :-1			0xe26a7d		cc			INT $__subsystem__(SB)									
  :-1			0xe26a7e		cc			INT $__subsystem__(SB)									
  :-1			0xe26a7f		cc			INT $__subsystem__(SB)									

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).releaseDockForVehicle.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/dock.go
  dock.go:184		0xe26a80		493b6610		CMPQ SP, 0x10(R14)									
  dock.go:184		0xe26a84		762f			JBE 0xe26ab5										
  dock.go:184		0xe26a86		55			PUSHQ BP										
  dock.go:184		0xe26a87		4889e5			MOVQ SP, BP										
  dock.go:184		0xe26a8a		4883ec10		SUBQ $__major_os_version__+10(SB), SP							
  dock.go:184		0xe26a8e		4d8b6620		MOVQ 0x20(R14), R12									
  dock.go:184		0xe26a92		4d85e4			TESTQ R12, R12										
  dock.go:184		0xe26a95		7525			JNE 0xe26abc										
  dock.go:184		0xe26a97		488b4208		MOVQ 0x8(DX), AX									
  mutex.go:221		0xe26a9b		bbffffffff		MOVL $-0x1, BX										
  mutex.go:221		0xe26aa0		f00fc118		LOCK XADDL BX, 0(AX)									
  mutex.go:221		0xe26aa4		ffcb			DECL BX											
  mutex.go:222		0xe26aa6		85db			TESTL BX, BX										
  mutex.go:222		0xe26aa8		7405			JE 0xe26aaf										
  mutex.go:225		0xe26aaa		e8511266ff		CALL sync.(*Mutex).unlockSlow(SB)							
  dock.go:184		0xe26aaf		4883c410		ADDQ $__major_os_version__+10(SB), SP							
  dock.go:184		0xe26ab3		5d			POPQ BP											
  dock.go:184		0xe26ab4		c3			RET											
  dock.go:184		0xe26ab5		e8a6f964ff		CALL runtime.morestack.abi0(SB)								
  dock.go:184		0xe26aba		ebc4			JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).releaseDockForVehicle.deferwrap1(SB)	
  dock.go:184		0xe26abc		4c8d6c2420		LEAQ 0x20(SP), R13									
  dock.go:184		0xe26ac1		4d392c24		CMPQ 0(R12), R13									
  dock.go:184		0xe26ac5		75d0			JNE 0xe26a97										
  dock.go:184		0xe26ac7		49892424		MOVQ SP, 0(R12)										
  dock.go:184		0xe26acb		ebca			JMP 0xe26a97										
  :-1			0xe26acd		cc			INT $__subsystem__(SB)									
  :-1			0xe26ace		cc			INT $__subsystem__(SB)									
  :-1			0xe26acf		cc			INT $__subsystem__(SB)									
  :-1			0xe26ad0		cc			INT $__subsystem__(SB)									
  :-1			0xe26ad1		cc			INT $__subsystem__(SB)									
  :-1			0xe26ad2		cc			INT $__subsystem__(SB)									
  :-1			0xe26ad3		cc			INT $__subsystem__(SB)									
  :-1			0xe26ad4		cc			INT $__subsystem__(SB)									
  :-1			0xe26ad5		cc			INT $__subsystem__(SB)									
  :-1			0xe26ad6		cc			INT $__subsystem__(SB)									
  :-1			0xe26ad7		cc			INT $__subsystem__(SB)									
  :-1			0xe26ad8		cc			INT $__subsystem__(SB)									
  :-1			0xe26ad9		cc			INT $__subsystem__(SB)									
  :-1			0xe26ada		cc			INT $__subsystem__(SB)									
  :-1			0xe26adb		cc			INT $__subsystem__(SB)									
  :-1			0xe26adc		cc			INT $__subsystem__(SB)									
  :-1			0xe26add		cc			INT $__subsystem__(SB)									
  :-1			0xe26ade		cc			INT $__subsystem__(SB)									
  :-1			0xe26adf		cc			INT $__subsystem__(SB)									

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).setDockNavigating(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/dock.go
  dock.go:195		0xe26ae0		493b6610		CMPQ SP, 0x10(R14)									
  dock.go:195		0xe26ae4		0f868e010000		JBE 0xe26c78										
  dock.go:195		0xe26aea		55			PUSHQ BP										
  dock.go:195		0xe26aeb		4889e5			MOVQ SP, BP										
  dock.go:195		0xe26aee		4883ec50		SUBQ $.file+3(SB), SP									
  dock.go:195		0xe26af2		66440fd67c2448		MOVQ X15, 0x48(SP)									
  mutex.go:85		0xe26af9		4889442460		MOVQ AX, 0x60(SP)									
  mutex.go:85		0xe26afe		40887c2478		MOVB DI, 0x78(SP)									
  mutex.go:85		0xe26b03		4889b42480000000	MOVQ SI, 0x80(SP)									
  mutex.go:85		0xe26b0b		48894c2470		MOVQ CX, 0x70(SP)									
  mutex.go:85		0xe26b10		48895c2468		MOVQ BX, 0x68(SP)									
  dock.go:195		0xe26b15		c644242700		MOVB $0x0, 0x27(SP)									
  dock.go:196		0xe26b1a		488d5058		LEAQ 0x58(AX), DX									
  mutex.go:85		0xe26b1e		4989c0			MOVQ AX, R8										
  dock.go:196		0xe26b21		31c0			XORL AX, AX										
  dock.go:196		0xe26b23		41b901000000		MOVL $__minor_os_version__(SB), R9							
  dock.go:196		0xe26b29		f0450fb14858		LOCK CMPXCHGL R9, 0x58(R8)								
  dock.go:196		0xe26b2f		410f94c1		SETE R9											
  mutex.go:85		0xe26b33		4584c9			TESTL R9, R9										
  mutex.go:85		0xe26b36		7521			JNE 0xe26b59										
  dock.go:196		0xe26b38		4889542430		MOVQ DX, 0x30(SP)									
  mutex.go:92		0xe26b3d		4889d0			MOVQ DX, AX										
  mutex.go:92		0xe26b40		e8db0e66ff		CALL sync.(*Mutex).lockSlow(SB)								
  dock.go:198		0xe26b45		488b4c2470		MOVQ 0x70(SP), CX									
  dock.go:197		0xe26b4a		488b542430		MOVQ 0x30(SP), DX									
  dock.go:198		0xe26b4f		488b5c2468		MOVQ 0x68(SP), BX									
  dock.go:198		0xe26b54		4c8b442460		MOVQ 0x60(SP), R8									
  dock.go:197		0xe26b59		488d3560010000		LEAQ CAS-Backend/pkg/diapdu.(*TaskScheduler).setDockNavigating.deferwrap1(SB), SI	
  dock.go:197		0xe26b60		4889742438		MOVQ SI, 0x38(SP)									
  dock.go:197		0xe26b65		4889542440		MOVQ DX, 0x40(SP)									
  dock.go:197		0xe26b6a		488d542438		LEAQ 0x38(SP), DX									
  dock.go:197		0xe26b6f		4889542448		MOVQ DX, 0x48(SP)									
  dock.go:197		0xe26b74		c644242701		MOVB $__minor_os_version__(SB), 0x27(SP)						
  dock.go:198		0xe26b79		498b5068		MOVQ 0x68(R8), DX									
  dock.go:198		0xe26b7d		488d053c6c2500		LEAQ runtime.types+624576(SB), AX							
  dock.go:198		0xe26b84		4889cf			MOVQ CX, DI										
  dock.go:198		0xe26b87		4889d9			MOVQ BX, CX										
  dock.go:198		0xe26b8a		4889d3			MOVQ DX, BX										
  dock.go:198		0xe26b8d		e8aed75eff		CALL runtime.mapaccess1_faststr(SB)							
  dock.go:198		0xe26b92		488b10			MOVQ 0(AX), DX										
  dock.go:199		0xe26b95		4885d2			TESTQ DX, DX										
  dock.go:199		0xe26b98		756b			JNE 0xe26c05										
  dock.go:200		0xe26b9a		488d05dfca2a00		LEAQ runtime.types+976512(SB), AX							
  dock.go:200		0xe26ba1		e8faab5eff		CALL runtime.newobject(SB)								
  dock.go:200		0xe26ba6		4889442428		MOVQ AX, 0x28(SP)									
  dock.go:200		0xe26bab		48c70000000000		MOVQ $0x0, 0(AX)									
  dock.go:200		0xe26bb2		48c7401800000000	MOVQ $0x0, 0x18(AX)									
  dock.go:201		0xe26bba		488b4c2460		MOVQ 0x60(SP), CX									
  dock.go:201		0xe26bbf		488b5968		MOVQ 0x68(CX), BX									
  dock.go:201		0xe26bc3		488b4c2468		MOVQ 0x68(SP), CX									
  dock.go:201		0xe26bc8		488b7c2470		MOVQ 0x70(SP), DI									
  dock.go:201		0xe26bcd		488d05ec6b2500		LEAQ runtime.types+624576(SB), AX							
  dock.go:201		0xe26bd4		e8477464ff		CALL runtime.mapassign_faststr(SB)							
  dock.go:201		0xe26bd9		8400			TESTB AL, 0(AX)										
  dock.go:201		0xe26bdb		833d6e6f730200		CMPL runtime.writeBarrier(SB), $0x0							
  dock.go:201		0xe26be2		7507			JNE 0xe26beb										
  dock.go:201		0xe26be4		488b4c2428		MOVQ 0x28(SP), CX									
  dock.go:201		0xe26be9		eb14			JMP 0xe26bff										
  dock.go:201		0xe26beb		e8501865ff		CALL runtime.gcWriteBarrier2(SB)							
  dock.go:201		0xe26bf0		488b4c2428		MOVQ 0x28(SP), CX									
  dock.go:201		0xe26bf5		49890b			MOVQ CX, 0(R11)										
  dock.go:201		0xe26bf8		488b18			MOVQ 0(AX), BX										
  dock.go:201		0xe26bfb		49895b08		MOVQ BX, 0x8(R11)									
  dock.go:201		0xe26bff		488908			MOVQ CX, 0(AX)										
  dock.go:203		0xe26c02		4889ca			MOVQ CX, DX										
  dock.go:203		0xe26c05		0fb6442478		MOVZX 0x78(SP), AX									
  dock.go:203		0xe26c0a		884210			MOVB AL, 0x10(DX)									
  dock.go:204		0xe26c0d		488b8c2480000000	MOVQ 0x80(SP), CX									
  dock.go:204		0xe26c15		4885c9			TESTQ CX, CX										
  dock.go:204		0xe26c18		741d			JE 0xe26c37										
  dock.go:205		0xe26c1a		833d2f6f730200		CMPL runtime.writeBarrier(SB), $0x0							
  dock.go:205		0xe26c21		7410			JE 0xe26c33										
  dock.go:205		0xe26c23		e8181865ff		CALL runtime.gcWriteBarrier2(SB)							
  dock.go:205		0xe26c28		49890b			MOVQ CX, 0(R11)										
  dock.go:205		0xe26c2b		488b5a18		MOVQ 0x18(DX), BX									
  dock.go:205		0xe26c2f		49895b08		MOVQ BX, 0x8(R11)									
  dock.go:205		0xe26c33		48894a18		MOVQ CX, 0x18(DX)									
  mutex.go:85		0xe26c37		84c0			TESTL AL, AL										
  dock.go:207		0xe26c39		751d			JNE 0xe26c58										
  dock.go:208		0xe26c3b		833d0e6f730200		CMPL runtime.writeBarrier(SB), $0x0							
  dock.go:208		0xe26c42		740c			JE 0xe26c50										
  dock.go:208		0xe26c44		488b4218		MOVQ 0x18(DX), AX									
  dock.go:208		0xe26c48		e8d31765ff		CALL runtime.gcWriteBarrier1(SB)							
  dock.go:208		0xe26c4d		498903			MOVQ AX, 0(R11)										
  dock.go:208		0xe26c50		48c7421800000000	MOVQ $0x0, 0x18(DX)									
  dock.go:210		0xe26c58		c644242700		MOVB $0x0, 0x27(SP)									
  dock.go:210		0xe26c5d		488b542448		MOVQ 0x48(SP), DX									
  dock.go:210		0xe26c62		488b02			MOVQ 0(DX), AX										
  dock.go:210		0xe26c65		ffd0			CALL AX											
  dock.go:210		0xe26c67		4883c450		ADDQ $.file+3(SB), SP									
  dock.go:210		0xe26c6b		5d			POPQ BP											
  dock.go:210		0xe26c6c		c3			RET											
  dock.go:210		0xe26c6d		e80e2f61ff		CALL runtime.deferreturn(SB)								
  dock.go:210		0xe26c72		4883c450		ADDQ $.file+3(SB), SP									
  dock.go:210		0xe26c76		5d			POPQ BP											
  dock.go:210		0xe26c77		c3			RET											
  dock.go:195		0xe26c78		4889442408		MOVQ AX, 0x8(SP)									
  dock.go:195		0xe26c7d		48895c2410		MOVQ BX, 0x10(SP)									
  dock.go:195		0xe26c82		48894c2418		MOVQ CX, 0x18(SP)									
  dock.go:195		0xe26c87		40887c2420		MOVB DI, 0x20(SP)									
  dock.go:195		0xe26c8c		4889742428		MOVQ SI, 0x28(SP)									
  dock.go:195		0xe26c91		e84af864ff		CALL runtime.morestack_noctxt.abi0(SB)							
  dock.go:195		0xe26c96		488b442408		MOVQ 0x8(SP), AX									
  dock.go:195		0xe26c9b		488b5c2410		MOVQ 0x10(SP), BX									
  dock.go:195		0xe26ca0		488b4c2418		MOVQ 0x18(SP), CX									
  dock.go:195		0xe26ca5		0fb67c2420		MOVZX 0x20(SP), DI									
  dock.go:195		0xe26caa		488b742428		MOVQ 0x28(SP), SI									
  dock.go:195		0xe26caf		e92cfeffff		JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).setDockNavigating(SB)			
  :-1			0xe26cb4		cc			INT $__subsystem__(SB)									
  :-1			0xe26cb5		cc			INT $__subsystem__(SB)									
  :-1			0xe26cb6		cc			INT $__subsystem__(SB)									
  :-1			0xe26cb7		cc			INT $__subsystem__(SB)									
  :-1			0xe26cb8		cc			INT $__subsystem__(SB)									
  :-1			0xe26cb9		cc			INT $__subsystem__(SB)									
  :-1			0xe26cba		cc			INT $__subsystem__(SB)									
  :-1			0xe26cbb		cc			INT $__subsystem__(SB)									
  :-1			0xe26cbc		cc			INT $__subsystem__(SB)									
  :-1			0xe26cbd		cc			INT $__subsystem__(SB)									
  :-1			0xe26cbe		cc			INT $__subsystem__(SB)									
  :-1			0xe26cbf		cc			INT $__subsystem__(SB)									

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).setDockNavigating.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/dock.go
  dock.go:197		0xe26cc0		493b6610		CMPQ SP, 0x10(R14)								
  dock.go:197		0xe26cc4		762f			JBE 0xe26cf5									
  dock.go:197		0xe26cc6		55			PUSHQ BP									
  dock.go:197		0xe26cc7		4889e5			MOVQ SP, BP									
  dock.go:197		0xe26cca		4883ec10		SUBQ $__major_os_version__+10(SB), SP						
  dock.go:197		0xe26cce		4d8b6620		MOVQ 0x20(R14), R12								
  dock.go:197		0xe26cd2		4d85e4			TESTQ R12, R12									
  dock.go:197		0xe26cd5		7525			JNE 0xe26cfc									
  dock.go:197		0xe26cd7		488b4208		MOVQ 0x8(DX), AX								
  mutex.go:221		0xe26cdb		bbffffffff		MOVL $-0x1, BX									
  mutex.go:221		0xe26ce0		f00fc118		LOCK XADDL BX, 0(AX)								
  mutex.go:221		0xe26ce4		ffcb			DECL BX										
  mutex.go:222		0xe26ce6		85db			TESTL BX, BX									
  mutex.go:222		0xe26ce8		7405			JE 0xe26cef									
  mutex.go:225		0xe26cea		e8111066ff		CALL sync.(*Mutex).unlockSlow(SB)						
  dock.go:197		0xe26cef		4883c410		ADDQ $__major_os_version__+10(SB), SP						
  dock.go:197		0xe26cf3		5d			POPQ BP										
  dock.go:197		0xe26cf4		c3			RET										
  dock.go:197		0xe26cf5		e866f764ff		CALL runtime.morestack.abi0(SB)							
  dock.go:197		0xe26cfa		ebc4			JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).setDockNavigating.deferwrap1(SB)	
  dock.go:197		0xe26cfc		4c8d6c2420		LEAQ 0x20(SP), R13								
  dock.go:197		0xe26d01		4d392c24		CMPQ 0(R12), R13								
  dock.go:197		0xe26d05		75d0			JNE 0xe26cd7									
  dock.go:197		0xe26d07		49892424		MOVQ SP, 0(R12)									
  dock.go:197		0xe26d0b		ebca			JMP 0xe26cd7									
  :-1			0xe26d0d		cc			INT $__subsystem__(SB)								
  :-1			0xe26d0e		cc			INT $__subsystem__(SB)								
  :-1			0xe26d0f		cc			INT $__subsystem__(SB)								
  :-1			0xe26d10		cc			INT $__subsystem__(SB)								
  :-1			0xe26d11		cc			INT $__subsystem__(SB)								
  :-1			0xe26d12		cc			INT $__subsystem__(SB)								
  :-1			0xe26d13		cc			INT $__subsystem__(SB)								
  :-1			0xe26d14		cc			INT $__subsystem__(SB)								
  :-1			0xe26d15		cc			INT $__subsystem__(SB)								
  :-1			0xe26d16		cc			INT $__subsystem__(SB)								
  :-1			0xe26d17		cc			INT $__subsystem__(SB)								
  :-1			0xe26d18		cc			INT $__subsystem__(SB)								
  :-1			0xe26d19		cc			INT $__subsystem__(SB)								
  :-1			0xe26d1a		cc			INT $__subsystem__(SB)								
  :-1			0xe26d1b		cc			INT $__subsystem__(SB)								
  :-1			0xe26d1c		cc			INT $__subsystem__(SB)								
  :-1			0xe26d1d		cc			INT $__subsystem__(SB)								
  :-1			0xe26d1e		cc			INT $__subsystem__(SB)								
  :-1			0xe26d1f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).getDockCancel(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/dock.go
  dock.go:212		0xe26d20		493b6610		CMPQ SP, 0x10(R14)								
  dock.go:212		0xe26d24		0f8607010000		JBE 0xe26e31									
  dock.go:212		0xe26d2a		55			PUSHQ BP									
  dock.go:212		0xe26d2b		4889e5			MOVQ SP, BP									
  dock.go:212		0xe26d2e		4883ec58		SUBQ $.file+11(SB), SP								
  dock.go:212		0xe26d32		48895c2470		MOVQ BX, 0x70(SP)								
  dock.go:212		0xe26d37		66440fd67c2450		MOVQ X15, 0x50(SP)								
  dock.go:212		0xe26d3e		c644242700		MOVB $0x0, 0x27(SP)								
  dock.go:212		0xe26d43		48c744242800000000	MOVQ $0x0, 0x28(SP)								
  dock.go:213		0xe26d4c		488d5058		LEAQ 0x58(AX), DX								
  mutex.go:85		0xe26d50		4889c6			MOVQ AX, SI									
  dock.go:213		0xe26d53		31c0			XORL AX, AX									
  dock.go:213		0xe26d55		41b801000000		MOVL $__minor_os_version__(SB), R8						
  dock.go:213		0xe26d5b		f0440fb14658		LOCK CMPXCHGL R8, 0x58(SI)							
  dock.go:213		0xe26d61		410f94c0		SETE R8										
  mutex.go:85		0xe26d65		4584c0			TESTL R8, R8									
  mutex.go:85		0xe26d68		7530			JNE 0xe26d9a									
  mutex.go:85		0xe26d6a		4889742448		MOVQ SI, 0x48(SP)								
  dock.go:213		0xe26d6f		4889542430		MOVQ DX, 0x30(SP)								
  mutex.go:85		0xe26d74		48895c2470		MOVQ BX, 0x70(SP)								
  mutex.go:85		0xe26d79		48894c2478		MOVQ CX, 0x78(SP)								
  mutex.go:92		0xe26d7e		4889d0			MOVQ DX, AX									
  mutex.go:92		0xe26d81		e89a0c66ff		CALL sync.(*Mutex).lockSlow(SB)							
  dock.go:215		0xe26d86		488b4c2478		MOVQ 0x78(SP), CX								
  dock.go:214		0xe26d8b		488b542430		MOVQ 0x30(SP), DX								
  dock.go:215		0xe26d90		488b5c2470		MOVQ 0x70(SP), BX								
  dock.go:215		0xe26d95		488b742448		MOVQ 0x48(SP), SI								
  dock.go:214		0xe26d9a		4c8d05bf000000		LEAQ CAS-Backend/pkg/diapdu.(*TaskScheduler).getDockCancel.deferwrap1(SB), R8	
  dock.go:214		0xe26da1		4c89442438		MOVQ R8, 0x38(SP)								
  dock.go:214		0xe26da6		4889542440		MOVQ DX, 0x40(SP)								
  dock.go:214		0xe26dab		488d542438		LEAQ 0x38(SP), DX								
  dock.go:214		0xe26db0		4889542450		MOVQ DX, 0x50(SP)								
  dock.go:214		0xe26db5		c644242701		MOVB $__minor_os_version__(SB), 0x27(SP)					
  dock.go:215		0xe26dba		488b5668		MOVQ 0x68(SI), DX								
  dock.go:215		0xe26dbe		488d05fb692500		LEAQ runtime.types+624576(SB), AX						
  dock.go:215		0xe26dc5		4889cf			MOVQ CX, DI									
  dock.go:215		0xe26dc8		4889d9			MOVQ BX, CX									
  dock.go:215		0xe26dcb		4889d3			MOVQ DX, BX									
  dock.go:215		0xe26dce		e86dd55eff		CALL runtime.mapaccess1_faststr(SB)						
  dock.go:215		0xe26dd3		488b10			MOVQ 0(AX), DX									
  dock.go:215		0xe26dd6		4885d2			TESTQ DX, DX									
  dock.go:215		0xe26dd9		7423			JE 0xe26dfe									
  dock.go:216		0xe26ddb		488b4218		MOVQ 0x18(DX), AX								
  dock.go:216		0xe26ddf		4889442428		MOVQ AX, 0x28(SP)								
  dock.go:216		0xe26de4		c644242700		MOVB $0x0, 0x27(SP)								
  dock.go:216		0xe26de9		488b542450		MOVQ 0x50(SP), DX								
  dock.go:216		0xe26dee		488b02			MOVQ 0(DX), AX									
  dock.go:216		0xe26df1		ffd0			CALL AX										
  dock.go:216		0xe26df3		488b442428		MOVQ 0x28(SP), AX								
  dock.go:216		0xe26df8		4883c458		ADDQ $.file+11(SB), SP								
  dock.go:216		0xe26dfc		5d			POPQ BP										
  dock.go:216		0xe26dfd		c3			RET										
  dock.go:218		0xe26dfe		48c744242800000000	MOVQ $0x0, 0x28(SP)								
  dock.go:218		0xe26e07		c644242700		MOVB $0x0, 0x27(SP)								
  dock.go:218		0xe26e0c		488b542450		MOVQ 0x50(SP), DX								
  dock.go:218		0xe26e11		488b02			MOVQ 0(DX), AX									
  dock.go:218		0xe26e14		ffd0			CALL AX										
  dock.go:218		0xe26e16		488b442428		MOVQ 0x28(SP), AX								
  dock.go:218		0xe26e1b		4883c458		ADDQ $.file+11(SB), SP								
  dock.go:218		0xe26e1f		5d			POPQ BP										
  dock.go:218		0xe26e20		c3			RET										
  dock.go:218		0xe26e21		e85a2d61ff		CALL runtime.deferreturn(SB)							
  dock.go:218		0xe26e26		488b442428		MOVQ 0x28(SP), AX								
  dock.go:218		0xe26e2b		4883c458		ADDQ $.file+11(SB), SP								
  dock.go:218		0xe26e2f		5d			POPQ BP										
  dock.go:218		0xe26e30		c3			RET										
  dock.go:212		0xe26e31		4889442408		MOVQ AX, 0x8(SP)								
  dock.go:212		0xe26e36		48895c2410		MOVQ BX, 0x10(SP)								
  dock.go:212		0xe26e3b		48894c2418		MOVQ CX, 0x18(SP)								
  dock.go:212		0xe26e40		e89bf664ff		CALL runtime.morestack_noctxt.abi0(SB)						
  dock.go:212		0xe26e45		488b442408		MOVQ 0x8(SP), AX								
  dock.go:212		0xe26e4a		488b5c2410		MOVQ 0x10(SP), BX								
  dock.go:212		0xe26e4f		488b4c2418		MOVQ 0x18(SP), CX								
  dock.go:212		0xe26e54		e9c7feffff		JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).getDockCancel(SB)			
  :-1			0xe26e59		cc			INT $__subsystem__(SB)								
  :-1			0xe26e5a		cc			INT $__subsystem__(SB)								
  :-1			0xe26e5b		cc			INT $__subsystem__(SB)								
  :-1			0xe26e5c		cc			INT $__subsystem__(SB)								
  :-1			0xe26e5d		cc			INT $__subsystem__(SB)								
  :-1			0xe26e5e		cc			INT $__subsystem__(SB)								
  :-1			0xe26e5f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).getDockCancel.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/dock.go
  dock.go:214		0xe26e60		493b6610		CMPQ SP, 0x10(R14)								
  dock.go:214		0xe26e64		762f			JBE 0xe26e95									
  dock.go:214		0xe26e66		55			PUSHQ BP									
  dock.go:214		0xe26e67		4889e5			MOVQ SP, BP									
  dock.go:214		0xe26e6a		4883ec10		SUBQ $__major_os_version__+10(SB), SP						
  dock.go:214		0xe26e6e		4d8b6620		MOVQ 0x20(R14), R12								
  dock.go:214		0xe26e72		4d85e4			TESTQ R12, R12									
  dock.go:214		0xe26e75		7525			JNE 0xe26e9c									
  dock.go:214		0xe26e77		488b4208		MOVQ 0x8(DX), AX								
  mutex.go:221		0xe26e7b		bbffffffff		MOVL $-0x1, BX									
  mutex.go:221		0xe26e80		f00fc118		LOCK XADDL BX, 0(AX)								
  mutex.go:221		0xe26e84		ffcb			DECL BX										
  mutex.go:222		0xe26e86		85db			TESTL BX, BX									
  mutex.go:222		0xe26e88		7405			JE 0xe26e8f									
  mutex.go:225		0xe26e8a		e8710e66ff		CALL sync.(*Mutex).unlockSlow(SB)						
  dock.go:214		0xe26e8f		4883c410		ADDQ $__major_os_version__+10(SB), SP						
  dock.go:214		0xe26e93		5d			POPQ BP										
  dock.go:214		0xe26e94		c3			RET										
  dock.go:214		0xe26e95		e8c6f564ff		CALL runtime.morestack.abi0(SB)							
  dock.go:214		0xe26e9a		ebc4			JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).getDockCancel.deferwrap1(SB)	
  dock.go:214		0xe26e9c		4c8d6c2420		LEAQ 0x20(SP), R13								
  dock.go:214		0xe26ea1		4d392c24		CMPQ 0(R12), R13								
  dock.go:214		0xe26ea5		75d0			JNE 0xe26e77									
  dock.go:214		0xe26ea7		49892424		MOVQ SP, 0(R12)									
  dock.go:214		0xe26eab		ebca			JMP 0xe26e77									
  :-1			0xe26ead		cc			INT $__subsystem__(SB)								
  :-1			0xe26eae		cc			INT $__subsystem__(SB)								
  :-1			0xe26eaf		cc			INT $__subsystem__(SB)								
  :-1			0xe26eb0		cc			INT $__subsystem__(SB)								
  :-1			0xe26eb1		cc			INT $__subsystem__(SB)								
  :-1			0xe26eb2		cc			INT $__subsystem__(SB)								
  :-1			0xe26eb3		cc			INT $__subsystem__(SB)								
  :-1			0xe26eb4		cc			INT $__subsystem__(SB)								
  :-1			0xe26eb5		cc			INT $__subsystem__(SB)								
  :-1			0xe26eb6		cc			INT $__subsystem__(SB)								
  :-1			0xe26eb7		cc			INT $__subsystem__(SB)								
  :-1			0xe26eb8		cc			INT $__subsystem__(SB)								
  :-1			0xe26eb9		cc			INT $__subsystem__(SB)								
  :-1			0xe26eba		cc			INT $__subsystem__(SB)								
  :-1			0xe26ebb		cc			INT $__subsystem__(SB)								
  :-1			0xe26ebc		cc			INT $__subsystem__(SB)								
  :-1			0xe26ebd		cc			INT $__subsystem__(SB)								
  :-1			0xe26ebe		cc			INT $__subsystem__(SB)								
  :-1			0xe26ebf		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).claimDockIfParked(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/dock.go
  dock.go:222		0xe26ec0		4c8d6424c0		LEAQ -0x40(SP), R12									
  dock.go:222		0xe26ec5		4d3b6610		CMPQ R12, 0x10(R14)									
  dock.go:222		0xe26ec9		0f86ff030000		JBE 0xe272ce										
  dock.go:222		0xe26ecf		55			PUSHQ BP										
  dock.go:222		0xe26ed0		4889e5			MOVQ SP, BP										
  dock.go:222		0xe26ed3		4881ecb8000000		SUBQ $.file+107(SB), SP									
  dock.go:222		0xe26eda		4889bc24e0000000	MOVQ DI, 0xe0(SP)									
  dock.go:222		0xe26ee2		66440fd6bc24b0000000	MOVQ X15, 0xb0(SP)									
  dock.go:12		0xe26eec		48898424c8000000	MOVQ AX, 0xc8(SP)									
  dock.go:12		0xe26ef4		48898c24d8000000	MOVQ CX, 0xd8(SP)									
  dock.go:12		0xe26efc		48899c24d0000000	MOVQ BX, 0xd0(SP)									
  dock.go:222		0xe26f04		c644243f00		MOVB $0x0, 0x3f(SP)									
  dock.go:223		0xe26f09		4889f8			MOVQ DI, AX										
  dock.go:223		0xe26f0c		4889f3			MOVQ SI, BX										
  dock.go:223		0xe26f0f		e8acba6bff		CALL strings.TrimSpace(SB)								
  dock.go:12		0xe26f14		4885db			TESTQ BX, BX										
  dock.go:12		0xe26f17		0f8496030000		JE 0xe272b3										
  dock.go:12		0xe26f1d		0f1f00			NOPL 0(AX)										
  strings.go:17		0xe26f20		4883fb02		CMPQ BX, $__minor_os_version__+1(SB)							
  strings.go:17		0xe26f24		7c0a			JL 0xe26f30										
  strings.go:17		0xe26f26		6681385050		CMPW 0(AX), $__size_of_stack_commit__+16464(SB)						
  strings.go:17		0xe26f2b		0f94c2			SETE DL											
  strings.go:17		0xe26f2e		eb02			JMP 0xe26f32										
  strings.go:17		0xe26f30		31d2			XORL DX, DX										
  strings.go:462	0xe26f32		84d2			TESTL DL, DL										
  dock.go:224		0xe26f34		0f8479030000		JE 0xe272b3										
  dock.go:223		0xe26f3a		48895c2448		MOVQ BX, 0x48(SP)									
  dock.go:223		0xe26f3f		4889442458		MOVQ AX, 0x58(SP)									
  dock.go:227		0xe26f44		488b9424c8000000	MOVQ 0xc8(SP), DX									
  dock.go:227		0xe26f4c		488d7258		LEAQ 0x58(DX), SI									
  dock.go:223		0xe26f50		4889c1			MOVQ AX, CX										
  dock.go:227		0xe26f53		31c0			XORL AX, AX										
  dock.go:227		0xe26f55		41b801000000		MOVL $__minor_os_version__(SB), R8							
  dock.go:227		0xe26f5b		f0440fb14258		LOCK CMPXCHGL R8, 0x58(DX)								
  dock.go:227		0xe26f61		410f94c0		SETE R8											
  mutex.go:85		0xe26f65		4584c0			TESTL R8, R8										
  mutex.go:85		0xe26f68		7524			JNE 0xe26f8e										
  dock.go:227		0xe26f6a		4889742460		MOVQ SI, 0x60(SP)									
  mutex.go:92		0xe26f6f		4889f0			MOVQ SI, AX										
  mutex.go:92		0xe26f72		e8a90a66ff		CALL sync.(*Mutex).lockSlow(SB)								
  dock.go:229		0xe26f77		488b4c2458		MOVQ 0x58(SP), CX									
  dock.go:229		0xe26f7c		488b9424c8000000	MOVQ 0xc8(SP), DX									
  dock.go:229		0xe26f84		488b5c2448		MOVQ 0x48(SP), BX									
  dock.go:228		0xe26f89		488b742460		MOVQ 0x60(SP), SI									
  dock.go:228		0xe26f8e		4c8d058b030000		LEAQ CAS-Backend/pkg/diapdu.(*TaskScheduler).claimDockIfParked.deferwrap1(SB), R8	
  dock.go:228		0xe26f95		4c898424a0000000	MOVQ R8, 0xa0(SP)									
  dock.go:228		0xe26f9d		4889b424a8000000	MOVQ SI, 0xa8(SP)									
  dock.go:228		0xe26fa5		488db424a0000000	LEAQ 0xa0(SP), SI									
  dock.go:228		0xe26fad		4889b424b0000000	MOVQ SI, 0xb0(SP)									
  dock.go:228		0xe26fb5		c644243f01		MOVB $__minor_os_version__(SB), 0x3f(SP)						
  dock.go:229		0xe26fba		488b7260		MOVQ 0x60(DX), SI									
  dock.go:229		0xe26fbe		488d055b6b2500		LEAQ runtime.types+625440(SB), AX							
  dock.go:229		0xe26fc5		4889df			MOVQ BX, DI										
  dock.go:229		0xe26fc8		4889f3			MOVQ SI, BX										
  dock.go:229		0xe26fcb		e8706c64ff		CALL runtime.mapaccess2_faststr(SB)							
  dock.go:229		0xe26fd0		488b4808		MOVQ 0x8(AX), CX									
  dock.go:229		0xe26fd4		48894c2440		MOVQ CX, 0x40(SP)									
  dock.go:229		0xe26fd9		488b00			MOVQ 0(AX), AX										
  dock.go:229		0xe26fdc		4889442450		MOVQ AX, 0x50(SP)									
  dock.go:229		0xe26fe1		84db			TESTL BL, BL										
  dock.go:229		0xe26fe3		744b			JE 0xe27030										
  dock.go:229		0xe26fe5		4885c9			TESTQ CX, CX										
  dock.go:229		0xe26fe8		743a			JE 0xe27024										
  dock.go:229		0xe26fea		488b9424d8000000	MOVQ 0xd8(SP), DX									
  dock.go:229		0xe26ff2		4839ca			CMPQ DX, CX										
  dock.go:229		0xe26ff5		7407			JE 0xe26ffe										
  dock.go:229		0xe26ff7		bb01000000		MOVL $__minor_os_version__(SB), BX							
  dock.go:229		0xe26ffc		eb42			JMP 0xe27040										
  dock.go:229		0xe26ffe		488b9c24d0000000	MOVQ 0xd0(SP), BX									
  dock.go:229		0xe27006		e855be5dff		CALL runtime.memequal(SB)								
  dock.go:229		0xe2700b		83f001			XORL $__minor_os_version__(SB), AX							
  dock.go:230		0xe2700e		488b4c2440		MOVQ 0x40(SP), CX									
  dock.go:233		0xe27013		488b9424d8000000	MOVQ 0xd8(SP), DX									
  dock.go:229		0xe2701b		89c3			MOVL AX, BX										
  dock.go:230		0xe2701d		488b442450		MOVQ 0x50(SP), AX									
  dock.go:229		0xe27022		eb1c			JMP 0xe27040										
  dock.go:233		0xe27024		488b9424d8000000	MOVQ 0xd8(SP), DX									
  dock.go:233		0xe2702c		31db			XORL BX, BX										
  dock.go:229		0xe2702e		eb10			JMP 0xe27040										
  dock.go:233		0xe27030		488b9424d8000000	MOVQ 0xd8(SP), DX									
  dock.go:233		0xe27038		31db			XORL BX, BX										
  dock.go:233		0xe2703a		660f1f440000		NOPW 0(AX)(AX*1)									
  dock.go:229		0xe27040		84db			TESTL BL, BL										
  dock.go:229		0xe27042		0f8599010000		JNE 0xe271e1										
  dock.go:233		0xe27048		488b9424c8000000	MOVQ 0xc8(SP), DX									
  dock.go:233		0xe27050		488b5a60		MOVQ 0x60(DX), BX									
  dock.go:233		0xe27054		488d05c56a2500		LEAQ runtime.types+625440(SB), AX							
  dock.go:233		0xe2705b		488b4c2458		MOVQ 0x58(SP), CX									
  dock.go:233		0xe27060		488b7c2448		MOVQ 0x48(SP), DI									
  dock.go:233		0xe27065		e8b66f64ff		CALL runtime.mapassign_faststr(SB)							
  dock.go:233		0xe2706a		488bbc24d8000000	MOVQ 0xd8(SP), DI									
  dock.go:233		0xe27072		48897808		MOVQ DI, 0x8(AX)									
  dock.go:233		0xe27076		833dd36a730200		CMPL runtime.writeBarrier(SB), $0x0							
  dock.go:233		0xe2707d		750a			JNE 0xe27089										
  dock.go:233		0xe2707f		488b8c24d0000000	MOVQ 0xd0(SP), CX									
  dock.go:233		0xe27087		eb17			JMP 0xe270a0										
  dock.go:233		0xe27089		e8b21365ff		CALL runtime.gcWriteBarrier2(SB)							
  dock.go:233		0xe2708e		488b8c24d0000000	MOVQ 0xd0(SP), CX									
  dock.go:233		0xe27096		49890b			MOVQ CX, 0(R11)										
  dock.go:233		0xe27099		488b10			MOVQ 0(AX), DX										
  dock.go:233		0xe2709c		49895308		MOVQ DX, 0x8(R11)									
  dock.go:233		0xe270a0		488908			MOVQ CX, 0(AX)										
  dock.go:234		0xe270a3		488b9424c8000000	MOVQ 0xc8(SP), DX									
  dock.go:234		0xe270ab		488b5a68		MOVQ 0x68(DX), BX									
  dock.go:234		0xe270af		488d050a672500		LEAQ runtime.types+624576(SB), AX							
  dock.go:234		0xe270b6		e885d25eff		CALL runtime.mapaccess1_faststr(SB)							
  dock.go:234		0xe270bb		48833800		CMPQ 0(AX), $0x0									
  dock.go:234		0xe270bf		90			NOPL											
  dock.go:234		0xe270c0		7575			JNE 0xe27137										
  dock.go:235		0xe270c2		488d05b7c52a00		LEAQ runtime.types+976512(SB), AX							
  dock.go:235		0xe270c9		e8d2a65eff		CALL runtime.newobject(SB)								
  dock.go:235		0xe270ce		4889442468		MOVQ AX, 0x68(SP)									
  dock.go:235		0xe270d3		48c70000000000		MOVQ $0x0, 0(AX)									
  dock.go:235		0xe270da		48c7401800000000	MOVQ $0x0, 0x18(AX)									
  dock.go:235		0xe270e2		488b8c24c8000000	MOVQ 0xc8(SP), CX									
  dock.go:235		0xe270ea		488b5968		MOVQ 0x68(CX), BX									
  dock.go:235		0xe270ee		488bbc24d8000000	MOVQ 0xd8(SP), DI									
  dock.go:235		0xe270f6		488d05c3662500		LEAQ runtime.types+624576(SB), AX							
  dock.go:235		0xe270fd		488b8c24d0000000	MOVQ 0xd0(SP), CX									
  dock.go:235		0xe27105		e8166f64ff		CALL runtime.mapassign_faststr(SB)							
  dock.go:235		0xe2710a		8400			TESTB AL, 0(AX)										
  dock.go:235		0xe2710c		833d3d6a730200		CMPL runtime.writeBarrier(SB), $0x0							
  dock.go:235		0xe27113		750b			JNE 0xe27120										
  dock.go:235		0xe27115		488b542468		MOVQ 0x68(SP), DX									
  dock.go:235		0xe2711a		eb18			JMP 0xe27134										
  dock.go:235		0xe2711c		0f1f4000		NOPL 0(AX)										
  dock.go:235		0xe27120		e81b1365ff		CALL runtime.gcWriteBarrier2(SB)							
  dock.go:235		0xe27125		488b542468		MOVQ 0x68(SP), DX									
  dock.go:235		0xe2712a		498913			MOVQ DX, 0(R11)										
  dock.go:235		0xe2712d		488b30			MOVQ 0(AX), SI										
  dock.go:235		0xe27130		49897308		MOVQ SI, 0x8(R11)									
  dock.go:235		0xe27134		488910			MOVQ DX, 0(AX)										
  dock.go:237		0xe27137		488b9424c8000000	MOVQ 0xc8(SP), DX									
  dock.go:237		0xe2713f		488b5a68		MOVQ 0x68(DX), BX									
  dock.go:237		0xe27143		488d0576662500		LEAQ runtime.types+624576(SB), AX							
  dock.go:237		0xe2714a		488b8c24d0000000	MOVQ 0xd0(SP), CX									
  dock.go:237		0xe27152		488bbc24d8000000	MOVQ 0xd8(SP), DI									
  dock.go:237		0xe2715a		e8e1d15eff		CALL runtime.mapaccess1_faststr(SB)							
  dock.go:237		0xe2715f		488b10			MOVQ 0(AX), DX										
  dock.go:237		0xe27162		488b742448		MOVQ 0x48(SP), SI									
  dock.go:237		0xe27167		48897208		MOVQ SI, 0x8(DX)									
  dock.go:237		0xe2716b		833dde69730200		CMPL runtime.writeBarrier(SB), $0x0							
  dock.go:237		0xe27172		750c			JNE 0xe27180										
  dock.go:237		0xe27174		488b742458		MOVQ 0x58(SP), SI									
  dock.go:237		0xe27179		eb19			JMP 0xe27194										
  dock.go:237		0xe2717b		0f1f440000		NOPL 0(AX)(AX*1)									
  dock.go:237		0xe27180		e8bb1265ff		CALL runtime.gcWriteBarrier2(SB)							
  dock.go:237		0xe27185		488b742458		MOVQ 0x58(SP), SI									
  dock.go:237		0xe2718a		498933			MOVQ SI, 0(R11)										
  dock.go:237		0xe2718d		4c8b02			MOVQ 0(DX), R8										
  dock.go:237		0xe27190		4d894308		MOVQ R8, 0x8(R11)									
  dock.go:237		0xe27194		488932			MOVQ SI, 0(DX)										
  dock.go:238		0xe27197		488b9424c8000000	MOVQ 0xc8(SP), DX									
  dock.go:238		0xe2719f		488b5a68		MOVQ 0x68(DX), BX									
  dock.go:238		0xe271a3		488d0516662500		LEAQ runtime.types+624576(SB), AX							
  dock.go:238		0xe271aa		488b8c24d0000000	MOVQ 0xd0(SP), CX									
  dock.go:238		0xe271b2		488bbc24d8000000	MOVQ 0xd8(SP), DI									
  dock.go:238		0xe271ba		e881d15eff		CALL runtime.mapaccess1_faststr(SB)							
  dock.go:238		0xe271bf		488b10			MOVQ 0(AX), DX										
  dock.go:238		0xe271c2		c6421000		MOVB $0x0, 0x10(DX)									
  dock.go:239		0xe271c6		c644243f00		MOVB $0x0, 0x3f(SP)									
  dock.go:239		0xe271cb		488b9424b0000000	MOVQ 0xb0(SP), DX									
  dock.go:239		0xe271d3		488b32			MOVQ 0(DX), SI										
  dock.go:239		0xe271d6		ffd6			CALL SI											
  dock.go:239		0xe271d8		4881c4b8000000		ADDQ $.file+107(SB), SP									
  dock.go:239		0xe271df		5d			POPQ BP											
  dock.go:239		0xe271e0		c3			RET											
  dock.go:230		0xe271e1		440f117c2470		MOVUPS X15, 0x70(SP)									
  dock.go:230		0xe271e7		440f11bc2480000000	MOVUPS X15, 0x80(SP)									
  dock.go:230		0xe271f0		440f11bc2490000000	MOVUPS X15, 0x90(SP)									
  dock.go:230		0xe271f9		488b442458		MOVQ 0x58(SP), AX									
  dock.go:230		0xe271fe		488b5c2448		MOVQ 0x48(SP), BX									
  dock.go:230		0xe27203		e8182f64ff		CALL runtime.convTstring(SB)								
  dock.go:230		0xe27208		488d0d11b72100		LEAQ runtime.types+383264(SB), CX							
  dock.go:230		0xe2720f		48894c2470		MOVQ CX, 0x70(SP)									
  dock.go:230		0xe27214		4889442478		MOVQ AX, 0x78(SP)									
  dock.go:230		0xe27219		488b442450		MOVQ 0x50(SP), AX									
  dock.go:230		0xe2721e		488b5c2440		MOVQ 0x40(SP), BX									
  dock.go:230		0xe27223		e8f82e64ff		CALL runtime.convTstring(SB)								
  dock.go:230		0xe27228		488d0df1b62100		LEAQ runtime.types+383264(SB), CX							
  dock.go:230		0xe2722f		48898c2480000000	MOVQ CX, 0x80(SP)									
  dock.go:230		0xe27237		4889842488000000	MOVQ AX, 0x88(SP)									
  dock.go:230		0xe2723f		488b8424d0000000	MOVQ 0xd0(SP), AX									
  dock.go:230		0xe27247		488b9c24d8000000	MOVQ 0xd8(SP), BX									
  dock.go:230		0xe2724f		e8cc2e64ff		CALL runtime.convTstring(SB)								
  dock.go:230		0xe27254		488d0dc5b62100		LEAQ runtime.types+383264(SB), CX							
  dock.go:230		0xe2725b		48898c2490000000	MOVQ CX, 0x90(SP)									
  dock.go:230		0xe27263		4889842498000000	MOVQ AX, 0x98(SP)									
  print.go:233		0xe2726b		488b1d0eae6e02		MOVQ os.Stdout(SB), BX									
  print.go:233		0xe27272		488d0567480402		LEAQ go:itab.*os.File,io.Writer(SB), AX							
  print.go:233		0xe27279		488d0d34d93700		LEAQ go:string.*+247468(SB), CX								
  print.go:233		0xe27280		bf40000000		MOVL $__major_os_version__+58(SB), DI							
  print.go:233		0xe27285		488d742470		LEAQ 0x70(SP), SI									
  print.go:233		0xe2728a		41b803000000		MOVL $__subsystem__(SB), R8								
  print.go:233		0xe27290		4d89c1			MOVQ R8, R9										
  print.go:233		0xe27293		e8887f6fff		CALL fmt.Fprintf(SB)									
  dock.go:231		0xe27298		c644243f00		MOVB $0x0, 0x3f(SP)									
  dock.go:231		0xe2729d		488b9424b0000000	MOVQ 0xb0(SP), DX									
  dock.go:231		0xe272a5		488b0a			MOVQ 0(DX), CX										
  dock.go:231		0xe272a8		ffd1			CALL CX											
  dock.go:231		0xe272aa		4881c4b8000000		ADDQ $.file+107(SB), SP									
  dock.go:231		0xe272b1		5d			POPQ BP											
  dock.go:231		0xe272b2		c3			RET											
  dock.go:225		0xe272b3		4881c4b8000000		ADDQ $.file+107(SB), SP									
  dock.go:225		0xe272ba		5d			POPQ BP											
  dock.go:225		0xe272bb		c3			RET											
  dock.go:225		0xe272bc		0f1f4000		NOPL 0(AX)										
  dock.go:225		0xe272c0		e8bb2861ff		CALL runtime.deferreturn(SB)								
  dock.go:225		0xe272c5		4881c4b8000000		ADDQ $.file+107(SB), SP									
  dock.go:225		0xe272cc		5d			POPQ BP											
  dock.go:225		0xe272cd		c3			RET											
  dock.go:222		0xe272ce		4889442408		MOVQ AX, 0x8(SP)									
  dock.go:222		0xe272d3		48895c2410		MOVQ BX, 0x10(SP)									
  dock.go:222		0xe272d8		48894c2418		MOVQ CX, 0x18(SP)									
  dock.go:222		0xe272dd		48897c2420		MOVQ DI, 0x20(SP)									
  dock.go:222		0xe272e2		4889742428		MOVQ SI, 0x28(SP)									
  dock.go:222		0xe272e7		e8f4f164ff		CALL runtime.morestack_noctxt.abi0(SB)							
  dock.go:222		0xe272ec		488b442408		MOVQ 0x8(SP), AX									
  dock.go:222		0xe272f1		488b5c2410		MOVQ 0x10(SP), BX									
  dock.go:222		0xe272f6		488b4c2418		MOVQ 0x18(SP), CX									
  dock.go:222		0xe272fb		488b7c2420		MOVQ 0x20(SP), DI									
  dock.go:222		0xe27300		488b742428		MOVQ 0x28(SP), SI									
  dock.go:222		0xe27305		e9b6fbffff		JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).claimDockIfParked(SB)			
  :-1			0xe2730a		cc			INT $__subsystem__(SB)									
  :-1			0xe2730b		cc			INT $__subsystem__(SB)									
  :-1			0xe2730c		cc			INT $__subsystem__(SB)									
  :-1			0xe2730d		cc			INT $__subsystem__(SB)									
  :-1			0xe2730e		cc			INT $__subsystem__(SB)									
  :-1			0xe2730f		cc			INT $__subsystem__(SB)									
  :-1			0xe27310		cc			INT $__subsystem__(SB)									
  :-1			0xe27311		cc			INT $__subsystem__(SB)									
  :-1			0xe27312		cc			INT $__subsystem__(SB)									
  :-1			0xe27313		cc			INT $__subsystem__(SB)									
  :-1			0xe27314		cc			INT $__subsystem__(SB)									
  :-1			0xe27315		cc			INT $__subsystem__(SB)									
  :-1			0xe27316		cc			INT $__subsystem__(SB)									
  :-1			0xe27317		cc			INT $__subsystem__(SB)									
  :-1			0xe27318		cc			INT $__subsystem__(SB)									
  :-1			0xe27319		cc			INT $__subsystem__(SB)									
  :-1			0xe2731a		cc			INT $__subsystem__(SB)									
  :-1			0xe2731b		cc			INT $__subsystem__(SB)									
  :-1			0xe2731c		cc			INT $__subsystem__(SB)									
  :-1			0xe2731d		cc			INT $__subsystem__(SB)									
  :-1			0xe2731e		cc			INT $__subsystem__(SB)									
  :-1			0xe2731f		cc			INT $__subsystem__(SB)									

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).claimDockIfParked.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/dock.go
  dock.go:228		0xe27320		493b6610		CMPQ SP, 0x10(R14)								
  dock.go:228		0xe27324		762f			JBE 0xe27355									
  dock.go:228		0xe27326		55			PUSHQ BP									
  dock.go:228		0xe27327		4889e5			MOVQ SP, BP									
  dock.go:228		0xe2732a		4883ec10		SUBQ $__major_os_version__+10(SB), SP						
  dock.go:228		0xe2732e		4d8b6620		MOVQ 0x20(R14), R12								
  dock.go:228		0xe27332		4d85e4			TESTQ R12, R12									
  dock.go:228		0xe27335		7525			JNE 0xe2735c									
  dock.go:228		0xe27337		488b4208		MOVQ 0x8(DX), AX								
  mutex.go:221		0xe2733b		bbffffffff		MOVL $-0x1, BX									
  mutex.go:221		0xe27340		f00fc118		LOCK XADDL BX, 0(AX)								
  mutex.go:221		0xe27344		ffcb			DECL BX										
  mutex.go:222		0xe27346		85db			TESTL BX, BX									
  mutex.go:222		0xe27348		7405			JE 0xe2734f									
  mutex.go:225		0xe2734a		e8b10966ff		CALL sync.(*Mutex).unlockSlow(SB)						
  dock.go:228		0xe2734f		4883c410		ADDQ $__major_os_version__+10(SB), SP						
  dock.go:228		0xe27353		5d			POPQ BP										
  dock.go:228		0xe27354		c3			RET										
  dock.go:228		0xe27355		e806f164ff		CALL runtime.morestack.abi0(SB)							
  dock.go:228		0xe2735a		ebc4			JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).claimDockIfParked.deferwrap1(SB)	
  dock.go:228		0xe2735c		4c8d6c2420		LEAQ 0x20(SP), R13								
  dock.go:228		0xe27361		4d392c24		CMPQ 0(R12), R13								
  dock.go:228		0xe27365		75d0			JNE 0xe27337									
  dock.go:228		0xe27367		49892424		MOVQ SP, 0(R12)									
  dock.go:228		0xe2736b		ebca			JMP 0xe27337									
  :-1			0xe2736d		cc			INT $__subsystem__(SB)								
  :-1			0xe2736e		cc			INT $__subsystem__(SB)								
  :-1			0xe2736f		cc			INT $__subsystem__(SB)								
  :-1			0xe27370		cc			INT $__subsystem__(SB)								
  :-1			0xe27371		cc			INT $__subsystem__(SB)								
  :-1			0xe27372		cc			INT $__subsystem__(SB)								
  :-1			0xe27373		cc			INT $__subsystem__(SB)								
  :-1			0xe27374		cc			INT $__subsystem__(SB)								
  :-1			0xe27375		cc			INT $__subsystem__(SB)								
  :-1			0xe27376		cc			INT $__subsystem__(SB)								
  :-1			0xe27377		cc			INT $__subsystem__(SB)								
  :-1			0xe27378		cc			INT $__subsystem__(SB)								
  :-1			0xe27379		cc			INT $__subsystem__(SB)								
  :-1			0xe2737a		cc			INT $__subsystem__(SB)								
  :-1			0xe2737b		cc			INT $__subsystem__(SB)								
  :-1			0xe2737c		cc			INT $__subsystem__(SB)								
  :-1			0xe2737d		cc			INT $__subsystem__(SB)								
  :-1			0xe2737e		cc			INT $__subsystem__(SB)								
  :-1			0xe2737f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.formatDockTaskID(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/dock.go
  dock.go:241		0xe27380		493b6610		CMPQ SP, 0x10(R14)				
  dock.go:241		0xe27384		0f8630010000		JBE 0xe274ba					
  dock.go:241		0xe2738a		55			PUSHQ BP					
  dock.go:241		0xe2738b		4889e5			MOVQ SP, BP					
  dock.go:241		0xe2738e		4883ec60		SUBQ $.file+19(SB), SP				
  time.go:181		0xe27392		48898c2480000000	MOVQ CX, 0x80(SP)				
  time.go:181		0xe2739a		48895c2478		MOVQ BX, 0x78(SP)				
  time.go:181		0xe2739f		4889442470		MOVQ AX, 0x70(SP)				
  dock.go:242		0xe273a4		e8f76c68ff		CALL time.Now(SB)				
  time.go:181		0xe273a9		480fbae03f		BTQ $__major_os_version__+57(SB), AX		
  time.go:181		0xe273ae		731a			JAE 0xe273ca					
  time.go:182		0xe273b0		4889c1			MOVQ AX, CX					
  time.go:182		0xe273b3		48d1e0			SHLQ $__minor_os_version__(SB), AX		
  time.go:182		0xe273b6		48c1e81f		SHRQ $__major_os_version__+25(SB), AX		
  time.go:182		0xe273ba		48ba807fb1d70d000000	MOVQ $0xdd7b17f80, DX				
  time.go:182		0xe273c4		488d1c02		LEAQ 0(DX)(AX*1), BX				
  time.go:188		0xe273c8		eb03			JMP 0xe273cd					
  time.go:176		0xe273ca		4889c1			MOVQ AX, CX					
  time.go:1270		0xe273cd		4869d300ca9a3b		IMULQ $0x3b9aca00, BX, DX			
  time.go:176		0xe273d4		81e1ffffff3f		ANDL $0x3fffffff, CX				
  time.go:1270		0xe273da		4863c9			MOVSXD CX, CX					
  time.go:1270		0xe273dd		4801d1			ADDQ DX, CX					
  time.go:1270		0xe273e0		48ba00001a3deb03b2a1	MOVQ $0xa1b203eb3d1a0000, DX			
  time.go:1270		0xe273ea		488d340a		LEAQ 0(DX)(CX*1), SI				
  dock.go:242		0xe273ee		48b8cc525a9ba02fb844	MOVQ $0x44b82fa09b5a52cc, AX			
  dock.go:242		0xe273f8		48f7ee			IMULQ SI					
  dock.go:242		0xe273fb		48c1fa1c		SARQ $__major_os_version__+22(SB), DX		
  dock.go:242		0xe273ff		48c1fe3f		SARQ $__major_os_version__+57(SB), SI		
  dock.go:242		0xe27403		4829f2			SUBQ SI, DX					
  dock.go:242		0xe27406		4869d200ca9a3b		IMULQ $0x3b9aca00, DX, DX			
  dock.go:242		0xe2740d		4829d1			SUBQ DX, CX					
  dock.go:242		0xe27410		48ba00001a3deb03b2a1	MOVQ $0xa1b203eb3d1a0000, DX			
  dock.go:242		0xe2741a		4801d1			ADDQ DX, CX					
  dock.go:242		0xe2741d		48894c2428		MOVQ CX, 0x28(SP)				
  dock.go:242		0xe27422		440f117c2430		MOVUPS X15, 0x30(SP)				
  dock.go:242		0xe27428		440f117c2440		MOVUPS X15, 0x40(SP)				
  dock.go:242		0xe2742e		440f117c2450		MOVUPS X15, 0x50(SP)				
  dock.go:242		0xe27434		488b442470		MOVQ 0x70(SP), AX				
  dock.go:242		0xe27439		488b5c2478		MOVQ 0x78(SP), BX				
  dock.go:242		0xe2743e		6690			NOPW						
  dock.go:242		0xe27440		e8db2c64ff		CALL runtime.convTstring(SB)			
  dock.go:242		0xe27445		488d0dd4b42100		LEAQ runtime.types+383264(SB), CX		
  dock.go:242		0xe2744c		48894c2430		MOVQ CX, 0x30(SP)				
  dock.go:242		0xe27451		4889442438		MOVQ AX, 0x38(SP)				
  dock.go:242		0xe27456		488b842480000000	MOVQ 0x80(SP), AX				
  dock.go:242		0xe2745e		6690			NOPW						
  dock.go:242		0xe27460		e83b2c64ff		CALL runtime.convT64(SB)			
  dock.go:242		0xe27465		488d0df4b62100		LEAQ runtime.types+383840(SB), CX		
  dock.go:242		0xe2746c		48894c2440		MOVQ CX, 0x40(SP)				
  dock.go:242		0xe27471		4889442448		MOVQ AX, 0x48(SP)				
  dock.go:242		0xe27476		488b442428		MOVQ 0x28(SP), AX				
  dock.go:242		0xe2747b		0f1f440000		NOPL 0(AX)(AX*1)				
  dock.go:242		0xe27480		e81b2c64ff		CALL runtime.convT64(SB)			
  dock.go:242		0xe27485		488d0d54b62100		LEAQ runtime.types+383712(SB), CX		
  dock.go:242		0xe2748c		48894c2450		MOVQ CX, 0x50(SP)				
  dock.go:242		0xe27491		4889442458		MOVQ AX, 0x58(SP)				
  dock.go:242		0xe27496		488d055b183500		LEAQ go:string.*+67568(SB), AX			
  dock.go:242		0xe2749d		bb0d000000		MOVL $__major_os_version__+7(SB), BX		
  dock.go:242		0xe274a2		488d4c2430		LEAQ 0x30(SP), CX				
  dock.go:242		0xe274a7		bf03000000		MOVL $__subsystem__(SB), DI			
  dock.go:242		0xe274ac		4889fe			MOVQ DI, SI					
  dock.go:242		0xe274af		e88c7e6fff		CALL fmt.Sprintf(SB)				
  dock.go:242		0xe274b4		4883c460		ADDQ $.file+19(SB), SP				
  dock.go:242		0xe274b8		5d			POPQ BP						
  dock.go:242		0xe274b9		c3			RET						
  dock.go:241		0xe274ba		4889442408		MOVQ AX, 0x8(SP)				
  dock.go:241		0xe274bf		48895c2410		MOVQ BX, 0x10(SP)				
  dock.go:241		0xe274c4		48894c2418		MOVQ CX, 0x18(SP)				
  dock.go:241		0xe274c9		e812f064ff		CALL runtime.morestack_noctxt.abi0(SB)		
  dock.go:241		0xe274ce		488b442408		MOVQ 0x8(SP), AX				
  dock.go:241		0xe274d3		488b5c2410		MOVQ 0x10(SP), BX				
  dock.go:241		0xe274d8		488b4c2418		MOVQ 0x18(SP), CX				
  dock.go:241		0xe274dd		0f1f00			NOPL 0(AX)					
  dock.go:241		0xe274e0		e99bfeffff		JMP CAS-Backend/pkg/diapdu.formatDockTaskID(SB)	
  :-1			0xe274e5		cc			INT $__subsystem__(SB)				
  :-1			0xe274e6		cc			INT $__subsystem__(SB)				
  :-1			0xe274e7		cc			INT $__subsystem__(SB)				
  :-1			0xe274e8		cc			INT $__subsystem__(SB)				
  :-1			0xe274e9		cc			INT $__subsystem__(SB)				
  :-1			0xe274ea		cc			INT $__subsystem__(SB)				
  :-1			0xe274eb		cc			INT $__subsystem__(SB)				
  :-1			0xe274ec		cc			INT $__subsystem__(SB)				
  :-1			0xe274ed		cc			INT $__subsystem__(SB)				
  :-1			0xe274ee		cc			INT $__subsystem__(SB)				
  :-1			0xe274ef		cc			INT $__subsystem__(SB)				
  :-1			0xe274f0		cc			INT $__subsystem__(SB)				
  :-1			0xe274f1		cc			INT $__subsystem__(SB)				
  :-1			0xe274f2		cc			INT $__subsystem__(SB)				
  :-1			0xe274f3		cc			INT $__subsystem__(SB)				
  :-1			0xe274f4		cc			INT $__subsystem__(SB)				
  :-1			0xe274f5		cc			INT $__subsystem__(SB)				
  :-1			0xe274f6		cc			INT $__subsystem__(SB)				
  :-1			0xe274f7		cc			INT $__subsystem__(SB)				
  :-1			0xe274f8		cc			INT $__subsystem__(SB)				
  :-1			0xe274f9		cc			INT $__subsystem__(SB)				
  :-1			0xe274fa		cc			INT $__subsystem__(SB)				
  :-1			0xe274fb		cc			INT $__subsystem__(SB)				
  :-1			0xe274fc		cc			INT $__subsystem__(SB)				
  :-1			0xe274fd		cc			INT $__subsystem__(SB)				
  :-1			0xe274fe		cc			INT $__subsystem__(SB)				
  :-1			0xe274ff		cc			INT $__subsystem__(SB)				

