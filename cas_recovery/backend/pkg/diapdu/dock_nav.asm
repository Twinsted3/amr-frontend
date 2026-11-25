TEXT CAS-Backend/pkg/diapdu.buildDockNavTasks(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/dock_nav.go
  dock_nav.go:24	0xe27500		4c8da42408ffffff	LEAQ 0xffffff08(SP), R12				
  dock_nav.go:24	0xe27508		4d3b6610		CMPQ R12, 0x10(R14)					
  dock_nav.go:24	0xe2750c		0f8674020000		JBE 0xe27786						
  dock_nav.go:24	0xe27512		55			PUSHQ BP						
  dock_nav.go:24	0xe27513		4889e5			MOVQ SP, BP						
  dock_nav.go:24	0xe27516		4881ec70010000		SUBQ $.file+291(SB), SP					
  dock_nav.go:24	0xe2751d		4889842480010000	MOVQ AX, 0x180(SP)					
  dock_nav.go:24	0xe27525		4889bc2498010000	MOVQ DI, 0x198(SP)					
  dock_nav.go:25	0xe2752d		4883fb02		CMPQ BX, $__minor_os_version__+1(SB)			
  dock_nav.go:25	0xe27531		7c42			JL 0xe27575						
  dock_nav.go:25	0xe27533		48899c2488010000	MOVQ BX, 0x188(SP)					
  dock_nav.go:25	0xe2753b		4889842480010000	MOVQ AX, 0x180(SP)					
  dock_nav.go:25	0xe27543		4889b424a0010000	MOVQ SI, 0x1a0(SP)					
  dock_nav.go:25	0xe2754b		4889bc2498010000	MOVQ DI, 0x198(SP)					
  dock_nav.go:28	0xe27553		488d4bff		LEAQ -0x1(BX), CX					
  dock_nav.go:28	0xe27557		48894c2448		MOVQ CX, 0x48(SP)					
  dock_nav.go:28	0xe2755c		488d051dac3100		LEAQ runtime.types+1429888(SB), AX			
  dock_nav.go:28	0xe27563		31db			XORL BX, BX						
  dock_nav.go:28	0xe27565		e8f6a564ff		CALL runtime.makeslice(SB)				
  dock_nav.go:28	0xe2756a		31c9			XORL CX, CX						
  dock_nav.go:30	0xe2756c		488b542448		MOVQ 0x48(SP), DX					
  dock_nav.go:30	0xe27571		31db			XORL BX, BX						
  dock_nav.go:29	0xe27573		eb47			JMP 0xe275bc						
  dock_nav.go:26	0xe27575		31c0			XORL AX, AX						
  dock_nav.go:26	0xe27577		31db			XORL BX, BX						
  dock_nav.go:26	0xe27579		4889d9			MOVQ BX, CX						
  dock_nav.go:26	0xe2757c		4881c470010000		ADDQ $.file+291(SB), SP					
  dock_nav.go:26	0xe27583		5d			POPQ BP							
  dock_nav.go:26	0xe27584		c3			RET							
  dock_nav.go:30	0xe27585		488db42480000000	LEAQ 0x80(SP), SI					
  dock_nav.go:30	0xe2758d		660f1f840000000000	NOPW 0(AX)(AX*1)					
  dock_nav.go:30	0xe27596		660f1f840000000000	NOPW 0(AX)(AX*1)					
  dock_nav.go:30	0xe2759f		90			NOPL							
  dock_nav.go:30	0xe275a0		48896c24f0		MOVQ BP, -0x10(SP)					
  dock_nav.go:30	0xe275a5		488d6c24f0		LEAQ -0x10(SP), BP					
  dock_nav.go:30	0xe275aa		e82d1865ff		CALL 0x478ddc						
  dock_nav.go:30	0xe275af		488b6d00		MOVQ 0(BP), BP						
  dock_nav.go:30	0xe275b3		4889ca			MOVQ CX, DX						
  dock_nav.go:30	0xe275b6		4c89c3			MOVQ R8, BX						
  dock_nav.go:29	0xe275b9		4c89c9			MOVQ R9, CX						
  dock_nav.go:29	0xe275bc		488b742448		MOVQ 0x48(SP), SI					
  dock_nav.go:29	0xe275c1		4839f1			CMPQ CX, SI						
  dock_nav.go:29	0xe275c4		0f8da2010000		JGE 0xe2776c						
  dock_nav.go:30	0xe275ca		4889542470		MOVQ DX, 0x70(SP)					
  dock_nav.go:30	0xe275cf		48895c2440		MOVQ BX, 0x40(SP)					
  dock_nav.go:30	0xe275d4		4889442478		MOVQ AX, 0x78(SP)					
  dock_nav.go:29	0xe275d9		48894c2450		MOVQ CX, 0x50(SP)					
  dock_nav.go:33	0xe275de		488b842498010000	MOVQ 0x198(SP), AX					
  dock_nav.go:33	0xe275e6		488b9c24a0010000	MOVQ 0x1a0(SP), BX					
  dock_nav.go:33	0xe275ee		e88dfdffff		CALL CAS-Backend/pkg/diapdu.formatDockTaskID(SB)	
  dock_nav.go:31	0xe275f3		488b542450		MOVQ 0x50(SP), DX					
  dock_nav.go:31	0xe275f8		4889d6			MOVQ DX, SI						
  dock_nav.go:31	0xe275fb		48c1e204		SHLQ $__subsystem__+1(SB), DX				
  dock_nav.go:32	0xe275ff		48ffc6			INCQ SI							
  dock_nav.go:37	0xe27602		488dbc2480000000	LEAQ 0x80(SP), DI					
  dock_nav.go:32	0xe2760a		4889f1			MOVQ SI, CX						
  dock_nav.go:37	0xe2760d		488d35ac840502		LEAQ CAS-Backend/pkg/diapdu..stmp_4(SB), SI		
  dock_nav.go:37	0xe27614		660f1f840000000000	NOPW 0(AX)(AX*1)					
  dock_nav.go:37	0xe2761d		0f1f00			NOPL 0(AX)						
  dock_nav.go:37	0xe27620		48896c24f0		MOVQ BP, -0x10(SP)					
  dock_nav.go:37	0xe27625		488d6c24f0		LEAQ -0x10(SP), BP					
  dock_nav.go:37	0xe2762a		e8ad1765ff		CALL 0x478ddc						
  dock_nav.go:37	0xe2762f		488b6d00		MOVQ 0(BP), BP						
  dock_nav.go:31	0xe27633		488bb42480010000	MOVQ 0x180(SP), SI					
  dock_nav.go:31	0xe2763b		488b3c16		MOVQ 0(SI)(DX*1), DI					
  dock_nav.go:31	0xe2763f		488b541608		MOVQ 0x8(SI)(DX*1), DX					
  dock_nav.go:31	0xe27644		4889bc2480000000	MOVQ DI, 0x80(SP)					
  dock_nav.go:31	0xe2764c		4889942488000000	MOVQ DX, 0x88(SP)					
  dock_nav.go:32	0xe27654		488b942488010000	MOVQ 0x188(SP), DX					
  dock_nav.go:32	0xe2765c		0f1f4000		NOPL 0(AX)						
  dock_nav.go:32	0xe27660		4839ca			CMPQ DX, CX						
  dock_nav.go:32	0xe27663		0f860f010000		JBE 0xe27778						
  dock_nav.go:32	0xe27669		48894c2468		MOVQ CX, 0x68(SP)					
  dock_nav.go:30	0xe2766e		4c8b442440		MOVQ 0x40(SP), R8					
  dock_nav.go:30	0xe27673		49ffc0			INCQ R8							
  dock_nav.go:32	0xe27676		4989c9			MOVQ CX, R9						
  dock_nav.go:32	0xe27679		48c1e104		SHLQ $__subsystem__+1(SB), CX				
  dock_nav.go:32	0xe2767d		4c8b140e		MOVQ 0(SI)(CX*1), R10					
  dock_nav.go:32	0xe27681		4c8b5c0e08		MOVQ 0x8(SI)(CX*1), R11					
  dock_nav.go:32	0xe27686		4c89942490000000	MOVQ R10, 0x90(SP)					
  dock_nav.go:32	0xe2768e		4c899c2498000000	MOVQ R11, 0x98(SP)					
  dock_nav.go:33	0xe27696		48898424a0000000	MOVQ AX, 0xa0(SP)					
  dock_nav.go:33	0xe2769e		48899c24a8000000	MOVQ BX, 0xa8(SP)					
  dock_nav.go:30	0xe276a6		488b4c2470		MOVQ 0x70(SP), CX					
  dock_nav.go:30	0xe276ab		4c39c1			CMPQ CX, R8						
  dock_nav.go:30	0xe276ae		7207			JB 0xe276b7						
  dock_nav.go:30	0xe276b0		488b442478		MOVQ 0x78(SP), AX					
  dock_nav.go:30	0xe276b5		eb31			JMP 0xe276e8						
  dock_nav.go:30	0xe276b7		488b442478		MOVQ 0x78(SP), AX					
  dock_nav.go:30	0xe276bc		4c89c3			MOVQ R8, BX						
  dock_nav.go:30	0xe276bf		bf01000000		MOVL $__minor_os_version__(SB), DI			
  dock_nav.go:30	0xe276c4		488d35b5aa3100		LEAQ runtime.types+1429888(SB), SI			
  dock_nav.go:30	0xe276cb		e870a564ff		CALL runtime.growslice(SB)				
  dock_nav.go:32	0xe276d0		488b942488010000	MOVQ 0x188(SP), DX					
  dock_nav.go:31	0xe276d8		488bb42480010000	MOVQ 0x180(SP), SI					
  dock_nav.go:29	0xe276e0		4c8b4c2468		MOVQ 0x68(SP), R9					
  dock_nav.go:30	0xe276e5		4989d8			MOVQ BX, R8						
  dock_nav.go:30	0xe276e8		4d69d0e0000000		IMULQ $.file+147(SB), R8, R10				
  dock_nav.go:30	0xe276ef		498d3c02		LEAQ 0(R10)(AX*1), DI					
  dock_nav.go:30	0xe276f3		488dbf20ffffff		LEAQ 0xffffff20(DI), DI					
  dock_nav.go:30	0xe276fa		833d4f64730200		CMPL runtime.writeBarrier(SB), $0x0			
  dock_nav.go:30	0xe27701		0f847efeffff		JE 0xe27585						
  dock_nav.go:30	0xe27707		4889842468010000	MOVQ AX, 0x168(SP)					
  dock_nav.go:30	0xe2770f		4c89442460		MOVQ R8, 0x60(SP)					
  dock_nav.go:30	0xe27714		48894c2458		MOVQ CX, 0x58(SP)					
  dock_nav.go:30	0xe27719		4889bc2460010000	MOVQ DI, 0x160(SP)					
  dock_nav.go:30	0xe27721		488d0558aa3100		LEAQ runtime.types+1429888(SB), AX			
  dock_nav.go:30	0xe27728		4889fb			MOVQ DI, BX						
  dock_nav.go:30	0xe2772b		488d8c2480000000	LEAQ 0x80(SP), CX					
  dock_nav.go:30	0xe27733		e8e8d75eff		CALL runtime.wbMove(SB)					
  dock_nav.go:30	0xe27738		488b842468010000	MOVQ 0x168(SP), AX					
  dock_nav.go:30	0xe27740		488b4c2458		MOVQ 0x58(SP), CX					
  dock_nav.go:32	0xe27745		488b942488010000	MOVQ 0x188(SP), DX					
  dock_nav.go:31	0xe2774d		488bb42480010000	MOVQ 0x180(SP), SI					
  dock_nav.go:30	0xe27755		488bbc2460010000	MOVQ 0x160(SP), DI					
  dock_nav.go:30	0xe2775d		4c8b442460		MOVQ 0x60(SP), R8					
  dock_nav.go:29	0xe27762		4c8b4c2468		MOVQ 0x68(SP), R9					
  dock_nav.go:30	0xe27767		e919feffff		JMP 0xe27585						
  dock_nav.go:40	0xe2776c		4889d1			MOVQ DX, CX						
  dock_nav.go:40	0xe2776f		4881c470010000		ADDQ $.file+291(SB), SP					
  dock_nav.go:40	0xe27776		5d			POPQ BP							
  dock_nav.go:40	0xe27777		c3			RET							
  dock_nav.go:32	0xe27778		4889c8			MOVQ CX, AX						
  dock_nav.go:32	0xe2777b		4889d1			MOVQ DX, CX						
  dock_nav.go:32	0xe2777e		6690			NOPW							
  dock_nav.go:32	0xe27780		e85b1065ff		CALL runtime.panicIndex(SB)				
  dock_nav.go:32	0xe27785		90			NOPL							
  dock_nav.go:24	0xe27786		4889442408		MOVQ AX, 0x8(SP)					
  dock_nav.go:24	0xe2778b		48895c2410		MOVQ BX, 0x10(SP)					
  dock_nav.go:24	0xe27790		48894c2418		MOVQ CX, 0x18(SP)					
  dock_nav.go:24	0xe27795		48897c2420		MOVQ DI, 0x20(SP)					
  dock_nav.go:24	0xe2779a		4889742428		MOVQ SI, 0x28(SP)					
  dock_nav.go:24	0xe2779f		90			NOPL							
  dock_nav.go:24	0xe277a0		e83bed64ff		CALL runtime.morestack_noctxt.abi0(SB)			
  dock_nav.go:24	0xe277a5		488b442408		MOVQ 0x8(SP), AX					
  dock_nav.go:24	0xe277aa		488b5c2410		MOVQ 0x10(SP), BX					
  dock_nav.go:24	0xe277af		488b4c2418		MOVQ 0x18(SP), CX					
  dock_nav.go:24	0xe277b4		488b7c2420		MOVQ 0x20(SP), DI					
  dock_nav.go:24	0xe277b9		488b742428		MOVQ 0x28(SP), SI					
  dock_nav.go:24	0xe277be		6690			NOPW							
  dock_nav.go:24	0xe277c0		e93bfdffff		JMP CAS-Backend/pkg/diapdu.buildDockNavTasks(SB)	
  :-1			0xe277c5		cc			INT $__subsystem__(SB)					
  :-1			0xe277c6		cc			INT $__subsystem__(SB)					
  :-1			0xe277c7		cc			INT $__subsystem__(SB)					
  :-1			0xe277c8		cc			INT $__subsystem__(SB)					
  :-1			0xe277c9		cc			INT $__subsystem__(SB)					
  :-1			0xe277ca		cc			INT $__subsystem__(SB)					
  :-1			0xe277cb		cc			INT $__subsystem__(SB)					
  :-1			0xe277cc		cc			INT $__subsystem__(SB)					
  :-1			0xe277cd		cc			INT $__subsystem__(SB)					
  :-1			0xe277ce		cc			INT $__subsystem__(SB)					
  :-1			0xe277cf		cc			INT $__subsystem__(SB)					
  :-1			0xe277d0		cc			INT $__subsystem__(SB)					
  :-1			0xe277d1		cc			INT $__subsystem__(SB)					
  :-1			0xe277d2		cc			INT $__subsystem__(SB)					
  :-1			0xe277d3		cc			INT $__subsystem__(SB)					
  :-1			0xe277d4		cc			INT $__subsystem__(SB)					
  :-1			0xe277d5		cc			INT $__subsystem__(SB)					
  :-1			0xe277d6		cc			INT $__subsystem__(SB)					
  :-1			0xe277d7		cc			INT $__subsystem__(SB)					
  :-1			0xe277d8		cc			INT $__subsystem__(SB)					
  :-1			0xe277d9		cc			INT $__subsystem__(SB)					
  :-1			0xe277da		cc			INT $__subsystem__(SB)					
  :-1			0xe277db		cc			INT $__subsystem__(SB)					
  :-1			0xe277dc		cc			INT $__subsystem__(SB)					
  :-1			0xe277dd		cc			INT $__subsystem__(SB)					
  :-1			0xe277de		cc			INT $__subsystem__(SB)					
  :-1			0xe277df		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.queryVehicleStationQuiet(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/dock_nav.go
  dock_nav.go:48	0xe277e0		493b6610		CMPQ SP, 0x10(R14)							
  dock_nav.go:48	0xe277e4		766b			JBE 0xe27851								
  dock_nav.go:48	0xe277e6		55			PUSHQ BP								
  dock_nav.go:48	0xe277e7		4889e5			MOVQ SP, BP								
  dock_nav.go:48	0xe277ea		4883ec38		SUBQ $__major_os_version__+50(SB), SP					
  dock_nav.go:48	0xe277ee		4889442448		MOVQ AX, 0x48(SP)							
  dock_nav.go:49	0xe277f3		48c744242000000000	MOVQ $0x0, 0x20(SP)							
  dock_nav.go:50	0xe277fc		488d157d000000		LEAQ CAS-Backend/pkg/diapdu.queryVehicleStationQuiet.func1(SB), DX	
  dock_nav.go:50	0xe27803		4889542428		MOVQ DX, 0x28(SP)							
  dock_nav.go:50	0xe27808		488d542420		LEAQ 0x20(SP), DX							
  dock_nav.go:50	0xe2780d		4889542430		MOVQ DX, 0x30(SP)							
  dock_nav.go:50	0xe27812		b9044b0000		MOVL $__size_of_stack_commit__+15108(SB), CX				
  dock_nav.go:50	0xe27817		488d7c2428		LEAQ 0x28(SP), DI							
  dock_nav.go:50	0xe2781c		0f1f4000		NOPL 0(AX)								
  dock_nav.go:50	0xe27820		e8dbbdfeff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)				
  dock_nav.go:55	0xe27825		4885c0			TESTQ AX, AX								
  dock_nav.go:55	0xe27828		7410			JE 0xe2783a								
  dock_nav.go:56	0xe2782a		4889c1			MOVQ AX, CX								
  dock_nav.go:56	0xe2782d		4889df			MOVQ BX, DI								
  dock_nav.go:56	0xe27830		31c0			XORL AX, AX								
  dock_nav.go:56	0xe27832		31db			XORL BX, BX								
  dock_nav.go:56	0xe27834		4883c438		ADDQ $__major_os_version__+50(SB), SP					
  dock_nav.go:56	0xe27838		5d			POPQ BP									
  dock_nav.go:56	0xe27839		c3			RET									
  dock_nav.go:58	0xe2783a		488b542420		MOVQ 0x20(SP), DX							
  dock_nav.go:58	0xe2783f		488b4248		MOVQ 0x48(DX), AX							
  dock_nav.go:58	0xe27843		488b5a50		MOVQ 0x50(DX), BX							
  dock_nav.go:58	0xe27847		31c9			XORL CX, CX								
  dock_nav.go:58	0xe27849		31ff			XORL DI, DI								
  dock_nav.go:58	0xe2784b		4883c438		ADDQ $__major_os_version__+50(SB), SP					
  dock_nav.go:58	0xe2784f		5d			POPQ BP									
  dock_nav.go:58	0xe27850		c3			RET									
  dock_nav.go:48	0xe27851		4889442408		MOVQ AX, 0x8(SP)							
  dock_nav.go:48	0xe27856		48895c2410		MOVQ BX, 0x10(SP)							
  dock_nav.go:48	0xe2785b		0f1f440000		NOPL 0(AX)(AX*1)							
  dock_nav.go:48	0xe27860		e87bec64ff		CALL runtime.morestack_noctxt.abi0(SB)					
  dock_nav.go:48	0xe27865		488b442408		MOVQ 0x8(SP), AX							
  dock_nav.go:48	0xe2786a		488b5c2410		MOVQ 0x10(SP), BX							
  dock_nav.go:48	0xe2786f		e96cffffff		JMP CAS-Backend/pkg/diapdu.queryVehicleStationQuiet(SB)			
  :-1			0xe27874		cc			INT $__subsystem__(SB)							
  :-1			0xe27875		cc			INT $__subsystem__(SB)							
  :-1			0xe27876		cc			INT $__subsystem__(SB)							
  :-1			0xe27877		cc			INT $__subsystem__(SB)							
  :-1			0xe27878		cc			INT $__subsystem__(SB)							
  :-1			0xe27879		cc			INT $__subsystem__(SB)							
  :-1			0xe2787a		cc			INT $__subsystem__(SB)							
  :-1			0xe2787b		cc			INT $__subsystem__(SB)							
  :-1			0xe2787c		cc			INT $__subsystem__(SB)							
  :-1			0xe2787d		cc			INT $__subsystem__(SB)							
  :-1			0xe2787e		cc			INT $__subsystem__(SB)							
  :-1			0xe2787f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/pkg/diapdu.queryVehicleStationQuiet.func1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/dock_nav.go
  dock_nav.go:50	0xe27880		493b6610		CMPQ SP, 0x10(R14)						
  dock_nav.go:50	0xe27884		765d			JBE 0xe278e3							
  dock_nav.go:50	0xe27886		55			PUSHQ BP							
  dock_nav.go:50	0xe27887		4889e5			MOVQ SP, BP							
  dock_nav.go:50	0xe2788a		4883ec20		SUBQ $__major_os_version__+26(SB), SP				
  dock_nav.go:50	0xe2788e		4889442430		MOVQ AX, 0x30(SP)						
  dock_nav.go:50	0xe27893		48895c2438		MOVQ BX, 0x38(SP)						
  dock_nav.go:50	0xe27898		488b5208		MOVQ 0x8(DX), DX						
  dock_nav.go:50	0xe2789c		4889542418		MOVQ DX, 0x18(SP)						
  kongzhi.go:1133	0xe278a1		b901000000		MOVL $__minor_os_version__(SB), CX				
  kongzhi.go:1133	0xe278a6		e81560ffff		CALL CAS-Backend/pkg/agvcontrol.queryAMRLocation(SB)		
  dock_nav.go:52	0xe278ab		833d9e62730200		CMPL runtime.writeBarrier(SB), $0x0				
  dock_nav.go:52	0xe278b2		750c			JNE 0xe278c0							
  dock_nav.go:52	0xe278b4		488b542418		MOVQ 0x18(SP), DX						
  dock_nav.go:52	0xe278b9		eb19			JMP 0xe278d4							
  dock_nav.go:52	0xe278bb		0f1f440000		NOPL 0(AX)(AX*1)						
  dock_nav.go:52	0xe278c0		e87b0b65ff		CALL runtime.gcWriteBarrier2(SB)				
  dock_nav.go:52	0xe278c5		498903			MOVQ AX, 0(R11)							
  dock_nav.go:52	0xe278c8		488b542418		MOVQ 0x18(SP), DX						
  dock_nav.go:52	0xe278cd		488b32			MOVQ 0(DX), SI							
  dock_nav.go:52	0xe278d0		49897308		MOVQ SI, 0x8(R11)						
  dock_nav.go:52	0xe278d4		488902			MOVQ AX, 0(DX)							
  dock_nav.go:53	0xe278d7		4889d8			MOVQ BX, AX							
  dock_nav.go:53	0xe278da		4889cb			MOVQ CX, BX							
  dock_nav.go:53	0xe278dd		4883c420		ADDQ $__major_os_version__+26(SB), SP				
  dock_nav.go:53	0xe278e1		5d			POPQ BP								
  dock_nav.go:53	0xe278e2		c3			RET								
  dock_nav.go:50	0xe278e3		4889442408		MOVQ AX, 0x8(SP)						
  dock_nav.go:50	0xe278e8		48895c2410		MOVQ BX, 0x10(SP)						
  dock_nav.go:50	0xe278ed		e86eeb64ff		CALL runtime.morestack.abi0(SB)					
  dock_nav.go:50	0xe278f2		488b442408		MOVQ 0x8(SP), AX						
  dock_nav.go:50	0xe278f7		488b5c2410		MOVQ 0x10(SP), BX						
  dock_nav.go:50	0xe278fc		eb82			JMP CAS-Backend/pkg/diapdu.queryVehicleStationQuiet.func1(SB)	
  :-1			0xe278fe		cc			INT $__subsystem__(SB)						
  :-1			0xe278ff		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.sendCancelNavigation(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/dock_nav.go
  dock_nav.go:61	0xe27900		493b6610		CMPQ SP, 0x10(R14)					
  dock_nav.go:61	0xe27904		7625			JBE 0xe2792b						
  dock_nav.go:61	0xe27906		55			PUSHQ BP						
  dock_nav.go:61	0xe27907		4889e5			MOVQ SP, BP						
  dock_nav.go:61	0xe2790a		4883ec20		SUBQ $__major_os_version__+26(SB), SP			
  dock_nav.go:61	0xe2790e		4889442430		MOVQ AX, 0x30(SP)					
  dock_nav.go:62	0xe27913		b9064b0000		MOVL $__size_of_stack_commit__+15110(SB), CX		
  dock_nav.go:62	0xe27918		488d3d69f7ea01		LEAQ go:func.*+4256(SB), DI				
  dock_nav.go:62	0xe2791f		90			NOPL							
  dock_nav.go:62	0xe27920		e8dbbcfeff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)		
  dock_nav.go:62	0xe27925		4883c420		ADDQ $__major_os_version__+26(SB), SP			
  dock_nav.go:62	0xe27929		5d			POPQ BP							
  dock_nav.go:62	0xe2792a		c3			RET							
  dock_nav.go:61	0xe2792b		4889442408		MOVQ AX, 0x8(SP)					
  dock_nav.go:61	0xe27930		48895c2410		MOVQ BX, 0x10(SP)					
  dock_nav.go:61	0xe27935		e8a6eb64ff		CALL runtime.morestack_noctxt.abi0(SB)			
  dock_nav.go:61	0xe2793a		488b442408		MOVQ 0x8(SP), AX					
  dock_nav.go:61	0xe2793f		488b5c2410		MOVQ 0x10(SP), BX					
  dock_nav.go:61	0xe27944		ebba			JMP CAS-Backend/pkg/diapdu.sendCancelNavigation(SB)	
  :-1			0xe27946		cc			INT $__subsystem__(SB)					
  :-1			0xe27947		cc			INT $__subsystem__(SB)					
  :-1			0xe27948		cc			INT $__subsystem__(SB)					
  :-1			0xe27949		cc			INT $__subsystem__(SB)					
  :-1			0xe2794a		cc			INT $__subsystem__(SB)					
  :-1			0xe2794b		cc			INT $__subsystem__(SB)					
  :-1			0xe2794c		cc			INT $__subsystem__(SB)					
  :-1			0xe2794d		cc			INT $__subsystem__(SB)					
  :-1			0xe2794e		cc			INT $__subsystem__(SB)					
  :-1			0xe2794f		cc			INT $__subsystem__(SB)					
  :-1			0xe27950		cc			INT $__subsystem__(SB)					
  :-1			0xe27951		cc			INT $__subsystem__(SB)					
  :-1			0xe27952		cc			INT $__subsystem__(SB)					
  :-1			0xe27953		cc			INT $__subsystem__(SB)					
  :-1			0xe27954		cc			INT $__subsystem__(SB)					
  :-1			0xe27955		cc			INT $__subsystem__(SB)					
  :-1			0xe27956		cc			INT $__subsystem__(SB)					
  :-1			0xe27957		cc			INT $__subsystem__(SB)					
  :-1			0xe27958		cc			INT $__subsystem__(SB)					
  :-1			0xe27959		cc			INT $__subsystem__(SB)					
  :-1			0xe2795a		cc			INT $__subsystem__(SB)					
  :-1			0xe2795b		cc			INT $__subsystem__(SB)					
  :-1			0xe2795c		cc			INT $__subsystem__(SB)					
  :-1			0xe2795d		cc			INT $__subsystem__(SB)					
  :-1			0xe2795e		cc			INT $__subsystem__(SB)					
  :-1			0xe2795f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.sendDockNavigation(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/dock_nav.go
  dock_nav.go:67	0xe27960		493b6610		CMPQ SP, 0x10(R14)						
  dock_nav.go:67	0xe27964		7672			JBE 0xe279d8							
  dock_nav.go:67	0xe27966		55			PUSHQ BP							
  dock_nav.go:67	0xe27967		4889e5			MOVQ SP, BP							
  dock_nav.go:67	0xe2796a		4883ec50		SUBQ $.file+3(SB), SP						
  dock_nav.go:67	0xe2796e		4889442460		MOVQ AX, 0x60(SP)						
  dock_nav.go:67	0xe27973		48894c2470		MOVQ CX, 0x70(SP)						
  dock_nav.go:68	0xe27978		c644242700		MOVB $0x0, 0x27(SP)						
  dock_nav.go:69	0xe2797d		440f117c2428		MOVUPS X15, 0x28(SP)						
  dock_nav.go:69	0xe27983		440f117c2430		MOVUPS X15, 0x30(SP)						
  dock_nav.go:69	0xe27989		440f117c2440		MOVUPS X15, 0x40(SP)						
  dock_nav.go:69	0xe2798f		488d158a000000		LEAQ CAS-Backend/pkg/diapdu.sendDockNavigation.func1(SB), DX	
  dock_nav.go:69	0xe27996		4889542428		MOVQ DX, 0x28(SP)						
  dock_nav.go:69	0xe2799b		488d542427		LEAQ 0x27(SP), DX						
  dock_nav.go:69	0xe279a0		4889542430		MOVQ DX, 0x30(SP)						
  dock_nav.go:69	0xe279a5		48897c2440		MOVQ DI, 0x40(SP)						
  dock_nav.go:69	0xe279aa		4889742448		MOVQ SI, 0x48(SP)						
  dock_nav.go:69	0xe279af		48894c2438		MOVQ CX, 0x38(SP)						
  dock_nav.go:69	0xe279b4		b9064b0000		MOVL $__size_of_stack_commit__+15110(SB), CX			
  dock_nav.go:69	0xe279b9		488d7c2428		LEAQ 0x28(SP), DI						
  dock_nav.go:69	0xe279be		6690			NOPW								
  dock_nav.go:69	0xe279c0		e83bbcfeff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)			
  dock_nav.go:74	0xe279c5		0fb6542427		MOVZX 0x27(SP), DX						
  dock_nav.go:74	0xe279ca		4889d9			MOVQ BX, CX							
  dock_nav.go:74	0xe279cd		4889c3			MOVQ AX, BX							
  dock_nav.go:74	0xe279d0		89d0			MOVL DX, AX							
  dock_nav.go:74	0xe279d2		4883c450		ADDQ $.file+3(SB), SP						
  dock_nav.go:74	0xe279d6		5d			POPQ BP								
  dock_nav.go:74	0xe279d7		c3			RET								
  dock_nav.go:67	0xe279d8		4889442408		MOVQ AX, 0x8(SP)						
  dock_nav.go:67	0xe279dd		48895c2410		MOVQ BX, 0x10(SP)						
  dock_nav.go:67	0xe279e2		48894c2418		MOVQ CX, 0x18(SP)						
  dock_nav.go:67	0xe279e7		48897c2420		MOVQ DI, 0x20(SP)						
  dock_nav.go:67	0xe279ec		4889742428		MOVQ SI, 0x28(SP)						
  dock_nav.go:67	0xe279f1		e8eaea64ff		CALL runtime.morestack_noctxt.abi0(SB)				
  dock_nav.go:67	0xe279f6		488b442408		MOVQ 0x8(SP), AX						
  dock_nav.go:67	0xe279fb		488b5c2410		MOVQ 0x10(SP), BX						
  dock_nav.go:67	0xe27a00		488b4c2418		MOVQ 0x18(SP), CX						
  dock_nav.go:67	0xe27a05		488b7c2420		MOVQ 0x20(SP), DI						
  dock_nav.go:67	0xe27a0a		488b742428		MOVQ 0x28(SP), SI						
  dock_nav.go:67	0xe27a0f		e94cffffff		JMP CAS-Backend/pkg/diapdu.sendDockNavigation(SB)		
  :-1			0xe27a14		cc			INT $__subsystem__(SB)						
  :-1			0xe27a15		cc			INT $__subsystem__(SB)						
  :-1			0xe27a16		cc			INT $__subsystem__(SB)						
  :-1			0xe27a17		cc			INT $__subsystem__(SB)						
  :-1			0xe27a18		cc			INT $__subsystem__(SB)						
  :-1			0xe27a19		cc			INT $__subsystem__(SB)						
  :-1			0xe27a1a		cc			INT $__subsystem__(SB)						
  :-1			0xe27a1b		cc			INT $__subsystem__(SB)						
  :-1			0xe27a1c		cc			INT $__subsystem__(SB)						
  :-1			0xe27a1d		cc			INT $__subsystem__(SB)						
  :-1			0xe27a1e		cc			INT $__subsystem__(SB)						
  :-1			0xe27a1f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.sendDockNavigation.func1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/dock_nav.go
  dock_nav.go:69	0xe27a20		493b6610		CMPQ SP, 0x10(R14)							
  dock_nav.go:69	0xe27a24		763f			JBE 0xe27a65								
  dock_nav.go:69	0xe27a26		55			PUSHQ BP								
  dock_nav.go:69	0xe27a27		4889e5			MOVQ SP, BP								
  dock_nav.go:69	0xe27a2a		4883ec30		SUBQ $__major_os_version__+42(SB), SP					
  dock_nav.go:69	0xe27a2e		4889442440		MOVQ AX, 0x40(SP)							
  dock_nav.go:69	0xe27a33		48895c2448		MOVQ BX, 0x48(SP)							
  dock_nav.go:69	0xe27a38		488b4a10		MOVQ 0x10(DX), CX							
  dock_nav.go:69	0xe27a3c		488b7a18		MOVQ 0x18(DX), DI							
  dock_nav.go:69	0xe27a40		488b7220		MOVQ 0x20(DX), SI							
  dock_nav.go:69	0xe27a44		488b5208		MOVQ 0x8(DX), DX							
  dock_nav.go:69	0xe27a48		4889542428		MOVQ DX, 0x28(SP)							
  dock_nav.go:71	0xe27a4d		e80e13ffff		CALL CAS-Backend/pkg/agvcontrol.SendForkliftSpecifiedPathNavigation(SB)	
  dock_nav.go:71	0xe27a52		488b542428		MOVQ 0x28(SP), DX							
  dock_nav.go:71	0xe27a57		8802			MOVB AL, 0(DX)								
  dock_nav.go:72	0xe27a59		4889d8			MOVQ BX, AX								
  dock_nav.go:72	0xe27a5c		4889cb			MOVQ CX, BX								
  dock_nav.go:72	0xe27a5f		4883c430		ADDQ $__major_os_version__+42(SB), SP					
  dock_nav.go:72	0xe27a63		5d			POPQ BP									
  dock_nav.go:72	0xe27a64		c3			RET									
  dock_nav.go:69	0xe27a65		4889442408		MOVQ AX, 0x8(SP)							
  dock_nav.go:69	0xe27a6a		48895c2410		MOVQ BX, 0x10(SP)							
  dock_nav.go:69	0xe27a6f		e8ece964ff		CALL runtime.morestack.abi0(SB)						
  dock_nav.go:69	0xe27a74		488b442408		MOVQ 0x8(SP), AX							
  dock_nav.go:69	0xe27a79		488b5c2410		MOVQ 0x10(SP), BX							
  dock_nav.go:69	0xe27a7e		6690			NOPW									
  dock_nav.go:69	0xe27a80		eb9e			JMP CAS-Backend/pkg/diapdu.sendDockNavigation.func1(SB)			
  :-1			0xe27a82		cc			INT $__subsystem__(SB)							
  :-1			0xe27a83		cc			INT $__subsystem__(SB)							
  :-1			0xe27a84		cc			INT $__subsystem__(SB)							
  :-1			0xe27a85		cc			INT $__subsystem__(SB)							
  :-1			0xe27a86		cc			INT $__subsystem__(SB)							
  :-1			0xe27a87		cc			INT $__subsystem__(SB)							
  :-1			0xe27a88		cc			INT $__subsystem__(SB)							
  :-1			0xe27a89		cc			INT $__subsystem__(SB)							
  :-1			0xe27a8a		cc			INT $__subsystem__(SB)							
  :-1			0xe27a8b		cc			INT $__subsystem__(SB)							
  :-1			0xe27a8c		cc			INT $__subsystem__(SB)							
  :-1			0xe27a8d		cc			INT $__subsystem__(SB)							
  :-1			0xe27a8e		cc			INT $__subsystem__(SB)							
  :-1			0xe27a8f		cc			INT $__subsystem__(SB)							
  :-1			0xe27a90		cc			INT $__subsystem__(SB)							
  :-1			0xe27a91		cc			INT $__subsystem__(SB)							
  :-1			0xe27a92		cc			INT $__subsystem__(SB)							
  :-1			0xe27a93		cc			INT $__subsystem__(SB)							
  :-1			0xe27a94		cc			INT $__subsystem__(SB)							
  :-1			0xe27a95		cc			INT $__subsystem__(SB)							
  :-1			0xe27a96		cc			INT $__subsystem__(SB)							
  :-1			0xe27a97		cc			INT $__subsystem__(SB)							
  :-1			0xe27a98		cc			INT $__subsystem__(SB)							
  :-1			0xe27a99		cc			INT $__subsystem__(SB)							
  :-1			0xe27a9a		cc			INT $__subsystem__(SB)							
  :-1			0xe27a9b		cc			INT $__subsystem__(SB)							
  :-1			0xe27a9c		cc			INT $__subsystem__(SB)							
  :-1			0xe27a9d		cc			INT $__subsystem__(SB)							
  :-1			0xe27a9e		cc			INT $__subsystem__(SB)							
  :-1			0xe27a9f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/pkg/diapdu.sendCancelNavigation.func1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/dock_nav.go
  dock_nav.go:62	0xe45620		493b6610		CMPQ SP, 0x10(R14)						
  dock_nav.go:62	0xe45624		761d			JBE 0xe45643							
  dock_nav.go:62	0xe45626		55			PUSHQ BP							
  dock_nav.go:62	0xe45627		4889e5			MOVQ SP, BP							
  dock_nav.go:62	0xe4562a		4883ec10		SUBQ $__major_os_version__+10(SB), SP				
  dock_nav.go:62	0xe4562e		4889442420		MOVQ AX, 0x20(SP)						
  dock_nav.go:62	0xe45633		48895c2428		MOVQ BX, 0x28(SP)						
  dock_nav.go:63	0xe45638		e82310fdff		CALL CAS-Backend/pkg/agvcontrol.SendCancelNavigation(SB)	
  dock_nav.go:63	0xe4563d		4883c410		ADDQ $__major_os_version__+10(SB), SP				
  dock_nav.go:63	0xe45641		5d			POPQ BP								
  dock_nav.go:63	0xe45642		c3			RET								
  dock_nav.go:62	0xe45643		4889442408		MOVQ AX, 0x8(SP)						
  dock_nav.go:62	0xe45648		48895c2410		MOVQ BX, 0x10(SP)						
  dock_nav.go:62	0xe4564d		e88e0e63ff		CALL runtime.morestack_noctxt.abi0(SB)				
  dock_nav.go:62	0xe45652		488b442408		MOVQ 0x8(SP), AX						
  dock_nav.go:62	0xe45657		488b5c2410		MOVQ 0x10(SP), BX						
  dock_nav.go:62	0xe4565c		ebc2			JMP CAS-Backend/pkg/diapdu.sendCancelNavigation.func1(SB)	
  :-1			0xe4565e		cc			INT $__subsystem__(SB)						
  :-1			0xe4565f		cc			INT $__subsystem__(SB)						

