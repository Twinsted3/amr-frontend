TEXT CAS-Backend/pkg/diapdu.waitNavTasksComplete(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/task_nav.go
  task_nav.go:128	0xe2d3e0		4c8da42458ffffff	LEAQ 0xffffff58(SP), R12						
  task_nav.go:128	0xe2d3e8		4d3b6610		CMPQ R12, 0x10(R14)							
  task_nav.go:128	0xe2d3ec		0f8636050000		JBE 0xe2d928								
  task_nav.go:128	0xe2d3f2		55			PUSHQ BP								
  task_nav.go:128	0xe2d3f3		4889e5			MOVQ SP, BP								
  task_nav.go:128	0xe2d3f6		4881ec20010000		SUBQ $.file+211(SB), SP							
  task_nav.go:128	0xe2d3fd		66440fd6bc2418010000	MOVQ X15, 0x118(SP)							
  task_nav.go:136	0xe2d407		4c898c2468010000	MOVQ R9, 0x168(SP)							
  task_nav.go:136	0xe2d40f		4c89842460010000	MOVQ R8, 0x160(SP)							
  task_nav.go:136	0xe2d417		4889b42458010000	MOVQ SI, 0x158(SP)							
  task_nav.go:136	0xe2d41f		4889bc2450010000	MOVQ DI, 0x150(SP)							
  task_nav.go:136	0xe2d427		48898c2448010000	MOVQ CX, 0x148(SP)							
  task_nav.go:136	0xe2d42f		48899c2440010000	MOVQ BX, 0x140(SP)							
  task_nav.go:136	0xe2d437		4889842438010000	MOVQ AX, 0x138(SP)							
  task_nav.go:136	0xe2d43f		4c899c2478010000	MOVQ R11, 0x178(SP)							
  task_nav.go:136	0xe2d447		4c89942470010000	MOVQ R10, 0x170(SP)							
  task_nav.go:128	0xe2d44f		c644243f00		MOVB $0x0, 0x3f(SP)							
  task_nav.go:128	0xe2d454		c644243d00		MOVB $0x0, 0x3d(SP)							
  task_nav.go:129	0xe2d459		90			NOPL									
  sleep.go:203		0xe2d45a		488b842430010000	MOVQ 0x130(SP), AX							
  sleep.go:203		0xe2d462		e8595367ff		CALL time.NewTimer(SB)							
  sleep.go:203		0xe2d467		488b08			MOVQ 0(AX), CX								
  sleep.go:203		0xe2d46a		48894c2468		MOVQ CX, 0x68(SP)							
  task_nav.go:130	0xe2d46f		b800943577		MOVL $0x77359400, AX							
  task_nav.go:130	0xe2d474		e8675867ff		CALL time.NewTicker(SB)							
  task_nav.go:130	0xe2d479		4889442478		MOVQ AX, 0x78(SP)							
  task_nav.go:131	0xe2d47e		488d0d1b050000		LEAQ CAS-Backend/pkg/diapdu.waitNavTasksComplete.deferwrap1(SB), CX	
  task_nav.go:131	0xe2d485		48898c2400010000	MOVQ CX, 0x100(SP)							
  task_nav.go:131	0xe2d48d		4889842408010000	MOVQ AX, 0x108(SP)							
  task_nav.go:131	0xe2d495		488d8c2400010000	LEAQ 0x100(SP), CX							
  task_nav.go:131	0xe2d49d		48898c2418010000	MOVQ CX, 0x118(SP)							
  task_nav.go:131	0xe2d4a5		c644243f01		MOVB $__minor_os_version__(SB), 0x3f(SP)				
  task_nav.go:134	0xe2d4aa		e8f10b68ff		CALL time.Now(SB)							
  task_nav.go:134	0xe2d4af		31d2			XORL DX, DX								
  task_nav.go:136	0xe2d4b1		eb11			JMP 0xe2d4c4								
  task_nav.go:142	0xe2d4b3		488b5c2450		MOVQ 0x50(SP), BX							
  task_nav.go:142	0xe2d4b8		488b4c2470		MOVQ 0x70(SP), CX							
  task_nav.go:152	0xe2d4bd		89c2			MOVL AX, DX								
  task_nav.go:142	0xe2d4bf		488b442448		MOVQ 0x48(SP), AX							
  task_nav.go:142	0xe2d4c4		48894c2470		MOVQ CX, 0x70(SP)							
  task_nav.go:142	0xe2d4c9		48895c2450		MOVQ BX, 0x50(SP)							
  task_nav.go:142	0xe2d4ce		4889442448		MOVQ AX, 0x48(SP)							
  task_nav.go:152	0xe2d4d3		8854243e		MOVB DL, 0x3e(SP)							
  task_nav.go:141	0xe2d4d7		4c8b4c2478		MOVQ 0x78(SP), R9							
  task_nav.go:141	0xe2d4dc		4d8b11			MOVQ 0(R9), R10								
  task_nav.go:137	0xe2d4df		440f11bc24e0000000	MOVUPS X15, 0xe0(SP)							
  task_nav.go:137	0xe2d4e8		440f11bc24f0000000	MOVUPS X15, 0xf0(SP)							
  task_nav.go:138	0xe2d4f1		4c8b5c2468		MOVQ 0x68(SP), R11							
  task_nav.go:138	0xe2d4f6		4c899c24f0000000	MOVQ R11, 0xf0(SP)							
  task_nav.go:141	0xe2d4fe		4c899424e0000000	MOVQ R10, 0xe0(SP)							
  task_nav.go:137	0xe2d506		31ff			XORL DI, DI								
  task_nav.go:137	0xe2d508		be02000000		MOVL $__minor_os_version__+1(SB), SI					
  task_nav.go:137	0xe2d50d		41b801000000		MOVL $__minor_os_version__(SB), R8					
  task_nav.go:137	0xe2d513		488d8424e0000000	LEAQ 0xe0(SP), AX							
  task_nav.go:137	0xe2d51b		488d5c2440		LEAQ 0x40(SP), BX							
  task_nav.go:137	0xe2d520		31c9			XORL CX, CX								
  task_nav.go:137	0xe2d522		e8d90f62ff		CALL runtime.selectgo(SB)						
  task_nav.go:141	0xe2d527		4885c0			TESTQ AX, AX								
  task_nav.go:141	0xe2d52a		0f85f4020000		JNE 0xe2d824								
  task_nav.go:142	0xe2d530		488b442448		MOVQ 0x48(SP), AX							
  task_nav.go:142	0xe2d535		488b5c2450		MOVQ 0x50(SP), BX							
  task_nav.go:142	0xe2d53a		488b4c2470		MOVQ 0x70(SP), CX							
  task_nav.go:142	0xe2d53f		90			NOPL									
  task_nav.go:142	0xe2d540		e85b7367ff		CALL time.Since(SB)							
  task_nav.go:142	0xe2d545		48ba005847f80d000000	MOVQ $0xdf8475800, DX							
  task_nav.go:142	0xe2d54f		4839d0			CMPQ AX, DX								
  task_nav.go:142	0xe2d552		7d14			JGE 0xe2d568								
  task_nav.go:142	0xe2d554		488b442450		MOVQ 0x50(SP), AX							
  task_nav.go:142	0xe2d559		488b4c2448		MOVQ 0x48(SP), CX							
  task_nav.go:142	0xe2d55e		488b5c2470		MOVQ 0x70(SP), BX							
  task_nav.go:142	0xe2d563		e9c3000000		JMP 0xe2d62b								
  task_nav.go:143	0xe2d568		e8330b68ff		CALL time.Now(SB)							
  task_nav.go:143	0xe2d56d		4889442460		MOVQ AX, 0x60(SP)							
  task_nav.go:143	0xe2d572		48895c2458		MOVQ BX, 0x58(SP)							
  task_nav.go:143	0xe2d577		48898c2410010000	MOVQ CX, 0x110(SP)							
  task_nav.go:144	0xe2d57f		440f11bc24c0000000	MOVUPS X15, 0xc0(SP)							
  task_nav.go:144	0xe2d588		440f11bc24d0000000	MOVUPS X15, 0xd0(SP)							
  task_nav.go:144	0xe2d591		488b842438010000	MOVQ 0x138(SP), AX							
  task_nav.go:144	0xe2d599		488b9c2440010000	MOVQ 0x140(SP), BX							
  task_nav.go:144	0xe2d5a1		e87acb63ff		CALL runtime.convTstring(SB)						
  task_nav.go:144	0xe2d5a6		488d0d73532100		LEAQ runtime.types+383264(SB), CX					
  task_nav.go:144	0xe2d5ad		48898c24c0000000	MOVQ CX, 0xc0(SP)							
  task_nav.go:144	0xe2d5b5		48898424c8000000	MOVQ AX, 0xc8(SP)							
  task_nav.go:144	0xe2d5bd		488b842470010000	MOVQ 0x170(SP), AX							
  task_nav.go:144	0xe2d5c5		488b9c2478010000	MOVQ 0x178(SP), BX							
  task_nav.go:144	0xe2d5cd		e84ecb63ff		CALL runtime.convTstring(SB)						
  task_nav.go:144	0xe2d5d2		488d0d47532100		LEAQ runtime.types+383264(SB), CX					
  task_nav.go:144	0xe2d5d9		48898c24d0000000	MOVQ CX, 0xd0(SP)							
  task_nav.go:144	0xe2d5e1		48898424d8000000	MOVQ AX, 0xd8(SP)							
  print.go:233		0xe2d5e9		488b1d904a6e02		MOVQ os.Stdout(SB), BX							
  print.go:233		0xe2d5f0		488d05e9e40302		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:233		0xe2d5f7		bf39000000		MOVL $__major_os_version__+51(SB), DI					
  print.go:233		0xe2d5fc		488db424c0000000	LEAQ 0xc0(SP), SI							
  print.go:233		0xe2d604		41b802000000		MOVL $__minor_os_version__+1(SB), R8					
  print.go:233		0xe2d60a		4d89c1			MOVQ R8, R9								
  print.go:233		0xe2d60d		488d0d77433700		LEAQ go:string.*+234627(SB), CX						
  print.go:233		0xe2d614		e8071c6fff		CALL fmt.Fprintf(SB)							
  task_nav.go:142	0xe2d619		488b442458		MOVQ 0x58(SP), AX							
  task_nav.go:142	0xe2d61e		488b4c2460		MOVQ 0x60(SP), CX							
  task_nav.go:142	0xe2d623		488b9c2410010000	MOVQ 0x110(SP), BX							
  task_nav.go:142	0xe2d62b		48895c2470		MOVQ BX, 0x70(SP)							
  task_nav.go:142	0xe2d630		4889442450		MOVQ AX, 0x50(SP)							
  task_nav.go:142	0xe2d635		48894c2448		MOVQ CX, 0x48(SP)							
  task_nav.go:146	0xe2d63a		488bbc2460010000	MOVQ 0x160(SP), DI							
  task_nav.go:146	0xe2d642		488bb42468010000	MOVQ 0x168(SP), SI							
  task_nav.go:146	0xe2d64a		4c8b842470010000	MOVQ 0x170(SP), R8							
  task_nav.go:146	0xe2d652		4c8b8c2478010000	MOVQ 0x178(SP), R9							
  task_nav.go:146	0xe2d65a		488b842438010000	MOVQ 0x138(SP), AX							
  task_nav.go:146	0xe2d662		488b9c2440010000	MOVQ 0x140(SP), BX							
  task_nav.go:146	0xe2d66a		488b8c2458010000	MOVQ 0x158(SP), CX							
  task_nav.go:146	0xe2d672		e8a9060000		CALL CAS-Backend/pkg/diapdu.navTasksCompleteFromMonitor(SB)		
  task_nav.go:146	0xe2d677		84db			TESTL BL, BL								
  task_nav.go:146	0xe2d679		741f			JE 0xe2d69a								
  task_nav.go:146	0xe2d67b		0f1f440000		NOPL 0(AX)(AX*1)							
  task_nav.go:146	0xe2d680		84c0			TESTL AL, AL								
  task_nav.go:147	0xe2d682		0f852d010000		JNE 0xe2d7b5								
  task_nav.go:146	0xe2d688		4c8b8c2478010000	MOVQ 0x178(SP), R9							
  task_nav.go:152	0xe2d690		0fb644243e		MOVZX 0x3e(SP), AX							
  task_nav.go:150	0xe2d695		e919feffff		JMP 0xe2d4b3								
  task_nav.go:152	0xe2d69a		0fb654243e		MOVZX 0x3e(SP), DX							
  task_nav.go:152	0xe2d69f		90			NOPL									
  task_nav.go:152	0xe2d6a0		84d2			TESTL DL, DL								
  task_nav.go:152	0xe2d6a2		7568			JNE 0xe2d70c								
  task_nav.go:153	0xe2d6a4		440f11bc24b0000000	MOVUPS X15, 0xb0(SP)							
  task_nav.go:153	0xe2d6ad		488b842438010000	MOVQ 0x138(SP), AX							
  task_nav.go:153	0xe2d6b5		488b9c2440010000	MOVQ 0x140(SP), BX							
  task_nav.go:153	0xe2d6bd		0f1f00			NOPL 0(AX)								
  task_nav.go:153	0xe2d6c0		e85bca63ff		CALL runtime.convTstring(SB)						
  task_nav.go:153	0xe2d6c5		488d0d54522100		LEAQ runtime.types+383264(SB), CX					
  task_nav.go:153	0xe2d6cc		48898c24b0000000	MOVQ CX, 0xb0(SP)							
  task_nav.go:153	0xe2d6d4		48898424b8000000	MOVQ AX, 0xb8(SP)							
  print.go:233		0xe2d6dc		488b1d9d496e02		MOVQ os.Stdout(SB), BX							
  print.go:233		0xe2d6e3		488d05f6e30302		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:233		0xe2d6ea		bf47000000		MOVL $__major_os_version__+65(SB), DI					
  print.go:233		0xe2d6ef		488db424b0000000	LEAQ 0xb0(SP), SI							
  print.go:233		0xe2d6f7		41b801000000		MOVL $__minor_os_version__(SB), R8					
  print.go:233		0xe2d6fd		4d89c1			MOVQ R8, R9								
  print.go:233		0xe2d700		488d0d07993700		LEAQ go:string.*+256774(SB), CX						
  print.go:233		0xe2d707		e8141b6fff		CALL fmt.Fprintf(SB)							
  task_nav.go:156	0xe2d70c		488b842448010000	MOVQ 0x148(SP), AX							
  task_nav.go:156	0xe2d714		488b9c2450010000	MOVQ 0x150(SP), BX							
  task_nav.go:156	0xe2d71c		488b8c2458010000	MOVQ 0x158(SP), CX							
  task_nav.go:156	0xe2d724		488bbc2460010000	MOVQ 0x160(SP), DI							
  task_nav.go:156	0xe2d72c		488bb42468010000	MOVQ 0x168(SP), SI							
  task_nav.go:156	0xe2d734		e8c7020000		CALL CAS-Backend/pkg/diapdu.allNavSubTasksTerminal(SB)			
  task_nav.go:156	0xe2d739		84c0			TESTL AL, AL								
  task_nav.go:156	0xe2d73b		750a			JNE 0xe2d747								
  task_nav.go:146	0xe2d73d		4c8b8c2478010000	MOVQ 0x178(SP), R9							
  task_nav.go:156	0xe2d745		eb64			JMP 0xe2d7ab								
  task_nav.go:157	0xe2d747		488b8c2478010000	MOVQ 0x178(SP), CX							
  task_nav.go:157	0xe2d74f		4885c9			TESTQ CX, CX								
  task_nav.go:157	0xe2d752		0f84a7000000		JE 0xe2d7ff								
  task_nav.go:160	0xe2d758		488b842448010000	MOVQ 0x148(SP), AX							
  task_nav.go:160	0xe2d760		488b9c2450010000	MOVQ 0x150(SP), BX							
  task_nav.go:160	0xe2d768		e873a0ffff		CALL CAS-Backend/pkg/diapdu.queryVehicleStationQuiet(SB)		
  task_nav.go:161	0xe2d76d		4885c9			TESTQ CX, CX								
  task_nav.go:161	0xe2d770		740c			JE 0xe2d77e								
  task_nav.go:146	0xe2d772		4c8b8c2478010000	MOVQ 0x178(SP), R9							
  task_nav.go:146	0xe2d77a		31c0			XORL AX, AX								
  task_nav.go:161	0xe2d77c		eb29			JMP 0xe2d7a7								
  task_nav.go:161	0xe2d77e		4c8b8c2478010000	MOVQ 0x178(SP), R9							
  task_nav.go:161	0xe2d786		4c39cb			CMPQ BX, R9								
  task_nav.go:161	0xe2d789		7404			JE 0xe2d78f								
  task_nav.go:161	0xe2d78b		31c0			XORL AX, AX								
  task_nav.go:161	0xe2d78d		eb18			JMP 0xe2d7a7								
  task_nav.go:161	0xe2d78f		4889d9			MOVQ BX, CX								
  task_nav.go:161	0xe2d792		488b9c2470010000	MOVQ 0x170(SP), BX							
  task_nav.go:161	0xe2d79a		e8c1565dff		CALL runtime.memequal(SB)						
  task_nav.go:146	0xe2d79f		4c8b8c2478010000	MOVQ 0x178(SP), R9							
  task_nav.go:161	0xe2d7a7		84c0			TESTL AL, AL								
  task_nav.go:161	0xe2d7a9		752f			JNE 0xe2d7da								
  task_nav.go:141	0xe2d7ab		b801000000		MOVL $__minor_os_version__(SB), AX					
  task_nav.go:141	0xe2d7b0		e9fefcffff		JMP 0xe2d4b3								
  task_nav.go:148	0xe2d7b5		c644243d01		MOVB $__minor_os_version__(SB), 0x3d(SP)				
  task_nav.go:148	0xe2d7ba		c644243f00		MOVB $0x0, 0x3f(SP)							
  task_nav.go:148	0xe2d7bf		488b942418010000	MOVQ 0x118(SP), DX							
  task_nav.go:148	0xe2d7c7		488b02			MOVQ 0(DX), AX								
  task_nav.go:148	0xe2d7ca		ffd0			CALL AX									
  task_nav.go:148	0xe2d7cc		0fb644243d		MOVZX 0x3d(SP), AX							
  task_nav.go:148	0xe2d7d1		4881c420010000		ADDQ $.file+211(SB), SP							
  task_nav.go:148	0xe2d7d8		5d			POPQ BP									
  task_nav.go:148	0xe2d7d9		c3			RET									
  task_nav.go:162	0xe2d7da		c644243d01		MOVB $__minor_os_version__(SB), 0x3d(SP)				
  task_nav.go:162	0xe2d7df		c644243f00		MOVB $0x0, 0x3f(SP)							
  task_nav.go:162	0xe2d7e4		488b942418010000	MOVQ 0x118(SP), DX							
  task_nav.go:162	0xe2d7ec		488b02			MOVQ 0(DX), AX								
  task_nav.go:162	0xe2d7ef		ffd0			CALL AX									
  task_nav.go:162	0xe2d7f1		0fb644243d		MOVZX 0x3d(SP), AX							
  task_nav.go:162	0xe2d7f6		4881c420010000		ADDQ $.file+211(SB), SP							
  task_nav.go:162	0xe2d7fd		5d			POPQ BP									
  task_nav.go:162	0xe2d7fe		c3			RET									
  task_nav.go:158	0xe2d7ff		c644243d01		MOVB $__minor_os_version__(SB), 0x3d(SP)				
  task_nav.go:158	0xe2d804		c644243f00		MOVB $0x0, 0x3f(SP)							
  task_nav.go:158	0xe2d809		488b942418010000	MOVQ 0x118(SP), DX							
  task_nav.go:158	0xe2d811		488b02			MOVQ 0(DX), AX								
  task_nav.go:158	0xe2d814		ffd0			CALL AX									
  task_nav.go:158	0xe2d816		0fb644243d		MOVZX 0x3d(SP), AX							
  task_nav.go:158	0xe2d81b		4881c420010000		ADDQ $.file+211(SB), SP							
  task_nav.go:158	0xe2d822		5d			POPQ BP									
  task_nav.go:158	0xe2d823		c3			RET									
  task_nav.go:139	0xe2d824		440f11bc2480000000	MOVUPS X15, 0x80(SP)							
  task_nav.go:139	0xe2d82d		440f11bc2490000000	MOVUPS X15, 0x90(SP)							
  task_nav.go:139	0xe2d836		440f11bc24a0000000	MOVUPS X15, 0xa0(SP)							
  task_nav.go:139	0xe2d83f		488b842438010000	MOVQ 0x138(SP), AX							
  task_nav.go:139	0xe2d847		488b9c2440010000	MOVQ 0x140(SP), BX							
  task_nav.go:139	0xe2d84f		e8ccc863ff		CALL runtime.convTstring(SB)						
  task_nav.go:139	0xe2d854		488d0dc5502100		LEAQ runtime.types+383264(SB), CX					
  task_nav.go:139	0xe2d85b		48898c2480000000	MOVQ CX, 0x80(SP)							
  task_nav.go:139	0xe2d863		4889842488000000	MOVQ AX, 0x88(SP)							
  task_nav.go:139	0xe2d86b		488b842470010000	MOVQ 0x170(SP), AX							
  task_nav.go:139	0xe2d873		488b9c2478010000	MOVQ 0x178(SP), BX							
  task_nav.go:139	0xe2d87b		0f1f440000		NOPL 0(AX)(AX*1)							
  task_nav.go:139	0xe2d880		e89bc863ff		CALL runtime.convTstring(SB)						
  task_nav.go:139	0xe2d885		488d0d94502100		LEAQ runtime.types+383264(SB), CX					
  task_nav.go:139	0xe2d88c		48898c2490000000	MOVQ CX, 0x90(SP)							
  task_nav.go:139	0xe2d894		4889842498000000	MOVQ AX, 0x98(SP)							
  task_nav.go:139	0xe2d89c		488b842460010000	MOVQ 0x160(SP), AX							
  task_nav.go:139	0xe2d8a4		e8f7c763ff		CALL runtime.convT64(SB)						
  task_nav.go:139	0xe2d8a9		488d0db0522100		LEAQ runtime.types+383840(SB), CX					
  task_nav.go:139	0xe2d8b0		48898c24a0000000	MOVQ CX, 0xa0(SP)							
  task_nav.go:139	0xe2d8b8		48898424a8000000	MOVQ AX, 0xa8(SP)							
  print.go:233		0xe2d8c0		488b1db9476e02		MOVQ os.Stdout(SB), BX							
  print.go:233		0xe2d8c7		488d0512e20302		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:233		0xe2d8ce		488d0d1f733700		LEAQ go:string.*+247532(SB), CX						
  print.go:233		0xe2d8d5		bf40000000		MOVL $__major_os_version__+58(SB), DI					
  print.go:233		0xe2d8da		488db42480000000	LEAQ 0x80(SP), SI							
  print.go:233		0xe2d8e2		41b803000000		MOVL $__subsystem__(SB), R8						
  print.go:233		0xe2d8e8		4d89c1			MOVQ R8, R9								
  print.go:233		0xe2d8eb		e830196fff		CALL fmt.Fprintf(SB)							
  task_nav.go:140	0xe2d8f0		c644243d00		MOVB $0x0, 0x3d(SP)							
  task_nav.go:140	0xe2d8f5		c644243f00		MOVB $0x0, 0x3f(SP)							
  task_nav.go:140	0xe2d8fa		488b942418010000	MOVQ 0x118(SP), DX							
  task_nav.go:140	0xe2d902		488b0a			MOVQ 0(DX), CX								
  task_nav.go:140	0xe2d905		ffd1			CALL CX									
  task_nav.go:140	0xe2d907		0fb644243d		MOVZX 0x3d(SP), AX							
  task_nav.go:140	0xe2d90c		4881c420010000		ADDQ $.file+211(SB), SP							
  task_nav.go:140	0xe2d913		5d			POPQ BP									
  task_nav.go:140	0xe2d914		c3			RET									
  task_nav.go:140	0xe2d915		e866c260ff		CALL runtime.deferreturn(SB)						
  task_nav.go:140	0xe2d91a		0fb644243d		MOVZX 0x3d(SP), AX							
  task_nav.go:140	0xe2d91f		4881c420010000		ADDQ $.file+211(SB), SP							
  task_nav.go:140	0xe2d926		5d			POPQ BP									
  task_nav.go:140	0xe2d927		c3			RET									
  task_nav.go:128	0xe2d928		4889442410		MOVQ AX, 0x10(SP)							
  task_nav.go:128	0xe2d92d		48895c2418		MOVQ BX, 0x18(SP)							
  task_nav.go:128	0xe2d932		48894c2420		MOVQ CX, 0x20(SP)							
  task_nav.go:128	0xe2d937		48897c2428		MOVQ DI, 0x28(SP)							
  task_nav.go:128	0xe2d93c		4889742430		MOVQ SI, 0x30(SP)							
  task_nav.go:128	0xe2d941		4c89442438		MOVQ R8, 0x38(SP)							
  task_nav.go:128	0xe2d946		4c894c2440		MOVQ R9, 0x40(SP)							
  task_nav.go:128	0xe2d94b		4c89542448		MOVQ R10, 0x48(SP)							
  task_nav.go:128	0xe2d950		4c895c2450		MOVQ R11, 0x50(SP)							
  task_nav.go:128	0xe2d955		e8868b64ff		CALL runtime.morestack_noctxt.abi0(SB)					
  task_nav.go:128	0xe2d95a		488b442410		MOVQ 0x10(SP), AX							
  task_nav.go:128	0xe2d95f		488b5c2418		MOVQ 0x18(SP), BX							
  task_nav.go:128	0xe2d964		488b4c2420		MOVQ 0x20(SP), CX							
  task_nav.go:128	0xe2d969		488b7c2428		MOVQ 0x28(SP), DI							
  task_nav.go:128	0xe2d96e		488b742430		MOVQ 0x30(SP), SI							
  task_nav.go:128	0xe2d973		4c8b442438		MOVQ 0x38(SP), R8							
  task_nav.go:128	0xe2d978		4c8b4c2440		MOVQ 0x40(SP), R9							
  task_nav.go:128	0xe2d97d		4c8b542448		MOVQ 0x48(SP), R10							
  task_nav.go:128	0xe2d982		4c8b5c2450		MOVQ 0x50(SP), R11							
  task_nav.go:128	0xe2d987		e954faffff		JMP CAS-Backend/pkg/diapdu.waitNavTasksComplete(SB)			
  :-1			0xe2d98c		cc			INT $__subsystem__(SB)							
  :-1			0xe2d98d		cc			INT $__subsystem__(SB)							
  :-1			0xe2d98e		cc			INT $__subsystem__(SB)							
  :-1			0xe2d98f		cc			INT $__subsystem__(SB)							
  :-1			0xe2d990		cc			INT $__subsystem__(SB)							
  :-1			0xe2d991		cc			INT $__subsystem__(SB)							
  :-1			0xe2d992		cc			INT $__subsystem__(SB)							
  :-1			0xe2d993		cc			INT $__subsystem__(SB)							
  :-1			0xe2d994		cc			INT $__subsystem__(SB)							
  :-1			0xe2d995		cc			INT $__subsystem__(SB)							
  :-1			0xe2d996		cc			INT $__subsystem__(SB)							
  :-1			0xe2d997		cc			INT $__subsystem__(SB)							
  :-1			0xe2d998		cc			INT $__subsystem__(SB)							
  :-1			0xe2d999		cc			INT $__subsystem__(SB)							
  :-1			0xe2d99a		cc			INT $__subsystem__(SB)							
  :-1			0xe2d99b		cc			INT $__subsystem__(SB)							
  :-1			0xe2d99c		cc			INT $__subsystem__(SB)							
  :-1			0xe2d99d		cc			INT $__subsystem__(SB)							
  :-1			0xe2d99e		cc			INT $__subsystem__(SB)							
  :-1			0xe2d99f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/pkg/diapdu.waitNavTasksComplete.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/task_nav.go
  task_nav.go:131	0xe2d9a0		493b6610		CMPQ SP, 0x10(R14)						
  task_nav.go:131	0xe2d9a4		7627			JBE 0xe2d9cd							
  task_nav.go:131	0xe2d9a6		55			PUSHQ BP							
  task_nav.go:131	0xe2d9a7		4889e5			MOVQ SP, BP							
  task_nav.go:131	0xe2d9aa		4883ec08		SUBQ $__major_os_version__+2(SB), SP				
  task_nav.go:131	0xe2d9ae		4d8b6620		MOVQ 0x20(R14), R12						
  task_nav.go:131	0xe2d9b2		4d85e4			TESTQ R12, R12							
  task_nav.go:131	0xe2d9b5		751d			JNE 0xe2d9d4							
  task_nav.go:131	0xe2d9b7		488b4208		MOVQ 0x8(DX), AX						
  tick.go:53		0xe2d9bb		80780800		CMPB 0x8(AX), $0x0						
  tick.go:53		0xe2d9bf		90			NOPL								
  tick.go:53		0xe2d9c0		7405			JE 0xe2d9c7							
  tick.go:59		0xe2d9c2		e8b96964ff		CALL time.stopTimer(SB)						
  task_nav.go:131	0xe2d9c7		4883c408		ADDQ $__major_os_version__+2(SB), SP				
  task_nav.go:131	0xe2d9cb		5d			POPQ BP								
  task_nav.go:131	0xe2d9cc		c3			RET								
  task_nav.go:131	0xe2d9cd		e88e8a64ff		CALL runtime.morestack.abi0(SB)					
  task_nav.go:131	0xe2d9d2		ebcc			JMP CAS-Backend/pkg/diapdu.waitNavTasksComplete.deferwrap1(SB)	
  task_nav.go:131	0xe2d9d4		4c8d6c2418		LEAQ 0x18(SP), R13						
  task_nav.go:131	0xe2d9d9		4d392c24		CMPQ 0(R12), R13						
  task_nav.go:131	0xe2d9dd		75d8			JNE 0xe2d9b7							
  task_nav.go:131	0xe2d9df		49892424		MOVQ SP, 0(R12)							
  task_nav.go:131	0xe2d9e3		ebd2			JMP 0xe2d9b7							
  :-1			0xe2d9e5		cc			INT $__subsystem__(SB)						
  :-1			0xe2d9e6		cc			INT $__subsystem__(SB)						
  :-1			0xe2d9e7		cc			INT $__subsystem__(SB)						
  :-1			0xe2d9e8		cc			INT $__subsystem__(SB)						
  :-1			0xe2d9e9		cc			INT $__subsystem__(SB)						
  :-1			0xe2d9ea		cc			INT $__subsystem__(SB)						
  :-1			0xe2d9eb		cc			INT $__subsystem__(SB)						
  :-1			0xe2d9ec		cc			INT $__subsystem__(SB)						
  :-1			0xe2d9ed		cc			INT $__subsystem__(SB)						
  :-1			0xe2d9ee		cc			INT $__subsystem__(SB)						
  :-1			0xe2d9ef		cc			INT $__subsystem__(SB)						
  :-1			0xe2d9f0		cc			INT $__subsystem__(SB)						
  :-1			0xe2d9f1		cc			INT $__subsystem__(SB)						
  :-1			0xe2d9f2		cc			INT $__subsystem__(SB)						
  :-1			0xe2d9f3		cc			INT $__subsystem__(SB)						
  :-1			0xe2d9f4		cc			INT $__subsystem__(SB)						
  :-1			0xe2d9f5		cc			INT $__subsystem__(SB)						
  :-1			0xe2d9f6		cc			INT $__subsystem__(SB)						
  :-1			0xe2d9f7		cc			INT $__subsystem__(SB)						
  :-1			0xe2d9f8		cc			INT $__subsystem__(SB)						
  :-1			0xe2d9f9		cc			INT $__subsystem__(SB)						
  :-1			0xe2d9fa		cc			INT $__subsystem__(SB)						
  :-1			0xe2d9fb		cc			INT $__subsystem__(SB)						
  :-1			0xe2d9fc		cc			INT $__subsystem__(SB)						
  :-1			0xe2d9fd		cc			INT $__subsystem__(SB)						
  :-1			0xe2d9fe		cc			INT $__subsystem__(SB)						
  :-1			0xe2d9ff		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.allNavSubTasksTerminal(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/task_nav.go
  task_nav.go:169	0xe2da00		4c8da42408ffffff	LEAQ 0xffffff08(SP), R12						
  task_nav.go:169	0xe2da08		4d3b6610		CMPQ R12, 0x10(R14)							
  task_nav.go:169	0xe2da0c		0f862d020000		JBE 0xe2dc3f								
  task_nav.go:169	0xe2da12		55			PUSHQ BP								
  task_nav.go:169	0xe2da13		4889e5			MOVQ SP, BP								
  task_nav.go:169	0xe2da16		4881ec70010000		SUBQ $.file+291(SB), SP							
  task_nav.go:169	0xe2da1d		4889842480010000	MOVQ AX, 0x180(SP)							
  task_nav.go:169	0xe2da25		48898c2490010000	MOVQ CX, 0x190(SP)							
  task_nav.go:170	0xe2da2d		4885ff			TESTQ DI, DI								
  task_nav.go:170	0xe2da30		0f8423010000		JE 0xe2db59								
  task_nav.go:170	0xe2da36		48898c2490010000	MOVQ CX, 0x190(SP)							
  task_nav.go:170	0xe2da3e		4889bc2498010000	MOVQ DI, 0x198(SP)							
  task_nav.go:173	0xe2da46		48c744243800000000	MOVQ $0x0, 0x38(SP)							
  task_nav.go:174	0xe2da4f		440f11bc2448010000	MOVUPS X15, 0x148(SP)							
  task_nav.go:174	0xe2da58		440f11bc2450010000	MOVUPS X15, 0x150(SP)							
  task_nav.go:174	0xe2da61		440f11bc2460010000	MOVUPS X15, 0x160(SP)							
  task_nav.go:174	0xe2da6a		488d150f020000		LEAQ CAS-Backend/pkg/diapdu.allNavSubTasksTerminal.func1(SB), DX	
  task_nav.go:174	0xe2da71		4889942448010000	MOVQ DX, 0x148(SP)							
  task_nav.go:174	0xe2da79		4889bc2458010000	MOVQ DI, 0x158(SP)							
  task_nav.go:174	0xe2da81		4889b42460010000	MOVQ SI, 0x160(SP)							
  task_nav.go:174	0xe2da89		48898c2450010000	MOVQ CX, 0x150(SP)							
  task_nav.go:174	0xe2da91		488d542438		LEAQ 0x38(SP), DX							
  task_nav.go:174	0xe2da96		4889942468010000	MOVQ DX, 0x168(SP)							
  task_nav.go:174	0xe2da9e		b9044b0000		MOVL $__size_of_stack_commit__+15108(SB), CX				
  task_nav.go:174	0xe2daa3		488dbc2448010000	LEAQ 0x148(SP), DI							
  task_nav.go:174	0xe2daab		e8505bfeff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)				
  task_nav.go:182	0xe2dab0		4885c0			TESTQ AX, AX								
  task_nav.go:182	0xe2dab3		0f8595000000		JNE 0xe2db4e								
  task_nav.go:182	0xe2dab9		488b542438		MOVQ 0x38(SP), DX							
  task_nav.go:182	0xe2dabe		6690			NOPW									
  task_nav.go:182	0xe2dac0		4885d2			TESTQ DX, DX								
  task_nav.go:182	0xe2dac3		0f8485000000		JE 0xe2db4e								
  task_nav.go:185	0xe2dac9		488b9ac0000000		MOVQ 0xc0(DX), BX							
  task_nav.go:185	0xe2dad0		440f11bc2418010000	MOVUPS X15, 0x118(SP)							
  task_nav.go:185	0xe2dad9		440f11bc2428010000	MOVUPS X15, 0x128(SP)							
  task_nav.go:185	0xe2dae2		440f11bc2438010000	MOVUPS X15, 0x138(SP)							
  task_nav.go:185	0xe2daeb		4883fb08		CMPQ BX, $__major_os_version__+2(SB)					
  task_nav.go:185	0xe2daef		7f2f			JG 0xe2db20								
  task_nav.go:185	0xe2daf1		488d7c2448		LEAQ 0x48(SP), DI							
  task_nav.go:185	0xe2daf6		488d7fd0		LEAQ -0x30(DI), DI							
  task_nav.go:185	0xe2dafa		660f1f440000		NOPW 0(AX)(AX*1)							
  task_nav.go:185	0xe2db00		48896c24f0		MOVQ BP, -0x10(SP)							
  task_nav.go:185	0xe2db05		488d6c24f0		LEAQ -0x10(SP), BP							
  task_nav.go:185	0xe2db0a		e8b3af64ff		CALL 0x478ac2								
  task_nav.go:185	0xe2db0f		488b6d00		MOVQ 0(BP), BP								
  task_nav.go:185	0xe2db13		488d542448		LEAQ 0x48(SP), DX							
  task_nav.go:185	0xe2db18		4889942428010000	MOVQ DX, 0x128(SP)							
  task_nav.go:185	0xe2db20		488d05d9fe2400		LEAQ runtime.types+625152(SB), AX					
  task_nav.go:185	0xe2db27		488d8c2418010000	LEAQ 0x118(SP), CX							
  task_nav.go:185	0xe2db2f		e8ecd463ff		CALL runtime.makemap(SB)						
  task_nav.go:185	0xe2db34		4889442430		MOVQ AX, 0x30(SP)							
  task_nav.go:186	0xe2db39		488b542438		MOVQ 0x38(SP), DX							
  task_nav.go:186	0xe2db3e		488bb2b8000000		MOVQ 0xb8(DX), SI							
  task_nav.go:186	0xe2db45		488b92c0000000		MOVQ 0xc0(DX), DX							
  task_nav.go:186	0xe2db4c		eb5d			JMP 0xe2dbab								
  task_nav.go:183	0xe2db4e		31c0			XORL AX, AX								
  task_nav.go:183	0xe2db50		4881c470010000		ADDQ $.file+291(SB), SP							
  task_nav.go:183	0xe2db57		5d			POPQ BP									
  task_nav.go:183	0xe2db58		c3			RET									
  task_nav.go:171	0xe2db59		31c0			XORL AX, AX								
  task_nav.go:171	0xe2db5b		4881c470010000		ADDQ $.file+291(SB), SP							
  task_nav.go:171	0xe2db62		5d			POPQ BP									
  task_nav.go:171	0xe2db63		c3			RET									
  task_nav.go:186	0xe2db64		4889542428		MOVQ DX, 0x28(SP)							
  task_nav.go:186	0xe2db69		4889742440		MOVQ SI, 0x40(SP)							
  task_nav.go:186	0xe2db6e		488b0e			MOVQ 0(SI), CX								
  task_nav.go:186	0xe2db71		488b7e08		MOVQ 0x8(SI), DI							
  task_nav.go:186	0xe2db75		488b5610		MOVQ 0x10(SI), DX							
  task_nav.go:186	0xe2db79		4889542420		MOVQ DX, 0x20(SP)							
  task_nav.go:187	0xe2db7e		4889c3			MOVQ AX, BX								
  task_nav.go:187	0xe2db81		488d0578fe2400		LEAQ runtime.types+625152(SB), AX					
  task_nav.go:187	0xe2db88		e8930464ff		CALL runtime.mapassign_faststr(SB)					
  task_nav.go:187	0xe2db8d		488b542420		MOVQ 0x20(SP), DX							
  task_nav.go:187	0xe2db92		488910			MOVQ DX, 0(AX)								
  task_nav.go:186	0xe2db95		488b742440		MOVQ 0x40(SP), SI							
  task_nav.go:186	0xe2db9a		4883c620		ADDQ $__major_os_version__+26(SB), SI					
  task_nav.go:186	0xe2db9e		488b542428		MOVQ 0x28(SP), DX							
  task_nav.go:186	0xe2dba3		48ffca			DECQ DX									
  task_nav.go:187	0xe2dba6		488b442430		MOVQ 0x30(SP), AX							
  task_nav.go:186	0xe2dbab		4885d2			TESTQ DX, DX								
  task_nav.go:186	0xe2dbae		7fb4			JG 0xe2db64								
  task_nav.go:189	0xe2dbb0		488b942490010000	MOVQ 0x190(SP), DX							
  task_nav.go:189	0xe2dbb8		488b8c2498010000	MOVQ 0x198(SP), CX							
  task_nav.go:189	0xe2dbc0		eb16			JMP 0xe2dbd8								
  task_nav.go:189	0xe2dbc2		488b542440		MOVQ 0x40(SP), DX							
  task_nav.go:189	0xe2dbc7		4883c210		ADDQ $__major_os_version__+10(SB), DX					
  task_nav.go:189	0xe2dbcb		488b4c2428		MOVQ 0x28(SP), CX							
  task_nav.go:189	0xe2dbd0		48ffc9			DECQ CX									
  task_nav.go:190	0xe2dbd3		488b442430		MOVQ 0x30(SP), AX							
  task_nav.go:189	0xe2dbd8		4885c9			TESTQ CX, CX								
  task_nav.go:189	0xe2dbdb		7e54			JLE 0xe2dc31								
  task_nav.go:189	0xe2dbdd		48894c2428		MOVQ CX, 0x28(SP)							
  task_nav.go:189	0xe2dbe2		4889542440		MOVQ DX, 0x40(SP)							
  task_nav.go:189	0xe2dbe7		488b0a			MOVQ 0(DX), CX								
  task_nav.go:189	0xe2dbea		488b7a08		MOVQ 0x8(DX), DI							
  task_nav.go:190	0xe2dbee		4889c3			MOVQ AX, BX								
  task_nav.go:190	0xe2dbf1		488d0508fe2400		LEAQ runtime.types+625152(SB), AX					
  task_nav.go:190	0xe2dbf8		e8430064ff		CALL runtime.mapaccess2_faststr(SB)					
  task_nav.go:190	0xe2dbfd		0f1f00			NOPL 0(AX)								
  task_nav.go:190	0xe2dc00		84db			TESTL BL, BL								
  task_nav.go:191	0xe2dc02		7422			JE 0xe2dc26								
  task_nav.go:190	0xe2dc04		488b10			MOVQ 0(AX), DX								
  traffic_dynamic.go:28	0xe2dc07		488d72fc		LEAQ -0x4(DX), SI							
  task_nav.go:194	0xe2dc0b		90			NOPL									
  traffic_dynamic.go:28	0xe2dc0c		4883fe03		CMPQ SI, $__subsystem__(SB)						
  traffic_dynamic.go:28	0xe2dc10		76b0			JBE 0xe2dbc2								
  traffic_dynamic.go:28	0xe2dc12		4881fa94010000		CMPQ DX, $.file+327(SB)							
  traffic_dynamic.go:28	0xe2dc19		74a7			JE 0xe2dbc2								
  task_nav.go:195	0xe2dc1b		31c0			XORL AX, AX								
  task_nav.go:195	0xe2dc1d		4881c470010000		ADDQ $.file+291(SB), SP							
  task_nav.go:195	0xe2dc24		5d			POPQ BP									
  task_nav.go:195	0xe2dc25		c3			RET									
  task_nav.go:192	0xe2dc26		31c0			XORL AX, AX								
  task_nav.go:192	0xe2dc28		4881c470010000		ADDQ $.file+291(SB), SP							
  task_nav.go:192	0xe2dc2f		5d			POPQ BP									
  task_nav.go:192	0xe2dc30		c3			RET									
  task_nav.go:198	0xe2dc31		b801000000		MOVL $__minor_os_version__(SB), AX					
  task_nav.go:198	0xe2dc36		4881c470010000		ADDQ $.file+291(SB), SP							
  task_nav.go:198	0xe2dc3d		5d			POPQ BP									
  task_nav.go:198	0xe2dc3e		c3			RET									
  task_nav.go:169	0xe2dc3f		4889442408		MOVQ AX, 0x8(SP)							
  task_nav.go:169	0xe2dc44		48895c2410		MOVQ BX, 0x10(SP)							
  task_nav.go:169	0xe2dc49		48894c2418		MOVQ CX, 0x18(SP)							
  task_nav.go:169	0xe2dc4e		48897c2420		MOVQ DI, 0x20(SP)							
  task_nav.go:169	0xe2dc53		4889742428		MOVQ SI, 0x28(SP)							
  task_nav.go:169	0xe2dc58		e8838864ff		CALL runtime.morestack_noctxt.abi0(SB)					
  task_nav.go:169	0xe2dc5d		488b442408		MOVQ 0x8(SP), AX							
  task_nav.go:169	0xe2dc62		488b5c2410		MOVQ 0x10(SP), BX							
  task_nav.go:169	0xe2dc67		488b4c2418		MOVQ 0x18(SP), CX							
  task_nav.go:169	0xe2dc6c		488b7c2420		MOVQ 0x20(SP), DI							
  task_nav.go:169	0xe2dc71		488b742428		MOVQ 0x28(SP), SI							
  task_nav.go:169	0xe2dc76		e985fdffff		JMP CAS-Backend/pkg/diapdu.allNavSubTasksTerminal(SB)			
  :-1			0xe2dc7b		cc			INT $__subsystem__(SB)							
  :-1			0xe2dc7c		cc			INT $__subsystem__(SB)							
  :-1			0xe2dc7d		cc			INT $__subsystem__(SB)							
  :-1			0xe2dc7e		cc			INT $__subsystem__(SB)							
  :-1			0xe2dc7f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/pkg/diapdu.allNavSubTasksTerminal.func1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/task_nav.go
  task_nav.go:174	0xe2dc80		493b6610		CMPQ SP, 0x10(R14)						
  task_nav.go:174	0xe2dc84		7670			JBE 0xe2dcf6							
  task_nav.go:174	0xe2dc86		55			PUSHQ BP							
  task_nav.go:174	0xe2dc87		4889e5			MOVQ SP, BP							
  task_nav.go:174	0xe2dc8a		4883ec30		SUBQ $__major_os_version__+42(SB), SP				
  task_nav.go:174	0xe2dc8e		4889442440		MOVQ AX, 0x40(SP)						
  task_nav.go:174	0xe2dc93		48895c2448		MOVQ BX, 0x48(SP)						
  task_nav.go:174	0xe2dc98		488b4a08		MOVQ 0x8(DX), CX						
  task_nav.go:174	0xe2dc9c		488b7a10		MOVQ 0x10(DX), DI						
  task_nav.go:174	0xe2dca0		488b7218		MOVQ 0x18(DX), SI						
  task_nav.go:174	0xe2dca4		488b5220		MOVQ 0x20(DX), DX						
  task_nav.go:174	0xe2dca8		4889542428		MOVQ DX, 0x28(SP)						
  task_nav.go:175	0xe2dcad		e80ea8feff		CALL CAS-Backend/pkg/agvcontrol.SendRobotTaskStatusReq(SB)	
  task_nav.go:176	0xe2dcb2		4885db			TESTQ BX, BX							
  task_nav.go:176	0xe2dcb5		7533			JNE 0xe2dcea							
  task_nav.go:179	0xe2dcb7		833d92fe720200		CMPL runtime.writeBarrier(SB), $0x0				
  task_nav.go:179	0xe2dcbe		6690			NOPW								
  task_nav.go:179	0xe2dcc0		7507			JNE 0xe2dcc9							
  task_nav.go:179	0xe2dcc2		488b4c2428		MOVQ 0x28(SP), CX						
  task_nav.go:179	0xe2dcc7		eb14			JMP 0xe2dcdd							
  task_nav.go:179	0xe2dcc9		e872a764ff		CALL runtime.gcWriteBarrier2(SB)				
  task_nav.go:179	0xe2dcce		498903			MOVQ AX, 0(R11)							
  task_nav.go:179	0xe2dcd1		488b4c2428		MOVQ 0x28(SP), CX						
  task_nav.go:179	0xe2dcd6		488b11			MOVQ 0(CX), DX							
  task_nav.go:179	0xe2dcd9		49895308		MOVQ DX, 0x8(R11)						
  task_nav.go:179	0xe2dcdd		488901			MOVQ AX, 0(CX)							
  task_nav.go:180	0xe2dce0		31c0			XORL AX, AX							
  task_nav.go:180	0xe2dce2		31db			XORL BX, BX							
  task_nav.go:180	0xe2dce4		4883c430		ADDQ $__major_os_version__+42(SB), SP				
  task_nav.go:180	0xe2dce8		5d			POPQ BP								
  task_nav.go:180	0xe2dce9		c3			RET								
  task_nav.go:177	0xe2dcea		4889d8			MOVQ BX, AX							
  task_nav.go:177	0xe2dced		4889cb			MOVQ CX, BX							
  task_nav.go:177	0xe2dcf0		4883c430		ADDQ $__major_os_version__+42(SB), SP				
  task_nav.go:177	0xe2dcf4		5d			POPQ BP								
  task_nav.go:177	0xe2dcf5		c3			RET								
  task_nav.go:174	0xe2dcf6		4889442408		MOVQ AX, 0x8(SP)						
  task_nav.go:174	0xe2dcfb		48895c2410		MOVQ BX, 0x10(SP)						
  task_nav.go:174	0xe2dd00		e85b8764ff		CALL runtime.morestack.abi0(SB)					
  task_nav.go:174	0xe2dd05		488b442408		MOVQ 0x8(SP), AX						
  task_nav.go:174	0xe2dd0a		488b5c2410		MOVQ 0x10(SP), BX						
  task_nav.go:174	0xe2dd0f		e96cffffff		JMP CAS-Backend/pkg/diapdu.allNavSubTasksTerminal.func1(SB)	
  :-1			0xe2dd14		cc			INT $__subsystem__(SB)						
  :-1			0xe2dd15		cc			INT $__subsystem__(SB)						
  :-1			0xe2dd16		cc			INT $__subsystem__(SB)						
  :-1			0xe2dd17		cc			INT $__subsystem__(SB)						
  :-1			0xe2dd18		cc			INT $__subsystem__(SB)						
  :-1			0xe2dd19		cc			INT $__subsystem__(SB)						
  :-1			0xe2dd1a		cc			INT $__subsystem__(SB)						
  :-1			0xe2dd1b		cc			INT $__subsystem__(SB)						
  :-1			0xe2dd1c		cc			INT $__subsystem__(SB)						
  :-1			0xe2dd1d		cc			INT $__subsystem__(SB)						
  :-1			0xe2dd1e		cc			INT $__subsystem__(SB)						
  :-1			0xe2dd1f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.navTasksCompleteFromMonitor(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/task_nav.go
  task_nav.go:202	0xe2dd20		493b6610		CMPQ SP, 0x10(R14)						
  task_nav.go:202	0xe2dd24		0f8697010000		JBE 0xe2dec1							
  task_nav.go:202	0xe2dd2a		55			PUSHQ BP							
  task_nav.go:202	0xe2dd2b		4889e5			MOVQ SP, BP							
  task_nav.go:202	0xe2dd2e		4883ec40		SUBQ $__major_os_version__+58(SB), SP				
  task_nav.go:202	0xe2dd32		4889442450		MOVQ AX, 0x50(SP)						
  task_nav.go:204	0xe2dd37		48894c2460		MOVQ CX, 0x60(SP)						
  task_nav.go:204	0xe2dd3c		4c89442478		MOVQ R8, 0x78(SP)						
  task_nav.go:204	0xe2dd41		48897c2468		MOVQ DI, 0x68(SP)						
  task_nav.go:204	0xe2dd46		4c898c2480000000	MOVQ R9, 0x80(SP)						
  task_nav.go:204	0xe2dd4e		4889742470		MOVQ SI, 0x70(SP)						
  task_nav.go:203	0xe2dd53		e868460100		CALL CAS-Backend/pkg/diapdu.MonitorSnapForVehicle(SB)		
  task_nav.go:203	0xe2dd58		0f1f840000000000	NOPL 0(AX)(AX*1)						
  task_nav.go:203	0xe2dd60		84c9			TESTL CL, CL							
  task_nav.go:204	0xe2dd62		0f844f010000		JE 0xe2deb7							
  task_nav.go:208	0xe2dd68		4885c0			TESTQ AX, AX							
  task_nav.go:208	0xe2dd6b		0f84f0000000		JE 0xe2de61							
  task_nav.go:203	0xe2dd71		48895c2438		MOVQ BX, 0x38(SP)						
  task_nav.go:214	0xe2dd76		488b4c2468		MOVQ 0x68(SP), CX						
  task_nav.go:214	0xe2dd7b		0f1f440000		NOPL 0(AX)(AX*1)						
  task_nav.go:214	0xe2dd80		4885c9			TESTQ CX, CX							
  task_nav.go:214	0xe2dd83		742a			JE 0xe2ddaf							
  task_nav.go:214	0xe2dd85		4883785800		CMPQ 0x58(AX), $0x0						
  task_nav.go:214	0xe2dd8a		7523			JNE 0xe2ddaf							
  traffic_dynamic.go:95	0xe2dd8c		4883784800		CMPQ 0x48(AX), $0x0						
  traffic_dynamic.go:95	0xe2dd91		751c			JNE 0xe2ddaf							
  traffic_dynamic.go:95	0xe2dd93		4883783800		CMPQ 0x38(AX), $0x0						
  traffic_dynamic.go:95	0xe2dd98		7515			JNE 0xe2ddaf							
  traffic_dynamic.go:95	0xe2dd9a		4883780800		CMPQ 0x8(AX), $0x0						
  traffic_dynamic.go:95	0xe2dd9f		90			NOPL								
  task_nav.go:214	0xe2dda0		750d			JNE 0xe2ddaf							
  task_nav.go:215	0xe2dda2		31c0			XORL AX, AX							
  task_nav.go:215	0xe2dda4		bb01000000		MOVL $__minor_os_version__(SB), BX				
  task_nav.go:215	0xe2dda9		4883c440		ADDQ $__major_os_version__+58(SB), SP				
  task_nav.go:215	0xe2ddad		5d			POPQ BP								
  task_nav.go:215	0xe2ddae		c3			RET								
  task_nav.go:203	0xe2ddaf		4889442430		MOVQ AX, 0x30(SP)						
  task_nav.go:217	0xe2ddb4		488b5c2460		MOVQ 0x60(SP), BX						
  task_nav.go:217	0xe2ddb9		488b7c2470		MOVQ 0x70(SP), DI						
  task_nav.go:217	0xe2ddbe		6690			NOPW								
  task_nav.go:217	0xe2ddc0		e85bad0000		CALL CAS-Backend/pkg/diapdu.allSubTasksTerminalForDispatch(SB)	
  task_nav.go:217	0xe2ddc5		84c0			TESTL AL, AL							
  task_nav.go:217	0xe2ddc7		0f8487000000		JE 0xe2de54							
  task_nav.go:220	0xe2ddcd		4c8b842480000000	MOVQ 0x80(SP), R8						
  task_nav.go:220	0xe2ddd5		4d85c0			TESTQ R8, R8							
  task_nav.go:220	0xe2ddd8		746d			JE 0xe2de47							
  task_nav.go:223	0xe2ddda		488b542438		MOVQ 0x38(SP), DX						
  task_nav.go:223	0xe2dddf		90			NOPL								
  task_nav.go:223	0xe2dde0		4885d2			TESTQ DX, DX							
  task_nav.go:223	0xe2dde3		7439			JE 0xe2de1e							
  task_nav.go:223	0xe2dde5		488b4a48		MOVQ 0x48(DX), CX						
  task_nav.go:223	0xe2dde9		4939c8			CMPQ R8, CX							
  task_nav.go:223	0xe2ddec		7404			JE 0xe2ddf2							
  task_nav.go:223	0xe2ddee		31c0			XORL AX, AX							
  task_nav.go:223	0xe2ddf0		eb1b			JMP 0xe2de0d							
  task_nav.go:223	0xe2ddf2		488b4240		MOVQ 0x40(DX), AX						
  task_nav.go:223	0xe2ddf6		488b5c2478		MOVQ 0x78(SP), BX						
  task_nav.go:223	0xe2ddfb		0f1f440000		NOPL 0(AX)(AX*1)						
  task_nav.go:223	0xe2de00		e85b505dff		CALL runtime.memequal(SB)					
  task_nav.go:226	0xe2de05		4c8b842480000000	MOVQ 0x80(SP), R8						
  task_nav.go:223	0xe2de0d		84c0			TESTL AL, AL							
  task_nav.go:223	0xe2de0f		740d			JE 0xe2de1e							
  task_nav.go:224	0xe2de11		b801000000		MOVL $__minor_os_version__(SB), AX				
  task_nav.go:224	0xe2de16		89c3			MOVL AX, BX							
  task_nav.go:224	0xe2de18		4883c440		ADDQ $__major_os_version__+58(SB), SP				
  task_nav.go:224	0xe2de1c		5d			POPQ BP								
  task_nav.go:224	0xe2de1d		c3			RET								
  task_nav.go:226	0xe2de1e		488b442430		MOVQ 0x30(SP), AX						
  task_nav.go:226	0xe2de23		488b5c2460		MOVQ 0x60(SP), BX						
  task_nav.go:226	0xe2de28		488b4c2468		MOVQ 0x68(SP), CX						
  task_nav.go:226	0xe2de2d		488b7c2470		MOVQ 0x70(SP), DI						
  task_nav.go:226	0xe2de32		488b742478		MOVQ 0x78(SP), SI						
  task_nav.go:226	0xe2de37		e8a4b00000		CALL CAS-Backend/pkg/diapdu.NavTasksCompleteFromMonitor(SB)	
  task_nav.go:226	0xe2de3c		bb01000000		MOVL $__minor_os_version__(SB), BX				
  task_nav.go:226	0xe2de41		4883c440		ADDQ $__major_os_version__+58(SB), SP				
  task_nav.go:226	0xe2de45		5d			POPQ BP								
  task_nav.go:226	0xe2de46		c3			RET								
  task_nav.go:221	0xe2de47		b801000000		MOVL $__minor_os_version__(SB), AX				
  task_nav.go:221	0xe2de4c		89c3			MOVL AX, BX							
  task_nav.go:221	0xe2de4e		4883c440		ADDQ $__major_os_version__+58(SB), SP				
  task_nav.go:221	0xe2de52		5d			POPQ BP								
  task_nav.go:221	0xe2de53		c3			RET								
  task_nav.go:218	0xe2de54		31c0			XORL AX, AX							
  task_nav.go:218	0xe2de56		bb01000000		MOVL $__minor_os_version__(SB), BX				
  task_nav.go:218	0xe2de5b		4883c440		ADDQ $__major_os_version__+58(SB), SP				
  task_nav.go:218	0xe2de5f		5d			POPQ BP								
  task_nav.go:218	0xe2de60		c3			RET								
  task_nav.go:209	0xe2de61		4885db			TESTQ BX, BX							
  task_nav.go:209	0xe2de64		7444			JE 0xe2deaa							
  task_nav.go:209	0xe2de66		488b542468		MOVQ 0x68(SP), DX						
  task_nav.go:209	0xe2de6b		4885d2			TESTQ DX, DX							
  task_nav.go:209	0xe2de6e		753a			JNE 0xe2deaa							
  task_nav.go:210	0xe2de70		488b942480000000	MOVQ 0x80(SP), DX						
  task_nav.go:210	0xe2de78		4885d2			TESTQ DX, DX							
  task_nav.go:210	0xe2de7b		7507			JNE 0xe2de84							
  task_nav.go:210	0xe2de7d		b801000000		MOVL $__minor_os_version__(SB), AX				
  task_nav.go:210	0xe2de82		eb1b			JMP 0xe2de9f							
  task_nav.go:210	0xe2de84		488b4b48		MOVQ 0x48(BX), CX						
  task_nav.go:210	0xe2de88		4839ca			CMPQ DX, CX							
  task_nav.go:210	0xe2de8b		7404			JE 0xe2de91							
  task_nav.go:210	0xe2de8d		31c0			XORL AX, AX							
  task_nav.go:210	0xe2de8f		eb0e			JMP 0xe2de9f							
  task_nav.go:210	0xe2de91		488b4340		MOVQ 0x40(BX), AX						
  task_nav.go:210	0xe2de95		488b5c2478		MOVQ 0x78(SP), BX						
  task_nav.go:210	0xe2de9a		e8c14f5dff		CALL runtime.memequal(SB)					
  task_nav.go:210	0xe2de9f		bb01000000		MOVL $__minor_os_version__(SB), BX				
  task_nav.go:210	0xe2dea4		4883c440		ADDQ $__major_os_version__+58(SB), SP				
  task_nav.go:210	0xe2dea8		5d			POPQ BP								
  task_nav.go:210	0xe2dea9		c3			RET								
  task_nav.go:212	0xe2deaa		31c0			XORL AX, AX							
  task_nav.go:212	0xe2deac		bb01000000		MOVL $__minor_os_version__(SB), BX				
  task_nav.go:212	0xe2deb1		4883c440		ADDQ $__major_os_version__+58(SB), SP				
  task_nav.go:212	0xe2deb5		5d			POPQ BP								
  task_nav.go:212	0xe2deb6		c3			RET								
  task_nav.go:205	0xe2deb7		31c0			XORL AX, AX							
  task_nav.go:205	0xe2deb9		89c3			MOVL AX, BX							
  task_nav.go:205	0xe2debb		4883c440		ADDQ $__major_os_version__+58(SB), SP				
  task_nav.go:205	0xe2debf		5d			POPQ BP								
  task_nav.go:205	0xe2dec0		c3			RET								
  task_nav.go:202	0xe2dec1		4889442408		MOVQ AX, 0x8(SP)						
  task_nav.go:202	0xe2dec6		48895c2410		MOVQ BX, 0x10(SP)						
  task_nav.go:202	0xe2decb		48894c2418		MOVQ CX, 0x18(SP)						
  task_nav.go:202	0xe2ded0		48897c2420		MOVQ DI, 0x20(SP)						
  task_nav.go:202	0xe2ded5		4889742428		MOVQ SI, 0x28(SP)						
  task_nav.go:202	0xe2deda		4c89442430		MOVQ R8, 0x30(SP)						
  task_nav.go:202	0xe2dedf		4c894c2438		MOVQ R9, 0x38(SP)						
  task_nav.go:202	0xe2dee4		e8f78564ff		CALL runtime.morestack_noctxt.abi0(SB)				
  task_nav.go:202	0xe2dee9		488b442408		MOVQ 0x8(SP), AX						
  task_nav.go:202	0xe2deee		488b5c2410		MOVQ 0x10(SP), BX						
  task_nav.go:202	0xe2def3		488b4c2418		MOVQ 0x18(SP), CX						
  task_nav.go:202	0xe2def8		488b7c2420		MOVQ 0x20(SP), DI						
  task_nav.go:202	0xe2defd		488b742428		MOVQ 0x28(SP), SI						
  task_nav.go:202	0xe2df02		4c8b442430		MOVQ 0x30(SP), R8						
  task_nav.go:202	0xe2df07		4c8b4c2438		MOVQ 0x38(SP), R9						
  task_nav.go:202	0xe2df0c		e90ffeffff		JMP CAS-Backend/pkg/diapdu.navTasksCompleteFromMonitor(SB)	
  :-1			0xe2df11		cc			INT $__subsystem__(SB)						
  :-1			0xe2df12		cc			INT $__subsystem__(SB)						
  :-1			0xe2df13		cc			INT $__subsystem__(SB)						
  :-1			0xe2df14		cc			INT $__subsystem__(SB)						
  :-1			0xe2df15		cc			INT $__subsystem__(SB)						
  :-1			0xe2df16		cc			INT $__subsystem__(SB)						
  :-1			0xe2df17		cc			INT $__subsystem__(SB)						
  :-1			0xe2df18		cc			INT $__subsystem__(SB)						
  :-1			0xe2df19		cc			INT $__subsystem__(SB)						
  :-1			0xe2df1a		cc			INT $__subsystem__(SB)						
  :-1			0xe2df1b		cc			INT $__subsystem__(SB)						
  :-1			0xe2df1c		cc			INT $__subsystem__(SB)						
  :-1			0xe2df1d		cc			INT $__subsystem__(SB)						
  :-1			0xe2df1e		cc			INT $__subsystem__(SB)						
  :-1			0xe2df1f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.stitchStationPaths(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/task_nav.go
  task_nav.go:230	0xe2df20		493b6610		CMPQ SP, 0x10(R14)					
  task_nav.go:230	0xe2df24		0f865c040000		JBE 0xe2e386						
  task_nav.go:230	0xe2df2a		55			PUSHQ BP						
  task_nav.go:230	0xe2df2b		4889e5			MOVQ SP, BP						
  task_nav.go:230	0xe2df2e		4883ec60		SUBQ $.file+19(SB), SP					
  task_nav.go:230	0xe2df32		4889442470		MOVQ AX, 0x70(SP)					
  task_nav.go:231	0xe2df37		4889bc2488000000	MOVQ DI, 0x88(SP)					
  task_nav.go:231	0xe2df3f		4889b42490000000	MOVQ SI, 0x90(SP)					
  task_nav.go:231	0xe2df47		4885db			TESTQ BX, BX						
  task_nav.go:231	0xe2df4a		0f848e000000		JE 0xe2dfde						
  task_nav.go:231	0xe2df50		4889442470		MOVQ AX, 0x70(SP)					
  task_nav.go:231	0xe2df55		48895c2478		MOVQ BX, 0x78(SP)					
  task_nav.go:234	0xe2df5a		4885f6			TESTQ SI, SI						
  task_nav.go:234	0xe2df5d		7426			JE 0xe2df85						
  task_nav.go:231	0xe2df5f		4c89842498000000	MOVQ R8, 0x98(SP)					
  task_nav.go:239	0xe2df67		4839f3			CMPQ BX, SI						
  task_nav.go:242	0xe2df6a		4889d9			MOVQ BX, CX						
  task_nav.go:242	0xe2df6d		480f4fde		CMOVG SI, BX						
  task_nav.go:242	0xe2df71		48895c2428		MOVQ BX, 0x28(SP)					
  task_nav.go:242	0xe2df76		ba01000000		MOVL $__minor_os_version__(SB), DX			
  task_nav.go:242	0xe2df7b		4531c9			XORL R9, R9						
  task_nav.go:242	0xe2df7e		6690			NOPW							
  task_nav.go:239	0xe2df80		e9cf000000		JMP 0xe2e054						
  task_nav.go:235	0xe2df85		31c0			XORL AX, AX						
  task_nav.go:235	0xe2df87		31c9			XORL CX, CX						
  task_nav.go:235	0xe2df89		4889df			MOVQ BX, DI						
  task_nav.go:235	0xe2df8c		488d358d492100		LEAQ runtime.types+383264(SB), SI			
  task_nav.go:235	0xe2df93		e8a83c64ff		CALL runtime.growslice(SB)				
  task_nav.go:235	0xe2df98		4889442458		MOVQ AX, 0x58(SP)					
  task_nav.go:235	0xe2df9d		48895c2448		MOVQ BX, 0x48(SP)					
  task_nav.go:235	0xe2dfa2		48894c2440		MOVQ CX, 0x40(SP)					
  task_nav.go:235	0xe2dfa7		488b7c2470		MOVQ 0x70(SP), DI					
  task_nav.go:235	0xe2dfac		488b742478		MOVQ 0x78(SP), SI					
  task_nav.go:235	0xe2dfb1		4889c2			MOVQ AX, DX						
  task_nav.go:235	0xe2dfb4		488d0565492100		LEAQ runtime.types+383264(SB), AX			
  task_nav.go:235	0xe2dfbb		4989d8			MOVQ BX, R8						
  task_nav.go:235	0xe2dfbe		4889d3			MOVQ DX, BX						
  task_nav.go:235	0xe2dfc1		4c89c1			MOVQ R8, CX						
  task_nav.go:235	0xe2dfc4		e8770564ff		CALL runtime.typedslicecopy(SB)				
  task_nav.go:235	0xe2dfc9		488b442458		MOVQ 0x58(SP), AX					
  task_nav.go:235	0xe2dfce		488b5c2448		MOVQ 0x48(SP), BX					
  task_nav.go:235	0xe2dfd3		488b4c2440		MOVQ 0x40(SP), CX					
  task_nav.go:235	0xe2dfd8		4883c460		ADDQ $.file+19(SB), SP					
  task_nav.go:235	0xe2dfdc		5d			POPQ BP							
  task_nav.go:235	0xe2dfdd		c3			RET							
  task_nav.go:235	0xe2dfde		6690			NOPW							
  task_nav.go:232	0xe2dfe0		4885f6			TESTQ SI, SI						
  task_nav.go:232	0xe2dfe3		7508			JNE 0xe2dfed						
  task_nav.go:232	0xe2dfe5		31db			XORL BX, BX						
  task_nav.go:232	0xe2dfe7		31c0			XORL AX, AX						
  task_nav.go:232	0xe2dfe9		31c9			XORL CX, CX						
  task_nav.go:232	0xe2dfeb		eb28			JMP 0xe2e015						
  task_nav.go:232	0xe2dfed		31c0			XORL AX, AX						
  task_nav.go:232	0xe2dfef		4889f3			MOVQ SI, BX						
  task_nav.go:232	0xe2dff2		31c9			XORL CX, CX						
  task_nav.go:232	0xe2dff4		4889df			MOVQ BX, DI						
  task_nav.go:232	0xe2dff7		488d3522492100		LEAQ runtime.types+383264(SB), SI			
  task_nav.go:232	0xe2dffe		6690			NOPW							
  task_nav.go:232	0xe2e000		e83b3c64ff		CALL runtime.growslice(SB)				
  task_nav.go:232	0xe2e005		488bb42490000000	MOVQ 0x90(SP), SI					
  task_nav.go:232	0xe2e00d		488bbc2488000000	MOVQ 0x88(SP), DI					
  task_nav.go:232	0xe2e015		48894c2448		MOVQ CX, 0x48(SP)					
  task_nav.go:232	0xe2e01a		48895c2440		MOVQ BX, 0x40(SP)					
  task_nav.go:232	0xe2e01f		4889442458		MOVQ AX, 0x58(SP)					
  task_nav.go:232	0xe2e024		4889c2			MOVQ AX, DX						
  task_nav.go:232	0xe2e027		488d05f2482100		LEAQ runtime.types+383264(SB), AX			
  task_nav.go:232	0xe2e02e		4989d8			MOVQ BX, R8						
  task_nav.go:232	0xe2e031		4889d3			MOVQ DX, BX						
  task_nav.go:232	0xe2e034		4c89c1			MOVQ R8, CX						
  task_nav.go:232	0xe2e037		e8040564ff		CALL runtime.typedslicecopy(SB)				
  task_nav.go:232	0xe2e03c		488b442458		MOVQ 0x58(SP), AX					
  task_nav.go:232	0xe2e041		488b5c2440		MOVQ 0x40(SP), BX					
  task_nav.go:232	0xe2e046		488b4c2448		MOVQ 0x48(SP), CX					
  task_nav.go:232	0xe2e04b		4883c460		ADDQ $.file+19(SB), SP					
  task_nav.go:232	0xe2e04f		5d			POPQ BP							
  task_nav.go:232	0xe2e050		c3			RET							
  task_nav.go:242	0xe2e051		48ffc2			INCQ DX							
  task_nav.go:254	0xe2e054		4c894c2438		MOVQ R9, 0x38(SP)					
  task_nav.go:242	0xe2e059		4839da			CMPQ DX, BX						
  task_nav.go:242	0xe2e05c		7f45			JG 0xe2e0a3						
  task_nav.go:242	0xe2e05e		4889542430		MOVQ DX, 0x30(SP)					
  task_nav.go:242	0xe2e063		4531d2			XORL R10, R10						
  task_nav.go:244	0xe2e066		e995020000		JMP 0xe2e300						
  task_nav.go:245	0xe2e06b		488b442470		MOVQ 0x70(SP), AX					
  task_nav.go:245	0xe2e070		488b4c2478		MOVQ 0x78(SP), CX					
  task_nav.go:242	0xe2e075		488b542430		MOVQ 0x30(SP), DX					
  task_nav.go:242	0xe2e07a		488b5c2428		MOVQ 0x28(SP), BX					
  task_nav.go:245	0xe2e07f		488bb42490000000	MOVQ 0x90(SP), SI					
  task_nav.go:245	0xe2e087		488bbc2488000000	MOVQ 0x88(SP), DI					
  task_nav.go:255	0xe2e08f		4c8b842498000000	MOVQ 0x98(SP), R8					
  task_nav.go:254	0xe2e097		4c8b4c2438		MOVQ 0x38(SP), R9					
  task_nav.go:245	0xe2e09c		ebb3			JMP 0xe2e051						
  task_nav.go:254	0xe2e09e		4989d1			MOVQ DX, R9						
  task_nav.go:251	0xe2e0a1		ebae			JMP 0xe2e051						
  task_nav.go:254	0xe2e0a3		4d85c9			TESTQ R9, R9						
  task_nav.go:254	0xe2e0a6		0f8e26010000		JLE 0xe2e1d2						
  task_nav.go:255	0xe2e0ac		31c0			XORL AX, AX						
  task_nav.go:255	0xe2e0ae		4889cb			MOVQ CX, BX						
  task_nav.go:255	0xe2e0b1		31c9			XORL CX, CX						
  task_nav.go:255	0xe2e0b3		4889df			MOVQ BX, DI						
  task_nav.go:255	0xe2e0b6		488d3563482100		LEAQ runtime.types+383264(SB), SI			
  task_nav.go:255	0xe2e0bd		0f1f00			NOPL 0(AX)						
  task_nav.go:255	0xe2e0c0		e87b3b64ff		CALL runtime.growslice(SB)				
  task_nav.go:255	0xe2e0c5		4889442458		MOVQ AX, 0x58(SP)					
  task_nav.go:255	0xe2e0ca		48895c2448		MOVQ BX, 0x48(SP)					
  task_nav.go:255	0xe2e0cf		48894c2440		MOVQ CX, 0x40(SP)					
  task_nav.go:255	0xe2e0d4		488b7c2470		MOVQ 0x70(SP), DI					
  task_nav.go:255	0xe2e0d9		488b742478		MOVQ 0x78(SP), SI					
  task_nav.go:255	0xe2e0de		4889c2			MOVQ AX, DX						
  task_nav.go:255	0xe2e0e1		488d0538482100		LEAQ runtime.types+383264(SB), AX			
  task_nav.go:255	0xe2e0e8		4989d8			MOVQ BX, R8						
  task_nav.go:255	0xe2e0eb		4889d3			MOVQ DX, BX						
  task_nav.go:255	0xe2e0ee		4c89c1			MOVQ R8, CX						
  task_nav.go:255	0xe2e0f1		e84a0464ff		CALL runtime.typedslicecopy(SB)				
  task_nav.go:255	0xe2e0f6		488b8c2490000000	MOVQ 0x90(SP), CX					
  task_nav.go:255	0xe2e0fe		488b442438		MOVQ 0x38(SP), AX					
  task_nav.go:255	0xe2e103		4839c1			CMPQ CX, AX						
  task_nav.go:255	0xe2e106		0f82ae010000		JB 0xe2e2ba						
  task_nav.go:255	0xe2e10c		4829c1			SUBQ AX, CX						
  task_nav.go:255	0xe2e10f		488b542448		MOVQ 0x48(SP), DX					
  task_nav.go:255	0xe2e114		488d1c11		LEAQ 0(CX)(DX*1), BX					
  task_nav.go:255	0xe2e118		4c8b842498000000	MOVQ 0x98(SP), R8					
  task_nav.go:255	0xe2e120		4989c1			MOVQ AX, R9						
  task_nav.go:255	0xe2e123		4c29c0			SUBQ R8, AX						
  task_nav.go:255	0xe2e126		49c1e104		SHLQ $__subsystem__+1(SB), R9				
  task_nav.go:255	0xe2e12a		48c1f83f		SARQ $__major_os_version__+57(SB), AX			
  task_nav.go:255	0xe2e12e		4921c1			ANDQ AX, R9						
  task_nav.go:255	0xe2e131		4c8b842488000000	MOVQ 0x88(SP), R8					
  task_nav.go:255	0xe2e139		4b8d3c08		LEAQ 0(R8)(R9*1), DI					
  task_nav.go:255	0xe2e13d		4c8b442440		MOVQ 0x40(SP), R8					
  task_nav.go:255	0xe2e142		4939d8			CMPQ R8, BX						
  task_nav.go:255	0xe2e145		7207			JB 0xe2e14e						
  task_nav.go:255	0xe2e147		488b442458		MOVQ 0x58(SP), AX					
  task_nav.go:255	0xe2e14c		eb33			JMP 0xe2e181						
  task_nav.go:255	0xe2e14e		48894c2440		MOVQ CX, 0x40(SP)					
  task_nav.go:255	0xe2e153		48897c2450		MOVQ DI, 0x50(SP)					
  task_nav.go:255	0xe2e158		488b442458		MOVQ 0x58(SP), AX					
  task_nav.go:255	0xe2e15d		4889cf			MOVQ CX, DI						
  task_nav.go:255	0xe2e160		488d35b9472100		LEAQ runtime.types+383264(SB), SI			
  task_nav.go:255	0xe2e167		4c89c1			MOVQ R8, CX						
  task_nav.go:255	0xe2e16a		e8d13a64ff		CALL runtime.growslice(SB)				
  task_nav.go:255	0xe2e16f		488b542448		MOVQ 0x48(SP), DX					
  task_nav.go:255	0xe2e174		488b7c2450		MOVQ 0x50(SP), DI					
  task_nav.go:255	0xe2e179		4989c8			MOVQ CX, R8						
  task_nav.go:255	0xe2e17c		488b4c2440		MOVQ 0x40(SP), CX					
  task_nav.go:255	0xe2e181		4c89442448		MOVQ R8, 0x48(SP)					
  task_nav.go:255	0xe2e186		4889442458		MOVQ AX, 0x58(SP)					
  task_nav.go:255	0xe2e18b		48895c2440		MOVQ BX, 0x40(SP)					
  task_nav.go:255	0xe2e190		4989d1			MOVQ DX, R9						
  task_nav.go:255	0xe2e193		4c29c2			SUBQ R8, DX						
  task_nav.go:255	0xe2e196		4c29cb			SUBQ R9, BX						
  task_nav.go:255	0xe2e199		49c1e104		SHLQ $__subsystem__+1(SB), R9				
  task_nav.go:255	0xe2e19d		48c1fa3f		SARQ $__major_os_version__+57(SB), DX			
  task_nav.go:255	0xe2e1a1		4921d1			ANDQ DX, R9						
  task_nav.go:255	0xe2e1a4		4a8d1408		LEAQ 0(AX)(R9*1), DX					
  task_nav.go:255	0xe2e1a8		4889ce			MOVQ CX, SI						
  task_nav.go:255	0xe2e1ab		4889d9			MOVQ BX, CX						
  task_nav.go:255	0xe2e1ae		4889d3			MOVQ DX, BX						
  task_nav.go:255	0xe2e1b1		488d0568472100		LEAQ runtime.types+383264(SB), AX			
  task_nav.go:255	0xe2e1b8		e8830364ff		CALL runtime.typedslicecopy(SB)				
  task_nav.go:255	0xe2e1bd		488b442458		MOVQ 0x58(SP), AX					
  task_nav.go:255	0xe2e1c2		488b5c2440		MOVQ 0x40(SP), BX					
  task_nav.go:255	0xe2e1c7		488b4c2448		MOVQ 0x48(SP), CX					
  task_nav.go:255	0xe2e1cc		4883c460		ADDQ $.file+19(SB), SP					
  task_nav.go:255	0xe2e1d0		5d			POPQ BP							
  task_nav.go:255	0xe2e1d1		c3			RET							
  task_nav.go:257	0xe2e1d2		31c0			XORL AX, AX						
  task_nav.go:257	0xe2e1d4		4889cb			MOVQ CX, BX						
  task_nav.go:257	0xe2e1d7		31c9			XORL CX, CX						
  task_nav.go:257	0xe2e1d9		4889df			MOVQ BX, DI						
  task_nav.go:257	0xe2e1dc		488d353d472100		LEAQ runtime.types+383264(SB), SI			
  task_nav.go:257	0xe2e1e3		e8583a64ff		CALL runtime.growslice(SB)				
  task_nav.go:257	0xe2e1e8		4889442458		MOVQ AX, 0x58(SP)					
  task_nav.go:257	0xe2e1ed		48895c2448		MOVQ BX, 0x48(SP)					
  task_nav.go:257	0xe2e1f2		48894c2440		MOVQ CX, 0x40(SP)					
  task_nav.go:257	0xe2e1f7		488b7c2470		MOVQ 0x70(SP), DI					
  task_nav.go:257	0xe2e1fc		488b742478		MOVQ 0x78(SP), SI					
  task_nav.go:257	0xe2e201		4889c2			MOVQ AX, DX						
  task_nav.go:257	0xe2e204		488d0515472100		LEAQ runtime.types+383264(SB), AX			
  task_nav.go:257	0xe2e20b		4989d8			MOVQ BX, R8						
  task_nav.go:257	0xe2e20e		4889d3			MOVQ DX, BX						
  task_nav.go:257	0xe2e211		4c89c1			MOVQ R8, CX						
  task_nav.go:257	0xe2e214		e8270364ff		CALL runtime.typedslicecopy(SB)				
  task_nav.go:257	0xe2e219		488b542448		MOVQ 0x48(SP), DX					
  task_nav.go:257	0xe2e21e		488bbc2490000000	MOVQ 0x90(SP), DI					
  task_nav.go:257	0xe2e226		488d1c17		LEAQ 0(DI)(DX*1), BX					
  task_nav.go:257	0xe2e22a		488b4c2440		MOVQ 0x40(SP), CX					
  task_nav.go:257	0xe2e22f		4839d9			CMPQ CX, BX						
  task_nav.go:257	0xe2e232		7207			JB 0xe2e23b						
  task_nav.go:257	0xe2e234		488b442458		MOVQ 0x58(SP), AX					
  task_nav.go:257	0xe2e239		eb1e			JMP 0xe2e259						
  task_nav.go:257	0xe2e23b		488b442458		MOVQ 0x58(SP), AX					
  task_nav.go:257	0xe2e240		488d35d9462100		LEAQ runtime.types+383264(SB), SI			
  task_nav.go:257	0xe2e247		e8f43964ff		CALL runtime.growslice(SB)				
  task_nav.go:257	0xe2e24c		488b542448		MOVQ 0x48(SP), DX					
  task_nav.go:257	0xe2e251		488bbc2490000000	MOVQ 0x90(SP), DI					
  task_nav.go:257	0xe2e259		48894c2448		MOVQ CX, 0x48(SP)					
  task_nav.go:257	0xe2e25e		48895c2440		MOVQ BX, 0x40(SP)					
  task_nav.go:257	0xe2e263		4889442458		MOVQ AX, 0x58(SP)					
  task_nav.go:257	0xe2e268		4989d0			MOVQ DX, R8						
  task_nav.go:257	0xe2e26b		4829ca			SUBQ CX, DX						
  task_nav.go:257	0xe2e26e		4c29c3			SUBQ R8, BX						
  task_nav.go:257	0xe2e271		49c1e004		SHLQ $__subsystem__+1(SB), R8				
  task_nav.go:257	0xe2e275		48c1fa3f		SARQ $__major_os_version__+57(SB), DX			
  task_nav.go:257	0xe2e279		4921d0			ANDQ DX, R8						
  task_nav.go:257	0xe2e27c		4a8d1400		LEAQ 0(AX)(R8*1), DX					
  task_nav.go:257	0xe2e280		4889fe			MOVQ DI, SI						
  task_nav.go:257	0xe2e283		488bbc2488000000	MOVQ 0x88(SP), DI					
  task_nav.go:257	0xe2e28b		488d058e462100		LEAQ runtime.types+383264(SB), AX			
  task_nav.go:257	0xe2e292		4989da			MOVQ BX, R10						
  task_nav.go:257	0xe2e295		4889d3			MOVQ DX, BX						
  task_nav.go:257	0xe2e298		4c89d1			MOVQ R10, CX						
  task_nav.go:257	0xe2e29b		0f1f440000		NOPL 0(AX)(AX*1)					
  task_nav.go:257	0xe2e2a0		e89b0264ff		CALL runtime.typedslicecopy(SB)				
  task_nav.go:257	0xe2e2a5		488b442458		MOVQ 0x58(SP), AX					
  task_nav.go:257	0xe2e2aa		488b5c2440		MOVQ 0x40(SP), BX					
  task_nav.go:257	0xe2e2af		488b4c2448		MOVQ 0x48(SP), CX					
  task_nav.go:257	0xe2e2b4		4883c460		ADDQ $.file+19(SB), SP					
  task_nav.go:257	0xe2e2b8		5d			POPQ BP							
  task_nav.go:257	0xe2e2b9		c3			RET							
  task_nav.go:255	0xe2e2ba		e8e1a564ff		CALL runtime.panicSliceB(SB)				
  task_nav.go:244	0xe2e2bf		4c8b542448		MOVQ 0x48(SP), R10					
  task_nav.go:244	0xe2e2c4		49ffc2			INCQ R10						
  task_nav.go:244	0xe2e2c7		488b542430		MOVQ 0x30(SP), DX					
  task_nav.go:244	0xe2e2cc		488b4c2478		MOVQ 0x78(SP), CX					
  task_nav.go:244	0xe2e2d1		488bb42490000000	MOVQ 0x90(SP), SI					
  task_nav.go:244	0xe2e2d9		488bbc2488000000	MOVQ 0x88(SP), DI					
  task_nav.go:244	0xe2e2e1		488b442470		MOVQ 0x70(SP), AX					
  task_nav.go:242	0xe2e2e6		488b5c2428		MOVQ 0x28(SP), BX					
  task_nav.go:255	0xe2e2eb		4c8b842498000000	MOVQ 0x98(SP), R8					
  task_nav.go:254	0xe2e2f3		4c8b4c2438		MOVQ 0x38(SP), R9					
  task_nav.go:254	0xe2e2f8		0f1f840000000000	NOPL 0(AX)(AX*1)					
  task_nav.go:244	0xe2e300		4939d2			CMPQ R10, DX						
  task_nav.go:244	0xe2e303		0f8d95fdffff		JGE 0xe2e09e						
  task_nav.go:245	0xe2e309		4989cb			MOVQ CX, R11						
  task_nav.go:245	0xe2e30c		4929d3			SUBQ DX, R11						
  task_nav.go:245	0xe2e30f		4d01d3			ADDQ R10, R11						
  task_nav.go:245	0xe2e312		4c39d9			CMPQ CX, R11						
  task_nav.go:245	0xe2e315		7661			JBE 0xe2e378						
  task_nav.go:245	0xe2e317		49c1e304		SHLQ $__subsystem__+1(SB), R11				
  task_nav.go:245	0xe2e31b		4e8b641808		MOVQ 0x8(AX)(R11*1), R12				
  task_nav.go:245	0xe2e320		4e8b1c18		MOVQ 0(AX)(R11*1), R11					
  task_nav.go:245	0xe2e324		4c39d6			CMPQ SI, R10						
  task_nav.go:245	0xe2e327		7644			JBE 0xe2e36d						
  task_nav.go:245	0xe2e329		4d89d5			MOVQ R10, R13						
  task_nav.go:245	0xe2e32c		49c1e204		SHLQ $__subsystem__+1(SB), R10				
  task_nav.go:245	0xe2e330		4e8b7c1708		MOVQ 0x8(DI)(R10*1), R15				
  task_nav.go:245	0xe2e335		4e8b1417		MOVQ 0(DI)(R10*1), R10					
  task_nav.go:245	0xe2e339		0f1f8000000000		NOPL 0(AX)						
  task_nav.go:245	0xe2e340		4d39e7			CMPQ R15, R12						
  task_nav.go:245	0xe2e343		0f8508fdffff		JNE 0xe2e051						
  task_nav.go:244	0xe2e349		4c896c2448		MOVQ R13, 0x48(SP)					
  task_nav.go:245	0xe2e34e		4c89d8			MOVQ R11, AX						
  task_nav.go:245	0xe2e351		4c89d3			MOVQ R10, BX						
  task_nav.go:245	0xe2e354		4c89e1			MOVQ R12, CX						
  task_nav.go:245	0xe2e357		e8044b5dff		CALL runtime.memequal(SB)				
  task_nav.go:245	0xe2e35c		0f1f4000		NOPL 0(AX)						
  task_nav.go:245	0xe2e360		84c0			TESTL AL, AL						
  task_nav.go:245	0xe2e362		0f8557ffffff		JNE 0xe2e2bf						
  task_nav.go:245	0xe2e368		e9fefcffff		JMP 0xe2e06b						
  task_nav.go:245	0xe2e36d		4c89d0			MOVQ R10, AX						
  task_nav.go:245	0xe2e370		4889f1			MOVQ SI, CX						
  task_nav.go:245	0xe2e373		e868a464ff		CALL runtime.panicIndex(SB)				
  task_nav.go:245	0xe2e378		4c89d8			MOVQ R11, AX						
  task_nav.go:245	0xe2e37b		0f1f440000		NOPL 0(AX)(AX*1)					
  task_nav.go:245	0xe2e380		e85ba464ff		CALL runtime.panicIndex(SB)				
  task_nav.go:245	0xe2e385		90			NOPL							
  task_nav.go:230	0xe2e386		4889442408		MOVQ AX, 0x8(SP)					
  task_nav.go:230	0xe2e38b		48895c2410		MOVQ BX, 0x10(SP)					
  task_nav.go:230	0xe2e390		48894c2418		MOVQ CX, 0x18(SP)					
  task_nav.go:230	0xe2e395		48897c2420		MOVQ DI, 0x20(SP)					
  task_nav.go:230	0xe2e39a		4889742428		MOVQ SI, 0x28(SP)					
  task_nav.go:230	0xe2e39f		4c89442430		MOVQ R8, 0x30(SP)					
  task_nav.go:230	0xe2e3a4		e8378164ff		CALL runtime.morestack_noctxt.abi0(SB)			
  task_nav.go:230	0xe2e3a9		488b442408		MOVQ 0x8(SP), AX					
  task_nav.go:230	0xe2e3ae		488b5c2410		MOVQ 0x10(SP), BX					
  task_nav.go:230	0xe2e3b3		488b4c2418		MOVQ 0x18(SP), CX					
  task_nav.go:230	0xe2e3b8		488b7c2420		MOVQ 0x20(SP), DI					
  task_nav.go:230	0xe2e3bd		488b742428		MOVQ 0x28(SP), SI					
  task_nav.go:230	0xe2e3c2		4c8b442430		MOVQ 0x30(SP), R8					
  task_nav.go:230	0xe2e3c7		e954fbffff		JMP CAS-Backend/pkg/diapdu.stitchStationPaths(SB)	
  :-1			0xe2e3cc		cc			INT $__subsystem__(SB)					
  :-1			0xe2e3cd		cc			INT $__subsystem__(SB)					
  :-1			0xe2e3ce		cc			INT $__subsystem__(SB)					
  :-1			0xe2e3cf		cc			INT $__subsystem__(SB)					
  :-1			0xe2e3d0		cc			INT $__subsystem__(SB)					
  :-1			0xe2e3d1		cc			INT $__subsystem__(SB)					
  :-1			0xe2e3d2		cc			INT $__subsystem__(SB)					
  :-1			0xe2e3d3		cc			INT $__subsystem__(SB)					
  :-1			0xe2e3d4		cc			INT $__subsystem__(SB)					
  :-1			0xe2e3d5		cc			INT $__subsystem__(SB)					
  :-1			0xe2e3d6		cc			INT $__subsystem__(SB)					
  :-1			0xe2e3d7		cc			INT $__subsystem__(SB)					
  :-1			0xe2e3d8		cc			INT $__subsystem__(SB)					
  :-1			0xe2e3d9		cc			INT $__subsystem__(SB)					
  :-1			0xe2e3da		cc			INT $__subsystem__(SB)					
  :-1			0xe2e3db		cc			INT $__subsystem__(SB)					
  :-1			0xe2e3dc		cc			INT $__subsystem__(SB)					
  :-1			0xe2e3dd		cc			INT $__subsystem__(SB)					
  :-1			0xe2e3de		cc			INT $__subsystem__(SB)					
  :-1			0xe2e3df		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.mergeStationPaths(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/task_nav.go
  task_nav.go:261	0xe2e3e0		493b6610		CMPQ SP, 0x10(R14)					
  task_nav.go:261	0xe2e3e4		0f864a010000		JBE 0xe2e534						
  task_nav.go:261	0xe2e3ea		55			PUSHQ BP						
  task_nav.go:261	0xe2e3eb		4889e5			MOVQ SP, BP						
  task_nav.go:261	0xe2e3ee		4883ec68		SUBQ $.file+27(SB), SP					
  task_nav.go:263	0xe2e3f2		48899c2480000000	MOVQ BX, 0x80(SP)					
  task_nav.go:263	0xe2e3fa		4889442478		MOVQ AX, 0x78(SP)					
  task_nav.go:263	0xe2e3ff		4889c2			MOVQ AX, DX						
  task_nav.go:263	0xe2e402		4889d9			MOVQ BX, CX						
  task_nav.go:263	0xe2e405		31f6			XORL SI, SI						
  task_nav.go:263	0xe2e407		31ff			XORL DI, DI						
  task_nav.go:263	0xe2e409		4531c0			XORL R8, R8						
  task_nav.go:263	0xe2e40c		eb07			JMP 0xe2e415						
  task_nav.go:263	0xe2e40e		4883c018		ADDQ $__major_os_version__+18(SB), AX			
  task_nav.go:263	0xe2e412		48ffcb			DECQ BX							
  task_nav.go:263	0xe2e415		4885db			TESTQ BX, BX						
  task_nav.go:263	0xe2e418		7e56			JLE 0xe2e470						
  task_nav.go:263	0xe2e41a		4c8b4808		MOVQ 0x8(AX), R9					
  task_nav.go:263	0xe2e41e		6690			NOPW							
  task_nav.go:264	0xe2e420		4983f902		CMPQ R9, $__minor_os_version__+1(SB)			
  task_nav.go:264	0xe2e424		7ce8			JL 0xe2e40e						
  task_nav.go:263	0xe2e426		48895c2448		MOVQ BX, 0x48(SP)					
  task_nav.go:263	0xe2e42b		4889442460		MOVQ AX, 0x60(SP)					
  task_nav.go:263	0xe2e430		488b10			MOVQ 0(AX), DX						
  task_nav.go:263	0xe2e433		4c8b5010		MOVQ 0x10(AX), R10					
  task_nav.go:267	0xe2e437		4889f3			MOVQ SI, BX						
  task_nav.go:267	0xe2e43a		4889f9			MOVQ DI, CX						
  task_nav.go:267	0xe2e43d		4889d7			MOVQ DX, DI						
  task_nav.go:267	0xe2e440		4c89ce			MOVQ R9, SI						
  task_nav.go:267	0xe2e443		4c89c0			MOVQ R8, AX						
  task_nav.go:267	0xe2e446		4d89d0			MOVQ R10, R8						
  task_nav.go:267	0xe2e449		e8d2faffff		CALL CAS-Backend/pkg/diapdu.stitchStationPaths(SB)	
  task_nav.go:273	0xe2e44e		488b542478		MOVQ 0x78(SP), DX					
  task_nav.go:267	0xe2e453		4889cf			MOVQ CX, DI						
  task_nav.go:267	0xe2e456		4889de			MOVQ BX, SI						
  task_nav.go:267	0xe2e459		4989c0			MOVQ AX, R8						
  task_nav.go:263	0xe2e45c		488b442460		MOVQ 0x60(SP), AX					
  task_nav.go:273	0xe2e461		488b8c2480000000	MOVQ 0x80(SP), CX					
  task_nav.go:263	0xe2e469		488b5c2448		MOVQ 0x48(SP), BX					
  task_nav.go:267	0xe2e46e		eb9e			JMP 0xe2e40e						
  task_nav.go:269	0xe2e470		4883fe02		CMPQ SI, $__minor_os_version__+1(SB)			
  task_nav.go:269	0xe2e474		7d08			JGE 0xe2e47e						
  task_nav.go:273	0xe2e476		31c0			XORL AX, AX						
  task_nav.go:273	0xe2e478		31db			XORL BX, BX						
  task_nav.go:273	0xe2e47a		31f6			XORL SI, SI						
  task_nav.go:273	0xe2e47c		eb16			JMP 0xe2e494						
  task_nav.go:270	0xe2e47e		4c89c0			MOVQ R8, AX						
  task_nav.go:270	0xe2e481		4889f3			MOVQ SI, BX						
  task_nav.go:270	0xe2e484		4889f9			MOVQ DI, CX						
  task_nav.go:270	0xe2e487		4883c468		ADDQ $.file+27(SB), SP					
  task_nav.go:270	0xe2e48b		5d			POPQ BP							
  task_nav.go:270	0xe2e48c		c3			RET							
  task_nav.go:273	0xe2e48d		4883c218		ADDQ $__major_os_version__+18(SB), DX			
  task_nav.go:273	0xe2e491		48ffc9			DECQ CX							
  task_nav.go:273	0xe2e494		4885c9			TESTQ CX, CX						
  task_nav.go:273	0xe2e497		0f8e88000000		JLE 0xe2e525						
  task_nav.go:273	0xe2e49d		488b7a08		MOVQ 0x8(DX), DI					
  task_nav.go:274	0xe2e4a1		4839f8			CMPQ AX, DI						
  task_nav.go:274	0xe2e4a4		7de7			JGE 0xe2e48d						
  task_nav.go:273	0xe2e4a6		48894c2448		MOVQ CX, 0x48(SP)					
  task_nav.go:273	0xe2e4ab		4889542460		MOVQ DX, 0x60(SP)					
  task_nav.go:273	0xe2e4b0		48897c2430		MOVQ DI, 0x30(SP)					
  task_nav.go:273	0xe2e4b5		4c8b02			MOVQ 0(DX), R8						
  task_nav.go:273	0xe2e4b8		4c89442450		MOVQ R8, 0x50(SP)					
  task_nav.go:275	0xe2e4bd		31c0			XORL AX, AX						
  task_nav.go:275	0xe2e4bf		4889fb			MOVQ DI, BX						
  task_nav.go:275	0xe2e4c2		31c9			XORL CX, CX						
  task_nav.go:275	0xe2e4c4		488d3555442100		LEAQ runtime.types+383264(SB), SI			
  task_nav.go:275	0xe2e4cb		e8703764ff		CALL runtime.growslice(SB)				
  task_nav.go:275	0xe2e4d0		4889442458		MOVQ AX, 0x58(SP)					
  task_nav.go:275	0xe2e4d5		48895c2438		MOVQ BX, 0x38(SP)					
  task_nav.go:275	0xe2e4da		48894c2440		MOVQ CX, 0x40(SP)					
  task_nav.go:275	0xe2e4df		488b7c2450		MOVQ 0x50(SP), DI					
  task_nav.go:275	0xe2e4e4		488b742430		MOVQ 0x30(SP), SI					
  task_nav.go:275	0xe2e4e9		4889c2			MOVQ AX, DX						
  task_nav.go:275	0xe2e4ec		488d052d442100		LEAQ runtime.types+383264(SB), AX			
  task_nav.go:275	0xe2e4f3		4989d8			MOVQ BX, R8						
  task_nav.go:275	0xe2e4f6		4889d3			MOVQ DX, BX						
  task_nav.go:275	0xe2e4f9		4c89c1			MOVQ R8, CX						
  task_nav.go:275	0xe2e4fc		0f1f4000		NOPL 0(AX)						
  task_nav.go:275	0xe2e500		e83b0064ff		CALL runtime.typedslicecopy(SB)				
  task_nav.go:273	0xe2e505		488b4c2448		MOVQ 0x48(SP), CX					
  task_nav.go:273	0xe2e50a		488b542460		MOVQ 0x60(SP), DX					
  task_nav.go:278	0xe2e50f		488b5c2440		MOVQ 0x40(SP), BX					
  task_nav.go:278	0xe2e514		488b442438		MOVQ 0x38(SP), AX					
  task_nav.go:278	0xe2e519		488b742458		MOVQ 0x58(SP), SI					
  task_nav.go:278	0xe2e51e		6690			NOPW							
  task_nav.go:275	0xe2e520		e968ffffff		JMP 0xe2e48d						
  task_nav.go:278	0xe2e525		4889d9			MOVQ BX, CX						
  task_nav.go:278	0xe2e528		4889c3			MOVQ AX, BX						
  task_nav.go:278	0xe2e52b		4889f0			MOVQ SI, AX						
  task_nav.go:278	0xe2e52e		4883c468		ADDQ $.file+27(SB), SP					
  task_nav.go:278	0xe2e532		5d			POPQ BP							
  task_nav.go:278	0xe2e533		c3			RET							
  task_nav.go:261	0xe2e534		4889442408		MOVQ AX, 0x8(SP)					
  task_nav.go:261	0xe2e539		48895c2410		MOVQ BX, 0x10(SP)					
  task_nav.go:261	0xe2e53e		48894c2418		MOVQ CX, 0x18(SP)					
  task_nav.go:261	0xe2e543		e8987f64ff		CALL runtime.morestack_noctxt.abi0(SB)			
  task_nav.go:261	0xe2e548		488b442408		MOVQ 0x8(SP), AX					
  task_nav.go:261	0xe2e54d		488b5c2410		MOVQ 0x10(SP), BX					
  task_nav.go:261	0xe2e552		488b4c2418		MOVQ 0x18(SP), CX					
  task_nav.go:261	0xe2e557		e984feffff		JMP CAS-Backend/pkg/diapdu.mergeStationPaths(SB)	
  :-1			0xe2e55c		cc			INT $__subsystem__(SB)					
  :-1			0xe2e55d		cc			INT $__subsystem__(SB)					
  :-1			0xe2e55e		cc			INT $__subsystem__(SB)					
  :-1			0xe2e55f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.stationPathFromNavTasks(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/task_nav.go
  task_nav.go:282	0xe2e560		4c8da42460ffffff	LEAQ 0xffffff60(SP), R12				
  task_nav.go:282	0xe2e568		4d3b6610		CMPQ R12, 0x10(R14)					
  task_nav.go:282	0xe2e56c		0f86ff000000		JBE 0xe2e671						
  task_nav.go:282	0xe2e572		55			PUSHQ BP						
  task_nav.go:282	0xe2e573		4889e5			MOVQ SP, BP						
  task_nav.go:282	0xe2e576		4881ec18010000		SUBQ $.file+203(SB), SP					
  task_nav.go:282	0xe2e57d		4889842428010000	MOVQ AX, 0x128(SP)					
  task_nav.go:283	0xe2e585		4885db			TESTQ BX, BX						
  task_nav.go:283	0xe2e588		740b			JE 0xe2e595						
  task_nav.go:297	0xe2e58a		31c9			XORL CX, CX						
  task_nav.go:297	0xe2e58c		31d2			XORL DX, DX						
  task_nav.go:297	0xe2e58e		31f6			XORL SI, SI						
  task_nav.go:297	0xe2e590		e9ab000000		JMP 0xe2e640						
  task_nav.go:284	0xe2e595		31c0			XORL AX, AX						
  task_nav.go:284	0xe2e597		31db			XORL BX, BX						
  task_nav.go:284	0xe2e599		4889d9			MOVQ BX, CX						
  task_nav.go:284	0xe2e59c		4881c418010000		ADDQ $.file+203(SB), SP					
  task_nav.go:284	0xe2e5a3		5d			POPQ BP							
  task_nav.go:284	0xe2e5a4		c3			RET							
  task_nav.go:297	0xe2e5a5		48895c2428		MOVQ BX, 0x28(SP)					
  task_nav.go:297	0xe2e5aa		4889842410010000	MOVQ AX, 0x110(SP)					
  task_nav.go:297	0xe2e5b2		488d7c2430		LEAQ 0x30(SP), DI					
  task_nav.go:301	0xe2e5b7		4889f3			MOVQ SI, BX						
  task_nav.go:297	0xe2e5ba		4889c6			MOVQ AX, SI						
  task_nav.go:297	0xe2e5bd		0f1f00			NOPL 0(AX)						
  task_nav.go:297	0xe2e5c0		48896c24f0		MOVQ BP, -0x10(SP)					
  task_nav.go:297	0xe2e5c5		488d6c24f0		LEAQ -0x10(SP), BP					
  task_nav.go:297	0xe2e5ca		e80da864ff		CALL 0x478ddc						
  task_nav.go:297	0xe2e5cf		488b6d00		MOVQ 0(BP), BP						
  task_nav.go:298	0xe2e5d3		4c8b05c68aea01		MOVQ go:func.*+4280(SB), R8				
  task_nav.go:298	0xe2e5da		488b7c2430		MOVQ 0x30(SP), DI					
  task_nav.go:298	0xe2e5df		488b742438		MOVQ 0x38(SP), SI					
  task_nav.go:298	0xe2e5e4		4889d8			MOVQ BX, AX						
  task_nav.go:298	0xe2e5e7		4889cb			MOVQ CX, BX						
  task_nav.go:298	0xe2e5ea		4889d1			MOVQ DX, CX						
  task_nav.go:298	0xe2e5ed		488d15ac8aea01		LEAQ go:func.*+4280(SB), DX				
  task_nav.go:298	0xe2e5f4		41ffd0			CALL R8							
  task_nav.go:299	0xe2e5f7		4c8b05a28aea01		MOVQ go:func.*+4280(SB), R8				
  task_nav.go:299	0xe2e5fe		488b7c2440		MOVQ 0x40(SP), DI					
  task_nav.go:299	0xe2e603		488b742448		MOVQ 0x48(SP), SI					
  task_nav.go:299	0xe2e608		488d15918aea01		LEAQ go:func.*+4280(SB), DX				
  task_nav.go:299	0xe2e60f		41ffd0			CALL R8							
  task_nav.go:297	0xe2e612		4c8b842410010000	MOVQ 0x110(SP), R8					
  task_nav.go:297	0xe2e61a		4981c0e0000000		ADDQ $.file+147(SB), R8					
  task_nav.go:297	0xe2e621		4c8b4c2428		MOVQ 0x28(SP), R9					
  task_nav.go:297	0xe2e626		49ffc9			DECQ R9							
  task_nav.go:301	0xe2e629		4889ca			MOVQ CX, DX						
  task_nav.go:301	0xe2e62c		4889c6			MOVQ AX, SI						
  task_nav.go:297	0xe2e62f		4c89c0			MOVQ R8, AX						
  task_nav.go:301	0xe2e632		4889d9			MOVQ BX, CX						
  task_nav.go:297	0xe2e635		4c89cb			MOVQ R9, BX						
  task_nav.go:297	0xe2e638		0f1f840000000000	NOPL 0(AX)(AX*1)					
  task_nav.go:297	0xe2e640		4885db			TESTQ BX, BX						
  task_nav.go:297	0xe2e643		0f8f5cffffff		JG 0xe2e5a5						
  task_nav.go:301	0xe2e649		4883f902		CMPQ CX, $__minor_os_version__+1(SB)			
  task_nav.go:301	0xe2e64d		7d10			JGE 0xe2e65f						
  task_nav.go:302	0xe2e64f		31c0			XORL AX, AX						
  task_nav.go:302	0xe2e651		31db			XORL BX, BX						
  task_nav.go:302	0xe2e653		4889d9			MOVQ BX, CX						
  task_nav.go:302	0xe2e656		4881c418010000		ADDQ $.file+203(SB), SP					
  task_nav.go:302	0xe2e65d		5d			POPQ BP							
  task_nav.go:302	0xe2e65e		c3			RET							
  task_nav.go:304	0xe2e65f		4889f0			MOVQ SI, AX						
  task_nav.go:304	0xe2e662		4889cb			MOVQ CX, BX						
  task_nav.go:304	0xe2e665		4889d1			MOVQ DX, CX						
  task_nav.go:304	0xe2e668		4881c418010000		ADDQ $.file+203(SB), SP					
  task_nav.go:304	0xe2e66f		5d			POPQ BP							
  task_nav.go:304	0xe2e670		c3			RET							
  task_nav.go:282	0xe2e671		4889442408		MOVQ AX, 0x8(SP)					
  task_nav.go:282	0xe2e676		48895c2410		MOVQ BX, 0x10(SP)					
  task_nav.go:282	0xe2e67b		48894c2418		MOVQ CX, 0x18(SP)					
  task_nav.go:282	0xe2e680		e85b7e64ff		CALL runtime.morestack_noctxt.abi0(SB)			
  task_nav.go:282	0xe2e685		488b442408		MOVQ 0x8(SP), AX					
  task_nav.go:282	0xe2e68a		488b5c2410		MOVQ 0x10(SP), BX					
  task_nav.go:282	0xe2e68f		488b4c2418		MOVQ 0x18(SP), CX					
  task_nav.go:282	0xe2e694		e9c7feffff		JMP CAS-Backend/pkg/diapdu.stationPathFromNavTasks(SB)	
  :-1			0xe2e699		cc			INT $__subsystem__(SB)					
  :-1			0xe2e69a		cc			INT $__subsystem__(SB)					
  :-1			0xe2e69b		cc			INT $__subsystem__(SB)					
  :-1			0xe2e69c		cc			INT $__subsystem__(SB)					
  :-1			0xe2e69d		cc			INT $__subsystem__(SB)					
  :-1			0xe2e69e		cc			INT $__subsystem__(SB)					
  :-1			0xe2e69f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).resolveFullTrafficPath(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/task_nav.go
  task_nav.go:308	0xe2e6a0		4c8d642488		LEAQ -0x78(SP), R12							
  task_nav.go:308	0xe2e6a5		4d3b6610		CMPQ R12, 0x10(R14)							
  task_nav.go:308	0xe2e6a9		0f868a060000		JBE 0xe2ed39								
  task_nav.go:308	0xe2e6af		55			PUSHQ BP								
  task_nav.go:308	0xe2e6b0		4889e5			MOVQ SP, BP								
  task_nav.go:308	0xe2e6b3		4881ecf0000000		SUBQ $.file+163(SB), SP							
  task_nav.go:308	0xe2e6ba		48899c2420010000	MOVQ BX, 0x120(SP)							
  task_nav.go:308	0xe2e6c2		4889b42438010000	MOVQ SI, 0x138(SP)							
  task_nav.go:309	0xe2e6ca		4885ff			TESTQ DI, DI								
  task_nav.go:309	0xe2e6cd		0f848f000000		JE 0xe2e762								
  task_nav.go:309	0xe2e6d3		4889842418010000	MOVQ AX, 0x118(SP)							
  task_nav.go:309	0xe2e6db		4889bc2430010000	MOVQ DI, 0x130(SP)							
  task_nav.go:309	0xe2e6e3		4c89842440010000	MOVQ R8, 0x140(SP)							
  task_nav.go:309	0xe2e6eb		4889b42438010000	MOVQ SI, 0x138(SP)							
  task_nav.go:313	0xe2e6f3		4d85c9			TESTQ R9, R9								
  task_nav.go:313	0xe2e6f6		745e			JE 0xe2e756								
  task_nav.go:313	0xe2e6f8		498b5108		MOVQ 0x8(R9), DX							
  task_nav.go:313	0xe2e6fc		0f1f4000		NOPL 0(AX)								
  task_nav.go:313	0xe2e700		4883fa02		CMPQ DX, $__minor_os_version__+1(SB)					
  task_nav.go:313	0xe2e704		7c46			JL 0xe2e74c								
  task_nav.go:309	0xe2e706		48898c2428010000	MOVQ CX, 0x128(SP)							
  task_nav.go:309	0xe2e70e		48899c2420010000	MOVQ BX, 0x120(SP)							
  task_nav.go:313	0xe2e716		4d8b11			MOVQ 0(R9), R10								
  task_nav.go:313	0xe2e719		4d8b4910		MOVQ 0x10(R9), R9							
  task_nav.go:313	0xe2e71d		0f1f00			NOPL 0(AX)								
  task_nav.go:82	0xe2e720		4885c9			TESTQ CX, CX								
  task_nav.go:82	0xe2e723		0f8406040000		JE 0xe2eb2f								
  task_nav.go:313	0xe2e729		4c898c24a8000000	MOVQ R9, 0xa8(SP)							
  task_nav.go:313	0xe2e731		48899424a0000000	MOVQ DX, 0xa0(SP)							
  task_nav.go:313	0xe2e739		4c899424e8000000	MOVQ R10, 0xe8(SP)							
  task_nav.go:85	0xe2e741		4d89d3			MOVQ R10, R11								
  task_nav.go:85	0xe2e744		4531e4			XORL R12, R12								
  task_nav.go:85	0xe2e747		e996040000		JMP 0xe2ebe2								
  task_nav.go:85	0xe2e74c		31d2			XORL DX, DX								
  task_nav.go:85	0xe2e74e		4531c9			XORL R9, R9								
  task_nav.go:85	0xe2e751		4531d2			XORL R10, R10								
  task_nav.go:313	0xe2e754		eb1c			JMP 0xe2e772								
  task_nav.go:313	0xe2e756		31d2			XORL DX, DX								
  task_nav.go:313	0xe2e758		4531c9			XORL R9, R9								
  task_nav.go:313	0xe2e75b		4531d2			XORL R10, R10								
  task_nav.go:313	0xe2e75e		6690			NOPW									
  task_nav.go:313	0xe2e760		eb10			JMP 0xe2e772								
  task_nav.go:310	0xe2e762		31c0			XORL AX, AX								
  task_nav.go:310	0xe2e764		31db			XORL BX, BX								
  task_nav.go:310	0xe2e766		4889d9			MOVQ BX, CX								
  task_nav.go:310	0xe2e769		4881c4f0000000		ADDQ $.file+163(SB), SP							
  task_nav.go:310	0xe2e770		5d			POPQ BP									
  task_nav.go:310	0xe2e771		c3			RET									
  task_nav.go:316	0xe2e772		4883784000		CMPQ 0x40(AX), $0x0							
  task_nav.go:316	0xe2e777		0f84ed000000		JE 0xe2e86a								
  task_nav.go:316	0xe2e77d		0f1f00			NOPL 0(AX)								
  task_nav.go:316	0xe2e780		4885c9			TESTQ CX, CX								
  task_nav.go:316	0xe2e783		0f84e1000000		JE 0xe2e86a								
  task_nav.go:322	0xe2e789		4c898c24c0000000	MOVQ R9, 0xc0(SP)							
  task_nav.go:322	0xe2e791		4889542468		MOVQ DX, 0x68(SP)							
  task_nav.go:322	0xe2e796		4c89542460		MOVQ R10, 0x60(SP)							
  task_nav.go:317	0xe2e79b		0f1f440000		NOPL 0(AX)(AX*1)							
  task_nav.go:317	0xe2e7a0		e8fb220000		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).planStationTaskRoute(SB)	
  task_nav.go:317	0xe2e7a5		4084ff			TESTL DI, DI								
  task_nav.go:317	0xe2e7a8		0f84a1000000		JE 0xe2e84f								
  task_nav.go:318	0xe2e7ae		488b542460		MOVQ 0x60(SP), DX							
  task_nav.go:318	0xe2e7b3		48ffc2			INCQ DX									
  task_nav.go:318	0xe2e7b6		4c8b442468		MOVQ 0x68(SP), R8							
  task_nav.go:318	0xe2e7bb		0f1f440000		NOPL 0(AX)(AX*1)							
  task_nav.go:318	0xe2e7c0		4939d0			CMPQ R8, DX								
  task_nav.go:318	0xe2e7c3		720a			JB 0xe2e7cf								
  task_nav.go:318	0xe2e7c5		488bb424c0000000	MOVQ 0xc0(SP), SI							
  task_nav.go:318	0xe2e7cd		eb51			JMP 0xe2e820								
  task_nav.go:317	0xe2e7cf		48894c2458		MOVQ CX, 0x58(SP)							
  task_nav.go:317	0xe2e7d4		48895c2450		MOVQ BX, 0x50(SP)							
  task_nav.go:317	0xe2e7d9		48898424b8000000	MOVQ AX, 0xb8(SP)							
  task_nav.go:318	0xe2e7e1		488b8424c0000000	MOVQ 0xc0(SP), AX							
  task_nav.go:318	0xe2e7e9		4889d3			MOVQ DX, BX								
  task_nav.go:318	0xe2e7ec		4c89c1			MOVQ R8, CX								
  task_nav.go:318	0xe2e7ef		bf01000000		MOVL $__minor_os_version__(SB), DI					
  task_nav.go:318	0xe2e7f4		488d3585a12000		LEAQ runtime.types+342400(SB), SI					
  task_nav.go:318	0xe2e7fb		0f1f440000		NOPL 0(AX)(AX*1)							
  task_nav.go:318	0xe2e800		e83b3464ff		CALL runtime.growslice(SB)						
  task_nav.go:318	0xe2e805		4889c6			MOVQ AX, SI								
  task_nav.go:318	0xe2e808		4889da			MOVQ BX, DX								
  task_nav.go:318	0xe2e80b		4989c8			MOVQ CX, R8								
  task_nav.go:318	0xe2e80e		488b8424b8000000	MOVQ 0xb8(SP), AX							
  task_nav.go:318	0xe2e816		488b4c2458		MOVQ 0x58(SP), CX							
  task_nav.go:318	0xe2e81b		488b5c2450		MOVQ 0x50(SP), BX							
  task_nav.go:318	0xe2e820		488d3c52		LEAQ 0(DX)(DX*2), DI							
  task_nav.go:318	0xe2e824		48895cfef0		MOVQ BX, -0x10(SI)(DI*8)						
  task_nav.go:318	0xe2e829		48894cfef8		MOVQ CX, -0x8(SI)(DI*8)							
  task_nav.go:318	0xe2e82e		833d1bf3720200		CMPL runtime.writeBarrier(SB), $0x0					
  task_nav.go:318	0xe2e835		7411			JE 0xe2e848								
  task_nav.go:318	0xe2e837		e8049c64ff		CALL runtime.gcWriteBarrier2(SB)					
  task_nav.go:318	0xe2e83c		498903			MOVQ AX, 0(R11)								
  task_nav.go:318	0xe2e83f		4c8b4cfee8		MOVQ -0x18(SI)(DI*8), R9						
  task_nav.go:318	0xe2e844		4d894b08		MOVQ R9, 0x8(R11)							
  task_nav.go:318	0xe2e848		488944fee8		MOVQ AX, -0x18(SI)(DI*8)						
  task_nav.go:318	0xe2e84d		eb12			JMP 0xe2e861								
  task_nav.go:322	0xe2e84f		4c8b442468		MOVQ 0x68(SP), R8							
  task_nav.go:322	0xe2e854		488b542460		MOVQ 0x60(SP), DX							
  task_nav.go:322	0xe2e859		488bb424c0000000	MOVQ 0xc0(SP), SI							
  task_nav.go:322	0xe2e861		4989f1			MOVQ SI, R9								
  task_nav.go:322	0xe2e864		4989d2			MOVQ DX, R10								
  task_nav.go:322	0xe2e867		4c89c2			MOVQ R8, DX								
  task_nav.go:322	0xe2e86a		4c898c24c0000000	MOVQ R9, 0xc0(SP)							
  task_nav.go:322	0xe2e872		4889542468		MOVQ DX, 0x68(SP)							
  task_nav.go:322	0xe2e877		4c89542460		MOVQ R10, 0x60(SP)							
  task_nav.go:321	0xe2e87c		488b842400010000	MOVQ 0x100(SP), AX							
  task_nav.go:321	0xe2e884		488b9c2408010000	MOVQ 0x108(SP), BX							
  task_nav.go:321	0xe2e88c		488b8c2410010000	MOVQ 0x110(SP), CX							
  task_nav.go:321	0xe2e894		e8c7fcffff		CALL CAS-Backend/pkg/diapdu.stationPathFromNavTasks(SB)			
  task_nav.go:321	0xe2e899		0f1f8000000000		NOPL 0(AX)								
  task_nav.go:321	0xe2e8a0		4883fb02		CMPQ BX, $__minor_os_version__+1(SB)					
  task_nav.go:321	0xe2e8a4		0f8c98000000		JL 0xe2e942								
  task_nav.go:322	0xe2e8aa		488b542460		MOVQ 0x60(SP), DX							
  task_nav.go:322	0xe2e8af		48ffc2			INCQ DX									
  task_nav.go:322	0xe2e8b2		4c8b442468		MOVQ 0x68(SP), R8							
  task_nav.go:322	0xe2e8b7		4939d0			CMPQ R8, DX								
  task_nav.go:322	0xe2e8ba		720a			JB 0xe2e8c6								
  task_nav.go:322	0xe2e8bc		488bb424c0000000	MOVQ 0xc0(SP), SI							
  task_nav.go:322	0xe2e8c4		eb4c			JMP 0xe2e912								
  task_nav.go:321	0xe2e8c6		48894c2478		MOVQ CX, 0x78(SP)							
  task_nav.go:321	0xe2e8cb		48895c2470		MOVQ BX, 0x70(SP)							
  task_nav.go:321	0xe2e8d0		48898424c8000000	MOVQ AX, 0xc8(SP)							
  task_nav.go:322	0xe2e8d8		488b8424c0000000	MOVQ 0xc0(SP), AX							
  task_nav.go:322	0xe2e8e0		4889d3			MOVQ DX, BX								
  task_nav.go:322	0xe2e8e3		4c89c1			MOVQ R8, CX								
  task_nav.go:322	0xe2e8e6		bf01000000		MOVL $__minor_os_version__(SB), DI					
  task_nav.go:322	0xe2e8eb		488d358ea02000		LEAQ runtime.types+342400(SB), SI					
  task_nav.go:322	0xe2e8f2		e8493364ff		CALL runtime.growslice(SB)						
  task_nav.go:322	0xe2e8f7		4889c6			MOVQ AX, SI								
  task_nav.go:322	0xe2e8fa		4889da			MOVQ BX, DX								
  task_nav.go:322	0xe2e8fd		4989c8			MOVQ CX, R8								
  task_nav.go:322	0xe2e900		488b8424c8000000	MOVQ 0xc8(SP), AX							
  task_nav.go:322	0xe2e908		488b4c2478		MOVQ 0x78(SP), CX							
  task_nav.go:322	0xe2e90d		488b5c2470		MOVQ 0x70(SP), BX							
  task_nav.go:322	0xe2e912		488d3c52		LEAQ 0(DX)(DX*2), DI							
  task_nav.go:322	0xe2e916		48895cfef0		MOVQ BX, -0x10(SI)(DI*8)						
  task_nav.go:322	0xe2e91b		48894cfef8		MOVQ CX, -0x8(SI)(DI*8)							
  task_nav.go:322	0xe2e920		833d29f2720200		CMPL runtime.writeBarrier(SB), $0x0					
  task_nav.go:322	0xe2e927		7411			JE 0xe2e93a								
  task_nav.go:322	0xe2e929		e8129b64ff		CALL runtime.gcWriteBarrier2(SB)					
  task_nav.go:322	0xe2e92e		498903			MOVQ AX, 0(R11)								
  task_nav.go:322	0xe2e931		4c8b4cfee8		MOVQ -0x18(SI)(DI*8), R9						
  task_nav.go:322	0xe2e936		4d894b08		MOVQ R9, 0x8(R11)							
  task_nav.go:322	0xe2e93a		488944fee8		MOVQ AX, -0x18(SI)(DI*8)						
  task_nav.go:322	0xe2e93f		90			NOPL									
  task_nav.go:322	0xe2e940		eb12			JMP 0xe2e954								
  task_nav.go:324	0xe2e942		4c8b442468		MOVQ 0x68(SP), R8							
  task_nav.go:324	0xe2e947		488b542460		MOVQ 0x60(SP), DX							
  task_nav.go:324	0xe2e94c		488bb424c0000000	MOVQ 0xc0(SP), SI							
  task_nav.go:324	0xe2e954		4889f0			MOVQ SI, AX								
  task_nav.go:324	0xe2e957		4889d3			MOVQ DX, BX								
  task_nav.go:324	0xe2e95a		4c89c1			MOVQ R8, CX								
  task_nav.go:324	0xe2e95d		0f1f00			NOPL 0(AX)								
  task_nav.go:324	0xe2e960		e87bfaffff		CALL CAS-Backend/pkg/diapdu.mergeStationPaths(SB)			
  task_nav.go:325	0xe2e965		488b942430010000	MOVQ 0x130(SP), DX							
  task_nav.go:325	0xe2e96d		488bb298000000		MOVQ 0x98(DX), SI							
  task_nav.go:325	0xe2e974		488bba90000000		MOVQ 0x90(DX), DI							
  task_nav.go:325	0xe2e97b		0f1f440000		NOPL 0(AX)(AX*1)							
  task_nav.go:326	0xe2e980		4885f6			TESTQ SI, SI								
  task_nav.go:326	0xe2e983		750e			JNE 0xe2e993								
  task_nav.go:327	0xe2e985		488bb2d8000000		MOVQ 0xd8(DX), SI							
  task_nav.go:327	0xe2e98c		488bbad0000000		MOVQ 0xd0(DX), DI							
  task_nav.go:324	0xe2e993		48899c2488000000	MOVQ BX, 0x88(SP)							
  task_nav.go:324	0xe2e99b		48898424d0000000	MOVQ AX, 0xd0(SP)							
  task_nav.go:324	0xe2e9a3		48898c2490000000	MOVQ CX, 0x90(SP)							
  task_nav.go:329	0xe2e9ab		488b942418010000	MOVQ 0x118(SP), DX							
  task_nav.go:329	0xe2e9b3		48837a4000		CMPQ 0x40(DX), $0x0							
  task_nav.go:329	0xe2e9b8		0f848f000000		JE 0xe2ea4d								
  task_nav.go:329	0xe2e9be		6690			NOPW									
  task_nav.go:329	0xe2e9c0		4885f6			TESTQ SI, SI								
  task_nav.go:329	0xe2e9c3		0f847f000000		JE 0xe2ea48								
  task_nav.go:329	0xe2e9c9		4885db			TESTQ BX, BX								
  task_nav.go:329	0xe2e9cc		7475			JE 0xe2ea43								
  task_nav.go:329	0xe2e9ce		4c8d5bff		LEAQ -0x1(BX), R11							
  task_nav.go:329	0xe2e9d2		49c1e304		SHLQ $__subsystem__+1(SB), R11						
  task_nav.go:329	0xe2e9d6		4e8b641808		MOVQ 0x8(AX)(R11*1), R12						
  task_nav.go:329	0xe2e9db		4e8b1c18		MOVQ 0(AX)(R11*1), R11							
  task_nav.go:329	0xe2e9df		90			NOPL									
  task_nav.go:329	0xe2e9e0		4c39e6			CMPQ SI, R12								
  task_nav.go:329	0xe2e9e3		7408			JE 0xe2e9ed								
  task_nav.go:329	0xe2e9e5		41b801000000		MOVL $__minor_os_version__(SB), R8					
  task_nav.go:329	0xe2e9eb		eb63			JMP 0xe2ea50								
  task_nav.go:330	0xe2e9ed		4889b42498000000	MOVQ SI, 0x98(SP)							
  task_nav.go:330	0xe2e9f5		4889bc24d8000000	MOVQ DI, 0xd8(SP)							
  task_nav.go:329	0xe2e9fd		4c89d8			MOVQ R11, AX								
  task_nav.go:329	0xe2ea00		4889fb			MOVQ DI, BX								
  task_nav.go:329	0xe2ea03		4c89e1			MOVQ R12, CX								
  task_nav.go:329	0xe2ea06		e855445dff		CALL runtime.memequal(SB)						
  task_nav.go:329	0xe2ea0b		83f001			XORL $__minor_os_version__(SB), AX					
  task_nav.go:335	0xe2ea0e		488b8c2490000000	MOVQ 0x90(SP), CX							
  task_nav.go:330	0xe2ea16		488b942418010000	MOVQ 0x118(SP), DX							
  task_nav.go:330	0xe2ea1e		488b9c2488000000	MOVQ 0x88(SP), BX							
  task_nav.go:330	0xe2ea26		488bb42498000000	MOVQ 0x98(SP), SI							
  task_nav.go:330	0xe2ea2e		488bbc24d8000000	MOVQ 0xd8(SP), DI							
  task_nav.go:329	0xe2ea36		4189c0			MOVL AX, R8								
  task_nav.go:330	0xe2ea39		488b8424d0000000	MOVQ 0xd0(SP), AX							
  task_nav.go:329	0xe2ea41		eb0d			JMP 0xe2ea50								
  task_nav.go:329	0xe2ea43		4531c0			XORL R8, R8								
  task_nav.go:329	0xe2ea46		eb08			JMP 0xe2ea50								
  task_nav.go:329	0xe2ea48		4531c0			XORL R8, R8								
  task_nav.go:329	0xe2ea4b		eb03			JMP 0xe2ea50								
  task_nav.go:329	0xe2ea4d		4531c0			XORL R8, R8								
  task_nav.go:329	0xe2ea50		4584c0			TESTL R8, R8								
  task_nav.go:329	0xe2ea53		0f84ac000000		JE 0xe2eb05								
  task_nav.go:330	0xe2ea59		4c8d5bff		LEAQ -0x1(BX), R11							
  task_nav.go:330	0xe2ea5d		0f1f00			NOPL 0(AX)								
  task_nav.go:330	0xe2ea60		4c39db			CMPQ BX, R11								
  task_nav.go:330	0xe2ea63		0f86bb000000		JBE 0xe2eb24								
  task_nav.go:330	0xe2ea69		488b5240		MOVQ 0x40(DX), DX							
  task_nav.go:330	0xe2ea6d		49c1e304		SHLQ $__subsystem__+1(SB), R11						
  task_nav.go:330	0xe2ea71		4e8b2418		MOVQ 0(AX)(R11*1), R12							
  task_nav.go:330	0xe2ea75		4e8b441808		MOVQ 0x8(AX)(R11*1), R8							
  task_nav.go:330	0xe2ea7a		31db			XORL BX, BX								
  task_nav.go:330	0xe2ea7c		488b8c2438010000	MOVQ 0x138(SP), CX							
  task_nav.go:330	0xe2ea84		4989f9			MOVQ DI, R9								
  task_nav.go:330	0xe2ea87		4989f2			MOVQ SI, R10								
  task_nav.go:330	0xe2ea8a		488bbc2440010000	MOVQ 0x140(SP), DI							
  task_nav.go:330	0xe2ea92		4c89e6			MOVQ R12, SI								
  task_nav.go:330	0xe2ea95		4889d0			MOVQ DX, AX								
  task_nav.go:330	0xe2ea98		e8c37a0000		CALL CAS-Backend/pkg/diapdu.shortestPathOnGraph(SB)			
  task_nav.go:330	0xe2ea9d		0f1f00			NOPL 0(AX)								
  task_nav.go:330	0xe2eaa0		4084ff			TESTL DI, DI								
  task_nav.go:331	0xe2eaa3		7448			JE 0xe2eaed								
  task_nav.go:331	0xe2eaa5		4883fb02		CMPQ BX, $__minor_os_version__+1(SB)					
  task_nav.go:331	0xe2eaa9		7d1a			JGE 0xe2eac5								
  task_nav.go:335	0xe2eaab		488b8c2490000000	MOVQ 0x90(SP), CX							
  task_nav.go:335	0xe2eab3		488b9c2488000000	MOVQ 0x88(SP), BX							
  task_nav.go:335	0xe2eabb		488b8424d0000000	MOVQ 0xd0(SP), AX							
  task_nav.go:331	0xe2eac3		eb40			JMP 0xe2eb05								
  task_nav.go:332	0xe2eac5		4889c7			MOVQ AX, DI								
  task_nav.go:332	0xe2eac8		4889de			MOVQ BX, SI								
  task_nav.go:332	0xe2eacb		4989c8			MOVQ CX, R8								
  task_nav.go:332	0xe2eace		488b8424d0000000	MOVQ 0xd0(SP), AX							
  task_nav.go:332	0xe2ead6		488b9c2488000000	MOVQ 0x88(SP), BX							
  task_nav.go:332	0xe2eade		488b8c2490000000	MOVQ 0x90(SP), CX							
  task_nav.go:332	0xe2eae6		e835f4ffff		CALL CAS-Backend/pkg/diapdu.stitchStationPaths(SB)			
  task_nav.go:332	0xe2eaeb		eb18			JMP 0xe2eb05								
  task_nav.go:335	0xe2eaed		488b8c2490000000	MOVQ 0x90(SP), CX							
  task_nav.go:335	0xe2eaf5		488b9c2488000000	MOVQ 0x88(SP), BX							
  task_nav.go:335	0xe2eafd		488b8424d0000000	MOVQ 0xd0(SP), AX							
  task_nav.go:335	0xe2eb05		4883fb02		CMPQ BX, $__minor_os_version__+1(SB)					
  task_nav.go:335	0xe2eb09		7d10			JGE 0xe2eb1b								
  task_nav.go:336	0xe2eb0b		31c0			XORL AX, AX								
  task_nav.go:336	0xe2eb0d		31db			XORL BX, BX								
  task_nav.go:336	0xe2eb0f		4889d9			MOVQ BX, CX								
  task_nav.go:336	0xe2eb12		4881c4f0000000		ADDQ $.file+163(SB), SP							
  task_nav.go:336	0xe2eb19		5d			POPQ BP									
  task_nav.go:336	0xe2eb1a		c3			RET									
  task_nav.go:338	0xe2eb1b		4881c4f0000000		ADDQ $.file+163(SB), SP							
  task_nav.go:338	0xe2eb22		5d			POPQ BP									
  task_nav.go:338	0xe2eb23		c3			RET									
  task_nav.go:330	0xe2eb24		4c89d8			MOVQ R11, AX								
  task_nav.go:330	0xe2eb27		4889d9			MOVQ BX, CX								
  task_nav.go:330	0xe2eb2a		e8b19c64ff		CALL runtime.panicIndex(SB)						
  task_nav.go:314	0xe2eb2f		4c894c2448		MOVQ R9, 0x48(SP)							
  task_nav.go:314	0xe2eb34		4889542440		MOVQ DX, 0x40(SP)							
  task_nav.go:314	0xe2eb39		4c899424b0000000	MOVQ R10, 0xb0(SP)							
  task_nav.go:314	0xe2eb41		31c0			XORL AX, AX								
  task_nav.go:314	0xe2eb43		bb01000000		MOVL $__minor_os_version__(SB), BX					
  task_nav.go:314	0xe2eb48		31c9			XORL CX, CX								
  task_nav.go:314	0xe2eb4a		4889df			MOVQ BX, DI								
  task_nav.go:314	0xe2eb4d		488d352c9e2000		LEAQ runtime.types+342400(SB), SI					
  task_nav.go:314	0xe2eb54		e8e73064ff		CALL runtime.growslice(SB)						
  task_nav.go:314	0xe2eb59		488b542440		MOVQ 0x40(SP), DX							
  task_nav.go:314	0xe2eb5e		48895008		MOVQ DX, 0x8(AX)							
  task_nav.go:314	0xe2eb62		488b542448		MOVQ 0x48(SP), DX							
  task_nav.go:314	0xe2eb67		48895010		MOVQ DX, 0x10(AX)							
  task_nav.go:314	0xe2eb6b		833ddeef720200		CMPL runtime.writeBarrier(SB), $0x0					
  task_nav.go:314	0xe2eb72		750c			JNE 0xe2eb80								
  task_nav.go:314	0xe2eb74		488b9424b0000000	MOVQ 0xb0(SP), DX							
  task_nav.go:314	0xe2eb7c		eb19			JMP 0xe2eb97								
  task_nav.go:314	0xe2eb7e		6690			NOPW									
  task_nav.go:314	0xe2eb80		e8bb9864ff		CALL runtime.gcWriteBarrier2(SB)					
  task_nav.go:314	0xe2eb85		488b9424b0000000	MOVQ 0xb0(SP), DX							
  task_nav.go:314	0xe2eb8d		498913			MOVQ DX, 0(R11)								
  task_nav.go:314	0xe2eb90		4c8b08			MOVQ 0(AX), R9								
  task_nav.go:314	0xe2eb93		4d894b08		MOVQ R9, 0x8(R11)							
  task_nav.go:314	0xe2eb97		488910			MOVQ DX, 0(AX)								
  task_nav.go:317	0xe2eb9a		488b9c2420010000	MOVQ 0x120(SP), BX							
  task_nav.go:317	0xe2eba2		488bb42438010000	MOVQ 0x138(SP), SI							
  task_nav.go:317	0xe2ebaa		488bbc2430010000	MOVQ 0x130(SP), DI							
  task_nav.go:317	0xe2ebb2		4c8b842440010000	MOVQ 0x140(SP), R8							
  task_nav.go:322	0xe2ebba		4889ca			MOVQ CX, DX								
  task_nav.go:322	0xe2ebbd		4989c1			MOVQ AX, R9								
  task_nav.go:322	0xe2ebc0		41ba01000000		MOVL $__minor_os_version__(SB), R10					
  task_nav.go:316	0xe2ebc6		488b842418010000	MOVQ 0x118(SP), AX							
  task_nav.go:316	0xe2ebce		488b8c2428010000	MOVQ 0x128(SP), CX							
  task_nav.go:314	0xe2ebd6		e997fbffff		JMP 0xe2e772								
  task_nav.go:85	0xe2ebdb		4983c210		ADDQ $__major_os_version__+10(SB), R10					
  task_nav.go:85	0xe2ebdf		49ffc4			INCQ R12								
  task_nav.go:85	0xe2ebe2		4939d4			CMPQ R12, DX								
  task_nav.go:85	0xe2ebe5		0f8d46010000		JGE 0xe2ed31								
  task_nav.go:85	0xe2ebeb		4d8b6a08		MOVQ 0x8(R10), R13							
  task_nav.go:86	0xe2ebef		4c39e9			CMPQ CX, R13								
  task_nav.go:86	0xe2ebf2		75e7			JNE 0xe2ebdb								
  task_nav.go:85	0xe2ebf4		4c89a42480000000	MOVQ R12, 0x80(SP)							
  task_nav.go:85	0xe2ebfc		4c899424e0000000	MOVQ R10, 0xe0(SP)							
  task_nav.go:85	0xe2ec04		498b02			MOVQ 0(R10), AX								
  task_nav.go:86	0xe2ec07		4c89e9			MOVQ R13, CX								
  task_nav.go:86	0xe2ec0a		e851425dff		CALL runtime.memequal(SB)						
  task_nav.go:86	0xe2ec0f		84c0			TESTL AL, AL								
  task_nav.go:86	0xe2ec11		755d			JNE 0xe2ec70								
  task_nav.go:316	0xe2ec13		488b842418010000	MOVQ 0x118(SP), AX							
  task_nav.go:86	0xe2ec1b		488b8c2428010000	MOVQ 0x128(SP), CX							
  task_nav.go:85	0xe2ec23		488b9424a0000000	MOVQ 0xa0(SP), DX							
  task_nav.go:86	0xe2ec2b		488b9c2420010000	MOVQ 0x120(SP), BX							
  task_nav.go:317	0xe2ec33		488bb42438010000	MOVQ 0x138(SP), SI							
  task_nav.go:317	0xe2ec3b		488bbc2430010000	MOVQ 0x130(SP), DI							
  task_nav.go:317	0xe2ec43		4c8b842440010000	MOVQ 0x140(SP), R8							
  task_nav.go:314	0xe2ec4b		4c8b8c24a8000000	MOVQ 0xa8(SP), R9							
  task_nav.go:85	0xe2ec53		4c8b9424e0000000	MOVQ 0xe0(SP), R10							
  task_nav.go:314	0xe2ec5b		4c8b9c24e8000000	MOVQ 0xe8(SP), R11							
  task_nav.go:85	0xe2ec63		4c8ba42480000000	MOVQ 0x80(SP), R12							
  task_nav.go:86	0xe2ec6b		e96bffffff		JMP 0xe2ebdb								
  task_nav.go:87	0xe2ec70		488b942480000000	MOVQ 0x80(SP), DX							
  task_nav.go:87	0xe2ec78		4c8b8424a8000000	MOVQ 0xa8(SP), R8							
  task_nav.go:87	0xe2ec80		4989d1			MOVQ DX, R9								
  task_nav.go:87	0xe2ec83		4c29c2			SUBQ R8, DX								
  task_nav.go:87	0xe2ec86		4d89c8			MOVQ R9, R8								
  task_nav.go:87	0xe2ec89		49c1e104		SHLQ $__subsystem__+1(SB), R9						
  task_nav.go:87	0xe2ec8d		48c1fa3f		SARQ $__major_os_version__+57(SB), DX					
  task_nav.go:87	0xe2ec91		4c21ca			ANDQ R9, DX								
  task_nav.go:87	0xe2ec94		488bbc24a0000000	MOVQ 0xa0(SP), DI							
  task_nav.go:87	0xe2ec9c		4c29c7			SUBQ R8, DI								
  task_nav.go:87	0xe2ec9f		4c8b8424e8000000	MOVQ 0xe8(SP), R8							
  task_nav.go:87	0xe2eca7		4c01c2			ADDQ R8, DX								
  task_nav.go:87	0xe2ecaa		4885ff			TESTQ DI, DI								
  task_nav.go:87	0xe2ecad		7508			JNE 0xe2ecb7								
  task_nav.go:87	0xe2ecaf		31db			XORL BX, BX								
  task_nav.go:87	0xe2ecb1		31c0			XORL AX, AX								
  task_nav.go:87	0xe2ecb3		31c9			XORL CX, CX								
  task_nav.go:87	0xe2ecb5		eb33			JMP 0xe2ecea								
  task_nav.go:87	0xe2ecb7		4889bc24a8000000	MOVQ DI, 0xa8(SP)							
  task_nav.go:87	0xe2ecbf		48899424e8000000	MOVQ DX, 0xe8(SP)							
  task_nav.go:87	0xe2ecc7		31c0			XORL AX, AX								
  task_nav.go:87	0xe2ecc9		4889fb			MOVQ DI, BX								
  task_nav.go:87	0xe2eccc		31c9			XORL CX, CX								
  task_nav.go:87	0xe2ecce		488d354b3c2100		LEAQ runtime.types+383264(SB), SI					
  task_nav.go:87	0xe2ecd5		e8662f64ff		CALL runtime.growslice(SB)						
  task_nav.go:87	0xe2ecda		488b9424e8000000	MOVQ 0xe8(SP), DX							
  task_nav.go:87	0xe2ece2		488bbc24a8000000	MOVQ 0xa8(SP), DI							
  task_nav.go:87	0xe2ecea		48895c2440		MOVQ BX, 0x40(SP)							
  task_nav.go:87	0xe2ecef		48898424b0000000	MOVQ AX, 0xb0(SP)							
  task_nav.go:87	0xe2ecf7		48894c2448		MOVQ CX, 0x48(SP)							
  task_nav.go:87	0xe2ecfc		4889fe			MOVQ DI, SI								
  task_nav.go:87	0xe2ecff		4889d7			MOVQ DX, DI								
  task_nav.go:87	0xe2ed02		4889c2			MOVQ AX, DX								
  task_nav.go:87	0xe2ed05		488d05143c2100		LEAQ runtime.types+383264(SB), AX					
  task_nav.go:87	0xe2ed0c		4989d8			MOVQ BX, R8								
  task_nav.go:87	0xe2ed0f		4889d3			MOVQ DX, BX								
  task_nav.go:87	0xe2ed12		4c89c1			MOVQ R8, CX								
  task_nav.go:87	0xe2ed15		e826f863ff		CALL runtime.typedslicecopy(SB)						
  task_nav.go:314	0xe2ed1a		4c8b4c2448		MOVQ 0x48(SP), R9							
  task_nav.go:314	0xe2ed1f		488b542440		MOVQ 0x40(SP), DX							
  task_nav.go:314	0xe2ed24		4c8b9424b0000000	MOVQ 0xb0(SP), R10							
  task_nav.go:314	0xe2ed2c		e9fefdffff		JMP 0xe2eb2f								
  task_nav.go:314	0xe2ed31		4d89da			MOVQ R11, R10								
  task_nav.go:314	0xe2ed34		e9f6fdffff		JMP 0xe2eb2f								
  task_nav.go:308	0xe2ed39		4889442420		MOVQ AX, 0x20(SP)							
  task_nav.go:308	0xe2ed3e		48895c2428		MOVQ BX, 0x28(SP)							
  task_nav.go:308	0xe2ed43		48894c2430		MOVQ CX, 0x30(SP)							
  task_nav.go:308	0xe2ed48		48897c2438		MOVQ DI, 0x38(SP)							
  task_nav.go:308	0xe2ed4d		4889742440		MOVQ SI, 0x40(SP)							
  task_nav.go:308	0xe2ed52		4c89442448		MOVQ R8, 0x48(SP)							
  task_nav.go:308	0xe2ed57		4c894c2450		MOVQ R9, 0x50(SP)							
  task_nav.go:308	0xe2ed5c		0f1f4000		NOPL 0(AX)								
  task_nav.go:308	0xe2ed60		e87b7764ff		CALL runtime.morestack_noctxt.abi0(SB)					
  task_nav.go:308	0xe2ed65		488b442420		MOVQ 0x20(SP), AX							
  task_nav.go:308	0xe2ed6a		488b5c2428		MOVQ 0x28(SP), BX							
  task_nav.go:308	0xe2ed6f		488b4c2430		MOVQ 0x30(SP), CX							
  task_nav.go:308	0xe2ed74		488b7c2438		MOVQ 0x38(SP), DI							
  task_nav.go:308	0xe2ed79		488b742440		MOVQ 0x40(SP), SI							
  task_nav.go:308	0xe2ed7e		4c8b442448		MOVQ 0x48(SP), R8							
  task_nav.go:308	0xe2ed83		4c8b4c2450		MOVQ 0x50(SP), R9							
  task_nav.go:308	0xe2ed88		e913f9ffff		JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).resolveFullTrafficPath(SB)	
  :-1			0xe2ed8d		cc			INT $__subsystem__(SB)							
  :-1			0xe2ed8e		cc			INT $__subsystem__(SB)							
  :-1			0xe2ed8f		cc			INT $__subsystem__(SB)							
  :-1			0xe2ed90		cc			INT $__subsystem__(SB)							
  :-1			0xe2ed91		cc			INT $__subsystem__(SB)							
  :-1			0xe2ed92		cc			INT $__subsystem__(SB)							
  :-1			0xe2ed93		cc			INT $__subsystem__(SB)							
  :-1			0xe2ed94		cc			INT $__subsystem__(SB)							
  :-1			0xe2ed95		cc			INT $__subsystem__(SB)							
  :-1			0xe2ed96		cc			INT $__subsystem__(SB)							
  :-1			0xe2ed97		cc			INT $__subsystem__(SB)							
  :-1			0xe2ed98		cc			INT $__subsystem__(SB)							
  :-1			0xe2ed99		cc			INT $__subsystem__(SB)							
  :-1			0xe2ed9a		cc			INT $__subsystem__(SB)							
  :-1			0xe2ed9b		cc			INT $__subsystem__(SB)							
  :-1			0xe2ed9c		cc			INT $__subsystem__(SB)							
  :-1			0xe2ed9d		cc			INT $__subsystem__(SB)							
  :-1			0xe2ed9e		cc			INT $__subsystem__(SB)							
  :-1			0xe2ed9f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/pkg/diapdu.graphPathDistance(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/task_nav.go
  task_nav.go:341	0xe2eda0		493b6610		CMPQ SP, 0x10(R14)					
  task_nav.go:341	0xe2eda4		0f86d4000000		JBE 0xe2ee7e						
  task_nav.go:341	0xe2edaa		55			PUSHQ BP						
  task_nav.go:341	0xe2edab		4889e5			MOVQ SP, BP						
  task_nav.go:341	0xe2edae		4883ec50		SUBQ $.file+3(SB), SP					
  task_nav.go:341	0xe2edb2		48895c2468		MOVQ BX, 0x68(SP)					
  task_nav.go:342	0xe2edb7		4885c0			TESTQ AX, AX						
  task_nav.go:342	0xe2edba		7420			JE 0xe2eddc						
  task_nav.go:342	0xe2edbc		0f1f4000		NOPL 0(AX)						
  task_nav.go:342	0xe2edc0		4883f902		CMPQ CX, $__minor_os_version__+1(SB)			
  task_nav.go:342	0xe2edc4		7c16			JL 0xe2eddc						
  task_nav.go:342	0xe2edc6		4889442460		MOVQ AX, 0x60(SP)					
  task_nav.go:342	0xe2edcb		48895c2468		MOVQ BX, 0x68(SP)					
  task_nav.go:342	0xe2edd0		48894c2470		MOVQ CX, 0x70(SP)					
  task_nav.go:342	0xe2edd5		31d2			XORL DX, DX						
  task_nav.go:342	0xe2edd7		0f57c0			XORPS X0, X0						
  task_nav.go:342	0xe2edda		eb1d			JMP 0xe2edf9						
  task_nav.go:343	0xe2eddc		0f57c0			XORPS X0, X0						
  task_nav.go:343	0xe2eddf		4883c450		ADDQ $.file+3(SB), SP					
  task_nav.go:343	0xe2ede3		5d			POPQ BP							
  task_nav.go:343	0xe2ede4		c3			RET							
  task_nav.go:346	0xe2ede5		488b442460		MOVQ 0x60(SP), AX					
  task_nav.go:346	0xe2edea		488b5c2468		MOVQ 0x68(SP), BX					
  task_nav.go:346	0xe2edef		488b4c2470		MOVQ 0x70(SP), CX					
  task_nav.go:346	0xe2edf4		488b542448		MOVQ 0x48(SP), DX					
  task_nav.go:346	0xe2edf9		4c8d59ff		LEAQ -0x1(CX), R11					
  task_nav.go:346	0xe2edfd		0f1f00			NOPL 0(AX)						
  task_nav.go:346	0xe2ee00		4c39da			CMPQ DX, R11						
  task_nav.go:346	0xe2ee03		7d59			JGE 0xe2ee5e						
  task_nav.go:347	0xe2ee05		4989d3			MOVQ DX, R11						
  task_nav.go:347	0xe2ee08		48c1e204		SHLQ $__subsystem__+1(SB), DX				
  task_nav.go:347	0xe2ee0c		49ffc3			INCQ R11						
  task_nav.go:347	0xe2ee0f		488b3413		MOVQ 0(BX)(DX*1), SI					
  task_nav.go:347	0xe2ee13		4c8b441308		MOVQ 0x8(BX)(DX*1), R8					
  task_nav.go:347	0xe2ee18		4c39d9			CMPQ CX, R11						
  task_nav.go:347	0xe2ee1b		7658			JBE 0xe2ee75						
  task_nav.go:347	0xe2ee1d		4c895c2448		MOVQ R11, 0x48(SP)					
  task_nav.go:349	0xe2ee22		f20f11442440		MOVSD_XMM X0, 0x40(SP)					
  task_nav.go:347	0xe2ee28		49c1e304		SHLQ $__subsystem__+1(SB), R11				
  task_nav.go:347	0xe2ee2c		4e8b0c1b		MOVQ 0(BX)(R11*1), R9					
  task_nav.go:347	0xe2ee30		4e8b541b08		MOVQ 0x8(BX)(R11*1), R10				
  task_nav.go:347	0xe2ee35		31c9			XORL CX, CX						
  task_nav.go:347	0xe2ee37		31ff			XORL DI, DI						
  task_nav.go:347	0xe2ee39		31db			XORL BX, BX						
  task_nav.go:347	0xe2ee3b		0f1f440000		NOPL 0(AX)(AX*1)					
  task_nav.go:347	0xe2ee40		e81b770000		CALL CAS-Backend/pkg/diapdu.shortestPathOnGraph(SB)	
  task_nav.go:347	0xe2ee45		4084ff			TESTL DI, DI						
  task_nav.go:348	0xe2ee48		740c			JE 0xe2ee56						
  task_nav.go:349	0xe2ee4a		f20f104c2440		MOVSD_XMM 0x40(SP), X1					
  task_nav.go:349	0xe2ee50		f20f58c1		ADDSD X1, X0						
  task_nav.go:349	0xe2ee54		eb8f			JMP 0xe2ede5						
  task_nav.go:349	0xe2ee56		f20f10442440		MOVSD_XMM 0x40(SP), X0					
  task_nav.go:348	0xe2ee5c		eb87			JMP 0xe2ede5						
  task_nav.go:352	0xe2ee5e		0f57c9			XORPS X1, X1						
  task_nav.go:352	0xe2ee61		660f2ec8		UCOMISD X0, X1						
  task_nav.go:352	0xe2ee65		7208			JB 0xe2ee6f						
  task_nav.go:353	0xe2ee67		0f57c0			XORPS X0, X0						
  task_nav.go:353	0xe2ee6a		f2480f2ac1		CVTSI2SDQ CX, X0					
  task_nav.go:355	0xe2ee6f		4883c450		ADDQ $.file+3(SB), SP					
  task_nav.go:355	0xe2ee73		5d			POPQ BP							
  task_nav.go:355	0xe2ee74		c3			RET							
  task_nav.go:347	0xe2ee75		4c89d8			MOVQ R11, AX						
  task_nav.go:347	0xe2ee78		e8639964ff		CALL runtime.panicIndex(SB)				
  task_nav.go:347	0xe2ee7d		90			NOPL							
  task_nav.go:341	0xe2ee7e		4889442408		MOVQ AX, 0x8(SP)					
  task_nav.go:341	0xe2ee83		48895c2410		MOVQ BX, 0x10(SP)					
  task_nav.go:341	0xe2ee88		48894c2418		MOVQ CX, 0x18(SP)					
  task_nav.go:341	0xe2ee8d		48897c2420		MOVQ DI, 0x20(SP)					
  task_nav.go:341	0xe2ee92		e8497664ff		CALL runtime.morestack_noctxt.abi0(SB)			
  task_nav.go:341	0xe2ee97		488b442408		MOVQ 0x8(SP), AX					
  task_nav.go:341	0xe2ee9c		488b5c2410		MOVQ 0x10(SP), BX					
  task_nav.go:341	0xe2eea1		488b4c2418		MOVQ 0x18(SP), CX					
  task_nav.go:341	0xe2eea6		488b7c2420		MOVQ 0x20(SP), DI					
  task_nav.go:341	0xe2eeab		e9f0feffff		JMP CAS-Backend/pkg/diapdu.graphPathDistance(SB)	
  :-1			0xe2eeb0		cc			INT $__subsystem__(SB)					
  :-1			0xe2eeb1		cc			INT $__subsystem__(SB)					
  :-1			0xe2eeb2		cc			INT $__subsystem__(SB)					
  :-1			0xe2eeb3		cc			INT $__subsystem__(SB)					
  :-1			0xe2eeb4		cc			INT $__subsystem__(SB)					
  :-1			0xe2eeb5		cc			INT $__subsystem__(SB)					
  :-1			0xe2eeb6		cc			INT $__subsystem__(SB)					
  :-1			0xe2eeb7		cc			INT $__subsystem__(SB)					
  :-1			0xe2eeb8		cc			INT $__subsystem__(SB)					
  :-1			0xe2eeb9		cc			INT $__subsystem__(SB)					
  :-1			0xe2eeba		cc			INT $__subsystem__(SB)					
  :-1			0xe2eebb		cc			INT $__subsystem__(SB)					
  :-1			0xe2eebc		cc			INT $__subsystem__(SB)					
  :-1			0xe2eebd		cc			INT $__subsystem__(SB)					
  :-1			0xe2eebe		cc			INT $__subsystem__(SB)					
  :-1			0xe2eebf		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.stationPathFromNavTasks.func1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/task_nav.go
  task_nav.go:286	0xe45480		493b6610		CMPQ SP, 0x10(R14)						
  task_nav.go:286	0xe45484		0f8642010000		JBE 0xe455cc							
  task_nav.go:286	0xe4548a		55			PUSHQ BP							
  task_nav.go:286	0xe4548b		4889e5			MOVQ SP, BP							
  task_nav.go:286	0xe4548e		4883ec50		SUBQ $.file+3(SB), SP						
  task_nav.go:286	0xe45492		48897c2478		MOVQ DI, 0x78(SP)						
  task_nav.go:288	0xe45497		48894c2470		MOVQ CX, 0x70(SP)						
  task_nav.go:288	0xe4549c		48895c2468		MOVQ BX, 0x68(SP)						
  task_nav.go:288	0xe454a1		4889442460		MOVQ AX, 0x60(SP)						
  task_nav.go:287	0xe454a6		4889f8			MOVQ DI, AX							
  task_nav.go:287	0xe454a9		4889f3			MOVQ SI, BX							
  task_nav.go:287	0xe454ac		e80fd569ff		CALL strings.TrimSpace(SB)					
  task_nav.go:288	0xe454b1		4885db			TESTQ BX, BX							
  task_nav.go:288	0xe454b4		7424			JE 0xe454da							
  task_nav.go:288	0xe454b6		4883fb0d		CMPQ BX, $__major_os_version__+7(SB)				
  task_nav.go:288	0xe454ba		7533			JNE 0xe454ef							
  task_nav.go:288	0xe454bc		48ba53454c465f504f53	MOVQ $0x534f505f464c4553, DX					
  task_nav.go:288	0xe454c6		483910			CMPQ 0(AX), DX							
  task_nav.go:288	0xe454c9		7524			JNE 0xe454ef							
  task_nav.go:288	0xe454cb		8178084954494f		CMPL 0x8(AX), $0x4f495449					
  task_nav.go:288	0xe454d2		751b			JNE 0xe454ef							
  task_nav.go:288	0xe454d4		80780c4e		CMPB 0xc(AX), $.file+1(SB)					
  task_nav.go:288	0xe454d8		7515			JNE 0xe454ef							
  task_nav.go:289	0xe454da		488b442460		MOVQ 0x60(SP), AX						
  task_nav.go:289	0xe454df		488b5c2468		MOVQ 0x68(SP), BX						
  task_nav.go:289	0xe454e4		488b4c2470		MOVQ 0x70(SP), CX						
  task_nav.go:289	0xe454e9		4883c450		ADDQ $.file+3(SB), SP						
  task_nav.go:289	0xe454ed		5d			POPQ BP								
  task_nav.go:289	0xe454ee		c3			RET								
  task_nav.go:287	0xe454ef		48895c2440		MOVQ BX, 0x40(SP)						
  task_nav.go:287	0xe454f4		4889442448		MOVQ AX, 0x48(SP)						
  task_nav.go:291	0xe454f9		488b542468		MOVQ 0x68(SP), DX						
  task_nav.go:291	0xe454fe		6690			NOPW								
  task_nav.go:291	0xe45500		4885d2			TESTQ DX, DX							
  task_nav.go:291	0xe45503		750c			JNE 0xe45511							
  task_nav.go:294	0xe45505		4c8b4c2460		MOVQ 0x60(SP), R9						
  task_nav.go:294	0xe4550a		b901000000		MOVL $__minor_os_version__(SB), CX				
  task_nav.go:291	0xe4550f		eb46			JMP 0xe45557							
  task_nav.go:291	0xe45511		4c8d42ff		LEAQ -0x1(DX), R8						
  task_nav.go:291	0xe45515		49c1e004		SHLQ $__subsystem__+1(SB), R8					
  task_nav.go:291	0xe45519		4c8b4c2460		MOVQ 0x60(SP), R9						
  task_nav.go:291	0xe4551e		4b8b4c0108		MOVQ 0x8(R9)(R8*1), CX						
  task_nav.go:291	0xe45523		4f8b0401		MOVQ 0(R9)(R8*1), R8						
  task_nav.go:291	0xe45527		4839cb			CMPQ BX, CX							
  task_nav.go:291	0xe4552a		7407			JE 0xe45533							
  task_nav.go:291	0xe4552c		b901000000		MOVL $__minor_os_version__(SB), CX				
  task_nav.go:291	0xe45531		eb24			JMP 0xe45557							
  task_nav.go:291	0xe45533		4889c3			MOVQ AX, BX							
  task_nav.go:291	0xe45536		4c89c0			MOVQ R8, AX							
  task_nav.go:291	0xe45539		e822d95bff		CALL runtime.memequal(SB)					
  task_nav.go:291	0xe4553e		83f001			XORL $__minor_os_version__(SB), AX				
  task_nav.go:292	0xe45541		488b542468		MOVQ 0x68(SP), DX						
  task_nav.go:292	0xe45546		488b5c2440		MOVQ 0x40(SP), BX						
  task_nav.go:294	0xe4554b		4c8b4c2460		MOVQ 0x60(SP), R9						
  task_nav.go:291	0xe45550		89c1			MOVL AX, CX							
  task_nav.go:292	0xe45552		488b442448		MOVQ 0x48(SP), AX						
  task_nav.go:291	0xe45557		84c9			TESTL CL, CL							
  task_nav.go:291	0xe45559		7460			JE 0xe455bb							
  task_nav.go:292	0xe4555b		48ffc2			INCQ DX								
  task_nav.go:292	0xe4555e		488b4c2470		MOVQ 0x70(SP), CX						
  task_nav.go:292	0xe45563		4839d1			CMPQ CX, DX							
  task_nav.go:292	0xe45566		7327			JAE 0xe4558f							
  task_nav.go:292	0xe45568		4c89c8			MOVQ R9, AX							
  task_nav.go:292	0xe4556b		4889d3			MOVQ DX, BX							
  task_nav.go:292	0xe4556e		bf01000000		MOVL $__minor_os_version__(SB), DI				
  task_nav.go:292	0xe45573		488d35a6d31f00		LEAQ runtime.types+383264(SB), SI				
  task_nav.go:292	0xe4557a		e8c1c662ff		CALL runtime.growslice(SB)					
  task_nav.go:292	0xe4557f		4989c1			MOVQ AX, R9							
  task_nav.go:292	0xe45582		4889da			MOVQ BX, DX							
  task_nav.go:292	0xe45585		488b442448		MOVQ 0x48(SP), AX						
  task_nav.go:292	0xe4558a		488b5c2440		MOVQ 0x40(SP), BX						
  task_nav.go:292	0xe4558f		488d72ff		LEAQ -0x1(DX), SI						
  task_nav.go:292	0xe45593		48c1e604		SHLQ $__subsystem__+1(SB), SI					
  task_nav.go:292	0xe45597		49895c3108		MOVQ BX, 0x8(R9)(SI*1)						
  task_nav.go:292	0xe4559c		833dad85710200		CMPL runtime.writeBarrier(SB), $0x0				
  task_nav.go:292	0xe455a3		7410			JE 0xe455b5							
  task_nav.go:292	0xe455a5		e8962e63ff		CALL runtime.gcWriteBarrier2(SB)				
  task_nav.go:292	0xe455aa		498903			MOVQ AX, 0(R11)							
  task_nav.go:292	0xe455ad		498b3c31		MOVQ 0(R9)(SI*1), DI						
  task_nav.go:292	0xe455b1		49897b08		MOVQ DI, 0x8(R11)						
  task_nav.go:292	0xe455b5		49890431		MOVQ AX, 0(R9)(SI*1)						
  task_nav.go:292	0xe455b9		eb05			JMP 0xe455c0							
  task_nav.go:294	0xe455bb		488b4c2470		MOVQ 0x70(SP), CX						
  task_nav.go:294	0xe455c0		4c89c8			MOVQ R9, AX							
  task_nav.go:294	0xe455c3		4889d3			MOVQ DX, BX							
  task_nav.go:294	0xe455c6		4883c450		ADDQ $.file+3(SB), SP						
  task_nav.go:294	0xe455ca		5d			POPQ BP								
  task_nav.go:294	0xe455cb		c3			RET								
  task_nav.go:286	0xe455cc		4889442408		MOVQ AX, 0x8(SP)						
  task_nav.go:286	0xe455d1		48895c2410		MOVQ BX, 0x10(SP)						
  task_nav.go:286	0xe455d6		48894c2418		MOVQ CX, 0x18(SP)						
  task_nav.go:286	0xe455db		48897c2420		MOVQ DI, 0x20(SP)						
  task_nav.go:286	0xe455e0		4889742428		MOVQ SI, 0x28(SP)						
  task_nav.go:286	0xe455e5		e8f60e63ff		CALL runtime.morestack_noctxt.abi0(SB)				
  task_nav.go:286	0xe455ea		488b442408		MOVQ 0x8(SP), AX						
  task_nav.go:286	0xe455ef		488b5c2410		MOVQ 0x10(SP), BX						
  task_nav.go:286	0xe455f4		488b4c2418		MOVQ 0x18(SP), CX						
  task_nav.go:286	0xe455f9		488b7c2420		MOVQ 0x20(SP), DI						
  task_nav.go:286	0xe455fe		488b742428		MOVQ 0x28(SP), SI						
  task_nav.go:286	0xe45603		e978feffff		JMP CAS-Backend/pkg/diapdu.stationPathFromNavTasks.func1(SB)	
  :-1			0xe45608		cc			INT $__subsystem__(SB)						
  :-1			0xe45609		cc			INT $__subsystem__(SB)						
  :-1			0xe4560a		cc			INT $__subsystem__(SB)						
  :-1			0xe4560b		cc			INT $__subsystem__(SB)						
  :-1			0xe4560c		cc			INT $__subsystem__(SB)						
  :-1			0xe4560d		cc			INT $__subsystem__(SB)						
  :-1			0xe4560e		cc			INT $__subsystem__(SB)						
  :-1			0xe4560f		cc			INT $__subsystem__(SB)						
  :-1			0xe45610		cc			INT $__subsystem__(SB)						
  :-1			0xe45611		cc			INT $__subsystem__(SB)						
  :-1			0xe45612		cc			INT $__subsystem__(SB)						
  :-1			0xe45613		cc			INT $__subsystem__(SB)						
  :-1			0xe45614		cc			INT $__subsystem__(SB)						
  :-1			0xe45615		cc			INT $__subsystem__(SB)						
  :-1			0xe45616		cc			INT $__subsystem__(SB)						
  :-1			0xe45617		cc			INT $__subsystem__(SB)						
  :-1			0xe45618		cc			INT $__subsystem__(SB)						
  :-1			0xe45619		cc			INT $__subsystem__(SB)						
  :-1			0xe4561a		cc			INT $__subsystem__(SB)						
  :-1			0xe4561b		cc			INT $__subsystem__(SB)						
  :-1			0xe4561c		cc			INT $__subsystem__(SB)						
  :-1			0xe4561d		cc			INT $__subsystem__(SB)						
  :-1			0xe4561e		cc			INT $__subsystem__(SB)						
  :-1			0xe4561f		cc			INT $__subsystem__(SB)						

